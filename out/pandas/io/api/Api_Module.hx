/* This file is generated, do not edit! */
package pandas.io.api;
@:pythonImport("pandas.io.api") extern class Api_Module {
	static public function Term(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Backwards compatible alias for ``HDFStore``
		    
	**/
	static public function get_store(path:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Read text from clipboard and pass to read_table. See read_table for the
		full argument list
		
		Parameters
		----------
		sep : str, default '\s+'.
		    A string or regex delimiter. The default of '\s+' denotes
		    one or more whitespace characters.
		
		Returns
		-------
		parsed : DataFrame
	**/
	static public function read_clipboard(?sep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
	/**
		Read CSV (comma-separated) file into DataFrame
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the `online docs for IO Tools
		<http://pandas.pydata.org/pandas-docs/stable/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, pathlib.Path, py._path.local.LocalPath or any \
		object with a read() method (such as a file handle or StringIO)
		    The string could be a URL. Valid URL schemes include http, ftp, s3, and
		    file. For file URLs, a host is expected. For instance, a local file could
		    be file://localhost/path/to/table.csv
		sep : str, default ','
		    Delimiter to use. If sep is None, the C engine cannot automatically detect
		    the separator, but the Python parsing engine can, meaning the latter will
		    be used and automatically detect the separator by Python's builtin sniffer
		    tool, ``csv.Sniffer``. In addition, separators longer than 1 character and
		    different from ``'\s+'`` will be interpreted as regular expressions and
		    will also force the use of the Python parsing engine. Note that regex
		    delimiters are prone to ignoring quoted data. Regex example: ``'\r\t'``
		delimiter : str, default ``None``
		    Alternative argument name for sep.
		delim_whitespace : boolean, default False
		    Specifies whether or not whitespace (e.g. ``' '`` or ``'\t'``) will be
		    used as the sep. Equivalent to setting ``sep='\s+'``. If this option
		    is set to True, nothing should be passed in for the ``delimiter``
		    parameter.
		
		    .. versionadded:: 0.18.1 support for the Python parser.
		
		header : int or list of ints, default 'infer'
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
		    ``skip_blank_lines=True``, so header=0 denotes the first line of
		    data rather than the first line of the file.
		names : array-like, default None
		    List of column names to use. If file contains no header row, then you
		    should explicitly pass header=None. Duplicates in this list will cause
		    a ``UserWarning`` to be issued.
		index_col : int or sequence or False, default None
		    Column to use as the row labels of the DataFrame. If a sequence is given, a
		    MultiIndex is used. If you have a malformed file with delimiters at the end
		    of each line, you might consider index_col=False to force pandas to _not_
		    use the first column as the index (row names)
		usecols : list-like or callable, default None
		    Return a subset of the columns. If list-like, all elements must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid list-like
		    `usecols` parameter would be [0, 1, 2] or ['foo', 'bar', 'baz']. Element
		    order is ignored, so ``usecols=[0, 1]`` is the same as ``[1, 0]``.
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
		squeeze : boolean, default False
		    If the parsed data only contains one column then return a Series
		prefix : str, default None
		    Prefix to add to column numbers when no header, e.g. 'X' for X0, X1, ...
		mangle_dupe_cols : boolean, default True
		    Duplicate columns will be specified as 'X', 'X.1', ...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		dtype : Type name or dict of column -> type, default None
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32}
		    Use `str` or `object` together with suitable `na_values` settings
		    to preserve and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
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
		skiprows : list-like or integer or callable, default None
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file.
		
		    If callable, the callable function will be evaluated against the row
		    indices, returning True if the row should be skipped and False otherwise.
		    An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c')
		nrows : int, default None
		    Number of rows of file to read. Useful for reading pieces of large files
		na_values : scalar, str, list-like, or dict, default None
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
		
		    If a column or index contains an unparseable date, the entire column or
		    index will be returned unaltered as an object data type. For non-standard
		    datetime parsing, use ``pd.to_datetime`` after ``pd.read_csv``
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : boolean, default False
		    If True and `parse_dates` is enabled, pandas will attempt to infer the
		    format of the datetime strings in the columns, and if it can be inferred,
		    switch to a faster method of parsing them. In some cases this can increase
		    the parsing speed by 5-10x.
		keep_date_col : boolean, default False
		    If True and `parse_dates` specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, default None
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call `date_parser` in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by `parse_dates`) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by `parse_dates` into a single array
		    and pass that; and 3) call `date_parser` once for each row using one or
		    more strings (corresponding to the columns defined by `parse_dates`) as
		    arguments.
		dayfirst : boolean, default False
		    DD/MM format dates, international and European format
		iterator : boolean, default False
		    Return TextFileReader object for iteration or getting chunks with
		    ``get_chunk()``.
		chunksize : int, default None
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
		    `skiprows`. For example, if ``comment='#'``, parsing
		    ``#empty\na,b,c\n1,2,3`` with ``header=0`` will result in 'a,b,c' being
		    treated as the header.
		encoding : str, default None
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_
		dialect : str or csv.Dialect instance, default None
		    If provided, this parameter will override values (default or not) for the
		    following parameters: `delimiter`, `doublequote`, `escapechar`,
		    `skipinitialspace`, `quotechar`, and `quoting`. If it is necessary to
		    override values, a ParserWarning will be issued. See csv.Dialect
		    documentation for more details.
		tupleize_cols : boolean, default False
		    .. deprecated:: 0.21.0
		       This argument will be removed and will always convert to MultiIndex
		
		    Leave a list of tuples on columns as is (default is to convert to
		    a MultiIndex on the columns)
		error_bad_lines : boolean, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned.
		warn_bad_lines : boolean, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output.
		low_memory : boolean, default True
		    Internally process the file in chunks, resulting in lower memory use
		    while parsing, but possibly mixed type inference.  To ensure no mixed
		    types either set False, or specify the type with the `dtype` parameter.
		    Note that the entire file is read into a single DataFrame regardless,
		    use the `chunksize` or `iterator` parameter to return the data in chunks.
		    (Only valid with C parser)
		memory_map : boolean, default False
		    If a filepath is provided for `filepath_or_buffer`, map the file object
		    directly onto memory and access the data directly from there. Using this
		    option can improve performance because there is no longer any I/O overhead.
		
		Returns
		-------
		result : DataFrame or TextParser
	**/
	static public function read_csv(filepath_or_buffer:Dynamic, ?sep:Dynamic, ?delimiter:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?prefix:Dynamic, ?mangle_dupe_cols:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skipinitialspace:Dynamic, ?skiprows:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?na_filter:Dynamic, ?verbose:Dynamic, ?skip_blank_lines:Dynamic, ?parse_dates:Dynamic, ?infer_datetime_format:Dynamic, ?keep_date_col:Dynamic, ?date_parser:Dynamic, ?dayfirst:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?thousands:Dynamic, ?decimal:Dynamic, ?lineterminator:Dynamic, ?quotechar:Dynamic, ?quoting:Dynamic, ?escapechar:Dynamic, ?comment:Dynamic, ?encoding:Dynamic, ?dialect:Dynamic, ?tupleize_cols:Dynamic, ?error_bad_lines:Dynamic, ?warn_bad_lines:Dynamic, ?skipfooter:Dynamic, ?doublequote:Dynamic, ?delim_whitespace:Dynamic, ?low_memory:Dynamic, ?memory_map:Dynamic, ?float_precision:Dynamic):Dynamic;
	/**
		Read an Excel table into a pandas DataFrame
		
		Parameters
		----------
		io : string, path object (pathlib.Path or py._path.local.LocalPath),
		    file-like object, pandas ExcelFile, or xlrd workbook.
		    The string could be a URL. Valid URL schemes include http, ftp, s3,
		    and file. For file URLs, a host is expected. For instance, a local
		    file could be file://localhost/path/to/workbook.xlsx
		sheet_name : string, int, mixed list of strings/ints, or None, default 0
		
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
		
		sheetname : string, int, mixed list of strings/ints, or None, default 0
		
		    .. deprecated:: 0.21.0
		       Use `sheet_name` instead
		
		header : int, list of ints, default 0
		    Row (0-indexed) to use for the column labels of the parsed
		    DataFrame. If a list of integers is passed those row positions will
		    be combined into a ``MultiIndex``. Use None if there is no header.
		names : array-like, default None
		    List of column names to use. If file contains no header row,
		    then you should explicitly pass header=None
		index_col : int, list of ints, default None
		    Column (0-indexed) to use as the row labels of the DataFrame.
		    Pass None if there is no such column.  If a list is passed,
		    those columns will be combined into a ``MultiIndex``.  If a
		    subset of data is selected with ``usecols``, index_col
		    is based on the subset.
		parse_cols : int or list, default None
		
		    .. deprecated:: 0.21.0
		       Pass in `usecols` instead.
		
		usecols : int or list, default None
		    * If None then parse all columns,
		    * If int then indicates last column to be parsed
		    * If list of ints then indicates list of column numbers to be parsed
		    * If string then indicates comma separated list of Excel column letters and
		      column ranges (e.g. "A:E" or "A,C,E:F").  Ranges are inclusive of
		      both sides.
		squeeze : boolean, default False
		    If the parsed data only contains one column then return a Series
		dtype : Type name or dict of column -> type, default None
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32}
		    Use `object` to preserve data as stored in Excel and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		
		    .. versionadded:: 0.20.0
		
		engine: string, default None
		    If io is not a buffer or path, this must be set to identify io.
		    Acceptable values are None or xlrd
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
		
		skiprows : list-like
		    Rows to skip at the beginning (0-indexed)
		nrows : int, default None
		    Number of rows to parse
		
		    .. versionadded:: 0.23.0
		
		na_values : scalar, str, list-like, or dict, default None
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values. By default the following values are interpreted
		    as NaN: '', '#N/A', '#N/A N/A', '#NA', '-1.#IND', '-1.#QNAN', '-NaN', '-nan',
		    '1.#IND', '1.#QNAN', 'N/A', 'NA', 'NULL', 'NaN', 'n/a', 'nan',
		    'null'.
		keep_default_na : bool, default True
		    If na_values are specified and keep_default_na is False the default NaN
		    values are overridden, otherwise they're appended to.
		verbose : boolean, default False
		    Indicate number of NA values placed in non-numeric columns
		thousands : str, default None
		    Thousands separator for parsing string columns to numeric.  Note that
		    this parameter is only necessary for columns stored as TEXT in Excel,
		    any numeric columns will automatically be parsed, regardless of display
		    format.
		comment : str, default None
		    Comments out remainder of line. Pass a character or characters to this
		    argument to indicate comments in the input file. Any data between the
		    comment string and the end of the current line is ignored.
		skip_footer : int, default 0
		
		    .. deprecated:: 0.23.0
		       Pass in `skipfooter` instead.
		skipfooter : int, default 0
		    Rows at the end to skip (0-indexed)
		convert_float : boolean, default True
		    convert integral floats to int (i.e., 1.0 --> 1). If False, all numeric
		    data will be read in as floats: Excel stores all numbers as floats
		    internally
		
		Returns
		-------
		parsed : DataFrame or Dict of DataFrames
		    DataFrame from the passed in Excel file.  See notes in sheet_name
		    argument for more information on when a Dict of Dataframes is returned.
		
		Examples
		--------
		
		An example DataFrame written to a local file
		
		>>> df_out = pd.DataFrame([('string1', 1),
		...                        ('string2', 2),
		...                        ('string3', 3)],
		...                       columns=['Name', 'Value'])
		>>> df_out
		      Name  Value
		0  string1      1
		1  string2      2
		2  string3      3
		>>> df_out.to_excel('tmp.xlsx')
		
		The file can be read using the file name as string or an open file object:
		
		>>> pd.read_excel('tmp.xlsx')
		      Name  Value
		0  string1      1
		1  string2      2
		2  string3      3
		
		>>> pd.read_excel(open('tmp.xlsx','rb'))
		      Name  Value
		0  string1      1
		1  string2      2
		2  string3      3
		
		Index and header can be specified via the `index_col` and `header` arguments
		
		>>> pd.read_excel('tmp.xlsx', index_col=None, header=None)
		     0        1      2
		0  NaN     Name  Value
		1  0.0  string1      1
		2  1.0  string2      2
		3  2.0  string3      3
		
		Column types are inferred but can be explicitly specified
		
		>>> pd.read_excel('tmp.xlsx', dtype={'Name':str, 'Value':float})
		      Name  Value
		0  string1    1.0
		1  string2    2.0
		2  string3    3.0
		
		True, False, and NA values, and thousands separators have defaults,
		but can be explicitly specified, too. Supply the values you would like
		as strings or lists of strings!
		
		>>> pd.read_excel('tmp.xlsx',
		...               na_values=['string1', 'string2'])
		      Name  Value
		0      NaN      1
		1      NaN      2
		2  string3      3
		
		Comment lines in the excel input file can be skipped using the `comment` kwarg
		
		>>> df = pd.DataFrame({'a': ['1', '#2'], 'b': ['2', '3']})
		>>> df.to_excel('tmp.xlsx', index=False)
		>>> pd.read_excel('tmp.xlsx')
		    a  b
		0   1  2
		1  #2  3
		
		>>> pd.read_excel('tmp.xlsx', comment='#')
		   a  b
		0  1  2
	**/
	static public function read_excel(io:Dynamic, ?sheet_name:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skiprows:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?parse_dates:Dynamic, ?date_parser:Dynamic, ?thousands:Dynamic, ?comment:Dynamic, ?skipfooter:Dynamic, ?convert_float:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load a feather-format object from the file path
		
		.. versionadded 0.20.0
		
		Parameters
		----------
		path : string file path, or file-like object
		nthreads : int, default 1
		    Number of CPU threads to use when reading to pandas.DataFrame
		
		   .. versionadded 0.21.0
		
		Returns
		-------
		type of object stored in file
	**/
	static public function read_feather(path:Dynamic, ?nthreads:Dynamic):Dynamic;
	/**
		Read a table of fixed-width formatted lines into DataFrame
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the `online docs for IO Tools
		<http://pandas.pydata.org/pandas-docs/stable/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, pathlib.Path, py._path.local.LocalPath or any \
		object with a read() method (such as a file handle or StringIO)
		    The string could be a URL. Valid URL schemes include http, ftp, s3, and
		    file. For file URLs, a host is expected. For instance, a local file could
		    be file://localhost/path/to/table.csv
		colspecs : list of pairs (int, int) or 'infer'. optional
		    A list of pairs (tuples) giving the extents of the fixed-width
		    fields of each line as half-open intervals (i.e.,  [from, to[ ).
		    String value 'infer' can be used to instruct the parser to try
		    detecting the column specifications from the first 100 rows of
		    the data which are not being skipped via skiprows (default='infer').
		widths : list of ints. optional
		    A list of field widths which can be used instead of 'colspecs' if
		    the intervals are contiguous.
		delimiter : str, default ``'    ' + ' '``
		    Characters to consider as filler characters in the fixed-width file.
		    Can be used to specify the filler character of the fields
		    if it is not spaces (e.g., '~').
		
		delim_whitespace : boolean, default False
		    Specifies whether or not whitespace (e.g. ``' '`` or ``'\t'``) will be
		    used as the sep. Equivalent to setting ``sep='\s+'``. If this option
		    is set to True, nothing should be passed in for the ``delimiter``
		    parameter.
		
		    .. versionadded:: 0.18.1 support for the Python parser.
		
		header : int or list of ints, default 'infer'
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
		    ``skip_blank_lines=True``, so header=0 denotes the first line of
		    data rather than the first line of the file.
		names : array-like, default None
		    List of column names to use. If file contains no header row, then you
		    should explicitly pass header=None. Duplicates in this list will cause
		    a ``UserWarning`` to be issued.
		index_col : int or sequence or False, default None
		    Column to use as the row labels of the DataFrame. If a sequence is given, a
		    MultiIndex is used. If you have a malformed file with delimiters at the end
		    of each line, you might consider index_col=False to force pandas to _not_
		    use the first column as the index (row names)
		usecols : list-like or callable, default None
		    Return a subset of the columns. If list-like, all elements must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid list-like
		    `usecols` parameter would be [0, 1, 2] or ['foo', 'bar', 'baz']. Element
		    order is ignored, so ``usecols=[0, 1]`` is the same as ``[1, 0]``.
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
		squeeze : boolean, default False
		    If the parsed data only contains one column then return a Series
		prefix : str, default None
		    Prefix to add to column numbers when no header, e.g. 'X' for X0, X1, ...
		mangle_dupe_cols : boolean, default True
		    Duplicate columns will be specified as 'X', 'X.1', ...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		dtype : Type name or dict of column -> type, default None
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32}
		    Use `str` or `object` together with suitable `na_values` settings
		    to preserve and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can either
		    be integers or column labels
		true_values : list, default None
		    Values to consider as True
		false_values : list, default None
		    Values to consider as False
		skipinitialspace : boolean, default False
		    Skip spaces after delimiter.
		skiprows : list-like or integer or callable, default None
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file.
		
		    If callable, the callable function will be evaluated against the row
		    indices, returning True if the row should be skipped and False otherwise.
		    An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c')
		nrows : int, default None
		    Number of rows of file to read. Useful for reading pieces of large files
		na_values : scalar, str, list-like, or dict, default None
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
		
		    If a column or index contains an unparseable date, the entire column or
		    index will be returned unaltered as an object data type. For non-standard
		    datetime parsing, use ``pd.to_datetime`` after ``pd.read_csv``
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : boolean, default False
		    If True and `parse_dates` is enabled, pandas will attempt to infer the
		    format of the datetime strings in the columns, and if it can be inferred,
		    switch to a faster method of parsing them. In some cases this can increase
		    the parsing speed by 5-10x.
		keep_date_col : boolean, default False
		    If True and `parse_dates` specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, default None
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call `date_parser` in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by `parse_dates`) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by `parse_dates` into a single array
		    and pass that; and 3) call `date_parser` once for each row using one or
		    more strings (corresponding to the columns defined by `parse_dates`) as
		    arguments.
		dayfirst : boolean, default False
		    DD/MM format dates, international and European format
		iterator : boolean, default False
		    Return TextFileReader object for iteration or getting chunks with
		    ``get_chunk()``.
		chunksize : int, default None
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
		    `skiprows`. For example, if ``comment='#'``, parsing
		    ``#empty\na,b,c\n1,2,3`` with ``header=0`` will result in 'a,b,c' being
		    treated as the header.
		encoding : str, default None
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_
		dialect : str or csv.Dialect instance, default None
		    If provided, this parameter will override values (default or not) for the
		    following parameters: `delimiter`, `doublequote`, `escapechar`,
		    `skipinitialspace`, `quotechar`, and `quoting`. If it is necessary to
		    override values, a ParserWarning will be issued. See csv.Dialect
		    documentation for more details.
		tupleize_cols : boolean, default False
		    .. deprecated:: 0.21.0
		       This argument will be removed and will always convert to MultiIndex
		
		    Leave a list of tuples on columns as is (default is to convert to
		    a MultiIndex on the columns)
		error_bad_lines : boolean, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned.
		warn_bad_lines : boolean, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output.
		low_memory : boolean, default True
		    Internally process the file in chunks, resulting in lower memory use
		    while parsing, but possibly mixed type inference.  To ensure no mixed
		    types either set False, or specify the type with the `dtype` parameter.
		    Note that the entire file is read into a single DataFrame regardless,
		    use the `chunksize` or `iterator` parameter to return the data in chunks.
		    (Only valid with C parser)
		memory_map : boolean, default False
		    If a filepath is provided for `filepath_or_buffer`, map the file object
		    directly onto memory and access the data directly from there. Using this
		    option can improve performance because there is no longer any I/O overhead.
		
		Returns
		-------
		result : DataFrame or TextParser
	**/
	static public function read_fwf(filepath_or_buffer:Dynamic, ?colspecs:Dynamic, ?widths:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load data from Google BigQuery.
		
		This function requires the `pandas-gbq package
		<https://pandas-gbq.readthedocs.io>`__.
		
		Authentication to the Google BigQuery service is via OAuth 2.0.
		
		- If "private_key" is not provided:
		
		  By default "application default credentials" are used.
		
		  If default application credentials are not found or are restrictive,
		  user account credentials are used. In this case, you will be asked to
		  grant permissions for product name 'pandas GBQ'.
		
		- If "private_key" is provided:
		
		  Service account credentials will be used to authenticate.
		
		Parameters
		----------
		query : str
		    SQL-Like Query to return data values.
		project_id : str
		    Google BigQuery Account project ID.
		index_col : str, optional
		    Name of result column to use for index in results DataFrame.
		col_order : list(str), optional
		    List of BigQuery column names in the desired order for results
		    DataFrame.
		reauth : boolean, default False
		    Force Google BigQuery to reauthenticate the user. This is useful
		    if multiple accounts are used.
		private_key : str, optional
		    Service account private key in JSON format. Can be file path
		    or string contents. This is useful for remote server
		    authentication (eg. Jupyter/IPython notebook on remote host).
		dialect : str, default 'legacy'
		    SQL syntax dialect to use. Value can be one of:
		
		    ``'legacy'``
		        Use BigQuery's legacy SQL dialect. For more information see
		        `BigQuery Legacy SQL Reference
		        <https://cloud.google.com/bigquery/docs/reference/legacy-sql>`__.
		    ``'standard'``
		        Use BigQuery's standard SQL, which is
		        compliant with the SQL 2011 standard. For more information
		        see `BigQuery Standard SQL Reference
		        <https://cloud.google.com/bigquery/docs/reference/standard-sql/>`__.
		verbose : boolean, deprecated
		    *Deprecated in Pandas-GBQ 0.4.0.* Use the `logging module
		    to adjust verbosity instead
		    <https://pandas-gbq.readthedocs.io/en/latest/intro.html#logging>`__.
		kwargs : dict
		    Arbitrary keyword arguments.
		    configuration (dict): query config parameters for job processing.
		    For example:
		
		        configuration = {'query': {'useQueryCache': False}}
		
		    For more information see `BigQuery SQL Reference
		    <https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs#configuration.query>`__
		
		Returns
		-------
		df: DataFrame
		    DataFrame representing results of query.
		
		See Also
		--------
		pandas_gbq.read_gbq : This function in the pandas-gbq library.
		pandas.DataFrame.to_gbq : Write a DataFrame to Google BigQuery.
	**/
	static public function read_gbq(query:Dynamic, ?project_id:Dynamic, ?index_col:Dynamic, ?col_order:Dynamic, ?reauth:Dynamic, ?verbose:Dynamic, ?private_key:Dynamic, ?dialect:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Read from the store, close it if we opened it.
		
		Retrieve pandas object stored in file, optionally based on where
		criteria
		
		Parameters
		----------
		path_or_buf : string, buffer or path object
		    Path to the file to open, or an open :class:`pandas.HDFStore` object.
		    Supports any object implementing the ``__fspath__`` protocol.
		    This includes :class:`pathlib.Path` and py._path.local.LocalPath
		    objects.
		
		    .. versionadded:: 0.19.0 support for pathlib, py.path.
		    .. versionadded:: 0.21.0 support for __fspath__ proptocol.
		
		key : object, optional
		    The group identifier in the store. Can be omitted if the HDF file
		    contains a single pandas object.
		mode : {'r', 'r+', 'a'}, optional
		    Mode to use when opening the file. Ignored if path_or_buf is a
		    :class:`pandas.HDFStore`. Default is 'r'.
		where : list, optional
		    A list of Term (or convertible) objects.
		start : int, optional
		    Row number to start selection.
		stop  : int, optional
		    Row number to stop selection.
		columns : list, optional
		    A list of columns names to return.
		iterator : bool, optional
		    Return an iterator object.
		chunksize : int, optional
		    Number of rows to include in an iteration when using an iterator.
		errors : str, default 'strict'
		    Specifies how encoding and decoding errors are to be handled.
		    See the errors argument for :func:`open` for a full list
		    of options.
		**kwargs
		    Additional keyword arguments passed to HDFStore.
		
		Returns
		-------
		item : object
		    The selected object. Return type depends on the object stored.
		
		See Also
		--------
		pandas.DataFrame.to_hdf : write a HDF file from a DataFrame
		pandas.HDFStore : low-level access to HDF files
		
		Examples
		--------
		>>> df = pd.DataFrame([[1, 1.0, 'a']], columns=['x', 'y', 'z'])
		>>> df.to_hdf('./store.h5', 'data')
		>>> reread = pd.read_hdf('./store.h5')
	**/
	static public function read_hdf(path_or_buf:Dynamic, ?key:Dynamic, ?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		    .. deprecated:: 0.21.0
		       This argument will be removed and will always convert to MultiIndex
		
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
		
		display_only : bool, default True
		    Whether elements with "display: none" should be parsed
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		dfs : list of DataFrames
		
		Notes
		-----
		Before using this function you should read the :ref:`gotchas about the
		HTML parsing libraries <io.html.gotchas>`.
		
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
	static public function read_html(io:Dynamic, ?match:Dynamic, ?flavor:Dynamic, ?header:Dynamic, ?index_col:Dynamic, ?skiprows:Dynamic, ?attrs:Dynamic, ?parse_dates:Dynamic, ?tupleize_cols:Dynamic, ?thousands:Dynamic, ?encoding:Dynamic, ?decimal:Dynamic, ?converters:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?displayed_only:Dynamic):Dynamic;
	/**
		Convert a JSON string to pandas object
		
		Parameters
		----------
		path_or_buf : a valid JSON string or file-like, default: None
		    The string could be a URL. Valid URL schemes include http, ftp, s3, and
		    file. For file URLs, a host is expected. For instance, a local file
		    could be ``file://localhost/path/to/table.json``
		
		orient : string,
		    Indication of expected JSON string format.
		    Compatible JSON strings can be produced by ``to_json()`` with a
		    corresponding orient value.
		    The set of possible orients is:
		
		    - ``'split'`` : dict like
		      ``{index -> [index], columns -> [columns], data -> [values]}``
		    - ``'records'`` : list like
		      ``[{column -> value}, ... , {column -> value}]``
		    - ``'index'`` : dict like ``{index -> {column -> value}}``
		    - ``'columns'`` : dict like ``{column -> {index -> value}}``
		    - ``'values'`` : just the values array
		
		    The allowed and default values depend on the value
		    of the `typ` parameter.
		
		    * when ``typ == 'series'``,
		
		      - allowed orients are ``{'split','records','index'}``
		      - default is ``'index'``
		      - The Series index must be unique for orient ``'index'``.
		
		    * when ``typ == 'frame'``,
		
		      - allowed orients are ``{'split','records','index',
		        'columns','values', 'table'}``
		      - default is ``'columns'``
		      - The DataFrame index must be unique for orients ``'index'`` and
		        ``'columns'``.
		      - The DataFrame columns must be unique for orients ``'index'``,
		        ``'columns'``, and ``'records'``.
		
		    .. versionadded:: 0.23.0
		       'table' as an allowed value for the ``orient`` argument
		
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
		
		chunksize: integer, default None
		    Return JsonReader object for iteration.
		    See the `line-delimted json docs
		    <http://pandas.pydata.org/pandas-docs/stable/io.html#io-jsonl>`_
		    for more information on ``chunksize``.
		    This can only be passed if `lines=True`.
		    If this is None, the file will be read into memory all at once.
		
		    .. versionadded:: 0.21.0
		
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer', then use
		    gzip, bz2, zip or xz if path_or_buf is a string ending in
		    '.gz', '.bz2', '.zip', or 'xz', respectively, and no decompression
		    otherwise. If using 'zip', the ZIP file must contain only one data
		    file to be read in. Set to None for no decompression.
		
		    .. versionadded:: 0.21.0
		
		Returns
		-------
		result : Series or DataFrame, depending on the value of `typ`.
		
		Notes
		-----
		Specific to ``orient='table'``, if a :class:`DataFrame` with a literal
		:class:`Index` name of `index` gets written with :func:`to_json`, the
		subsequent read operation will incorrectly set the :class:`Index` name to
		``None``. This is because `index` is also used by :func:`DataFrame.to_json`
		to denote a missing :class:`Index` name, and the subsequent
		:func:`read_json` operation cannot distinguish between the two. The same
		limitation is encountered with a :class:`MultiIndex` and any names
		beginning with ``'level_'``.
		
		See Also
		--------
		DataFrame.to_json
		
		Examples
		--------
		
		>>> df = pd.DataFrame([['a', 'b'], ['c', 'd']],
		...                   index=['row 1', 'row 2'],
		...                   columns=['col 1', 'col 2'])
		
		Encoding/decoding a Dataframe using ``'split'`` formatted JSON:
		
		>>> df.to_json(orient='split')
		'{"columns":["col 1","col 2"],
		  "index":["row 1","row 2"],
		  "data":[["a","b"],["c","d"]]}'
		>>> pd.read_json(_, orient='split')
		      col 1 col 2
		row 1     a     b
		row 2     c     d
		
		Encoding/decoding a Dataframe using ``'index'`` formatted JSON:
		
		>>> df.to_json(orient='index')
		'{"row 1":{"col 1":"a","col 2":"b"},"row 2":{"col 1":"c","col 2":"d"}}'
		>>> pd.read_json(_, orient='index')
		      col 1 col 2
		row 1     a     b
		row 2     c     d
		
		Encoding/decoding a Dataframe using ``'records'`` formatted JSON.
		Note that index labels are not preserved with this encoding.
		
		>>> df.to_json(orient='records')
		'[{"col 1":"a","col 2":"b"},{"col 1":"c","col 2":"d"}]'
		>>> pd.read_json(_, orient='records')
		  col 1 col 2
		0     a     b
		1     c     d
		
		Encoding with Table Schema
		
		>>> df.to_json(orient='table')
		'{"schema": {"fields": [{"name": "index", "type": "string"},
		                        {"name": "col 1", "type": "string"},
		                        {"name": "col 2", "type": "string"}],
		                "primaryKey": "index",
		                "pandas_version": "0.20.0"},
		    "data": [{"index": "row 1", "col 1": "a", "col 2": "b"},
		            {"index": "row 2", "col 1": "c", "col 2": "d"}]}'
	**/
	static public function read_json(?path_or_buf:Dynamic, ?orient:Dynamic, ?typ:Dynamic, ?dtype:Dynamic, ?convert_axes:Dynamic, ?convert_dates:Dynamic, ?keep_default_dates:Dynamic, ?numpy:Dynamic, ?precise_float:Dynamic, ?date_unit:Dynamic, ?encoding:Dynamic, ?lines:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic):Dynamic;
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
		Load a parquet object from the file path, returning a DataFrame.
		
		.. versionadded 0.21.0
		
		Parameters
		----------
		path : string
		    File path
		columns: list, default=None
		    If not None, only these columns will be read from the file.
		
		    .. versionadded 0.21.1
		engine : {'auto', 'pyarrow', 'fastparquet'}, default 'auto'
		    Parquet library to use. If 'auto', then the option
		    ``io.parquet.engine`` is used. The default ``io.parquet.engine``
		    behavior is to try 'pyarrow', falling back to 'fastparquet' if
		    'pyarrow' is unavailable.
		kwargs are passed to the engine
		
		Returns
		-------
		DataFrame
	**/
	static public function read_parquet(path:Dynamic, ?engine:Dynamic, ?columns:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load pickled pandas object (or any object) from file.
		
		.. warning::
		
		   Loading pickled data received from untrusted sources can be
		   unsafe. See `here <https://docs.python.org/3/library/pickle.html>`__.
		
		Parameters
		----------
		path : str
		    File path where the pickled object will be loaded.
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer', then use
		    gzip, bz2, xz or zip if path ends in '.gz', '.bz2', '.xz',
		    or '.zip' respectively, and no decompression otherwise.
		    Set to None for no decompression.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		unpickled : type of object stored in file
		
		See Also
		--------
		DataFrame.to_pickle : Pickle (serialize) DataFrame object to file.
		Series.to_pickle : Pickle (serialize) Series object to file.
		read_hdf : Read HDF5 file into a DataFrame.
		read_sql : Read SQL query or database table into a DataFrame.
		read_parquet : Load a parquet object, returning a DataFrame.
		
		Examples
		--------
		>>> original_df = pd.DataFrame({"foo": range(5), "bar": range(5, 10)})
		>>> original_df
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		>>> pd.to_pickle(original_df, "./dummy.pkl")
		
		>>> unpickled_df = pd.read_pickle("./dummy.pkl")
		>>> unpickled_df
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		
		>>> import os
		>>> os.remove("./dummy.pkl")
	**/
	static public function read_pickle(path:Dynamic, ?compression:Dynamic):Dynamic;
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
		
		This function is a convenience wrapper around ``read_sql_table`` and
		``read_sql_query`` (for backward compatibility). It will delegate
		to the specific function depending on the provided input. A SQL query
		will be routed to ``read_sql_query``, while a database table name will
		be routed to ``read_sql_table``. Note that the delegated function might
		have more specific notes about their functionality not listed here.
		
		Parameters
		----------
		sql : string or SQLAlchemy Selectable (select or text object)
		    SQL query to be executed or a table name.
		con : SQLAlchemy connectable (engine/connection) or database string URI
		    or DBAPI2 connection (fallback mode)
		
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library. If a DBAPI2 object, only sqlite3 is supported.
		index_col : string or list of strings, optional, default: None
		    Column(s) to set as index(MultiIndex).
		coerce_float : boolean, default True
		    Attempts to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets.
		params : list, tuple or dict, optional, default: None
		    List of parameters to pass to execute method.  The syntax used
		    to pass parameters is database driver dependent. Check your
		    database driver documentation for which of the five syntax styles,
		    described in PEP 249's paramstyle, is supported.
		    Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}
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
		DataFrame
		
		See also
		--------
		read_sql_table : Read SQL database table into a DataFrame.
		read_sql_query : Read SQL query into a DataFrame.
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
		    SQL query to be executed.
		con : SQLAlchemy connectable(engine/connection), database string URI,
		    or sqlite3 DBAPI2 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		index_col : string or list of strings, optional, default: None
		    Column(s) to set as index(MultiIndex).
		coerce_float : boolean, default True
		    Attempts to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point. Useful for SQL result sets.
		params : list, tuple or dict, optional, default: None
		    List of parameters to pass to execute method.  The syntax used
		    to pass parameters is database driver dependent. Check your
		    database driver documentation for which of the five syntax styles,
		    described in PEP 249's paramstyle, is supported.
		    Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}
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
		
		Returns
		-------
		DataFrame
		
		Notes
		-----
		Any datetime values with time zone information parsed via the `parse_dates`
		parameter will be converted to UTC.
		
		See also
		--------
		read_sql_table : Read SQL database table into a DataFrame.
		read_sql
	**/
	static public function read_sql_query(sql:Dynamic, con:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?params:Dynamic, ?parse_dates:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Read SQL database table into a DataFrame.
		
		Given a table name and a SQLAlchemy connectable, returns a DataFrame.
		This function does not support DBAPI connections.
		
		Parameters
		----------
		table_name : string
		    Name of SQL table in database.
		con : SQLAlchemy connectable (or database string URI)
		    SQLite DBAPI connection mode not supported.
		schema : string, default None
		    Name of SQL schema in database to query (if database flavor
		    supports this). Uses default schema if None (default).
		index_col : string or list of strings, optional, default: None
		    Column(s) to set as index(MultiIndex).
		coerce_float : boolean, default True
		    Attempts to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point. Can result in loss of Precision.
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates.
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps.
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite.
		columns : list, default: None
		    List of column names to select from SQL table
		chunksize : int, default None
		    If specified, returns an iterator where `chunksize` is the number of
		    rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		Notes
		-----
		Any datetime values with time zone information will be converted to UTC.
		
		See also
		--------
		read_sql_query : Read SQL query into a DataFrame.
		read_sql
	**/
	static public function read_sql_table(table_name:Dynamic, con:Dynamic, ?schema:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?columns:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Read Stata file into DataFrame.
		
		Parameters
		----------
		filepath_or_buffer : string or file-like object
		    Path to .dta file or object implementing a binary read() functions.
		convert_dates : boolean, defaults to True
		    Convert date variables to DataFrame time values.
		convert_categoricals : boolean, defaults to True
		    Read value labels and convert columns to Categorical/Factor variables.
		encoding : string, None or encoding
		    Encoding used to parse the files. None defaults to latin-1.
		index_col : string, optional, default: None
		    Column to set as index.
		convert_missing : boolean, defaults to False
		    Flag indicating whether to convert missing values to their Stata
		    representations.  If False, missing values are replaced with nan.
		    If True, columns containing missing values are returned with
		    object data types and missing values are represented by
		    StataMissingValue objects.
		preserve_dtypes : boolean, defaults to True
		    Preserve Stata datatypes. If False, numeric data are upcast to pandas
		    default types for foreign data (float64 or int64).
		columns : list or None
		    Columns to retain.  Columns will be returned in the given order.  None
		    returns all columns.
		order_categoricals : boolean, defaults to True
		    Flag indicating whether converted categorical data are ordered.
		chunksize : int, default None
		    Return StataReader object for iterations, returns chunks with
		    given number of lines.
		iterator : boolean, default False
		    Return StataReader object.
		
		Returns
		-------
		DataFrame or StataReader
		
		See Also
		--------
		pandas.io.stata.StataReader : low-level reader for Stata data files
		pandas.DataFrame.to_stata: export Stata data files
		
		Examples
		--------
		Read a Stata dta file:
		
		>>> import pandas as pd
		>>> df = pd.read_stata('filename.dta')
		
		Read a Stata dta file in 10,000 line chunks:
		
		>>> itr = pd.read_stata('filename.dta', chunksize=10000)
		>>> for chunk in itr:
		...     do_something(chunk)
	**/
	static public function read_stata(filepath_or_buffer:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?encoding:Dynamic, ?index_col:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic):Dynamic;
	/**
		Read general delimited file into DataFrame
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the `online docs for IO Tools
		<http://pandas.pydata.org/pandas-docs/stable/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, pathlib.Path, py._path.local.LocalPath or any \
		object with a read() method (such as a file handle or StringIO)
		    The string could be a URL. Valid URL schemes include http, ftp, s3, and
		    file. For file URLs, a host is expected. For instance, a local file could
		    be file://localhost/path/to/table.csv
		sep : str, default \t (tab-stop)
		    Delimiter to use. If sep is None, the C engine cannot automatically detect
		    the separator, but the Python parsing engine can, meaning the latter will
		    be used and automatically detect the separator by Python's builtin sniffer
		    tool, ``csv.Sniffer``. In addition, separators longer than 1 character and
		    different from ``'\s+'`` will be interpreted as regular expressions and
		    will also force the use of the Python parsing engine. Note that regex
		    delimiters are prone to ignoring quoted data. Regex example: ``'\r\t'``
		delimiter : str, default ``None``
		    Alternative argument name for sep.
		delim_whitespace : boolean, default False
		    Specifies whether or not whitespace (e.g. ``' '`` or ``'\t'``) will be
		    used as the sep. Equivalent to setting ``sep='\s+'``. If this option
		    is set to True, nothing should be passed in for the ``delimiter``
		    parameter.
		
		    .. versionadded:: 0.18.1 support for the Python parser.
		
		header : int or list of ints, default 'infer'
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
		    ``skip_blank_lines=True``, so header=0 denotes the first line of
		    data rather than the first line of the file.
		names : array-like, default None
		    List of column names to use. If file contains no header row, then you
		    should explicitly pass header=None. Duplicates in this list will cause
		    a ``UserWarning`` to be issued.
		index_col : int or sequence or False, default None
		    Column to use as the row labels of the DataFrame. If a sequence is given, a
		    MultiIndex is used. If you have a malformed file with delimiters at the end
		    of each line, you might consider index_col=False to force pandas to _not_
		    use the first column as the index (row names)
		usecols : list-like or callable, default None
		    Return a subset of the columns. If list-like, all elements must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). For example, a valid list-like
		    `usecols` parameter would be [0, 1, 2] or ['foo', 'bar', 'baz']. Element
		    order is ignored, so ``usecols=[0, 1]`` is the same as ``[1, 0]``.
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
		squeeze : boolean, default False
		    If the parsed data only contains one column then return a Series
		prefix : str, default None
		    Prefix to add to column numbers when no header, e.g. 'X' for X0, X1, ...
		mangle_dupe_cols : boolean, default True
		    Duplicate columns will be specified as 'X', 'X.1', ...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		dtype : Type name or dict of column -> type, default None
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32}
		    Use `str` or `object` together with suitable `na_values` settings
		    to preserve and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
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
		skiprows : list-like or integer or callable, default None
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file.
		
		    If callable, the callable function will be evaluated against the row
		    indices, returning True if the row should be skipped and False otherwise.
		    An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c')
		nrows : int, default None
		    Number of rows of file to read. Useful for reading pieces of large files
		na_values : scalar, str, list-like, or dict, default None
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
		
		    If a column or index contains an unparseable date, the entire column or
		    index will be returned unaltered as an object data type. For non-standard
		    datetime parsing, use ``pd.to_datetime`` after ``pd.read_csv``
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : boolean, default False
		    If True and `parse_dates` is enabled, pandas will attempt to infer the
		    format of the datetime strings in the columns, and if it can be inferred,
		    switch to a faster method of parsing them. In some cases this can increase
		    the parsing speed by 5-10x.
		keep_date_col : boolean, default False
		    If True and `parse_dates` specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, default None
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call `date_parser` in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by `parse_dates`) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by `parse_dates` into a single array
		    and pass that; and 3) call `date_parser` once for each row using one or
		    more strings (corresponding to the columns defined by `parse_dates`) as
		    arguments.
		dayfirst : boolean, default False
		    DD/MM format dates, international and European format
		iterator : boolean, default False
		    Return TextFileReader object for iteration or getting chunks with
		    ``get_chunk()``.
		chunksize : int, default None
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
		    `skiprows`. For example, if ``comment='#'``, parsing
		    ``#empty\na,b,c\n1,2,3`` with ``header=0`` will result in 'a,b,c' being
		    treated as the header.
		encoding : str, default None
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_
		dialect : str or csv.Dialect instance, default None
		    If provided, this parameter will override values (default or not) for the
		    following parameters: `delimiter`, `doublequote`, `escapechar`,
		    `skipinitialspace`, `quotechar`, and `quoting`. If it is necessary to
		    override values, a ParserWarning will be issued. See csv.Dialect
		    documentation for more details.
		tupleize_cols : boolean, default False
		    .. deprecated:: 0.21.0
		       This argument will be removed and will always convert to MultiIndex
		
		    Leave a list of tuples on columns as is (default is to convert to
		    a MultiIndex on the columns)
		error_bad_lines : boolean, default True
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will dropped from the DataFrame that is
		    returned.
		warn_bad_lines : boolean, default True
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output.
		low_memory : boolean, default True
		    Internally process the file in chunks, resulting in lower memory use
		    while parsing, but possibly mixed type inference.  To ensure no mixed
		    types either set False, or specify the type with the `dtype` parameter.
		    Note that the entire file is read into a single DataFrame regardless,
		    use the `chunksize` or `iterator` parameter to return the data in chunks.
		    (Only valid with C parser)
		memory_map : boolean, default False
		    If a filepath is provided for `filepath_or_buffer`, map the file object
		    directly onto memory and access the data directly from there. Using this
		    option can improve performance because there is no longer any I/O overhead.
		
		Returns
		-------
		result : DataFrame or TextParser
	**/
	static public function read_table(filepath_or_buffer:Dynamic, ?sep:Dynamic, ?delimiter:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?prefix:Dynamic, ?mangle_dupe_cols:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skipinitialspace:Dynamic, ?skiprows:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?na_filter:Dynamic, ?verbose:Dynamic, ?skip_blank_lines:Dynamic, ?parse_dates:Dynamic, ?infer_datetime_format:Dynamic, ?keep_date_col:Dynamic, ?date_parser:Dynamic, ?dayfirst:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?thousands:Dynamic, ?decimal:Dynamic, ?lineterminator:Dynamic, ?quotechar:Dynamic, ?quoting:Dynamic, ?escapechar:Dynamic, ?comment:Dynamic, ?encoding:Dynamic, ?dialect:Dynamic, ?tupleize_cols:Dynamic, ?error_bad_lines:Dynamic, ?warn_bad_lines:Dynamic, ?skipfooter:Dynamic, ?doublequote:Dynamic, ?delim_whitespace:Dynamic, ?low_memory:Dynamic, ?memory_map:Dynamic, ?float_precision:Dynamic):Dynamic;
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
		Pickle (serialize) object to file.
		
		Parameters
		----------
		obj : any object
		    Any python object.
		path : str
		    File path where the pickled object will be stored.
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default 'infer'
		    A string representing the compression to use in the output file. By
		    default, infers from the file extension in specified path.
		
		    .. versionadded:: 0.20.0
		protocol : int
		    Int which indicates which protocol should be used by the pickler,
		    default HIGHEST_PROTOCOL (see [1], paragraph 12.1.2). The possible
		    values for this parameter depend on the version of Python. For Python
		    2.x, possible values are 0, 1, 2. For Python>=3.0, 3 is a valid value.
		    For Python >= 3.4, 4 is a valid value. A negative value for the
		    protocol parameter is equivalent to setting its value to
		    HIGHEST_PROTOCOL.
		
		    .. [1] https://docs.python.org/3/library/pickle.html
		    .. versionadded:: 0.21.0
		
		See Also
		--------
		read_pickle : Load pickled pandas object (or any object) from file.
		DataFrame.to_hdf : Write DataFrame to an HDF5 file.
		DataFrame.to_sql : Write DataFrame to a SQL database.
		DataFrame.to_parquet : Write a DataFrame to the binary parquet format.
		
		Examples
		--------
		>>> original_df = pd.DataFrame({"foo": range(5), "bar": range(5, 10)})
		>>> original_df
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		>>> pd.to_pickle(original_df, "./dummy.pkl")
		
		>>> unpickled_df = pd.read_pickle("./dummy.pkl")
		>>> unpickled_df
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		
		>>> import os
		>>> os.remove("./dummy.pkl")
	**/
	static public function to_pickle(obj:Dynamic, path:Dynamic, ?compression:Dynamic, ?protocol:Dynamic):Dynamic;
}