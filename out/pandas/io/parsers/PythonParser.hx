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
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Alert a user about a malformed row.
		
		If `self.error_bad_lines` is True, the alert will be `ParserError`.
		If `self.warn_bad_lines` is True, the alert will be printed out.
		
		Parameters
		----------
		msg : The error message to display.
		row_num : The row number where the parsing error occurred.
		          Because this row number is displayed, we 1-index,
		          even though we 0-index internally.
	**/
	public function _alert_malformed(msg:Dynamic, row_num:Dynamic):Dynamic;
	/**
		Return a line from buffer, filling buffer if required.
	**/
	public function _buffered_line():Dynamic;
	/**
		Cast values to specified type
		
		Parameters
		----------
		values : ndarray
		cast_type : string or np.dtype
		   dtype to cast values to
		column : string
		    column name - used only for error reporting
		
		Returns
		-------
		converted : ndarray
	**/
	public function _cast_types(values:Dynamic, cast_type:Dynamic, column:Dynamic):numpy.Ndarray;
	public function _check_comments(lines:Dynamic):Dynamic;
	public function _check_decimal(lines:Dynamic):Dynamic;
	/**
		Checks whether the file begins with the BOM character.
		If it does, remove it. In addition, if there is quoting
		in the field subsequent to the BOM, remove it as well
		because it technically takes place at the beginning of
		the name, not the middle of it.
	**/
	public function _check_for_bom(first_row:Dynamic):Dynamic;
	public function _check_thousands(lines:Dynamic):Dynamic;
	public function _clear_buffer():Dynamic;
	public function _convert_data(data:Dynamic):Dynamic;
	public function _convert_to_ndarrays(dct:Dynamic, na_values:Dynamic, na_fvalues:Dynamic, ?verbose:Dynamic, ?converters:Dynamic, ?dtypes:Dynamic):Dynamic;
	public function _do_date_conversions(names:Dynamic, data:Dynamic):Dynamic;
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
	/**
		Infer types of values, possibly casting
		
		Parameters
		----------
		values : ndarray
		na_values : set
		try_num_bool : bool, default try
		   try to cast values to numeric (first preference) or boolean
		
		Returns:
		--------
		converted : ndarray
		na_count : int
	**/
	public function _infer_types(values:Dynamic, na_values:Dynamic, ?try_num_bool:Dynamic):Dynamic;
	/**
		Check if a line is empty or not.
		
		Parameters
		----------
		line : str, array-like
		    The line of data to check.
		
		Returns
		-------
		boolean : Whether or not the line is empty.
	**/
	public function _is_line_empty(line:Dynamic):Dynamic;
	public function _make_index(data:Dynamic, alldata:Dynamic, columns:Dynamic, ?indexnamerow:Dynamic):Dynamic;
	public function _make_reader(f:Dynamic):Dynamic;
	public function _maybe_dedup_names(names:Dynamic):Dynamic;
	public function _maybe_make_multi_index_columns(columns:Dynamic, ?col_names:Dynamic):Dynamic;
	/**
		Wrapper around iterating through `self.data` (CSV source).
		
		When a CSV error is raised, we check for specific
		error messages that allow us to customize the
		error message displayed to the user.
		
		Parameters
		----------
		row_num : The row number of the line being parsed.
	**/
	public function _next_iter_line(row_num:Dynamic):Dynamic;
	public function _next_line():Dynamic;
	/**
		Iterate through the lines and remove any that are
		either empty or contain only one whitespace value
		
		Parameters
		----------
		lines : array-like
		    The array of lines that we are to filter.
		
		Returns
		-------
		filtered_lines : array-like
		    The same array of lines with the "empty" ones removed.
	**/
	public function _remove_empty_lines(lines:Dynamic):Dynamic;
	public function _rows_to_cols(content:Dynamic):Dynamic;
	public function _search_replace_num_columns(lines:Dynamic, search:Dynamic, replace:Dynamic):Dynamic;
	public function _set_no_thousands_columns():Dynamic;
	public function _should_parse_dates(i:Dynamic):Dynamic;
	public function _to_recarray(data:Dynamic, columns:Dynamic):Dynamic;
	public function close():Dynamic;
	public function get_chunk(?size:Dynamic):Dynamic;
	public function read(?rows:Dynamic):Dynamic;
}