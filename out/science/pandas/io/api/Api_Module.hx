/* This file is generated, do not edit! */
package pandas.io.api;
@:pythonImport("pandas.io.api") extern class Api_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Read text from clipboard and pass to read_csv.
		
		Parameters
		----------
		sep : str, default '\s+'
		    A string or regex delimiter. The default of '\s+' denotes
		    one or more whitespace characters.
		
		**kwargs
		    See read_csv for the full argument list.
		
		Returns
		-------
		DataFrame
		    A parsed DataFrame object.
	**/
	static public function read_clipboard(?sep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Read a comma-separated values (csv) file into DataFrame.
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the online docs for
		`IO Tools <https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, path object or file-like object
		    Any valid string path is acceptable. The string could be a URL. Valid
		    URL schemes include http, ftp, s3, gs, and file. For file URLs, a host is
		    expected. A local file could be: file://localhost/path/to/table.csv.
		
		    If you want to pass in a path object, pandas accepts any ``os.PathLike``.
		
		    By file-like object, we refer to objects with a ``read()`` method, such as
		    a file handle (e.g. via builtin ``open`` function) or ``StringIO``.
		sep : str, default ','
		    Delimiter to use. If sep is None, the C engine cannot automatically detect
		    the separator, but the Python parsing engine can, meaning the latter will
		    be used and automatically detect the separator by Python's builtin sniffer
		    tool, ``csv.Sniffer``. In addition, separators longer than 1 character and
		    different from ``'\s+'`` will be interpreted as regular expressions and
		    will also force the use of the Python parsing engine. Note that regex
		    delimiters are prone to ignoring quoted data. Regex example: ``'\r\t'``.
		delimiter : str, default ``None``
		    Alias for sep.
		header : int, list of int, None, default 'infer'
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
		    ``skip_blank_lines=True``, so ``header=0`` denotes the first line of
		    data rather than the first line of the file.
		names : array-like, optional
		    List of column names to use. If the file contains a header row,
		    then you should explicitly pass ``header=0`` to override the column names.
		    Duplicates in this list are not allowed.
		index_col : int, str, sequence of int / str, or False, optional, default ``None``
		  Column(s) to use as the row labels of the ``DataFrame``, either given as
		  string name or column index. If a sequence of int / str is given, a
		  MultiIndex is used.
		
		  Note: ``index_col=False`` can be used to force pandas to *not* use the first
		  column as the index, e.g. when you have a malformed file with delimiters at
		  the end of each line.
		usecols : list-like or callable, optional
		    Return a subset of the columns. If list-like, all elements must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). If ``names`` are given, the document
		    header row(s) are not taken into account. For example, a valid list-like
		    `usecols` parameter would be ``[0, 1, 2]`` or ``['foo', 'bar', 'baz']``.
		    Element order is ignored, so ``usecols=[0, 1]`` is the same as ``[1, 0]``.
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
		squeeze : bool, default False
		    If the parsed data only contains one column then return a Series.
		
		    .. deprecated:: 1.4.0
		        Append ``.squeeze("columns")`` to the call to ``read_csv`` to squeeze
		        the data.
		prefix : str, optional
		    Prefix to add to column numbers when no header, e.g. 'X' for X0, X1, ...
		
		    .. deprecated:: 1.4.0
		       Use a list comprehension on the DataFrame's columns after calling ``read_csv``.
		mangle_dupe_cols : bool, default True
		    Duplicate columns will be specified as 'X', 'X.1', ...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		dtype : Type name or dict of column -> type, optional
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32,
		    'c': 'Int64'}
		    Use `str` or `object` together with suitable `na_values` settings
		    to preserve and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		engine : {'c', 'python', 'pyarrow'}, optional
		    Parser engine to use. The C and pyarrow engines are faster, while the python engine
		    is currently more feature-complete. Multithreading is currently only supported by
		    the pyarrow engine.
		
		    .. versionadded:: 1.4.0
		
		        The "pyarrow" engine was added as an *experimental* engine, and some features
		        are unsupported, or may not work correctly, with this engine.
		converters : dict, optional
		    Dict of functions for converting values in certain columns. Keys can either
		    be integers or column labels.
		true_values : list, optional
		    Values to consider as True.
		false_values : list, optional
		    Values to consider as False.
		skipinitialspace : bool, default False
		    Skip spaces after delimiter.
		skiprows : list-like, int or callable, optional
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file.
		
		    If callable, the callable function will be evaluated against the row
		    indices, returning True if the row should be skipped and False otherwise.
		    An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c').
		nrows : int, optional
		    Number of rows of file to read. Useful for reading pieces of large files.
		na_values : scalar, str, list-like, or dict, optional
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values.  By default the following values are interpreted as
		    NaN: '', '#N/A', '#N/A N/A', '#NA', '-1.#IND', '-1.#QNAN', '-NaN', '-nan',
		    '1.#IND', '1.#QNAN', '<NA>', 'N/A', 'NA', 'NULL', 'NaN', 'n/a',
		    'nan', 'null'.
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
		na_filter : bool, default True
		    Detect missing value markers (empty strings and the value of na_values). In
		    data without any NAs, passing na_filter=False can improve the performance
		    of reading a large file.
		verbose : bool, default False
		    Indicate number of NA values placed in non-numeric columns.
		skip_blank_lines : bool, default True
		    If True, skip over blank lines rather than interpreting as NaN values.
		parse_dates : bool or list of int or names or list of lists or dict, default False
		    The behavior is as follows:
		
		    * boolean. If True -> try parsing the index.
		    * list of int or names. e.g. If [1, 2, 3] -> try parsing columns 1, 2, 3
		      each as a separate date column.
		    * list of lists. e.g.  If [[1, 3]] -> combine columns 1 and 3 and parse as
		      a single date column.
		    * dict, e.g. {'foo' : [1, 3]} -> parse columns 1, 3 as date and call
		      result 'foo'
		
		    If a column or index cannot be represented as an array of datetimes,
		    say because of an unparsable value or a mixture of timezones, the column
		    or index will be returned unaltered as an object data type. For
		    non-standard datetime parsing, use ``pd.to_datetime`` after
		    ``pd.read_csv``. To parse an index or column with a mixture of timezones,
		    specify ``date_parser`` to be a partially-applied
		    :func:`pandas.to_datetime` with ``utc=True``. See
		    :ref:`io.csv.mixed_timezones` for more.
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : bool, default False
		    If True and `parse_dates` is enabled, pandas will attempt to infer the
		    format of the datetime strings in the columns, and if it can be inferred,
		    switch to a faster method of parsing them. In some cases this can increase
		    the parsing speed by 5-10x.
		keep_date_col : bool, default False
		    If True and `parse_dates` specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, optional
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call `date_parser` in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by `parse_dates`) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by `parse_dates` into a single array
		    and pass that; and 3) call `date_parser` once for each row using one or
		    more strings (corresponding to the columns defined by `parse_dates`) as
		    arguments.
		dayfirst : bool, default False
		    DD/MM format dates, international and European format.
		cache_dates : bool, default True
		    If True, use a cache of unique, converted dates to apply the datetime
		    conversion. May produce significant speed-up when parsing duplicate
		    date strings, especially ones with timezone offsets.
		
		    .. versionadded:: 0.25.0
		iterator : bool, default False
		    Return TextFileReader object for iteration or getting chunks with
		    ``get_chunk()``.
		
		    .. versionchanged:: 1.2
		
		       ``TextFileReader`` is a context manager.
		chunksize : int, optional
		    Return TextFileReader object for iteration.
		    See the `IO Tools docs
		    <https://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_
		    for more information on ``iterator`` and ``chunksize``.
		
		    .. versionchanged:: 1.2
		
		       ``TextFileReader`` is a context manager.
		compression : str or dict, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer' and '%s' is
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). If using
		    'zip', the ZIP file must contain only one data file to be read in. Set to
		    ``None`` for no decompression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for Zstandard decompression using a
		    custom compression dictionary:
		    ``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
		
		    .. versionchanged:: 1.4.0 Zstandard support.
		
		thousands : str, optional
		    Thousands separator.
		decimal : str, default '.'
		    Character to recognize as decimal point (e.g. use ',' for European data).
		lineterminator : str (length 1), optional
		    Character to break file into lines. Only valid with C parser.
		quotechar : str (length 1), optional
		    The character used to denote the start and end of a quoted item. Quoted
		    items can include the delimiter and it will be ignored.
		quoting : int or csv.QUOTE_* instance, default 0
		    Control field quoting behavior per ``csv.QUOTE_*`` constants. Use one of
		    QUOTE_MINIMAL (0), QUOTE_ALL (1), QUOTE_NONNUMERIC (2) or QUOTE_NONE (3).
		doublequote : bool, default ``True``
		   When quotechar is specified and quoting is not ``QUOTE_NONE``, indicate
		   whether or not to interpret two consecutive quotechar elements INSIDE a
		   field as a single ``quotechar`` element.
		escapechar : str (length 1), optional
		    One-character string used to escape other characters.
		comment : str, optional
		    Indicates remainder of line should not be parsed. If found at the beginning
		    of a line, the line will be ignored altogether. This parameter must be a
		    single character. Like empty lines (as long as ``skip_blank_lines=True``),
		    fully commented lines are ignored by the parameter `header` but not by
		    `skiprows`. For example, if ``comment='#'``, parsing
		    ``#empty\na,b,c\n1,2,3`` with ``header=0`` will result in 'a,b,c' being
		    treated as the header.
		encoding : str, optional
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_ .
		
		    .. versionchanged:: 1.2
		
		       When ``encoding`` is ``None``, ``errors="replace"`` is passed to
		       ``open()``. Otherwise, ``errors="strict"`` is passed to ``open()``.
		       This behavior was previously only the case for ``engine="python"``.
		
		    .. versionchanged:: 1.3.0
		
		       ``encoding_errors`` is a new argument. ``encoding`` has no longer an
		       influence on how encoding errors are handled.
		
		encoding_errors : str, optional, default "strict"
		    How encoding errors are treated. `List of possible values
		    <https://docs.python.org/3/library/codecs.html#error-handlers>`_ .
		
		    .. versionadded:: 1.3.0
		
		dialect : str or csv.Dialect, optional
		    If provided, this parameter will override values (default or not) for the
		    following parameters: `delimiter`, `doublequote`, `escapechar`,
		    `skipinitialspace`, `quotechar`, and `quoting`. If it is necessary to
		    override values, a ParserWarning will be issued. See csv.Dialect
		    documentation for more details.
		error_bad_lines : bool, optional, default ``None``
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will be dropped from the DataFrame that is
		    returned.
		
		    .. deprecated:: 1.3.0
		       The ``on_bad_lines`` parameter should be used instead to specify behavior upon
		       encountering a bad line instead.
		warn_bad_lines : bool, optional, default ``None``
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output.
		
		    .. deprecated:: 1.3.0
		       The ``on_bad_lines`` parameter should be used instead to specify behavior upon
		       encountering a bad line instead.
		on_bad_lines : {'error', 'warn', 'skip'} or callable, default 'error'
		    Specifies what to do upon encountering a bad line (a line with too many fields).
		    Allowed values are :
		
		        - 'error', raise an Exception when a bad line is encountered.
		        - 'warn', raise a warning when a bad line is encountered and skip that line.
		        - 'skip', skip bad lines without raising or warning when they are encountered.
		
		    .. versionadded:: 1.3.0
		
		        - callable, function with signature
		          ``(bad_line: list[str]) -> list[str] | None`` that will process a single
		          bad line. ``bad_line`` is a list of strings split by the ``sep``.
		          If the function returns ``None``, the bad line will be ignored.
		          If the function returns a new list of strings with more elements than
		          expected, a ``ParserWarning`` will be emitted while dropping extra elements.
		          Only supported when ``engine="python"``
		
		    .. versionadded:: 1.4.0
		
		delim_whitespace : bool, default False
		    Specifies whether or not whitespace (e.g. ``' '`` or ``'    '``) will be
		    used as the sep. Equivalent to setting ``sep='\s+'``. If this option
		    is set to True, nothing should be passed in for the ``delimiter``
		    parameter.
		low_memory : bool, default True
		    Internally process the file in chunks, resulting in lower memory use
		    while parsing, but possibly mixed type inference.  To ensure no mixed
		    types either set False, or specify the type with the `dtype` parameter.
		    Note that the entire file is read into a single DataFrame regardless,
		    use the `chunksize` or `iterator` parameter to return the data in chunks.
		    (Only valid with C parser).
		memory_map : bool, default False
		    If a filepath is provided for `filepath_or_buffer`, map the file object
		    directly onto memory and access the data directly from there. Using this
		    option can improve performance because there is no longer any I/O overhead.
		float_precision : str, optional
		    Specifies which converter the C engine should use for floating-point
		    values. The options are ``None`` or 'high' for the ordinary converter,
		    'legacy' for the original lower precision pandas converter, and
		    'round_trip' for the round-trip converter.
		
		    .. versionchanged:: 1.2
		
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		    .. versionadded:: 1.2
		
		Returns
		-------
		DataFrame or TextParser
		    A comma-separated values (csv) file is returned as two-dimensional
		    data structure with labeled axes.
		
		See Also
		--------
		DataFrame.to_csv : Write DataFrame to a comma-separated values (csv) file.
		read_csv : Read a comma-separated values (csv) file into DataFrame.
		read_fwf : Read a table of fixed-width formatted lines into DataFrame.
		
		Examples
		--------
		>>> pd.read_csv('data.csv')  # doctest: +SKIP
	**/
	static public function read_csv(filepath_or_buffer:Dynamic, ?sep:Dynamic, ?delimiter:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?prefix:Dynamic, ?mangle_dupe_cols:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skipinitialspace:Dynamic, ?skiprows:Dynamic, ?skipfooter:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?na_filter:Dynamic, ?verbose:Dynamic, ?skip_blank_lines:Dynamic, ?parse_dates:Dynamic, ?infer_datetime_format:Dynamic, ?keep_date_col:Dynamic, ?date_parser:Dynamic, ?dayfirst:Dynamic, ?cache_dates:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?thousands:Dynamic, ?decimal:Dynamic, ?lineterminator:Dynamic, ?quotechar:Dynamic, ?quoting:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?comment:Dynamic, ?encoding:Dynamic, ?encoding_errors:Dynamic, ?dialect:Dynamic, ?error_bad_lines:Dynamic, ?warn_bad_lines:Dynamic, ?on_bad_lines:Dynamic, ?delim_whitespace:Dynamic, ?low_memory:Dynamic, ?memory_map:Dynamic, ?float_precision:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Read an Excel file into a pandas DataFrame.
		
		Supports `xls`, `xlsx`, `xlsm`, `xlsb`, `odf`, `ods` and `odt` file extensions
		read from a local filesystem or URL. Supports an option to read
		a single sheet or a list of sheets.
		
		Parameters
		----------
		io : str, bytes, ExcelFile, xlrd.Book, path object, or file-like object
		    Any valid string path is acceptable. The string could be a URL. Valid
		    URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be: ``file://localhost/path/to/table.xlsx``.
		
		    If you want to pass in a path object, pandas accepts any ``os.PathLike``.
		
		    By file-like object, we refer to objects with a ``read()`` method,
		    such as a file handle (e.g. via builtin ``open`` function)
		    or ``StringIO``.
		sheet_name : str, int, list, or None, default 0
		    Strings are used for sheet names. Integers are used in zero-indexed
		    sheet positions (chart sheets do not count as a sheet position).
		    Lists of strings/integers are used to request multiple sheets.
		    Specify None to get all worksheets.
		
		    Available cases:
		
		    * Defaults to ``0``: 1st sheet as a `DataFrame`
		    * ``1``: 2nd sheet as a `DataFrame`
		    * ``"Sheet1"``: Load sheet with name "Sheet1"
		    * ``[0, 1, "Sheet5"]``: Load first, second and sheet named "Sheet5"
		      as a dict of `DataFrame`
		    * None: All worksheets.
		
		header : int, list of int, default 0
		    Row (0-indexed) to use for the column labels of the parsed
		    DataFrame. If a list of integers is passed those row positions will
		    be combined into a ``MultiIndex``. Use None if there is no header.
		names : array-like, default None
		    List of column names to use. If file contains no header row,
		    then you should explicitly pass header=None.
		index_col : int, list of int, default None
		    Column (0-indexed) to use as the row labels of the DataFrame.
		    Pass None if there is no such column.  If a list is passed,
		    those columns will be combined into a ``MultiIndex``.  If a
		    subset of data is selected with ``usecols``, index_col
		    is based on the subset.
		usecols : int, str, list-like, or callable default None
		    * If None, then parse all columns.
		    * If str, then indicates comma separated list of Excel column letters
		      and column ranges (e.g. "A:E" or "A,C,E:F"). Ranges are inclusive of
		      both sides.
		    * If list of int, then indicates list of column numbers to be parsed.
		    * If list of string, then indicates list of column names to be parsed.
		    * If callable, then evaluate each column name against it and parse the
		      column if the callable returns ``True``.
		
		    Returns a subset of the columns according to behavior above.
		squeeze : bool, default False
		    If the parsed data only contains one column then return a Series.
		
		    .. deprecated:: 1.4.0
		       Append ``.squeeze("columns")`` to the call to ``read_excel`` to squeeze
		       the data.
		dtype : Type name or dict of column -> type, default None
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32}
		    Use `object` to preserve data as stored in Excel and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		engine : str, default None
		    If io is not a buffer or path, this must be set to identify io.
		    Supported engines: "xlrd", "openpyxl", "odf", "pyxlsb".
		    Engine compatibility :
		
		    - "xlrd" supports old-style Excel files (.xls).
		    - "openpyxl" supports newer Excel file formats.
		    - "odf" supports OpenDocument file formats (.odf, .ods, .odt).
		    - "pyxlsb" supports Binary Excel files.
		
		    .. versionchanged:: 1.2.0
		        The engine `xlrd <https://xlrd.readthedocs.io/en/latest/>`_
		        now only supports old-style ``.xls`` files.
		        When ``engine=None``, the following logic will be
		        used to determine the engine:
		
		       - If ``path_or_buffer`` is an OpenDocument format (.odf, .ods, .odt),
		         then `odf <https://pypi.org/project/odfpy/>`_ will be used.
		       - Otherwise if ``path_or_buffer`` is an xls format,
		         ``xlrd`` will be used.
		       - Otherwise if ``path_or_buffer`` is in xlsb format,
		         ``pyxlsb`` will be used.
		
		         .. versionadded:: 1.3.0
		       - Otherwise ``openpyxl`` will be used.
		
		         .. versionchanged:: 1.3.0
		
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the Excel cell content, and return the transformed
		    content.
		true_values : list, default None
		    Values to consider as True.
		false_values : list, default None
		    Values to consider as False.
		skiprows : list-like, int, or callable, optional
		    Line numbers to skip (0-indexed) or number of lines to skip (int) at the
		    start of the file. If callable, the callable function will be evaluated
		    against the row indices, returning True if the row should be skipped and
		    False otherwise. An example of a valid callable argument would be ``lambda
		    x: x in [0, 2]``.
		nrows : int, default None
		    Number of rows to parse.
		na_values : scalar, str, list-like, or dict, default None
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values. By default the following values are interpreted
		    as NaN: '', '#N/A', '#N/A N/A', '#NA', '-1.#IND', '-1.#QNAN', '-NaN', '-nan',
		    '1.#IND', '1.#QNAN', '<NA>', 'N/A', 'NA', 'NULL', 'NaN', 'n/a',
		    'nan', 'null'.
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
		na_filter : bool, default True
		    Detect missing value markers (empty strings and the value of na_values). In
		    data without any NAs, passing na_filter=False can improve the performance
		    of reading a large file.
		verbose : bool, default False
		    Indicate number of NA values placed in non-numeric columns.
		parse_dates : bool, list-like, or dict, default False
		    The behavior is as follows:
		
		    * bool. If True -> try parsing the index.
		    * list of int or names. e.g. If [1, 2, 3] -> try parsing columns 1, 2, 3
		      each as a separate date column.
		    * list of lists. e.g.  If [[1, 3]] -> combine columns 1 and 3 and parse as
		      a single date column.
		    * dict, e.g. {'foo' : [1, 3]} -> parse columns 1, 3 as date and call
		      result 'foo'
		
		    If a column or index contains an unparsable date, the entire column or
		    index will be returned unaltered as an object data type. If you don`t want to
		    parse some cells as date just change their type in Excel to "Text".
		    For non-standard datetime parsing, use ``pd.to_datetime`` after ``pd.read_excel``.
		
		    Note: A fast-path exists for iso8601-formatted dates.
		date_parser : function, optional
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call `date_parser` in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by `parse_dates`) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by `parse_dates` into a single array
		    and pass that; and 3) call `date_parser` once for each row using one or
		    more strings (corresponding to the columns defined by `parse_dates`) as
		    arguments.
		thousands : str, default None
		    Thousands separator for parsing string columns to numeric.  Note that
		    this parameter is only necessary for columns stored as TEXT in Excel,
		    any numeric columns will automatically be parsed, regardless of display
		    format.
		decimal : str, default '.'
		    Character to recognize as decimal point for parsing string columns to numeric.
		    Note that this parameter is only necessary for columns stored as TEXT in Excel,
		    any numeric columns will automatically be parsed, regardless of display
		    format.(e.g. use ',' for European data).
		
		    .. versionadded:: 1.4.0
		
		comment : str, default None
		    Comments out remainder of line. Pass a character or characters to this
		    argument to indicate comments in the input file. Any data between the
		    comment string and the end of the current line is ignored.
		skipfooter : int, default 0
		    Rows at the end to skip (0-indexed).
		convert_float : bool, default True
		    Convert integral floats to int (i.e., 1.0 --> 1). If False, all numeric
		    data will be read in as floats: Excel stores all numbers as floats
		    internally.
		
		    .. deprecated:: 1.3.0
		        convert_float will be removed in a future version
		
		mangle_dupe_cols : bool, default True
		    Duplicate columns will be specified as 'X', 'X.1', ...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc., if using a URL that will
		    be parsed by ``fsspec``, e.g., starting "s3://", "gcs://". An error
		    will be raised if providing this argument with a local path or
		    a file-like buffer. See the fsspec and backend storage implementation
		    docs for the set of allowed keys and values.
		
		    .. versionadded:: 1.2.0
		
		Returns
		-------
		DataFrame or dict of DataFrames
		    DataFrame from the passed in Excel file. See notes in sheet_name
		    argument for more information on when a dict of DataFrames is returned.
		
		See Also
		--------
		DataFrame.to_excel : Write DataFrame to an Excel file.
		DataFrame.to_csv : Write DataFrame to a comma-separated values (csv) file.
		read_csv : Read a comma-separated values (csv) file into DataFrame.
		read_fwf : Read a table of fixed-width formatted lines into DataFrame.
		
		Examples
		--------
		The file can be read using the file name as string or an open file object:
		
		>>> pd.read_excel('tmp.xlsx', index_col=0)  # doctest: +SKIP
		       Name  Value
		0   string1      1
		1   string2      2
		2  #Comment      3
		
		>>> pd.read_excel(open('tmp.xlsx', 'rb'),
		...               sheet_name='Sheet3')  # doctest: +SKIP
		   Unnamed: 0      Name  Value
		0           0   string1      1
		1           1   string2      2
		2           2  #Comment      3
		
		Index and header can be specified via the `index_col` and `header` arguments
		
		>>> pd.read_excel('tmp.xlsx', index_col=None, header=None)  # doctest: +SKIP
		     0         1      2
		0  NaN      Name  Value
		1  0.0   string1      1
		2  1.0   string2      2
		3  2.0  #Comment      3
		
		Column types are inferred but can be explicitly specified
		
		>>> pd.read_excel('tmp.xlsx', index_col=0,
		...               dtype={'Name': str, 'Value': float})  # doctest: +SKIP
		       Name  Value
		0   string1    1.0
		1   string2    2.0
		2  #Comment    3.0
		
		True, False, and NA values, and thousands separators have defaults,
		but can be explicitly specified, too. Supply the values you would like
		as strings or lists of strings!
		
		>>> pd.read_excel('tmp.xlsx', index_col=0,
		...               na_values=['string1', 'string2'])  # doctest: +SKIP
		       Name  Value
		0       NaN      1
		1       NaN      2
		2  #Comment      3
		
		Comment lines in the excel input file can be skipped using the `comment` kwarg
		
		>>> pd.read_excel('tmp.xlsx', index_col=0, comment='#')  # doctest: +SKIP
		      Name  Value
		0  string1    1.0
		1  string2    2.0
		2     None    NaN
	**/
	static public function read_excel(io:Dynamic, ?sheet_name:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skiprows:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?na_filter:Dynamic, ?verbose:Dynamic, ?parse_dates:Dynamic, ?date_parser:Dynamic, ?thousands:Dynamic, ?decimal:Dynamic, ?comment:Dynamic, ?skipfooter:Dynamic, ?convert_float:Dynamic, ?mangle_dupe_cols:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Load a feather-format object from the file path.
		
		Parameters
		----------
		path : str, path object, or file-like object
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a binary ``read()`` function. The string could be a URL.
		    Valid URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be: ``file://localhost/path/to/table.feather``.
		columns : sequence, default None
		    If not provided, all columns are read.
		use_threads : bool, default True
		    Whether to parallelize reading using multiple threads.
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		    .. versionadded:: 1.2.0
		
		Returns
		-------
		type of object stored in file
	**/
	static public function read_feather(path:Dynamic, ?columns:Dynamic, ?use_threads:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Read a table of fixed-width formatted lines into DataFrame.
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the `online docs for IO Tools
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, path object, or file-like object
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a text ``read()`` function.The string could be a URL.
		    Valid URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be:
		    ``file://localhost/path/to/table.csv``.
		colspecs : list of tuple (int, int) or 'infer'. optional
		    A list of tuples giving the extents of the fixed-width
		    fields of each line as half-open intervals (i.e.,  [from, to[ ).
		    String value 'infer' can be used to instruct the parser to try
		    detecting the column specifications from the first 100 rows of
		    the data which are not being skipped via skiprows (default='infer').
		widths : list of int, optional
		    A list of field widths which can be used instead of 'colspecs' if
		    the intervals are contiguous.
		infer_nrows : int, default 100
		    The number of rows to consider when letting the parser determine the
		    `colspecs`.
		**kwds : optional
		    Optional keyword arguments can be passed to ``TextFileReader``.
		
		Returns
		-------
		DataFrame or TextFileReader
		    A comma-separated values (csv) file is returned as two-dimensional
		    data structure with labeled axes.
		
		See Also
		--------
		DataFrame.to_csv : Write DataFrame to a comma-separated values (csv) file.
		read_csv : Read a comma-separated values (csv) file into DataFrame.
		
		Examples
		--------
		>>> pd.read_fwf('data.csv')  # doctest: +SKIP
	**/
	static public function read_fwf(filepath_or_buffer:Dynamic, ?colspecs:Dynamic, ?widths:Dynamic, ?infer_nrows:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load data from Google BigQuery.
		
		This function requires the `pandas-gbq package
		<https://pandas-gbq.readthedocs.io>`__.
		
		See the `How to authenticate with Google BigQuery
		<https://pandas-gbq.readthedocs.io/en/latest/howto/authentication.html>`__
		guide for authentication instructions.
		
		Parameters
		----------
		query : str
		    SQL-Like Query to return data values.
		project_id : str, optional
		    Google BigQuery Account project ID. Optional when available from
		    the environment.
		index_col : str, optional
		    Name of result column to use for index in results DataFrame.
		col_order : list(str), optional
		    List of BigQuery column names in the desired order for results
		    DataFrame.
		reauth : bool, default False
		    Force Google BigQuery to re-authenticate the user. This is useful
		    if multiple accounts are used.
		auth_local_webserver : bool, default False
		    Use the `local webserver flow`_ instead of the `console flow`_
		    when getting user credentials.
		
		    .. _local webserver flow:
		        https://google-auth-oauthlib.readthedocs.io/en/latest/reference/google_auth_oauthlib.flow.html#google_auth_oauthlib.flow.InstalledAppFlow.run_local_server
		    .. _console flow:
		        https://google-auth-oauthlib.readthedocs.io/en/latest/reference/google_auth_oauthlib.flow.html#google_auth_oauthlib.flow.InstalledAppFlow.run_console
		
		    *New in version 0.2.0 of pandas-gbq*.
		dialect : str, default 'legacy'
		    Note: The default value is changing to 'standard' in a future version.
		
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
		location : str, optional
		    Location where the query job should run. See the `BigQuery locations
		    documentation
		    <https://cloud.google.com/bigquery/docs/dataset-locations>`__ for a
		    list of available locations. The location must match that of any
		    datasets used in the query.
		
		    *New in version 0.5.0 of pandas-gbq*.
		configuration : dict, optional
		    Query config parameters for job processing.
		    For example:
		
		        configuration = {'query': {'useQueryCache': False}}
		
		    For more information see `BigQuery REST API Reference
		    <https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs#configuration.query>`__.
		credentials : google.auth.credentials.Credentials, optional
		    Credentials for accessing Google APIs. Use this parameter to override
		    default credentials, such as to use Compute Engine
		    :class:`google.auth.compute_engine.Credentials` or Service Account
		    :class:`google.oauth2.service_account.Credentials` directly.
		
		    *New in version 0.8.0 of pandas-gbq*.
		use_bqstorage_api : bool, default False
		    Use the `BigQuery Storage API
		    <https://cloud.google.com/bigquery/docs/reference/storage/>`__ to
		    download query results quickly, but at an increased cost. To use this
		    API, first `enable it in the Cloud Console
		    <https://console.cloud.google.com/apis/library/bigquerystorage.googleapis.com>`__.
		    You must also have the `bigquery.readsessions.create
		    <https://cloud.google.com/bigquery/docs/access-control#roles>`__
		    permission on the project you are billing queries to.
		
		    This feature requires version 0.10.0 or later of the ``pandas-gbq``
		    package. It also requires the ``google-cloud-bigquery-storage`` and
		    ``fastavro`` packages.
		
		    .. versionadded:: 0.25.0
		max_results : int, optional
		    If set, limit the maximum number of rows to fetch from the query
		    results.
		
		    *New in version 0.12.0 of pandas-gbq*.
		
		    .. versionadded:: 1.1.0
		progress_bar_type : Optional, str
		    If set, use the `tqdm <https://tqdm.github.io/>`__ library to
		    display a progress bar while the data downloads. Install the
		    ``tqdm`` package to use this feature.
		
		    Possible values of ``progress_bar_type`` include:
		
		    ``None``
		        No progress bar.
		    ``'tqdm'``
		        Use the :func:`tqdm.tqdm` function to print a progress bar
		        to :data:`sys.stderr`.
		    ``'tqdm_notebook'``
		        Use the :func:`tqdm.tqdm_notebook` function to display a
		        progress bar as a Jupyter notebook widget.
		    ``'tqdm_gui'``
		        Use the :func:`tqdm.tqdm_gui` function to display a
		        progress bar as a graphical dialog box.
		
		    Note that this feature requires version 0.12.0 or later of the
		    ``pandas-gbq`` package. And it requires the ``tqdm`` package. Slightly
		    different than ``pandas-gbq``, here the default is ``None``.
		
		    .. versionadded:: 1.0.0
		
		Returns
		-------
		df: DataFrame
		    DataFrame representing results of query.
		
		See Also
		--------
		pandas_gbq.read_gbq : This function in the pandas-gbq library.
		DataFrame.to_gbq : Write a DataFrame to Google BigQuery.
	**/
	static public function read_gbq(query:Dynamic, ?project_id:Dynamic, ?index_col:Dynamic, ?col_order:Dynamic, ?reauth:Dynamic, ?auth_local_webserver:Dynamic, ?dialect:Dynamic, ?location:Dynamic, ?configuration:Dynamic, ?credentials:Dynamic, ?use_bqstorage_api:Dynamic, ?max_results:Dynamic, ?progress_bar_type:Dynamic):Dynamic;
	/**
		Read from the store, close it if we opened it.
		
		Retrieve pandas object stored in file, optionally based on where
		criteria.
		
		.. warning::
		
		   Pandas uses PyTables for reading and writing HDF5 files, which allows
		   serializing object-dtype data with pickle when using the "fixed" format.
		   Loading pickled data received from untrusted sources can be unsafe.
		
		   See: https://docs.python.org/3/library/pickle.html for more.
		
		Parameters
		----------
		path_or_buf : str, path object, pandas.HDFStore
		    Any valid string path is acceptable. Only supports the local file system,
		    remote URLs and file-like objects are not supported.
		
		    If you want to pass in a path object, pandas accepts any
		    ``os.PathLike``.
		
		    Alternatively, pandas accepts an open :class:`pandas.HDFStore` object.
		
		key : object, optional
		    The group identifier in the store. Can be omitted if the HDF file
		    contains a single pandas object.
		mode : {'r', 'r+', 'a'}, default 'r'
		    Mode to use when opening the file. Ignored if path_or_buf is a
		    :class:`pandas.HDFStore`. Default is 'r'.
		errors : str, default 'strict'
		    Specifies how encoding and decoding errors are to be handled.
		    See the errors argument for :func:`open` for a full list
		    of options.
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
		**kwargs
		    Additional keyword arguments passed to HDFStore.
		
		Returns
		-------
		item : object
		    The selected object. Return type depends on the object stored.
		
		See Also
		--------
		DataFrame.to_hdf : Write a HDF file from a DataFrame.
		HDFStore : Low-level access to HDF files.
		
		Examples
		--------
		>>> df = pd.DataFrame([[1, 1.0, 'a']], columns=['x', 'y', 'z'])  # doctest: +SKIP
		>>> df.to_hdf('./store.h5', 'data')  # doctest: +SKIP
		>>> reread = pd.read_hdf('./store.h5')  # doctest: +SKIP
	**/
	static public function read_hdf(path_or_buf:Dynamic, ?key:Dynamic, ?mode:Dynamic, ?errors:Dynamic, ?where:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?columns:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Read HTML tables into a ``list`` of ``DataFrame`` objects.
		
		Parameters
		----------
		io : str, path object, or file-like object
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a string ``read()`` function.
		    The string can represent a URL or the HTML itself. Note that
		    lxml only accepts the http, ftp and file url protocols. If you have a
		    URL that starts with ``'https'`` you might try removing the ``'s'``.
		
		match : str or compiled regular expression, optional
		    The set of tables containing text matching this regex or string will be
		    returned. Unless the HTML is extremely simple you will probably need to
		    pass a non-empty string here. Defaults to '.+' (match any non-empty
		    string). The default value will return all tables contained on a page.
		    This value is converted to a regular expression so that there is
		    consistent behavior between Beautiful Soup and lxml.
		
		flavor : str, optional
		    The parsing engine to use. 'bs4' and 'html5lib' are synonymous with
		    each other, they are both there for backwards compatibility. The
		    default of ``None`` tries to use ``lxml`` to parse and if that fails it
		    falls back on ``bs4`` + ``html5lib``.
		
		header : int or list-like, optional
		    The row (or list of rows for a :class:`~pandas.MultiIndex`) to use to
		    make the columns headers.
		
		index_col : int or list-like, optional
		    The column (or list of columns) to use to create the index.
		
		skiprows : int, list-like or slice, optional
		    Number of rows to skip after parsing the column integer. 0-based. If a
		    sequence of integers or a slice is given, will skip the rows indexed by
		    that sequence.  Note that a single element sequence means 'skip the nth
		    row' whereas an integer means 'skip n rows'.
		
		attrs : dict, optional
		    This is a dictionary of attributes that you can pass to use to identify
		    the table in the HTML. These are not checked for validity before being
		    passed to lxml or Beautiful Soup. However, these attributes must be
		    valid HTML table attributes to work correctly. For example, ::
		
		        attrs = {'id': 'table'}
		
		    is a valid attribute dictionary because the 'id' HTML tag attribute is
		    a valid HTML attribute for *any* HTML tag as per `this document
		    <https://html.spec.whatwg.org/multipage/dom.html#global-attributes>`__. ::
		
		        attrs = {'asdf': 'table'}
		
		    is *not* a valid attribute dictionary because 'asdf' is not a valid
		    HTML attribute even if it is a valid XML attribute.  Valid HTML 4.01
		    table attributes can be found `here
		    <http://www.w3.org/TR/REC-html40/struct/tables.html#h-11.2>`__. A
		    working draft of the HTML 5 spec can be found `here
		    <https://html.spec.whatwg.org/multipage/tables.html>`__. It contains the
		    latest information on table attributes for the modern web.
		
		parse_dates : bool, optional
		    See :func:`~read_csv` for more details.
		
		thousands : str, optional
		    Separator to use to parse thousands. Defaults to ``','``.
		
		encoding : str, optional
		    The encoding used to decode the web page. Defaults to ``None``.``None``
		    preserves the previous encoding behavior, which depends on the
		    underlying parser library (e.g., the parser library will try to use
		    the encoding provided by the document).
		
		decimal : str, default '.'
		    Character to recognize as decimal point (e.g. use ',' for European
		    data).
		
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the cell (not column) content, and return the
		    transformed content.
		
		na_values : iterable, default None
		    Custom NA values.
		
		keep_default_na : bool, default True
		    If na_values are specified and keep_default_na is False the default NaN
		    values are overridden, otherwise they're appended to.
		
		displayed_only : bool, default True
		    Whether elements with "display: none" should be parsed.
		
		Returns
		-------
		dfs
		    A list of DataFrames.
		
		See Also
		--------
		read_csv : Read a comma-separated values (csv) file into DataFrame.
		
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
		element in the table. ``<td>`` stands for "table data". This function
		attempts to properly handle ``colspan`` and ``rowspan`` attributes.
		If the function has a ``<thead>`` argument, it is used to construct
		the header, otherwise the function attempts to find the header within
		the body (by putting rows with only ``<th>`` elements into the header).
		
		Similar to :func:`~read_csv` the `header` argument is applied
		**after** `skiprows` is applied.
		
		This function will *always* return a list of :class:`DataFrame` *or*
		it will fail, e.g., it will *not* return an empty list.
		
		Examples
		--------
		See the :ref:`read_html documentation in the IO section of the docs
		<io.read_html>` for some examples of reading in HTML tables.
	**/
	static public function read_html(io:Dynamic, ?match:Dynamic, ?flavor:Dynamic, ?header:Dynamic, ?index_col:Dynamic, ?skiprows:Dynamic, ?attrs:Dynamic, ?parse_dates:Dynamic, ?thousands:Dynamic, ?encoding:Dynamic, ?decimal:Dynamic, ?converters:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?displayed_only:Dynamic):Dynamic;
	/**
		Convert a JSON string to pandas object.
		
		Parameters
		----------
		path_or_buf : a valid JSON str, path object or file-like object
		    Any valid string path is acceptable. The string could be a URL. Valid
		    URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be:
		    ``file://localhost/path/to/table.json``.
		
		    If you want to pass in a path object, pandas accepts any
		    ``os.PathLike``.
		
		    By file-like object, we refer to objects with a ``read()`` method,
		    such as a file handle (e.g. via builtin ``open`` function)
		    or ``StringIO``.
		orient : str
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
		
		typ : {'frame', 'series'}, default 'frame'
		    The type of object to recover.
		
		dtype : bool or dict, default None
		    If True, infer dtypes; if a dict of column to dtype, then use those;
		    if False, then don't infer dtypes at all, applies only to the data.
		
		    For all ``orient`` values except ``'table'``, default is True.
		
		    .. versionchanged:: 0.25.0
		
		       Not applicable for ``orient='table'``.
		
		convert_axes : bool, default None
		    Try to convert the axes to the proper dtypes.
		
		    For all ``orient`` values except ``'table'``, default is True.
		
		    .. versionchanged:: 0.25.0
		
		       Not applicable for ``orient='table'``.
		
		convert_dates : bool or list of str, default True
		    If True then default datelike columns may be converted (depending on
		    keep_default_dates).
		    If False, no dates will be converted.
		    If a list of column names, then those columns will be converted and
		    default datelike columns may also be converted (depending on
		    keep_default_dates).
		
		keep_default_dates : bool, default True
		    If parsing dates (convert_dates is not False), then try to parse the
		    default datelike columns.
		    A column label is datelike if
		
		    * it ends with ``'_at'``,
		
		    * it ends with ``'_time'``,
		
		    * it begins with ``'timestamp'``,
		
		    * it is ``'modified'``, or
		
		    * it is ``'date'``.
		
		numpy : bool, default False
		    Direct decoding to numpy arrays. Supports numeric data only, but
		    non-numeric column and index labels are supported. Note also that the
		    JSON ordering MUST be the same for each term if numpy=True.
		
		    .. deprecated:: 1.0.0
		
		precise_float : bool, default False
		    Set to enable usage of higher precision (strtod) function when
		    decoding string to double values. Default (False) is to use fast but
		    less precise builtin functionality.
		
		date_unit : str, default None
		    The timestamp unit to detect if converting dates. The default behaviour
		    is to try and detect the correct precision, but if this is not desired
		    then pass one of 's', 'ms', 'us' or 'ns' to force parsing only seconds,
		    milliseconds, microseconds or nanoseconds respectively.
		
		encoding : str, default is 'utf-8'
		    The encoding to use to decode py3 bytes.
		
		encoding_errors : str, optional, default "strict"
		    How encoding errors are treated. `List of possible values
		    <https://docs.python.org/3/library/codecs.html#error-handlers>`_ .
		
		    .. versionadded:: 1.3.0
		
		lines : bool, default False
		    Read the file as a json object per line.
		
		chunksize : int, optional
		    Return JsonReader object for iteration.
		    See the `line-delimited json docs
		    <https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html#line-delimited-json>`_
		    for more information on ``chunksize``.
		    This can only be passed if `lines=True`.
		    If this is None, the file will be read into memory all at once.
		
		    .. versionchanged:: 1.2
		
		       ``JsonReader`` is a context manager.
		
		compression : str or dict, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer' and 'path_or_buf' is
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). If using
		    'zip', the ZIP file must contain only one data file to be read in. Set to
		    ``None`` for no decompression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for Zstandard decompression using a
		    custom compression dictionary:
		    ``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
		
		    .. versionchanged:: 1.4.0 Zstandard support.
		
		nrows : int, optional
		    The number of lines from the line-delimited jsonfile that has to be read.
		    This can only be passed if `lines=True`.
		    If this is None, all the rows will be returned.
		
		    .. versionadded:: 1.1
		
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		    .. versionadded:: 1.2.0
		
		Returns
		-------
		Series or DataFrame
		    The type returned depends on the value of `typ`.
		
		See Also
		--------
		DataFrame.to_json : Convert a DataFrame to a JSON string.
		Series.to_json : Convert a Series to a JSON string.
		json_normalize : Normalize semi-structured JSON data into a flat table.
		
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
		
		Examples
		--------
		>>> df = pd.DataFrame([['a', 'b'], ['c', 'd']],
		...                   index=['row 1', 'row 2'],
		...                   columns=['col 1', 'col 2'])
		
		Encoding/decoding a Dataframe using ``'split'`` formatted JSON:
		
		>>> df.to_json(orient='split')
		    '{"columns":["col 1","col 2"],"index":["row 1","row 2"],"data":[["a","b"],["c","d"]]}'
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
		    '{"schema":{"fields":[{"name":"index","type":"string"},{"name":"col 1","type":"string"},{"name":"col 2","type":"string"}],"primaryKey":["index"],"pandas_version":"1.4.0"},"data":[{"index":"row 1","col 1":"a","col 2":"b"},{"index":"row 2","col 1":"c","col 2":"d"}]}'
	**/
	static public function read_json(?path_or_buf:Dynamic, ?orient:Dynamic, ?typ:Dynamic, ?dtype:Dynamic, ?convert_axes:Dynamic, ?convert_dates:Dynamic, ?keep_default_dates:Dynamic, ?numpy:Dynamic, ?precise_float:Dynamic, ?date_unit:Dynamic, ?encoding:Dynamic, ?encoding_errors:Dynamic, ?lines:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?nrows:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Load an ORC object from the file path, returning a DataFrame.
		
		.. versionadded:: 1.0.0
		
		Parameters
		----------
		path : str, path object, or file-like object
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a binary ``read()`` function. The string could be a URL.
		    Valid URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be:
		    ``file://localhost/path/to/table.orc``.
		columns : list, default None
		    If not None, only these columns will be read from the file.
		**kwargs
		    Any additional kwargs are passed to pyarrow.
		
		Returns
		-------
		DataFrame
		
		Notes
		-------
		Before using this function you should read the :ref:`user guide about ORC <io.orc>`
		and :ref:`install optional dependencies <install.warn_orc>`.
	**/
	static public function read_orc(path:Dynamic, ?columns:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load a parquet object from the file path, returning a DataFrame.
		
		Parameters
		----------
		path : str, path object or file-like object
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a binary ``read()`` function.
		    The string could be a URL. Valid URL schemes include http, ftp, s3,
		    gs, and file. For file URLs, a host is expected. A local file could be:
		    ``file://localhost/path/to/table.parquet``.
		    A file URL can also be a path to a directory that contains multiple
		    partitioned parquet files. Both pyarrow and fastparquet support
		    paths to directories as well as file URLs. A directory path could be:
		    ``file://localhost/path/to/tables`` or ``s3://bucket/partition_dir``.
		engine : {'auto', 'pyarrow', 'fastparquet'}, default 'auto'
		    Parquet library to use. If 'auto', then the option
		    ``io.parquet.engine`` is used. The default ``io.parquet.engine``
		    behavior is to try 'pyarrow', falling back to 'fastparquet' if
		    'pyarrow' is unavailable.
		columns : list, default=None
		    If not None, only these columns will be read from the file.
		
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		    .. versionadded:: 1.3.0
		
		use_nullable_dtypes : bool, default False
		    If True, use dtypes that use ``pd.NA`` as missing value indicator
		    for the resulting DataFrame. (only applicable for the ``pyarrow``
		    engine)
		    As new dtypes are added that support ``pd.NA`` in the future, the
		    output with this option will change to use those dtypes.
		    Note: this is an experimental option, and behaviour (e.g. additional
		    support dtypes) may change without notice.
		
		    .. versionadded:: 1.2.0
		
		**kwargs
		    Any additional kwargs are passed to the engine.
		
		Returns
		-------
		DataFrame
	**/
	static public function read_parquet(path:Dynamic, ?engine:Dynamic, ?columns:Dynamic, ?storage_options:Dynamic, ?use_nullable_dtypes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load pickled pandas object (or any object) from file.
		
		.. warning::
		
		   Loading pickled data received from untrusted sources can be
		   unsafe. See `here <https://docs.python.org/3/library/pickle.html>`__.
		
		Parameters
		----------
		filepath_or_buffer : str, path object, or file-like object
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a binary ``readlines()`` function.
		
		    .. versionchanged:: 1.0.0
		       Accept URL. URL is not limited to S3 and GCS.
		
		compression : str or dict, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer' and 'filepath_or_buffer' is
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). If using
		    'zip', the ZIP file must contain only one data file to be read in. Set to
		    ``None`` for no decompression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for Zstandard decompression using a
		    custom compression dictionary:
		    ``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
		
		    .. versionchanged:: 1.4.0 Zstandard support.
		
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		    .. versionadded:: 1.2.0
		
		Returns
		-------
		unpickled : same type as object stored in file
		
		See Also
		--------
		DataFrame.to_pickle : Pickle (serialize) DataFrame object to file.
		Series.to_pickle : Pickle (serialize) Series object to file.
		read_hdf : Read HDF5 file into a DataFrame.
		read_sql : Read SQL query or database table into a DataFrame.
		read_parquet : Load a parquet object, returning a DataFrame.
		
		Notes
		-----
		read_pickle is only guaranteed to be backwards compatible to pandas 0.20.3.
		
		Examples
		--------
		>>> original_df = pd.DataFrame({"foo": range(5), "bar": range(5, 10)})  # doctest: +SKIP
		>>> original_df  # doctest: +SKIP
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		>>> pd.to_pickle(original_df, "./dummy.pkl")  # doctest: +SKIP
		
		>>> unpickled_df = pd.read_pickle("./dummy.pkl")  # doctest: +SKIP
		>>> unpickled_df  # doctest: +SKIP
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
	**/
	static public function read_pickle(filepath_or_buffer:Dynamic, ?compression:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Read SAS files stored as either XPORT or SAS7BDAT format files.
		
		Parameters
		----------
		filepath_or_buffer : str, path object, or file-like object
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a binary ``read()`` function. The string could be a URL.
		    Valid URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be:
		    ``file://localhost/path/to/table.sas``.
		format : str {'xport', 'sas7bdat'} or None
		    If None, file format is inferred from file extension. If 'xport' or
		    'sas7bdat', uses the corresponding format.
		index : identifier of index column, defaults to None
		    Identifier of column that should be used as index of the DataFrame.
		encoding : str, default is None
		    Encoding for text data.  If None, text data are stored as raw bytes.
		chunksize : int
		    Read file `chunksize` lines at a time, returns iterator.
		
		    .. versionchanged:: 1.2
		
		        ``TextFileReader`` is a context manager.
		iterator : bool, defaults to False
		    If True, returns an iterator for reading the file incrementally.
		
		    .. versionchanged:: 1.2
		
		        ``TextFileReader`` is a context manager.
		
		Returns
		-------
		DataFrame if iterator=False and chunksize=None, else SAS7BDATReader
		or XportReader
	**/
	static public function read_sas(filepath_or_buffer:Dynamic, ?format:Dynamic, ?index:Dynamic, ?encoding:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic):Dynamic;
	/**
		Load an SPSS file from the file path, returning a DataFrame.
		
		.. versionadded:: 0.25.0
		
		Parameters
		----------
		path : str or Path
		    File path.
		usecols : list-like, optional
		    Return a subset of the columns. If None, return all columns.
		convert_categoricals : bool, default is True
		    Convert categorical columns into pd.Categorical.
		
		Returns
		-------
		DataFrame
	**/
	static public function read_spss(path:Dynamic, ?usecols:Dynamic, ?convert_categoricals:Dynamic):Dynamic;
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
		Read Stata file into DataFrame.
		
		Parameters
		----------
		filepath_or_buffer : str, path object or file-like object
		    Any valid string path is acceptable. The string could be a URL. Valid
		    URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be: ``file://localhost/path/to/table.dta``.
		
		    If you want to pass in a path object, pandas accepts any ``os.PathLike``.
		
		    By file-like object, we refer to objects with a ``read()`` method,
		    such as a file handle (e.g. via builtin ``open`` function)
		    or ``StringIO``.
		convert_dates : bool, default True
		    Convert date variables to DataFrame time values.
		convert_categoricals : bool, default True
		    Read value labels and convert columns to Categorical/Factor variables.
		index_col : str, optional
		    Column to set as index.
		convert_missing : bool, default False
		    Flag indicating whether to convert missing values to their Stata
		    representations.  If False, missing values are replaced with nan.
		    If True, columns containing missing values are returned with
		    object data types and missing values are represented by
		    StataMissingValue objects.
		preserve_dtypes : bool, default True
		    Preserve Stata datatypes. If False, numeric data are upcast to pandas
		    default types for foreign data (float64 or int64).
		columns : list or None
		    Columns to retain.  Columns will be returned in the given order.  None
		    returns all columns.
		order_categoricals : bool, default True
		    Flag indicating whether converted categorical data are ordered.
		chunksize : int, default None
		    Return StataReader object for iterations, returns chunks with
		    given number of lines.
		iterator : bool, default False
		    Return StataReader object.
		compression : str or dict, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer' and '%s' is
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). If using
		    'zip', the ZIP file must contain only one data file to be read in. Set to
		    ``None`` for no decompression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for Zstandard decompression using a
		    custom compression dictionary:
		    ``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		Returns
		-------
		DataFrame or StataReader
		
		See Also
		--------
		io.stata.StataReader : Low-level reader for Stata data files.
		DataFrame.to_stata: Export Stata data files.
		
		Notes
		-----
		Categorical variables read through an iterator may not have the same
		categories and dtype. This occurs when  a variable stored in a DTA
		file is associated to an incomplete set of value labels that only
		label a strict subset of the values.
		
		Examples
		--------
		
		Creating a dummy stata for this example
		>>> df = pd.DataFrame({'animal': ['falcon', 'parrot', 'falcon',
		...                              'parrot'],
		...                   'speed': [350, 18, 361, 15]})  # doctest: +SKIP
		>>> df.to_stata('animals.dta')  # doctest: +SKIP
		
		Read a Stata dta file:
		
		>>> df = pd.read_stata('animals.dta')  # doctest: +SKIP
		
		Read a Stata dta file in 10,000 line chunks:
		>>> values = np.random.randint(0, 10, size=(20_000, 1), dtype="uint8")  # doctest: +SKIP
		>>> df = pd.DataFrame(values, columns=["i"])  # doctest: +SKIP
		>>> df.to_stata('filename.dta')  # doctest: +SKIP
		
		>>> itr = pd.read_stata('filename.dta', chunksize=10000)  # doctest: +SKIP
		>>> for chunk in itr:
		...    # Operate on a single chunk, e.g., chunk.mean()
		...    pass  # doctest: +SKIP
	**/
	static public function read_stata(filepath_or_buffer:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?index_col:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic, ?compression:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Read general delimited file into DataFrame.
		
		Also supports optionally iterating or breaking of the file
		into chunks.
		
		Additional help can be found in the online docs for
		`IO Tools <https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html>`_.
		
		Parameters
		----------
		filepath_or_buffer : str, path object or file-like object
		    Any valid string path is acceptable. The string could be a URL. Valid
		    URL schemes include http, ftp, s3, gs, and file. For file URLs, a host is
		    expected. A local file could be: file://localhost/path/to/table.csv.
		
		    If you want to pass in a path object, pandas accepts any ``os.PathLike``.
		
		    By file-like object, we refer to objects with a ``read()`` method, such as
		    a file handle (e.g. via builtin ``open`` function) or ``StringIO``.
		sep : str, default '\\t' (tab-stop)
		    Delimiter to use. If sep is None, the C engine cannot automatically detect
		    the separator, but the Python parsing engine can, meaning the latter will
		    be used and automatically detect the separator by Python's builtin sniffer
		    tool, ``csv.Sniffer``. In addition, separators longer than 1 character and
		    different from ``'\s+'`` will be interpreted as regular expressions and
		    will also force the use of the Python parsing engine. Note that regex
		    delimiters are prone to ignoring quoted data. Regex example: ``'\r\t'``.
		delimiter : str, default ``None``
		    Alias for sep.
		header : int, list of int, None, default 'infer'
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
		    ``skip_blank_lines=True``, so ``header=0`` denotes the first line of
		    data rather than the first line of the file.
		names : array-like, optional
		    List of column names to use. If the file contains a header row,
		    then you should explicitly pass ``header=0`` to override the column names.
		    Duplicates in this list are not allowed.
		index_col : int, str, sequence of int / str, or False, optional, default ``None``
		  Column(s) to use as the row labels of the ``DataFrame``, either given as
		  string name or column index. If a sequence of int / str is given, a
		  MultiIndex is used.
		
		  Note: ``index_col=False`` can be used to force pandas to *not* use the first
		  column as the index, e.g. when you have a malformed file with delimiters at
		  the end of each line.
		usecols : list-like or callable, optional
		    Return a subset of the columns. If list-like, all elements must either
		    be positional (i.e. integer indices into the document columns) or strings
		    that correspond to column names provided either by the user in `names` or
		    inferred from the document header row(s). If ``names`` are given, the document
		    header row(s) are not taken into account. For example, a valid list-like
		    `usecols` parameter would be ``[0, 1, 2]`` or ``['foo', 'bar', 'baz']``.
		    Element order is ignored, so ``usecols=[0, 1]`` is the same as ``[1, 0]``.
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
		squeeze : bool, default False
		    If the parsed data only contains one column then return a Series.
		
		    .. deprecated:: 1.4.0
		        Append ``.squeeze("columns")`` to the call to ``read_table`` to squeeze
		        the data.
		prefix : str, optional
		    Prefix to add to column numbers when no header, e.g. 'X' for X0, X1, ...
		
		    .. deprecated:: 1.4.0
		       Use a list comprehension on the DataFrame's columns after calling ``read_csv``.
		mangle_dupe_cols : bool, default True
		    Duplicate columns will be specified as 'X', 'X.1', ...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		dtype : Type name or dict of column -> type, optional
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32,
		    'c': 'Int64'}
		    Use `str` or `object` together with suitable `na_values` settings
		    to preserve and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		engine : {'c', 'python', 'pyarrow'}, optional
		    Parser engine to use. The C and pyarrow engines are faster, while the python engine
		    is currently more feature-complete. Multithreading is currently only supported by
		    the pyarrow engine.
		
		    .. versionadded:: 1.4.0
		
		        The "pyarrow" engine was added as an *experimental* engine, and some features
		        are unsupported, or may not work correctly, with this engine.
		converters : dict, optional
		    Dict of functions for converting values in certain columns. Keys can either
		    be integers or column labels.
		true_values : list, optional
		    Values to consider as True.
		false_values : list, optional
		    Values to consider as False.
		skipinitialspace : bool, default False
		    Skip spaces after delimiter.
		skiprows : list-like, int or callable, optional
		    Line numbers to skip (0-indexed) or number of lines to skip (int)
		    at the start of the file.
		
		    If callable, the callable function will be evaluated against the row
		    indices, returning True if the row should be skipped and False otherwise.
		    An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
		skipfooter : int, default 0
		    Number of lines at bottom of file to skip (Unsupported with engine='c').
		nrows : int, optional
		    Number of rows of file to read. Useful for reading pieces of large files.
		na_values : scalar, str, list-like, or dict, optional
		    Additional strings to recognize as NA/NaN. If dict passed, specific
		    per-column NA values.  By default the following values are interpreted as
		    NaN: '', '#N/A', '#N/A N/A', '#NA', '-1.#IND', '-1.#QNAN', '-NaN', '-nan',
		    '1.#IND', '1.#QNAN', '<NA>', 'N/A', 'NA', 'NULL', 'NaN', 'n/a',
		    'nan', 'null'.
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
		na_filter : bool, default True
		    Detect missing value markers (empty strings and the value of na_values). In
		    data without any NAs, passing na_filter=False can improve the performance
		    of reading a large file.
		verbose : bool, default False
		    Indicate number of NA values placed in non-numeric columns.
		skip_blank_lines : bool, default True
		    If True, skip over blank lines rather than interpreting as NaN values.
		parse_dates : bool or list of int or names or list of lists or dict, default False
		    The behavior is as follows:
		
		    * boolean. If True -> try parsing the index.
		    * list of int or names. e.g. If [1, 2, 3] -> try parsing columns 1, 2, 3
		      each as a separate date column.
		    * list of lists. e.g.  If [[1, 3]] -> combine columns 1 and 3 and parse as
		      a single date column.
		    * dict, e.g. {'foo' : [1, 3]} -> parse columns 1, 3 as date and call
		      result 'foo'
		
		    If a column or index cannot be represented as an array of datetimes,
		    say because of an unparsable value or a mixture of timezones, the column
		    or index will be returned unaltered as an object data type. For
		    non-standard datetime parsing, use ``pd.to_datetime`` after
		    ``pd.read_csv``. To parse an index or column with a mixture of timezones,
		    specify ``date_parser`` to be a partially-applied
		    :func:`pandas.to_datetime` with ``utc=True``. See
		    :ref:`io.csv.mixed_timezones` for more.
		
		    Note: A fast-path exists for iso8601-formatted dates.
		infer_datetime_format : bool, default False
		    If True and `parse_dates` is enabled, pandas will attempt to infer the
		    format of the datetime strings in the columns, and if it can be inferred,
		    switch to a faster method of parsing them. In some cases this can increase
		    the parsing speed by 5-10x.
		keep_date_col : bool, default False
		    If True and `parse_dates` specifies combining multiple columns then
		    keep the original columns.
		date_parser : function, optional
		    Function to use for converting a sequence of string columns to an array of
		    datetime instances. The default uses ``dateutil.parser.parser`` to do the
		    conversion. Pandas will try to call `date_parser` in three different ways,
		    advancing to the next if an exception occurs: 1) Pass one or more arrays
		    (as defined by `parse_dates`) as arguments; 2) concatenate (row-wise) the
		    string values from the columns defined by `parse_dates` into a single array
		    and pass that; and 3) call `date_parser` once for each row using one or
		    more strings (corresponding to the columns defined by `parse_dates`) as
		    arguments.
		dayfirst : bool, default False
		    DD/MM format dates, international and European format.
		cache_dates : bool, default True
		    If True, use a cache of unique, converted dates to apply the datetime
		    conversion. May produce significant speed-up when parsing duplicate
		    date strings, especially ones with timezone offsets.
		
		    .. versionadded:: 0.25.0
		iterator : bool, default False
		    Return TextFileReader object for iteration or getting chunks with
		    ``get_chunk()``.
		
		    .. versionchanged:: 1.2
		
		       ``TextFileReader`` is a context manager.
		chunksize : int, optional
		    Return TextFileReader object for iteration.
		    See the `IO Tools docs
		    <https://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_
		    for more information on ``iterator`` and ``chunksize``.
		
		    .. versionchanged:: 1.2
		
		       ``TextFileReader`` is a context manager.
		compression : str or dict, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer' and '%s' is
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). If using
		    'zip', the ZIP file must contain only one data file to be read in. Set to
		    ``None`` for no decompression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for Zstandard decompression using a
		    custom compression dictionary:
		    ``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
		
		    .. versionchanged:: 1.4.0 Zstandard support.
		
		thousands : str, optional
		    Thousands separator.
		decimal : str, default '.'
		    Character to recognize as decimal point (e.g. use ',' for European data).
		lineterminator : str (length 1), optional
		    Character to break file into lines. Only valid with C parser.
		quotechar : str (length 1), optional
		    The character used to denote the start and end of a quoted item. Quoted
		    items can include the delimiter and it will be ignored.
		quoting : int or csv.QUOTE_* instance, default 0
		    Control field quoting behavior per ``csv.QUOTE_*`` constants. Use one of
		    QUOTE_MINIMAL (0), QUOTE_ALL (1), QUOTE_NONNUMERIC (2) or QUOTE_NONE (3).
		doublequote : bool, default ``True``
		   When quotechar is specified and quoting is not ``QUOTE_NONE``, indicate
		   whether or not to interpret two consecutive quotechar elements INSIDE a
		   field as a single ``quotechar`` element.
		escapechar : str (length 1), optional
		    One-character string used to escape other characters.
		comment : str, optional
		    Indicates remainder of line should not be parsed. If found at the beginning
		    of a line, the line will be ignored altogether. This parameter must be a
		    single character. Like empty lines (as long as ``skip_blank_lines=True``),
		    fully commented lines are ignored by the parameter `header` but not by
		    `skiprows`. For example, if ``comment='#'``, parsing
		    ``#empty\na,b,c\n1,2,3`` with ``header=0`` will result in 'a,b,c' being
		    treated as the header.
		encoding : str, optional
		    Encoding to use for UTF when reading/writing (ex. 'utf-8'). `List of Python
		    standard encodings
		    <https://docs.python.org/3/library/codecs.html#standard-encodings>`_ .
		
		    .. versionchanged:: 1.2
		
		       When ``encoding`` is ``None``, ``errors="replace"`` is passed to
		       ``open()``. Otherwise, ``errors="strict"`` is passed to ``open()``.
		       This behavior was previously only the case for ``engine="python"``.
		
		    .. versionchanged:: 1.3.0
		
		       ``encoding_errors`` is a new argument. ``encoding`` has no longer an
		       influence on how encoding errors are handled.
		
		encoding_errors : str, optional, default "strict"
		    How encoding errors are treated. `List of possible values
		    <https://docs.python.org/3/library/codecs.html#error-handlers>`_ .
		
		    .. versionadded:: 1.3.0
		
		dialect : str or csv.Dialect, optional
		    If provided, this parameter will override values (default or not) for the
		    following parameters: `delimiter`, `doublequote`, `escapechar`,
		    `skipinitialspace`, `quotechar`, and `quoting`. If it is necessary to
		    override values, a ParserWarning will be issued. See csv.Dialect
		    documentation for more details.
		error_bad_lines : bool, optional, default ``None``
		    Lines with too many fields (e.g. a csv line with too many commas) will by
		    default cause an exception to be raised, and no DataFrame will be returned.
		    If False, then these "bad lines" will be dropped from the DataFrame that is
		    returned.
		
		    .. deprecated:: 1.3.0
		       The ``on_bad_lines`` parameter should be used instead to specify behavior upon
		       encountering a bad line instead.
		warn_bad_lines : bool, optional, default ``None``
		    If error_bad_lines is False, and warn_bad_lines is True, a warning for each
		    "bad line" will be output.
		
		    .. deprecated:: 1.3.0
		       The ``on_bad_lines`` parameter should be used instead to specify behavior upon
		       encountering a bad line instead.
		on_bad_lines : {'error', 'warn', 'skip'} or callable, default 'error'
		    Specifies what to do upon encountering a bad line (a line with too many fields).
		    Allowed values are :
		
		        - 'error', raise an Exception when a bad line is encountered.
		        - 'warn', raise a warning when a bad line is encountered and skip that line.
		        - 'skip', skip bad lines without raising or warning when they are encountered.
		
		    .. versionadded:: 1.3.0
		
		        - callable, function with signature
		          ``(bad_line: list[str]) -> list[str] | None`` that will process a single
		          bad line. ``bad_line`` is a list of strings split by the ``sep``.
		          If the function returns ``None``, the bad line will be ignored.
		          If the function returns a new list of strings with more elements than
		          expected, a ``ParserWarning`` will be emitted while dropping extra elements.
		          Only supported when ``engine="python"``
		
		    .. versionadded:: 1.4.0
		
		delim_whitespace : bool, default False
		    Specifies whether or not whitespace (e.g. ``' '`` or ``'    '``) will be
		    used as the sep. Equivalent to setting ``sep='\s+'``. If this option
		    is set to True, nothing should be passed in for the ``delimiter``
		    parameter.
		low_memory : bool, default True
		    Internally process the file in chunks, resulting in lower memory use
		    while parsing, but possibly mixed type inference.  To ensure no mixed
		    types either set False, or specify the type with the `dtype` parameter.
		    Note that the entire file is read into a single DataFrame regardless,
		    use the `chunksize` or `iterator` parameter to return the data in chunks.
		    (Only valid with C parser).
		memory_map : bool, default False
		    If a filepath is provided for `filepath_or_buffer`, map the file object
		    directly onto memory and access the data directly from there. Using this
		    option can improve performance because there is no longer any I/O overhead.
		float_precision : str, optional
		    Specifies which converter the C engine should use for floating-point
		    values. The options are ``None`` or 'high' for the ordinary converter,
		    'legacy' for the original lower precision pandas converter, and
		    'round_trip' for the round-trip converter.
		
		    .. versionchanged:: 1.2
		
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		    .. versionadded:: 1.2
		
		Returns
		-------
		DataFrame or TextParser
		    A comma-separated values (csv) file is returned as two-dimensional
		    data structure with labeled axes.
		
		See Also
		--------
		DataFrame.to_csv : Write DataFrame to a comma-separated values (csv) file.
		read_csv : Read a comma-separated values (csv) file into DataFrame.
		read_fwf : Read a table of fixed-width formatted lines into DataFrame.
		
		Examples
		--------
		>>> pd.read_table('data.csv')  # doctest: +SKIP
	**/
	static public function read_table(filepath_or_buffer:Dynamic, ?sep:Dynamic, ?delimiter:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?prefix:Dynamic, ?mangle_dupe_cols:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skipinitialspace:Dynamic, ?skiprows:Dynamic, ?skipfooter:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?na_filter:Dynamic, ?verbose:Dynamic, ?skip_blank_lines:Dynamic, ?parse_dates:Dynamic, ?infer_datetime_format:Dynamic, ?keep_date_col:Dynamic, ?date_parser:Dynamic, ?dayfirst:Dynamic, ?cache_dates:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?thousands:Dynamic, ?decimal:Dynamic, ?lineterminator:Dynamic, ?quotechar:Dynamic, ?quoting:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?comment:Dynamic, ?encoding:Dynamic, ?encoding_errors:Dynamic, ?dialect:Dynamic, ?error_bad_lines:Dynamic, ?warn_bad_lines:Dynamic, ?on_bad_lines:Dynamic, ?delim_whitespace:Dynamic, ?low_memory:Dynamic, ?memory_map:Dynamic, ?float_precision:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Read XML document into a ``DataFrame`` object.
		
		.. versionadded:: 1.3.0
		
		Parameters
		----------
		path_or_buffer : str, path object, or file-like object
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a ``read()`` function. The string can be any valid XML
		    string or a path. The string can further be a URL. Valid URL schemes
		    include http, ftp, s3, and file.
		
		xpath : str, optional, default './\*'
		    The XPath to parse required set of nodes for migration to DataFrame.
		    XPath should return a collection of elements and not a single
		    element. Note: The ``etree`` parser supports limited XPath
		    expressions. For more complex XPath, use ``lxml`` which requires
		    installation.
		
		namespaces : dict, optional
		    The namespaces defined in XML document as dicts with key being
		    namespace prefix and value the URI. There is no need to include all
		    namespaces in XML, only the ones used in ``xpath`` expression.
		    Note: if XML document uses default namespace denoted as
		    `xmlns='<URI>'` without a prefix, you must assign any temporary
		    namespace prefix such as 'doc' to the URI in order to parse
		    underlying nodes and/or attributes. For example, ::
		
		        namespaces = {"doc": "https://example.com"}
		
		elems_only : bool, optional, default False
		    Parse only the child elements at the specified ``xpath``. By default,
		    all child elements and non-empty text nodes are returned.
		
		attrs_only :  bool, optional, default False
		    Parse only the attributes at the specified ``xpath``.
		    By default, all attributes are returned.
		
		names :  list-like, optional
		    Column names for DataFrame of parsed XML data. Use this parameter to
		    rename original element names and distinguish same named elements.
		
		encoding : str, optional, default 'utf-8'
		    Encoding of XML document.
		
		parser : {'lxml','etree'}, default 'lxml'
		    Parser module to use for retrieval of data. Only 'lxml' and
		    'etree' are supported. With 'lxml' more complex XPath searches
		    and ability to use XSLT stylesheet are supported.
		
		stylesheet : str, path object or file-like object
		    A URL, file-like object, or a raw string containing an XSLT script.
		    This stylesheet should flatten complex, deeply nested XML documents
		    for easier parsing. To use this feature you must have ``lxml`` module
		    installed and specify 'lxml' as ``parser``. The ``xpath`` must
		    reference nodes of transformed XML document generated after XSLT
		    transformation and not the original XML document. Only XSLT 1.0
		    scripts and not later versions is currently supported.
		
		compression : str or dict, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer' and 'path_or_buffer' is
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). If using
		    'zip', the ZIP file must contain only one data file to be read in. Set to
		    ``None`` for no decompression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for Zstandard decompression using a
		    custom compression dictionary:
		    ``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
		
		    .. versionchanged:: 1.4.0 Zstandard support.
		
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		Returns
		-------
		df
		    A DataFrame.
		
		See Also
		--------
		read_json : Convert a JSON string to pandas object.
		read_html : Read HTML tables into a list of DataFrame objects.
		
		Notes
		-----
		This method is best designed to import shallow XML documents in
		following format which is the ideal fit for the two-dimensions of a
		``DataFrame`` (row by column). ::
		
		        <root>
		            <row>
		              <column1>data</column1>
		              <column2>data</column2>
		              <column3>data</column3>
		              ...
		           </row>
		           <row>
		              ...
		           </row>
		           ...
		        </root>
		
		As a file format, XML documents can be designed any way including
		layout of elements and attributes as long as it conforms to W3C
		specifications. Therefore, this method is a convenience handler for
		a specific flatter design and not all possible XML structures.
		
		However, for more complex XML documents, ``stylesheet`` allows you to
		temporarily redesign original document with XSLT (a special purpose
		language) for a flatter version for migration to a DataFrame.
		
		This function will *always* return a single :class:`DataFrame` or raise
		exceptions due to issues with XML document, ``xpath``, or other
		parameters.
		
		Examples
		--------
		>>> xml = '''<?xml version='1.0' encoding='utf-8'?>
		... <data xmlns="http://example.com">
		...  <row>
		...    <shape>square</shape>
		...    <degrees>360</degrees>
		...    <sides>4.0</sides>
		...  </row>
		...  <row>
		...    <shape>circle</shape>
		...    <degrees>360</degrees>
		...    <sides/>
		...  </row>
		...  <row>
		...    <shape>triangle</shape>
		...    <degrees>180</degrees>
		...    <sides>3.0</sides>
		...  </row>
		... </data>'''
		
		>>> df = pd.read_xml(xml)
		>>> df
		      shape  degrees  sides
		0    square      360    4.0
		1    circle      360    NaN
		2  triangle      180    3.0
		
		>>> xml = '''<?xml version='1.0' encoding='utf-8'?>
		... <data>
		...   <row shape="square" degrees="360" sides="4.0"/>
		...   <row shape="circle" degrees="360"/>
		...   <row shape="triangle" degrees="180" sides="3.0"/>
		... </data>'''
		
		>>> df = pd.read_xml(xml, xpath=".//row")
		>>> df
		      shape  degrees  sides
		0    square      360    4.0
		1    circle      360    NaN
		2  triangle      180    3.0
		
		>>> xml = '''<?xml version='1.0' encoding='utf-8'?>
		... <doc:data xmlns:doc="https://example.com">
		...   <doc:row>
		...     <doc:shape>square</doc:shape>
		...     <doc:degrees>360</doc:degrees>
		...     <doc:sides>4.0</doc:sides>
		...   </doc:row>
		...   <doc:row>
		...     <doc:shape>circle</doc:shape>
		...     <doc:degrees>360</doc:degrees>
		...     <doc:sides/>
		...   </doc:row>
		...   <doc:row>
		...     <doc:shape>triangle</doc:shape>
		...     <doc:degrees>180</doc:degrees>
		...     <doc:sides>3.0</doc:sides>
		...   </doc:row>
		... </doc:data>'''
		
		>>> df = pd.read_xml(xml,
		...                  xpath="//doc:row",
		...                  namespaces={"doc": "https://example.com"})
		>>> df
		      shape  degrees  sides
		0    square      360    4.0
		1    circle      360    NaN
		2  triangle      180    3.0
	**/
	static public function read_xml(path_or_buffer:Dynamic, ?xpath:Dynamic, ?namespaces:Dynamic, ?elems_only:Dynamic, ?attrs_only:Dynamic, ?names:Dynamic, ?encoding:Dynamic, ?parser:Dynamic, ?stylesheet:Dynamic, ?compression:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Pickle (serialize) object to file.
		
		Parameters
		----------
		obj : any object
		    Any python object.
		filepath_or_buffer : str, path object, or file-like object
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a binary ``write()`` function.
		
		    .. versionchanged:: 1.0.0
		       Accept URL. URL has to be of S3 or GCS.
		compression : str or dict, default 'infer'
		    For on-the-fly compression of the output data. If 'infer' and 'filepath_or_buffer'
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). Set to
		    ``None`` for no compression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for faster compression and to create
		    a reproducible gzip archive:
		    ``compression={'method': 'gzip', 'compresslevel': 1, 'mtime': 1}``.
		
		    .. versionchanged:: 1.4.0 Zstandard support.
		
		protocol : int
		    Int which indicates which protocol should be used by the pickler,
		    default HIGHEST_PROTOCOL (see [1], paragraph 12.1.2). The possible
		    values for this parameter depend on the version of Python. For Python
		    2.x, possible values are 0, 1, 2. For Python>=3.0, 3 is a valid value.
		    For Python >= 3.4, 4 is a valid value. A negative value for the
		    protocol parameter is equivalent to setting its value to
		    HIGHEST_PROTOCOL.
		
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		    .. versionadded:: 1.2.0
		
		    .. [1] https://docs.python.org/3/library/pickle.html
		
		See Also
		--------
		read_pickle : Load pickled pandas object (or any object) from file.
		DataFrame.to_hdf : Write DataFrame to an HDF5 file.
		DataFrame.to_sql : Write DataFrame to a SQL database.
		DataFrame.to_parquet : Write a DataFrame to the binary parquet format.
		
		Examples
		--------
		>>> original_df = pd.DataFrame({"foo": range(5), "bar": range(5, 10)})  # doctest: +SKIP
		>>> original_df  # doctest: +SKIP
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		>>> pd.to_pickle(original_df, "./dummy.pkl")  # doctest: +SKIP
		
		>>> unpickled_df = pd.read_pickle("./dummy.pkl")  # doctest: +SKIP
		>>> unpickled_df  # doctest: +SKIP
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
	**/
	static public function to_pickle(obj:Dynamic, filepath_or_buffer:Dynamic, ?compression:Dynamic, ?protocol:Dynamic, ?storage_options:Dynamic):Dynamic;
}