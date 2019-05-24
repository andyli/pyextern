/* This file is generated, do not edit! */
package pandas.io.excel;
@:pythonImport("pandas.io.excel") extern class Excel_Module {
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
		    values. The options are None for the ordinary converter,
		    'high' for the high-precision converter, and 'round_trip' for the
		    round-trip converter.
	**/
	static public function TextParser(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _NA_VALUES : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert Excel column name like 'AB' to 0-based column index.
		
		Parameters
		----------
		x : str
		    The Excel column name to convert to a 0-based column index.
		
		Returns
		-------
		num : int
		    The column index corresponding to the name.
		
		Raises
		------
		ValueError
		    Part of the Excel column name was invalid.
	**/
	static public function _excel2num(x:Dynamic):Int;
	/**
		Forward fills blank entries in row, but only inside the same parent index
		
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
		----------
		Returns changed row and control_row
	**/
	static public function _fill_mi_header(row:Dynamic, control_row:Dynamic):Dynamic;
	static public function _get_default_writer(ext:Dynamic):Dynamic;
	/**
		Check to see if a URL has a valid protocol.
		
		Parameters
		----------
		url : str or unicode
		
		Returns
		-------
		isurl : bool
		    If `url` has a valid protocol return True otherwise False.
	**/
	static public function _is_url(url:Dynamic):Bool;
	/**
		Convert elements in a row to string from Unicode.
		
		This is purely a Python 2.x patch and is performed ONLY when all
		elements of the row are string-like.
		
		Parameters
		----------
		row : array-like
		    The row of data to convert.
		
		Returns
		-------
		converted : array-like
	**/
	static public function _maybe_convert_to_string(row:Dynamic):Dynamic;
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
	static public function _maybe_convert_usecols(usecols:Dynamic):Dynamic;
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
	static public function _pop_header_name(row:Dynamic, index_col:Dynamic):String;
	/**
		Convert comma separated list of column names and ranges to indices.
		
		Parameters
		----------
		areas : str
		    A string containing a sequence of column ranges (or areas).
		
		Returns
		-------
		cols : list
		    A list of 0-based column indices.
		
		Examples
		--------
		>>> _range2cols('A:E')
		[0, 1, 2, 3, 4]
		>>> _range2cols('A,C,Z:AB')
		[0, 2, 25, 26, 27]
	**/
	static public function _range2cols(areas:Dynamic):Array<Dynamic>;
	static public var _read_excel_doc : Dynamic;
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
		
		For backwards compatibility with older pythons, pathlib.Path and
		py.path objects are specially coerced.
		
		Any other object is passed through unchanged, which includes bytes,
		strings, buffers, or anything else that's not even path-like.
	**/
	static public function _stringify_path(filepath_or_buffer:Dynamic):Dynamic;
	static public function _trim_excel_header(row:Dynamic):Dynamic;
	/**
		Open the URL url, which can be either a string or a Request object.
		
		*data* must be an object specifying additional data to be sent to
		the server, or None if no such data is needed.  See Request for
		details.
		
		urllib.request module uses HTTP/1.1 and includes a "Connection:close"
		header in its HTTP requests.
		
		The optional *timeout* parameter specifies a timeout in seconds for
		blocking operations like the connection attempt (if not specified, the
		global default timeout setting will be used). This only works for HTTP,
		HTTPS and FTP connections.
		
		If *context* is specified, it must be a ssl.SSLContext instance describing
		the various SSL options. See HTTPSConnection for more details.
		
		The optional *cafile* and *capath* parameters specify a set of trusted CA
		certificates for HTTPS requests. cafile should point to a single file
		containing a bundle of CA certificates, whereas capath should point to a
		directory of hashed certificate files. More information can be found in
		ssl.SSLContext.load_verify_locations().
		
		The *cadefault* parameter is ignored.
		
		This function always returns an object which can work as a context
		manager and has methods such as
		
		* geturl() - return the URL of the resource retrieved, commonly used to
		  determine if a redirect was followed
		
		* info() - return the meta-information of the page, such as headers, in the
		  form of an email.message_from_string() instance (see Quick Reference to
		  HTTP Headers)
		
		* getcode() - return the HTTP status code of the response.  Raises URLError
		  on errors.
		
		For HTTP and HTTPS URLs, this function returns a http.client.HTTPResponse
		object slightly modified. In addition to the three new methods above, the
		msg attribute contains the same information as the reason attribute ---
		the reason phrase returned by the server --- instead of the response
		headers as it is specified in the documentation for HTTPResponse.
		
		For FTP, file, and data URLs and requests explicitly handled by legacy
		URLopener and FancyURLopener classes, this function returns a
		urllib.response.addinfourl object.
		
		Note that None may be returned if no handler handles the request (though
		the default installed global OpenerDirector uses UnknownHandler to ensure
		this never happens).
		
		In addition, if proxy settings are detected (for example, when a *_proxy
		environment variable like http_proxy is set), ProxyHandler is default
		installed and makes sure the requests are handled through the proxy.
	**/
	static public function _urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	static public function _validate_freeze_panes(freeze_panes:Dynamic):Dynamic;
	static public function _validate_header_arg(header:Dynamic):Dynamic;
	static public var _writer_extensions : Dynamic;
	static public var _writers : Dynamic;
	/**
		Class decorator for creating a class with a metaclass.
	**/
	static public function add_metaclass(metaclass:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function.
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str or None
		    Name of preferred argument in function. Use None to raise warning that
		    ``old_arg_name`` keyword is deprecated.
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
		
		To raise a warning that a keyword will be removed entirely in the future
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name=None)
		... def f(cols='', another_param=''):
		...     print(cols)
		...
		>>> f(cols='should raise warning')
		FutureWarning: the 'cols' keyword is deprecated and will be removed in a
		future version please takes steps to stop use of 'cols'
		should raise warning
		>>> f(another_param='should not raise warning')
		should not raise warning
		
		>>> f(cols='should raise warning', another_param='')
		FutureWarning: the 'cols' keyword is deprecated and will be removed in a
		future version please takes steps to stop use of 'cols'
		should raise warning
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
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
		If the filepath_or_buffer is a url, translate and return the buffer.
		Otherwise passthrough.
		
		Parameters
		----------
		filepath_or_buffer : a url, filepath (str, py.path.local or pathlib.Path),
		                     or buffer
		encoding : the encoding to use to decode py3 bytes, default is 'utf-8'
		mode : str, optional
		
		Returns
		-------
		tuple of ({a filepath_ or buffer or S3File instance},
		          encoding, str,
		          compression, str,
		          should_close, bool)
	**/
	static public function get_filepath_or_buffer(filepath_or_buffer:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?mode:Dynamic):Dynamic;
	static public function get_writer(engine_name:Dynamic):Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check
		allow_sets : boolean, default True
		    If this parameter is False, sets will not be considered list-like
		
		    .. versionadded:: 0.24.0
		
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
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2)))
		False
	**/
	static public function is_list_like(obj:Dynamic, ?allow_sets:Dynamic):Bool;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a unicode representation.
		
		properly handles nested sequences containing unicode strings
		(unicode(object) does not)
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : False, int, default None
		    Pass thru to other pretty printers to limit sequence printing
		
		Returns
		-------
		result - unicode object on py2, str on py3. Always Unicode.
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	/**
		Read an Excel file into a pandas DataFrame.
		
		Support both `xls` and `xlsx` file extensions from a local filesystem or URL.
		Support an option to read a single sheet or a list of sheets.
		
		Parameters
		----------
		io : str, file descriptor, pathlib.Path, ExcelFile or xlrd.Book
		    The string could be a URL. Valid URL schemes include http, ftp, s3,
		    gcs, and file. For file URLs, a host is expected. For instance, a local
		    file could be /path/to/workbook.xlsx.
		sheet_name : str, int, list, or None, default 0
		    Strings are used for sheet names. Integers are used in zero-indexed
		    sheet positions. Lists of strings/integers are used to request
		    multiple sheets. Specify None to get all sheets.
		
		    Available cases:
		
		    * Defaults to ``0``: 1st sheet as a `DataFrame`
		    * ``1``: 2nd sheet as a `DataFrame`
		    * ``"Sheet1"``: Load sheet with name "Sheet1"
		    * ``[0, 1, "Sheet5"]``: Load first, second and sheet named "Sheet5"
		      as a dict of `DataFrame`
		    * None: All sheets.
		
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
		parse_cols : int or list, default None
		    Alias of `usecols`.
		
		    .. deprecated:: 0.21.0
		       Use `usecols` instead.
		
		usecols : int, str, list-like, or callable default None
		    Return a subset of the columns.
		    * If None, then parse all columns.
		    * If int, then indicates last column to be parsed.
		
		    .. deprecated:: 0.24.0
		       Pass in a list of int instead from 0 to `usecols` inclusive.
		
		    * If str, then indicates comma separated list of Excel column letters
		      and column ranges (e.g. "A:E" or "A,C,E:F"). Ranges are inclusive of
		      both sides.
		    * If list of int, then indicates list of column numbers to be parsed.
		    * If list of string, then indicates list of column names to be parsed.
		
		    .. versionadded:: 0.24.0
		
		    * If callable, then evaluate each column name against it and parse the
		      column if the callable returns ``True``.
		
		    .. versionadded:: 0.24.0
		
		squeeze : bool, default False
		    If the parsed data only contains one column then return a Series.
		dtype : Type name or dict of column -> type, default None
		    Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32}
		    Use `object` to preserve data as stored in Excel and not interpret dtype.
		    If converters are specified, they will be applied INSTEAD
		    of dtype conversion.
		
		    .. versionadded:: 0.20.0
		
		engine : str, default None
		    If io is not a buffer or path, this must be set to identify io.
		    Acceptable values are None or xlrd.
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the Excel cell content, and return the transformed
		    content.
		true_values : list, default None
		    Values to consider as True.
		
		    .. versionadded:: 0.19.0
		
		false_values : list, default None
		    Values to consider as False.
		
		    .. versionadded:: 0.19.0
		
		skiprows : list-like
		    Rows to skip at the beginning (0-indexed).
		nrows : int, default None
		    Number of rows to parse.
		
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
		verbose : bool, default False
		    Indicate number of NA values placed in non-numeric columns.
		parse_dates : bool, list-like, or dict, default False
		    The behavior is as follows:
		
		    * bool. If True -> try parsing the index.
		    * list of int or names. e.g. If [1, 2, 3] -> try parsing columns 1, 2, 3
		      each as a separate date column.
		    * list of lists. e.g.  If [[1, 3]] -> combine columns 1 and 3 and parse as
		      a single date column.
		    * dict, e.g. {{'foo' : [1, 3]}} -> parse columns 1, 3 as date and call
		      result 'foo'
		
		    If a column or index contains an unparseable date, the entire column or
		    index will be returned unaltered as an object data type. For non-standard
		    datetime parsing, use ``pd.to_datetime`` after ``pd.read_csv``
		
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
		comment : str, default None
		    Comments out remainder of line. Pass a character or characters to this
		    argument to indicate comments in the input file. Any data between the
		    comment string and the end of the current line is ignored.
		skip_footer : int, default 0
		    Alias of `skipfooter`.
		
		    .. deprecated:: 0.23.0
		       Use `skipfooter` instead.
		skipfooter : int, default 0
		    Rows at the end to skip (0-indexed).
		convert_float : bool, default True
		    Convert integral floats to int (i.e., 1.0 --> 1). If False, all numeric
		    data will be read in as floats: Excel stores all numbers as floats
		    internally.
		mangle_dupe_cols : bool, default True
		    Duplicate columns will be specified as 'X', 'X.1', ...'X.N', rather than
		    'X'...'X'. Passing in False will cause data to be overwritten if there
		    are duplicate names in the columns.
		**kwds : optional
		        Optional keyword arguments can be passed to ``TextFileReader``.
		
		Returns
		-------
		DataFrame or dict of DataFrames
		    DataFrame from the passed in Excel file. See notes in sheet_name
		    argument for more information on when a dict of DataFrames is returned.
		
		See Also
		--------
		to_excel : Write DataFrame to an Excel file.
		to_csv : Write DataFrame to a comma-separated values (csv) file.
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
	static public function read_excel(io:Dynamic, ?sheet_name:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?parse_cols:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?dtype:Dynamic, ?engine:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skiprows:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?keep_default_na:Dynamic, ?verbose:Dynamic, ?parse_dates:Dynamic, ?date_parser:Dynamic, ?thousands:Dynamic, ?comment:Dynamic, ?skip_footer:Dynamic, ?skipfooter:Dynamic, ?convert_float:Dynamic, ?mangle_dupe_cols:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adds engine to the excel writer registry. You must use this method to
		integrate with ``to_excel``. Also adds config options for any new
		``supported_extensions`` defined on the writer.
	**/
	static public function register_writer(klass:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	static public function u(s:Dynamic):Dynamic;
}