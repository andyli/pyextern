/* This file is generated, do not edit! */
package pandas.io.parsers;
@:pythonImport("pandas.io.parsers") extern class Parsers_Module {
	static public var PY3 : Dynamic;
	/**
		Converts lists of lists/tuples into DataFrames with proper type inference
		and optional (e.g. string to datetime) conversion. Also enables iterating
		lazily over chunks of large files
		
		Parameters
		----------
		data : file-like object or list
		delimiter : separator character to use
		dialect : str or csv.Dialect instance, default None
		    Ignored if delimiter is longer than 1 character
		names : sequence, default
		header : int, default 0
		    Row to use to parse column labels. Defaults to the first row. Prior
		    rows will be discarded
		index_col : int or list, default None
		    Column or columns to use as the (possibly hierarchical) index
		has_index_names: boolean, default False
		    True if the cols defined in index_col have an index name and are
		    not in the header
		na_values : scalar, str, list-like, or dict, default None
		    Additional strings to recognize as NA/NaN.
		keep_default_na : bool, default True
		thousands : str, default None
		    Thousands separator
		comment : str, default None
		    Comment out remainder of line
		parse_dates : boolean, default False
		keep_date_col : boolean, default False
		date_parser : function, default None
		skiprows : list of integers
		    Row numbers to skip
		skipfooter : int
		    Number of line at bottom of file to skip
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the cell (not column) content, and return the
		    transformed content.
		encoding : string, default None
		    Encoding to use for UTF when reading/writing (ex. 'utf-8')
		squeeze : boolean, default False
		    returns Series if only one column
		infer_datetime_format: boolean, default False
		    If True and `parse_dates` is True for a column, try to infer the
		    datetime format based on the first datetime string. If the format
		    can be inferred, there often will be a large parsing speed-up.
		float_precision : string, default None
		    Specifies which converter the C engine should use for floating-point
		    values. The options are None for the ordinary converter,
		    'high' for the high-precision converter, and 'round_trip' for the
		    round-trip converter.
	**/
	static public function TextParser(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function UnicodeReader(f:Dynamic, ?dialect:Dynamic, ?encoding:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _BOM : Dynamic;
	static public var _NA_VALUES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _c_parser_defaults : Dynamic;
	static public var _c_unsupported : Dynamic;
	static public function _clean_index_names(columns:Dynamic, index_col:Dynamic):Dynamic;
	static public function _clean_na_values(na_values:Dynamic, ?keep_default_na:Dynamic):Dynamic;
	static public function _concat_date_cols(date_cols:Dynamic):Dynamic;
	static public var _deprecated_args : Dynamic;
	static public var _engine_doc : Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether or not the 'usecols' parameter
		is a callable.  If so, enumerates the 'names'
		parameter and returns a set of indices for
		each entry in 'names' that evaluates to True.
		If not a callable, returns 'usecols'.
	**/
	static public function _evaluate_usecols(usecols:Dynamic, names:Dynamic):Dynamic;
	static public function _floatify_na_values(na_values:Dynamic):Dynamic;
	static public var _fwf_defaults : Dynamic;
	static public var _fwf_widths : Dynamic;
	static public function _get_col_names(colspec:Dynamic, columns:Dynamic):Dynamic;
	static public function _get_empty_meta(columns:Dynamic, index_col:Dynamic, index_names:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Get file handle for given path/buffer and mode.
		
		Parameters
		----------
		path_or_buf :
		    a path (str) or buffer
		mode : str
		    mode to open path_or_buf with
		encoding : str or None
		compression : str or None
		    Supported compression protocols are gzip, bz2, zip, and xz
		memory_map : boolean, default False
		    See parsers._parser_params for more information.
		is_text : boolean, default True
		    whether file/buffer is in text format (csv, json, etc.), or in binary
		    mode (pickle, etc.)
		Returns
		-------
		f : file-like
		    A file-like object
		handles : list of file-like objects
		    A list of file-like object that were openned in this function.
	**/
	static public function _get_handle(path_or_buf:Dynamic, mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?memory_map:Dynamic, ?is_text:Dynamic):Dynamic;
	static public function _get_na_values(col:Dynamic, na_values:Dynamic, na_fvalues:Dynamic):Dynamic;
	/**
		Get the compression method for filepath_or_buffer. If compression='infer',
		the inferred compression method is returned. Otherwise, the input
		compression method is returned unchanged, unless it's invalid, in which
		case an error is raised.
		
		Parameters
		----------
		filepath_or_buf :
		    a path (str) or buffer
		compression : str or None
		    the compression method including None for no compression and 'infer'
		
		Returns
		-------
		string or None :
		    compression method
		
		Raises
		------
		ValueError on invalid compression specified
	**/
	static public function _infer_compression(filepath_or_buffer:Dynamic, compression:Dynamic):Dynamic;
	static public function _is_index_col(col:Dynamic):Dynamic;
	static public function _make_date_converter(?date_parser:Dynamic, ?dayfirst:Dynamic, ?infer_datetime_format:Dynamic):Dynamic;
	static public function _make_parser_function(name:Dynamic, ?sep:Dynamic):Dynamic;
	static public var _parser_defaults : Dynamic;
	static public var _parser_params : Dynamic;
	static public function _process_date_conversion(data_dict:Dynamic, converter:Dynamic, parse_spec:Dynamic, index_col:Dynamic, index_names:Dynamic, columns:Dynamic, ?keep_date_col:Dynamic):Dynamic;
	static public var _python_unsupported : Dynamic;
	/**
		Generic reader of line files.
	**/
	static public function _read(filepath_or_buffer:Dynamic, kwds:Dynamic):Dynamic;
	static public var _read_csv_doc : Dynamic;
	static public var _read_fwf_doc : Dynamic;
	static public var _read_table_doc : Dynamic;
	static public var _sep_doc : Dynamic;
	/**
		return a stringified and numeric for these values 
	**/
	static public function _stringify_na_values(na_values:Dynamic):Dynamic;
	static public function _try_convert_dates(parser:Dynamic, colspec:Dynamic, data_dict:Dynamic, columns:Dynamic):Dynamic;
	static public function _validate_header_arg(header:Dynamic):Dynamic;
	/**
		Checks whether the 'name' parameter for parsing is either
		an integer OR float that can SAFELY be cast to an integer
		without losing accuracy. Raises a ValueError if that is
		not the case.
		
		Parameters
		----------
		name : string
		    Parameter name (used for error reporting)
		val : int or float
		    The value to check
		min_val : int
		    Minimum allowed value (val < min_val will result in a ValueError)
	**/
	static public function _validate_integer(name:Dynamic, val:Dynamic, ?min_val:Dynamic):Dynamic;
	/**
		Check whether or not the 'parse_dates' parameter
		is a non-boolean scalar. Raises a ValueError if
		that is the case.
	**/
	static public function _validate_parse_dates_arg(parse_dates:Dynamic):Dynamic;
	/**
		Validate the 'skipfooter' parameter.
		
		Checks whether 'skipfooter' is a non-negative integer.
		Raises a ValueError if that is not the case.
		
		Parameters
		----------
		skipfooter : non-negative integer
		    The number of rows to skip at the end of the file.
		
		Returns
		-------
		validated_skipfooter : non-negative integer
		    The original input if the validation succeeds.
		
		Raises
		------
		ValueError : 'skipfooter' was not a non-negative integer.
	**/
	static public function _validate_skipfooter_arg(skipfooter:Dynamic):Dynamic;
	/**
		Validate the 'usecols' parameter.
		
		Checks whether or not the 'usecols' parameter contains all integers
		(column selection by index), strings (column by name) or is a callable.
		Raises a ValueError if that is not the case.
		
		Parameters
		----------
		usecols : array-like, callable, or None
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
	static public function _validate_usecols_arg(usecols:Dynamic):python.Tuple<Dynamic>;
	/**
		return a view if copy is False, but
		need to be very careful as the result shape could change! 
	**/
	static public function astype_nansafe(arr:Dynamic, dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public function count_empty_vals(vals:Dynamic):Dynamic;
	/**
		Fill a single paragraph of text, returning a new string.
		
		Reformat the single paragraph in 'text' to fit in lines of no more
		than 'width' columns, and return a new string containing the entire
		wrapped paragraph.  As with wrap(), tabs are expanded and other
		whitespace characters converted to space.  See TextWrapper class for
		available keyword args to customize wrapping behaviour.
	**/
	static public function fill(text:Dynamic, ?width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function generic_parser(parse_func:Dynamic, ?cols:python.VarArgs<Dynamic>):Dynamic;
	/**
		If the filepath_or_buffer is a url, translate and return the buffer.
		Otherwise passthrough.
		
		Parameters
		----------
		filepath_or_buffer : a url, filepath (str, py.path.local or pathlib.Path),
		                     or buffer
		encoding : the encoding to use to decode py3 bytes, default is 'utf-8'
		
		Returns
		-------
		a filepath_or_buffer, the encoding, the compression
	**/
	static public function get_filepath_or_buffer(filepath_or_buffer:Dynamic, ?encoding:Dynamic, ?compression:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		----------
		boolean : Whether or not the two dtypes are equal.
		
		Examples
		--------
		>>> is_dtype_equal(int, float)
		False
		>>> is_dtype_equal("int", int)
		True
		>>> is_dtype_equal(object, "category")
		False
		>>> is_dtype_equal(CategoricalDtype(), "category")
		True
		>>> is_dtype_equal(DatetimeTZDtype(), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Check if the object is a file-like object.
		
		For objects to be considered file-like, they must
		be an iterator AND have either a `read` and/or `write`
		method as an attribute.
		
		Note: file-like objects must be iterable, but
		iterable objects need not be file-like.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_file_like : bool
		    Whether `obj` has file-like properties.
		
		Examples
		--------
		>>> buffer(StringIO("data"))
		>>> is_file_like(buffer)
		True
		>>> is_file_like([1, 2, 3])
		False
	**/
	static public function is_file_like(obj:Dynamic):Bool;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
	**/
	static public function is_list_like(obj:Dynamic):Bool;
	/**
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the object dtype.
		
		Examples
		--------
		>>> is_object_dtype(object)
		True
		>>> is_object_dtype(int)
		False
		>>> is_object_dtype(np.array([], dtype=object))
		True
		>>> is_object_dtype(np.array([], dtype=int))
		False
		>>> is_object_dtype([1, 2, 3])
		False
	**/
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given value is scalar.
		
		This includes:
		- numpy array scalar (e.g. np.int64)
		- Python builtin numerics
		- Python builtin byte arrays and strings
		- None
		- instances of datetime.datetime
		- instances of datetime.timedelta
		- Period
		- instances of decimal.Decimal
		- Interval
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of the string dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the string dtype.
		
		Examples
		--------
		>>> is_string_dtype(str)
		True
		>>> is_string_dtype(object)
		True
		>>> is_string_dtype(int)
		False
		>>>
		>>> is_string_dtype(np.array(['a', 'b']))
		True
		>>> is_string_dtype(pd.Series([1, 2]))
		False
	**/
	static public function is_string_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lzip(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Read CSV (comma-separated) file into DataFrame
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the `online docs for IO Tools
		<http://pandas.pydata.org/pandas-docs/stable/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, pathlib.Path, py._path.local.LocalPath or any object with a read() method (such as a file handle or StringIO)
		    The string could be a URL. Valid URL schemes include http, ftp, s3, and
		    file. For file URLs, a host is expected. For instance, a local file could
		    be file ://localhost/path/to/table.csv
		sep : str, default ','
		    Delimiter to use. If sep is None, the C engine cannot automatically detect
		    the separator, but the Python parsing engine can, meaning the latter will
		    be used automatically. In addition, separators longer than 1 character and
		    different from ``'\s+'`` will be interpreted as regular expressions and
		    will also force the use of the Python parsing engine. Note that regex
		    delimiters are prone to ignoring quoted data. Regex example: ``'\r\t'``
		delimiter : str, default ``None``
		    Alternative argument name for sep.
		delim_whitespace : boolean, default False
		    Specifies whether or not whitespace (e.g. ``' '`` or ``'    '``) will be
		    used as the sep. Equivalent to setting ``sep='\s+'``. If this option
		    is set to True, nothing should be passed in for the ``delimiter``
		    parameter.
		
		    .. versionadded:: 0.18.1 support for the Python parser.
		
		header : int or list of ints, default 'infer'
		    Row number(s) to use as the column names, and the start of the data.
		    Default behavior is as if set to 0 if no ``names`` passed, otherwise
		    ``None``. Explicitly pass ``header=0`` to be able to replace existing
		    names. The header can be a list of integers that specify row locations for
		    a multi-index on the columns e.g. [0,1,3]. Intervening rows that are not
		    specified will be skipped (e.g. 2 in this example is skipped). Note that
		    this parameter ignores commented lines and empty lines if
		    ``skip_blank_lines=True``, so header=0 denotes the first line of data
		    rather than the first line of the file.
		names : array-like, default None
		    List of column names to use. If file contains no header row, then you
		    should explicitly pass header=None. Duplicates in this list are not
		    allowed unless mangle_dupe_cols=True, which is the default.
		index_col : int or sequence or False, default None
		    Column to use as the row labels of the DataFrame. If a sequence is given, a
		    MultiIndex is used. If you have a malformed file with delimiters at the end
		    of each line, you might consider index_col=False to force pandas to _not_
		    use the first column as the index (row names)
		usecols : array-like or callable, default None
		    Return a subset of the columns. If array-like, all elements must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid array-like
		    `usecols` parameter would be [0, 1, 2] or ['foo', 'bar', 'baz'].
		
		    If callable, the callable function will be evaluated against the column
		    names, returning names where the callable function evaluates to True. An
		    example of a valid callable argument would be ``lambda x: x.upper() in
		    ['AAA', 'BBB', 'DDD']``. Using this parameter results in much faster
		    parsing time and lower memory usage.
		as_recarray : boolean, default False
		    DEPRECATED: this argument will be removed in a future version. Please call
		    `pd.read_csv(...).to_records()` instead.
		
		    Return a NumPy recarray instead of a DataFrame after parsing the data.
		    If set to True, this option takes precedence over the `squeeze` parameter.
		    In addition, as row indices are not available in such a format, the
		    `index_col` parameter will be ignored.
		squeeze : boolean, default False
		    If the parsed data only contains one column then return a Series
		prefix : str, default None
		    Prefix to add to column numbers when no header, e.g. 'X' for X0, X1, ...
		mangle_dupe_cols : boolean, default True
		    Duplicate columns will be specified as 'X.0'...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		dtype : Type name or dict of column -> type, default None
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32}
		    Use `str` or `object` to preserve and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		engine : {'c', 'python'}, optional
		    Parser engine to use. The C engine is faster while the python engine is
		    currently more feature-complete.
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can either
		    be integers or column labels
		true_values : list, default None
		    Values to consider as True
		false_values : list, default None
		    Values to consider as False
		skipinitialspace : boolean, default False
		    Skip spaces after delimiter.
		skiprows : list-like or integer or callable, default None
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file.
		
		    If callable, the callable function will be evaluated against the row
		    indices, returning True if the row should be skipped and False otherwise.
		    An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c')
		skip_footer : int, default 0
		    DEPRECATED: use the `skipfooter` parameter instead, as they are identical
		nrows : int, default None
		    Number of rows of file to read. Useful for reading pieces of large files
		na_values : scalar, str, list-like, or dict, default None
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values.  By default the following values are interpreted as
		    NaN: '', '#N/A', '#N/A N/A', '#NA', '-1.#IND', '-1.#QNAN', '-NaN', '-nan',
		    '1.#IND', '1.#QNAN', 'N/A', 'NA', 'NULL', 'NaN', 'nan'`.
		keep_default_na : bool, default True
		    If na_values are specified and keep_default_na is False the default NaN
		    values are overridden, otherwise they're appended to.
		na_filter : boolean, default True
		    Detect missing value markers (empty strings and the value of na_values). In
		    data without any NAs, passing na_filter=False can improve the performance
		    of reading a large file
		verbose : boolean, default False
		    Indicate number of NA values placed in non-numeric columns
		skip_blank_lines : boolean, default True
		    If True, skip over blank lines rather than interpreting as NaN values
		parse_dates : boolean or list of ints or names or list of lists or dict, default False
		
		    * boolean. If True -> try parsing the index.
		    * list of ints or names. e.g. If [1, 2, 3] -> try parsing columns 1, 2, 3
		      each as a separate date column.
		    * list of lists. e.g.  If [[1, 3]] -> combine columns 1 and 3 and parse as
		      a single date column.
		    * dict, e.g. {'foo' : [1, 3]} -> parse columns 1, 3 as date and call result
		      'foo'
		
		    If a column or index contains an unparseable date, the entire column or
		    index will be returned unaltered as an object data type. For non-standard
		    datetime parsing, use ``pd.to_datetime`` after ``pd.read_csv``
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : boolean, default False
		    If True and parse_dates is enabled, pandas will attempt to infer the format
		    of the datetime strings in the columns, and if it can be inferred, switch
		    to a faster method of parsing them. In some cases this can increase the
		    parsing speed by 5-10x.
		keep_date_col : boolean, default False
		    If True and parse_dates specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, default None
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call date_parser in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by parse_dates) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by parse_dates into a single array
		    and pass that; and 3) call date_parser once for each row using one or more
		    strings (corresponding to the columns defined by parse_dates) as arguments.
		dayfirst : boolean, default False
		    DD/MM format dates, international and European format
		iterator : boolean, default False
		    Return TextFileReader object for iteration or getting chunks with
		    ``get_chunk()``.
		chunksize : int, default None
		    Return TextFileReader object for iteration.
		    See the `IO Tools docs
		    <http://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_
		    for more information on ``iterator`` and ``chunksize``.
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer', then use gzip,
		    bz2, zip or xz if filepath_or_buffer is a string ending in '.gz', '.bz2',
		    '.zip', or 'xz', respectively, and no decompression otherwise. If using
		    'zip', the ZIP file must contain only one data file to be read in.
		    Set to None for no decompression.
		
		    .. versionadded:: 0.18.1 support for 'zip' and 'xz' compression.
		
		thousands : str, default None
		    Thousands separator
		decimal : str, default '.'
		    Character to recognize as decimal point (e.g. use ',' for European data).
		float_precision : string, default None
		    Specifies which converter the C engine should use for floating-point
		    values. The options are `None` for the ordinary converter,
		    `high` for the high-precision converter, and `round_trip` for the
		    round-trip converter.
		lineterminator : str (length 1), default None
		    Character to break file into lines. Only valid with C parser.
		quotechar : str (length 1), optional
		    The character used to denote the start and end of a quoted item. Quoted
		    items can include the delimiter and it will be ignored.
		quoting : int or csv.QUOTE_* instance, default 0
		    Control field quoting behavior per ``csv.QUOTE_*`` constants. Use one of
		    QUOTE_MINIMAL (0), QUOTE_ALL (1), QUOTE_NONNUMERIC (2) or QUOTE_NONE (3).
		doublequote : boolean, default ``True``
		   When quotechar is specified and quoting is not ``QUOTE_NONE``, indicate
		   whether or not to interpret two consecutive quotechar elements INSIDE a
		   field as a single ``quotechar`` element.
		escapechar : str (length 1), default None
		    One-character string used to escape delimiter when quoting is QUOTE_NONE.
		comment : str, default None
		    Indicates remainder of line should not be parsed. If found at the beginning
		    of a line, the line will be ignored altogether. This parameter must be a
		    single character. Like empty lines (as long as ``skip_blank_lines=True``),
		    fully commented lines are ignored by the parameter `header` but not by
		    `skiprows`. For example, if comment='#', parsing '#empty\na,b,c\n1,2,3'
		    with `header=0` will result in 'a,b,c' being
		    treated as the header.
		encoding : str, default None
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_
		dialect : str or csv.Dialect instance, default None
		    If provided, this parameter will override values (default or not) for the
		    following parameters: `delimiter`, `doublequote`, `escapechar`,
		    `skipinitialspace`, `quotechar`, and `quoting`. If it is necessary to
		    override values, a ParserWarning will be issued. See csv.Dialect
		    documentation for more details.
		tupleize_cols : boolean, default False
		    Leave a list of tuples on columns as is (default is to convert to
		    a Multi Index on the columns)
		error_bad_lines : boolean, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned.
		warn_bad_lines : boolean, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output.
		low_memory : boolean, default True
		    Internally process the file in chunks, resulting in lower memory use
		    while parsing, but possibly mixed type inference.  To ensure no mixed
		    types either set False, or specify the type with the `dtype` parameter.
		    Note that the entire file is read into a single DataFrame regardless,
		    use the `chunksize` or `iterator` parameter to return the data in chunks.
		    (Only valid with C parser)
		buffer_lines : int, default None
		    DEPRECATED: this argument will be removed in a future version because its
		    value is not respected by the parser
		compact_ints : boolean, default False
		    DEPRECATED: this argument will be removed in a future version
		
		    If compact_ints is True, then for any column that is of integer dtype,
		    the parser will attempt to cast it as the smallest integer dtype possible,
		    either signed or unsigned depending on the specification from the
		    `use_unsigned` parameter.
		use_unsigned : boolean, default False
		    DEPRECATED: this argument will be removed in a future version
		
		    If integer columns are being compacted (i.e. `compact_ints=True`), specify
		    whether the column should be compacted to the smallest signed or unsigned
		    integer dtype.
		memory_map : boolean, default False
		    If a filepath is provided for `filepath_or_buffer`, map the file object
		    directly onto memory and access the data directly from there. Using this
		    option can improve performance because there is no longer any I/O overhead.
		
		Returns
		-------
		result : DataFrame or TextParser
	**/
	static public function read_csv(filepath_or_buffer:Dynamic, ?sep:Dynamic, ?delimiter:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?prefix:Dynamic, ?mangle_dupe_cols:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skipinitialspace:Dynamic, ?skiprows:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?na_filter:Dynamic, ?verbose:Dynamic, ?skip_blank_lines:Dynamic, ?parse_dates:Dynamic, ?infer_datetime_format:Dynamic, ?keep_date_col:Dynamic, ?date_parser:Dynamic, ?dayfirst:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?thousands:Dynamic, ?decimal:Dynamic, ?lineterminator:Dynamic, ?quotechar:Dynamic, ?quoting:Dynamic, ?escapechar:Dynamic, ?comment:Dynamic, ?encoding:Dynamic, ?dialect:Dynamic, ?tupleize_cols:Dynamic, ?error_bad_lines:Dynamic, ?warn_bad_lines:Dynamic, ?skipfooter:Dynamic, ?skip_footer:Dynamic, ?doublequote:Dynamic, ?delim_whitespace:Dynamic, ?as_recarray:Dynamic, ?compact_ints:Dynamic, ?use_unsigned:Dynamic, ?low_memory:Dynamic, ?buffer_lines:Dynamic, ?memory_map:Dynamic, ?float_precision:Dynamic):Dynamic;
	/**
		Read a table of fixed-width formatted lines into DataFrame
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the `online docs for IO Tools
		<http://pandas.pydata.org/pandas-docs/stable/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, pathlib.Path, py._path.local.LocalPath or any object with a read() method (such as a file handle or StringIO)
		    The string could be a URL. Valid URL schemes include http, ftp, s3, and
		    file. For file URLs, a host is expected. For instance, a local file could
		    be file ://localhost/path/to/table.csv
		colspecs : list of pairs (int, int) or 'infer'. optional
		    A list of pairs (tuples) giving the extents of the fixed-width
		    fields of each line as half-open intervals (i.e.,  [from, to[ ).
		    String value 'infer' can be used to instruct the parser to try
		    detecting the column specifications from the first 100 rows of
		    the data which are not being skipped via skiprows (default='infer').
		widths : list of ints. optional
		    A list of field widths which can be used instead of 'colspecs' if
		    the intervals are contiguous.
		
		delimiter : str, default ``None``
		    Alternative argument name for sep.
		delim_whitespace : boolean, default False
		    Specifies whether or not whitespace (e.g. ``' '`` or ``'    '``) will be
		    used as the sep. Equivalent to setting ``sep='\s+'``. If this option
		    is set to True, nothing should be passed in for the ``delimiter``
		    parameter.
		
		    .. versionadded:: 0.18.1 support for the Python parser.
		
		header : int or list of ints, default 'infer'
		    Row number(s) to use as the column names, and the start of the data.
		    Default behavior is as if set to 0 if no ``names`` passed, otherwise
		    ``None``. Explicitly pass ``header=0`` to be able to replace existing
		    names. The header can be a list of integers that specify row locations for
		    a multi-index on the columns e.g. [0,1,3]. Intervening rows that are not
		    specified will be skipped (e.g. 2 in this example is skipped). Note that
		    this parameter ignores commented lines and empty lines if
		    ``skip_blank_lines=True``, so header=0 denotes the first line of data
		    rather than the first line of the file.
		names : array-like, default None
		    List of column names to use. If file contains no header row, then you
		    should explicitly pass header=None. Duplicates in this list are not
		    allowed unless mangle_dupe_cols=True, which is the default.
		index_col : int or sequence or False, default None
		    Column to use as the row labels of the DataFrame. If a sequence is given, a
		    MultiIndex is used. If you have a malformed file with delimiters at the end
		    of each line, you might consider index_col=False to force pandas to _not_
		    use the first column as the index (row names)
		usecols : array-like or callable, default None
		    Return a subset of the columns. If array-like, all elements must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid array-like
		    `usecols` parameter would be [0, 1, 2] or ['foo', 'bar', 'baz'].
		
		    If callable, the callable function will be evaluated against the column
		    names, returning names where the callable function evaluates to True. An
		    example of a valid callable argument would be ``lambda x: x.upper() in
		    ['AAA', 'BBB', 'DDD']``. Using this parameter results in much faster
		    parsing time and lower memory usage.
		as_recarray : boolean, default False
		    DEPRECATED: this argument will be removed in a future version. Please call
		    `pd.read_csv(...).to_records()` instead.
		
		    Return a NumPy recarray instead of a DataFrame after parsing the data.
		    If set to True, this option takes precedence over the `squeeze` parameter.
		    In addition, as row indices are not available in such a format, the
		    `index_col` parameter will be ignored.
		squeeze : boolean, default False
		    If the parsed data only contains one column then return a Series
		prefix : str, default None
		    Prefix to add to column numbers when no header, e.g. 'X' for X0, X1, ...
		mangle_dupe_cols : boolean, default True
		    Duplicate columns will be specified as 'X.0'...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		dtype : Type name or dict of column -> type, default None
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32}
		    Use `str` or `object` to preserve and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can either
		    be integers or column labels
		true_values : list, default None
		    Values to consider as True
		false_values : list, default None
		    Values to consider as False
		skipinitialspace : boolean, default False
		    Skip spaces after delimiter.
		skiprows : list-like or integer or callable, default None
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file.
		
		    If callable, the callable function will be evaluated against the row
		    indices, returning True if the row should be skipped and False otherwise.
		    An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c')
		skip_footer : int, default 0
		    DEPRECATED: use the `skipfooter` parameter instead, as they are identical
		nrows : int, default None
		    Number of rows of file to read. Useful for reading pieces of large files
		na_values : scalar, str, list-like, or dict, default None
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values.  By default the following values are interpreted as
		    NaN: '', '#N/A', '#N/A N/A', '#NA', '-1.#IND', '-1.#QNAN', '-NaN', '-nan',
		    '1.#IND', '1.#QNAN', 'N/A', 'NA', 'NULL', 'NaN', 'nan'`.
		keep_default_na : bool, default True
		    If na_values are specified and keep_default_na is False the default NaN
		    values are overridden, otherwise they're appended to.
		na_filter : boolean, default True
		    Detect missing value markers (empty strings and the value of na_values). In
		    data without any NAs, passing na_filter=False can improve the performance
		    of reading a large file
		verbose : boolean, default False
		    Indicate number of NA values placed in non-numeric columns
		skip_blank_lines : boolean, default True
		    If True, skip over blank lines rather than interpreting as NaN values
		parse_dates : boolean or list of ints or names or list of lists or dict, default False
		
		    * boolean. If True -> try parsing the index.
		    * list of ints or names. e.g. If [1, 2, 3] -> try parsing columns 1, 2, 3
		      each as a separate date column.
		    * list of lists. e.g.  If [[1, 3]] -> combine columns 1 and 3 and parse as
		      a single date column.
		    * dict, e.g. {'foo' : [1, 3]} -> parse columns 1, 3 as date and call result
		      'foo'
		
		    If a column or index contains an unparseable date, the entire column or
		    index will be returned unaltered as an object data type. For non-standard
		    datetime parsing, use ``pd.to_datetime`` after ``pd.read_csv``
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : boolean, default False
		    If True and parse_dates is enabled, pandas will attempt to infer the format
		    of the datetime strings in the columns, and if it can be inferred, switch
		    to a faster method of parsing them. In some cases this can increase the
		    parsing speed by 5-10x.
		keep_date_col : boolean, default False
		    If True and parse_dates specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, default None
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call date_parser in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by parse_dates) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by parse_dates into a single array
		    and pass that; and 3) call date_parser once for each row using one or more
		    strings (corresponding to the columns defined by parse_dates) as arguments.
		dayfirst : boolean, default False
		    DD/MM format dates, international and European format
		iterator : boolean, default False
		    Return TextFileReader object for iteration or getting chunks with
		    ``get_chunk()``.
		chunksize : int, default None
		    Return TextFileReader object for iteration.
		    See the `IO Tools docs
		    <http://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_
		    for more information on ``iterator`` and ``chunksize``.
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer', then use gzip,
		    bz2, zip or xz if filepath_or_buffer is a string ending in '.gz', '.bz2',
		    '.zip', or 'xz', respectively, and no decompression otherwise. If using
		    'zip', the ZIP file must contain only one data file to be read in.
		    Set to None for no decompression.
		
		    .. versionadded:: 0.18.1 support for 'zip' and 'xz' compression.
		
		thousands : str, default None
		    Thousands separator
		decimal : str, default '.'
		    Character to recognize as decimal point (e.g. use ',' for European data).
		float_precision : string, default None
		    Specifies which converter the C engine should use for floating-point
		    values. The options are `None` for the ordinary converter,
		    `high` for the high-precision converter, and `round_trip` for the
		    round-trip converter.
		lineterminator : str (length 1), default None
		    Character to break file into lines. Only valid with C parser.
		quotechar : str (length 1), optional
		    The character used to denote the start and end of a quoted item. Quoted
		    items can include the delimiter and it will be ignored.
		quoting : int or csv.QUOTE_* instance, default 0
		    Control field quoting behavior per ``csv.QUOTE_*`` constants. Use one of
		    QUOTE_MINIMAL (0), QUOTE_ALL (1), QUOTE_NONNUMERIC (2) or QUOTE_NONE (3).
		doublequote : boolean, default ``True``
		   When quotechar is specified and quoting is not ``QUOTE_NONE``, indicate
		   whether or not to interpret two consecutive quotechar elements INSIDE a
		   field as a single ``quotechar`` element.
		escapechar : str (length 1), default None
		    One-character string used to escape delimiter when quoting is QUOTE_NONE.
		comment : str, default None
		    Indicates remainder of line should not be parsed. If found at the beginning
		    of a line, the line will be ignored altogether. This parameter must be a
		    single character. Like empty lines (as long as ``skip_blank_lines=True``),
		    fully commented lines are ignored by the parameter `header` but not by
		    `skiprows`. For example, if comment='#', parsing '#empty\na,b,c\n1,2,3'
		    with `header=0` will result in 'a,b,c' being
		    treated as the header.
		encoding : str, default None
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_
		dialect : str or csv.Dialect instance, default None
		    If provided, this parameter will override values (default or not) for the
		    following parameters: `delimiter`, `doublequote`, `escapechar`,
		    `skipinitialspace`, `quotechar`, and `quoting`. If it is necessary to
		    override values, a ParserWarning will be issued. See csv.Dialect
		    documentation for more details.
		tupleize_cols : boolean, default False
		    Leave a list of tuples on columns as is (default is to convert to
		    a Multi Index on the columns)
		error_bad_lines : boolean, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned.
		warn_bad_lines : boolean, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output.
		low_memory : boolean, default True
		    Internally process the file in chunks, resulting in lower memory use
		    while parsing, but possibly mixed type inference.  To ensure no mixed
		    types either set False, or specify the type with the `dtype` parameter.
		    Note that the entire file is read into a single DataFrame regardless,
		    use the `chunksize` or `iterator` parameter to return the data in chunks.
		    (Only valid with C parser)
		buffer_lines : int, default None
		    DEPRECATED: this argument will be removed in a future version because its
		    value is not respected by the parser
		compact_ints : boolean, default False
		    DEPRECATED: this argument will be removed in a future version
		
		    If compact_ints is True, then for any column that is of integer dtype,
		    the parser will attempt to cast it as the smallest integer dtype possible,
		    either signed or unsigned depending on the specification from the
		    `use_unsigned` parameter.
		use_unsigned : boolean, default False
		    DEPRECATED: this argument will be removed in a future version
		
		    If integer columns are being compacted (i.e. `compact_ints=True`), specify
		    whether the column should be compacted to the smallest signed or unsigned
		    integer dtype.
		memory_map : boolean, default False
		    If a filepath is provided for `filepath_or_buffer`, map the file object
		    directly onto memory and access the data directly from there. Using this
		    option can improve performance because there is no longer any I/O overhead.
		
		Returns
		-------
		result : DataFrame or TextParser
		
		
		Also, 'delimiter' is used to specify the filler character of the
		fields if it is not spaces (e.g., '~').
	**/
	static public function read_fwf(filepath_or_buffer:Dynamic, ?colspecs:Dynamic, ?widths:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Read general delimited file into DataFrame
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the `online docs for IO Tools
		<http://pandas.pydata.org/pandas-docs/stable/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, pathlib.Path, py._path.local.LocalPath or any object with a read() method (such as a file handle or StringIO)
		    The string could be a URL. Valid URL schemes include http, ftp, s3, and
		    file. For file URLs, a host is expected. For instance, a local file could
		    be file ://localhost/path/to/table.csv
		sep : str, default \t (tab-stop)
		    Delimiter to use. If sep is None, the C engine cannot automatically detect
		    the separator, but the Python parsing engine can, meaning the latter will
		    be used automatically. In addition, separators longer than 1 character and
		    different from ``'\s+'`` will be interpreted as regular expressions and
		    will also force the use of the Python parsing engine. Note that regex
		    delimiters are prone to ignoring quoted data. Regex example: ``'\r\t'``
		delimiter : str, default ``None``
		    Alternative argument name for sep.
		delim_whitespace : boolean, default False
		    Specifies whether or not whitespace (e.g. ``' '`` or ``'    '``) will be
		    used as the sep. Equivalent to setting ``sep='\s+'``. If this option
		    is set to True, nothing should be passed in for the ``delimiter``
		    parameter.
		
		    .. versionadded:: 0.18.1 support for the Python parser.
		
		header : int or list of ints, default 'infer'
		    Row number(s) to use as the column names, and the start of the data.
		    Default behavior is as if set to 0 if no ``names`` passed, otherwise
		    ``None``. Explicitly pass ``header=0`` to be able to replace existing
		    names. The header can be a list of integers that specify row locations for
		    a multi-index on the columns e.g. [0,1,3]. Intervening rows that are not
		    specified will be skipped (e.g. 2 in this example is skipped). Note that
		    this parameter ignores commented lines and empty lines if
		    ``skip_blank_lines=True``, so header=0 denotes the first line of data
		    rather than the first line of the file.
		names : array-like, default None
		    List of column names to use. If file contains no header row, then you
		    should explicitly pass header=None. Duplicates in this list are not
		    allowed unless mangle_dupe_cols=True, which is the default.
		index_col : int or sequence or False, default None
		    Column to use as the row labels of the DataFrame. If a sequence is given, a
		    MultiIndex is used. If you have a malformed file with delimiters at the end
		    of each line, you might consider index_col=False to force pandas to _not_
		    use the first column as the index (row names)
		usecols : array-like or callable, default None
		    Return a subset of the columns. If array-like, all elements must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid array-like
		    `usecols` parameter would be [0, 1, 2] or ['foo', 'bar', 'baz'].
		
		    If callable, the callable function will be evaluated against the column
		    names, returning names where the callable function evaluates to True. An
		    example of a valid callable argument would be ``lambda x: x.upper() in
		    ['AAA', 'BBB', 'DDD']``. Using this parameter results in much faster
		    parsing time and lower memory usage.
		as_recarray : boolean, default False
		    DEPRECATED: this argument will be removed in a future version. Please call
		    `pd.read_csv(...).to_records()` instead.
		
		    Return a NumPy recarray instead of a DataFrame after parsing the data.
		    If set to True, this option takes precedence over the `squeeze` parameter.
		    In addition, as row indices are not available in such a format, the
		    `index_col` parameter will be ignored.
		squeeze : boolean, default False
		    If the parsed data only contains one column then return a Series
		prefix : str, default None
		    Prefix to add to column numbers when no header, e.g. 'X' for X0, X1, ...
		mangle_dupe_cols : boolean, default True
		    Duplicate columns will be specified as 'X.0'...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		dtype : Type name or dict of column -> type, default None
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32}
		    Use `str` or `object` to preserve and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		engine : {'c', 'python'}, optional
		    Parser engine to use. The C engine is faster while the python engine is
		    currently more feature-complete.
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can either
		    be integers or column labels
		true_values : list, default None
		    Values to consider as True
		false_values : list, default None
		    Values to consider as False
		skipinitialspace : boolean, default False
		    Skip spaces after delimiter.
		skiprows : list-like or integer or callable, default None
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file.
		
		    If callable, the callable function will be evaluated against the row
		    indices, returning True if the row should be skipped and False otherwise.
		    An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c')
		skip_footer : int, default 0
		    DEPRECATED: use the `skipfooter` parameter instead, as they are identical
		nrows : int, default None
		    Number of rows of file to read. Useful for reading pieces of large files
		na_values : scalar, str, list-like, or dict, default None
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values.  By default the following values are interpreted as
		    NaN: '', '#N/A', '#N/A N/A', '#NA', '-1.#IND', '-1.#QNAN', '-NaN', '-nan',
		    '1.#IND', '1.#QNAN', 'N/A', 'NA', 'NULL', 'NaN', 'nan'`.
		keep_default_na : bool, default True
		    If na_values are specified and keep_default_na is False the default NaN
		    values are overridden, otherwise they're appended to.
		na_filter : boolean, default True
		    Detect missing value markers (empty strings and the value of na_values). In
		    data without any NAs, passing na_filter=False can improve the performance
		    of reading a large file
		verbose : boolean, default False
		    Indicate number of NA values placed in non-numeric columns
		skip_blank_lines : boolean, default True
		    If True, skip over blank lines rather than interpreting as NaN values
		parse_dates : boolean or list of ints or names or list of lists or dict, default False
		
		    * boolean. If True -> try parsing the index.
		    * list of ints or names. e.g. If [1, 2, 3] -> try parsing columns 1, 2, 3
		      each as a separate date column.
		    * list of lists. e.g.  If [[1, 3]] -> combine columns 1 and 3 and parse as
		      a single date column.
		    * dict, e.g. {'foo' : [1, 3]} -> parse columns 1, 3 as date and call result
		      'foo'
		
		    If a column or index contains an unparseable date, the entire column or
		    index will be returned unaltered as an object data type. For non-standard
		    datetime parsing, use ``pd.to_datetime`` after ``pd.read_csv``
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : boolean, default False
		    If True and parse_dates is enabled, pandas will attempt to infer the format
		    of the datetime strings in the columns, and if it can be inferred, switch
		    to a faster method of parsing them. In some cases this can increase the
		    parsing speed by 5-10x.
		keep_date_col : boolean, default False
		    If True and parse_dates specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, default None
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call date_parser in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by parse_dates) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by parse_dates into a single array
		    and pass that; and 3) call date_parser once for each row using one or more
		    strings (corresponding to the columns defined by parse_dates) as arguments.
		dayfirst : boolean, default False
		    DD/MM format dates, international and European format
		iterator : boolean, default False
		    Return TextFileReader object for iteration or getting chunks with
		    ``get_chunk()``.
		chunksize : int, default None
		    Return TextFileReader object for iteration.
		    See the `IO Tools docs
		    <http://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_
		    for more information on ``iterator`` and ``chunksize``.
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer', then use gzip,
		    bz2, zip or xz if filepath_or_buffer is a string ending in '.gz', '.bz2',
		    '.zip', or 'xz', respectively, and no decompression otherwise. If using
		    'zip', the ZIP file must contain only one data file to be read in.
		    Set to None for no decompression.
		
		    .. versionadded:: 0.18.1 support for 'zip' and 'xz' compression.
		
		thousands : str, default None
		    Thousands separator
		decimal : str, default '.'
		    Character to recognize as decimal point (e.g. use ',' for European data).
		float_precision : string, default None
		    Specifies which converter the C engine should use for floating-point
		    values. The options are `None` for the ordinary converter,
		    `high` for the high-precision converter, and `round_trip` for the
		    round-trip converter.
		lineterminator : str (length 1), default None
		    Character to break file into lines. Only valid with C parser.
		quotechar : str (length 1), optional
		    The character used to denote the start and end of a quoted item. Quoted
		    items can include the delimiter and it will be ignored.
		quoting : int or csv.QUOTE_* instance, default 0
		    Control field quoting behavior per ``csv.QUOTE_*`` constants. Use one of
		    QUOTE_MINIMAL (0), QUOTE_ALL (1), QUOTE_NONNUMERIC (2) or QUOTE_NONE (3).
		doublequote : boolean, default ``True``
		   When quotechar is specified and quoting is not ``QUOTE_NONE``, indicate
		   whether or not to interpret two consecutive quotechar elements INSIDE a
		   field as a single ``quotechar`` element.
		escapechar : str (length 1), default None
		    One-character string used to escape delimiter when quoting is QUOTE_NONE.
		comment : str, default None
		    Indicates remainder of line should not be parsed. If found at the beginning
		    of a line, the line will be ignored altogether. This parameter must be a
		    single character. Like empty lines (as long as ``skip_blank_lines=True``),
		    fully commented lines are ignored by the parameter `header` but not by
		    `skiprows`. For example, if comment='#', parsing '#empty\na,b,c\n1,2,3'
		    with `header=0` will result in 'a,b,c' being
		    treated as the header.
		encoding : str, default None
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_
		dialect : str or csv.Dialect instance, default None
		    If provided, this parameter will override values (default or not) for the
		    following parameters: `delimiter`, `doublequote`, `escapechar`,
		    `skipinitialspace`, `quotechar`, and `quoting`. If it is necessary to
		    override values, a ParserWarning will be issued. See csv.Dialect
		    documentation for more details.
		tupleize_cols : boolean, default False
		    Leave a list of tuples on columns as is (default is to convert to
		    a Multi Index on the columns)
		error_bad_lines : boolean, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned.
		warn_bad_lines : boolean, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output.
		low_memory : boolean, default True
		    Internally process the file in chunks, resulting in lower memory use
		    while parsing, but possibly mixed type inference.  To ensure no mixed
		    types either set False, or specify the type with the `dtype` parameter.
		    Note that the entire file is read into a single DataFrame regardless,
		    use the `chunksize` or `iterator` parameter to return the data in chunks.
		    (Only valid with C parser)
		buffer_lines : int, default None
		    DEPRECATED: this argument will be removed in a future version because its
		    value is not respected by the parser
		compact_ints : boolean, default False
		    DEPRECATED: this argument will be removed in a future version
		
		    If compact_ints is True, then for any column that is of integer dtype,
		    the parser will attempt to cast it as the smallest integer dtype possible,
		    either signed or unsigned depending on the specification from the
		    `use_unsigned` parameter.
		use_unsigned : boolean, default False
		    DEPRECATED: this argument will be removed in a future version
		
		    If integer columns are being compacted (i.e. `compact_ints=True`), specify
		    whether the column should be compacted to the smallest signed or unsigned
		    integer dtype.
		memory_map : boolean, default False
		    If a filepath is provided for `filepath_or_buffer`, map the file object
		    directly onto memory and access the data directly from there. Using this
		    option can improve performance because there is no longer any I/O overhead.
		
		Returns
		-------
		result : DataFrame or TextParser
	**/
	static public function read_table(filepath_or_buffer:Dynamic, ?sep:Dynamic, ?delimiter:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?prefix:Dynamic, ?mangle_dupe_cols:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skipinitialspace:Dynamic, ?skiprows:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?na_filter:Dynamic, ?verbose:Dynamic, ?skip_blank_lines:Dynamic, ?parse_dates:Dynamic, ?infer_datetime_format:Dynamic, ?keep_date_col:Dynamic, ?date_parser:Dynamic, ?dayfirst:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?thousands:Dynamic, ?decimal:Dynamic, ?lineterminator:Dynamic, ?quotechar:Dynamic, ?quoting:Dynamic, ?escapechar:Dynamic, ?comment:Dynamic, ?encoding:Dynamic, ?dialect:Dynamic, ?tupleize_cols:Dynamic, ?error_bad_lines:Dynamic, ?warn_bad_lines:Dynamic, ?skipfooter:Dynamic, ?skip_footer:Dynamic, ?doublequote:Dynamic, ?delim_whitespace:Dynamic, ?as_recarray:Dynamic, ?compact_ints:Dynamic, ?use_unsigned:Dynamic, ?low_memory:Dynamic, ?buffer_lines:Dynamic, ?memory_map:Dynamic, ?float_precision:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	static public function u(s:Dynamic):Dynamic;
}