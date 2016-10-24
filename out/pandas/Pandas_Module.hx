/* This file is generated, do not edit! */
package pandas;
@:pythonImport("pandas") extern class Pandas_Module {
	static public var IndexSlice : Dynamic;
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var _np_version_under1p10 : Dynamic;
	static public var _np_version_under1p11 : Dynamic;
	static public var _np_version_under1p12 : Dynamic;
	static public var _np_version_under1p8 : Dynamic;
	static public var _np_version_under1p9 : Dynamic;
	/**
		Return a fixed frequency datetime index, with business day as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'B' (business daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		    Asia/Beijing
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name for the resulting index
		closed : string or None, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Notes
		-----
		2 of start, end, or periods must be specified
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function bdate_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DatetimeIndex;
	/**
		Concatenate pandas objects along a particular axis with optional set logic
		along the other axes. Can also add a layer of hierarchical indexing on the
		concatenation axis, which may be useful if the labels are the same (or
		overlapping) on the passed axis number
		
		Parameters
		----------
		objs : a sequence or mapping of Series, DataFrame, or Panel objects
		    If a dict is passed, the sorted keys will be used as the `keys`
		    argument, unless it is passed, in which case the values will be
		    selected (see below). Any None objects will be dropped silently unless
		    they are all None in which case a ValueError will be raised
		axis : {0, 1, ...}, default 0
		    The axis to concatenate along
		join : {'inner', 'outer'}, default 'outer'
		    How to handle indexes on other axis(es)
		join_axes : list of Index objects
		    Specific indexes to use for the other n - 1 axes instead of performing
		    inner/outer set logic
		ignore_index : boolean, default False
		    If True, do not use the index values along the concatenation axis. The
		    resulting axis will be labeled 0, ..., n - 1. This is useful if you are
		    concatenating objects where the concatenation axis does not have
		    meaningful indexing information. Note the index values on the other
		    axes are still respected in the join.
		keys : sequence, default None
		    If multiple levels passed, should contain tuples. Construct
		    hierarchical index using the passed keys as the outermost level
		levels : list of sequences, default None
		    Specific levels (unique values) to use for constructing a
		    MultiIndex. Otherwise they will be inferred from the keys
		names : list, default None
		    Names for the levels in the resulting hierarchical index
		verify_integrity : boolean, default False
		    Check whether the new concatenated axis contains duplicates. This can
		    be very expensive relative to the actual data concatenation
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		
		Notes
		-----
		The keys, levels, and names arguments are all optional
		
		Returns
		-------
		concatenated : type of objects
	**/
	static public function concat(objs:Dynamic, ?axis:Dynamic, ?join:Dynamic, ?join_axes:Dynamic, ?ignore_index:Dynamic, ?keys:Dynamic, ?levels:Dynamic, ?names:Dynamic, ?verify_integrity:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Compute a simple cross-tabulation of two (or more) factors. By default
		computes a frequency table of the factors unless an array of values and an
		aggregation function are passed
		
		Parameters
		----------
		index : array-like, Series, or list of arrays/Series
		    Values to group by in the rows
		columns : array-like, Series, or list of arrays/Series
		    Values to group by in the columns
		values : array-like, optional
		    Array of values to aggregate according to the factors.
		    Requires `aggfunc` be specified.
		aggfunc : function, optional
		    If specified, requires `values` be specified as well
		rownames : sequence, default None
		    If passed, must match number of row arrays passed
		colnames : sequence, default None
		    If passed, must match number of column arrays passed
		margins : boolean, default False
		    Add row/column margins (subtotals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		normalize : boolean, {'all', 'index', 'columns'}, or {0,1}, default False
		    Normalize by dividing all values by the sum of values.
		
		    - If passed 'all' or `True`, will normalize over all values.
		    - If passed 'index' will normalize over each row.
		    - If passed 'columns' will normalize over each column.
		    - If margins is `True`, will also normalize margin values.
		
		    .. versionadded:: 0.18.1
		
		
		Notes
		-----
		Any Series passed will have their name attributes used unless row or column
		names for the cross-tabulation are specified.
		
		Any input passed containing Categorical data will have **all** of its
		categories included in the cross-tabulation, even if the actual data does
		not contain any instances of a particular category.
		
		In the event that there aren't overlapping indexes an empty DataFrame will
		be returned.
		
		Examples
		--------
		>>> a
		array([foo, foo, foo, foo, bar, bar,
		       bar, bar, foo, foo, foo], dtype=object)
		>>> b
		array([one, one, one, two, one, one,
		       one, two, two, two, one], dtype=object)
		>>> c
		array([dull, dull, shiny, dull, dull, shiny,
		       shiny, dull, shiny, shiny, shiny], dtype=object)
		
		>>> crosstab(a, [b, c], rownames=['a'], colnames=['b', 'c'])
		b    one          two
		c    dull  shiny  dull  shiny
		a
		bar  1     2      1     0
		foo  2     2      1     2
		
		>>> foo = pd.Categorical(['a', 'b'], categories=['a', 'b', 'c'])
		>>> bar = pd.Categorical(['d', 'e'], categories=['d', 'e', 'f'])
		>>> crosstab(foo, bar)  # 'c' and 'f' are not represented in the data,
		                        # but they still will be counted in the output
		col_0  d  e  f
		row_0
		a      1  0  0
		b      0  1  0
		c      0  0  0
		
		Returns
		-------
		crosstab : DataFrame
	**/
	static public function crosstab(index:Dynamic, columns:Dynamic, ?values:Dynamic, ?rownames:Dynamic, ?colnames:Dynamic, ?aggfunc:Dynamic, ?margins:Dynamic, ?dropna:Dynamic, ?normalize:Dynamic):pandas.DataFrame;
	/**
		Return indices of half-open bins to which each value of `x` belongs.
		
		Parameters
		----------
		x : array-like
		    Input array to be binned. It has to be 1-dimensional.
		bins : int or sequence of scalars
		    If `bins` is an int, it defines the number of equal-width bins in the
		    range of `x`. However, in this case, the range of `x` is extended
		    by .1% on each side to include the min or max values of `x`. If
		    `bins` is a sequence it defines the bin edges allowing for
		    non-uniform bin width. No extension of the range of `x` is done in
		    this case.
		right : bool, optional
		    Indicates whether the bins include the rightmost edge or not. If
		    right == True (the default), then the bins [1,2,3,4] indicate
		    (1,2], (2,3], (3,4].
		labels : array or boolean, default None
		    Used as labels for the resulting bins. Must be of the same length as
		    the resulting bins. If False, return only integer indicators of the
		    bins.
		retbins : bool, optional
		    Whether to return the bins or not. Can be useful if bins is given
		    as a scalar.
		precision : int
		    The precision at which to store and display the bins labels
		include_lowest : bool
		    Whether the first interval should be left-inclusive or not.
		
		Returns
		-------
		out : Categorical or Series or array of integers if labels is False
		    The return type (Categorical or Series) depends on the input: a Series
		    of type category if input is a Series else Categorical. Bins are
		    represented as categories when categorical data is returned.
		bins : ndarray of floats
		    Returned only if `retbins` is True.
		
		Notes
		-----
		The `cut` function can be useful for going from a continuous variable to
		a categorical variable. For example, `cut` could convert ages to groups
		of age ranges.
		
		Any NA values will be NA in the result.  Out of bounds values will be NA in
		the resulting Categorical object
		
		
		Examples
		--------
		>>> pd.cut(np.array([.2, 1.4, 2.5, 6.2, 9.7, 2.1]), 3, retbins=True)
		([(0.191, 3.367], (0.191, 3.367], (0.191, 3.367], (3.367, 6.533],
		  (6.533, 9.7], (0.191, 3.367]]
		Categories (3, object): [(0.191, 3.367] < (3.367, 6.533] < (6.533, 9.7]],
		array([ 0.1905    ,  3.36666667,  6.53333333,  9.7       ]))
		>>> pd.cut(np.array([.2, 1.4, 2.5, 6.2, 9.7, 2.1]), 3,
		           labels=["good","medium","bad"])
		[good, good, good, medium, bad, good]
		Categories (3, object): [good < medium < bad]
		>>> pd.cut(np.ones(5), 4, labels=False)
		array([1, 1, 1, 1, 1], dtype=int64)
	**/
	static public function cut(x:Dynamic, bins:Dynamic, ?right:Dynamic, ?labels:Dynamic, ?retbins:Dynamic, ?precision:Dynamic, ?include_lowest:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		Asia/Hong_Kong
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name of the resulting index
		closed : string or None, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Notes
		-----
		2 of start, end, or periods must be specified
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function date_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DatetimeIndex;
	static public var datetools : Dynamic;
	/**
		describe_option(pat, _print_desc=False)
		
		Prints the description for one or more registered options.
		
		Call with not arguments to get a listing for all registered options.
		
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
		- html.[border]
		- io.excel.xls.[writer]
		- io.excel.xlsm.[writer]
		- io.excel.xlsx.[writer]
		- io.hdf.[default_format, dropna_table]
		- mode.[chained_assignment, sim_interactive, use_inf_as_null]
		
		Parameters
		----------
		pat : str
		    Regexp pattern. All matching keys will have their description displayed.
		_print_desc : bool, default True
		    If True (default) the description(s) will be printed to stdout.
		    Otherwise, the description(s) will be returned as a unicode string
		    (for testing).
		
		Returns
		-------
		None by default, the description(s) as a unicode string if _print_desc
		is False
		
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
	static public function describe_option(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Evaluate a Python expression as a string using various backends.
		
		The following arithmetic operations are supported: ``+``, ``-``, ``*``,
		``/``, ``**``, ``%``, ``//`` (python engine only) along with the following
		boolean operations: ``|`` (or), ``&`` (and), and ``~`` (not).
		Additionally, the ``'pandas'`` parser allows the use of :keyword:`and`,
		:keyword:`or`, and :keyword:`not` with the same semantics as the
		corresponding bitwise operators.  :class:`~pandas.Series` and
		:class:`~pandas.DataFrame` objects are supported and behave as they would
		with plain ol' Python evaluation.
		
		Parameters
		----------
		expr : str or unicode
		    The expression to evaluate. This string cannot contain any Python
		    `statements
		    <http://docs.python.org/2/reference/simple_stmts.html#simple-statements>`__,
		    only Python `expressions
		    <http://docs.python.org/2/reference/simple_stmts.html#expression-statements>`__.
		parser : string, default 'pandas', {'pandas', 'python'}
		    The parser to use to construct the syntax tree from the expression. The
		    default of ``'pandas'`` parses code slightly different than standard
		    Python. Alternatively, you can parse an expression using the
		    ``'python'`` parser to retain strict Python semantics.  See the
		    :ref:`enhancing performance <enhancingperf.eval>` documentation for
		    more details.
		engine : string or None, default 'numexpr', {'python', 'numexpr'}
		
		    The engine used to evaluate the expression. Supported engines are
		
		    - None         : tries to use ``numexpr``, falls back to ``python``
		    - ``'numexpr'``: This default engine evaluates pandas objects using
		                     numexpr for large speed ups in complex expressions
		                     with large frames.
		    - ``'python'``: Performs operations as if you had ``eval``'d in top
		                    level python. This engine is generally not that useful.
		
		    More backends may be available in the future.
		
		truediv : bool, optional
		    Whether to use true division, like in Python >= 3
		local_dict : dict or None, optional
		    A dictionary of local variables, taken from locals() by default.
		global_dict : dict or None, optional
		    A dictionary of global variables, taken from globals() by default.
		resolvers : list of dict-like or None, optional
		    A list of objects implementing the ``__getitem__`` special method that
		    you can use to inject an additional collection of namespaces to use for
		    variable lookup. For example, this is used in the
		    :meth:`~pandas.DataFrame.query` method to inject the
		    :attr:`~pandas.DataFrame.index` and :attr:`~pandas.DataFrame.columns`
		    variables that refer to their respective :class:`~pandas.DataFrame`
		    instance attributes.
		level : int, optional
		    The number of prior stack frames to traverse and add to the current
		    scope. Most users will **not** need to change this parameter.
		target : a target object for assignment, optional, default is None
		    essentially this is a passed in resolver
		inplace : bool, default True
		    If expression mutates, whether to modify object inplace or return
		    copy with mutation.
		
		    WARNING: inplace=None currently falls back to to True, but
		    in a future version, will default to False.  Use inplace=True
		    explicitly rather than relying on the default.
		
		Returns
		-------
		ndarray, numeric scalar, DataFrame, Series
		
		Notes
		-----
		The ``dtype`` of any objects involved in an arithmetic ``%`` operation are
		recursively cast to ``float64``.
		
		See the :ref:`enhancing performance <enhancingperf.eval>` documentation for
		more details.
		
		See Also
		--------
		pandas.DataFrame.query
		pandas.DataFrame.eval
	**/
	static public function eval(expr:Dynamic, ?parser:Dynamic, ?engine:Dynamic, ?truediv:Dynamic, ?local_dict:Dynamic, ?global_dict:Dynamic, ?resolvers:Dynamic, ?level:Dynamic, ?target:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving average
		
		Parameters
		----------
		arg : Series, DataFrame
		com : float, optional
		    Specify decay in terms of center of mass,
		    :math:`\alpha = 1 / (1 + com),\text{ for } com \geq 0`
		span : float, optional
		    Specify decay in terms of span,
		    :math:`\alpha = 2 / (span + 1),\text{ for } span \geq 1`
		halflife : float, optional
		    Specify decay in terms of half-life,
		    :math:`\alpha = 1 - exp(log(0.5) / halflife),\text{ for } halflife > 0`
		alpha : float, optional
		    Specify smoothing factor :math:`\alpha` directly,
		    :math:`0 < \alpha \leq 1`
		
		    .. versionadded:: 0.18.0
		
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Exactly one of center of mass, span, half-life, and alpha must be provided.
		Allowed values and relationship between the parameters are specified in the
		parameter descriptions above; see the link at the end of this section for
		a detailed explanation.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
		
		More details can be found at
		http://pandas.pydata.org/pandas-docs/stable/computation.html#exponentially-weighted-windows
	**/
	static public function ewma(arg:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?alpha:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?adjust:Dynamic, ?how:Dynamic, ?ignore_na:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving correlation
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		com : float, optional
		    Specify decay in terms of center of mass,
		    :math:`\alpha = 1 / (1 + com),\text{ for } com \geq 0`
		span : float, optional
		    Specify decay in terms of span,
		    :math:`\alpha = 2 / (span + 1),\text{ for } span \geq 1`
		halflife : float, optional
		    Specify decay in terms of half-life,
		    :math:`\alpha = 1 - exp(log(0.5) / halflife),\text{ for } halflife > 0`
		alpha : float, optional
		    Specify smoothing factor :math:`\alpha` directly,
		    :math:`0 < \alpha \leq 1`
		
		    .. versionadded:: 0.18.0
		
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Exactly one of center of mass, span, half-life, and alpha must be provided.
		Allowed values and relationship between the parameters are specified in the
		parameter descriptions above; see the link at the end of this section for
		a detailed explanation.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
		
		More details can be found at
		http://pandas.pydata.org/pandas-docs/stable/computation.html#exponentially-weighted-windows
	**/
	static public function ewmcorr(arg1:Dynamic, ?arg2:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?alpha:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?pairwise:Dynamic, ?how:Dynamic, ?ignore_na:Dynamic, ?adjust:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving covariance
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		com : float, optional
		    Specify decay in terms of center of mass,
		    :math:`\alpha = 1 / (1 + com),\text{ for } com \geq 0`
		span : float, optional
		    Specify decay in terms of span,
		    :math:`\alpha = 2 / (span + 1),\text{ for } span \geq 1`
		halflife : float, optional
		    Specify decay in terms of half-life,
		    :math:`\alpha = 1 - exp(log(0.5) / halflife),\text{ for } halflife > 0`
		alpha : float, optional
		    Specify smoothing factor :math:`\alpha` directly,
		    :math:`0 < \alpha \leq 1`
		
		    .. versionadded:: 0.18.0
		
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Exactly one of center of mass, span, half-life, and alpha must be provided.
		Allowed values and relationship between the parameters are specified in the
		parameter descriptions above; see the link at the end of this section for
		a detailed explanation.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
		
		More details can be found at
		http://pandas.pydata.org/pandas-docs/stable/computation.html#exponentially-weighted-windows
	**/
	static public function ewmcov(arg1:Dynamic, ?arg2:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?alpha:Dynamic, ?min_periods:Dynamic, ?bias:Dynamic, ?freq:Dynamic, ?pairwise:Dynamic, ?how:Dynamic, ?ignore_na:Dynamic, ?adjust:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving std
		
		Parameters
		----------
		arg : Series, DataFrame
		com : float, optional
		    Specify decay in terms of center of mass,
		    :math:`\alpha = 1 / (1 + com),\text{ for } com \geq 0`
		span : float, optional
		    Specify decay in terms of span,
		    :math:`\alpha = 2 / (span + 1),\text{ for } span \geq 1`
		halflife : float, optional
		    Specify decay in terms of half-life,
		    :math:`\alpha = 1 - exp(log(0.5) / halflife),\text{ for } halflife > 0`
		alpha : float, optional
		    Specify smoothing factor :math:`\alpha` directly,
		    :math:`0 < \alpha \leq 1`
		
		    .. versionadded:: 0.18.0
		
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		bias : boolean, default False
		    Use a standard estimation bias correction
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Exactly one of center of mass, span, half-life, and alpha must be provided.
		Allowed values and relationship between the parameters are specified in the
		parameter descriptions above; see the link at the end of this section for
		a detailed explanation.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
		
		More details can be found at
		http://pandas.pydata.org/pandas-docs/stable/computation.html#exponentially-weighted-windows
	**/
	static public function ewmstd(arg:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?alpha:Dynamic, ?min_periods:Dynamic, ?bias:Dynamic, ?freq:Dynamic, ?how:Dynamic, ?ignore_na:Dynamic, ?adjust:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving variance
		
		Parameters
		----------
		arg : Series, DataFrame
		com : float, optional
		    Specify decay in terms of center of mass,
		    :math:`\alpha = 1 / (1 + com),\text{ for } com \geq 0`
		span : float, optional
		    Specify decay in terms of span,
		    :math:`\alpha = 2 / (span + 1),\text{ for } span \geq 1`
		halflife : float, optional
		    Specify decay in terms of half-life,
		    :math:`\alpha = 1 - exp(log(0.5) / halflife),\text{ for } halflife > 0`
		alpha : float, optional
		    Specify smoothing factor :math:`\alpha` directly,
		    :math:`0 < \alpha \leq 1`
		
		    .. versionadded:: 0.18.0
		
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		bias : boolean, default False
		    Use a standard estimation bias correction
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Exactly one of center of mass, span, half-life, and alpha must be provided.
		Allowed values and relationship between the parameters are specified in the
		parameter descriptions above; see the link at the end of this section for
		a detailed explanation.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
		
		More details can be found at
		http://pandas.pydata.org/pandas-docs/stable/computation.html#exponentially-weighted-windows
	**/
	static public function ewmvar(arg:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?alpha:Dynamic, ?min_periods:Dynamic, ?bias:Dynamic, ?freq:Dynamic, ?how:Dynamic, ?ignore_na:Dynamic, ?adjust:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving std
		
		Parameters
		----------
		arg : Series, DataFrame
		com : float, optional
		    Specify decay in terms of center of mass,
		    :math:`\alpha = 1 / (1 + com),\text{ for } com \geq 0`
		span : float, optional
		    Specify decay in terms of span,
		    :math:`\alpha = 2 / (span + 1),\text{ for } span \geq 1`
		halflife : float, optional
		    Specify decay in terms of half-life,
		    :math:`\alpha = 1 - exp(log(0.5) / halflife),\text{ for } halflife > 0`
		alpha : float, optional
		    Specify smoothing factor :math:`\alpha` directly,
		    :math:`0 < \alpha \leq 1`
		
		    .. versionadded:: 0.18.0
		
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		bias : boolean, default False
		    Use a standard estimation bias correction
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Exactly one of center of mass, span, half-life, and alpha must be provided.
		Allowed values and relationship between the parameters are specified in the
		parameter descriptions above; see the link at the end of this section for
		a detailed explanation.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
		
		More details can be found at
		http://pandas.pydata.org/pandas-docs/stable/computation.html#exponentially-weighted-windows
	**/
	static public function ewmvol(arg:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?alpha:Dynamic, ?min_periods:Dynamic, ?bias:Dynamic, ?freq:Dynamic, ?how:Dynamic, ?ignore_na:Dynamic, ?adjust:Dynamic):Dynamic;
	/**
		Generic expanding function application.
		
		Parameters
		----------
		arg : Series, DataFrame
		func : function
		    Must produce a single value from an ndarray input
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the
		    statistic. Specified as a frequency string or DateOffset object.
		args : tuple
		    Passed on to func
		kwargs : dict
		    Passed on to func
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	static public function expanding_apply(arg:Dynamic, func:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Expanding sample correlation.
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		
		Returns
		-------
		y : type depends on inputs
		    DataFrame / DataFrame -> DataFrame (matches on columns) or Panel (pairwise)
		    DataFrame / Series -> Computes result for each column
		    Series / Series -> Series
	**/
	static public function expanding_corr(arg1:Dynamic, ?arg2:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?pairwise:Dynamic):Dynamic;
	/**
		Expanding count of number of non-NaN observations.
		
		Parameters
		----------
		arg :  DataFrame or numpy ndarray-like
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the
		    statistic. Specified as a frequency string or DateOffset object.
		
		Returns
		-------
		expanding_count : type of caller
		
		Notes
		-----
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	static public function expanding_count(arg:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Unbiased expanding covariance.
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type depends on inputs
		    DataFrame / DataFrame -> DataFrame (matches on columns) or Panel (pairwise)
		    DataFrame / Series -> Computes result for each column
		    Series / Series -> Series
	**/
	static public function expanding_cov(arg1:Dynamic, ?arg2:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?pairwise:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		Unbiased expanding kurtosis.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_kurt(arg:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Expanding maximum.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_max(arg:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Expanding mean.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_mean(arg:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Expanding median.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_median(arg:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Expanding minimum.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_min(arg:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Expanding quantile.
		
		Parameters
		----------
		arg : Series, DataFrame
		quantile : float
		    0 <= quantile <= 1
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the
		    statistic. Specified as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	static public function expanding_quantile(arg:Dynamic, quantile:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Unbiased expanding skewness.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_skew(arg:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Expanding standard deviation.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_std(arg:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Expanding sum.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_sum(arg:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Expanding variance.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_var(arg:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Runs Fama-MacBeth regression.
		
		Parameters
		----------
		Takes the same arguments as a panel OLS, in addition to:
		
		nw_lags_beta: int
		   Newey-West adjusts the betas by the given lags
		   
	**/
	static public function fama_macbeth(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert categorical variable into dummy/indicator variables
		
		Parameters
		----------
		data : array-like, Series, or DataFrame
		prefix : string, list of strings, or dict of strings, default None
		    String to append DataFrame column names
		    Pass a list with length equal to the number of columns
		    when calling get_dummies on a DataFrame. Alternativly, `prefix`
		    can be a dictionary mapping column names to prefixes.
		prefix_sep : string, default '_'
		    If appending prefix, separator/delimiter to use. Or pass a
		    list or dictionary as with `prefix.`
		dummy_na : bool, default False
		    Add a column to indicate NaNs, if False NaNs are ignored.
		columns : list-like, default None
		    Column names in the DataFrame to be encoded.
		    If `columns` is None then all the columns with
		    `object` or `category` dtype will be converted.
		sparse : bool, default False
		    Whether the dummy columns should be sparse or not.  Returns
		    SparseDataFrame if `data` is a Series or if all columns are included.
		    Otherwise returns a DataFrame with some SparseBlocks.
		
		    .. versionadded:: 0.16.1
		drop_first : bool, default False
		    Whether to get k-1 dummies out of k categorical levels by removing the
		    first level.
		
		    .. versionadded:: 0.18.0
		Returns
		-------
		dummies : DataFrame or SparseDataFrame
		
		Examples
		--------
		>>> import pandas as pd
		>>> s = pd.Series(list('abca'))
		
		>>> pd.get_dummies(s)
		   a  b  c
		0  1  0  0
		1  0  1  0
		2  0  0  1
		3  1  0  0
		
		>>> s1 = ['a', 'b', np.nan]
		
		>>> pd.get_dummies(s1)
		   a  b
		0  1  0
		1  0  1
		2  0  0
		
		>>> pd.get_dummies(s1, dummy_na=True)
		   a  b  NaN
		0  1  0    0
		1  0  1    0
		2  0  0    1
		
		>>> df = pd.DataFrame({'A': ['a', 'b', 'a'], 'B': ['b', 'a', 'c'],
		                    'C': [1, 2, 3]})
		
		>>> pd.get_dummies(df, prefix=['col1', 'col2'])
		   C  col1_a  col1_b  col2_a  col2_b  col2_c
		0  1       1       0       0       1       0
		1  2       0       1       1       0       0
		2  3       1       0       0       0       1
		
		>>> pd.get_dummies(pd.Series(list('abcaa')))
		   a  b  c
		0  1  0  0
		1  0  1  0
		2  0  0  1
		3  1  0  0
		4  1  0  0
		
		>>> pd.get_dummies(pd.Series(list('abcaa')), drop_first=True))
		   b  c
		0  0  0
		1  1  0
		2  0  1
		3  0  0
		4  0  0
		
		See Also
		--------
		Series.str.get_dummies
	**/
	static public function get_dummies(data:Dynamic, ?prefix:Dynamic, ?prefix_sep:Dynamic, ?dummy_na:Dynamic, ?columns:Dynamic, ?sparse:Dynamic, ?drop_first:Dynamic):Dynamic;
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
		Backwards compatible alias for ``HDFStore``
		    
	**/
	static public function get_store(path:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Class for grouping and aggregating relational data. See aggregate,
		transform, and apply functions on this object.
		
		It's easiest to use obj.groupby(...) to use GroupBy, but you can also do:
		
		::
		
		    grouped = groupby(obj, ...)
		
		Parameters
		----------
		obj : pandas object
		axis : int, default 0
		level : int, default None
		    Level of MultiIndex
		groupings : list of Grouping objects
		    Most users should ignore this
		exclusions : array-like, optional
		    List of columns to exclude
		name : string
		    Most users should ignore this
		
		Notes
		-----
		After grouping, see aggregate, apply, and transform functions. Here are
		some other brief notes about usage. When grouping by multiple groups, the
		result index will be a MultiIndex (hierarchical) by default.
		
		Iteration produces (key, group) tuples, i.e. chunking the data by group. So
		you can write code like:
		
		::
		
		    grouped = obj.groupby(keys, axis=axis)
		    for key, group in grouped:
		        # do something with the data
		
		Function calls on GroupBy, if not specially implemented, "dispatch" to the
		grouped data. So if you group a DataFrame and wish to invoke the std()
		method on each group, you can simply do:
		
		::
		
		    df.groupby(mapper).std()
		
		rather than
		
		::
		
		    df.groupby(mapper).aggregate(np.std)
		
		You can pass arguments to these "wrapped" functions, too.
		
		See the online documentation for full exposition on these topics and much
		more
		
		Returns
		-------
		**Attributes**
		groups : dict
		    {group name -> group labels}
		len(grouped) : int
		    Number of groups
	**/
	static public function groupby(obj:Dynamic, by:Dynamic, ?kwds:python.KwArgs<Dynamic>):Int;
	/**
		Infer the most likely frequency given the input index. If the frequency is
		uncertain, a warning will be printed.
		
		Parameters
		----------
		index : DatetimeIndex or TimedeltaIndex
		  if passed a Series will use the values of the series (NOT THE INDEX)
		warn : boolean, default True
		
		Returns
		-------
		freq : string or None
		    None if no discernible frequency
		    TypeError if the index is not datetime-like
		    ValueError if there are less than three values.
	**/
	static public function infer_freq(index:Dynamic, ?warn:Dynamic):Dynamic;
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
	/**
		Reshape long-format data to wide. Generalized inverse of DataFrame.pivot
		
		Parameters
		----------
		data : DataFrame
		groups : dict
		    {new_name : list_of_columns}
		dropna : boolean, default True
		
		Examples
		--------
		>>> import pandas as pd
		>>> data = pd.DataFrame({'hr1': [514, 573], 'hr2': [545, 526],
		...                      'team': ['Red Sox', 'Yankees'],
		...                      'year1': [2007, 2008], 'year2': [2008, 2008]})
		>>> data
		   hr1  hr2     team  year1  year2
		0  514  545  Red Sox   2007   2008
		1  573  526  Yankees   2007   2008
		
		>>> pd.lreshape(data, {'year': ['year1', 'year2'], 'hr': ['hr1', 'hr2']})
		      team   hr  year
		0  Red Sox  514  2007
		1  Yankees  573  2007
		2  Red Sox  545  2008
		3  Yankees  526  2008
		
		Returns
		-------
		reshaped : DataFrame
	**/
	static public function lreshape(data:Dynamic, groups:Dynamic, ?dropna:Dynamic, ?label:Dynamic):pandas.DataFrame;
	/**
		Compute locations of to_match into values
		
		Parameters
		----------
		to_match : array-like
		    values to find positions of
		values : array-like
		    Unique set of values
		na_sentinel : int, default -1
		    Value to mark "not found"
		
		Examples
		--------
		
		Returns
		-------
		match : ndarray of integers
	**/
	static public function match(to_match:Dynamic, values:Dynamic, ?na_sentinel:Dynamic):Dynamic;
	/**
		"Unpivots" a DataFrame from wide format to long format, optionally leaving
		identifier variables set.
		
		This function is useful to massage a DataFrame into a format where one
		or more columns are identifier variables (`id_vars`), while all other
		columns, considered measured variables (`value_vars`), are "unpivoted" to
		the row axis, leaving just two non-identifier columns, 'variable' and
		'value'.
		
		Parameters
		----------
		frame : DataFrame
		id_vars : tuple, list, or ndarray, optional
		    Column(s) to use as identifier variables.
		value_vars : tuple, list, or ndarray, optional
		    Column(s) to unpivot. If not specified, uses all columns that
		    are not set as `id_vars`.
		var_name : scalar
		    Name to use for the 'variable' column. If None it uses
		    ``frame.columns.name`` or 'variable'.
		value_name : scalar, default 'value'
		    Name to use for the 'value' column.
		col_level : int or string, optional
		    If columns are a MultiIndex then use this level to melt.
		
		See also
		--------
		pivot_table
		DataFrame.pivot
		
		Examples
		--------
		>>> import pandas as pd
		>>> df = pd.DataFrame({'A': {0: 'a', 1: 'b', 2: 'c'},
		...                    'B': {0: 1, 1: 3, 2: 5},
		...                    'C': {0: 2, 1: 4, 2: 6}})
		>>> df
		   A  B  C
		0  a  1  2
		1  b  3  4
		2  c  5  6
		
		>>> pd.melt(df, id_vars=['A'], value_vars=['B'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		
		>>> pd.melt(df, id_vars=['A'], value_vars=['B', 'C'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		3  a        C      2
		4  b        C      4
		5  c        C      6
		
		The names of 'variable' and 'value' columns can be customized:
		
		>>> pd.melt(df, id_vars=['A'], value_vars=['B'],
		...         var_name='myVarname', value_name='myValname')
		   A myVarname  myValname
		0  a         B          1
		1  b         B          3
		2  c         B          5
		
		If you have multi-index columns:
		
		>>> df.columns = [list('ABC'), list('DEF')]
		>>> df
		   A  B  C
		   D  E  F
		0  a  1  2
		1  b  3  4
		2  c  5  6
		
		>>> pd.melt(df, col_level=0, id_vars=['A'], value_vars=['B'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		
		>>> pd.melt(df, id_vars=[('A', 'D')], value_vars=[('B', 'E')])
		  (A, D) variable_0 variable_1  value
		0      a          B          E      1
		1      b          B          E      3
		2      c          B          E      5
	**/
	static public function melt(frame:Dynamic, ?id_vars:Dynamic, ?value_vars:Dynamic, ?var_name:Dynamic, ?value_name:Dynamic, ?col_level:Dynamic):Dynamic;
	/**
		Merge DataFrame objects by performing a database-style join operation by
		columns or indexes.
		
		If joining columns on columns, the DataFrame indexes *will be
		ignored*. Otherwise if joining indexes on indexes or indexes on a column or
		columns, the index will be passed on.
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		how : {'left', 'right', 'outer', 'inner'}, default 'inner'
		    * left: use only keys from left frame (SQL: left outer join)
		    * right: use only keys from right frame (SQL: right outer join)
		    * outer: use union of keys from both frames (SQL: full outer join)
		    * inner: use intersection of keys from both frames (SQL: inner join)
		on : label or list
		    Field names to join on. Must be found in both DataFrames. If on is
		    None and not merging on indexes, then it merges on the intersection of
		    the columns by default.
		left_on : label or list, or array-like
		    Field names to join on in left DataFrame. Can be a vector or list of
		    vectors of the length of the DataFrame to use a particular vector as
		    the join key instead of columns
		right_on : label or list, or array-like
		    Field names to join on in right DataFrame or vector/list of vectors per
		    left_on docs
		left_index : boolean, default False
		    Use the index from the left DataFrame as the join key(s). If it is a
		    MultiIndex, the number of keys in the other DataFrame (either the index
		    or a number of columns) must match the number of levels
		right_index : boolean, default False
		    Use the index from the right DataFrame as the join key. Same caveats as
		    left_index
		sort : boolean, default False
		    Sort the join keys lexicographically in the result DataFrame
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		indicator : boolean or string, default False
		    If True, adds a column to output DataFrame called "_merge" with
		    information on the source of each row.
		    If string, column with information on source of each row will be added to
		    output DataFrame, and column will be named value of string.
		    Information column is Categorical-type and takes on a value of "left_only"
		    for observations whose merge key only appears in 'left' DataFrame,
		    "right_only" for observations whose merge key only appears in 'right'
		    DataFrame, and "both" if the observation's merge key is found in both.
		
		    .. versionadded:: 0.17.0
		
		Examples
		--------
		
		>>> A              >>> B
		    lkey value         rkey value
		0   foo  1         0   foo  5
		1   bar  2         1   bar  6
		2   baz  3         2   qux  7
		3   foo  4         3   bar  8
		
		>>> A.merge(B, left_on='lkey', right_on='rkey', how='outer')
		   lkey  value_x  rkey  value_y
		0  foo   1        foo   5
		1  foo   4        foo   5
		2  bar   2        bar   6
		3  bar   2        bar   8
		4  baz   3        NaN   NaN
		5  NaN   NaN      qux   7
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
		
		See also
		--------
		merge_ordered
		merge_asof
	**/
	static public function merge(left:Dynamic, right:Dynamic, ?how:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?sort:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?indicator:Dynamic):pandas.DataFrame;
	/**
		Perform an asof merge. This is similar to a left-join except that we
		match on nearest key rather than equal keys.
		
		For each row in the left DataFrame, we select the last row in the right
		DataFrame whose 'on' key is less than or equal to the left's key. Both
		DataFrames must be sorted by the key.
		
		Optionally perform group-wise merge. This searches for the nearest match
		on the 'on' key within the same group according to 'by'.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label
		    Field name to join on. Must be found in both DataFrames.
		    The data MUST be ordered. Furthermore this must be a numeric column,
		    such as datetimelike, integer, or float. On or left_on/right_on
		    must be given.
		left_on : label
		    Field name to join on in left DataFrame.
		right_on : label
		    Field name to join on in right DataFrame.
		by : column name
		    Group both the left and right DataFrames by the group column; perform
		    the merge operation on these pieces and recombine.
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		tolerance : integer or Timedelta, optional, default None
		    select asof tolerance within this range; must be compatible
		    to the merge index.
		allow_exact_matches : boolean, default True
		
		    - If True, allow matching the same 'on' value
		      (i.e. less-than-or-equal-to)
		    - If False, don't match the same 'on' value
		      (i.e., stricly less-than)
		
		Returns
		-------
		merged : DataFrame
		
		Examples
		--------
		>>> left
		    a left_val
		0   1        a
		1   5        b
		2  10        c
		
		>>> right
		   a  right_val
		0  1          1
		1  2          2
		2  3          3
		3  6          6
		4  7          7
		
		>>> pd.merge_asof(left, right, on='a')
		    a left_val  right_val
		0   1        a          1
		1   5        b          3
		2  10        c          7
		
		>>> pd.merge_asof(left, right, on='a', allow_exact_matches=False)
		    a left_val  right_val
		0   1        a        NaN
		1   5        b        3.0
		2  10        c        7.0
		
		For this example, we can achieve a similar result thru
		``pd.merge_ordered()``, though its not nearly as performant.
		
		>>> (pd.merge_ordered(left, right, on='a')
		...    .ffill()
		...    .drop_duplicates(['left_val'])
		... )
		    a left_val  right_val
		0   1        a        1.0
		3   5        b        3.0
		6  10        c        7.0
		
		Here is a real-world times-series example
		
		>>> quotes
		                     time ticker     bid     ask
		0 2016-05-25 13:30:00.023   GOOG  720.50  720.93
		1 2016-05-25 13:30:00.023   MSFT   51.95   51.96
		2 2016-05-25 13:30:00.030   MSFT   51.97   51.98
		3 2016-05-25 13:30:00.041   MSFT   51.99   52.00
		4 2016-05-25 13:30:00.048   GOOG  720.50  720.93
		5 2016-05-25 13:30:00.049   AAPL   97.99   98.01
		6 2016-05-25 13:30:00.072   GOOG  720.50  720.88
		7 2016-05-25 13:30:00.075   MSFT   52.01   52.03
		
		>>> trades
		                     time ticker   price  quantity
		0 2016-05-25 13:30:00.023   MSFT   51.95        75
		1 2016-05-25 13:30:00.038   MSFT   51.95       155
		2 2016-05-25 13:30:00.048   GOOG  720.77       100
		3 2016-05-25 13:30:00.048   GOOG  720.92       100
		4 2016-05-25 13:30:00.048   AAPL   98.00       100
		
		By default we are taking the asof of the quotes
		
		>>> pd.asof_merge(trades, quotes,
		...                       on='time',
		...                       by='ticker')
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
		1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		We only asof within 2ms betwen the quote time and the trade time
		
		>>> pd.asof_merge(trades, quotes,
		...                       on='time',
		...                       by='ticker',
		...                       tolerance=pd.Timedelta('2ms'))
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
		1 2016-05-25 13:30:00.038   MSFT   51.95       155     NaN     NaN
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		We only asof within 10ms betwen the quote time and the trade time
		and we exclude exact matches on time. However *prior* data will
		propogate forward
		
		>>> pd.asof_merge(trades, quotes,
		...                       on='time',
		...                       by='ticker',
		...                       tolerance=pd.Timedelta('10ms'),
		...                       allow_exact_matches=False)
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75     NaN     NaN
		1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		See also
		--------
		merge
		merge_ordered
	**/
	static public function merge_asof(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?by:Dynamic, ?suffixes:Dynamic, ?tolerance:Dynamic, ?allow_exact_matches:Dynamic):pandas.DataFrame;
	/**
		Perform merge with optional filling/interpolation designed for ordered
		data like time series data. Optionally perform group-wise merge (see
		examples)
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label or list
		    Field names to join on. Must be found in both DataFrames.
		left_on : label or list, or array-like
		    Field names to join on in left DataFrame. Can be a vector or list of
		    vectors of the length of the DataFrame to use a particular vector as
		    the join key instead of columns
		right_on : label or list, or array-like
		    Field names to join on in right DataFrame or vector/list of vectors per
		    left_on docs
		left_by : column name or list of column names
		    Group left DataFrame by group columns and merge piece by piece with
		    right DataFrame
		right_by : column name or list of column names
		    Group right DataFrame by group columns and merge piece by piece with
		    left DataFrame
		fill_method : {'ffill', None}, default None
		    Interpolation method for data
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		how : {'left', 'right', 'outer', 'inner'}, default 'outer'
		    * left: use only keys from left frame (SQL: left outer join)
		    * right: use only keys from right frame (SQL: right outer join)
		    * outer: use union of keys from both frames (SQL: full outer join)
		    * inner: use intersection of keys from both frames (SQL: inner join)
		
		    .. versionadded:: 0.19.0
		
		Examples
		--------
		>>> A                      >>> B
		      key  lvalue group        key  rvalue
		0   a       1     a        0     b       1
		1   c       2     a        1     c       2
		2   e       3     a        2     d       3
		3   a       1     b
		4   c       2     b
		5   e       3     b
		
		>>> ordered_merge(A, B, fill_method='ffill', left_by='group')
		   key  lvalue group  rvalue
		0    a       1     a     NaN
		1    b       1     a       1
		2    c       2     a       2
		3    d       2     a       3
		4    e       3     a       3
		5    f       3     a       4
		6    a       1     b     NaN
		7    b       1     b       1
		8    c       2     b       2
		9    d       2     b       3
		10   e       3     b       3
		11   f       3     b       4
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
		
		See also
		--------
		merge
		merge_asof
	**/
	static public function merge_ordered(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?fill_method:Dynamic, ?suffixes:Dynamic, ?how:Dynamic):pandas.DataFrame;
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
		Returns the appropriate OLS object depending on whether you need
		simple or panel OLS, and a full-sample or rolling/expanding OLS.
		
		Will be a normal linear regression or a (pooled) panel regression depending
		on the type of the inputs:
		
		y : Series, x : DataFrame -> OLS
		y : Series, x : dict of DataFrame -> OLS
		y : DataFrame, x : DataFrame -> PanelOLS
		y : DataFrame, x : dict of DataFrame/Panel -> PanelOLS
		y : Series with MultiIndex, x : Panel/DataFrame + MultiIndex -> PanelOLS
		
		Parameters
		----------
		y: Series or DataFrame
		    See above for types
		x: Series, DataFrame, dict of Series, dict of DataFrame, Panel
		weights : Series or ndarray
		    The weights are presumed to be (proportional to) the inverse of the
		    variance of the observations.  That is, if the variables are to be
		    transformed by 1/sqrt(W) you must supply weights = 1/W
		intercept: bool
		    True if you want an intercept.  Defaults to True.
		nw_lags: None or int
		    Number of Newey-West lags.  Defaults to None.
		nw_overlap: bool
		    Whether there are overlaps in the NW lags.  Defaults to False.
		window_type: {'full sample', 'rolling', 'expanding'}
		    'full sample' by default
		window: int
		    size of window (for rolling/expanding OLS). If window passed and no
		    explicit window_type, 'rolling" will be used as the window_type
		
		Panel OLS options:
		    pool: bool
		        Whether to run pooled panel regression.  Defaults to true.
		    entity_effects: bool
		        Whether to account for entity fixed effects.  Defaults to false.
		    time_effects: bool
		        Whether to account for time fixed effects.  Defaults to false.
		    x_effects: list
		        List of x's to account for fixed effects.  Defaults to none.
		    dropped_dummies: dict
		        Key is the name of the variable for the fixed effect.
		        Value is the value of that variable for which we drop the dummy.
		
		        For entity fixed effects, key equals 'entity'.
		
		        By default, the first dummy is dropped if no dummy is specified.
		    cluster: {'time', 'entity'}
		        cluster variances
		
		Examples
		--------
		# Run simple OLS.
		result = ols(y=y, x=x)
		
		# Run rolling simple OLS with window of size 10.
		result = ols(y=y, x=x, window_type='rolling', window=10)
		print(result.beta)
		
		result = ols(y=y, x=x, nw_lags=1)
		
		# Set up LHS and RHS for data across all items
		y = A
		x = {'B' : B, 'C' : C}
		
		# Run panel OLS.
		result = ols(y=y, x=x)
		
		# Run expanding panel OLS with window 10 and entity clustering.
		result = ols(y=y, x=x, cluster='entity', window_type='expanding',
		             window=10)
		
		Returns
		-------
		The appropriate OLS object, which allows you to obtain betas and various
		statistics, such as std err, t-stat, etc.
	**/
	static public function ols(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var options : Dynamic;
	/**
		Perform merge with optional filling/interpolation designed for ordered
		data like time series data. Optionally perform group-wise merge (see
		examples)
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label or list
		    Field names to join on. Must be found in both DataFrames.
		left_on : label or list, or array-like
		    Field names to join on in left DataFrame. Can be a vector or list of
		    vectors of the length of the DataFrame to use a particular vector as
		    the join key instead of columns
		right_on : label or list, or array-like
		    Field names to join on in right DataFrame or vector/list of vectors per
		    left_on docs
		left_by : column name or list of column names
		    Group left DataFrame by group columns and merge piece by piece with
		    right DataFrame
		right_by : column name or list of column names
		    Group right DataFrame by group columns and merge piece by piece with
		    left DataFrame
		fill_method : {'ffill', None}, default None
		    Interpolation method for data
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		how : {'left', 'right', 'outer', 'inner'}, default 'outer'
		    * left: use only keys from left frame (SQL: left outer join)
		    * right: use only keys from right frame (SQL: right outer join)
		    * outer: use union of keys from both frames (SQL: full outer join)
		    * inner: use intersection of keys from both frames (SQL: inner join)
		
		    .. versionadded:: 0.19.0
		
		Examples
		--------
		>>> A                      >>> B
		      key  lvalue group        key  rvalue
		0   a       1     a        0     b       1
		1   c       2     a        1     c       2
		2   e       3     a        2     d       3
		3   a       1     b
		4   c       2     b
		5   e       3     b
		
		>>> ordered_merge(A, B, fill_method='ffill', left_by='group')
		   key  lvalue group  rvalue
		0    a       1     a     NaN
		1    b       1     a       1
		2    c       2     a       2
		3    d       2     a       3
		4    e       3     a       3
		5    f       3     a       4
		6    a       1     b     NaN
		7    b       1     b       1
		8    c       2     b       2
		9    d       2     b       3
		10   e       3     b       3
		11   f       3     b       4
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
		
		See also
		--------
		merge
		merge_asof
	**/
	static public function ordered_merge(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?fill_method:Dynamic, ?suffixes:Dynamic):pandas.DataFrame;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		
		Parameters
		----------
		start : starting value, period-like, optional
		end : ending value, period-like, optional
		periods : int, default None
		    Number of periods in the index
		freq : str/DateOffset, default 'D'
		    Frequency alias
		name : str, default None
		    Name for the resulting PeriodIndex
		
		Returns
		-------
		prng : PeriodIndex
	**/
	static public function period_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic):pandas.PeriodIndex;
	/**
		Produce 'pivot' table based on 3 columns of this DataFrame.
		Uses unique values from index / columns and fills with values.
		
		Parameters
		----------
		index : ndarray
		    Labels to use to make new frame's index
		columns : ndarray
		    Labels to use to make new frame's columns
		values : ndarray
		    Values to use for populating new frame's values
		
		Notes
		-----
		Obviously, all 3 of the input arguments must have the same length
		
		Returns
		-------
		DataFrame
	**/
	static public function pivot(index:Dynamic, columns:Dynamic, values:Dynamic):Dynamic;
	/**
		Create a spreadsheet-style pivot table as a DataFrame. The levels in the
		pivot table will be stored in MultiIndex objects (hierarchical indexes) on
		the index and columns of the result DataFrame
		
		Parameters
		----------
		data : DataFrame
		values : column to aggregate, optional
		index : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The list
		    can contain any of the other types (except list).
		    Keys to group by on the pivot table index.  If an array is passed, it
		    is being used as the same manner as column values.
		columns : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The list
		    can contain any of the other types (except list).
		    Keys to group by on the pivot table column.  If an array is passed, it
		    is being used as the same manner as column values.
		aggfunc : function or list of functions, default numpy.mean
		    If list of functions passed, the resulting pivot table will have
		    hierarchical columns whose top level are the function names (inferred
		    from the function objects themselves)
		fill_value : scalar, default None
		    Value to replace missing values with
		margins : boolean, default False
		    Add all row / columns (e.g. for subtotal / grand totals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		margins_name : string, default 'All'
		    Name of the row / column that will contain the totals
		    when margins is True.
		
		Examples
		--------
		>>> df
		   A   B   C      D
		0  foo one small  1
		1  foo one large  2
		2  foo one large  2
		3  foo two small  3
		4  foo two small  3
		5  bar one large  4
		6  bar one small  5
		7  bar two small  6
		8  bar two large  7
		
		>>> table = pivot_table(df, values='D', index=['A', 'B'],
		...                     columns=['C'], aggfunc=np.sum)
		>>> table
		          small  large
		foo  one  1      4
		     two  6      NaN
		bar  one  5      4
		     two  6      7
		
		Returns
		-------
		table : DataFrame
	**/
	static public function pivot_table(data:Dynamic, ?values:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?aggfunc:Dynamic, ?fill_value:Dynamic, ?margins:Dynamic, ?dropna:Dynamic, ?margins_name:Dynamic):pandas.DataFrame;
	static public var plot_params : Dynamic;
	static public function pnow(?freq:Dynamic):Dynamic;
	/**
		Quantile-based discretization function. Discretize variable into
		equal-sized buckets based on rank or based on sample quantiles. For example
		1000 values for 10 quantiles would produce a Categorical object indicating
		quantile membership for each data point.
		
		Parameters
		----------
		x : ndarray or Series
		q : integer or array of quantiles
		    Number of quantiles. 10 for deciles, 4 for quartiles, etc. Alternately
		    array of quantiles, e.g. [0, .25, .5, .75, 1.] for quartiles
		labels : array or boolean, default None
		    Used as labels for the resulting bins. Must be of the same length as
		    the resulting bins. If False, return only integer indicators of the
		    bins.
		retbins : bool, optional
		    Whether to return the bins or not. Can be useful if bins is given
		    as a scalar.
		precision : int
		    The precision at which to store and display the bins labels
		
		Returns
		-------
		out : Categorical or Series or array of integers if labels is False
		    The return type (Categorical or Series) depends on the input: a Series
		    of type category if input is a Series else Categorical. Bins are
		    represented as categories when categorical data is returned.
		bins : ndarray of floats
		    Returned only if `retbins` is True.
		
		Notes
		-----
		Out of bounds values will be NA in the resulting Categorical object
		
		Examples
		--------
		>>> pd.qcut(range(5), 4)
		[[0, 1], [0, 1], (1, 2], (2, 3], (3, 4]]
		Categories (4, object): [[0, 1] < (1, 2] < (2, 3] < (3, 4]]
		>>> pd.qcut(range(5), 3, labels=["good","medium","bad"])
		[good, good, medium, bad, bad]
		Categories (3, object): [good < medium < bad]
		>>> pd.qcut(range(5), 4, labels=False)
		array([0, 0, 1, 2, 3], dtype=int64)
	**/
	static public function qcut(x:Dynamic, q:Dynamic, ?labels:Dynamic, ?retbins:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		Read text from clipboard and pass to read_table. See read_table for the
		full argument list
		
		If unspecified, `sep` defaults to '\s+'
		
		Returns
		-------
		parsed : DataFrame
	**/
	static public function read_clipboard(?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
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
		    Delimiter to use. If sep is None, will try to automatically determine
		    this. Separators longer than 1 character and different from ``'\s+'`` will
		    be interpreted as regular expressions, will force use of the python parsing
		    engine and will ignore quotes in the data. Regex example: ``'\r\t'``
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
		usecols : array-like, default None
		    Return a subset of the columns. All elements in this array must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid `usecols`
		    parameter would be [0, 1, 2] or ['foo', 'bar', 'baz']. Using this parameter
		    results in much faster parsing time and lower memory usage.
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
		    (Unsupported with engine='python'). Use `str` or `object` to preserve and
		    not interpret dtype.
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
		skiprows : list-like or integer, default None
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file
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
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : boolean, default False
		    If True and parse_dates is enabled, pandas will attempt to infer the format
		    of the datetime strings in the columns, and if it can be inferred, switch
		    to a faster method of parsing them. In some cases this can increase the
		    parsing speed by ~5-10x.
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
		    Return TextFileReader object for iteration. `See IO Tools docs for more
		    information
		    <http://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_ on
		    ``iterator`` and ``chunksize``.
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
		    If None defaults to Excel dialect. Ignored if sep longer than 1 char
		    See csv.Dialect documentation for more details
		tupleize_cols : boolean, default False
		    Leave a list of tuples on columns as is (default is to convert to
		    a Multi Index on the columns)
		error_bad_lines : boolean, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned. (Only valid with C parser)
		warn_bad_lines : boolean, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output. (Only valid with C parser).
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
		Read an Excel table into a pandas DataFrame
		
		Parameters
		----------
		io : string, path object (pathlib.Path or py._path.local.LocalPath),
		    file-like object, pandas ExcelFile, or xlrd workbook.
		    The string could be a URL. Valid URL schemes include http, ftp, s3,
		    and file. For file URLs, a host is expected. For instance, a local
		    file could be file://localhost/path/to/workbook.xlsx
		sheetname : string, int, mixed list of strings/ints, or None, default 0
		
		    Strings are used for sheet names, Integers are used in zero-indexed
		    sheet positions.
		
		    Lists of strings/integers are used to request multiple sheets.
		
		    Specify None to get all sheets.
		
		    str|int -> DataFrame is returned.
		    list|None -> Dict of DataFrames is returned, with keys representing
		    sheets.
		
		    Available Cases
		
		    * Defaults to 0 -> 1st sheet as a DataFrame
		    * 1 -> 2nd sheet as a DataFrame
		    * "Sheet1" -> 1st sheet as a DataFrame
		    * [0,1,"Sheet5"] -> 1st, 2nd & 5th sheet as a dictionary of DataFrames
		    * None -> All sheets as a dictionary of DataFrames
		
		header : int, list of ints, default 0
		    Row (0-indexed) to use for the column labels of the parsed
		    DataFrame. If a list of integers is passed those row positions will
		    be combined into a ``MultiIndex``
		skiprows : list-like
		    Rows to skip at the beginning (0-indexed)
		skip_footer : int, default 0
		    Rows at the end to skip (0-indexed)
		index_col : int, list of ints, default None
		    Column (0-indexed) to use as the row labels of the DataFrame.
		    Pass None if there is no such column.  If a list is passed,
		    those columns will be combined into a ``MultiIndex``
		names : array-like, default None
		    List of column names to use. If file contains no header row,
		    then you should explicitly pass header=None
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the Excel cell content, and return the transformed
		    content.
		true_values : list, default None
		    Values to consider as True
		
		    .. versionadded:: 0.19.0
		
		false_values : list, default None
		    Values to consider as False
		
		    .. versionadded:: 0.19.0
		
		parse_cols : int or list, default None
		    * If None then parse all columns,
		    * If int then indicates last column to be parsed
		    * If list of ints then indicates list of column numbers to be parsed
		    * If string then indicates comma separated list of column names and
		      column ranges (e.g. "A:E" or "A,C,E:F")
		squeeze : boolean, default False
		    If the parsed data only contains one column then return a Series
		na_values : scalar, str, list-like, or dict, default None
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values. By default the following values are interpreted
		    as NaN: '', '#N/A', '#N/A N/A', '#NA', '-1.#IND', '-1.#QNAN', '-NaN', '-nan',
		'1.#IND', '1.#QNAN', 'N/A', 'NA', 'NULL', 'NaN', 'nan'.
		thousands : str, default None
		    Thousands separator for parsing string columns to numeric.  Note that
		    this parameter is only necessary for columns stored as TEXT in Excel,
		    any numeric columns will automatically be parsed, regardless of display
		    format.
		keep_default_na : bool, default True
		    If na_values are specified and keep_default_na is False the default NaN
		    values are overridden, otherwise they're appended to.
		verbose : boolean, default False
		    Indicate number of NA values placed in non-numeric columns
		engine: string, default None
		    If io is not a buffer or path, this must be set to identify io.
		    Acceptable values are None or xlrd
		convert_float : boolean, default True
		    convert integral floats to int (i.e., 1.0 --> 1). If False, all numeric
		    data will be read in as floats: Excel stores all numbers as floats
		    internally
		has_index_names : boolean, default None
		    DEPRECATED: for version 0.17+ index names will be automatically
		    inferred based on index_col.  To read Excel output from 0.16.2 and
		    prior that had saved index names, use True.
		
		Returns
		-------
		parsed : DataFrame or Dict of DataFrames
		    DataFrame from the passed in Excel file.  See notes in sheetname
		    argument for more information on when a Dict of Dataframes is returned.
	**/
	static public function read_excel(io:Dynamic, ?sheetname:Dynamic, ?header:Dynamic, ?skiprows:Dynamic, ?skip_footer:Dynamic, ?index_col:Dynamic, ?names:Dynamic, ?parse_cols:Dynamic, ?parse_dates:Dynamic, ?date_parser:Dynamic, ?na_values:Dynamic, ?thousands:Dynamic, ?convert_float:Dynamic, ?has_index_names:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?engine:Dynamic, ?squeeze:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		    the data (default='infer').
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
		usecols : array-like, default None
		    Return a subset of the columns. All elements in this array must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid `usecols`
		    parameter would be [0, 1, 2] or ['foo', 'bar', 'baz']. Using this parameter
		    results in much faster parsing time and lower memory usage.
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
		    (Unsupported with engine='python'). Use `str` or `object` to preserve and
		    not interpret dtype.
		
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can either
		    be integers or column labels
		true_values : list, default None
		    Values to consider as True
		false_values : list, default None
		    Values to consider as False
		skipinitialspace : boolean, default False
		    Skip spaces after delimiter.
		skiprows : list-like or integer, default None
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file
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
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : boolean, default False
		    If True and parse_dates is enabled, pandas will attempt to infer the format
		    of the datetime strings in the columns, and if it can be inferred, switch
		    to a faster method of parsing them. In some cases this can increase the
		    parsing speed by ~5-10x.
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
		    Return TextFileReader object for iteration. `See IO Tools docs for more
		    information
		    <http://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_ on
		    ``iterator`` and ``chunksize``.
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
		    If None defaults to Excel dialect. Ignored if sep longer than 1 char
		    See csv.Dialect documentation for more details
		tupleize_cols : boolean, default False
		    Leave a list of tuples on columns as is (default is to convert to
		    a Multi Index on the columns)
		error_bad_lines : boolean, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned. (Only valid with C parser)
		warn_bad_lines : boolean, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output. (Only valid with C parser).
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
		Load data from Google BigQuery.
		
		THIS IS AN EXPERIMENTAL LIBRARY
		
		The main method a user calls to execute a Query in Google BigQuery
		and read results into a pandas DataFrame.
		
		Google BigQuery API Client Library v2 for Python is used.
		Documentation is available at
		https://developers.google.com/api-client-library/python/apis/bigquery/v2
		
		Authentication to the Google BigQuery service is via OAuth 2.0.
		
		- If "private_key" is not provided:
		
		  By default "application default credentials" are used.
		
		  .. versionadded:: 0.19.0
		
		  If default application credentials are not found or are restrictive,
		  user account credentials are used. In this case, you will be asked to
		  grant permissions for product name 'pandas GBQ'.
		
		- If "private_key" is provided:
		
		  Service account credentials will be used to authenticate.
		
		Parameters
		----------
		query : str
		    SQL-Like Query to return data values
		project_id : str
		    Google BigQuery Account project ID.
		index_col : str (optional)
		    Name of result column to use for index in results DataFrame
		col_order : list(str) (optional)
		    List of BigQuery column names in the desired order for results
		    DataFrame
		reauth : boolean (default False)
		    Force Google BigQuery to reauthenticate the user. This is useful
		    if multiple accounts are used.
		verbose : boolean (default True)
		    Verbose output
		private_key : str (optional)
		    Service account private key in JSON format. Can be file path
		    or string contents. This is useful for remote server
		    authentication (eg. jupyter iPython notebook on remote host)
		
		    .. versionadded:: 0.18.1
		
		dialect : {'legacy', 'standard'}, default 'legacy'
		    'legacy' : Use BigQuery's legacy SQL dialect.
		    'standard' : Use BigQuery's standard SQL (beta), which is
		    compliant with the SQL 2011 standard. For more information
		    see `BigQuery SQL Reference
		    <https://cloud.google.com/bigquery/sql-reference/>`__
		
		    .. versionadded:: 0.19.0
		
		Returns
		-------
		df: DataFrame
		    DataFrame representing results of query
	**/
	static public function read_gbq(query:Dynamic, ?project_id:Dynamic, ?index_col:Dynamic, ?col_order:Dynamic, ?reauth:Dynamic, ?verbose:Dynamic, ?private_key:Dynamic, ?dialect:Dynamic):Dynamic;
	/**
		read from the store, close it if we opened it
		
		Retrieve pandas object stored in file, optionally based on where
		criteria
		
		Parameters
		----------
		path_or_buf : path (string), buffer, or path object (pathlib.Path or
		    py._path.local.LocalPath) to read from
		
		    .. versionadded:: 0.19.0 support for pathlib, py.path.
		
		key : group identifier in the store. Can be omitted if the HDF file
		    contains a single pandas object.
		where : list of Term (or convertable) objects, optional
		start : optional, integer (defaults to None), row number to start
		    selection
		stop  : optional, integer (defaults to None), row number to stop
		    selection
		columns : optional, a list of columns that if not None, will limit the
		    return columns
		iterator : optional, boolean, return an iterator, default False
		chunksize : optional, nrows to include in iteration, return an iterator
		
		Returns
		-------
		The selected object
	**/
	static public function read_hdf(path_or_buf:Dynamic, ?key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Read HTML tables into a ``list`` of ``DataFrame`` objects.
		
		Parameters
		----------
		io : str or file-like
		    A URL, a file-like object, or a raw string containing HTML. Note that
		    lxml only accepts the http, ftp and file url protocols. If you have a
		    URL that starts with ``'https'`` you might try removing the ``'s'``.
		
		match : str or compiled regular expression, optional
		    The set of tables containing text matching this regex or string will be
		    returned. Unless the HTML is extremely simple you will probably need to
		    pass a non-empty string here. Defaults to '.+' (match any non-empty
		    string). The default value will return all tables contained on a page.
		    This value is converted to a regular expression so that there is
		    consistent behavior between Beautiful Soup and lxml.
		
		flavor : str or None, container of strings
		    The parsing engine to use. 'bs4' and 'html5lib' are synonymous with
		    each other, they are both there for backwards compatibility. The
		    default of ``None`` tries to use ``lxml`` to parse and if that fails it
		    falls back on ``bs4`` + ``html5lib``.
		
		header : int or list-like or None, optional
		    The row (or list of rows for a :class:`~pandas.MultiIndex`) to use to
		    make the columns headers.
		
		index_col : int or list-like or None, optional
		    The column (or list of columns) to use to create the index.
		
		skiprows : int or list-like or slice or None, optional
		    0-based. Number of rows to skip after parsing the column integer. If a
		    sequence of integers or a slice is given, will skip the rows indexed by
		    that sequence.  Note that a single element sequence means 'skip the nth
		    row' whereas an integer means 'skip n rows'.
		
		attrs : dict or None, optional
		    This is a dictionary of attributes that you can pass to use to identify
		    the table in the HTML. These are not checked for validity before being
		    passed to lxml or Beautiful Soup. However, these attributes must be
		    valid HTML table attributes to work correctly. For example, ::
		
		        attrs = {'id': 'table'}
		
		    is a valid attribute dictionary because the 'id' HTML tag attribute is
		    a valid HTML attribute for *any* HTML tag as per `this document
		    <http://www.w3.org/TR/html-markup/global-attributes.html>`__. ::
		
		        attrs = {'asdf': 'table'}
		
		    is *not* a valid attribute dictionary because 'asdf' is not a valid
		    HTML attribute even if it is a valid XML attribute.  Valid HTML 4.01
		    table attributes can be found `here
		    <http://www.w3.org/TR/REC-html40/struct/tables.html#h-11.2>`__. A
		    working draft of the HTML 5 spec can be found `here
		    <http://www.w3.org/TR/html-markup/table.html>`__. It contains the
		    latest information on table attributes for the modern web.
		
		parse_dates : bool, optional
		    See :func:`~pandas.read_csv` for more details.
		
		tupleize_cols : bool, optional
		    If ``False`` try to parse multiple header rows into a
		    :class:`~pandas.MultiIndex`, otherwise return raw tuples. Defaults to
		    ``False``.
		
		thousands : str, optional
		    Separator to use to parse thousands. Defaults to ``','``.
		
		encoding : str or None, optional
		    The encoding used to decode the web page. Defaults to ``None``.``None``
		    preserves the previous encoding behavior, which depends on the
		    underlying parser library (e.g., the parser library will try to use
		    the encoding provided by the document).
		
		decimal : str, default '.'
		    Character to recognize as decimal point (e.g. use ',' for European
		    data).
		
		    .. versionadded:: 0.19.0
		
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the cell (not column) content, and return the
		    transformed content.
		
		    .. versionadded:: 0.19.0
		
		na_values : iterable, default None
		    Custom NA values
		
		    .. versionadded:: 0.19.0
		
		keep_default_na : bool, default True
		    If na_values are specified and keep_default_na is False the default NaN
		    values are overridden, otherwise they're appended to
		
		    .. versionadded:: 0.19.0
		
		Returns
		-------
		dfs : list of DataFrames
		
		Notes
		-----
		Before using this function you should read the :ref:`gotchas about the
		HTML parsing libraries <html-gotchas>`.
		
		Expect to do some cleanup after you call this function. For example, you
		might need to manually assign column names if the column names are
		converted to NaN when you pass the `header=0` argument. We try to assume as
		little as possible about the structure of the table and push the
		idiosyncrasies of the HTML contained in the table to the user.
		
		This function searches for ``<table>`` elements and only for ``<tr>``
		and ``<th>`` rows and ``<td>`` elements within each ``<tr>`` or ``<th>``
		element in the table. ``<td>`` stands for "table data".
		
		Similar to :func:`~pandas.read_csv` the `header` argument is applied
		**after** `skiprows` is applied.
		
		This function will *always* return a list of :class:`DataFrame` *or*
		it will fail, e.g., it will *not* return an empty list.
		
		Examples
		--------
		See the :ref:`read_html documentation in the IO section of the docs
		<io.read_html>` for some examples of reading in HTML tables.
		
		See Also
		--------
		pandas.read_csv
	**/
	static public function read_html(io:Dynamic, ?match:Dynamic, ?flavor:Dynamic, ?header:Dynamic, ?index_col:Dynamic, ?skiprows:Dynamic, ?attrs:Dynamic, ?parse_dates:Dynamic, ?tupleize_cols:Dynamic, ?thousands:Dynamic, ?encoding:Dynamic, ?decimal:Dynamic, ?converters:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic):Dynamic;
	/**
		Convert a JSON string to pandas object
		
		Parameters
		----------
		path_or_buf : a valid JSON string or file-like, default: None
		    The string could be a URL. Valid URL schemes include http, ftp, s3, and
		    file. For file URLs, a host is expected. For instance, a local file
		    could be ``file://localhost/path/to/table.json``
		
		orient
		
		    * `Series`
		
		      - default is ``'index'``
		      - allowed values are: ``{'split','records','index'}``
		      - The Series index must be unique for orient ``'index'``.
		
		    * `DataFrame`
		
		      - default is ``'columns'``
		      - allowed values are: {'split','records','index','columns','values'}
		      - The DataFrame index must be unique for orients 'index' and
		        'columns'.
		      - The DataFrame columns must be unique for orients 'index',
		        'columns', and 'records'.
		
		    * The format of the JSON string
		
		      - split : dict like
		        ``{index -> [index], columns -> [columns], data -> [values]}``
		      - records : list like
		        ``[{column -> value}, ... , {column -> value}]``
		      - index : dict like ``{index -> {column -> value}}``
		      - columns : dict like ``{column -> {index -> value}}``
		      - values : just the values array
		
		typ : type of object to recover (series or frame), default 'frame'
		dtype : boolean or dict, default True
		    If True, infer dtypes, if a dict of column to dtype, then use those,
		    if False, then don't infer dtypes at all, applies only to the data.
		convert_axes : boolean, default True
		    Try to convert the axes to the proper dtypes.
		convert_dates : boolean, default True
		    List of columns to parse for dates; If True, then try to parse
		    datelike columns default is True; a column label is datelike if
		
		    * it ends with ``'_at'``,
		
		    * it ends with ``'_time'``,
		
		    * it begins with ``'timestamp'``,
		
		    * it is ``'modified'``, or
		
		    * it is ``'date'``
		
		keep_default_dates : boolean, default True
		    If parsing dates, then parse the default datelike columns
		numpy : boolean, default False
		    Direct decoding to numpy arrays. Supports numeric data only, but
		    non-numeric column and index labels are supported. Note also that the
		    JSON ordering MUST be the same for each term if numpy=True.
		precise_float : boolean, default False
		    Set to enable usage of higher precision (strtod) function when
		    decoding string to double values. Default (False) is to use fast but
		    less precise builtin functionality
		date_unit : string, default None
		    The timestamp unit to detect if converting dates. The default behaviour
		    is to try and detect the correct precision, but if this is not desired
		    then pass one of 's', 'ms', 'us' or 'ns' to force parsing only seconds,
		    milliseconds, microseconds or nanoseconds respectively.
		lines : boolean, default False
		    Read the file as a json object per line.
		
		    .. versionadded:: 0.19.0
		
		encoding : str, default is 'utf-8'
		    The encoding to use to decode py3 bytes.
		
		    .. versionadded:: 0.19.0
		
		Returns
		-------
		result : Series or DataFrame
	**/
	static public function read_json(?path_or_buf:Dynamic, ?orient:Dynamic, ?typ:Dynamic, ?dtype:Dynamic, ?convert_axes:Dynamic, ?convert_dates:Dynamic, ?keep_default_dates:Dynamic, ?numpy:Dynamic, ?precise_float:Dynamic, ?date_unit:Dynamic, ?encoding:Dynamic, ?lines:Dynamic):Dynamic;
	/**
		Load msgpack pandas object from the specified
		file path
		
		THIS IS AN EXPERIMENTAL LIBRARY and the storage format
		may not be stable until a future release.
		
		Parameters
		----------
		path_or_buf : string File path, BytesIO like or string
		encoding: Encoding for decoding msgpack str type
		iterator : boolean, if True, return an iterator to the unpacker
		           (default is False)
		
		Returns
		-------
		obj : type of object stored in file
	**/
	static public function read_msgpack(path_or_buf:Dynamic, ?encoding:Dynamic, ?iterator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load pickled pandas object (or any other pickled object) from the specified
		file path
		
		Warning: Loading pickled data received from untrusted sources can be
		unsafe. See: http://docs.python.org/2.7/library/pickle.html
		
		Parameters
		----------
		path : string
		    File path
		
		Returns
		-------
		unpickled : type of object stored in file
	**/
	static public function read_pickle(path:Dynamic):Dynamic;
	/**
		Read SAS files stored as either XPORT or SAS7BDAT format files.
		
		Parameters
		----------
		filepath_or_buffer : string or file-like object
		    Path to the SAS file.
		format : string {'xport', 'sas7bdat'} or None
		    If None, file format is inferred.  If 'xport' or 'sas7bdat',
		    uses the corresponding format.
		index : identifier of index column, defaults to None
		    Identifier of column that should be used as index of the DataFrame.
		encoding : string, default is None
		    Encoding for text data.  If None, text data are stored as raw bytes.
		chunksize : int
		    Read file `chunksize` lines at a time, returns iterator.
		iterator : bool, defaults to False
		    If True, returns an iterator for reading the file incrementally.
		
		Returns
		-------
		DataFrame if iterator=False and chunksize=None, else SAS7BDATReader
		or XportReader
	**/
	static public function read_sas(filepath_or_buffer:Dynamic, ?format:Dynamic, ?index:Dynamic, ?encoding:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic):Dynamic;
	/**
		Read SQL query or database table into a DataFrame.
		
		Parameters
		----------
		sql : string SQL query or SQLAlchemy Selectable (select or text object)
		    to be executed, or database table name.
		con : SQLAlchemy connectable(engine/connection) or database string URI
		    or DBAPI2 connection (fallback mode)
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		index_col : string or list of strings, optional, default: None
		    Column(s) to set as index(MultiIndex)
		coerce_float : boolean, default True
		    Attempt to convert values to non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets
		params : list, tuple or dict, optional, default: None
		    List of parameters to pass to execute method.  The syntax used
		    to pass parameters is database driver dependent. Check your
		    database driver documentation for which of the five syntax styles,
		    described in PEP 249's paramstyle, is supported.
		    Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite
		columns : list, default: None
		    List of column names to select from sql table (only used when reading
		    a table).
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the
		    number of rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		Notes
		-----
		This function is a convenience wrapper around ``read_sql_table`` and
		``read_sql_query`` (and for backward compatibility) and will delegate
		to the specific function depending on the provided input (database
		table name or sql query).  The delegated function might have more specific
		notes about their functionality not listed here.
		
		See also
		--------
		read_sql_table : Read SQL database table into a DataFrame
		read_sql_query : Read SQL query into a DataFrame
	**/
	static public function read_sql(sql:Dynamic, con:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?params:Dynamic, ?parse_dates:Dynamic, ?columns:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Read SQL query into a DataFrame.
		
		Returns a DataFrame corresponding to the result set of the query
		string. Optionally provide an `index_col` parameter to use one of the
		columns as the index, otherwise default integer index will be used.
		
		Parameters
		----------
		sql : string SQL query or SQLAlchemy Selectable (select or text object)
		    to be executed.
		con : SQLAlchemy connectable(engine/connection) or database string URI
		    or sqlite3 DBAPI2 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		index_col : string or list of strings, optional, default: None
		    Column(s) to set as index(MultiIndex)
		coerce_float : boolean, default True
		    Attempt to convert values to non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets
		params : list, tuple or dict, optional, default: None
		    List of parameters to pass to execute method.  The syntax used
		    to pass parameters is database driver dependent. Check your
		    database driver documentation for which of the five syntax styles,
		    described in PEP 249's paramstyle, is supported.
		    Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the number of
		    rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		Notes
		-----
		Any datetime values with time zone information parsed via the `parse_dates`
		parameter will be converted to UTC
		
		See also
		--------
		read_sql_table : Read SQL database table into a DataFrame
		read_sql
	**/
	static public function read_sql_query(sql:Dynamic, con:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?params:Dynamic, ?parse_dates:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Read SQL database table into a DataFrame.
		
		Given a table name and an SQLAlchemy connectable, returns a DataFrame.
		This function does not support DBAPI connections.
		
		Parameters
		----------
		table_name : string
		    Name of SQL table in database
		con : SQLAlchemy connectable (or database string URI)
		    Sqlite DBAPI connection mode not supported
		schema : string, default None
		    Name of SQL schema in database to query (if database flavor
		    supports this). If None, use default schema (default).
		index_col : string or list of strings, optional, default: None
		    Column(s) to set as index(MultiIndex)
		coerce_float : boolean, default True
		    Attempt to convert values to non-string, non-numeric objects (like
		    decimal.Decimal) to floating point. Can result in loss of Precision.
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite
		columns : list, default: None
		    List of column names to select from sql table
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the number of
		    rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		Notes
		-----
		Any datetime values with time zone information will be converted to UTC
		
		See also
		--------
		read_sql_query : Read SQL query into a DataFrame.
		read_sql
	**/
	static public function read_sql_table(table_name:Dynamic, con:Dynamic, ?schema:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?columns:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Read Stata file into DataFrame
		
		Parameters
		----------
		filepath_or_buffer : string or file-like object
		    Path to .dta file or object implementing a binary read() functions
		convert_dates : boolean, defaults to True
		    Convert date variables to DataFrame time values
		convert_categoricals : boolean, defaults to True
		    Read value labels and convert columns to Categorical/Factor variables
		encoding : string, None or encoding
		    Encoding used to parse the files. None defaults to iso-8859-1.
		index : identifier of index column
		    identifier of column that should be used as index of the DataFrame
		convert_missing : boolean, defaults to False
		    Flag indicating whether to convert missing values to their Stata
		    representations.  If False, missing values are replaced with nans.
		    If True, columns containing missing values are returned with
		    object data types and missing values are represented by
		    StataMissingValue objects.
		preserve_dtypes : boolean, defaults to True
		    Preserve Stata datatypes. If False, numeric data are upcast to pandas
		    default types for foreign data (float64 or int64)
		columns : list or None
		    Columns to retain.  Columns will be returned in the given order.  None
		    returns all columns
		order_categoricals : boolean, defaults to True
		    Flag indicating whether converted categorical data are ordered.
		chunksize : int, default None
		    Return StataReader object for iterations, returns chunks with
		    given number of lines
		iterator : boolean, default False
		    Return StataReader object
		
		Returns
		-------
		DataFrame or StataReader
		
		Examples
		--------
		Read a Stata dta file:
		
		>>> df = pandas.read_stata('filename.dta')
		
		Read a Stata dta file in 10,000 line chunks:
		
		>>> itr = pandas.read_stata('filename.dta', chunksize=10000)
		>>> for chunk in itr:
		>>>     do_something(chunk)
	**/
	static public function read_stata(filepath_or_buffer:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?encoding:Dynamic, ?index:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic):Dynamic;
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
		    Delimiter to use. If sep is None, will try to automatically determine
		    this. Separators longer than 1 character and different from ``'\s+'`` will
		    be interpreted as regular expressions, will force use of the python parsing
		    engine and will ignore quotes in the data. Regex example: ``'\r\t'``
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
		usecols : array-like, default None
		    Return a subset of the columns. All elements in this array must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid `usecols`
		    parameter would be [0, 1, 2] or ['foo', 'bar', 'baz']. Using this parameter
		    results in much faster parsing time and lower memory usage.
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
		    (Unsupported with engine='python'). Use `str` or `object` to preserve and
		    not interpret dtype.
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
		skiprows : list-like or integer, default None
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file
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
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : boolean, default False
		    If True and parse_dates is enabled, pandas will attempt to infer the format
		    of the datetime strings in the columns, and if it can be inferred, switch
		    to a faster method of parsing them. In some cases this can increase the
		    parsing speed by ~5-10x.
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
		    Return TextFileReader object for iteration. `See IO Tools docs for more
		    information
		    <http://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_ on
		    ``iterator`` and ``chunksize``.
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
		    If None defaults to Excel dialect. Ignored if sep longer than 1 char
		    See csv.Dialect documentation for more details
		tupleize_cols : boolean, default False
		    Leave a list of tuples on columns as is (default is to convert to
		    a Multi Index on the columns)
		error_bad_lines : boolean, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned. (Only valid with C parser)
		warn_bad_lines : boolean, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output. (Only valid with C parser).
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
	/**
		reset_option(pat)
		
		Reset one or more options to their default value.
		
		Pass "all" as argument to reset all options.
		
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
		- html.[border]
		- io.excel.xls.[writer]
		- io.excel.xlsm.[writer]
		- io.excel.xlsx.[writer]
		- io.hdf.[default_format, dropna_table]
		- mode.[chained_assignment, sim_interactive, use_inf_as_null]
		
		Parameters
		----------
		pat : str/regex
		    If specified only options matching `prefix*` will be reset.
		    Note: partial matches are supported for convenience, but unless you
		    use the full option name (e.g. x.y.z.option_name), your code may break
		    in future versions if new options with similar names are introduced.
		
		Returns
		-------
		None
		
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
	static public function reset_option(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generic moving function application.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		func : function
		    Must produce a single value from an ndarray input
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the
		    statistic. Specified as a frequency string or DateOffset object.
		center : boolean, default False
		    Whether the label should correspond with center of window
		args : tuple
		    Passed on to func
		kwargs : dict
		    Passed on to func
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	static public function rolling_apply(arg:Dynamic, window:Dynamic, func:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Moving sample correlation.
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		
		Returns
		-------
		y : type depends on inputs
		    DataFrame / DataFrame -> DataFrame (matches on columns) or Panel (pairwise)
		    DataFrame / Series -> Computes result for each column
		    Series / Series -> Series
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_corr(arg1:Dynamic, ?arg2:Dynamic, ?window:Dynamic, ?pairwise:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Rolling count of number of non-NaN observations inside provided window.
		
		Parameters
		----------
		arg :  DataFrame or numpy ndarray-like
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the
		    statistic. Specified as a frequency string or DateOffset object.
		center : boolean, default False
		    Whether the label should correspond with center of window
		how : string, default 'mean'
		    Method for down- or re-sampling
		
		Returns
		-------
		rolling_count : type of caller
		
		Notes
		-----
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	static public function rolling_count(arg:Dynamic, window:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Unbiased moving covariance.
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type depends on inputs
		    DataFrame / DataFrame -> DataFrame (matches on columns) or Panel (pairwise)
		    DataFrame / Series -> Computes result for each column
		    Series / Series -> Series
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_cov(arg1:Dynamic, ?arg2:Dynamic, ?window:Dynamic, ?pairwise:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Unbiased moving kurtosis.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_kurt(arg:Dynamic, window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Moving maximum.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default ''max'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_max(arg:Dynamic, window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Moving mean.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_mean(arg:Dynamic, window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Moving median.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default ''median'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_median(arg:Dynamic, window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Moving minimum.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default ''min'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_min(arg:Dynamic, window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Moving quantile.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		quantile : float
		    0 <= quantile <= 1
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the
		    statistic. Specified as a frequency string or DateOffset object.
		center : boolean, default False
		    Whether the label should correspond with center of window
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	static public function rolling_quantile(arg:Dynamic, window:Dynamic, quantile:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic):Dynamic;
	/**
		Unbiased moving skewness.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_skew(arg:Dynamic, window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Moving standard deviation.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_std(arg:Dynamic, window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Moving sum.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_sum(arg:Dynamic, window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Moving variance.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_var(arg:Dynamic, window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a moving window of type ``window_type`` and size ``window``
		on the data.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int or ndarray
		    Weighting window specification. If the window is an integer, then it is
		    treated as the window length and win_type is required
		win_type : str, default None
		    Window type (see Notes)
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the
		    statistic. Specified as a frequency string or DateOffset object.
		center : boolean, default False
		    Whether the label should correspond with center of window
		mean : boolean, default True
		    If True computes weighted mean, else weighted sum
		axis : {0, 1}, default 0
		how : string, default 'mean'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		The recognized window types are:
		
		* ``boxcar``
		* ``triang``
		* ``blackman``
		* ``hamming``
		* ``bartlett``
		* ``parzen``
		* ``bohman``
		* ``blackmanharris``
		* ``nuttall``
		* ``barthann``
		* ``kaiser`` (needs beta)
		* ``gaussian`` (needs std)
		* ``general_gaussian`` (needs power, width)
		* ``slepian`` (needs width).
		
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	static public function rolling_window(arg:Dynamic, ?window:Dynamic, ?win_type:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?mean:Dynamic, ?axis:Dynamic, ?how:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a matrix of scatter plots.
		
		Parameters
		----------
		frame : DataFrame
		alpha : float, optional
		    amount of transparency applied
		figsize : (float,float), optional
		    a tuple (width, height) in inches
		ax : Matplotlib axis object, optional
		grid : bool, optional
		    setting this to True will show the grid
		diagonal : {'hist', 'kde'}
		    pick between 'kde' and 'hist' for
		    either Kernel Density Estimation or Histogram
		    plot in the diagonal
		marker : str, optional
		    Matplotlib marker type, default '.'
		hist_kwds : other plotting keyword arguments
		    To be passed to hist function
		density_kwds : other plotting keyword arguments
		    To be passed to kernel density estimate plot
		range_padding : float, optional
		    relative extension of axis range in x and y
		    with respect to (x_max - x_min) or (y_max - y_min),
		    default 0.05
		kwds : other plotting keyword arguments
		    To be passed to scatter function
		
		Examples
		--------
		>>> df = DataFrame(np.random.randn(1000, 4), columns=['A','B','C','D'])
		>>> scatter_matrix(df, alpha=0.2)
	**/
	static public function scatter_matrix(frame:Dynamic, ?alpha:Dynamic, ?figsize:Dynamic, ?ax:Dynamic, ?grid:Dynamic, ?diagonal:Dynamic, ?marker:Dynamic, ?density_kwds:Dynamic, ?hist_kwds:Dynamic, ?range_padding:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Alter default behavior on how float is formatted in DataFrame.
		Format float in engineering format. By accuracy, we mean the number of
		decimal digits after the floating point.
		
		See also EngFormatter.
	**/
	static public function set_eng_float_format(?accuracy:Dynamic, ?use_eng_prefix:Dynamic):Dynamic;
	/**
		set_option(pat, value)
		
		Sets the value of the specified option.
		
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
		value :
		    new value of option.
		
		Returns
		-------
		None
		
		Raises
		------
		OptionError if no such option exists
		
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
	static public function set_option(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function show_versions(?as_json:Dynamic):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    * attribute_identifier - string passed directly to nosetests
		      as '-A'.
		
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module
		    <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		    - 'develop' : equals ``(DeprecationWarning, RuntimeWarning)``
		    - 'release' : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
	/**
		Return a fixed frequency timedelta index, with day as the default
		frequency
		
		Parameters
		----------
		start : string or timedelta-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
		name : str, default None
		    Name of the resulting index
		closed : string or None, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Returns
		-------
		rng : TimedeltaIndex
		
		Notes
		-----
		2 of start, end, or periods must be specified.
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	static public function timedelta_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic, ?closed:Dynamic):pandas.TimedeltaIndex;
	/**
		Convert argument to datetime.
		
		Parameters
		----------
		arg : string, datetime, list, tuple, 1-d array, Series
		
		    .. versionadded: 0.18.1
		
		       or DataFrame/dict-like
		
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		dayfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		    If True, parses dates with the day first, eg 10/11/12 is parsed as
		    2012-11-10.
		    Warning: dayfirst=True is not strict, but will prefer to parse
		    with day first (this is a known bug, based on dateutil behavior).
		yearfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		
		    - If True parses dates with the year first, eg 10/11/12 is parsed as
		      2010-11-12.
		    - If both dayfirst and yearfirst are True, yearfirst is preceded (same
		      as dateutil).
		
		    Warning: yearfirst=True is not strict, but will prefer to parse
		    with year first (this is a known bug, based on dateutil beahavior).
		
		    .. versionadded: 0.16.1
		
		utc : boolean, default None
		    Return UTC DatetimeIndex if True (converting any tz-aware
		    datetime.datetime objects as well).
		box : boolean, default True
		
		    - If True returns a DatetimeIndex
		    - If False returns ndarray of values.
		format : string, default None
		    strftime to parse time, eg "%d/%m/%Y", note that "%f" will parse
		    all the way up to nanoseconds.
		exact : boolean, True by default
		
		    - If True, require an exact format match.
		    - If False, allow the format to match anywhere in the target string.
		
		unit : string, default 'ns'
		    unit of the arg (D,s,ms,us,ns) denote the unit in epoch
		    (e.g. a unix timestamp), which is an integer/float number.
		infer_datetime_format : boolean, default False
		    If True and no `format` is given, attempt to infer the format of the
		    datetime strings, and if it can be inferred, switch to a faster
		    method of parsing them. In some cases this can increase the parsing
		    speed by ~5-10x.
		
		Returns
		-------
		ret : datetime if parsing succeeded.
		    Return type depends on input:
		
		    - list-like: DatetimeIndex
		    - Series: Series of datetime64 dtype
		    - scalar: Timestamp
		
		    In case when it is not possible to return designated types (e.g. when
		    any element of input is before Timestamp.min or after Timestamp.max)
		    return will have datetime.datetime type (or correspoding array/Series).
		
		Examples
		--------
		
		Assembling a datetime from multiple columns of a DataFrame. The keys can be
		common abbreviations like ['year', 'month', 'day', 'minute', 'second',
		'ms', 'us', 'ns']) or plurals of the same
		
		>>> df = pd.DataFrame({'year': [2015, 2016],
		                       'month': [2, 3],
		                       'day': [4, 5]})
		>>> pd.to_datetime(df)
		0   2015-02-04
		1   2016-03-05
		dtype: datetime64[ns]
		
		If a date that does not meet timestamp limitations, passing errors='coerce'
		will force to NaT. Furthermore this will force non-dates to NaT as well.
		
		>>> pd.to_datetime('13000101', format='%Y%m%d')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
		
		Passing infer_datetime_format=True can often-times speedup a parsing
		if its not an ISO8601 format exactly, but in a regular format.
		
		>>> s = pd.Series(['3/11/2000', '3/12/2000', '3/13/2000']*1000)
		
		>>> s.head()
		0    3/11/2000
		1    3/12/2000
		2    3/13/2000
		3    3/11/2000
		4    3/12/2000
		dtype: object
		
		>>> %timeit pd.to_datetime(s,infer_datetime_format=True)
		100 loops, best of 3: 10.4 ms per loop
		
		>>> %timeit pd.to_datetime(s,infer_datetime_format=False)
		1 loop, best of 3: 471 ms per loop
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?box:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?coerce:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic):Dynamic;
	/**
		msgpack (serialize) object to input file path
		
		THIS IS AN EXPERIMENTAL LIBRARY and the storage format
		may not be stable until a future release.
		
		Parameters
		----------
		path_or_buf : string File path, buffer-like, or None
		              if None, return generated string
		args : an object or objects to serialize
		encoding: encoding for unicode objects
		append : boolean whether to append to an existing msgpack
		         (default is False)
		compress : type of compressor (zlib or blosc), default to None (no
		           compression)
	**/
	static public function to_msgpack(path_or_buf:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert argument to a numeric type.
		
		Parameters
		----------
		arg : list, tuple, 1-d array, or Series
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaN
		    - If 'ignore', then invalid parsing will return the input
		downcast : {'integer', 'signed', 'unsigned', 'float'} , default None
		    If not None, and if the data has been successfully cast to a
		    numerical dtype (or if the data was numeric to begin with),
		    downcast that resulting data to the smallest numerical dtype
		    possible according to the following rules:
		
		    - 'integer' or 'signed': smallest signed int dtype (min.: np.int8)
		    - 'unsigned': smallest unsigned int dtype (min.: np.uint8)
		    - 'float': smallest float dtype (min.: np.float32)
		
		    As this behaviour is separate from the core conversion to
		    numeric values, any errors raised during the downcasting
		    will be surfaced regardless of the value of the 'errors' input.
		
		    In addition, downcasting will only occur if the size
		    of the resulting data's dtype is strictly larger than
		    the dtype it is to be cast to, so if none of the dtypes
		    checked satisfy that specification, no downcasting will be
		    performed on the data.
		
		    .. versionadded:: 0.19.0
		
		Returns
		-------
		ret : numeric if parsing succeeded.
		    Return type depends on input.  Series if Series, otherwise ndarray
		
		Examples
		--------
		Take separate series and convert to numeric, coercing when told to
		
		>>> import pandas as pd
		>>> s = pd.Series(['1.0', '2', -3])
		>>> pd.to_numeric(s)
		0    1.0
		1    2.0
		2   -3.0
		dtype: float64
		>>> pd.to_numeric(s, downcast='float')
		0    1.0
		1    2.0
		2   -3.0
		dtype: float32
		>>> pd.to_numeric(s, downcast='signed')
		0    1
		1    2
		2   -3
		dtype: int8
		>>> s = pd.Series(['apple', '1.0', '2', -3])
		>>> pd.to_numeric(s, errors='ignore')
		0    apple
		1      1.0
		2        2
		3       -3
		dtype: object
		>>> pd.to_numeric(s, errors='coerce')
		0    NaN
		1    1.0
		2    2.0
		3   -3.0
		dtype: float64
	**/
	static public function to_numeric(arg:Dynamic, ?errors:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		Pickle (serialize) object to input file path
		
		Parameters
		----------
		obj : any object
		path : string
		    File path
	**/
	static public function to_pickle(obj:Dynamic, path:Dynamic):Dynamic;
	/**
		Convert argument to timedelta
		
		Parameters
		----------
		arg : string, timedelta, list, tuple, 1-d array, or Series
		unit : unit of the arg (D,h,m,s,ms,us,ns) denote the unit, which is an
		    integer/float number
		box : boolean, default True
		    - If True returns a Timedelta/TimedeltaIndex of the results
		    - if False returns a np.timedelta64 or ndarray of values of dtype
		      timedelta64[ns]
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		
		Returns
		-------
		ret : timedelta64/arrays of timedelta64 if parsing succeeded
		
		Examples
		--------
		
		Parsing a single string to a Timedelta:
		
		>>> pd.to_timedelta('1 days 06:05:01.00003')
		Timedelta('1 days 06:05:01.000030')
		>>> pd.to_timedelta('15.5us')
		Timedelta('0 days 00:00:00.000015')
		
		Parsing a list or array of strings:
		
		>>> pd.to_timedelta(['1 days 06:05:01.00003', '15.5us', 'nan'])
		TimedeltaIndex(['1 days 06:05:01.000030', '0 days 00:00:00.000015', NaT],
		               dtype='timedelta64[ns]', freq=None)
		
		Converting numbers by specifying the `unit` keyword argument:
		
		>>> pd.to_timedelta(np.arange(5), unit='s')
		TimedeltaIndex(['00:00:00', '00:00:01', '00:00:02',
		                '00:00:03', '00:00:04'],
		               dtype='timedelta64[ns]', freq=None)
		>>> pd.to_timedelta(np.arange(5), unit='d')
		TimedeltaIndex(['0 days', '1 days', '2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq=None)
	**/
	static public function to_timedelta(arg:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic, ?coerce:Dynamic):Dynamic;
	/**
		Compute unique values (not necessarily sorted) efficiently from input array
		of values
		
		Parameters
		----------
		values : array-like
		
		Returns
		-------
		uniques
	**/
	static public function unique(values:Dynamic):Dynamic;
	/**
		Compute a histogram of the counts of non-null values.
		
		Parameters
		----------
		values : ndarray (1-d)
		sort : boolean, default True
		    Sort by values
		ascending : boolean, default False
		    Sort in ascending order
		normalize: boolean, default False
		    If True then compute a relative histogram
		bins : integer, optional
		    Rather than count values, group them into half-open bins,
		    convenience for pd.cut, only works with numeric data
		dropna : boolean, default True
		    Don't include counts of NaN
		
		Returns
		-------
		value_counts : Series
	**/
	static public function value_counts(values:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?normalize:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Wide panel to long format. Less flexible but more user-friendly than melt.
		
		Parameters
		----------
		df : DataFrame
		    The wide-format DataFrame
		stubnames : list
		    A list of stub names. The wide format variables are assumed to
		    start with the stub names.
		i : str
		    The name of the id variable.
		j : str
		    The name of the subobservation variable.
		stubend : str
		    Regex to match for the end of the stubs.
		
		Returns
		-------
		DataFrame
		    A DataFrame that contains each stub name as a variable as well as
		    variables for i and j.
		
		Examples
		--------
		>>> import pandas as pd
		>>> import numpy as np
		>>> np.random.seed(123)
		>>> df = pd.DataFrame({"A1970" : {0 : "a", 1 : "b", 2 : "c"},
		...                    "A1980" : {0 : "d", 1 : "e", 2 : "f"},
		...                    "B1970" : {0 : 2.5, 1 : 1.2, 2 : .7},
		...                    "B1980" : {0 : 3.2, 1 : 1.3, 2 : .1},
		...                    "X"     : dict(zip(range(3), np.random.randn(3)))
		...                   })
		>>> df["id"] = df.index
		>>> df
		A1970 A1980  B1970  B1980         X  id
		0     a     d    2.5    3.2 -1.085631   0
		1     b     e    1.2    1.3  0.997345   1
		2     c     f    0.7    0.1  0.282978   2
		>>> wide_to_long(df, ["A", "B"], i="id", j="year")
		                X  A    B
		id year
		0  1970 -1.085631  a  2.5
		1  1970  0.997345  b  1.2
		2  1970  0.282978  c  0.7
		0  1980 -1.085631  d  3.2
		1  1980  0.997345  e  1.3
		2  1980  0.282978  f  0.1
		
		Notes
		-----
		All extra variables are treated as extra id variables. This simply uses
		`pandas.melt` under the hood, but is hard-coded to "do the right thing"
		in a typicaly case.
	**/
	static public function wide_to_long(df:Dynamic, stubnames:Dynamic, i:Dynamic, j:Dynamic):Dynamic;
}