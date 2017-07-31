/* This file is generated, do not edit! */
package pandas.core.common;
@:pythonImport("pandas.core.common") extern class Common_Module {
	static public function CategoricalDtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DatetimeTZDtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function IntervalDtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function PeriodDtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _NS_DTYPE : Dynamic;
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
	static public function _get_callable_name(obj:Dynamic):Dynamic;
	/**
		Slice the info axis of `obj` with `indexer`.
	**/
	static public function _get_info_slice(obj:Dynamic, indexer:Dynamic):Dynamic;
	static public function _index_labels_to_array(labels:Dynamic):Dynamic;
	/**
		Check if the object is an iterable but not a string.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_iter_not_string : bool
		    Whether `obj` is a non-string iterable.
		
		Examples
		--------
		>>> _iterable_not_string([1, 2, 3])
		True
		>>> _iterable_not_string("foo")
		False
		>>> _iterable_not_string(1)
		False
	**/
	static public function _iterable_not_string(obj:Dynamic):Bool;
	static public function _long_prod(vals:Dynamic):Dynamic;
	static public function _maybe_box(indexer:Dynamic, values:Dynamic, obj:Dynamic, key:Dynamic):Dynamic;
	static public function _maybe_box_datetimelike(value:Dynamic):Dynamic;
	static public function _maybe_make_list(obj:Dynamic):Dynamic;
	static public function _maybe_match_name(a:Dynamic, b:Dynamic):Dynamic;
	static public function _mut_exclusive(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Helper function for processing random_state arguments.
		
		Parameters
		----------
		state : int, np.random.RandomState, None.
		    If receives an int, passes to np.random.RandomState() as seed.
		    If receives an np.random.RandomState object, just returns object.
		    If receives `None`, returns np.random.
		    If receives anything else, raises an informative ValueError.
		    Default None.
		
		Returns
		-------
		np.random.RandomState
	**/
	static public function _random_state(?state:Dynamic):Dynamic;
	static public function _try_sort(iterable:Dynamic):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _where_compat(mask:Dynamic, arr1:Dynamic, arr2:Dynamic):Dynamic;
	static public function array_equivalent(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function difference(a:Dynamic, b:Dynamic):Dynamic;
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
	static public function infer_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function intersection(?seqs:python.VarArgs<Dynamic>):Dynamic;
	static public function is_any_int_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_bool(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_bool_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_bool_indexer(key:Dynamic):Dynamic;
	static public function is_categorical(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_categorical_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_complex(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_complex_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_datetime64_any_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_datetime64_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_datetime64_ns_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_datetime64tz_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_datetime_arraylike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_datetime_or_timedelta_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_datetimelike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_datetimelike_v_numeric(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_datetimelike_v_object(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_datetimetz(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_dict_like(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_dtype_equal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_extension_type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_file_like(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_float(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_float_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_floating_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		we have a full length slice 
	**/
	static public function is_full_slice(obj:Dynamic, l:Dynamic):Dynamic;
	static public function is_hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_int64_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_int_or_datetime_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_integer(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_integer_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_interval(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_interval_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_list_like(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_named_tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		we have a null slice 
	**/
	static public function is_null_slice(obj:Dynamic):Dynamic;
	static public function is_number(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_numeric_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_object_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_period(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_period_arraylike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_period_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_re(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_re_compilable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_scalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_signed_integer_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_sparse(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_string_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_string_like(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_string_like_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_timedelta64_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_timedelta64_ns_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_unsigned_integer_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function outer(?t:Dynamic):Dynamic;
	static public function pandas_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sentinel_factory():Dynamic;
	/**
		Generates tuples of ranges which cover all True value in mask
		
		>>> list(split_ranges([1,0,0,1,0]))
		[(0, 1), (3, 4)]
	**/
	static public function split_ranges(mask:Dynamic):Dynamic;
	static public var t : Dynamic;
	static public function union(?seqs:python.VarArgs<Dynamic>):Dynamic;
	static public function union_categoricals(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}