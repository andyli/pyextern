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
        libsm6 \ # required by pyplot
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
RUN conda config --set always_yes yes --set changeps1 no
RUN conda update -q conda
RUN conda install psutil
RUN conda config --add channels anaconda
RUN conda config --add channels conda-forge
RUN conda config --add channels pytorch

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

gen-coredep:
    COPY (+gen-externs/out --REQUIREMENTS_FILE=requirements.txt --GENLIBS=docutils,pkgutil,inspect,importlib) coredep
    SAVE ARTIFACT --keep-ts coredep AS LOCAL coredep

gen-externs:
    ARG --required REQUIREMENTS_FILE
    COPY "$REQUIREMENTS_FILE" .
    RUN conda create -q --name pyextern python=3.8 --file "$REQUIREMENTS_FILE"
    SAVE IMAGE --cache-hint
    COPY +pyextern/Main.py .
    ARG --required GENLIBS
    RUN conda run -n pyextern python Main.py "$GENLIBS" out
    SAVE ARTIFACT --keep-ts out
    SAVE IMAGE --cache-hint
    COPY src src
    COPY test test
    COPY test.hxml .
    RUN haxe test.hxml

gen-qt:
    COPY (+gen-externs/out --REQUIREMENTS_FILE=requirements-qt.txt --GENLIBS=PyQt5,PyQt5.QtGui,PyQt5.QtWebKit) out
    SAVE ARTIFACT --keep-ts out AS LOCAL out/qt
