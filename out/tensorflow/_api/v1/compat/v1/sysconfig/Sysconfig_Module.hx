/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.sysconfig;
@:pythonImport("tensorflow._api.v1.compat.v1.sysconfig") extern class Sysconfig_Module {
	static public var CXX11_ABI_FLAG : Dynamic;
	static public var MONOLITHIC_BUILD : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
}