/* This file is generated, do not edit! */
package pandas.io.parsers.python_parser;
@:pythonImport("pandas.io.parsers.python_parser", "FixedWidthFieldParser") extern class FixedWidthFieldParser {
	/**
		An enumeration.
	**/
	static public function BadLineHandleMethod(value:Dynamic, ?names:Dynamic, ?module:Dynamic, ?qualname:Dynamic, ?type:Dynamic, ?start:Dynamic):Dynamic;
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	**/
	@:native("__init__")
	public function ___init__(f:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Workhorse function for processing nested list into DataFrame
	**/
	public function new(f:Dynamic, ?kwds:python.KwArgs<Dynamic>):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _agg_index(index:Dynamic, ?try_parse_dates:Dynamic):Dynamic;
	/**
		Alert a user about a malformed row, depending on value of
		`self.on_bad_lines` enum.
		
		If `self.on_bad_lines` is ERROR, the alert will be `ParserError`.
		If `self.on_bad_lines` is WARN, the alert will be printed out.
		
		Parameters
		----------
		msg: str
		    The error message to display.
		row_num: int
		    The row number where the parsing error occurred.
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
	/**
		Checks if length of data is equal to length of column names.
		
		One set of trailing commas is allowed. self.index_col not False
		results in a ParserError previously when lengths do not match.
		
		Parameters
		----------
		columns: list of column names
		data: list of array-likes containing the data column-wise.
	**/
	public function _check_data_length(columns:Dynamic, data:Dynamic):Dynamic;
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
	public function _clean_index_names(columns:Dynamic, index_col:Dynamic, unnamed_cols:Dynamic):Dynamic;
	/**
		converts col numbers to names
	**/
	public function _clean_mapping(mapping:Dynamic):Dynamic;
	public function _clear_buffer():Dynamic;
	public function _convert_data(data:Dynamic):Dynamic;
	public function _convert_to_ndarrays(dct:Dynamic, na_values:Dynamic, na_fvalues:Dynamic, ?verbose:Dynamic, ?converters:Dynamic, ?dtypes:Dynamic):Dynamic;
	public function _do_date_conversions(names:Dynamic, data:Dynamic):Dynamic;
	/**
		Check whether or not the 'usecols' parameter
		is a callable.  If so, enumerates the 'names'
		parameter and returns a set of indices for
		each entry in 'names' that evaluates to True.
		If not a callable, returns 'usecols'.
	**/
	public function _evaluate_usecols(usecols:Dynamic, names:Dynamic):Dynamic;
	public function _exclude_implicit_index(alldata:Dynamic):Dynamic;
	/**
		Extract and return the names, index_names, col_names if the column
		names are a MultiIndex.
		
		Parameters
		----------
		header: list of lists
		    The header rows
		index_names: list, optional
		    The names of the future index
		passed_names: bool, default False
		    A flag specifying if names where passed
	**/
	public function _extract_multi_indexer_columns(header:Dynamic, index_names:Dynamic, ?passed_names:Dynamic):Dynamic;
	public function _get_complex_date_index(data:Dynamic, col_names:Dynamic):Dynamic;
	public function _get_empty_meta(columns:Dynamic, index_col:Dynamic, index_names:Dynamic, ?dtype:Dynamic):Dynamic;
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
	public function _handle_usecols(columns:Dynamic, usecols_key:Dynamic, num_original_columns:Dynamic):Dynamic;
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
		
		Returns
		-------
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
		row_num: int
		    The row number of the line being parsed.
	**/
	public function _next_iter_line(row_num:Dynamic):Dynamic;
	public function _next_line():Dynamic;
	/**
		Returns the list of lines without the empty ones. With fixed-width
		fields, empty lines become arrays of empty strings.
		
		See PythonParser._remove_empty_lines.
	**/
	public function _remove_empty_lines(lines:Dynamic):Dynamic;
	public function _remove_skipped_rows(new_rows:Dynamic):Dynamic;
	public function _rows_to_cols(content:Dynamic):Dynamic;
	public function _search_replace_num_columns(lines:Dynamic, search:Dynamic, replace:Dynamic):Dynamic;
	/**
		Set the columns that should not undergo dtype conversions.
		
		Currently, any column that is involved with date parsing will not
		undergo such conversions. If usecols is specified, the positions of the columns
		not to cast is relative to the usecols not to all columns.
		
		Parameters
		----------
		col_indices: The indices specifying order and positions of the columns
		names: The column names which order is corresponding with the order
		       of col_indices
		
		Returns
		-------
		A set of integers containing the positions of the columns not to convert.
	**/
	public function _set_noconvert_dtype_columns(col_indices:Dynamic, names:Dynamic):Dynamic;
	public function _should_parse_dates(i:Dynamic):Dynamic;
	/**
		Check if parse_dates are in columns.
		
		If user has provided names for parse_dates, check if those columns
		are available.
		
		Parameters
		----------
		columns : list
		    List of names of the dataframe.
		
		Returns
		-------
		The names of the columns which will get parsed later if a dict or list
		is given as specification.
		
		Raises
		------
		ValueError
		    If column to parse_date is not in dataframe.
	**/
	public function _validate_parse_dates_presence(columns:Dynamic):Dynamic;
	/**
		Validate the 'usecols' parameter.
		
		Checks whether or not the 'usecols' parameter contains all integers
		(column selection by index), strings (column by name) or is a callable.
		Raises a ValueError if that is not the case.
		
		Parameters
		----------
		usecols : list-like, callable, or None
		    List of columns to use when parsing or a callable that can be used
		    to filter a list of table columns.
		
		Returns
		-------
		usecols_tuple : tuple
		    A tuple of (verified_usecols, usecols_dtype).
		
		    'verified_usecols' is either a set if an array-like is passed in or
		    'usecols' if a callable or None is passed in.
		
		    'usecols_dtype` is the inferred dtype of 'usecols' if an array-like
		    is passed in or None if a callable or None is passed in.
	**/
	public function _validate_usecols_arg(usecols:Dynamic):python.Tuple<Dynamic>;
	/**
		Validates that all usecols are present in a given
		list of names. If not, raise a ValueError that
		shows what usecols are missing.
		
		Parameters
		----------
		usecols : iterable of usecols
		    The columns to validate are present in names.
		names : iterable of names
		    The column names to check against.
		
		Returns
		-------
		usecols : iterable of usecols
		    The `usecols` parameter if the validation succeeds.
		
		Raises
		------
		ValueError : Columns were missing. Error message will list them.
	**/
	public function _validate_usecols_names(usecols:Dynamic, names:Dynamic):Dynamic;
	public function close():Dynamic;
	public function get_chunk(?size:Dynamic):Dynamic;
	public function read(?rows:Dynamic):Dynamic;
}