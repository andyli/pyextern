/* This file is generated, do not edit! */
package pandas.io.tests;
@:pythonImport("pandas.io.tests.test_clipboard") extern class Test_clipboard {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function disabled(t:Dynamic):Dynamic;
	/**
		get_option(pat)
		
		Retrieves the value of the specified option.
		
		Available options:
		
		- display.[chop_threshold, colheader_justify, column_space, date_dayfirst,
		  date_yearfirst, encoding, expand_frame_repr, float_format, height, large_repr,
		  line_width, max_categories, max_columns, max_colwidth, max_info_columns,
		  max_info_rows, max_rows, max_seq_items, memory_usage, mpl_style, multi_sparse,
		  notebook_repr_html, pprint_nest_depth, precision, show_dimensions]
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
		    [default: utf-8] [currently: utf-8]
		
		display.expand_frame_repr : boolean
		    Whether to print out the full DataFrame repr for wide DataFrames across
		    multiple lines, `max_columns` is still respected, but the output will
		    wrap-around across multiple "pages" if its width exceeds `display.width`.
		    [default: True] [currently: True]
		
		display.float_format : callable
		    The callable should accept a floating point number and return
		    a string with the desired format of the number. This is used
		    in some places like SeriesFormatter.
		    See core.format.EngFormatter for an example.
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
		
		display.line_width : int
		    Deprecated.
		    [default: 80] [currently: 80]
		    (Deprecated, use `display.width` instead.)
		
		display.max_categories : int
		    This sets the maximum number of categories pandas should output when printing
		    out a `Categorical` or a Series of dtype "category".
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
		    limit this null check only to frames with smaller dimensions then specified.
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
		
		display.memory_usage : bool or None
		    This specifies if the memory usage of a DataFrame should be displayed when
		    df.info() is called.
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
		    Whether to use the Unicode East Asian Width to calculate the display text width
		    Enabling this may affect to the performance (default: False)
		    [default: False] [currently: False]
		
		display.unicode.east_asian_width : boolean
		    Whether to use the Unicode East Asian Width to calculate the display text width
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
	static public function get_option(args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		nrows,  ncols - number of data rows/cols
		c_idx_names, idx_names  - False/True/list of strings,  yields No names ,
		     default names or  uses the provided names for the levels of the
		     corresponding  index. You can provide a single string when
		     c_idx_nlevels ==1.
		c_idx_nlevels - number of levels in columns index. > 1 will yield MultiIndex
		r_idx_nlevels - number of levels in rows index. > 1 will yield MultiIndex
		data_gen_f - a function f(row,col) which return the data value at that position,
		     the default generator used yields values of the form "RxCy" based on position.
		c_ndupe_l, r_ndupe_l - list of integers, determines the number
		     of duplicates for each label at a given level of the corresponding index.
		     The default `None` value produces a multiplicity of 1 across
		     all levels, i.e. a unique index. Will accept a partial list of
		     length N < idx_nlevels, for just the first N levels. If ndupe
		     doesn't divide nrows/ncol, the last label might have lower multiplicity.
		dtype - passed to the DataFrame constructor as is, in case you wish to
		     have more control in conjuncion with a custom `data_gen_f`
		r_idx_type, c_idx_type -  "i"/"f"/"s"/"u"/"dt"/"td".
		    If idx_type is not None, `idx_nlevels` must be 1.
		    "i"/"f" creates an integer/float index,
		    "s"/"u" creates a string/unicode index
		    "dt" create a datetime index.
		    "td" create a timedelta index.
		
		     if unspecified, string labels will be generated.
		
		 Examples:
		
		 # 5 row, 3 columns, default names on both, single index on both axis
		 >> makeCustomDataframe(5,3)
		
		 # make the data a random int between 1 and 100
		 >> mkdf(5,3,data_gen_f=lambda r,c:randint(1,100))
		
		 # 2-level multiindex on rows with each label duplicated twice on first level,
		 # default names on both axis, single index on both axis
		 >> a=makeCustomDataframe(5,3,r_idx_nlevels=2,r_ndupe_l=[2])
		
		 # DatetimeIndex on row, index with unicode labels on columns
		 # no names on either axis
		 >> a=makeCustomDataframe(5,3,c_idx_names=False,r_idx_names=False,
		                          r_idx_type="dt",c_idx_type="u")
		
		 # 4-level multindex on rows with names provided, 2-level multindex
		 # on columns with default labels and default names.
		 >> a=makeCustomDataframe(5,3,r_idx_nlevels=4,
		                          r_idx_names=["FEE","FI","FO","FAM"],
		                          c_idx_nlevels=2)
		
		 >> a=mkdf(5,3,r_idx_nlevels=2,c_idx_nlevels=4)
		 
	**/
	static public function mkdf(nrows:Dynamic, ncols:Dynamic, ?c_idx_names:Dynamic, ?r_idx_names:Dynamic, ?c_idx_nlevels:Dynamic, ?r_idx_nlevels:Dynamic, ?data_gen_f:Dynamic, ?c_ndupe_l:Dynamic, ?r_ndupe_l:Dynamic, ?dtype:Dynamic, ?c_idx_type:Dynamic, ?r_idx_type:Dynamic):Dynamic;
	/**
		randint(low, high=None, size=None)
		
		Return random integers from `low` (inclusive) to `high` (exclusive).
		
		Return random integers from the "discrete uniform" distribution in the
		"half-open" interval [`low`, `high`). If `high` is None (the default),
		then results are from [0, `low`).
		
		Parameters
		----------
		low : int
		    Lowest (signed) integer to be drawn from the distribution (unless
		    ``high=None``, in which case this parameter is the *highest* such
		    integer).
		high : int, optional
		    If provided, one above the largest (signed) integer to be drawn
		    from the distribution (see above for behavior if ``high=None``).
		size : int or tuple of ints, optional
		    Output shape.  If the given shape is, e.g., ``(m, n, k)``, then
		    ``m * n * k`` samples are drawn.  Default is None, in which case a
		    single value is returned.
		
		Returns
		-------
		out : int or ndarray of ints
		    `size`-shaped array of random integers from the appropriate
		    distribution, or a single such random int if `size` not provided.
		
		See Also
		--------
		random.random_integers : similar to `randint`, only for the closed
		    interval [`low`, `high`], and 1 is the lowest value if `high` is
		    omitted. In particular, this other one is the one to use to generate
		    uniformly distributed discrete non-integers.
		
		Examples
		--------
		>>> np.random.randint(2, size=10)
		array([1, 0, 0, 0, 1, 1, 0, 0, 1, 0])
		>>> np.random.randint(1, size=10)
		array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
		
		Generate a 2 x 4 array of ints between 0 and 4, inclusive:
		
		>>> np.random.randint(5, size=(2, 4))
		array([[4, 0, 2, 1],
		       [3, 2, 2, 0]])
	**/
	static public function randint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read text from clipboard and pass to read_table. See read_table for the
		full argument list
		
		If unspecified, `sep` defaults to '\s+'
		
		Returns
		-------
		parsed : DataFrame
	**/
	static public function read_clipboard(kwargs:Dynamic):Dynamic;
}