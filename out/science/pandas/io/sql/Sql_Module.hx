/* This file is generated, do not edit! */
package pandas.io.sql;
@:pythonImport("pandas.io.sql") extern class Sql_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeArg(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _SQL_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert SQL and params args to DBAPI2.0 compliant format.
	**/
	static public function _convert_params(sql:Dynamic, params:Dynamic):Dynamic;
	static public function _get_unicode_name(name:Dynamic):Dynamic;
	static public function _get_valid_sqlite_name(name:Dynamic):Dynamic;
	/**
		Check if sqlalchemy.__version__ is at least 1.4.0, when several
		deprecations were made.
	**/
	static public function _gt14():Dynamic;
	static public function _handle_date_column(col:Dynamic, ?utc:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Force non-datetime columns to be read as such.
		Supports both string formatted and integer timestamp columns.
	**/
	static public function _parse_date_columns(data_frame:Dynamic, parse_dates:Dynamic):Dynamic;
	/**
		Process parse_dates argument for read_sql functions
	**/
	static public function _process_parse_dates_argument(parse_dates:Dynamic):Dynamic;
	/**
		Wrap result set of query in a DataFrame.
	**/
	static public function _wrap_result(data:Dynamic, columns:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Execute the given SQL query using the provided connection object.
		
		Parameters
		----------
		sql : string
		    SQL query to be executed.
		con : SQLAlchemy connectable(engine/connection) or sqlite3 connection
		    Using SQLAlchemy makes it possible to use any DB supported by the
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		params : list or tuple, optional, default: None
		    List of parameters to pass to execute method.
		
		Returns
		-------
		Results Iterable
	**/
	static public function execute(sql:Dynamic, con:Dynamic, ?params:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		return our implementation
	**/
	static public function get_engine(engine:Dynamic):Dynamic;
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
		Get the SQL db table schema for the given frame.
		
		Parameters
		----------
		frame : DataFrame
		name : str
		    name of SQL table
		keys : string or sequence, default: None
		    columns to use a primary key
		con: an open SQL database connection object or a SQLAlchemy connectable
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library, default: None
		    If a DBAPI2 object, only sqlite3 is supported.
		dtype : dict of column name to SQL type, default None
		    Optional specifying the datatype for columns. The SQL type should
		    be a SQLAlchemy type, or a string for sqlite3 fallback connection.
		schema: str, default: None
		    Optional specifying the schema to be used in creating the table.
		
		    .. versionadded:: 1.2.0
	**/
	static public function get_schema(frame:Dynamic, name:Dynamic, ?keys:Dynamic, ?con:Dynamic, ?dtype:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Check if DataBase has named table.
		
		Parameters
		----------
		table_name: string
		    Name of SQL table.
		con: SQLAlchemy connectable(engine/connection) or sqlite3 DBAPI2 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		schema : string, default None
		    Name of SQL schema in database to write to (if database flavor supports
		    this). If None, use default schema (default).
		
		Returns
		-------
		boolean
	**/
	static public function has_table(table_name:Dynamic, con:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Import an optional dependency.
		
		By default, if a dependency is missing an ImportError with a nice
		message will be raised. If a dependency is present, but too old,
		we raise.
		
		Parameters
		----------
		name : str
		    The module name.
		extra : str
		    Additional text to include in the ImportError message.
		errors : str {'raise', 'warn', 'ignore'}
		    What to do when a dependency is not found or its version is too old.
		
		    * raise : Raise an ImportError
		    * warn : Only applicable when a module's version is to old.
		      Warns that the version is too old and returns None
		    * ignore: If the module is not installed, return None, otherwise,
		      return the module, even if the version is too old.
		      It's expected that users validate the version locally when
		      using ``errors="ignore"`` (see. ``io/html.py``)
		min_version : str, default None
		    Specify a minimum version that is different from the global pandas
		    minimum version required.
		Returns
		-------
		maybe_module : Optional[ModuleType]
		    The imported module, when found and the version is correct.
		    None is returned when the package is not found and `errors`
		    is False, or when the package's version is too old and `errors`
		    is ``'warn'``.
	**/
	static public function import_optional_dependency(name:Dynamic, ?extra:Dynamic, ?errors:Dynamic, ?min_version:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of a DatetimeTZDtype dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of a DatetimeTZDtype dtype.
		
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
		Check if the object is dict-like.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_dict_like : bool
		    Whether `obj` has dict-like properties.
		
		Examples
		--------
		>>> is_dict_like({1: 2})
		True
		>>> is_dict_like([1, 2, 3])
		False
		>>> is_dict_like(dict)
		False
		>>> is_dict_like(dict())
		True
	**/
	static public function is_dict_like(obj:Dynamic):Bool;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Decorator for overloaded functions/methods.
		
		In a stub file, place two or more stub definitions for the same
		function in a row, each decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		
		In a non-stub file (i.e. a regular .py file), do the same but
		follow it with an implementation.  The implementation should *not*
		be decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		  def utf8(value):
		      # implementation goes here
	**/
	@:native("overload")
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Convenience function to return the correct PandasSQL subclass based on the
		provided parameters.
	**/
	static public function pandasSQL_builder(con:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Read SQL query or database table into a DataFrame.
		
		This function is a convenience wrapper around ``read_sql_table`` and
		``read_sql_query`` (for backward compatibility). It will delegate
		to the specific function depending on the provided input. A SQL query
		will be routed to ``read_sql_query``, while a database table name will
		be routed to ``read_sql_table``. Note that the delegated function might
		have more specific notes about their functionality not listed here.
		
		Parameters
		----------
		sql : str or SQLAlchemy Selectable (select or text object)
		    SQL query to be executed or a table name.
		con : SQLAlchemy connectable, str, or sqlite3 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library. If a DBAPI2 object, only sqlite3 is supported. The user is responsible
		    for engine disposal and connection closure for the SQLAlchemy connectable; str
		    connections are closed automatically. See
		    `here <https://docs.sqlalchemy.org/en/13/core/connections.html>`_.
		index_col : str or list of str, optional, default: None
		    Column(s) to set as index(MultiIndex).
		coerce_float : bool, default True
		    Attempts to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets.
		params : list, tuple or dict, optional, default: None
		    List of parameters to pass to execute method.  The syntax used
		    to pass parameters is database driver dependent. Check your
		    database driver documentation for which of the five syntax styles,
		    described in PEP 249's paramstyle, is supported.
		    Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}.
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates.
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times, or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps.
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite.
		columns : list, default: None
		    List of column names to select from SQL table (only used when reading
		    a table).
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the
		    number of rows to include in each chunk.
		
		Returns
		-------
		DataFrame or Iterator[DataFrame]
		
		See Also
		--------
		read_sql_table : Read SQL database table into a DataFrame.
		read_sql_query : Read SQL query into a DataFrame.
		
		Examples
		--------
		Read data from SQL via either a SQL query or a SQL tablename.
		When using a SQLite database only SQL queries are accepted,
		providing only the SQL tablename will result in an error.
		
		>>> from sqlite3 import connect
		>>> conn = connect(':memory:')
		>>> df = pd.DataFrame(data=[[0, '10/11/12'], [1, '12/11/10']],
		...                   columns=['int_column', 'date_column'])
		>>> df.to_sql('test_data', conn)
		2
		
		>>> pd.read_sql('SELECT int_column, date_column FROM test_data', conn)
		   int_column date_column
		0           0    10/11/12
		1           1    12/11/10
		
		>>> pd.read_sql('test_data', 'postgres:///db_name')  # doctest:+SKIP
		
		Apply date parsing to columns through the ``parse_dates`` argument
		
		>>> pd.read_sql('SELECT int_column, date_column FROM test_data',
		...             conn,
		...             parse_dates=["date_column"])
		   int_column date_column
		0           0  2012-10-11
		1           1  2010-12-11
		
		The ``parse_dates`` argument calls ``pd.to_datetime`` on the provided columns.
		Custom argument values for applying ``pd.to_datetime`` on a column are specified
		via a dictionary format:
		1. Ignore errors while parsing the values of "date_column"
		
		>>> pd.read_sql('SELECT int_column, date_column FROM test_data',
		...             conn,
		...             parse_dates={"date_column": {"errors": "ignore"}})
		   int_column date_column
		0           0  2012-10-11
		1           1  2010-12-11
		
		2. Apply a dayfirst date parsing order on the values of "date_column"
		
		>>> pd.read_sql('SELECT int_column, date_column FROM test_data',
		...             conn,
		...             parse_dates={"date_column": {"dayfirst": True}})
		   int_column date_column
		0           0  2012-11-10
		1           1  2010-11-12
		
		3. Apply custom formatting when date parsing the values of "date_column"
		
		>>> pd.read_sql('SELECT int_column, date_column FROM test_data',
		...             conn,
		...             parse_dates={"date_column": {"format": "%d/%m/%y"}})
		   int_column date_column
		0           0  2012-11-10
		1           1  2010-11-12
	**/
	static public function read_sql(sql:Dynamic, con:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?params:Dynamic, ?parse_dates:Dynamic, ?columns:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Read SQL query into a DataFrame.
		
		Returns a DataFrame corresponding to the result set of the query
		string. Optionally provide an `index_col` parameter to use one of the
		columns as the index, otherwise default integer index will be used.
		
		Parameters
		----------
		sql : str SQL query or SQLAlchemy Selectable (select or text object)
		    SQL query to be executed.
		con : SQLAlchemy connectable, str, or sqlite3 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library. If a DBAPI2 object, only sqlite3 is supported.
		index_col : str or list of str, optional, default: None
		    Column(s) to set as index(MultiIndex).
		coerce_float : bool, default True
		    Attempts to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point. Useful for SQL result sets.
		params : list, tuple or dict, optional, default: None
		    List of parameters to pass to execute method.  The syntax used
		    to pass parameters is database driver dependent. Check your
		    database driver documentation for which of the five syntax styles,
		    described in PEP 249's paramstyle, is supported.
		    Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}.
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates.
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times, or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps.
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite.
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the number of
		    rows to include in each chunk.
		dtype : Type name or dict of columns
		    Data type for data or columns. E.g. np.float64 or
		    {‘a’: np.float64, ‘b’: np.int32, ‘c’: ‘Int64’}.
		
		    .. versionadded:: 1.3.0
		
		Returns
		-------
		DataFrame or Iterator[DataFrame]
		
		See Also
		--------
		read_sql_table : Read SQL database table into a DataFrame.
		read_sql : Read SQL query or database table into a DataFrame.
		
		Notes
		-----
		Any datetime values with time zone information parsed via the `parse_dates`
		parameter will be converted to UTC.
	**/
	static public function read_sql_query(sql:Dynamic, con:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?params:Dynamic, ?parse_dates:Dynamic, ?chunksize:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Read SQL database table into a DataFrame.
		
		Given a table name and a SQLAlchemy connectable, returns a DataFrame.
		This function does not support DBAPI connections.
		
		Parameters
		----------
		table_name : str
		    Name of SQL table in database.
		con : SQLAlchemy connectable or str
		    A database URI could be provided as str.
		    SQLite DBAPI connection mode not supported.
		schema : str, default None
		    Name of SQL schema in database to query (if database flavor
		    supports this). Uses default schema if None (default).
		index_col : str or list of str, optional, default: None
		    Column(s) to set as index(MultiIndex).
		coerce_float : bool, default True
		    Attempts to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point. Can result in loss of Precision.
		parse_dates : list or dict, default None
		    - List of column names to parse as dates.
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps.
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite.
		columns : list, default None
		    List of column names to select from SQL table.
		chunksize : int, default None
		    If specified, returns an iterator where `chunksize` is the number of
		    rows to include in each chunk.
		
		Returns
		-------
		DataFrame or Iterator[DataFrame]
		    A SQL table is returned as two-dimensional data structure with labeled
		    axes.
		
		See Also
		--------
		read_sql_query : Read SQL query into a DataFrame.
		read_sql : Read SQL query or database table into a DataFrame.
		
		Notes
		-----
		Any datetime values with time zone information will be converted to UTC.
		
		Examples
		--------
		>>> pd.read_sql_table('table_name', 'postgres:///db_name')  # doctest:+SKIP
	**/
	static public function read_sql_table(table_name:Dynamic, con:Dynamic, ?schema:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?columns:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Check if DataBase has named table.
		
		Parameters
		----------
		table_name: string
		    Name of SQL table.
		con: SQLAlchemy connectable(engine/connection) or sqlite3 DBAPI2 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		schema : string, default None
		    Name of SQL schema in database to write to (if database flavor supports
		    this). If None, use default schema (default).
		
		Returns
		-------
		boolean
	**/
	static public function table_exists(table_name:Dynamic, con:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Convert argument to datetime.
		
		This function converts a scalar, array-like, :class:`Series` or
		:class:`DataFrame`/dict-like to a pandas datetime object.
		
		Parameters
		----------
		arg : int, float, str, datetime, list, tuple, 1-d array, Series, DataFrame/dict-like
		    The object to convert to a datetime. If a :class:`DataFrame` is provided, the
		    method expects minimally the following columns: :const:`"year"`,
		    :const:`"month"`, :const:`"day"`.
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If :const:`'raise'`, then invalid parsing will raise an exception.
		    - If :const:`'coerce'`, then invalid parsing will be set as :const:`NaT`.
		    - If :const:`'ignore'`, then invalid parsing will return the input.
		dayfirst : bool, default False
		    Specify a date parse order if `arg` is str or is list-like.
		    If :const:`True`, parses dates with the day first, e.g. :const:`"10/11/12"`
		    is parsed as :const:`2012-11-10`.
		
		    .. warning::
		
		        ``dayfirst=True`` is not strict, but will prefer to parse
		        with day first. If a delimited date string cannot be parsed in
		        accordance with the given `dayfirst` option, e.g.
		        ``to_datetime(['31-12-2021'])``, then a warning will be shown.
		
		yearfirst : bool, default False
		    Specify a date parse order if `arg` is str or is list-like.
		
		    - If :const:`True` parses dates with the year first, e.g.
		      :const:`"10/11/12"` is parsed as :const:`2010-11-12`.
		    - If both `dayfirst` and `yearfirst` are :const:`True`, `yearfirst` is
		      preceded (same as :mod:`dateutil`).
		
		    .. warning::
		
		        ``yearfirst=True`` is not strict, but will prefer to parse
		        with year first.
		
		utc : bool, default None
		    Control timezone-related parsing, localization and conversion.
		
		    - If :const:`True`, the function *always* returns a timezone-aware
		      UTC-localized :class:`Timestamp`, :class:`Series` or
		      :class:`DatetimeIndex`. To do this, timezone-naive inputs are
		      *localized* as UTC, while timezone-aware inputs are *converted* to UTC.
		
		    - If :const:`False` (default), inputs will not be coerced to UTC.
		      Timezone-naive inputs will remain naive, while timezone-aware ones
		      will keep their time offsets. Limitations exist for mixed
		      offsets (typically, daylight savings), see :ref:`Examples
		      <to_datetime_tz_examples>` section for details.
		
		    See also: pandas general documentation about `timezone conversion and
		    localization
		    <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		    #time-zone-handling>`_.
		
		format : str, default None
		    The strftime to parse time, e.g. :const:`"%d/%m/%Y"`. Note that
		    :const:`"%f"` will parse all the way up to nanoseconds. See
		    `strftime documentation
		    <https://docs.python.org/3/library/datetime.html
		    #strftime-and-strptime-behavior>`_ for more information on choices.
		exact : bool, default True
		    Control how `format` is used:
		
		    - If :const:`True`, require an exact `format` match.
		    - If :const:`False`, allow the `format` to match anywhere in the target
		      string.
		
		unit : str, default 'ns'
		    The unit of the arg (D,s,ms,us,ns) denote the unit, which is an
		    integer or float number. This will be based off the origin.
		    Example, with ``unit='ms'`` and ``origin='unix'`` (the default), this
		    would calculate the number of milliseconds to the unix epoch start.
		infer_datetime_format : bool, default False
		    If :const:`True` and no `format` is given, attempt to infer the format
		    of the datetime strings based on the first non-NaN element,
		    and if it can be inferred, switch to a faster method of parsing them.
		    In some cases this can increase the parsing speed by ~5-10x.
		origin : scalar, default 'unix'
		    Define the reference date. The numeric values would be parsed as number
		    of units (defined by `unit`) since this reference date.
		
		    - If :const:`'unix'` (or POSIX) time; origin is set to 1970-01-01.
		    - If :const:`'julian'`, unit must be :const:`'D'`, and origin is set to
		      beginning of Julian Calendar. Julian day number :const:`0` is assigned
		      to the day starting at noon on January 1, 4713 BC.
		    - If Timestamp convertible, origin is set to Timestamp identified by
		      origin.
		cache : bool, default True
		    If :const:`True`, use a cache of unique, converted dates to apply the
		    datetime conversion. May produce significant speed-up when parsing
		    duplicate date strings, especially ones with timezone offsets. The cache
		    is only used when there are at least 50 values. The presence of
		    out-of-bounds values will render the cache unusable and may slow down
		    parsing.
		
		    .. versionchanged:: 0.25.0
		        changed default value from :const:`False` to :const:`True`.
		
		Returns
		-------
		datetime
		    If parsing succeeded.
		    Return type depends on input (types in parenthesis correspond to
		    fallback in case of unsuccessful timezone or out-of-range timestamp
		    parsing):
		
		    - scalar: :class:`Timestamp` (or :class:`datetime.datetime`)
		    - array-like: :class:`DatetimeIndex` (or :class:`Series` with
		      :class:`object` dtype containing :class:`datetime.datetime`)
		    - Series: :class:`Series` of :class:`datetime64` dtype (or
		      :class:`Series` of :class:`object` dtype containing
		      :class:`datetime.datetime`)
		    - DataFrame: :class:`Series` of :class:`datetime64` dtype (or
		      :class:`Series` of :class:`object` dtype containing
		      :class:`datetime.datetime`)
		
		Raises
		------
		ParserError
		    When parsing a date from string fails.
		ValueError
		    When another datetime conversion error happens. For example when one
		    of 'year', 'month', day' columns is missing in a :class:`DataFrame`, or
		    when a Timezone-aware :class:`datetime.datetime` is found in an array-like
		    of mixed time offsets, and ``utc=False``.
		
		See Also
		--------
		DataFrame.astype : Cast argument to a specified dtype.
		to_timedelta : Convert argument to timedelta.
		convert_dtypes : Convert dtypes.
		
		Notes
		-----
		
		Many input types are supported, and lead to different output types:
		
		- **scalars** can be int, float, str, datetime object (from stdlib :mod:`datetime`
		  module or :mod:`numpy`). They are converted to :class:`Timestamp` when
		  possible, otherwise they are converted to :class:`datetime.datetime`.
		  None/NaN/null scalars are converted to :const:`NaT`.
		
		- **array-like** can contain int, float, str, datetime objects. They are
		  converted to :class:`DatetimeIndex` when possible, otherwise they are
		  converted to :class:`Index` with :class:`object` dtype, containing
		  :class:`datetime.datetime`. None/NaN/null entries are converted to
		  :const:`NaT` in both cases.
		
		- **Series** are converted to :class:`Series` with :class:`datetime64`
		  dtype when possible, otherwise they are converted to :class:`Series` with
		  :class:`object` dtype, containing :class:`datetime.datetime`. None/NaN/null
		  entries are converted to :const:`NaT` in both cases.
		
		- **DataFrame/dict-like** are converted to :class:`Series` with
		  :class:`datetime64` dtype. For each row a datetime is created from assembling
		  the various dataframe columns. Column keys can be common abbreviations
		  like [‘year’, ‘month’, ‘day’, ‘minute’, ‘second’, ‘ms’, ‘us’, ‘ns’]) or
		  plurals of the same.
		
		The following causes are responsible for :class:`datetime.datetime` objects
		being returned (possibly inside an :class:`Index` or a :class:`Series` with
		:class:`object` dtype) instead of a proper pandas designated type
		(:class:`Timestamp`, :class:`DatetimeIndex` or :class:`Series`
		with :class:`datetime64` dtype):
		
		- when any input element is before :const:`Timestamp.min` or after
		  :const:`Timestamp.max`, see `timestamp limitations
		  <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		  #timeseries-timestamp-limits>`_.
		
		- when ``utc=False`` (default) and the input is an array-like or
		  :class:`Series` containing mixed naive/aware datetime, or aware with mixed
		  time offsets. Note that this happens in the (quite frequent) situation when
		  the timezone has a daylight savings policy. In that case you may wish to
		  use ``utc=True``.
		
		Examples
		--------
		
		**Handling various input formats**
		
		Assembling a datetime from multiple columns of a :class:`DataFrame`. The keys
		can be common abbreviations like ['year', 'month', 'day', 'minute', 'second',
		'ms', 'us', 'ns']) or plurals of the same
		
		>>> df = pd.DataFrame({'year': [2015, 2016],
		...                    'month': [2, 3],
		...                    'day': [4, 5]})
		>>> pd.to_datetime(df)
		0   2015-02-04
		1   2016-03-05
		dtype: datetime64[ns]
		
		Passing ``infer_datetime_format=True`` can often-times speedup a parsing
		if its not an ISO8601 format exactly, but in a regular format.
		
		>>> s = pd.Series(['3/11/2000', '3/12/2000', '3/13/2000'] * 1000)
		>>> s.head()
		0    3/11/2000
		1    3/12/2000
		2    3/13/2000
		3    3/11/2000
		4    3/12/2000
		dtype: object
		
		>>> %timeit pd.to_datetime(s, infer_datetime_format=True)  # doctest: +SKIP
		100 loops, best of 3: 10.4 ms per loop
		
		>>> %timeit pd.to_datetime(s, infer_datetime_format=False)  # doctest: +SKIP
		1 loop, best of 3: 471 ms per loop
		
		Using a unix epoch time
		
		>>> pd.to_datetime(1490195805, unit='s')
		Timestamp('2017-03-22 15:16:45')
		>>> pd.to_datetime(1490195805433502912, unit='ns')
		Timestamp('2017-03-22 15:16:45.433502912')
		
		.. warning:: For float arg, precision rounding might happen. To prevent
		    unexpected behavior use a fixed-width exact type.
		
		Using a non-unix epoch origin
		
		>>> pd.to_datetime([1, 2, 3], unit='D',
		...                origin=pd.Timestamp('1960-01-01'))
		DatetimeIndex(['1960-01-02', '1960-01-03', '1960-01-04'],
		              dtype='datetime64[ns]', freq=None)
		
		**Non-convertible date/times**
		
		If a date does not meet the `timestamp limitations
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		#timeseries-timestamp-limits>`_, passing ``errors='ignore'``
		will return the original input instead of raising any exception.
		
		Passing ``errors='coerce'`` will force an out-of-bounds date to :const:`NaT`,
		in addition to forcing non-dates (or non-parseable dates) to :const:`NaT`.
		
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='ignore')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
		
		.. _to_datetime_tz_examples:
		
		**Timezones and time offsets**
		
		The default behaviour (``utc=False``) is as follows:
		
		- Timezone-naive inputs are converted to timezone-naive :class:`DatetimeIndex`:
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 13:00:15'])
		DatetimeIndex(['2018-10-26 12:00:00', '2018-10-26 13:00:15'],
		              dtype='datetime64[ns]', freq=None)
		
		- Timezone-aware inputs *with constant time offset* are converted to
		  timezone-aware :class:`DatetimeIndex`:
		
		>>> pd.to_datetime(['2018-10-26 12:00 -0500', '2018-10-26 13:00 -0500'])
		DatetimeIndex(['2018-10-26 12:00:00-05:00', '2018-10-26 13:00:00-05:00'],
		              dtype='datetime64[ns, pytz.FixedOffset(-300)]', freq=None)
		
		- However, timezone-aware inputs *with mixed time offsets* (for example
		  issued from a timezone with daylight savings, such as Europe/Paris)
		  are **not successfully converted** to a :class:`DatetimeIndex`. Instead a
		  simple :class:`Index` containing :class:`datetime.datetime` objects is
		  returned:
		
		>>> pd.to_datetime(['2020-10-25 02:00 +0200', '2020-10-25 04:00 +0100'])
		Index([2020-10-25 02:00:00+02:00, 2020-10-25 04:00:00+01:00],
		      dtype='object')
		
		- A mix of timezone-aware and timezone-naive inputs is converted to
		  a timezone-aware :class:`DatetimeIndex` if the offsets of the timezone-aware
		  are constant:
		
		>>> from datetime import datetime
		>>> pd.to_datetime(["2020-01-01 01:00 -01:00", datetime(2020, 1, 1, 3, 0)])
		DatetimeIndex(['2020-01-01 01:00:00-01:00', '2020-01-01 02:00:00-01:00'],
		              dtype='datetime64[ns, pytz.FixedOffset(-60)]', freq=None)
		
		- Finally, mixing timezone-aware strings and :class:`datetime.datetime` always
		  raises an error, even if the elements all have the same time offset.
		
		>>> from datetime import datetime, timezone, timedelta
		>>> d = datetime(2020, 1, 1, 18, tzinfo=timezone(-timedelta(hours=1)))
		>>> pd.to_datetime(["2020-01-01 17:00 -0100", d])
		Traceback (most recent call last):
		    ...
		ValueError: Tz-aware datetime.datetime cannot be converted to datetime64
		            unless utc=True
		
		|
		
		Setting ``utc=True`` solves most of the above issues:
		
		- Timezone-naive inputs are *localized* as UTC
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 13:00'], utc=True)
		DatetimeIndex(['2018-10-26 12:00:00+00:00', '2018-10-26 13:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
		
		- Timezone-aware inputs are *converted* to UTC (the output represents the
		  exact same datetime, but viewed from the UTC time offset `+00:00`).
		
		>>> pd.to_datetime(['2018-10-26 12:00 -0530', '2018-10-26 12:00 -0500'],
		...                utc=True)
		DatetimeIndex(['2018-10-26 17:30:00+00:00', '2018-10-26 17:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
		
		- Inputs can contain both naive and aware, string or datetime, the above
		  rules still apply
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 12:00 -0530',
		...                datetime(2020, 1, 1, 18),
		...                datetime(2020, 1, 1, 18,
		...                tzinfo=timezone(-timedelta(hours=1)))],
		...                utc=True)
		DatetimeIndex(['2018-10-26 12:00:00+00:00', '2018-10-26 17:30:00+00:00',
		               '2020-01-01 18:00:00+00:00', '2020-01-01 19:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic, ?origin:Dynamic, ?cache:Dynamic):Dynamic;
	/**
		Write records stored in a DataFrame to a SQL database.
		
		Parameters
		----------
		frame : DataFrame, Series
		name : str
		    Name of SQL table.
		con : SQLAlchemy connectable(engine/connection) or database string URI
		    or sqlite3 DBAPI2 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		schema : str, optional
		    Name of SQL schema in database to write to (if database flavor
		    supports this). If None, use default schema (default).
		if_exists : {'fail', 'replace', 'append'}, default 'fail'
		    - fail: If table exists, do nothing.
		    - replace: If table exists, drop it, recreate it, and insert data.
		    - append: If table exists, insert data. Create if does not exist.
		index : bool, default True
		    Write DataFrame index as a column.
		index_label : str or sequence, optional
		    Column label for index column(s). If None is given (default) and
		    `index` is True, then the index names are used.
		    A sequence should be given if the DataFrame uses MultiIndex.
		chunksize : int, optional
		    Specify the number of rows in each batch to be written at a time.
		    By default, all rows will be written at once.
		dtype : dict or scalar, optional
		    Specifying the datatype for columns. If a dictionary is used, the
		    keys should be the column names and the values should be the
		    SQLAlchemy types or strings for the sqlite3 fallback mode. If a
		    scalar is provided, it will be applied to all columns.
		method : {None, 'multi', callable}, optional
		    Controls the SQL insertion clause used:
		
		    - None : Uses standard SQL ``INSERT`` clause (one per row).
		    - ``'multi'``: Pass multiple values in a single ``INSERT`` clause.
		    - callable with signature ``(pd_table, conn, keys, data_iter) -> int | None``.
		
		    Details and a sample callable implementation can be found in the
		    section :ref:`insert method <io.sql.method>`.
		engine : {'auto', 'sqlalchemy'}, default 'auto'
		    SQL engine library to use. If 'auto', then the option
		    ``io.sql.engine`` is used. The default ``io.sql.engine``
		    behavior is 'sqlalchemy'
		
		    .. versionadded:: 1.3.0
		
		**engine_kwargs
		    Any additional kwargs are passed to the engine.
		
		Returns
		-------
		None or int
		    Number of rows affected by to_sql. None is returned if the callable
		    passed into ``method`` does not return the number of rows.
		
		    .. versionadded:: 1.4.0
		
		Notes
		-----
		The returned rows affected is the sum of the ``rowcount`` attribute of ``sqlite3.Cursor``
		or SQLAlchemy connectable. The returned value may not reflect the exact number of written
		rows as stipulated in the
		`sqlite3 <https://docs.python.org/3/library/sqlite3.html#sqlite3.Cursor.rowcount>`__ or
		`SQLAlchemy <https://docs.sqlalchemy.org/en/14/core/connections.html#sqlalchemy.engine.BaseCursorResult.rowcount>`__
	**/
	static public function to_sql(frame:Dynamic, name:Dynamic, con:Dynamic, ?schema:Dynamic, ?if_exists:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?chunksize:Dynamic, ?dtype:Dynamic, ?method:Dynamic, ?engine:Dynamic, ?engine_kwargs:python.KwArgs<Dynamic>):Dynamic;
}