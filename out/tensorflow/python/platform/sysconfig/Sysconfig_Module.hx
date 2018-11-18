/* This file is generated, do not edit! */
package tensorflow.python.platform.sysconfig;
@:pythonImport("tensorflow.python.platform.sysconfig") extern class Sysconfig_Module {
	static public var _CXX11_ABI_FLAG : Dynamic;
	static public var _MONOLITHIC_BUILD : Dynamic;
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