/* This file is generated, do not edit! */
package tensorflow.python.platform.sysconfig;
@:pythonImport("tensorflow.python.platform.sysconfig") extern class Sysconfig_Module {
	static public var _CXX11_ABI_FLAG : Dynamic;
	static public var _MONOLITHIC_BUILD : Dynamic;
	static public var _VERSION : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get a dictionary describing TensorFlow's build environment.
		
		Values are generated when TensorFlow is compiled, and are static for each
		TensorFlow package. The return value is a dictionary with string keys such as:
		
		  - cuda_version
		  - cudnn_version
		  - is_cuda_build
		  - is_rocm_build
		  - msvcp_dll_names
		  - nvcuda_dll_name
		  - cudart_dll_name
		  - cudnn_dll_name
		
		Note that the actual keys and values returned by this function is subject to
		change across different versions of TensorFlow or across platforms.
		
		Returns:
		  A Dictionary describing TensorFlow's build environment.
	**/
	static public function get_build_info():Dynamic;
	/**
		Get the compilation flags for custom operators.
		
		Returns:
		  The compilation flags.
	**/
	static public function get_compile_flags():Dynamic;
	/**
		Get the directory containing the TensorFlow C++ header files.
		
		Returns:
		  The directory as string.
	**/
	static public function get_include():Dynamic;
	/**
		Get the directory containing the TensorFlow framework library.
		
		Returns:
		  The directory as string.
	**/
	static public function get_lib():Dynamic;
	/**
		Get the link flags for custom operators.
		
		Returns:
		  The link flags.
	**/
	static public function get_link_flags():Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}