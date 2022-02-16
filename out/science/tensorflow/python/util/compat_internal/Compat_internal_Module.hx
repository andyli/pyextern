/* This file is generated, do not edit! */
package tensorflow.python.util.compat_internal;
@:pythonImport("tensorflow.python.util.compat_internal") extern class Compat_internal_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts input to `str` type.
		
		   Uses `str(value)`, except for `bytes` typed inputs, which are converted
		   using `as_str`.
		
		Args:
		  value: A object that can be converted to `str`.
		
		Returns:
		  A `str` object.
	**/
	static public function as_str_any(value:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the file system path representation of a `PathLike` object,
		else as it is.
		
		Args:
		  path: An object that can be converted to path representation.
		
		Returns:
		  A `str` object.
	**/
	static public function path_to_str(path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}