/* This file is generated, do not edit! */
package pandas.core.categorical;
@:pythonImport("pandas.core.categorical") extern class Categorical_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _cat_compare_op(op:Dynamic):Dynamic;
	static public var _categories_doc : Dynamic;
	static public var _codes_doc : Dynamic;
	static public function _convert_to_list_like(list_like:Dynamic):Dynamic;
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Factorize an input `values` into `categories` and `codes`. Preserves
		categorical dtype in `categories`.
		
		*This is an internal function*
		
		Parameters
		----------
		values : list-like
		
		Returns
		-------
		codes : ndarray
		categories : Index
		    If `values` has a categorical dtype, then `categories` is
		    a CategoricalIndex keeping the categories and order of `values`.
	**/
	static public function _factorize_from_iterable(values:Dynamic):Dynamic;
	/**
		A higher-level wrapper over `_factorize_from_iterable`.
		
		*This is an internal function*
		
		Parameters
		----------
		iterables : list-like of list-likes
		
		Returns
		-------
		codes_list : list of ndarrays
		categories_list : list of Indexes
		
		Notes
		-----
		See `_factorize_from_iterable` for more info.
	**/
	static public function _factorize_from_iterables(iterables:Dynamic):Dynamic;
	/**
		utility routine to turn values into codes given the specified categories
	**/
	static public function _get_codes_for_values(values:Dynamic, categories:Dynamic):Dynamic;
	static public var _shared_docs : Dynamic;
	/**
		coerce the indexer input array to the smallest dtype possible 
	**/
	static public function coerce_indexer_dtype(indexer:Dynamic, categories:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str
		    Name of preferred argument in function
		mapping : dict or callable
		    If mapping is present, use it to translate old arguments to
		    new arguments. A callable must do its own value checking;
		    values not found in a dict will be forwarded unchanged.
		
		Examples
		--------
		The following deprecates 'cols', using 'columns' instead
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name='columns')
		... def f(columns=''):
		...     print(columns)
		...
		>>> f(columns='should work ok')
		should work ok
		>>> f(cols='should raise warning')
		FutureWarning: cols is deprecated, use columns instead
		  warnings.warn(msg, FutureWarning)
		should raise warning
		>>> f(cols='should error', columns="can't pass do both")
		TypeError: Can only specify 'cols' or 'columns', not both
		>>> @deprecate_kwarg('old', 'new', {'yes': True, 'no': False})
		... def f(new=False):
		...     print('yes!' if new else 'no!')
		...
		>>> f(old='yes')
		FutureWarning: old='yes' is deprecated, use new=True instead
		  warnings.warn(msg, FutureWarning)
		yes!
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	/**
		Encode input values as an enumerated type or categorical variable
		
		Parameters
		----------
		values : ndarray (1-d)
		    Sequence
		sort : boolean, default False
		    Sort by values
		na_sentinel : int, default -1
		    Value to mark "not found"
		size_hint : hint to the hashtable sizer
		
		Returns
		-------
		labels : the indexer to the original array
		uniques : ndarray (1-d) or Index
		    the unique values. Index is returned when passed values is Index or
		    Series
		
		note: an array of Periods will ignore sort as it returns an always sorted
		PeriodIndex
	**/
	static public function factorize(values:Dynamic, ?sort:Dynamic, ?order:Dynamic, ?na_sentinel:Dynamic, ?size_hint:Dynamic):Dynamic;
	/**
		get_option(pat)
		
		Retrieves the value of the specified option.
		
		Available options:
		
		- compute.[use_bottleneck, use_numexpr]
		- display.[chop_threshold, colheader_justify, column_space, date_dayfirst,
		  date_yearfirst, encoding, expand_frame_repr, float_format, height]
		- display.html.[table_schema]
		- display.[large_repr]
		- display.latex.[escape, longtable, multicolumn, multicolumn_format, multirow,
		  repr]
		- display.[line_width, max_categories, max_columns, max_colwidth,
		  max_info_columns, max_info_rows, max_rows, max_seq_items, memory_usage,
		  mpl_style, multi_sparse, notebook_repr_html, pprint_nest_depth, precision,
		  show_dimensions]
		- display.unicode.[ambiguous_as_wide, east_asian_width]
		- display.[width]
		- html.[border]
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
		
		display.html.table_schema : boolean
		    Whether to publish a Table Schema representation for frontends
		    that support it.
		    (default: False)
		    [default: False] [currently: False]
		
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
		
		html.border : int
		    A ``border=value`` attribute is inserted in the ``<table>`` tag
		    for the DataFrame HTML repr.
		    [default: 1] [currently: 1]
		
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
		Detect terminal size and return tuple = (width, height).
		
		Only to be used when running in a terminal. Note that the IPython notebook,
		IPython zmq frontends, or IDLE do not run in a terminal,
	**/
	static public function get_terminal_size():Dynamic;
	/**
		perform an actual interpolation of values, values will be make 2-d if
		needed fills inplace, returns the result
	**/
	static public function interpolate_2d(values:Dynamic, ?method:Dynamic, ?axis:Dynamic, ?limit:Dynamic, ?fill_value:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether an array-like is a Categorical instance.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is of a Categorical instance.
		
		Examples
		--------
		>>> is_categorical([1, 2, 3])
		False
		
		Categoricals, Series Categoricals, and CategoricalIndex will return True.
		
		>>> cat = pd.Categorical([1, 2, 3])
		>>> is_categorical(cat)
		True
		>>> is_categorical(pd.Series(cat))
		True
		>>> is_categorical(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical(arr:Dynamic):Dynamic;
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
		Check whether an array-like is a datetime-like array-like.
		
		Acceptable datetime-like objects are (but not limited to) datetime
		indices, periodic indices, and timedelta indices.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a datetime-like array-like.
		
		Examples
		--------
		>>> is_datetimelike([1, 2, 3])
		False
		>>> is_datetimelike(pd.Index([1, 2, 3]))
		False
		>>> is_datetimelike(pd.DatetimeIndex([1, 2, 3]))
		True
		>>> is_datetimelike(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		>>> is_datetimelike(pd.PeriodIndex([], freq="A"))
		True
		>>> is_datetimelike(np.array([], dtype=np.datetime64))
		True
		>>> is_datetimelike(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>>
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetimelike(s)
		True
	**/
	static public function is_datetimelike(arr:Dynamic):Dynamic;
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
		we have a null slice 
	**/
	static public function is_null_slice(obj:Dynamic):Dynamic;
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
		Check if the object is a sequence of objects.
		String types are not included as sequences here.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_sequence : bool
		    Whether `obj` is a sequence of objects.
		
		Examples
		--------
		>>> l = [1, 2, 3]
		>>>
		>>> is_sequence(l)
		True
		>>> is_sequence(iter(l))
		False
	**/
	static public function is_sequence(obj:Dynamic):Bool;
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
	static public function lzip(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		we might have a array (or single object) that is datetime like,
		and no dtype is passed don't change the value unless we find a
		datetime/timedelta set
		
		this is pretty strict in that a datetime/timedelta is REQUIRED
		in addition to possible nulls/string likes
		
		Parameters
		----------
		value : np.array / Series / Index / list-like
		convert_dates : boolean, default False
		   if True try really hard to convert dates (such as datetime.date), other
		   leave inferred dtype 'date' alone
	**/
	static public function maybe_infer_to_datetimelike(value:Dynamic, ?convert_dates:Dynamic):Dynamic;
	/**
		coerce to a categorical if a series is given 
	**/
	static public function maybe_to_categorical(array:Dynamic):Dynamic;
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
		Specialized Cython take which sets NaN values in one pass
		
		Parameters
		----------
		arr : ndarray
		    Input array
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indicies are filed with fill_value
		axis : int, default 0
		    Axis to take from
		out : ndarray or None, default None
		    Optional output array, must be appropriate type to hold input and
		    fill_value together, if indexer has any -1 value entries; call
		    _maybe_promote to determine this type for any fill_value
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		mask_info : tuple of (ndarray, boolean)
		    If provided, value should correspond to:
		        (indexer != -1, (indexer != -1).any())
		    If not provided, it will be computed internally if necessary
		allow_fill : boolean, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask.  Result is
		    undefined if allow_fill == False and -1 is present in indexer.
	**/
	static public function take_1d(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?mask_info:Dynamic, ?allow_fill:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
	/**
		Hash table-based unique. Uniques are returned in order
		of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique. Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		unique values.
		  - If the input is an Index, the return is an Index
		  - If the input is a Categorical dtype, the return is a Categorical
		  - If the input is a Series/ndarray, the return will be an ndarray
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(Series([pd.Timestamp('20160101'),
		...                   pd.Timestamp('20160101')]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(pd.Series([pd.Timestamp('20160101', tz='US/Eastern'),
		...                      pd.Timestamp('20160101', tz='US/Eastern')]))
		array([Timestamp('2016-01-01 00:00:00-0500', tz='US/Eastern')],
		      dtype=object)
		
		>>> pd.unique(pd.Index([pd.Timestamp('20160101', tz='US/Eastern'),
		...                     pd.Timestamp('20160101', tz='US/Eastern')]))
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		...           dtype='datetime64[ns, US/Eastern]', freq=None)
		
		>>> pd.unique(list('baabc'))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'),
		...                                 categories=list('abc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'),
		...                                 categories=list('abc'),
		...                                 ordered=True)))
		[b, a, c]
		Categories (3, object): [a < b < c]
		
		An array of tuples
		
		>>> pd.unique([('a', 'b'), ('b', 'a'), ('a', 'c'), ('b', 'a')])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
		
		See Also
		--------
		pandas.Index.unique
		pandas.Series.unique
	**/
	static public function unique1d(values:Dynamic):Dynamic;
	/**
		Ensures that argument passed in arg_name is of type bool. 
	**/
	static public function validate_bool_kwarg(value:Dynamic, arg_name:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}