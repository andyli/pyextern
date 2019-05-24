/* This file is generated, do not edit! */
package pandas.core.nanops;
@:pythonImport("pandas.core.nanops") extern class Nanops_Module {
	static public var _BOTTLENECK_INSTALLED : Dynamic;
	static public var _MIN_BOTTLENECK_VERSION : Dynamic;
	static public var _USE_BOTTLENECK : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _bn_ok_dtype(dt:Dynamic, name:Dynamic):Dynamic;
	static public function _ensure_numeric(x:Dynamic):Dynamic;
	static public function _get_counts(mask:Dynamic, axis:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _get_counts_nanvar(mask:Dynamic, axis:Dynamic, ddof:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Get the dtype instance associated with an array
		or dtype object.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype object whose dtype we want to extract.
		
		Returns
		-------
		obj_dtype : The extract dtype instance from the
		            passed in array or dtype object.
		
		Raises
		------
		TypeError : The passed in object is None.
	**/
	static public function _get_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return the correct fill value for the dtype of the values 
	**/
	static public function _get_fill_value(dtype:Dynamic, ?fill_value:Dynamic, ?fill_value_typ:Dynamic):Dynamic;
	/**
		utility to get the values view, mask, dtype
		if necessary copy and mask using the specified fill_value
		copy = True will force the copy
	**/
	static public function _get_values(values:Dynamic, skipna:Dynamic, ?fill_value:Dynamic, ?fill_value_typ:Dynamic, ?isfinite:Dynamic, ?copy:Dynamic, ?mask:Dynamic):Dynamic;
	static public function _has_infs(result:Dynamic):Dynamic;
	static public var _int64_max : Dynamic;
	static public function _isfinite(values:Dynamic):Dynamic;
	static public function _maybe_arg_null_out(result:Dynamic, axis:Dynamic, mask:Dynamic, skipna:Dynamic):Dynamic;
	static public function _maybe_null_out(result:Dynamic, axis:Dynamic, mask:Dynamic, ?min_count:Dynamic):Dynamic;
	/**
		Return the missing value for `values`
		
		Parameters
		----------
		values : ndarray
		axis : int or None
		    axis for the reduction
		
		Returns
		-------
		result : scalar or ndarray
		    For 1-D values, returns a scalar of the correct missing type.
		    For 2-D values, returns a 1-D array where each element is missing.
	**/
	static public function _na_for_min_count(values:Dynamic, axis:Dynamic):Dynamic;
	static public function _na_ok_dtype(dtype:Dynamic):Dynamic;
	static public function _nanminmax(meth:Dynamic, fill_value_typ:Dynamic):Dynamic;
	/**
		Wraper for np.percentile that skips missing values, specialized to
		1-dimensional case.
		
		Parameters
		----------
		values : array over which to find quantiles
		mask : ndarray[bool]
		    locations in values that should be considered missing
		q : scalar or array of quantile indices to find
		na_value : scalar
		    value to return for empty or all-null values
		interpolation : str
		
		Returns
		-------
		quantiles : scalar or array
	**/
	static public function _nanpercentile_1d(values:Dynamic, mask:Dynamic, q:Dynamic, na_value:Dynamic, interpolation:Dynamic):Dynamic;
	/**
		wrap our results if needed 
	**/
	static public function _wrap_results(result:Dynamic, dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public function _zero_out_fperr(arg:Dynamic):Dynamic;
	static public function get_corr_func(method:Dynamic):Dynamic;
	/**
		get_option(pat)
		
		Retrieves the value of the specified option.
		
		Available options:
		
		- compute.[use_bottleneck, use_numexpr]
		- display.[chop_threshold, colheader_justify, column_space, date_dayfirst,
		  date_yearfirst, encoding, expand_frame_repr, float_format]
		- display.html.[border, table_schema, use_mathjax]
		- display.[large_repr]
		- display.latex.[escape, longtable, multicolumn, multicolumn_format, multirow,
		  repr]
		- display.[max_categories, max_columns, max_colwidth, max_info_columns,
		  max_info_rows, max_rows, max_seq_items, memory_usage, multi_sparse,
		  notebook_repr_html, pprint_nest_depth, precision, show_dimensions]
		- display.unicode.[ambiguous_as_wide, east_asian_width]
		- display.[width]
		- html.[border]
		- io.excel.xls.[writer]
		- io.excel.xlsm.[writer]
		- io.excel.xlsx.[writer]
		- io.hdf.[default_format, dropna_table]
		- io.parquet.[engine]
		- mode.[chained_assignment, sim_interactive, use_inf_as_na, use_inf_as_null]
		- plotting.matplotlib.[register_converters]
		
		Parameters
		----------
		pat : str
		    Regexp which should match a single option.
		    Note: partial matches are supported for convenience, but unless you use the
		    full option name (e.g. x.y.z.option_name), your code may break in future
		    versions if new options with similar names are introduced.
		
		Returns
		-------
		result : the value of the option
		
		Raises
		------
		OptionError : if no such option exists
		
		Notes
		-----
		The available options with its descriptions:
		
		compute.use_bottleneck : bool
		    Use the bottleneck library to accelerate if it is installed,
		    the default is True
		    Valid values: False,True
		    [default: True] [currently: True]
		
		compute.use_numexpr : bool
		    Use the numexpr library to accelerate computation if it is installed,
		    the default is True
		    Valid values: False,True
		    [default: True] [currently: True]
		
		display.chop_threshold : float or None
		    if set to a float value, all float values smaller then the given threshold
		    will be displayed as exactly 0 by repr and friends.
		    [default: None] [currently: None]
		
		display.colheader_justify : 'left'/'right'
		    Controls the justification of column headers. used by DataFrameFormatter.
		    [default: right] [currently: right]
		
		display.column_space No description available.
		    [default: 12] [currently: 12]
		
		display.date_dayfirst : boolean
		    When True, prints and parses dates with the day first, eg 20/01/2005
		    [default: False] [currently: False]
		
		display.date_yearfirst : boolean
		    When True, prints and parses dates with the year first, eg 2005/01/20
		    [default: False] [currently: False]
		
		display.encoding : str/unicode
		    Defaults to the detected encoding of the console.
		    Specifies the encoding to be used for strings returned by to_string,
		    these are generally strings meant to be displayed on the console.
		    [default: ANSI_X3.4-1968] [currently: ANSI_X3.4-1968]
		
		display.expand_frame_repr : boolean
		    Whether to print out the full DataFrame repr for wide DataFrames across
		    multiple lines, `max_columns` is still respected, but the output will
		    wrap-around across multiple "pages" if its width exceeds `display.width`.
		    [default: True] [currently: True]
		
		display.float_format : callable
		    The callable should accept a floating point number and return
		    a string with the desired format of the number. This is used
		    in some places like SeriesFormatter.
		    See formats.format.EngFormatter for an example.
		    [default: None] [currently: None]
		
		display.html.border : int
		    A ``border=value`` attribute is inserted in the ``<table>`` tag
		    for the DataFrame HTML repr.
		    [default: 1] [currently: 1]
		
		display.html.table_schema : boolean
		    Whether to publish a Table Schema representation for frontends
		    that support it.
		    (default: False)
		    [default: False] [currently: False]
		
		display.html.use_mathjax : boolean
		    When True, Jupyter notebook will process table contents using MathJax,
		    rendering mathematical expressions enclosed by the dollar symbol.
		    (default: True)
		    [default: True] [currently: True]
		
		display.large_repr : 'truncate'/'info'
		    For DataFrames exceeding max_rows/max_cols, the repr (and HTML repr) can
		    show a truncated table (the default from 0.13), or switch to the view from
		    df.info() (the behaviour in earlier versions of pandas).
		    [default: truncate] [currently: truncate]
		
		display.latex.escape : bool
		    This specifies if the to_latex method of a Dataframe uses escapes special
		    characters.
		    Valid values: False,True
		    [default: True] [currently: True]
		
		display.latex.longtable :bool
		    This specifies if the to_latex method of a Dataframe uses the longtable
		    format.
		    Valid values: False,True
		    [default: False] [currently: False]
		
		display.latex.multicolumn : bool
		    This specifies if the to_latex method of a Dataframe uses multicolumns
		    to pretty-print MultiIndex columns.
		    Valid values: False,True
		    [default: True] [currently: True]
		
		display.latex.multicolumn_format : bool
		    This specifies if the to_latex method of a Dataframe uses multicolumns
		    to pretty-print MultiIndex columns.
		    Valid values: False,True
		    [default: l] [currently: l]
		
		display.latex.multirow : bool
		    This specifies if the to_latex method of a Dataframe uses multirows
		    to pretty-print MultiIndex rows.
		    Valid values: False,True
		    [default: False] [currently: False]
		
		display.latex.repr : boolean
		    Whether to produce a latex DataFrame representation for jupyter
		    environments that support it.
		    (default: False)
		    [default: False] [currently: False]
		
		display.max_categories : int
		    This sets the maximum number of categories pandas should output when
		    printing out a `Categorical` or a Series of dtype "category".
		    [default: 8] [currently: 8]
		
		display.max_columns : int
		    If max_cols is exceeded, switch to truncate view. Depending on
		    `large_repr`, objects are either centrally truncated or printed as
		    a summary view. 'None' value means unlimited.
		
		    In case python/IPython is running in a terminal and `large_repr`
		    equals 'truncate' this can be set to 0 and pandas will auto-detect
		    the width of the terminal and print a truncated object which fits
		    the screen width. The IPython notebook, IPython qtconsole, or IDLE
		    do not run in a terminal and hence it is not possible to do
		    correct auto-detection.
		    [default: 0] [currently: 0]
		
		display.max_colwidth : int
		    The maximum width in characters of a column in the repr of
		    a pandas data structure. When the column overflows, a "..."
		    placeholder is embedded in the output.
		    [default: 50] [currently: 50]
		
		display.max_info_columns : int
		    max_info_columns is used in DataFrame.info method to decide if
		    per column information will be printed.
		    [default: 100] [currently: 100]
		
		display.max_info_rows : int or None
		    df.info() will usually show null-counts for each column.
		    For large frames this can be quite slow. max_info_rows and max_info_cols
		    limit this null check only to frames with smaller dimensions than
		    specified.
		    [default: 1690785] [currently: 1690785]
		
		display.max_rows : int
		    If max_rows is exceeded, switch to truncate view. Depending on
		    `large_repr`, objects are either centrally truncated or printed as
		    a summary view. 'None' value means unlimited.
		
		    In case python/IPython is running in a terminal and `large_repr`
		    equals 'truncate' this can be set to 0 and pandas will auto-detect
		    the height of the terminal and print a truncated object which fits
		    the screen height. The IPython notebook, IPython qtconsole, or
		    IDLE do not run in a terminal and hence it is not possible to do
		    correct auto-detection.
		    [default: 60] [currently: 60]
		
		display.max_seq_items : int or None
		    when pretty-printing a long sequence, no more then `max_seq_items`
		    will be printed. If items are omitted, they will be denoted by the
		    addition of "..." to the resulting string.
		
		    If set to None, the number of items to be printed is unlimited.
		    [default: 100] [currently: 100]
		
		display.memory_usage : bool, string or None
		    This specifies if the memory usage of a DataFrame should be displayed when
		    df.info() is called. Valid values True,False,'deep'
		    [default: True] [currently: True]
		
		display.multi_sparse : boolean
		    "sparsify" MultiIndex display (don't display repeated
		    elements in outer levels within groups)
		    [default: True] [currently: True]
		
		display.notebook_repr_html : boolean
		    When True, IPython notebook will use html representation for
		    pandas objects (if it is available).
		    [default: True] [currently: True]
		
		display.pprint_nest_depth : int
		    Controls the number of nested levels to process when pretty-printing
		    [default: 3] [currently: 3]
		
		display.precision : int
		    Floating point output precision (number of significant digits). This is
		    only a suggestion
		    [default: 6] [currently: 6]
		
		display.show_dimensions : boolean or 'truncate'
		    Whether to print out dimensions at the end of DataFrame repr.
		    If 'truncate' is specified, only print out the dimensions if the
		    frame is truncated (e.g. not display all rows and/or columns)
		    [default: truncate] [currently: truncate]
		
		display.unicode.ambiguous_as_wide : boolean
		    Whether to use the Unicode East Asian Width to calculate the display text
		    width.
		    Enabling this may affect to the performance (default: False)
		    [default: False] [currently: False]
		
		display.unicode.east_asian_width : boolean
		    Whether to use the Unicode East Asian Width to calculate the display text
		    width.
		    Enabling this may affect to the performance (default: False)
		    [default: False] [currently: False]
		
		display.width : int
		    Width of the display in characters. In case python/IPython is running in
		    a terminal this can be set to None and pandas will correctly auto-detect
		    the width.
		    Note that the IPython notebook, IPython qtconsole, or IDLE do not run in a
		    terminal and hence it is not possible to correctly detect the width.
		    [default: 80] [currently: 80]
		
		html.border : int
		    A ``border=value`` attribute is inserted in the ``<table>`` tag
		    for the DataFrame HTML repr.
		    [default: 1] [currently: 1]
		    (Deprecated, use `display.html.border` instead.)
		
		io.excel.xls.writer : string
		    The default Excel writer engine for 'xls' files. Available options:
		    auto, xlwt.
		    [default: auto] [currently: auto]
		
		io.excel.xlsm.writer : string
		    The default Excel writer engine for 'xlsm' files. Available options:
		    auto, openpyxl.
		    [default: auto] [currently: auto]
		
		io.excel.xlsx.writer : string
		    The default Excel writer engine for 'xlsx' files. Available options:
		    auto, openpyxl, xlsxwriter.
		    [default: auto] [currently: auto]
		
		io.hdf.default_format : format
		    default format writing format, if None, then
		    put will default to 'fixed' and append will default to 'table'
		    [default: None] [currently: None]
		
		io.hdf.dropna_table : boolean
		    drop ALL nan rows when appending to a table
		    [default: False] [currently: False]
		
		io.parquet.engine : string
		    The default parquet reader/writer engine. Available options:
		    'auto', 'pyarrow', 'fastparquet', the default is 'auto'
		    [default: auto] [currently: auto]
		
		mode.chained_assignment : string
		    Raise an exception, warn, or no action if trying to use chained assignment,
		    The default is warn
		    [default: warn] [currently: warn]
		
		mode.sim_interactive : boolean
		    Whether to simulate interactive mode for purposes of testing
		    [default: False] [currently: False]
		
		mode.use_inf_as_na : boolean
		    True means treat None, NaN, INF, -INF as NA (old way),
		    False means None and NaN are null, but INF, -INF are not NA
		    (new way).
		    [default: False] [currently: False]
		
		mode.use_inf_as_null : boolean
		    use_inf_as_null had been deprecated and will be removed in a future
		    version. Use `use_inf_as_na` instead.
		    [default: False] [currently: False]
		    (Deprecated, use `mode.use_inf_as_na` instead.)
		
		plotting.matplotlib.register_converters : bool
		    Whether to register converters with matplotlib's units registry for
		    dates, times, datetimes, and Periods. Toggling to False will remove
		    the converters, restoring any converters that pandas overwrote.
		    [default: True] [currently: True]
	**/
	static public function get_option(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		In this function, timedelta64 instances are also considered "any-integer"
		type objects and will return True.
		
		This function is internal and should not be exposed in the public API.
		
		.. versionchanged:: 0.24.0
		
		   The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		   as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype.
		
		Examples
		--------
		>>> is_any_int_dtype(str)
		False
		>>> is_any_int_dtype(int)
		True
		>>> is_any_int_dtype(float)
		False
		>>> is_any_int_dtype(np.uint64)
		True
		>>> is_any_int_dtype(np.datetime64)
		False
		>>> is_any_int_dtype(np.timedelta64)
		True
		>>> is_any_int_dtype(np.array(['a', 'b']))
		False
		>>> is_any_int_dtype(pd.Series([1, 2]))
		True
		>>> is_any_int_dtype(np.array([], dtype=np.timedelta64))
		True
		>>> is_any_int_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_any_int_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a complex dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a compex dtype.
		
		Examples
		--------
		>>> is_complex_dtype(str)
		False
		>>> is_complex_dtype(int)
		False
		>>> is_complex_dtype(np.complex)
		True
		>>> is_complex_dtype(np.array(['a', 'b']))
		False
		>>> is_complex_dtype(pd.Series([1, 2]))
		False
		>>> is_complex_dtype(np.array([1 + 1j, 5]))
		True
	**/
	static public function is_complex_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of a DatetimeTZDtype dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          a DatetimeTZDtype dtype.
		
		Examples
		--------
		>>> is_datetime64tz_dtype(object)
		False
		>>> is_datetime64tz_dtype([1, 2, 3])
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3]))  # tz-naive
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetime64tz_dtype(dtype)
		True
		>>> is_datetime64tz_dtype(s)
		True
	**/
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of
		a timedelta64 or datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a
		          timedelta64, or datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime_or_timedelta_dtype(str)
		False
		>>> is_datetime_or_timedelta_dtype(int)
		False
		>>> is_datetime_or_timedelta_dtype(np.datetime64)
		True
		>>> is_datetime_or_timedelta_dtype(np.timedelta64)
		True
		>>> is_datetime_or_timedelta_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime_or_timedelta_dtype(pd.Series([1, 2]))
		False
		>>> is_datetime_or_timedelta_dtype(np.array([], dtype=np.timedelta64))
		True
		>>> is_datetime_or_timedelta_dtype(np.array([], dtype=np.datetime64))
		True
	**/
	static public function is_datetime_or_timedelta_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		This function is internal and should not be exposed in the public API.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a float dtype.
		
		Examples
		--------
		>>> is_float_dtype(str)
		False
		>>> is_float_dtype(int)
		False
		>>> is_float_dtype(float)
		True
		>>> is_float_dtype(np.array(['a', 'b']))
		False
		>>> is_float_dtype(pd.Series([1, 2]))
		False
		>>> is_float_dtype(pd.Index([1, 2.]))
		True
	**/
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a numeric dtype.
		
		Examples
		--------
		>>> is_numeric_dtype(str)
		False
		>>> is_numeric_dtype(int)
		True
		>>> is_numeric_dtype(float)
		True
		>>> is_numeric_dtype(np.uint64)
		True
		>>> is_numeric_dtype(np.datetime64)
		False
		>>> is_numeric_dtype(np.timedelta64)
		False
		>>> is_numeric_dtype(np.array(['a', 'b']))
		False
		>>> is_numeric_dtype(pd.Series([1, 2]))
		True
		>>> is_numeric_dtype(pd.Index([1, 2.]))
		True
		>>> is_numeric_dtype(np.array([], dtype=np.timedelta64))
		False
	**/
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the timedelta64 dtype.
		
		Examples
		--------
		>>> is_timedelta64_dtype(object)
		False
		>>> is_timedelta64_dtype(np.timedelta64)
		True
		>>> is_timedelta64_dtype([1, 2, 3])
		False
		>>> is_timedelta64_dtype(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> is_timedelta64_dtype('0 days')
		False
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public function make_nancomp(op:Dynamic):Dynamic;
	/**
		A safe version of putmask that potentially upcasts the result
		
		Parameters
		----------
		result : ndarray
		    The destination array. This will be mutated in-place if no upcasting is
		    necessary.
		mask : boolean ndarray
		other : ndarray or scalar
		    The source array or value
		
		Returns
		-------
		result : ndarray
		changed : boolean
		    Set to true if the result array was upcasted
	**/
	static public function maybe_upcast_putmask(result:Dynamic, mask:Dynamic, other:Dynamic):Dynamic;
	/**
		Return a dtype compat na value
		
		Parameters
		----------
		dtype : string / dtype
		compat : boolean, default True
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Examples
		--------
		>>> na_value_for_dtype(np.dtype('int64'))
		0
		>>> na_value_for_dtype(np.dtype('int64'), compat=False)
		nan
		>>> na_value_for_dtype(np.dtype('float64'))
		nan
		>>> na_value_for_dtype(np.dtype('bool'))
		False
		>>> na_value_for_dtype(np.dtype('datetime64[ns]'))
		NaT
	**/
	static public function na_value_for_dtype(dtype:Dynamic, ?compat:Dynamic):Dynamic;
	/**
		Check if all elements along an axis evaluate to True.
		
		Parameters
		----------
		values : ndarray
		axis: int, optional
		skipna : bool, default True
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : bool
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, 2, np.nan])
		>>> nanops.nanall(s)
		True
		
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, 0])
		>>> nanops.nanall(s)
		False
	**/
	static public function nanall(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?mask:Dynamic):Bool;
	/**
		Check if any elements along an axis evaluate to True.
		
		Parameters
		----------
		values : ndarray
		axis : int, optional
		skipna : bool, default True
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : bool
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, 2])
		>>> nanops.nanany(s)
		True
		
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([np.nan])
		>>> nanops.nanany(s)
		False
	**/
	static public function nanany(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?mask:Dynamic):Bool;
	/**
		Parameters
		----------
		values : ndarray
		axis: int, optional
		skipna : bool, default True
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		--------
		result : int
		    The index of max value in specified axis or -1 in the NA case
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, 2, 3, np.nan, 4])
		>>> nanops.nanargmax(s)
		4
	**/
	static public function nanargmax(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?mask:Dynamic):Int;
	/**
		Parameters
		----------
		values : ndarray
		axis: int, optional
		skipna : bool, default True
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		--------
		result : int
		    The index of min value in specified axis or -1 in the NA case
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, 2, 3, np.nan, 4])
		>>> nanops.nanargmin(s)
		0
	**/
	static public function nanargmin(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?mask:Dynamic):Int;
	/**
		a, b: ndarrays
	**/
	static public function nancorr(a:Dynamic, b:Dynamic, ?method:Dynamic, ?min_periods:Dynamic):Dynamic;
	static public function nancov(a:Dynamic, b:Dynamic, ?min_periods:Dynamic):Dynamic;
	static public function naneq(x:Dynamic, y:Dynamic):Dynamic;
	static public function nange(x:Dynamic, y:Dynamic):Dynamic;
	static public function nangt(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Compute the sample excess kurtosis
		
		The statistic computed here is the adjusted Fisher-Pearson standardized
		moment coefficient G2, computed directly from the second and fourth
		central moment.
		
		Parameters
		----------
		values : ndarray
		axis: int, optional
		skipna : bool, default True
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : float64
		    Unless input is a float array, in which case use the same
		    precision as the input array.
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1,np.nan, 1, 3, 2])
		>>> nanops.nankurt(s)
		-1.2892561983471076
	**/
	static public function nankurt(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?mask:Dynamic):Dynamic;
	static public function nanle(x:Dynamic, y:Dynamic):Dynamic;
	static public function nanlt(x:Dynamic, y:Dynamic):Dynamic;
	static public function nanmax(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Compute the mean of the element along an axis ignoring NaNs
		
		Parameters
		----------
		values : ndarray
		axis: int, optional
		skipna : bool, default True
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : float
		    Unless input is a float array, in which case use the same
		    precision as the input array.
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, 2, np.nan])
		>>> nanops.nanmean(s)
		1.5
	**/
	static public function nanmean(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?mask:Dynamic):Float;
	/**
		Parameters
		----------
		values : ndarray
		axis: int, optional
		skipna : bool, default True
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : float
		    Unless input is a float array, in which case use the same
		    precision as the input array.
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, np.nan, 2, 2])
		>>> nanops.nanmedian(s)
		2.0
	**/
	static public function nanmedian(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?mask:Dynamic):Float;
	static public function nanmin(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?mask:Dynamic):Dynamic;
	static public function nanne(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Wraper for np.percentile that skips missing values.
		
		Parameters
		----------
		values : array over which to find quantiles
		q : scalar or array of quantile indices to find
		axis : {0, 1}
		na_value : scalar
		    value to return for empty or all-null values
		mask : ndarray[bool]
		    locations in values that should be considered missing
		ndim : {1, 2}
		interpolation : str
		
		Returns
		-------
		quantiles : scalar or array
	**/
	static public function nanpercentile(values:Dynamic, q:Dynamic, axis:Dynamic, na_value:Dynamic, mask:Dynamic, ndim:Dynamic, interpolation:Dynamic):Dynamic;
	/**
		Parameters
		----------
		values : ndarray[dtype]
		axis: int, optional
		skipna : bool, default True
		min_count: int, default 0
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : dtype
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, 2, 3, np.nan])
		>>> nanops.nanprod(s)
		6.0
		
		Returns
		--------
		The product of all elements on a given axis. ( NaNs are treated as 1)
	**/
	static public function nanprod(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?min_count:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Compute the standard error in the mean along given axis while ignoring NaNs
		
		Parameters
		----------
		values : ndarray
		axis: int, optional
		skipna : bool, default True
		ddof : int, default 1
		    Delta Degrees of Freedom. The divisor used in calculations is N - ddof,
		    where N represents the number of elements.
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : float64
		    Unless input is a float array, in which case use the same
		    precision as the input array.
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, np.nan, 2, 3])
		>>> nanops.nansem(s)
		 0.5773502691896258
	**/
	static public function nansem(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?ddof:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Compute the sample skewness.
		
		The statistic computed here is the adjusted Fisher-Pearson standardized
		moment coefficient G1. The algorithm computes this coefficient directly
		from the second and third central moment.
		
		Parameters
		----------
		values : ndarray
		axis: int, optional
		skipna : bool, default True
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : float64
		    Unless input is a float array, in which case use the same
		    precision as the input array.
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1,np.nan, 1, 2])
		>>> nanops.nanskew(s)
		1.7320508075688787
	**/
	static public function nanskew(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Compute the standard deviation along given axis while ignoring NaNs
		
		Parameters
		----------
		values : ndarray
		axis: int, optional
		skipna : bool, default True
		ddof : int, default 1
		    Delta Degrees of Freedom. The divisor used in calculations is N - ddof,
		    where N represents the number of elements.
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : float
		    Unless input is a float array, in which case use the same
		    precision as the input array.
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, np.nan, 2, 3])
		>>> nanops.nanstd(s)
		1.0
	**/
	static public function nanstd(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?ddof:Dynamic, ?mask:Dynamic):Float;
	/**
		Sum the elements along an axis ignoring NaNs
		
		Parameters
		----------
		values : ndarray[dtype]
		axis: int, optional
		skipna : bool, default True
		min_count: int, default 0
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : dtype
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, 2, np.nan])
		>>> nanops.nansum(s)
		3.0
	**/
	static public function nansum(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?min_count:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Compute the variance along given axis while ignoring NaNs
		
		Parameters
		----------
		values : ndarray
		axis: int, optional
		skipna : bool, default True
		ddof : int, default 1
		    Delta Degrees of Freedom. The divisor used in calculations is N - ddof,
		    where N represents the number of elements.
		mask : ndarray[bool], optional
		    nan-mask if known
		
		Returns
		-------
		result : float
		    Unless input is a float array, in which case use the same
		    precision as the input array.
		
		Examples
		--------
		>>> import pandas.core.nanops as nanops
		>>> s = pd.Series([1, np.nan, 2, 3])
		>>> nanops.nanvar(s)
		1.0
	**/
	static public function nanvar(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?ddof:Dynamic, ?mask:Dynamic):Float;
	/**
		Detect non-missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are valid (not missing, which is ``NaN`` in numeric
		arrays, ``None`` or ``NaN`` in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : array-like or object value
		    Object to check for *not* null or *non*-missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is valid.
		
		See Also
		--------
		isna : Boolean inverse of pandas.notna.
		Series.notna : Detect valid values in a Series.
		DataFrame.notna : Detect valid values in a DataFrame.
		Index.notna : Detect valid values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.notna('dog')
		True
		
		>>> pd.notna(np.nan)
		False
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.notna(array)
		array([[ True, False,  True],
		       [ True,  True, False]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                          "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.notna(index)
		array([ True,  True, False,  True])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.notna(df)
		      0      1     2
		0  True   True  True
		1  True  False  True
		
		>>> pd.notna(df[1])
		0     True
		1    False
		Name: 1, dtype: bool
	**/
	static public function notna(obj:Dynamic):Dynamic;
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
	static public function set_use_bottleneck(?v:Dynamic):Dynamic;
}