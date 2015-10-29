/* This file is generated, do not edit! */
package pandas.io.tests;
@:pythonImport("pandas.io.tests.test_excel") extern class Test_excel {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _frame : Dynamic;
	static public var _frame2 : Dynamic;
	static public var _mixed_frame : Dynamic;
	static public var _seriesd : Dynamic;
	static public function _skip_if_no_excelsuite():Dynamic;
	static public function _skip_if_no_openpyxl():Dynamic;
	static public function _skip_if_no_xlrd():Dynamic;
	static public function _skip_if_no_xlsxwriter():Dynamic;
	static public function _skip_if_no_xlwt():Dynamic;
	static public var _tsd : Dynamic;
	static public var _tsframe : Dynamic;
	/**
		Gets a temporary path and agrees to remove on close.
		
		Parameters
		----------
		filename : str (optional)
		    if None, creates a temporary file which is then removed when out of
		    scope. if passed, creates temporary file with filename as ending.
		return_filelike : bool (default False)
		    if True, returns a file-like which is *always* cleaned. Necessary for
		    savefig and other functions which want to append extensions.
	**/
	static public function ensure_clean(?filename:Dynamic, ?return_filelike:Dynamic):Dynamic;
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
		replacement for six's iteritems for Python2/3 compat
		uses 'iteritems' if available and otherwise uses 'items'.
		
		Passes kwargs to method.
	**/
	static public function iteritems(obj:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var nan : Dynamic;
	static public function raise_on_incompat_version(major_ver:Dynamic):Dynamic;
	static public function raise_wrapper(major_ver:Dynamic):Dynamic;
	/**
		Read CSV (comma-separated) file into DataFrame
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Parameters
		----------
		filepath_or_buffer : string or file handle / StringIO
		    The string could be a URL. Valid URL schemes include
		    http, ftp, s3, and file. For file URLs, a
		    host is expected. For instance, a local file could be
		    file ://localhost/path/to/table.csv
		sep : string, default ','
		    Delimiter to use. If sep is None, will try to automatically determine
		    this. Regular expressions are accepted.
		engine : {'c', 'python'}
		    Parser engine to use. The C engine is faster while the python engine is
		    currently more feature-complete.
		lineterminator : string (length 1), default None
		    Character to break file into lines. Only valid with C parser
		quotechar : string (length 1)
		    The character used to denote the start and end of a quoted item. Quoted
		    items can include the delimiter and it will be ignored.
		quoting : int or csv.QUOTE_* instance, default None
		    Control field quoting behavior per ``csv.QUOTE_*`` constants. Use one of
		    QUOTE_MINIMAL (0), QUOTE_ALL (1), QUOTE_NONNUMERIC (2) or QUOTE_NONE (3).
		    Default (None) results in QUOTE_MINIMAL behavior.
		skipinitialspace : boolean, default False
		    Skip spaces after delimiter
		escapechar : string (length 1), default None
		    One-character string used to escape delimiter when quoting is QUOTE_NONE.
		dtype : Type name or dict of column -> type, default None
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32}
		    (Unsupported with engine='python')
		compression : {'gzip', 'bz2', 'infer', None}, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer', then use gzip or
		    bz2 if filepath_or_buffer is a string ending in '.gz' or '.bz2',
		    respectively, and no decompression otherwise. Set to None for no
		    decompression.
		dialect : string or csv.Dialect instance, default None
		    If None defaults to Excel dialect. Ignored if sep longer than 1 char
		    See csv.Dialect documentation for more details
		header : int, list of ints, default 'infer'
		    Row number(s) to use as the column names, and the start of the
		    data.  Defaults to 0 if no ``names`` passed, otherwise ``None``. Explicitly
		    pass ``header=0`` to be able to replace existing names. The header can be
		    a list of integers that specify row locations for a multi-index on the
		    columns E.g. [0,1,3]. Intervening rows that are not specified will be
		    skipped (e.g. 2 in this example are skipped). Note that this parameter
		    ignores commented lines and empty lines if ``skip_blank_lines=True``, so header=0
		    denotes the first line of data rather than the first line of the file.
		skiprows : list-like or integer, default None
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file
		index_col : int or sequence or False, default None
		    Column to use as the row labels of the DataFrame. If a sequence is given, a
		    MultiIndex is used. If you have a malformed file with delimiters at the end
		    of each line, you might consider index_col=False to force pandas to _not_
		    use the first column as the index (row names)
		names : array-like, default None
		    List of column names to use. If file contains no header row, then you
		    should explicitly pass header=None
		prefix : string, default None
		    Prefix to add to column numbers when no header, e.g 'X' for X0, X1, ...
		na_values : str, list-like or dict, default None
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values
		true_values : list, default None
		    Values to consider as True
		false_values : list, default None
		    Values to consider as False
		keep_default_na : bool, default True
		    If na_values are specified and keep_default_na is False the default NaN
		    values are overridden, otherwise they're appended to
		parse_dates : boolean, list of ints or names, list of lists, or dict, default False
		    If True -> try parsing the index.
		    If [1, 2, 3] -> try parsing columns 1, 2, 3 each as a separate date column.
		    If [[1, 3]] -> combine columns 1 and 3 and parse as a single date column.
		    {'foo' : [1, 3]} -> parse columns 1, 3 as date and call result 'foo'
		    A fast-path exists for iso8601-formatted dates.
		keep_date_col : boolean, default False
		    If True and parse_dates specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, default None
		    Function to use for converting a sequence of string columns to an
		    array of datetime instances. The default uses dateutil.parser.parser
		    to do the conversion. Pandas will try to call date_parser in three different
		    ways, advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by parse_dates) as arguments; 2) concatenate (row-wise) the string
		    values from the columns defined by parse_dates into a single array and pass
		    that; and 3) call date_parser once for each row using one or more strings
		    (corresponding to the columns defined by parse_dates) as arguments.
		dayfirst : boolean, default False
		    DD/MM format dates, international and European format
		thousands : str, default None
		    Thousands separator
		comment : str, default None
		    Indicates remainder of line should not be parsed. If found at the
		    beginning of a line, the line will be ignored altogether. This parameter
		    must be a single character. Like empty lines (as long as ``skip_blank_lines=True``),
		    fully commented lines are ignored by the parameter `header`
		    but not by `skiprows`. For example, if comment='#', parsing
		    '#empty\na,b,c\n1,2,3' with `header=0` will result in 'a,b,c' being
		    treated as the header.
		decimal : str, default '.'
		    Character to recognize as decimal point. E.g. use ',' for European data
		nrows : int, default None
		    Number of rows of file to read. Useful for reading pieces of large files
		iterator : boolean, default False
		    Return TextFileReader object
		chunksize : int, default None
		    Return TextFileReader object for iteration
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c')
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can either
		    be integers or column labels
		verbose : boolean, default False
		    Indicate number of NA values placed in non-numeric columns
		delimiter : string, default None
		    Alternative argument name for sep. Regular expressions are accepted.
		encoding : string, default None
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_
		squeeze : boolean, default False
		    If the parsed data only contains one column then return a Series
		na_filter : boolean, default True
		    Detect missing value markers (empty strings and the value of na_values). In
		    data without any NAs, passing na_filter=False can improve the performance
		    of reading a large file
		usecols : array-like, default None
		    Return a subset of the columns.
		    Results in much faster parsing time and lower memory usage.
		mangle_dupe_cols : boolean, default True
		    Duplicate columns will be specified as 'X.0'...'X.N', rather than 'X'...'X'
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
		infer_datetime_format : boolean, default False
		    If True and parse_dates is enabled for a column, attempt to infer
		    the datetime format to speed up the processing
		skip_blank_lines : boolean, default True
		    If True, skip over blank lines rather than interpreting as NaN values
		
		Returns
		-------
		result : DataFrame or TextParser
	**/
	static public function read_csv(filepath_or_buffer:Dynamic, ?sep:Dynamic, ?dialect:Dynamic, ?compression:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?quotechar:Dynamic, ?quoting:Dynamic, ?skipinitialspace:Dynamic, ?lineterminator:Dynamic, ?header:Dynamic, ?index_col:Dynamic, ?names:Dynamic, ?prefix:Dynamic, ?skiprows:Dynamic, ?skipfooter:Dynamic, ?skip_footer:Dynamic, ?na_values:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?delimiter:Dynamic, ?converters:Dynamic, ?dtype:Dynamic, ?usecols:Dynamic, ?engine:Dynamic, ?delim_whitespace:Dynamic, ?as_recarray:Dynamic, ?na_filter:Dynamic, ?compact_ints:Dynamic, ?use_unsigned:Dynamic, ?low_memory:Dynamic, ?buffer_lines:Dynamic, ?warn_bad_lines:Dynamic, ?error_bad_lines:Dynamic, ?keep_default_na:Dynamic, ?thousands:Dynamic, ?comment:Dynamic, ?decimal:Dynamic, ?parse_dates:Dynamic, ?keep_date_col:Dynamic, ?dayfirst:Dynamic, ?date_parser:Dynamic, ?memory_map:Dynamic, ?float_precision:Dynamic, ?nrows:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?verbose:Dynamic, ?encoding:Dynamic, ?squeeze:Dynamic, ?mangle_dupe_cols:Dynamic, ?tupleize_cols:Dynamic, ?infer_datetime_format:Dynamic, ?skip_blank_lines:Dynamic):Dynamic;
	/**
		Read an Excel table into a pandas DataFrame
		
		Parameters
		----------
		io : string, file-like object, pandas ExcelFile, or xlrd workbook.
		    The string could be a URL. Valid URL schemes include http, ftp, s3,
		    and file. For file URLs, a host is expected. For instance, a local
		    file could be file://localhost/path/to/workbook.xlsx
		sheetname : string, int, mixed list of strings/ints, or None, default 0
		
		    Strings are used for sheet names, Integers are used in zero-indexed sheet
		    positions.
		
		    Lists of strings/integers are used to request multiple sheets.
		
		    Specify None to get all sheets.
		
		    str|int -> DataFrame is returned.
		    list|None -> Dict of DataFrames is returned, with keys representing sheets.
		
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
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the Excel cell content, and return the transformed
		    content.
		parse_cols : int or list, default None
		    * If None then parse all columns,
		    * If int then indicates last column to be parsed
		    * If list of ints then indicates list of column numbers to be parsed
		    * If string then indicates comma separated list of column names and
		      column ranges (e.g. "A:E" or "A,C,E:F")
		na_values : list-like, default None
		    List of additional strings to recognize as NA/NaN
		thousands : str, default None
		    Thousands separator for parsing string columns to numeric.  Note that
		    this parameter is only necessary for columns stored as TEXT in Excel,
		    any numeric columns will automatically be parsed, regardless of display
		    format.
		keep_default_na : bool, default True
		    If na_values are specified and keep_default_na is False the default NaN
		    values are overridden, otherwise they're appended to
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
		    DEPRECATED: for version 0.17+ index names will be automatically inferred
		    based on index_col.  To read Excel output from 0.16.2 and prior that
		    had saved index names, use True.
		
		Returns
		-------
		parsed : DataFrame or Dict of DataFrames
		    DataFrame from the passed in Excel file.  See notes in sheetname argument
		    for more information on when a Dict of Dataframes is returned.
	**/
	static public function read_excel(io:Dynamic, ?sheetname:Dynamic, ?header:Dynamic, ?skiprows:Dynamic, ?skip_footer:Dynamic, ?index_col:Dynamic, ?parse_cols:Dynamic, ?parse_dates:Dynamic, ?date_parser:Dynamic, ?na_values:Dynamic, ?thousands:Dynamic, ?convert_float:Dynamic, ?has_index_names:Dynamic, ?converters:Dynamic, ?engine:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Adds engine to the excel writer registry. You must use this method to
		integrate with ``to_excel``. Also adds config options for any new
		``supported_extensions`` defined on the writer.
	**/
	static public function register_writer(klass:Dynamic):Dynamic;
	/**
		set_option(pat, value)
		
		Sets the value of the specified option.
		
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
	static public function set_option(args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Skip a TestCase instance if openpyxl >= 2.2
	**/
	static public function skip_openpyxl_gt21(cls:Dynamic):Dynamic;
	/**
		Skip a TestCase instance if openpyxl < 2.2
	**/
	static public function skip_openpyxl_lt22(cls:Dynamic):Dynamic;
	/**
		Label a test as 'slow'.
		
		The exact definition of a slow test is obviously both subjective and
		hardware-dependent, but in general any individual test that requires more
		than a second or two should be labeled as slow (the whole suite consits of
		thousands of tests, so even a second is significant).
		
		Parameters
		----------
		t : callable
		    The test to label as slow.
		
		Returns
		-------
		t : callable
		    The decorated test `t`.
		
		Examples
		--------
		The `numpy.testing` module includes ``import decorators as dec``.
		A test can be decorated as slow like this::
		
		  from numpy.testing import *
		
		  @dec.slow
		  def test_big(self):
		      print 'Big, slow test'
	**/
	static public function slow(t:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
}