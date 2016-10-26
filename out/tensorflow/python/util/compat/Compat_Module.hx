/* This file is generated, do not edit! */
package tensorflow.python.util.compat;
@:pythonImport("tensorflow.python.util.compat") extern class Compat_Module {
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
		Converts either bytes or unicode to `bytes`, using utf-8 encoding for text.
		
		Args:
		  bytes_or_text: A `bytes`, `str`, or `unicode` object.
		
		Returns:
		  A `bytes` object.
		
		Raises:
		  TypeError: If `bytes_or_text` is not a binary or unicode string.
	**/
	static public function as_bytes(bytes_or_text:Dynamic):Dynamic;
	/**
		Returns the given argument as a unicode string.
		
		Args:
		  bytes_or_text: A `bytes`, `str, or `unicode` object.
		
		Returns:
		  A `unicode` (Python 2) or `str` (Python 3) object.
		
		Raises:
		  TypeError: If `bytes_or_text` is not a binary or unicode string.
	**/
	static public function as_str(bytes_or_text:Dynamic):Dynamic;
	/**
		Converts to `str` as `str(value)`, but use `as_str` for `bytes`.
		
		Args:
		  value: A object that can be converted to `str`.
		
		Returns:
		  A `str` object.
	**/
	static public function as_str_any(value:Dynamic):Dynamic;
	/**
		Returns the given argument as a unicode string.
		
		Args:
		  bytes_or_text: A `bytes`, `str, or `unicode` object.
		
		Returns:
		  A `unicode` (Python 2) or `str` (Python 3) object.
		
		Raises:
		  TypeError: If `bytes_or_text` is not a binary or unicode string.
	**/
	static public function as_text(bytes_or_text:Dynamic):Dynamic;
	static public var bytes_or_text_types : Dynamic;
	static public var complex_types : Dynamic;
	static public var division : Dynamic;
	static public var integral_types : Dynamic;
	static public var print_function : Dynamic;
	static public var real_types : Dynamic;
}