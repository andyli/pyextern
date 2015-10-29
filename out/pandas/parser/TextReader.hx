/* This file is generated, do not edit! */
package pandas.parser;
@:pythonImport("pandas.parser", "TextReader") extern class TextReader {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _convert_column_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _get_converter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var allow_leading_cols : Dynamic;
	static public var as_recarray : Dynamic;
	static public var buffer_lines : Dynamic;
	static public var compact_ints : Dynamic;
	static public var compression : Dynamic;
	static public var converters : Dynamic;
	public function debug_print(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var delim_whitespace : Dynamic;
	static public var delimiter : Dynamic;
	static public var dtype : Dynamic;
	static public var encoding : Dynamic;
	static public var false_values : Dynamic;
	static public var header : Dynamic;
	static public var header_end : Dynamic;
	static public var header_start : Dynamic;
	static public var index_col : Dynamic;
	static public var leading_cols : Dynamic;
	static public var low_memory : Dynamic;
	static public var mangle_dupe_cols : Dynamic;
	static public var memory_map : Dynamic;
	static public var na_values : Dynamic;
	static public var names : Dynamic;
	static public var noconvert : Dynamic;
	static public var orig_header : Dynamic;
	/**
		rows=None --> read all rows
	**/
	public function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function remove_noconvert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function set_error_bad_lines(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function set_noconvert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var skip_footer : Dynamic;
	static public var skiprows : Dynamic;
	static public var table_width : Dynamic;
	static public var true_values : Dynamic;
	static public var tupleize_cols : Dynamic;
	static public var use_unsigned : Dynamic;
	static public var usecols : Dynamic;
}