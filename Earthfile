VERSION 0.6
FROM mcr.microsoft.com/vscode/devcontainers/base:0-focal
ARG DEVCONTAINER_IMAGE_NAME_DEFAULT=ghcr.io/andyli/pyextern_devcontainer
ARG MAIN_BRANCH=master

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ARG WORKDIR=/workspace
RUN install -d -m 0755 -o "$USER_UID" -g "$USER_UID" "$WORKDIR"
WORKDIR "$WORKDIR"

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

ARG INSTALL_ZSH="false"
ARG UPGRADE_PACKAGES="true"
ARG ENABLE_NONROOT_DOCKER="true"
ARG USE_MOBY="false"
COPY .devcontainer/library-scripts/common-debian.sh .devcontainer/library-scripts/docker-debian.sh /tmp/library-scripts/
RUN apt-get update \
    && /bin/bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" "true" "true" \
    && /bin/bash /tmp/library-scripts/docker-debian.sh "${ENABLE_NONROOT_DOCKER}" "/var/run/docker-host.sock" "/var/run/docker.sock" "${USERNAME}" "${USE_MOBY}" \
    # Clean up
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts/

# Setting the ENTRYPOINT to docker-init.sh will configure non-root access 
# to the Docker socket. The script will also execute CMD as needed.
ENTRYPOINT [ "/usr/local/share/docker-init.sh" ]
CMD [ "sleep", "infinity" ]

SAVE IMAGE --cache-hint

# Configure apt and install packages
RUN apt-get update \
    && apt-get install -qqy --no-install-recommends apt-utils dialog 2>&1 \
    && apt-get install -qqy --no-install-recommends \
        iproute2 \
        procps \
        sudo \
        bash-completion \
        build-essential \
        curl \
        wget \
        python3 \
        python3-pip \
        software-properties-common \
        direnv \
        tzdata \
        libgl1-mesa-glx \ # required by PyQt5.QtGui
        libxtst6 \        # required by PyQt5.QtWebEngine
        libxss1 \         # required by PyQt5.QtWebEngine
        libpci3 \         # required by PyQt5.QtWebEngine
        libsm6 \          # required by pyplot
        # install docker engine for using `WITH DOCKER`
        docker-ce \
    #
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Haxe
RUN add-apt-repository ppa:haxe/haxe4.2 \
    && apt-get install -qqy --no-install-recommends \
        haxe=1:4.2.* \
    #
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=

RUN install -d -m 0755 -o "$USER_UID" -g "$USER_UID" "/miniconda"

USER $USERNAME

# Install miniconda
# https://docs.conda.io/projects/conda/en/latest/user-guide/install/macos.html#install-macos-silent
RUN curl -fsSL "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-$(uname -m).sh" -o miniconda.sh \
    && bash miniconda.sh -b -u -p /miniconda \
    && rm miniconda.sh
ENV PATH="/miniconda/bin:$PATH"
RUN conda config --system --set always_yes yes --set changeps1 no
RUN conda update -q conda
RUN conda install psutil
RUN conda config --system --add channels anaconda
RUN conda config --system --add channels conda-forge
RUN conda config --system --add channels pytorch

USER root

SAVE IMAGE --cache-hint

devcontainer-library-scripts:
    RUN curl -fsSLO https://raw.githubusercontent.com/microsoft/vscode-dev-containers/main/script-library/common-debian.sh
    RUN curl -fsSLO https://raw.githubusercontent.com/microsoft/vscode-dev-containers/main/script-library/docker-debian.sh
    SAVE ARTIFACT --keep-ts *.sh AS LOCAL .devcontainer/library-scripts/

# Usage:
# COPY +earthly/earthly /usr/local/bin/
# RUN earthly bootstrap --no-buildkit --with-autocomplete
earthly:
    ARG TARGETARCH
    RUN curl -fsSL https://github.com/earthly/earthly/releases/download/v0.6.7/earthly-linux-${TARGETARCH} -o /usr/local/bin/earthly \
        && chmod +x /usr/local/bin/earthly
    SAVE ARTIFACT /usr/local/bin/earthly

haxelib:
    COPY build.hxml .
    RUN haxelib newrepo
    RUN haxelib install build.hxml --always
    SAVE ARTIFACT .haxelib

devcontainer:
    # Install earthly
    COPY +earthly/earthly /usr/local/bin/
    RUN earthly bootstrap --no-buildkit --with-autocomplete

    USER $USERNAME

    # Config direnv
    COPY --chown=$USER_UID:$USER_GID .devcontainer/direnv.toml /home/$USERNAME/.config/direnv/config.toml

    # Config bash
    RUN echo 'eval "$(direnv hook bash)"' >> ~/.bashrc

    # Config conda
    RUN conda init bash
    COPY (+conda-env/coredep  --NAME=coredep  --REQUIREMENTS_FILE=requirements.txt)          /miniconda/envs/coredep
    COPY (+conda-env/pyqt     --NAME=pyqt     --REQUIREMENTS_FILE=requirements-pyqt.txt)     /miniconda/envs/pyqt
    COPY (+conda-env/pytorch  --NAME=pytorch  --REQUIREMENTS_FILE=requirements-pytorch.txt)  /miniconda/envs/pytorch
    COPY (+conda-env/selenium --NAME=selenium --REQUIREMENTS_FILE=requirements-selenium.txt) /miniconda/envs/selenium
    COPY (+conda-env/science  --NAME=science  --REQUIREMENTS_FILE=requirements-science.txt)  /miniconda/envs/science

    COPY +haxelib/.haxelib .haxelib
    VOLUME /workspace/.haxelib

    USER root

    ARG GIT_SHA
    ENV GIT_SHA="$GIT_SHA"
    ARG IMAGE_NAME="$DEVCONTAINER_IMAGE_NAME_DEFAULT"
    ARG IMAGE_TAG="$MAIN_BRANCH"
    ARG IMAGE_CACHE="$IMAGE_NAME:$IMAGE_TAG"
    SAVE IMAGE --cache-from="$IMAGE_CACHE" --push "$IMAGE_NAME:$IMAGE_TAG"

ci-images:
    ARG --required GIT_REF_NAME
    ARG --required GIT_SHA
    RUN echo "$GIT_REF_NAME" | sed 's/[^A-Za-z0-9\-\.]/_/g' | tee image_tag
    RUN echo "$DEVCONTAINER_IMAGE_NAME_DEFAULT:$(cat image_tag)" | tee image_cache
    BUILD +devcontainer \ 
        --IMAGE_CACHE="$(cat image_cache)" \
        --IMAGE_TAG="$(cat image_tag)" \
        --GIT_SHA="$GIT_SHA"

pyextern:
    COPY +haxelib/.haxelib .haxelib
    COPY coredep coredep
    COPY src src
    COPY build.hxml .
    RUN haxe build.hxml
    SAVE ARTIFACT Main.py

conda-env:
    USER $USERNAME
    ARG --required NAME
    ARG --required REQUIREMENTS_FILE
    ARG PYTHON_VERSION=3.8
    COPY "$REQUIREMENTS_FILE" .
    RUN conda create --name "$NAME" python="$PYTHON_VERSION" --file "$REQUIREMENTS_FILE" --copy --quiet
    SAVE ARTIFACT /miniconda/envs/$NAME
    SAVE IMAGE --cache-hint

gen-externs:
    ARG --required NAME
    ARG --required REQUIREMENTS_FILE
    COPY (+conda-env/$NAME --NAME="$NAME" --REQUIREMENTS_FILE="$REQUIREMENTS_FILE") "/miniconda/envs/$NAME"
    COPY +pyextern/Main.py .
    ARG --required GENLIBS
    ARG CLASSPATH=out
    RUN conda run -n "$NAME" python Main.py "$GENLIBS" "$CLASSPATH"
    SAVE ARTIFACT --keep-ts "$CLASSPATH"
    SAVE IMAGE --cache-hint
    COPY src src
    COPY test test
    COPY test.hxml .
    RUN haxe test.hxml

gen-coredep:
    COPY (+gen-externs/out --NAME=coredep --REQUIREMENTS_FILE=requirements.txt --GENLIBS=docutils,pkgutil,inspect,importlib) coredep
    SAVE ARTIFACT --keep-ts coredep AS LOCAL coredep

gen-pyqt:
    COPY (+gen-externs/out --NAME=pyqt --REQUIREMENTS_FILE=requirements-pyqt.txt --GENLIBS=PyQt5,PyQt5.QtGui) out
    SAVE ARTIFACT --keep-ts out AS LOCAL out/pyqt

gen-pytorch:
    COPY (+gen-externs/out --NAME=pytorch --REQUIREMENTS_FILE=requirements-pytorch.txt --GENLIBS=torch) out
    SAVE ARTIFACT --keep-ts out AS LOCAL out/pytorch

gen-selenium:
    COPY (+gen-externs/out --NAME=selenium --REQUIREMENTS_FILE=requirements-selenium.txt --GENLIBS=selenium) out
    SAVE ARTIFACT --keep-ts out AS LOCAL out/selenium

gen-science:
    COPY (+gen-externs/out --NAME=science --REQUIREMENTS_FILE=requirements-science.txt --GENLIBS=textwrap,numpy,scipy,pandas,matplotlib,seaborn,tensorflow) out
    SAVE ARTIFACT --keep-ts out AS LOCAL out/science

gen-pyarrow:
    COPY (+gen-externs/out --NAME=pyarrow --REQUIREMENTS_FILE=requirements-pyarrow.txt --GENLIBS=pyarrow) out
    SAVE ARTIFACT --keep-ts out AS LOCAL out/pyarrow

gen-paho-mqtt:
    COPY (+gen-externs/out --NAME=paho-mqtt --REQUIREMENTS_FILE=requirements-paho-mqtt.txt --GENLIBS=paho) out
    SAVE ARTIFACT --keep-ts out AS LOCAL out/paho-mqtt
