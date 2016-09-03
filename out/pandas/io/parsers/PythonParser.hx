/* This file is generated, do not edit! */
package pandas.io.parsers;
@:pythonImport("pandas.io.parsers", "PythonParser") extern class PythonParser {
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
		Workhorse function for processing nested list into DataFrame
		
		Should be replaced by np.genfromtxt eventually?
	**/
	@:native("__init__")
	public function ___init__(f:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Workhorse function for processing nested list into DataFrame
		
		Should be replaced by np.genfromtxt eventually?
	**/
	public function new(f:Dynamic, ?kwds:python.KwArgs<Dynamic>):Void;
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
	/**
		Return a line from buffer, filling buffer if required.
	**/
	public function _buffered_line():Dynamic;
	public function _check_comments(lines:Dynamic):Dynamic;
	public function _check_empty(lines:Dynamic):Dynamic;
	public function _check_thousands(lines:Dynamic):Dynamic;
	public function _clear_buffer():Dynamic;
	public function _convert_data(data:Dynamic):Dynamic;
	public function _convert_to_ndarrays(dct:Dynamic, na_values:Dynamic, na_fvalues:Dynamic, ?verbose:Dynamic, ?converters:Dynamic):Dynamic;
	public function _convert_types(values:Dynamic, na_values:Dynamic, ?try_num_bool:Dynamic):Dynamic;
	public function _do_date_conversions(names:Dynamic, data:Dynamic):Dynamic;
	public function _empty(line:Dynamic):Dynamic;
	public function _exclude_implicit_index(alldata:Dynamic):Dynamic;
	/**
		extract and return the names, index_names, col_names
		header is a list-of-lists returned from the parsers 
	**/
	public function _extract_multi_indexer_columns(header:Dynamic, index_names:Dynamic, col_names:Dynamic, ?passed_names:Dynamic):Dynamic;
	public function _get_complex_date_index(data:Dynamic, col_names:Dynamic):Dynamic;
	/**
		Try several cases to get lines:
		
		0) There are headers on row 0 and row 1 and their
		total summed lengths equals the length of the next line.
		Treat row 0 as columns and row 1 as indices
		1) Look for implicit index: there are more columns
		on row 1 than row 0. If this is true, assume that row
		1 lists index columns and row 0 lists normal columns.
		2) Get index from the columns if it was listed.
	**/
	public function _get_index_name(columns:Dynamic):Dynamic;
	public function _get_lines(?rows:Dynamic):Dynamic;
	public function _get_simple_index(data:Dynamic, columns:Dynamic):Dynamic;
	/**
		Sets self._col_indices
		
		usecols_key is used if there are string usecols.
	**/
	public function _handle_usecols(columns:Dynamic, usecols_key:Dynamic):Dynamic;
	public var _has_complex_date_col : Dynamic;
	static public var _implicit_index : Dynamic;
	public function _infer_columns():Dynamic;
	public function _make_index(data:Dynamic, alldata:Dynamic, columns:Dynamic, ?indexnamerow:Dynamic):Dynamic;
	public function _make_reader(f:Dynamic):Dynamic;
	public function _maybe_make_multi_index_columns(columns:Dynamic, ?col_names:Dynamic):Dynamic;
	public function _next_line():Dynamic;
	public function _rows_to_cols(content:Dynamic):Dynamic;
	public function _set_no_thousands_columns():Dynamic;
	public function _should_parse_dates(i:Dynamic):Dynamic;
	public function close():Dynamic;
	public function get_chunk(?size:Dynamic):Dynamic;
	public function read(?rows:Dynamic):Dynamic;
}