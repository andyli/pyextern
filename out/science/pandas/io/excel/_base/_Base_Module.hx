/* This file is generated, do not edit! */
package pandas.io.excel._base;
@:pythonImport("pandas.io.excel._base") extern class _Base_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeArg(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function FilePath(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var IntStrT : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Mapping(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var PEEK_SIZE : Dynamic;
	static public var STR_NA_VALUES : Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function StorageOptions(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Converts lists of lists/tuples into DataFrames with proper type inference
		and optional (e.g. string to datetime) conversion. Also enables iterating
		lazily over chunks of large files
		
		Parameters
		----------
		data : file-like object or list
		delimiter : separator character to use
		dialect : str or csv.Dialect instance, optional
		    Ignored if delimiter is longer than 1 character
		names : sequence, default
		header : int, default 0
		    Row to use to parse column labels. Defaults to the first row. Prior
		    rows will be discarded
		index_col : int or list, optional
		    Column or columns to use as the (possibly hierarchical) index
		has_index_names: bool, default False
		    True if the cols defined in index_col have an index name and are
		    not in the header.
		na_values : scalar, str, list-like, or dict, optional
		    Additional strings to recognize as NA/NaN.
		keep_default_na : bool, default True
		thousands : str, optional
		    Thousands separator
		comment : str, optional
		    Comment out remainder of line
		parse_dates : bool, default False
		keep_date_col : bool, default False
		date_parser : function, optional
		skiprows : list of integers
		    Row numbers to skip
		skipfooter : int
		    Number of line at bottom of file to skip
		converters : dict, optional
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the cell (not column) content, and return the
		    transformed content.
		encoding : str, optional
		    Encoding to use for UTF when reading/writing (ex. 'utf-8')
		squeeze : bool, default False
		    returns Series if only one column.
		infer_datetime_format: bool, default False
		    If True and `parse_dates` is True for a column, try to infer the
		    datetime format based on the first datetime string. If the format
		    can be inferred, there often will be a large parsing speed-up.
		float_precision : str, optional
		    Specifies which converter the C engine should use for floating-point
		    values. The options are `None` or `high` for the ordinary converter,
		    `legacy` for the original lower precision pandas converter, and
		    `round_trip` for the round-trip converter.
		
		    .. versionchanged:: 1.2
	**/
	static public function TextParser(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var XLS_SIGNATURES : Dynamic;
	static public var ZIP_SIGNATURE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _read_excel_doc : Dynamic;
	static public var _shared_docs : Dynamic;
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
		Decorator to deprecate a use of non-keyword arguments of a function.
		
		Parameters
		----------
		version : str, optional
		    The version in which positional arguments will become
		    keyword-only. If None, then the warning message won't
		    specify any particular version.
		
		allowed_args : list, optional
		    In case of list, it must be the list of names of some
		    first arguments of the decorated functions that are
		    OK to be given as positional arguments. In case of None value,
		    defaults to list of all arguments not having the
		    default value.
		
		stacklevel : int, default=2
		    The stack level for warnings.warn
	**/
	static public function deprecate_nonkeyword_arguments(version:Dynamic, ?allowed_args:Dynamic, ?stacklevel:Dynamic):Dynamic;
	/**
		A decorator take docstring templates, concatenate them and perform string
		substitution on it.
		
		This decorator will add a variable "_docstring_components" to the wrapped
		callable to keep track the original docstring template for potential usage.
		If it should be consider as a template, it will be saved as a string.
		Otherwise, it will be saved as callable, and later user __doc__ and dedent
		to get docstring.
		
		Parameters
		----------
		*docstrings : str or callable
		    The string / docstring / docstring template to be appended in order
		    after default docstring under callable.
		**params
		    The string which would be used to format docstring template.
	**/
	static public function doc(?docstrings:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fill a single paragraph of text, returning a new string.
		
		Reformat the single paragraph in 'text' to fit in lines of no more
		than 'width' columns, and return a new string containing the entire
		wrapped paragraph.  As with wrap(), tabs are expanded and other
		whitespace characters converted to space.  See TextWrapper class for
		available keyword args to customize wrapping behaviour.
	**/
	static public function fill(text:Dynamic, ?width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Forward fill blank entries in row but only inside the same parent index.
		
		Used for creating headers in Multiindex.
		
		Parameters
		----------
		row : list
		    List of items in a single row.
		control_row : list of bool
		    Helps to determine if particular column is in same parent index as the
		    previous value. Used to stop propagation of empty cells between
		    different indexes.
		
		Returns
		-------
		Returns changed row and control_row
	**/
	static public function fill_mi_header(row:Dynamic, control_row:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Return the default reader/writer for the given extension.
		
		Parameters
		----------
		ext : str
		    The excel file extension for which to get the default engine.
		mode : str {'reader', 'writer'}
		    Whether to get the default engine for reading or writing.
		    Either 'reader' or 'writer'
		
		Returns
		-------
		str
		    The default engine for the extension.
	**/
	static public function get_default_engine(ext:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Get file handle for given path/buffer and mode.
		
		Parameters
		----------
		path_or_buf : str or file handle
		    File path or object.
		mode : str
		    Mode to open path_or_buf with.
		encoding : str or None
		    Encoding to use.
		compression : str or dict, default 'infer'
		    For on-the-fly compression of the output data. If 'infer' and 'path_or_buf'
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). Set to
		    ``None`` for no compression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for faster compression and to create
		    a reproducible gzip archive:
		    ``compression={'method': 'gzip', 'compresslevel': 1, 'mtime': 1}``.
		
		    .. versionchanged:: 1.0.0
		       May now be a dict with key 'method' as compression mode
		       and other keys as compression options if compression
		       mode is 'zip'.
		
		    .. versionchanged:: 1.1.0
		       Passing compression options as keys in dict is now
		       supported for compression modes 'gzip', 'bz2', 'zstd' and 'zip'.
		
		    .. versionchanged:: 1.4.0 Zstandard support.
		
		memory_map : bool, default False
		    See parsers._parser_params for more information.
		is_text : bool, default True
		    Whether the type of the content passed to the file/buffer is string or
		    bytes. This is not the same as `"b" not in mode`. If a string content is
		    passed to a binary file/buffer, a wrapper is inserted.
		errors : str, default 'strict'
		    Specifies how encoding and decoding errors are to be handled.
		    See the errors argument for :func:`open` for a full list
		    of options.
		storage_options: StorageOptions = None
		    Passed to _get_filepath_or_buffer
		
		.. versionchanged:: 1.2.0
		
		Returns the dataclass IOHandles
	**/
	static public function get_handle(path_or_buf:Dynamic, mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?memory_map:Dynamic, ?is_text:Dynamic, ?errors:Dynamic, ?storage_options:Dynamic):Dynamic;
	static public function get_version(module:Dynamic):Dynamic;
	static public function get_writer(engine_name:Dynamic):Dynamic;
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
		Inspect the path or content of an excel file and get its format.
		
		Adopted from xlrd: https://github.com/python-excel/xlrd.
		
		Parameters
		----------
		content_or_path : str or file-like object
		    Path to file or content of file to inspect. May be a URL.
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		Returns
		-------
		str or None
		    Format of file if it can be determined.
		
		Raises
		------
		ValueError
		    If resulting stream is empty.
		BadZipFile
		    If resulting stream does not have an XLS signature and is not a valid zipfile.
	**/
	static public function inspect_excel_format(content_or_path:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Return True if given object is boolean.
		
		Returns
		-------
		bool
	**/
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given object is float.
		
		Returns
		-------
		bool
	**/
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Convert `usecols` into a compatible format for parsing in `parsers.py`.
		
		Parameters
		----------
		usecols : object
		    The use-columns object to potentially convert.
		
		Returns
		-------
		converted : object
		    The compatible format of `usecols`.
	**/
	static public function maybe_convert_usecols(usecols:Dynamic):Dynamic;
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
		Pop the header name for MultiIndex parsing.
		
		Parameters
		----------
		row : list
		    The data row to parse for the header name.
		index_col : int, list
		    The index columns for our data. Assumed to be non-null.
		
		Returns
		-------
		header_name : str
		    The extracted header name.
		trimmed_row : list
		    The original data row with the header name removed.
	**/
	static public function pop_header_name(row:Dynamic, index_col:Dynamic):String;
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
		Attempt to convert a path-like object to a string.
		
		Parameters
		----------
		filepath_or_buffer : object to be converted
		
		Returns
		-------
		str_filepath_or_buffer : maybe a string version of the object
		
		Notes
		-----
		Objects supporting the fspath protocol (python 3.6+) are coerced
		according to its __fspath__ method.
		
		Any other object is passed through unchanged, which includes bytes,
		strings, buffers, or anything else that's not even path-like.
	**/
	static public function stringify_path(filepath_or_buffer:Dynamic, ?convert_file_like:Dynamic):Dynamic;
	static public function validate_header_arg(header:Dynamic):Dynamic;
}