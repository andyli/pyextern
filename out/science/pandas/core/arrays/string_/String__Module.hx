/* This file is generated, do not edit! */
package pandas.core.arrays.string_;
@:pythonImport("pandas.core.arrays.string_") extern class String__Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Scalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Check if `indexer` is a valid array indexer for `array`.
		
		For a boolean mask, `array` and `indexer` are checked to have the same
		length. The dtype is validated, and if it is an integer or boolean
		ExtensionArray, it is checked if there are missing values present, and
		it is converted to the appropriate numpy array. Other dtypes will raise
		an error.
		
		Non-array indexers (integer, slice, Ellipsis, tuples, ..) are passed
		through as is.
		
		.. versionadded:: 1.0.0
		
		Parameters
		----------
		array : array-like
		    The array that is being indexed (only used for the length).
		indexer : array-like or list-like
		    The array-like that's used to index. List-like input that is not yet
		    a numpy array or an ExtensionArray is converted to one. Other input
		    types are passed through as is.
		
		Returns
		-------
		numpy.ndarray
		    The validated indexer as a numpy array that can be used to index.
		
		Raises
		------
		IndexError
		    When the lengths don't match.
		ValueError
		    When `indexer` cannot be converted to a numpy ndarray to index
		    (e.g. presence of missing values).
		
		See Also
		--------
		api.types.is_bool_dtype : Check if `key` is of boolean dtype.
		
		Examples
		--------
		When checking a boolean mask, a boolean ndarray is returned when the
		arguments are all valid.
		
		>>> mask = pd.array([True, False])
		>>> arr = pd.array([1, 2])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		array([ True, False])
		
		An IndexError is raised when the lengths don't match.
		
		>>> mask = pd.array([True, False, True])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		Traceback (most recent call last):
		...
		IndexError: Boolean index has wrong length: 3 instead of 2.
		
		NA values in a boolean array are treated as False.
		
		>>> mask = pd.array([True, pd.NA])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		array([ True, False])
		
		A numpy boolean mask will get passed through (if the length is correct):
		
		>>> mask = np.array([True, False])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		array([ True, False])
		
		Similarly for integer indexers, an integer ndarray is returned when it is
		a valid indexer, otherwise an error is  (for integer indexers, a matching
		length is not required):
		
		>>> indexer = pd.array([0, 2], dtype="Int64")
		>>> arr = pd.array([1, 2, 3])
		>>> pd.api.indexers.check_array_indexer(arr, indexer)
		array([0, 2])
		
		>>> indexer = pd.array([0, pd.NA], dtype="Int64")
		>>> pd.api.indexers.check_array_indexer(arr, indexer)
		Traceback (most recent call last):
		...
		ValueError: Cannot index with an integer indexer containing NA values
		
		For non-integer/boolean dtypes, an appropriate error is raised:
		
		>>> indexer = np.array([0., 2.], dtype="float64")
		>>> pd.api.indexers.check_array_indexer(arr, indexer)
		Traceback (most recent call last):
		...
		IndexError: arrays used as indices must be of integer or boolean type
	**/
	static public function check_array_indexer(array:Dynamic, indexer:Dynamic):Dynamic;
	/**
		Extract the ndarray or ExtensionArray from a Series or Index.
		
		For all other types, `obj` is just returned as is.
		
		Parameters
		----------
		obj : object
		    For Series / Index, the underlying ExtensionArray is unboxed.
		
		extract_numpy : bool, default False
		    Whether to extract the ndarray from a PandasArray.
		
		extract_range : bool, default False
		    If we have a RangeIndex, return range._values if True
		    (which is a materialized integer ndarray), otherwise return unchanged.
		
		Returns
		-------
		arr : object
		
		Examples
		--------
		>>> extract_array(pd.Series(['a', 'b', 'c'], dtype='category'))
		['a', 'b', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		Other objects like lists, arrays, and DataFrames are just passed through.
		
		>>> extract_array([1, 2, 3])
		[1, 2, 3]
		
		For an ndarray-backed Series / Index the ndarray is returned.
		
		>>> extract_array(pd.Series([1, 2, 3]))
		array([1, 2, 3])
		
		To extract all the way down to the ndarray, pass ``extract_numpy=True``.
		
		>>> extract_array(pd.Series([1, 2, 3]), extract_numpy=True)
		array([1, 2, 3])
	**/
	static public function extract_array(obj:Dynamic, ?extract_numpy:Dynamic, ?extract_range:Dynamic):Dynamic;
	/**
		get_option(pat)
		
		Retrieves the value of the specified option.
		
		Available options:
		
		- compute.[use_bottleneck, use_numba, use_numexpr]
		- display.[chop_threshold, colheader_justify, column_space, date_dayfirst,
		  date_yearfirst, encoding, expand_frame_repr, float_format]
		- display.html.[border, table_schema, use_mathjax]
		- display.[large_repr]
		- display.latex.[escape, longtable, multicolumn, multicolumn_format, multirow,
		  repr]
		- display.[max_categories, max_columns, max_colwidth, max_dir_items,
		  max_info_columns, max_info_rows, max_rows, max_seq_items, memory_usage,
		  min_rows, multi_sparse, notebook_repr_html, pprint_nest_depth, precision,
		  show_dimensions]
		- display.unicode.[ambiguous_as_wide, east_asian_width]
		- display.[width]
		- io.excel.ods.[reader, writer]
		- io.excel.xls.[reader, writer]
		- io.excel.xlsb.[reader]
		- io.excel.xlsm.[reader, writer]
		- io.excel.xlsx.[reader, writer]
		- io.hdf.[default_format, dropna_table]
		- io.parquet.[engine]
		- io.sql.[engine]
		- mode.[chained_assignment, data_manager, sim_interactive, string_storage,
		  use_inf_as_na, use_inf_as_null]
		- plotting.[backend]
		- plotting.matplotlib.[register_converters]
		- styler.format.[decimal, escape, formatter, na_rep, precision, thousands]
		- styler.html.[mathjax]
		- styler.latex.[environment, hrules, multicol_align, multirow_align]
		- styler.render.[encoding, max_columns, max_elements, max_rows, repr]
		- styler.sparse.[columns, index]
		
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
		compute.use_numba : bool
		    Use the numba engine option for select operations if it is installed,
		    the default is False
		    Valid values: False,True
		    [default: False] [currently: False]
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
		display.max_colwidth : int or None
		    The maximum width in characters of a column in the repr of
		    a pandas data structure. When the column overflows, a "..."
		    placeholder is embedded in the output. A 'None' value means unlimited.
		    [default: 50] [currently: 50]
		display.max_dir_items : int
		    The number of items that will be added to `dir(...)`. 'None' value means
		    unlimited. Because dir is cached, changing this option will not immediately
		    affect already existing dataframes until a column is deleted or added.
		
		    This is for instance used to suggest columns from a dataframe to tab
		    completion.
		    [default: 100] [currently: 100]
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
		    When pretty-printing a long sequence, no more then `max_seq_items`
		    will be printed. If items are omitted, they will be denoted by the
		    addition of "..." to the resulting string.
		
		    If set to None, the number of items to be printed is unlimited.
		    [default: 100] [currently: 100]
		display.memory_usage : bool, string or None
		    This specifies if the memory usage of a DataFrame should be displayed when
		    df.info() is called. Valid values True,False,'deep'
		    [default: True] [currently: True]
		display.min_rows : int
		    The numbers of rows to show in a truncated view (when `max_rows` is
		    exceeded). Ignored when `max_rows` is set to None or 0. When set to
		    None, follows the value of `max_rows`.
		    [default: 10] [currently: 10]
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
		    Floating point output precision in terms of number of places after the
		    decimal, for regular formatting as well as scientific notation. Similar
		    to ``precision`` in :meth:`numpy.set_printoptions`.
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
		io.excel.ods.reader : string
		    The default Excel reader engine for 'ods' files. Available options:
		    auto, odf.
		    [default: auto] [currently: auto]
		io.excel.ods.writer : string
		    The default Excel writer engine for 'ods' files. Available options:
		    auto, odf.
		    [default: auto] [currently: auto]
		io.excel.xls.reader : string
		    The default Excel reader engine for 'xls' files. Available options:
		    auto, xlrd.
		    [default: auto] [currently: auto]
		io.excel.xls.writer : string
		    The default Excel writer engine for 'xls' files. Available options:
		    auto, xlwt.
		    [default: auto] [currently: auto]
		    (Deprecated, use `` instead.)
		io.excel.xlsb.reader : string
		    The default Excel reader engine for 'xlsb' files. Available options:
		    auto, pyxlsb.
		    [default: auto] [currently: auto]
		io.excel.xlsm.reader : string
		    The default Excel reader engine for 'xlsm' files. Available options:
		    auto, xlrd, openpyxl.
		    [default: auto] [currently: auto]
		io.excel.xlsm.writer : string
		    The default Excel writer engine for 'xlsm' files. Available options:
		    auto, openpyxl.
		    [default: auto] [currently: auto]
		io.excel.xlsx.reader : string
		    The default Excel reader engine for 'xlsx' files. Available options:
		    auto, xlrd, openpyxl.
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
		io.sql.engine : string
		    The default sql reader/writer engine. Available options:
		    'auto', 'sqlalchemy', the default is 'auto'
		    [default: auto] [currently: auto]
		mode.chained_assignment : string
		    Raise an exception, warn, or no action if trying to use chained assignment,
		    The default is warn
		    [default: warn] [currently: warn]
		mode.data_manager : string
		    Internal data manager type; can be "block" or "array". Defaults to "block",
		    unless overridden by the 'PANDAS_DATA_MANAGER' environment variable (needs
		    to be set before pandas is imported).
		    [default: block] [currently: block]
		mode.sim_interactive : boolean
		    Whether to simulate interactive mode for purposes of testing
		    [default: False] [currently: False]
		mode.string_storage : string
		    The default storage for StringDtype.
		    [default: python] [currently: python]
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
		plotting.backend : str
		    The plotting backend to use. The default value is "matplotlib", the
		    backend provided with pandas. Other backends can be specified by
		    providing the name of the module that implements the backend.
		    [default: matplotlib] [currently: matplotlib]
		plotting.matplotlib.register_converters : bool or 'auto'.
		    Whether to register converters with matplotlib's units registry for
		    dates, times, datetimes, and Periods. Toggling to False will remove
		    the converters, restoring any converters that pandas overwrote.
		    [default: auto] [currently: auto]
		styler.format.decimal : str
		    The character representation for the decimal separator for floats and complex.
		    [default: .] [currently: .]
		styler.format.escape : str, optional
		    Whether to escape certain characters according to the given context; html or latex.
		    [default: None] [currently: None]
		styler.format.formatter : str, callable, dict, optional
		    A formatter object to be used as default within ``Styler.format``.
		    [default: None] [currently: None]
		styler.format.na_rep : str, optional
		    The string representation for values identified as missing.
		    [default: None] [currently: None]
		styler.format.precision : int
		    The precision for floats and complex numbers.
		    [default: 6] [currently: 6]
		styler.format.thousands : str, optional
		    The character representation for thousands separator for floats, int and complex.
		    [default: None] [currently: None]
		styler.html.mathjax : bool
		    If False will render special CSS classes to table attributes that indicate Mathjax
		    will not be used in Jupyter Notebook.
		    [default: True] [currently: True]
		styler.latex.environment : str
		    The environment to replace ``\begin{table}``. If "longtable" is used results
		    in a specific longtable environment format.
		    [default: None] [currently: None]
		styler.latex.hrules : bool
		    Whether to add horizontal rules on top and bottom and below the headers.
		    [default: False] [currently: False]
		styler.latex.multicol_align : {"r", "c", "l", "naive-l", "naive-r"}
		    The specifier for horizontal alignment of sparsified LaTeX multicolumns. Pipe
		    decorators can also be added to non-naive values to draw vertical
		    rules, e.g. "\|r" will draw a rule on the left side of right aligned merged cells.
		    [default: r] [currently: r]
		styler.latex.multirow_align : {"c", "t", "b"}
		    The specifier for vertical alignment of sparsified LaTeX multirows.
		    [default: c] [currently: c]
		styler.render.encoding : str
		    The encoding used for output HTML and LaTeX files.
		    [default: utf-8] [currently: utf-8]
		styler.render.max_columns : int, optional
		    The maximum number of columns that will be rendered. May still be reduced to
		    satsify ``max_elements``, which takes precedence.
		    [default: None] [currently: None]
		styler.render.max_elements : int
		    The maximum number of data-cell (<td>) elements that will be rendered before
		    trimming will occur over columns, rows or both if needed.
		    [default: 262144] [currently: 262144]
		styler.render.max_rows : int, optional
		    The maximum number of rows that will be rendered. May still be reduced to
		    satsify ``max_elements``, which takes precedence.
		    [default: None] [currently: None]
		styler.render.repr : str
		    Determine which output to use in Jupyter Notebook in {"html", "latex"}.
		    [default: html] [currently: html]
		styler.sparse.columns : bool
		    Whether to sparsify the display of hierarchical columns. Setting to False will
		    display each explicit level element in a hierarchical key for each column.
		    [default: True] [currently: True]
		styler.sparse.index : bool
		    Whether to sparsify the display of a hierarchical index. Setting to False will
		    display each explicit level element in a hierarchical key for each row.
		    [default: True] [currently: True]
	**/
	static public function get_option(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Check if the object is array-like.
		
		For an object to be considered array-like, it must be list-like and
		have a `dtype` attribute.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_array_like : bool
		    Whether `obj` has array-like properties.
		
		Examples
		--------
		>>> is_array_like(np.array([1, 2, 3]))
		True
		>>> is_array_like(pd.Series(["a", "b"]))
		True
		>>> is_array_like(pd.Index(["2016-01-01"]))
		True
		>>> is_array_like([1, 2, 3])
		False
		>>> is_array_like(("a", "b"))
		False
	**/
	static public function is_array_like(obj:Dynamic):Bool;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a boolean dtype.
		
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
		>>> is_bool_dtype(np.bool_)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
		>>> is_bool_dtype(pd.Categorical([True, False]))
		True
		>>> is_bool_dtype(pd.arrays.SparseArray([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		-------
		boolean
		    Whether or not the two dtypes are equal.
		
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
		>>> is_dtype_equal(DatetimeTZDtype(tz="UTC"), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `is_any_int_dtype`, timedelta64 instances will return False.
		
		The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of an integer dtype and
		    not an instance of timedelta64.
		
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
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the object dtype.
		
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
		Check whether the provided array or dtype is of the string dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of the string dtype.
		
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
		
		>>> pd.isna(pd.NA)
		True
		
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
	static public var pa_version_under1p01 : Dynamic;
	/**
		Convert input into a pandas only dtype object or a numpy dtype object.
		
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
	/**
		Register an ExtensionType with pandas as class decorator.
		
		This enables operations like ``.astype(name)`` for the name
		of the ExtensionDtype.
		
		Returns
		-------
		callable
		    A class decorator.
		
		Examples
		--------
		>>> from pandas.api.extensions import register_extension_dtype, ExtensionDtype
		>>> @register_extension_dtype
		... class MyExtensionDtype(ExtensionDtype):
		...     name = "myextension"
	**/
	static public function register_extension_dtype(cls:Dynamic):Dynamic;
	/**
		A special construct usable to annotate class objects.
		
		For example, suppose we have the following classes::
		
		  class User: ...  # Abstract base for User classes
		  class BasicUser(User): ...
		  class ProUser(User): ...
		  class TeamUser(User): ...
		
		And a function that takes a class argument that's a subclass of
		User and returns an instance of the corresponding class::
		
		  U = TypeVar('U', bound=User)
		  def new_user(user_class: Type[U]) -> U:
		      user = user_class()
		      # (Here we could write the user object to a database)
		      return user
		
		  joe = new_user(BasicUser)
		
		At this point the type checker knows that joe has type BasicUser.
	**/
	static public function type_t(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}