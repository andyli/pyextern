/* This file is generated, do not edit! */
package torch.utils.cpp_extension;
@:pythonImport("torch.utils.cpp_extension") extern class Cpp_extension_Module {
	static public var ABI_INCOMPATIBILITY_WARNING : Dynamic;
	static public var BUILD_SPLIT_CUDA : Dynamic;
	static public var BUILT_FROM_SOURCE_VERSION_PATTERN : Dynamic;
	static public var CLIB_EXT : Dynamic;
	static public var CLIB_PREFIX : Dynamic;
	static public var COMMON_HIPCC_FLAGS : Dynamic;
	static public var COMMON_HIP_FLAGS : Dynamic;
	static public var COMMON_MSVC_FLAGS : Dynamic;
	static public var COMMON_NVCC_FLAGS : Dynamic;
	/**
		Creates a :class:`setuptools.Extension` for CUDA/C++.
		
		Convenience method that creates a :class:`setuptools.Extension` with the
		bare minimum (but often sufficient) arguments to build a CUDA/C++
		extension. This includes the CUDA include path, library path and runtime
		library.
		
		All arguments are forwarded to the :class:`setuptools.Extension`
		constructor.
		
		Example:
		    >>> from setuptools import setup
		    >>> from torch.utils.cpp_extension import BuildExtension, CUDAExtension
		    >>> setup(
		            name='cuda_extension',
		            ext_modules=[
		                CUDAExtension(
		                        name='cuda_extension',
		                        sources=['extension.cpp', 'extension_kernel.cu'],
		                        extra_compile_args={'cxx': ['-g'],
		                                            'nvcc': ['-O2']})
		            ],
		            cmdclass={
		                'build_ext': BuildExtension
		            })
		
		Compute capabilities:
		
		By default the extension will be compiled to run on all archs of the cards visible during the
		building process of the extension, plus PTX. If down the road a new card is installed the
		extension may need to be recompiled. If a visible card has a compute capability (CC) that's
		newer than the newest version for which your nvcc can build fully-compiled binaries, Pytorch
		will make nvcc fall back to building kernels with the newest version of PTX your nvcc does
		support (see below for details on PTX).
		
		You can override the default behavior using `TORCH_CUDA_ARCH_LIST` to explicitly specify which
		CCs you want the extension to support:
		
		TORCH_CUDA_ARCH_LIST="6.1 8.6" python build_my_extension.py
		TORCH_CUDA_ARCH_LIST="5.2 6.0 6.1 7.0 7.5 8.0 8.6+PTX" python build_my_extension.py
		
		The +PTX option causes extension kernel binaries to include PTX instructions for the specified
		CC. PTX is an intermediate representation that allows kernels to runtime-compile for any CC >=
		the specified CC (for example, 8.6+PTX generates PTX that can runtime-compile for any GPU with
		CC >= 8.6). This improves your binary's forward compatibility. However, relying on older PTX to
		provide forward compat by runtime-compiling for newer CCs can modestly reduce performance on
		those newer CCs. If you know exact CC(s) of the GPUs you want to target, you're always better
		off specifying them individually. For example, if you want your extension to run on 8.0 and 8.6,
		"8.0+PTX" would work functionally because it includes PTX that can runtime-compile for 8.6, but
		"8.0 8.6" would be better.
		
		Note that while it's possible to include all supported archs, the more archs get included the
		slower the building process will be, as it will build a separate kernel image for each arch.
	**/
	static public function CUDAExtension(name:Dynamic, sources:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var CUDA_HOME : Dynamic;
	static public var CUDA_MISMATCH_MESSAGE : Dynamic;
	static public var CUDA_MISMATCH_WARN : Dynamic;
	static public var CUDA_NOT_FOUND_MESSAGE : Dynamic;
	static public var CUDNN_HOME : Dynamic;
	/**
		Creates a :class:`setuptools.Extension` for C++.
		
		Convenience method that creates a :class:`setuptools.Extension` with the
		bare minimum (but often sufficient) arguments to build a C++ extension.
		
		All arguments are forwarded to the :class:`setuptools.Extension`
		constructor.
		
		Example:
		    >>> from setuptools import setup
		    >>> from torch.utils.cpp_extension import BuildExtension, CppExtension
		    >>> setup(
		            name='extension',
		            ext_modules=[
		                CppExtension(
		                    name='extension',
		                    sources=['extension.cpp'],
		                    extra_compile_args=['-g']),
		            ],
		            cmdclass={
		                'build_ext': BuildExtension
		            })
	**/
	static public function CppExtension(name:Dynamic, sources:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var EXEC_EXT : Dynamic;
	static public var IS_HIP_EXTENSION : Dynamic;
	static public var IS_WINDOWS : Dynamic;
	static public var JIT_EXTENSION_VERSIONER : Dynamic;
	static public var LIB_EXT : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var MINIMUM_GCC_VERSION : Dynamic;
	static public var MINIMUM_MSVC_VERSION : Dynamic;
	static public var MIOPEN_HOME : Dynamic;
	static public var MSVC_IGNORE_CUDAFE_WARNINGS : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var PLAT_TO_VCVARS : Dynamic;
	static public var ROCM_HOME : Dynamic;
	static public var ROCM_VERSION : Dynamic;
	static public var SHARED_FLAG : Dynamic;
	static public var SUBPROCESS_DECODE_ARGS : Dynamic;
	static public var TORCH_LIB_PATH : Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var WRONG_COMPILER_WARNING : Dynamic;
	static public var _HERE : Dynamic;
	static public var _TORCH_PATH : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _accepted_compilers_for_platform():Dynamic;
	/**
		Finds the CUDA install path.
	**/
	static public function _find_cuda_home():Dynamic;
	/**
		Finds the ROCm install path.
	**/
	static public function _find_rocm_home():Dynamic;
	static public function _get_build_directory(name:Dynamic, verbose:Dynamic):Dynamic;
	/**
		Determine CUDA arch flags to use.
		
		For an arch, say "6.1", the added compile flag will be
		``-gencode=arch=compute_61,code=sm_61``.
		For an added "+PTX", an additional
		``-gencode=arch=compute_xx,code=compute_xx`` is added.
		
		See select_compute_arch.cmake for corresponding named and supported arches
		when building with CMake.
	**/
	static public function _get_cuda_arch_flags(?cflags:Dynamic):Dynamic;
	static public function _get_exec_path(module_name:Dynamic, path:Dynamic):Dynamic;
	static public function _get_num_workers(verbose:Dynamic):Dynamic;
	static public function _get_rocm_arch_flags(?cflags:Dynamic):Dynamic;
	static public function _import_module_from_library(module_name:Dynamic, path:Dynamic, is_python_module:Dynamic):Dynamic;
	static public function _is_binary_build():Dynamic;
	static public function _is_cuda_file(path:Dynamic):Dynamic;
	static public function _jit_compile(name:Dynamic, sources:Dynamic, extra_cflags:Dynamic, extra_cuda_cflags:Dynamic, extra_ldflags:Dynamic, extra_include_paths:Dynamic, build_directory:Dynamic, verbose:Dynamic, with_cuda:Dynamic, is_python_module:Dynamic, is_standalone:Dynamic, ?keep_intermediates:Dynamic):Dynamic;
	/**
		Joins paths with CUDA_HOME, or raises an error if it CUDA_HOME is not set.
		
		This is basically a lazy way of raising an error for missing $CUDA_HOME
		only once we need to get any CUDA-specific path.
	**/
	static public function _join_cuda_home(?paths:python.VarArgs<Dynamic>):Dynamic;
	/**
		Joins paths with ROCM_HOME, or raises an error if it ROCM_HOME is not set.
		
		This is basically a lazy way of raising an error for missing $ROCM_HOME
		only once we need to get any ROCm-specific path.
	**/
	static public function _join_rocm_home(?paths:python.VarArgs<Dynamic>):Dynamic;
	/**
		Quote command-line arguments for DOS/Windows conventions.
		
		Just wraps every argument which contains blanks in double quotes, and
		returns a new argument list.
	**/
	static public function _nt_quote_args(args:Dynamic):Dynamic;
	static public function _prepare_ldflags(extra_ldflags:Dynamic, with_cuda:Dynamic, verbose:Dynamic, is_standalone:Dynamic):Dynamic;
	static public function _run_ninja_build(build_directory:Dynamic, verbose:Dynamic, error_prefix:Dynamic):Dynamic;
	/**
		Write a ninja file that does the desired compiling and linking.
		
		`path`: Where to write this file
		`cflags`: list of flags to pass to $cxx. Can be None.
		`post_cflags`: list of flags to append to the $cxx invocation. Can be None.
		`cuda_cflags`: list of flags to pass to $nvcc. Can be None.
		`cuda_postflags`: list of flags to append to the $nvcc invocation. Can be None.
		`sources`: list of paths to source files
		`objects`: list of desired paths to objects, one per source.
		`ldflags`: list of flags to pass to linker. Can be None.
		`library_target`: Name of the output library. Can be None; in that case,
		                  we do no linking.
		`with_cuda`: If we should be compiling with CUDA.
	**/
	static public function _write_ninja_file(path:Dynamic, cflags:Dynamic, post_cflags:Dynamic, cuda_cflags:Dynamic, cuda_post_cflags:Dynamic, sources:Dynamic, objects:Dynamic, ldflags:Dynamic, library_target:Dynamic, with_cuda:Dynamic):Dynamic;
	static public function _write_ninja_file_and_build_library(name:Dynamic, sources:Dynamic, extra_cflags:Dynamic, extra_cuda_cflags:Dynamic, extra_ldflags:Dynamic, extra_include_paths:Dynamic, build_directory:Dynamic, verbose:Dynamic, with_cuda:Dynamic, ?is_standalone:Dynamic):Dynamic;
	static public function _write_ninja_file_and_compile_objects(sources:Dynamic, objects:Dynamic, cflags:Dynamic, post_cflags:Dynamic, cuda_cflags:Dynamic, cuda_post_cflags:Dynamic, build_directory:Dynamic, verbose:Dynamic, with_cuda:Dynamic):Dynamic;
	static public function _write_ninja_file_to_build_library(path:Dynamic, name:Dynamic, sources:Dynamic, extra_cflags:Dynamic, extra_cuda_cflags:Dynamic, extra_ldflags:Dynamic, extra_include_paths:Dynamic, with_cuda:Dynamic, is_standalone:Dynamic):Dynamic;
	/**
		Verifies that the given compiler is ABI-compatible with PyTorch.
		
		Args:
		    compiler (str): The compiler executable name to check (e.g. ``g++``).
		        Must be executable in a shell process.
		
		Returns:
		    False if the compiler is (likely) ABI-incompatible with PyTorch,
		    else True.
	**/
	static public function check_compiler_abi_compatibility(compiler:Dynamic):Dynamic;
	/**
		Verifies that the compiler is the expected one for the current platform.
		
		Args:
		    compiler (str): The compiler executable to check.
		
		Returns:
		    True if the compiler is gcc/g++ on Linux or clang/clang++ on macOS,
		    and always True for Windows.
	**/
	static public function check_compiler_ok_for_platform(compiler:Dynamic):Dynamic;
	/**
		Returns the path to the root folder under which extensions will built.
		
		For each extension module built, there will be one folder underneath the
		folder returned by this function. For example, if ``p`` is the path
		returned by this function and ``ext`` the name of an extension, the build
		folder for the extension will be ``p/ext``.
		
		This directory is **user-specific** so that multiple users on the same
		machine won't meet permission issues.
	**/
	static public function get_default_build_root():Dynamic;
	/**
		Returns the new name of the hipified file
	**/
	static public function get_hip_file_path(filepath:Dynamic, ?is_pytorch_extension:Dynamic):Dynamic;
	/**
		Get the include paths required to build a C++ or CUDA extension.
		
		Args:
		    cuda: If `True`, includes CUDA-specific include paths.
		
		Returns:
		    A list of include path strings.
	**/
	static public function include_paths(?cuda:Dynamic):Dynamic;
	/**
		Returns ``True`` if the `ninja <https://ninja-build.org/>`_ build system is
		available on the system, ``False`` otherwise.
	**/
	static public function is_ninja_available():Dynamic;
	/**
		Get the library paths required to build a C++ or CUDA extension.
		
		Args:
		    cuda: If `True`, includes CUDA-specific library paths.
		
		Returns:
		    A list of library path strings.
	**/
	static public function library_paths(?cuda:Dynamic):Dynamic;
	/**
		Loads a PyTorch C++ extension just-in-time (JIT).
		
		To load an extension, a Ninja build file is emitted, which is used to
		compile the given sources into a dynamic library. This library is
		subsequently loaded into the current Python process as a module and
		returned from this function, ready for use.
		
		By default, the directory to which the build file is emitted and the
		resulting library compiled to is ``<tmp>/torch_extensions/<name>``, where
		``<tmp>`` is the temporary folder on the current platform and ``<name>``
		the name of the extension. This location can be overridden in two ways.
		First, if the ``TORCH_EXTENSIONS_DIR`` environment variable is set, it
		replaces ``<tmp>/torch_extensions`` and all extensions will be compiled
		into subfolders of this directory. Second, if the ``build_directory``
		argument to this function is supplied, it overrides the entire path, i.e.
		the library will be compiled into that folder directly.
		
		To compile the sources, the default system compiler (``c++``) is used,
		which can be overridden by setting the ``CXX`` environment variable. To pass
		additional arguments to the compilation process, ``extra_cflags`` or
		``extra_ldflags`` can be provided. For example, to compile your extension
		with optimizations, pass ``extra_cflags=['-O3']``. You can also use
		``extra_cflags`` to pass further include directories.
		
		CUDA support with mixed compilation is provided. Simply pass CUDA source
		files (``.cu`` or ``.cuh``) along with other sources. Such files will be
		detected and compiled with nvcc rather than the C++ compiler. This includes
		passing the CUDA lib64 directory as a library directory, and linking
		``cudart``. You can pass additional flags to nvcc via
		``extra_cuda_cflags``, just like with ``extra_cflags`` for C++. Various
		heuristics for finding the CUDA install directory are used, which usually
		work fine. If not, setting the ``CUDA_HOME`` environment variable is the
		safest option.
		
		Args:
		    name: The name of the extension to build. This MUST be the same as the
		        name of the pybind11 module!
		    sources: A list of relative or absolute paths to C++ source files.
		    extra_cflags: optional list of compiler flags to forward to the build.
		    extra_cuda_cflags: optional list of compiler flags to forward to nvcc
		        when building CUDA sources.
		    extra_ldflags: optional list of linker flags to forward to the build.
		    extra_include_paths: optional list of include directories to forward
		        to the build.
		    build_directory: optional path to use as build workspace.
		    verbose: If ``True``, turns on verbose logging of load steps.
		    with_cuda: Determines whether CUDA headers and libraries are added to
		        the build. If set to ``None`` (default), this value is
		        automatically determined based on the existence of ``.cu`` or
		        ``.cuh`` in ``sources``. Set it to `True`` to force CUDA headers
		        and libraries to be included.
		    is_python_module: If ``True`` (default), imports the produced shared
		        library as a Python module. If ``False``, behavior depends on
		        ``is_standalone``.
		    is_standalone: If ``False`` (default) loads the constructed extension
		        into the process as a plain dynamic library. If ``True``, build a
		        standalone executable.
		
		Returns:
		    If ``is_python_module`` is ``True``:
		        Returns the loaded PyTorch extension as a Python module.
		
		    If ``is_python_module`` is ``False`` and ``is_standalone`` is ``False``:
		        Returns nothing. (The shared library is loaded into the process as
		        a side effect.)
		
		    If ``is_standalone`` is ``True``.
		        Return the path to the executable. (On Windows, TORCH_LIB_PATH is
		        added to the PATH environment variable as a side effect.)
		
		Example:
		    >>> from torch.utils.cpp_extension import load
		    >>> module = load(
		            name='extension',
		            sources=['extension.cpp', 'extension_kernel.cu'],
		            extra_cflags=['-O2'],
		            verbose=True)
	**/
	static public function load(name:Dynamic, sources:Dynamic, ?extra_cflags:Dynamic, ?extra_cuda_cflags:Dynamic, ?extra_ldflags:Dynamic, ?extra_include_paths:Dynamic, ?build_directory:Dynamic, ?verbose:Dynamic, ?with_cuda:Dynamic, ?is_python_module:Dynamic, ?is_standalone:Dynamic, ?keep_intermediates:Dynamic):Dynamic;
	/**
		Loads a PyTorch C++ extension just-in-time (JIT) from string sources.
		
		This function behaves exactly like :func:`load`, but takes its sources as
		strings rather than filenames. These strings are stored to files in the
		build directory, after which the behavior of :func:`load_inline` is
		identical to :func:`load`.
		
		See `the
		tests <https://github.com/pytorch/pytorch/blob/master/test/test_cpp_extensions_jit.py>`_
		for good examples of using this function.
		
		Sources may omit two required parts of a typical non-inline C++ extension:
		the necessary header includes, as well as the (pybind11) binding code. More
		precisely, strings passed to ``cpp_sources`` are first concatenated into a
		single ``.cpp`` file. This file is then prepended with ``#include
		<torch/extension.h>``.
		
		Furthermore, if the ``functions`` argument is supplied, bindings will be
		automatically generated for each function specified. ``functions`` can
		either be a list of function names, or a dictionary mapping from function
		names to docstrings. If a list is given, the name of each function is used
		as its docstring.
		
		The sources in ``cuda_sources`` are concatenated into a separate ``.cu``
		file and  prepended with ``torch/types.h``, ``cuda.h`` and
		``cuda_runtime.h`` includes. The ``.cpp`` and ``.cu`` files are compiled
		separately, but ultimately linked into a single library. Note that no
		bindings are generated for functions in ``cuda_sources`` per  se. To bind
		to a CUDA kernel, you must create a C++ function that calls it, and either
		declare or define this C++ function in one of the ``cpp_sources`` (and
		include its name in ``functions``).
		
		See :func:`load` for a description of arguments omitted below.
		
		Args:
		    cpp_sources: A string, or list of strings, containing C++ source code.
		    cuda_sources: A string, or list of strings, containing CUDA source code.
		    functions: A list of function names for which to generate function
		        bindings. If a dictionary is given, it should map function names to
		        docstrings (which are otherwise just the function names).
		    with_cuda: Determines whether CUDA headers and libraries are added to
		        the build. If set to ``None`` (default), this value is
		        automatically determined based on whether ``cuda_sources`` is
		        provided. Set it to ``True`` to force CUDA headers
		        and libraries to be included.
		    with_pytorch_error_handling: Determines whether pytorch error and
		        warning macros are handled by pytorch instead of pybind. To do
		        this, each function ``foo`` is called via an intermediary ``_safe_foo``
		        function. This redirection might cause issues in obscure cases
		        of cpp. This flag should be set to ``False`` when this redirect
		        causes issues.
		
		Example:
		    >>> from torch.utils.cpp_extension import load_inline
		    >>> source = \'\'\'
		    at::Tensor sin_add(at::Tensor x, at::Tensor y) {
		      return x.sin() + y.sin();
		    }
		    \'\'\'
		    >>> module = load_inline(name='inline_extension',
		                             cpp_sources=[source],
		                             functions=['sin_add'])
		
		.. note::
		    By default, the Ninja backend uses #CPUS + 2 workers to build the
		    extension. This may use up too many resources on some systems. One
		    can control the number of workers by setting the `MAX_JOBS` environment
		    variable to a non-negative number.
	**/
	static public function load_inline(name:Dynamic, cpp_sources:Dynamic, ?cuda_sources:Dynamic, ?functions:Dynamic, ?extra_cflags:Dynamic, ?extra_cuda_cflags:Dynamic, ?extra_ldflags:Dynamic, ?extra_include_paths:Dynamic, ?build_directory:Dynamic, ?verbose:Dynamic, ?with_cuda:Dynamic, ?is_python_module:Dynamic, ?with_pytorch_error_handling:Dynamic, ?keep_intermediates:Dynamic):Dynamic;
	/**
		Raises ``RuntimeError`` if `ninja <https://ninja-build.org/>`_ build system is not
		available on the system, does nothing otherwise.
	**/
	static public function verify_ninja_availability():Dynamic;
}