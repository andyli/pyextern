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
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts `bytearray`, `bytes`, or unicode python input types to `bytes`.
		
		Uses utf-8 encoding for text by default.
		
		Args:
		  bytes_or_text: A `bytearray`, `bytes`, `str`, or `unicode` object.
		  encoding: A string indicating the charset for encoding unicode.
		
		Returns:
		  A `bytes` object.
		
		Raises:
		  TypeError: If `bytes_or_text` is not a binary or unicode string.
	**/
	static public function as_bytes(bytes_or_text:Dynamic, ?encoding:Dynamic):Dynamic;
	static public function as_str(bytes_or_text:Dynamic, ?encoding:Dynamic):Dynamic;
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
	/**
		Converts any string-like python input types to unicode.
		
		Returns the input as a unicode string. Uses utf-8 encoding for text
		by default.
		
		Args:
		  bytes_or_text: A `bytes`, `str`, or `unicode` object.
		  encoding: A string indicating the charset for decoding unicode.
		
		Returns:
		  A `unicode` (Python 2) or `str` (Python 3) object.
		
		Raises:
		  TypeError: If `bytes_or_text` is not a binary or unicode string.
	**/
	static public function as_text(bytes_or_text:Dynamic, ?encoding:Dynamic):Dynamic;
	static public var bytes_or_text_types : Dynamic;
	static public var complex_types : Dynamic;
	static public var division : Dynamic;
	static public var integral_types : Dynamic;
	/**
		Converts input which is a `PathLike` object to `bytes`.
		
		Converts from any python constant representation of a `PathLike` object
		or `str` to bytes.
		
		Args:
		  path: An object that can be converted to path representation.
		
		Returns:
		  A `bytes` object.
		
		Usage:
		  In case a simplified `bytes` version of the path is needed from an
		  `os.PathLike` object
	**/
	static public function path_to_bytes(path:Dynamic):Dynamic;
	/**
		Converts input which is a `PathLike` object to `str` type.
		
		Converts from any python constant representation of a `PathLike` object to
		a string. If the input is not a `PathLike` object, simply returns the input.
		
		Args:
		  path: An object that can be converted to path representation.
		
		Returns:
		  A `str` object.
		
		Usage:
		  In case a simplified `str` version of the path is needed from an
		  `os.PathLike` object
		
		Examples:
		```python
		$ tf.compat.path_to_str('C:\XYZ\tensorflow\./.././tensorflow')
		'C:\XYZ\tensorflow\./.././tensorflow' # Windows OS
		$ tf.compat.path_to_str(Path('C:\XYZ\tensorflow\./.././tensorflow'))
		'C:\XYZ\tensorflow\..\tensorflow' # Windows OS
		$ tf.compat.path_to_str(Path('./corpus'))
		'corpus' # Linux OS
		$ tf.compat.path_to_str('./.././Corpus')
		'./.././Corpus' # Linux OS
		$ tf.compat.path_to_str(Path('./.././Corpus'))
		'../Corpus' # Linux OS
		$ tf.compat.path_to_str(Path('./..////../'))
		'../..' # Linux OS
		
		```
	**/
	static public function path_to_str(path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var real_types : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}