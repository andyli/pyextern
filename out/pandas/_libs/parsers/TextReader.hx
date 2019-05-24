/* This file is generated, do not edit! */
package pandas._libs.parsers;
@:pythonImport("pandas._libs.parsers", "TextReader") extern class TextReader {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _convert_column_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _get_converter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _set_quoting(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var allow_leading_cols : Dynamic;
	public var buffer_lines : Dynamic;
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var compression : Dynamic;
	public var converters : Dynamic;
	public var delim_whitespace : Dynamic;
	public var delimiter : Dynamic;
	public var dtype : Dynamic;
	public var dtype_cast_order : Dynamic;
	public var encoding : Dynamic;
	public var header : Dynamic;
	public var header_end : Dynamic;
	public var header_start : Dynamic;
	public var index_col : Dynamic;
	public var leading_cols : Dynamic;
	public var low_memory : Dynamic;
	public var mangle_dupe_cols : Dynamic;
	public var memory_map : Dynamic;
	public var na_values : Dynamic;
	public var names : Dynamic;
	public var noconvert : Dynamic;
	public var orig_header : Dynamic;
	/**
		rows=None --> read all rows
	**/
	public function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function remove_noconvert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function set_error_bad_lines(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function set_noconvert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var skipfooter : Dynamic;
	public var skiprows : Dynamic;
	public var table_width : Dynamic;
	public var tupleize_cols : Dynamic;
	public var unnamed_cols : Dynamic;
	public var usecols : Dynamic;
}