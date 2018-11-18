/* This file is generated, do not edit! */
package torch.utils.cpp_extension;
@:pythonImport("torch.utils.cpp_extension") extern class Cpp_extension_Module {
	static public var ABI_INCOMPATIBILITY_WARNING : Dynamic;
	static public var BUILT_FROM_SOURCE_VERSION_PATTERN : Dynamic;
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
		    >>> from torch.utils.cpp_extension import BuildExtension, CppExtension
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
	**/
	static public function CUDAExtension(name:Dynamic, sources:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var CUDA_HOME : Dynamic;
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
		                    extra_compile_args=['-g'])),
		            ],
		            cmdclass={
		                'build_ext': BuildExtension
		            })
	**/
	static public function CppExtension(name:Dynamic, sources:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var MINIMUM_GCC_VERSION : Dynamic;
	static public var MINIMUM_MSVC_VERSION : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _build_extension_module(name:Dynamic, build_directory:Dynamic):Dynamic;
	/**
		Finds the CUDA install path.
	**/
	static public function _find_cuda_home():Dynamic;
	static public function _get_build_directory(name:Dynamic, verbose:Dynamic):Dynamic;
	static public function _import_module_from_library(module_name:Dynamic, path:Dynamic):Dynamic;
	static public function _is_cuda_file(path:Dynamic):Dynamic;
	static public function _jit_compile(name:Dynamic, sources:Dynamic, extra_cflags:Dynamic, extra_cuda_cflags:Dynamic, extra_ldflags:Dynamic, extra_include_paths:Dynamic, build_directory:Dynamic, verbose:Dynamic, ?with_cuda:Dynamic):Dynamic;
	/**
		Joins paths with CUDA_HOME, or raises an error if it CUDA_HOME is not set.
		
		This is basically a lazy way of raising an error for missing $CUDA_HOME
		only once we need to get any CUDA-specific path.
	**/
	static public function _join_cuda_home(?paths:python.VarArgs<Dynamic>):Dynamic;
	static public function _prepare_ldflags(extra_ldflags:Dynamic, with_cuda:Dynamic, verbose:Dynamic):Dynamic;
	static public function _write_ninja_file(path:Dynamic, name:Dynamic, sources:Dynamic, extra_cflags:Dynamic, extra_cuda_cflags:Dynamic, extra_ldflags:Dynamic, extra_include_paths:Dynamic, ?with_cuda:Dynamic):Dynamic;
	/**
		Verifies that the given compiler is ABI-compatible with PyTorch.
		
		Arguments:
		    compiler (str): The compiler executable name to check (e.g. ``g++``).
		        Must be executable in a shell process.
		
		Returns:
		    False if the compiler is (likely) ABI-incompatible with PyTorch,
		    else True.
	**/
	static public function check_compiler_abi_compatibility(compiler:Dynamic):Dynamic;
	/**
		Get the include paths required to build a C++ or CUDA extension.
		
		Args:
		    cuda: If `True`, includes CUDA-specific include paths.
		
		Returns:
		    A list of include path strings.
	**/
	static public function include_paths(?cuda:Dynamic):Dynamic;
	static public function is_binary_build():Dynamic;
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
		
		Returns:
		    The loaded PyTorch extension as a Python module.
		
		Example:
		    >>> from torch.utils.cpp_extension import load
		    >>> module = load(
		            name='extension',
		            sources=['extension.cpp', 'extension_kernel.cu'],
		            extra_cflags=['-O2'],
		            verbose=True)
	**/
	static public function load(name:Dynamic, sources:Dynamic, ?extra_cflags:Dynamic, ?extra_cuda_cflags:Dynamic, ?extra_ldflags:Dynamic, ?extra_include_paths:Dynamic, ?build_directory:Dynamic, ?verbose:Dynamic, ?with_cuda:Dynamic):Dynamic;
	/**
		Loads a PyTorch C++ extension just-in-time (JIT) from string sources.
		
		This function behaves exactly like :func:`load`, but takes its sources as
		strings rather than filenames. These strings are stored to files in the
		build directory, after which the behavior of :func:`load_inline` is
		identical to :func:`load`.
		
		See `the
		tests <https://github.com/pytorch/pytorch/blob/master/test/test_cpp_extensions.py>`_
		for good examples of using this function.
		
		Sources may omit two required parts of a typical non-inline C++ extension:
		the necessary header includes, as well as the (pybind11) binding code. More
		precisely, strings passed to ``cpp_sources`` are first concatenated into a
		single ``.cpp`` file. This file is then prepended with ``#include
		<torch/torch.h>``.
		
		Furthermore, if the ``functions`` argument is supplied, bindings will be
		automatically generated for each function specified. ``functions`` can
		either be a list of function names, or a dictionary mapping from function
		names to docstrings. If a list is given, the name of each function is used
		as its docstring.
		
		The sources in ``cuda_sources`` are concatenated into a separate ``.cu``
		file and  prepended with ``ATen/ATen.h``, ``cuda.h`` and ``cuda_runtime.h``
		includes. The ``.cpp`` and ``.cu`` files are compiled separately, but
		ultimately linked into a single library. Note that no bindings are
		generated for functions in ``cuda_sources`` per  se. To bind to a CUDA
		kernel, you must create a C++ function that calls it, and either declare or
		define this C++ function in one of the ``cpp_sources`` (and include its
		name in ``functions``).
		
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
		        provided. Set it to `True`` to force CUDA headers
		        and libraries to be included.
		
		Example:
		    >>> from torch.utils.cpp_extension import load_inline
		    >>> source = '''
		    at::Tensor sin_add(at::Tensor x, at::Tensor y) {
		      return x.sin() + y.sin();
		    }
		    '''
		    >>> module = load_inline(name='inline_extension',
		                             cpp_sources=[source],
		                             functions=['sin_add'])
	**/
	static public function load_inline(name:Dynamic, cpp_sources:Dynamic, ?cuda_sources:Dynamic, ?functions:Dynamic, ?extra_cflags:Dynamic, ?extra_cuda_cflags:Dynamic, ?extra_ldflags:Dynamic, ?extra_include_paths:Dynamic, ?build_directory:Dynamic, ?verbose:Dynamic, ?with_cuda:Dynamic):Dynamic;
	/**
		Returns ``True`` if the `ninja <https://ninja-build.org/>`_ build system is
		available on the system.
	**/
	static public function verify_ninja_availability():Dynamic;
}