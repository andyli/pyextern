/* This file is generated, do not edit! */
package pandas.io.parsers;
@:pythonImport("pandas.io.parsers", "CParserWrapper") extern class CParserWrapper {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
	public function ___init__(src:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(src:Dynamic, ?kwds:python.KwArgs<Dynamic>):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _agg_index(index:Dynamic, ?try_parse_dates:Dynamic):Dynamic;
	public function _convert_to_ndarrays(dct:Dynamic, na_values:Dynamic, na_fvalues:Dynamic, ?verbose:Dynamic, ?converters:Dynamic):Dynamic;
	public function _convert_types(values:Dynamic, na_values:Dynamic, ?try_num_bool:Dynamic):Dynamic;
	public function _do_date_conversions(names:Dynamic, data:Dynamic):Dynamic;
	/**
		extract and return the names, index_names, col_names
		header is a list-of-lists returned from the parsers 
	**/
	public function _extract_multi_indexer_columns(header:Dynamic, index_names:Dynamic, col_names:Dynamic, ?passed_names:Dynamic):Dynamic;
	public function _filter_usecols(names:Dynamic):Dynamic;
	public function _get_complex_date_index(data:Dynamic, col_names:Dynamic):Dynamic;
	public function _get_index_names():Dynamic;
	public function _get_simple_index(data:Dynamic, columns:Dynamic):Dynamic;
	public var _has_complex_date_col : Dynamic;
	static public var _implicit_index : Dynamic;
	public function _make_index(data:Dynamic, alldata:Dynamic, columns:Dynamic, ?indexnamerow:Dynamic):Dynamic;
	public function _maybe_dedup_names(names:Dynamic):Dynamic;
	public function _maybe_make_multi_index_columns(columns:Dynamic, ?col_names:Dynamic):Dynamic;
	public function _maybe_parse_dates(values:Dynamic, index:Dynamic, ?try_parse_dates:Dynamic):Dynamic;
	public function _set_noconvert_columns():Dynamic;
	public function _should_parse_dates(i:Dynamic):Dynamic;
	public function close():Dynamic;
	public function read(?nrows:Dynamic):Dynamic;
	public function set_error_bad_lines(status:Dynamic):Dynamic;
}