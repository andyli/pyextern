/* This file is generated, do not edit! */
package pandas.core.common;
@:pythonImport("pandas.core.common") extern class Common_Module {
	static public var _DATELIKE_DTYPES : Dynamic;
	static public var _INT64_DTYPE : Dynamic;
	static public var _NS_DTYPE : Dynamic;
	static public var _POSSIBLY_CAST_DTYPES : Dynamic;
	static public var _TD_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _all_none(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _all_not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _any_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Evaluate possibly callable input using obj and kwargs if it is callable,
		otherwise return as it is
	**/
	static public function _apply_if_callable(maybe_callable:Dynamic, obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _asarray_tuplesafe(values:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		return a view if copy is False, but
		need to be very careful as the result shape could change! 
	**/
	static public function _astype_nansafe(arr:Dynamic, dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		coerce the indexer input array to the smallest dtype possible 
	**/
	static public function _coerce_indexer_dtype(indexer:Dynamic, categories:Dynamic):Dynamic;
	/**
		coerce a string / np.dtype to a dtype 
	**/
	static public function _coerce_to_dtype(dtype:Dynamic):Dynamic;
	/**
		given a dtypes and a result set, coerce the result elements to the
		dtypes
	**/
	static public function _coerce_to_dtypes(result:Dynamic, dtypes:Dynamic):Dynamic;
	static public function _consensus_name_attr(objs:Dynamic):Dynamic;
	static public function _count_not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _default_index(n:Dynamic):Dynamic;
	/**
		Helper function to convert datetimelike-keyed dicts to Timestamp-keyed dict
		
		Parameters
		----------
		d: dict like object
		
		Returns
		-------
		dict
	**/
	static public function _dict_compat(d:Dynamic):Dynamic;
	static public function _ensure_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_callable_name(obj:Dynamic):Dynamic;
	static public function _get_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Get a numpy dtype.type-style object. This handles the datetime64[ns]
		and datetime64[ns, TZ] compat
		
		Notes
		-----
		If nothing can be found, returns ``object``.
	**/
	static public function _get_dtype_from_object(dtype:Dynamic):Dynamic;
	static public function _get_dtype_type(arr_or_dtype:Dynamic):Dynamic;
	/**
		Slice the info axis of `obj` with `indexer`.
	**/
	static public function _get_info_slice(obj:Dynamic, indexer:Dynamic):Dynamic;
	static public function _index_labels_to_array(labels:Dynamic):Dynamic;
	/**
		interpret the dtype from a scalar 
	**/
	static public function _infer_dtype_from_scalar(val:Dynamic):Dynamic;
	/**
		infer the fill value for the nan/NaT from the provided
		scalar/ndarray/list-like if we are a NaT, return the correct dtyped
		element to provide proper block construction
	**/
	static public function _infer_fill_value(val:Dynamic):Dynamic;
	static public var _int16_max : Dynamic;
	static public var _int32_max : Dynamic;
	static public var _int64_max : Dynamic;
	static public var _int8_max : Dynamic;
	/**
		Change string like dtypes to object for
		``DataFrame.select_dtypes()``.
	**/
	static public function _invalidate_string_dtypes(dtype_set:Dynamic):Dynamic;
	/**
		Parameters
		----------
		arr: a numpy array
		fill_value: fill value, default to np.nan
		
		Returns
		-------
		True if we can fill using this fill_value
	**/
	static public function _is_na_compat(arr:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public function _isnull(obj:Dynamic):Dynamic;
	static public function _isnull_ndarraylike(obj:Dynamic):Dynamic;
	static public function _isnull_ndarraylike_old(obj:Dynamic):Dynamic;
	static public function _isnull_new(obj:Dynamic):Dynamic;
	/**
		Detect missing values. Treat None, NaN, INF, -INF as null.
		
		Parameters
		----------
		arr: ndarray or object value
		
		Returns
		-------
		boolean ndarray or boolean
	**/
	static public function _isnull_old(obj:Dynamic):Dynamic;
	static public function _iterable_not_string(x:Dynamic):Dynamic;
	/**
		return the lcd dtype to hold these types 
	**/
	static public function _lcd_dtypes(a_dtype:Dynamic, b_dtype:Dynamic):Dynamic;
	static public function _long_prod(vals:Dynamic):Dynamic;
	static public function _maybe_box(indexer:Dynamic, values:Dynamic, obj:Dynamic, key:Dynamic):Dynamic;
	static public function _maybe_box_datetimelike(value:Dynamic):Dynamic;
	/**
		Convert a python scalar to the appropriate numpy dtype if possible
		This avoids numpy directly converting according to platform preferences
	**/
	static public function _maybe_convert_scalar(values:Dynamic):Dynamic;
	/**
		Convert string-like and string-like array to convert object dtype.
		This is to avoid numpy to handle the array as str dtype.
	**/
	static public function _maybe_convert_string_to_object(values:Dynamic):Dynamic;
	/**
		if we have a compatiable fill_value and arr dtype, then fill
	**/
	static public function _maybe_fill(arr:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public function _maybe_make_list(obj:Dynamic):Dynamic;
	static public function _maybe_match_name(a:Dynamic, b:Dynamic):Dynamic;
	static public function _maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		provide explict type promotion and coercion
		
		Parameters
		----------
		values : the ndarray that we want to maybe upcast
		fill_value : what we want to fill with
		dtype : if None, then use the dtype of the values, else coerce to this type
		copy : if True always make a copy even if no upcast is required
	**/
	static public function _maybe_upcast(values:Dynamic, ?fill_value:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
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
	static public function _maybe_upcast_putmask(result:Dynamic, mask:Dynamic, other:Dynamic):Dynamic;
	static public function _mut_exclusive(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _possibly_cast_item(obj:Dynamic, item:Dynamic, dtype:Dynamic):Dynamic;
	/**
		try to cast the array/value to a datetimelike dtype, converting float
		nan to iNaT
	**/
	static public function _possibly_cast_to_datetime(value:Dynamic, dtype:Dynamic, ?errors:Dynamic):Dynamic;
	static public function _possibly_castable(arr:Dynamic):Dynamic;
	/**
		try to do platform conversion, allow ndarray or list here 
	**/
	static public function _possibly_convert_platform(values:Dynamic):Dynamic;
	/**
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function _possibly_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	/**
		we might have a array (or single object) that is datetime like,
		and no dtype is passed don't change the value unless we find a
		datetime/timedelta set
		
		this is pretty strict in that a datetime/timedelta is REQUIRED
		in addition to possible nulls/string likes
		
		ONLY strings are NOT datetimelike
		
		Parameters
		----------
		value : np.array / Series / Index / list-like
		convert_dates : boolean, default False
		   if True try really hard to convert dates (such as datetime.date), other
		   leave inferred dtype 'date' alone
	**/
	static public function _possibly_infer_to_datetimelike(value:Dynamic, ?convert_dates:Dynamic):Dynamic;
	/**
		Helper function for processing random_state arguments.
		
		Parameters
		----------
		state : int, np.random.RandomState, None.
		    If receives an int, passes to np.random.RandomState() as seed.
		    If receives an np.random.RandomState object, just returns object.
		    If receives `None`, returns an np.random.RandomState object.
		    If receives anything else, raises an informative ValueError.
		    Default None.
		
		Returns
		-------
		np.random.RandomState
	**/
	static public function _random_state(?state:Dynamic):Dynamic;
	static public var _string_dtypes : Dynamic;
	static public function _try_sort(iterable:Dynamic):Dynamic;
	/**
		Option change callback for null/inf behaviour
		Choose which replacement for numpy.isnan / -numpy.isfinite is used.
		
		Parameters
		----------
		flag: bool
		    True means treat None, NaN, INF, -INF as null (old way),
		    False means None and NaN are null, but INF, -INF are not null
		    (new way).
		
		Notes
		-----
		This approach to setting global module values is discussed and
		approved here:
		
		* http://stackoverflow.com/questions/4859217/
		  programmatically-creating-variables-in-python/4859312#4859312
	**/
	static public function _use_inf_as_null(key:Dynamic):Dynamic;
	static public function _validate_date_like_dtype(dtype:Dynamic):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _where_compat(mask:Dynamic, arr1:Dynamic, arr2:Dynamic):Dynamic;
	/**
		True if two arrays, left and right, have equal non-NaN elements, and NaNs
		in corresponding locations.  False otherwise. It is assumed that left and
		right are NumPy arrays of the same dtype. The behavior of this function
		(particularly with respect to NaNs) is not defined if the dtypes are
		different.
		
		Parameters
		----------
		left, right : ndarrays
		strict_nan : bool, default False
		    If True, consider NaN and None to be different.
		
		Returns
		-------
		b : bool
		    Returns True if the arrays are equivalent.
		
		Examples
		--------
		>>> array_equivalent(
		...     np.array([1, 2, np.nan]),
		...     np.array([1, 2, np.nan]))
		True
		>>> array_equivalent(
		...     np.array([1, np.nan, 2]),
		...     np.array([1, 2, np.nan]))
		False
	**/
	static public function array_equivalent(left:Dynamic, right:Dynamic, ?strict_nan:Dynamic):Bool;
	static public function difference(a:Dynamic, b:Dynamic):Dynamic;
	static public function ensure_float(arr:Dynamic):Dynamic;
	/**
		Flatten an arbitrarily nested sequence.
		
		Parameters
		----------
		l : sequence
		    The non string sequence to flatten
		
		Notes
		-----
		This doesn't consider strings sequences.
		
		Returns
		-------
		flattened : generator
	**/
	static public function flatten(l:Dynamic):python.NativeIterable<Dynamic>;
	/**
		get_option(pat)
		
		Retrieves the value of the specified option.
		
		Available options:
		
		- display.[chop_threshold, colheader_justify, column_space, date_dayfirst,
		  date_yearfirst, encoding, expand_frame_repr, float_format, height, large_repr]
		- display.latex.[escape, longtable, repr]
		- display.[line_width, max_categories, max_columns, max_colwidth,
		  max_info_columns, max_info_rows, max_rows, max_seq_items, memory_usage,
		  mpl_style, multi_sparse, notebook_repr_html, pprint_nest_depth, precision,
		  show_dimensions]
		- display.unicode.[ambiguous_as_wide, east_asian_width]
		- display.[width]
		- io.excel.xls.[writer]
		- io.excel.xlsm.[writer]
		- io.excel.xlsx.[writer]
		- io.hdf.[default_format, dropna_table]
		- mode.[chained_assignment, sim_interactive, use_inf_as_null]
		
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
		    [default: UTF-8] [currently: UTF-8]
		
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
		
		display.height : int
		    Deprecated.
		    [default: 60] [currently: 60]
		    (Deprecated, use `display.max_rows` instead.)
		
		display.large_repr : 'truncate'/'info'
		    For DataFrames exceeding max_rows/max_cols, the repr (and HTML repr) can
		    show a truncated table (the default from 0.13), or switch to the view from
		    df.info() (the behaviour in earlier versions of pandas).
		    [default: truncate] [currently: truncate]
		
		display.latex.escape : bool
		    This specifies if the to_latex method of a Dataframe uses escapes special
		    characters.
		    method. Valid values: False,True
		    [default: True] [currently: True]
		
		display.latex.longtable :bool
		    This specifies if the to_latex method of a Dataframe uses the longtable
		    format.
		    method. Valid values: False,True
		    [default: False] [currently: False]
		
		display.latex.repr : boolean
		    Whether to produce a latex DataFrame representation for jupyter
		    environments that support it.
		    (default: False)
		    [default: False] [currently: False]
		
		display.line_width : int
		    Deprecated.
		    [default: 80] [currently: 80]
		    (Deprecated, use `display.width` instead.)
		
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
		    [default: 20] [currently: 20]
		
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
		
		display.mpl_style : bool
		    Setting this to 'default' will modify the rcParams used by matplotlib
		    to give plots a more pleasing visual style by default.
		    Setting this to None/False restores the values to their initial value.
		    [default: None] [currently: None]
		
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
		
		io.excel.xls.writer : string
		    The default Excel writer engine for 'xls' files. Available options:
		    'xlwt' (the default).
		    [default: xlwt] [currently: xlwt]
		
		io.excel.xlsm.writer : string
		    The default Excel writer engine for 'xlsm' files. Available options:
		    'openpyxl' (the default).
		    [default: openpyxl] [currently: openpyxl]
		
		io.excel.xlsx.writer : string
		    The default Excel writer engine for 'xlsx' files. Available options:
		    'openpyxl' (the default), 'xlsxwriter'.
		    [default: openpyxl] [currently: openpyxl]
		
		io.hdf.default_format : format
		    default format writing format, if None, then
		    put will default to 'fixed' and append will default to 'table'
		    [default: None] [currently: None]
		
		io.hdf.dropna_table : boolean
		    drop ALL nan rows when appending to a table
		    [default: False] [currently: False]
		
		mode.chained_assignment : string
		    Raise an exception, warn, or no action if trying to use chained assignment,
		    The default is warn
		    [default: warn] [currently: warn]
		
		mode.sim_interactive : boolean
		    Whether to simulate interactive mode for purposes of testing
		    [default: False] [currently: False]
		
		mode.use_inf_as_null : boolean
		    True means treat None, NaN, INF, -INF as null (old way),
		    False means None and NaN are null, but INF, -INF are not null
		    (new way).
		    [default: False] [currently: False]
	**/
	static public function get_option(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		check if we're running in an interactive shell
		
		returns True if running under python/ipython interactive shell
	**/
	static public function in_interactive_session():Dynamic;
	/**
		check if we're inside an IPython Notebook
		
		DEPRECATED: This is no longer used in pandas, and won't work in IPython 3
		and above.
	**/
	static public function in_ipnb():Dynamic;
	/**
		check if we're inside an an IPython zmq frontend
	**/
	static public function in_ipython_frontend():Dynamic;
	/**
		check if we're inside an IPython qtconsole
		
		DEPRECATED: This is no longer needed, or working, in IPython 3 and above.
	**/
	static public function in_qtconsole():Dynamic;
	static public function intersection(?seqs:python.VarArgs<Dynamic>):Dynamic;
	static public function is_any_int_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_bool_indexer(key:Dynamic):Dynamic;
	/**
		return if we are a categorical possibility 
	**/
	static public function is_categorical(array:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_complex_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_any_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return if we are datetime arraylike / DatetimeIndex 
	**/
	static public function is_datetime_arraylike(arr:Dynamic):Dynamic;
	static public function is_datetime_or_timedelta_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetimelike(arr:Dynamic):Dynamic;
	static public function is_datetimelike_v_numeric(a:Dynamic, b:Dynamic):Dynamic;
	static public function is_datetimelike_v_object(a:Dynamic, b:Dynamic):Dynamic;
	/**
		return if we are a datetime with tz array 
	**/
	static public function is_datetimetz(array:Dynamic):Dynamic;
	static public function is_dict_like(arg:Dynamic):Dynamic;
	/**
		return a boolean if the dtypes are equal 
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		if we are a klass that is preserved by the internals
		these are internal klasses that we represent (and don't use a np.array)
	**/
	static public function is_extension_type(value:Dynamic):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_floating_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		we have a full length slice 
	**/
	static public function is_full_slice(obj:Dynamic, l:Dynamic):Dynamic;
	/**
		Return True if hash(arg) will succeed, False otherwise.
		
		Some types will pass a test against collections.Hashable but fail when they
		are actually hashed with hash().
		
		Distinguish between these and other types by trying the call to hash() and
		seeing if they raise TypeError.
		
		Examples
		--------
		>>> a = ([],)
		>>> isinstance(a, collections.Hashable)
		True
		>>> is_hashable(a)
		False
	**/
	static public function is_hashable(arg:Dynamic):Dynamic;
	static public function is_int64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_int_or_datetime_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_iterator(obj:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function is_named_tuple(arg:Dynamic):Dynamic;
	/**
		test whether the object is a null datelike, e.g. Nat
		but guard against passing a non-scalar 
	**/
	static public function is_null_datelike_scalar(other:Dynamic):Dynamic;
	/**
		we have a null slice 
	**/
	static public function is_null_slice(obj:Dynamic):Dynamic;
	static public function is_number(obj:Dynamic):Dynamic;
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		numpy doesn't like to compare numeric arrays vs scalar string-likes
		
		return a boolean result if this is the case for a,b or b,a
	**/
	static public function is_numeric_v_string_like(a:Dynamic, b:Dynamic):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return if we are period arraylike / PeriodIndex 
	**/
	static public function is_period_arraylike(arr:Dynamic):Dynamic;
	static public function is_re(obj:Dynamic):Dynamic;
	static public function is_re_compilable(obj:Dynamic):Dynamic;
	static public function is_sequence(x:Dynamic):Dynamic;
	/**
		return if we are a sparse array 
	**/
	static public function is_sparse(array:Dynamic):Dynamic;
	static public function is_string_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_string_like(obj:Dynamic):Dynamic;
	static public function is_string_like_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_timedelta64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public function iteritems(obj:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		seq : sequence
		
		Returns
		-------
		iterator returning overlapping pairs of elements
		
		Examples
		--------
		>>> list(iterpairs([1, 2, 3, 4]))
		[(1, 2), (2, 3), (3, 4)]
	**/
	static public function iterpairs(seq:Dynamic):Dynamic;
	/**
		Returns a dictionary with (element, index) pairs for each element in the
		given array/list
	**/
	static public function map_indices_py(arr:Dynamic):Dynamic;
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
	/**
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
	/**
		Converts input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
	static public function sentinel_factory():Dynamic;
	/**
		Generates tuples of ranges which cover all True value in mask
		
		>>> list(split_ranges([1,0,0,1,0]))
		[(0, 1), (3, 4)]
	**/
	static public function split_ranges(mask:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	static public function union(?seqs:python.VarArgs<Dynamic>):Dynamic;
}