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
		dialect : str or csv.Dialect instance, optional
		    Ignored if delimiter is longer than 1 character
		names : sequence, default
		header : int, default 0
		    Row to use to parse column labels. Defaults to the first row. Prior
		    rows will be discarded
		index_col : int or list, optional
		    Column or columns to use as the (possibly hierarchical) index
		has_index_names: bool, default False
		    True if the cols defined in index_col have an index name and are
		    not in the header.
		na_values : scalar, str, list-like, or dict, optional
		    Additional strings to recognize as NA/NaN.
		keep_default_na : bool, default True
		thousands : str, optional
		    Thousands separator
		comment : str, optional
		    Comment out remainder of line
		parse_dates : bool, default False
		keep_date_col : bool, default False
		date_parser : function, optional
		skiprows : list of integers
		    Row numbers to skip
		skipfooter : int
		    Number of line at bottom of file to skip
		converters : dict, optional
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the cell (not column) content, and return the
		    transformed content.
		encoding : str, optional
		    Encoding to use for UTF when reading/writing (ex. 'utf-8')
		squeeze : bool, default False
		    returns Series if only one column.
		infer_datetime_format: bool, default False
		    If True and `parse_dates` is True for a column, try to infer the
		    datetime format based on the first datetime string. If the format
		    can be inferred, there often will be a large parsing speed-up.
		float_precision : str, optional
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
	static public function _clean_index_names(columns:Dynamic, index_col:Dynamic, unnamed_cols:Dynamic):Dynamic;
	static public function _clean_na_values(na_values:Dynamic, ?keep_default_na:Dynamic):Dynamic;
	static public function _concat_date_cols(date_cols:Dynamic):Dynamic;
	static public var _deprecated_args : Dynamic;
	static public var _deprecated_defaults : Dynamic;
	static public var _doc_read_csv_and_table : Dynamic;
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
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default None
		    If 'infer' and `filepath_or_buffer` is path-like, then detect
		    compression from the following extensions: '.gz', '.bz2', '.zip',
		    or '.xz' (otherwise no compression).
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
		    A list of file-like object that were opened in this function.
	**/
	static public function _get_handle(path_or_buf:Dynamic, mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?memory_map:Dynamic, ?is_text:Dynamic):Dynamic;
	/**
		Get the NaN values for a given column.
		
		Parameters
		----------
		col : str
		    The name of the column.
		na_values : array-like, dict
		    The object listing the NaN values as strings.
		na_fvalues : array-like, dict
		    The object listing the NaN values as floats.
		keep_default_na : bool
		    If `na_values` is a dict, and the column is not mapped in the
		    dictionary, whether to return the default NaN values or the empty set.
		
		Returns
		-------
		nan_tuple : A length-two tuple composed of
		
		    1) na_values : the string NaN values for that column.
		    2) na_fvalues : the float NaN values for that column.
	**/
	static public function _get_na_values(col:Dynamic, na_values:Dynamic, na_fvalues:Dynamic, keep_default_na:Dynamic):Dynamic;
	/**
		Get the compression method for filepath_or_buffer. If compression='infer',
		the inferred compression method is returned. Otherwise, the input
		compression method is returned unchanged, unless it's invalid, in which
		case an error is raised.
		
		Parameters
		----------
		filepath_or_buffer :
		    a path (str) or buffer
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}
		    If 'infer' and `filepath_or_buffer` is path-like, then detect
		    compression from the following extensions: '.gz', '.bz2', '.zip',
		    or '.xz' (otherwise no compression).
		
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
	/**
		Check whether or not the `columns` parameter
		could be converted into a MultiIndex.
		
		Parameters
		----------
		columns : array-like
		    Object which may or may not be convertible into a MultiIndex
		
		Returns
		-------
		boolean : Whether or not columns could become a MultiIndex
	**/
	static public function _is_potential_multi_index(columns:Dynamic):Dynamic;
	static public function _make_date_converter(?date_parser:Dynamic, ?dayfirst:Dynamic, ?infer_datetime_format:Dynamic):Dynamic;
	static public function _make_parser_function(name:Dynamic, ?default_sep:Dynamic):Dynamic;
	static public var _parser_defaults : Dynamic;
	static public function _process_date_conversion(data_dict:Dynamic, converter:Dynamic, parse_spec:Dynamic, index_col:Dynamic, index_names:Dynamic, columns:Dynamic, ?keep_date_col:Dynamic):Dynamic;
	static public var _python_unsupported : Dynamic;
	/**
		Generic reader of line files.
	**/
	static public function _read(filepath_or_buffer:Dynamic, kwds:Dynamic):Dynamic;
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
		Check if the `names` parameter contains duplicates.
		
		If duplicates are found, we issue a warning before returning.
		
		Parameters
		----------
		names : array-like or None
		    An array containing a list of the names used for the output DataFrame.
		
		Returns
		-------
		names : array-like or None
		    The original `names` parameter.
	**/
	static public function _validate_names(names:Dynamic):Dynamic;
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
	static public function _validate_usecols_arg(usecols:Dynamic):python.Tuple<Dynamic>;
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
	static public function _validate_usecols_names(usecols:Dynamic, names:Dynamic):Dynamic;
	/**
		Cast the elements of an array to a given dtype a nan-safe manner.
		
		Parameters
		----------
		arr : ndarray
		dtype : np.dtype
		copy : bool, default True
		    If False, a view will be attempted but may fail, if
		    e.g. the item sizes don't align.
		skipna: bool, default False
		    Whether or not we should skip NaN when casting as a string-type.
		
		Raises
		------
		ValueError
		    The dtype was a datetime64/timedelta64 dtype, but it had no unit.
	**/
	static public function astype_nansafe(arr:Dynamic, dtype:Dynamic, ?copy:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function count_empty_vals(vals:Dynamic):Dynamic;
	/**
		Construct an index from sequences of data.
		
		A single sequence returns an Index. Many sequences returns a
		MultiIndex.
		
		Parameters
		----------
		sequences : sequence of sequences
		names : sequence of str
		
		Returns
		-------
		index : Index or MultiIndex
		
		Examples
		--------
		>>> ensure_index_from_sequences([[1, 2, 3]], names=['name'])
		Int64Index([1, 2, 3], dtype='int64', name='name')
		
		>>> ensure_index_from_sequences([['a', 'a'], ['a', 'b']],
		                                names=['L1', 'L2'])
		MultiIndex(levels=[['a'], ['a', 'b']],
		           codes=[[0, 0], [0, 1]],
		           names=['L1', 'L2'])
		
		See Also
		--------
		ensure_index
	**/
	static public function ensure_index_from_sequences(sequences:Dynamic, ?names:Dynamic):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		mode : str, optional
		
		Returns
		-------
		tuple of ({a filepath_ or buffer or S3File instance},
		          encoding, str,
		          compression, str,
		          should_close, bool)
	**/
	static public function get_filepath_or_buffer(filepath_or_buffer:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a boolean dtype.
		
		Notes
		-----
		An ExtensionArray is considered boolean when the ``_is_boolean``
		attribute is set to True.
		
		Examples
		--------
		>>> is_bool_dtype(str)
		False
		>>> is_bool_dtype(int)
		False
		>>> is_bool_dtype(bool)
		True
		>>> is_bool_dtype(np.bool)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
		>>> is_bool_dtype(pd.Categorical([True, False]))
		True
		>>> is_bool_dtype(pd.SparseArray([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check if an object is a pandas extension array type.
		
		See the :ref:`Use Guide <extending.extension-types>` for more.
		
		Parameters
		----------
		arr_or_dtype : object
		    For array-like input, the ``.dtype`` attribute will
		    be extracted.
		
		Returns
		-------
		bool
		    Whether the `arr_or_dtype` is an extension array type.
		
		Notes
		-----
		This checks whether an object implements the pandas extension
		array interface. In pandas, this includes:
		
		* Categorical
		* Sparse
		* Interval
		* Period
		* DatetimeArray
		* TimedeltaArray
		
		Third-party libraries may implement arrays or types satisfying
		this interface as well.
		
		Examples
		--------
		>>> from pandas.api.types import is_extension_array_dtype
		>>> arr = pd.Categorical(['a', 'b'])
		>>> is_extension_array_dtype(arr)
		True
		>>> is_extension_array_dtype(arr.dtype)
		True
		
		>>> arr = np.array(['a', 'b'])
		>>> is_extension_array_dtype(arr.dtype)
		False
	**/
	static public function is_extension_array_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		obj : The object to check
		
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
		
		.. versionchanged:: 0.24.0
		
		   The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		   as integer by this function.
		
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
		>>> is_integer_dtype('int8')
		True
		>>> is_integer_dtype('Int8')
		True
		>>> is_integer_dtype(pd.Int8Dtype)
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
		obj : The object to check
		allow_sets : boolean, default True
		    If this parameter is False, sets will not be considered list-like
		
		    .. versionadded:: 0.24.0
		
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
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2)))
		False
	**/
	static public function is_list_like(obj:Dynamic, ?allow_sets:Dynamic):Bool;
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
		
		Parameters
		----------
		val : object
		    This includes:
		
		    - numpy array scalar (e.g. np.int64)
		    - Python builtin numerics
		    - Python builtin byte arrays and strings
		    - None
		    - datetime.datetime
		    - datetime.timedelta
		    - Period
		    - decimal.Decimal
		    - Interval
		    - DateOffset
		    - Fraction
		    - Number
		
		Returns
		-------
		bool
		    Return True if given object is scalar, False otherwise
		
		Examples
		--------
		>>> dt = pd.datetime.datetime(2018, 10, 3)
		>>> pd.is_scalar(dt)
		True
		
		>>> pd.api.types.is_scalar([2, 3])
		False
		
		>>> pd.api.types.is_scalar({0: 1, 2: 3})
		False
		
		>>> pd.api.types.is_scalar((0, 2))
		False
		
		pandas supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> pd.api.types.is_scalar(Fraction(3, 5))
		True
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
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lzip(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Converts input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Raises
		------
		TypeError if not a dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Read a comma-separated values (csv) file into DataFrame.
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the online docs for
		`IO Tools <http://pandas.pydata.org/pandas-docs/stable/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, path object, or file-like object
		    Any valid string path is acceptable. The string could be a URL. Valid
		    URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be: file://localhost/path/to/table.csv.
		
		    If you want to pass in a path object, pandas accepts either
		    ``pathlib.Path`` or ``py._path.local.LocalPath``.
		
		    By file-like object, we refer to objects with a ``read()`` method, such as
		    a file handler (e.g. via builtin ``open`` function) or ``StringIO``.
		sep : str, default ','
		    Delimiter to use. If sep is None, the C engine cannot automatically detect
		    the separator, but the Python parsing engine can, meaning the latter will
		    be used and automatically detect the separator by Python's builtin sniffer
		    tool, ``csv.Sniffer``. In addition, separators longer than 1 character and
		    different from ``'\s+'`` will be interpreted as regular expressions and
		    will also force the use of the Python parsing engine. Note that regex
		    delimiters are prone to ignoring quoted data. Regex example: ``'\r\t'``.
		delimiter : str, default ``None``
		    Alias for sep.
		header : int, list of int, default 'infer'
		    Row number(s) to use as the column names, and the start of the
		    data.  Default behavior is to infer the column names: if no names
		    are passed the behavior is identical to ``header=0`` and column
		    names are inferred from the first line of the file, if column
		    names are passed explicitly then the behavior is identical to
		    ``header=None``. Explicitly pass ``header=0`` to be able to
		    replace existing names. The header can be a list of integers that
		    specify row locations for a multi-index on the columns
		    e.g. [0,1,3]. Intervening rows that are not specified will be
		    skipped (e.g. 2 in this example is skipped). Note that this
		    parameter ignores commented lines and empty lines if
		    ``skip_blank_lines=True``, so ``header=0`` denotes the first line of
		    data rather than the first line of the file.
		names : array-like, optional
		    List of column names to use. If file contains no header row, then you
		    should explicitly pass ``header=None``. Duplicates in this list will cause
		    a ``UserWarning`` to be issued.
		index_col : int, sequence or bool, optional
		    Column to use as the row labels of the DataFrame. If a sequence is given, a
		    MultiIndex is used. If you have a malformed file with delimiters at the end
		    of each line, you might consider ``index_col=False`` to force pandas to
		    not use the first column as the index (row names).
		usecols : list-like or callable, optional
		    Return a subset of the columns. If list-like, all elements must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid list-like
		    `usecols` parameter would be ``[0, 1, 2]`` or ``['foo', 'bar', 'baz']``.
		    Element order is ignored, so ``usecols=[0, 1]`` is the same as ``[1, 0]``.
		    To instantiate a DataFrame from ``data`` with element order preserved use
		    ``pd.read_csv(data, usecols=['foo', 'bar'])[['foo', 'bar']]`` for columns
		    in ``['foo', 'bar']`` order or
		    ``pd.read_csv(data, usecols=['foo', 'bar'])[['bar', 'foo']]``
		    for ``['bar', 'foo']`` order.
		
		    If callable, the callable function will be evaluated against the column
		    names, returning names where the callable function evaluates to True. An
		    example of a valid callable argument would be ``lambda x: x.upper() in
		    ['AAA', 'BBB', 'DDD']``. Using this parameter results in much faster
		    parsing time and lower memory usage.
		squeeze : bool, default False
		    If the parsed data only contains one column then return a Series.
		prefix : str, optional
		    Prefix to add to column numbers when no header, e.g. 'X' for X0, X1, ...
		mangle_dupe_cols : bool, default True
		    Duplicate columns will be specified as 'X', 'X.1', ...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		dtype : Type name or dict of column -> type, optional
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32,
		    'c': 'Int64'}
		    Use `str` or `object` together with suitable `na_values` settings
		    to preserve and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		engine : {'c', 'python'}, optional
		    Parser engine to use. The C engine is faster while the python engine is
		    currently more feature-complete.
		converters : dict, optional
		    Dict of functions for converting values in certain columns. Keys can either
		    be integers or column labels.
		true_values : list, optional
		    Values to consider as True.
		false_values : list, optional
		    Values to consider as False.
		skipinitialspace : bool, default False
		    Skip spaces after delimiter.
		skiprows : list-like, int or callable, optional
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file.
		
		    If callable, the callable function will be evaluated against the row
		    indices, returning True if the row should be skipped and False otherwise.
		    An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c').
		nrows : int, optional
		    Number of rows of file to read. Useful for reading pieces of large files.
		na_values : scalar, str, list-like, or dict, optional
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values.  By default the following values are interpreted as
		    NaN: '', '#N/A', '#N/A N/A', '#NA', '-1.#IND', '-1.#QNAN', '-NaN', '-nan',
		    '1.#IND', '1.#QNAN', 'N/A', 'NA', 'NULL', 'NaN', 'n/a', 'nan',
		    'null'.
		keep_default_na : bool, default True
		    Whether or not to include the default NaN values when parsing the data.
		    Depending on whether `na_values` is passed in, the behavior is as follows:
		
		    * If `keep_default_na` is True, and `na_values` are specified, `na_values`
		      is appended to the default NaN values used for parsing.
		    * If `keep_default_na` is True, and `na_values` are not specified, only
		      the default NaN values are used for parsing.
		    * If `keep_default_na` is False, and `na_values` are specified, only
		      the NaN values specified `na_values` are used for parsing.
		    * If `keep_default_na` is False, and `na_values` are not specified, no
		      strings will be parsed as NaN.
		
		    Note that if `na_filter` is passed in as False, the `keep_default_na` and
		    `na_values` parameters will be ignored.
		na_filter : bool, default True
		    Detect missing value markers (empty strings and the value of na_values). In
		    data without any NAs, passing na_filter=False can improve the performance
		    of reading a large file.
		verbose : bool, default False
		    Indicate number of NA values placed in non-numeric columns.
		skip_blank_lines : bool, default True
		    If True, skip over blank lines rather than interpreting as NaN values.
		parse_dates : bool or list of int or names or list of lists or dict, default False
		    The behavior is as follows:
		
		    * boolean. If True -> try parsing the index.
		    * list of int or names. e.g. If [1, 2, 3] -> try parsing columns 1, 2, 3
		      each as a separate date column.
		    * list of lists. e.g.  If [[1, 3]] -> combine columns 1 and 3 and parse as
		      a single date column.
		    * dict, e.g. {'foo' : [1, 3]} -> parse columns 1, 3 as date and call
		      result 'foo'
		
		    If a column or index cannot be represented as an array of datetimes,
		    say because of an unparseable value or a mixture of timezones, the column
		    or index will be returned unaltered as an object data type. For
		    non-standard datetime parsing, use ``pd.to_datetime`` after
		    ``pd.read_csv``. To parse an index or column with a mixture of timezones,
		    specify ``date_parser`` to be a partially-applied
		    :func:`pandas.to_datetime` with ``utc=True``. See
		    :ref:`io.csv.mixed_timezones` for more.
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : bool, default False
		    If True and `parse_dates` is enabled, pandas will attempt to infer the
		    format of the datetime strings in the columns, and if it can be inferred,
		    switch to a faster method of parsing them. In some cases this can increase
		    the parsing speed by 5-10x.
		keep_date_col : bool, default False
		    If True and `parse_dates` specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, optional
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call `date_parser` in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by `parse_dates`) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by `parse_dates` into a single array
		    and pass that; and 3) call `date_parser` once for each row using one or
		    more strings (corresponding to the columns defined by `parse_dates`) as
		    arguments.
		dayfirst : bool, default False
		    DD/MM format dates, international and European format.
		iterator : bool, default False
		    Return TextFileReader object for iteration or getting chunks with
		    ``get_chunk()``.
		chunksize : int, optional
		    Return TextFileReader object for iteration.
		    See the `IO Tools docs
		    <http://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_
		    for more information on ``iterator`` and ``chunksize``.
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer' and
		    `filepath_or_buffer` is path-like, then detect compression from the
		    following extensions: '.gz', '.bz2', '.zip', or '.xz' (otherwise no
		    decompression). If using 'zip', the ZIP file must contain only one data
		    file to be read in. Set to None for no decompression.
		
		    .. versionadded:: 0.18.1 support for 'zip' and 'xz' compression.
		
		thousands : str, optional
		    Thousands separator.
		decimal : str, default '.'
		    Character to recognize as decimal point (e.g. use ',' for European data).
		lineterminator : str (length 1), optional
		    Character to break file into lines. Only valid with C parser.
		quotechar : str (length 1), optional
		    The character used to denote the start and end of a quoted item. Quoted
		    items can include the delimiter and it will be ignored.
		quoting : int or csv.QUOTE_* instance, default 0
		    Control field quoting behavior per ``csv.QUOTE_*`` constants. Use one of
		    QUOTE_MINIMAL (0), QUOTE_ALL (1), QUOTE_NONNUMERIC (2) or QUOTE_NONE (3).
		doublequote : bool, default ``True``
		   When quotechar is specified and quoting is not ``QUOTE_NONE``, indicate
		   whether or not to interpret two consecutive quotechar elements INSIDE a
		   field as a single ``quotechar`` element.
		escapechar : str (length 1), optional
		    One-character string used to escape other characters.
		comment : str, optional
		    Indicates remainder of line should not be parsed. If found at the beginning
		    of a line, the line will be ignored altogether. This parameter must be a
		    single character. Like empty lines (as long as ``skip_blank_lines=True``),
		    fully commented lines are ignored by the parameter `header` but not by
		    `skiprows`. For example, if ``comment='#'``, parsing
		    ``#empty\na,b,c\n1,2,3`` with ``header=0`` will result in 'a,b,c' being
		    treated as the header.
		encoding : str, optional
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_ .
		dialect : str or csv.Dialect, optional
		    If provided, this parameter will override values (default or not) for the
		    following parameters: `delimiter`, `doublequote`, `escapechar`,
		    `skipinitialspace`, `quotechar`, and `quoting`. If it is necessary to
		    override values, a ParserWarning will be issued. See csv.Dialect
		    documentation for more details.
		tupleize_cols : bool, default False
		    Leave a list of tuples on columns as is (default is to convert to
		    a MultiIndex on the columns).
		
		    .. deprecated:: 0.21.0
		       This argument will be removed and will always convert to MultiIndex
		
		error_bad_lines : bool, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned.
		warn_bad_lines : bool, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output.
		delim_whitespace : bool, default False
		    Specifies whether or not whitespace (e.g. ``' '`` or ``'    '``) will be
		    used as the sep. Equivalent to setting ``sep='\s+'``. If this option
		    is set to True, nothing should be passed in for the ``delimiter``
		    parameter.
		
		    .. versionadded:: 0.18.1 support for the Python parser.
		
		low_memory : bool, default True
		    Internally process the file in chunks, resulting in lower memory use
		    while parsing, but possibly mixed type inference.  To ensure no mixed
		    types either set False, or specify the type with the `dtype` parameter.
		    Note that the entire file is read into a single DataFrame regardless,
		    use the `chunksize` or `iterator` parameter to return the data in chunks.
		    (Only valid with C parser).
		memory_map : bool, default False
		    If a filepath is provided for `filepath_or_buffer`, map the file object
		    directly onto memory and access the data directly from there. Using this
		    option can improve performance because there is no longer any I/O overhead.
		float_precision : str, optional
		    Specifies which converter the C engine should use for floating-point
		    values. The options are `None` for the ordinary converter,
		    `high` for the high-precision converter, and `round_trip` for the
		    round-trip converter.
		
		Returns
		-------
		DataFrame or TextParser
		    A comma-separated values (csv) file is returned as two-dimensional
		    data structure with labeled axes.
		
		See Also
		--------
		to_csv : Write DataFrame to a comma-separated values (csv) file.
		read_csv : Read a comma-separated values (csv) file into DataFrame.
		read_fwf : Read a table of fixed-width formatted lines into DataFrame.
		
		Examples
		--------
		>>> pd.read_csv('data.csv')  # doctest: +SKIP
	**/
	static public function read_csv(filepath_or_buffer:Dynamic, ?sep:Dynamic, ?delimiter:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?prefix:Dynamic, ?mangle_dupe_cols:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skipinitialspace:Dynamic, ?skiprows:Dynamic, ?skipfooter:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?na_filter:Dynamic, ?verbose:Dynamic, ?skip_blank_lines:Dynamic, ?parse_dates:Dynamic, ?infer_datetime_format:Dynamic, ?keep_date_col:Dynamic, ?date_parser:Dynamic, ?dayfirst:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?thousands:Dynamic, ?decimal:Dynamic, ?lineterminator:Dynamic, ?quotechar:Dynamic, ?quoting:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?comment:Dynamic, ?encoding:Dynamic, ?dialect:Dynamic, ?tupleize_cols:Dynamic, ?error_bad_lines:Dynamic, ?warn_bad_lines:Dynamic, ?delim_whitespace:Dynamic, ?low_memory:Dynamic, ?memory_map:Dynamic, ?float_precision:Dynamic):Dynamic;
	/**
		Read a table of fixed-width formatted lines into DataFrame.
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the `online docs for IO Tools
		<http://pandas.pydata.org/pandas-docs/stable/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, path object, or file-like object
		    Any valid string path is acceptable. The string could be a URL. Valid
		    URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be: file://localhost/path/to/table.csv.
		
		    If you want to pass in a path object, pandas accepts either
		    ``pathlib.Path`` or ``py._path.local.LocalPath``.
		
		    By file-like object, we refer to objects with a ``read()`` method,
		    such as a file handler (e.g. via builtin ``open`` function)
		    or ``StringIO``.
		colspecs : list of tuple (int, int) or 'infer'. optional
		    A list of tuples giving the extents of the fixed-width
		    fields of each line as half-open intervals (i.e.,  [from, to[ ).
		    String value 'infer' can be used to instruct the parser to try
		    detecting the column specifications from the first 100 rows of
		    the data which are not being skipped via skiprows (default='infer').
		widths : list of int, optional
		    A list of field widths which can be used instead of 'colspecs' if
		    the intervals are contiguous.
		infer_nrows : int, default 100
		    The number of rows to consider when letting the parser determine the
		    `colspecs`.
		
		    .. versionadded:: 0.24.0
		**kwds : optional
		    Optional keyword arguments can be passed to ``TextFileReader``.
		
		Returns
		-------
		DataFrame or TextParser
		    A comma-separated values (csv) file is returned as two-dimensional
		    data structure with labeled axes.
		
		See Also
		--------
		to_csv : Write DataFrame to a comma-separated values (csv) file.
		read_csv : Read a comma-separated values (csv) file into DataFrame.
		
		Examples
		--------
		>>> pd.read_fwf('data.csv')  # doctest: +SKIP
	**/
	static public function read_fwf(filepath_or_buffer:Dynamic, ?colspecs:Dynamic, ?widths:Dynamic, ?infer_nrows:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Read general delimited file into DataFrame.
		
		.. deprecated:: 0.24.0
		Use :func:`pandas.read_csv` instead, passing ``sep='\t'`` if necessary.
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the online docs for
		`IO Tools <http://pandas.pydata.org/pandas-docs/stable/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, path object, or file-like object
		    Any valid string path is acceptable. The string could be a URL. Valid
		    URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be: file://localhost/path/to/table.csv.
		
		    If you want to pass in a path object, pandas accepts either
		    ``pathlib.Path`` or ``py._path.local.LocalPath``.
		
		    By file-like object, we refer to objects with a ``read()`` method, such as
		    a file handler (e.g. via builtin ``open`` function) or ``StringIO``.
		sep : str, default '\\t' (tab-stop)
		    Delimiter to use. If sep is None, the C engine cannot automatically detect
		    the separator, but the Python parsing engine can, meaning the latter will
		    be used and automatically detect the separator by Python's builtin sniffer
		    tool, ``csv.Sniffer``. In addition, separators longer than 1 character and
		    different from ``'\s+'`` will be interpreted as regular expressions and
		    will also force the use of the Python parsing engine. Note that regex
		    delimiters are prone to ignoring quoted data. Regex example: ``'\r\t'``.
		delimiter : str, default ``None``
		    Alias for sep.
		header : int, list of int, default 'infer'
		    Row number(s) to use as the column names, and the start of the
		    data.  Default behavior is to infer the column names: if no names
		    are passed the behavior is identical to ``header=0`` and column
		    names are inferred from the first line of the file, if column
		    names are passed explicitly then the behavior is identical to
		    ``header=None``. Explicitly pass ``header=0`` to be able to
		    replace existing names. The header can be a list of integers that
		    specify row locations for a multi-index on the columns
		    e.g. [0,1,3]. Intervening rows that are not specified will be
		    skipped (e.g. 2 in this example is skipped). Note that this
		    parameter ignores commented lines and empty lines if
		    ``skip_blank_lines=True``, so ``header=0`` denotes the first line of
		    data rather than the first line of the file.
		names : array-like, optional
		    List of column names to use. If file contains no header row, then you
		    should explicitly pass ``header=None``. Duplicates in this list will cause
		    a ``UserWarning`` to be issued.
		index_col : int, sequence or bool, optional
		    Column to use as the row labels of the DataFrame. If a sequence is given, a
		    MultiIndex is used. If you have a malformed file with delimiters at the end
		    of each line, you might consider ``index_col=False`` to force pandas to
		    not use the first column as the index (row names).
		usecols : list-like or callable, optional
		    Return a subset of the columns. If list-like, all elements must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid list-like
		    `usecols` parameter would be ``[0, 1, 2]`` or ``['foo', 'bar', 'baz']``.
		    Element order is ignored, so ``usecols=[0, 1]`` is the same as ``[1, 0]``.
		    To instantiate a DataFrame from ``data`` with element order preserved use
		    ``pd.read_csv(data, usecols=['foo', 'bar'])[['foo', 'bar']]`` for columns
		    in ``['foo', 'bar']`` order or
		    ``pd.read_csv(data, usecols=['foo', 'bar'])[['bar', 'foo']]``
		    for ``['bar', 'foo']`` order.
		
		    If callable, the callable function will be evaluated against the column
		    names, returning names where the callable function evaluates to True. An
		    example of a valid callable argument would be ``lambda x: x.upper() in
		    ['AAA', 'BBB', 'DDD']``. Using this parameter results in much faster
		    parsing time and lower memory usage.
		squeeze : bool, default False
		    If the parsed data only contains one column then return a Series.
		prefix : str, optional
		    Prefix to add to column numbers when no header, e.g. 'X' for X0, X1, ...
		mangle_dupe_cols : bool, default True
		    Duplicate columns will be specified as 'X', 'X.1', ...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		dtype : Type name or dict of column -> type, optional
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32,
		    'c': 'Int64'}
		    Use `str` or `object` together with suitable `na_values` settings
		    to preserve and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		engine : {'c', 'python'}, optional
		    Parser engine to use. The C engine is faster while the python engine is
		    currently more feature-complete.
		converters : dict, optional
		    Dict of functions for converting values in certain columns. Keys can either
		    be integers or column labels.
		true_values : list, optional
		    Values to consider as True.
		false_values : list, optional
		    Values to consider as False.
		skipinitialspace : bool, default False
		    Skip spaces after delimiter.
		skiprows : list-like, int or callable, optional
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file.
		
		    If callable, the callable function will be evaluated against the row
		    indices, returning True if the row should be skipped and False otherwise.
		    An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c').
		nrows : int, optional
		    Number of rows of file to read. Useful for reading pieces of large files.
		na_values : scalar, str, list-like, or dict, optional
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values.  By default the following values are interpreted as
		    NaN: '', '#N/A', '#N/A N/A', '#NA', '-1.#IND', '-1.#QNAN', '-NaN', '-nan',
		    '1.#IND', '1.#QNAN', 'N/A', 'NA', 'NULL', 'NaN', 'n/a', 'nan',
		    'null'.
		keep_default_na : bool, default True
		    Whether or not to include the default NaN values when parsing the data.
		    Depending on whether `na_values` is passed in, the behavior is as follows:
		
		    * If `keep_default_na` is True, and `na_values` are specified, `na_values`
		      is appended to the default NaN values used for parsing.
		    * If `keep_default_na` is True, and `na_values` are not specified, only
		      the default NaN values are used for parsing.
		    * If `keep_default_na` is False, and `na_values` are specified, only
		      the NaN values specified `na_values` are used for parsing.
		    * If `keep_default_na` is False, and `na_values` are not specified, no
		      strings will be parsed as NaN.
		
		    Note that if `na_filter` is passed in as False, the `keep_default_na` and
		    `na_values` parameters will be ignored.
		na_filter : bool, default True
		    Detect missing value markers (empty strings and the value of na_values). In
		    data without any NAs, passing na_filter=False can improve the performance
		    of reading a large file.
		verbose : bool, default False
		    Indicate number of NA values placed in non-numeric columns.
		skip_blank_lines : bool, default True
		    If True, skip over blank lines rather than interpreting as NaN values.
		parse_dates : bool or list of int or names or list of lists or dict, default False
		    The behavior is as follows:
		
		    * boolean. If True -> try parsing the index.
		    * list of int or names. e.g. If [1, 2, 3] -> try parsing columns 1, 2, 3
		      each as a separate date column.
		    * list of lists. e.g.  If [[1, 3]] -> combine columns 1 and 3 and parse as
		      a single date column.
		    * dict, e.g. {'foo' : [1, 3]} -> parse columns 1, 3 as date and call
		      result 'foo'
		
		    If a column or index cannot be represented as an array of datetimes,
		    say because of an unparseable value or a mixture of timezones, the column
		    or index will be returned unaltered as an object data type. For
		    non-standard datetime parsing, use ``pd.to_datetime`` after
		    ``pd.read_csv``. To parse an index or column with a mixture of timezones,
		    specify ``date_parser`` to be a partially-applied
		    :func:`pandas.to_datetime` with ``utc=True``. See
		    :ref:`io.csv.mixed_timezones` for more.
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : bool, default False
		    If True and `parse_dates` is enabled, pandas will attempt to infer the
		    format of the datetime strings in the columns, and if it can be inferred,
		    switch to a faster method of parsing them. In some cases this can increase
		    the parsing speed by 5-10x.
		keep_date_col : bool, default False
		    If True and `parse_dates` specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, optional
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call `date_parser` in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by `parse_dates`) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by `parse_dates` into a single array
		    and pass that; and 3) call `date_parser` once for each row using one or
		    more strings (corresponding to the columns defined by `parse_dates`) as
		    arguments.
		dayfirst : bool, default False
		    DD/MM format dates, international and European format.
		iterator : bool, default False
		    Return TextFileReader object for iteration or getting chunks with
		    ``get_chunk()``.
		chunksize : int, optional
		    Return TextFileReader object for iteration.
		    See the `IO Tools docs
		    <http://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_
		    for more information on ``iterator`` and ``chunksize``.
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer' and
		    `filepath_or_buffer` is path-like, then detect compression from the
		    following extensions: '.gz', '.bz2', '.zip', or '.xz' (otherwise no
		    decompression). If using 'zip', the ZIP file must contain only one data
		    file to be read in. Set to None for no decompression.
		
		    .. versionadded:: 0.18.1 support for 'zip' and 'xz' compression.
		
		thousands : str, optional
		    Thousands separator.
		decimal : str, default '.'
		    Character to recognize as decimal point (e.g. use ',' for European data).
		lineterminator : str (length 1), optional
		    Character to break file into lines. Only valid with C parser.
		quotechar : str (length 1), optional
		    The character used to denote the start and end of a quoted item. Quoted
		    items can include the delimiter and it will be ignored.
		quoting : int or csv.QUOTE_* instance, default 0
		    Control field quoting behavior per ``csv.QUOTE_*`` constants. Use one of
		    QUOTE_MINIMAL (0), QUOTE_ALL (1), QUOTE_NONNUMERIC (2) or QUOTE_NONE (3).
		doublequote : bool, default ``True``
		   When quotechar is specified and quoting is not ``QUOTE_NONE``, indicate
		   whether or not to interpret two consecutive quotechar elements INSIDE a
		   field as a single ``quotechar`` element.
		escapechar : str (length 1), optional
		    One-character string used to escape other characters.
		comment : str, optional
		    Indicates remainder of line should not be parsed. If found at the beginning
		    of a line, the line will be ignored altogether. This parameter must be a
		    single character. Like empty lines (as long as ``skip_blank_lines=True``),
		    fully commented lines are ignored by the parameter `header` but not by
		    `skiprows`. For example, if ``comment='#'``, parsing
		    ``#empty\na,b,c\n1,2,3`` with ``header=0`` will result in 'a,b,c' being
		    treated as the header.
		encoding : str, optional
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_ .
		dialect : str or csv.Dialect, optional
		    If provided, this parameter will override values (default or not) for the
		    following parameters: `delimiter`, `doublequote`, `escapechar`,
		    `skipinitialspace`, `quotechar`, and `quoting`. If it is necessary to
		    override values, a ParserWarning will be issued. See csv.Dialect
		    documentation for more details.
		tupleize_cols : bool, default False
		    Leave a list of tuples on columns as is (default is to convert to
		    a MultiIndex on the columns).
		
		    .. deprecated:: 0.21.0
		       This argument will be removed and will always convert to MultiIndex
		
		error_bad_lines : bool, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned.
		warn_bad_lines : bool, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output.
		delim_whitespace : bool, default False
		    Specifies whether or not whitespace (e.g. ``' '`` or ``'    '``) will be
		    used as the sep. Equivalent to setting ``sep='\s+'``. If this option
		    is set to True, nothing should be passed in for the ``delimiter``
		    parameter.
		
		    .. versionadded:: 0.18.1 support for the Python parser.
		
		low_memory : bool, default True
		    Internally process the file in chunks, resulting in lower memory use
		    while parsing, but possibly mixed type inference.  To ensure no mixed
		    types either set False, or specify the type with the `dtype` parameter.
		    Note that the entire file is read into a single DataFrame regardless,
		    use the `chunksize` or `iterator` parameter to return the data in chunks.
		    (Only valid with C parser).
		memory_map : bool, default False
		    If a filepath is provided for `filepath_or_buffer`, map the file object
		    directly onto memory and access the data directly from there. Using this
		    option can improve performance because there is no longer any I/O overhead.
		float_precision : str, optional
		    Specifies which converter the C engine should use for floating-point
		    values. The options are `None` for the ordinary converter,
		    `high` for the high-precision converter, and `round_trip` for the
		    round-trip converter.
		
		Returns
		-------
		DataFrame or TextParser
		    A comma-separated values (csv) file is returned as two-dimensional
		    data structure with labeled axes.
		
		See Also
		--------
		to_csv : Write DataFrame to a comma-separated values (csv) file.
		read_csv : Read a comma-separated values (csv) file into DataFrame.
		read_fwf : Read a table of fixed-width formatted lines into DataFrame.
		
		Examples
		--------
		>>> pd.read_table('data.csv')  # doctest: +SKIP
	**/
	static public function read_table(filepath_or_buffer:Dynamic, ?sep:Dynamic, ?delimiter:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?prefix:Dynamic, ?mangle_dupe_cols:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skipinitialspace:Dynamic, ?skiprows:Dynamic, ?skipfooter:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?na_filter:Dynamic, ?verbose:Dynamic, ?skip_blank_lines:Dynamic, ?parse_dates:Dynamic, ?infer_datetime_format:Dynamic, ?keep_date_col:Dynamic, ?date_parser:Dynamic, ?dayfirst:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?thousands:Dynamic, ?decimal:Dynamic, ?lineterminator:Dynamic, ?quotechar:Dynamic, ?quoting:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?comment:Dynamic, ?encoding:Dynamic, ?dialect:Dynamic, ?tupleize_cols:Dynamic, ?error_bad_lines:Dynamic, ?warn_bad_lines:Dynamic, ?delim_whitespace:Dynamic, ?low_memory:Dynamic, ?memory_map:Dynamic, ?float_precision:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	static public function u(s:Dynamic):Dynamic;
}