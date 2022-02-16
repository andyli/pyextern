/* This file is generated, do not edit! */
package pandas.io.html;
@:pythonImport("pandas.io.html") extern class Html_Module {
	static public function FilePath(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Pattern(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var _HAS_BS4 : Dynamic;
	static public var _HAS_HTML5LIB : Dynamic;
	static public var _HAS_LXML : Dynamic;
	static public var _IMPORTS : Dynamic;
	static public var _RE_WHITESPACE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Build an xpath expression to simulate bs4's ability to pass in kwargs to
		search for attributes when using the lxml parser.
		
		Parameters
		----------
		attrs : dict
		    A dict of HTML attributes. These are NOT checked for validity.
		
		Returns
		-------
		expr : unicode
		    An XPath expression that checks for the given HTML attributes.
	**/
	static public function _build_xpath_expr(attrs:Dynamic):Dynamic;
	static public function _data_to_frame(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _expand_elements(body:Dynamic):Dynamic;
	/**
		Get an iterator given an integer, slice or container.
		
		Parameters
		----------
		skiprows : int, slice, container
		    The iterator to use to skip rows; can also be a slice.
		
		Raises
		------
		TypeError
		    * If `skiprows` is not a slice, integer, or Container
		
		Returns
		-------
		it : iterable
		    A proper iterator to use to skip rows of a DataFrame.
	**/
	static public function _get_skiprows(skiprows:Dynamic):Dynamic;
	static public function _importers():Dynamic;
	static public function _parse(flavor:Dynamic, io:Dynamic, match:Dynamic, attrs:Dynamic, encoding:Dynamic, displayed_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Choose the parser based on the input flavor.
		
		Parameters
		----------
		flavor : str
		    The type of parser to use. This must be a valid backend.
		
		Returns
		-------
		cls : _HtmlFrameParser subclass
		    The parser class based on the requested input flavor.
		
		Raises
		------
		ValueError
		    * If `flavor` is not a valid backend.
		ImportError
		    * If you do not have the requested `flavor`
	**/
	static public function _parser_dispatch(flavor:Dynamic):Dynamic;
	static public function _print_as_set(s:Dynamic):Dynamic;
	static public var _re_namespace : Dynamic;
	/**
		Try to read from a url, file or string.
		
		Parameters
		----------
		obj : str, unicode, path object, or file-like object
		
		Returns
		-------
		raw_text : str
	**/
	static public function _read(obj:Dynamic, encoding:Dynamic):Dynamic;
	/**
		Replace extra whitespace inside of a string with a single space.
		
		Parameters
		----------
		s : str or unicode
		    The string from which to remove extra whitespace.
		regex : re.Pattern
		    The regular expression to use to remove extra whitespace.
		
		Returns
		-------
		subd : str or unicode
		    `s` with all extra whitespace replaced with a single space.
	**/
	static public function _remove_whitespace(s:Dynamic, ?regex:Dynamic):Dynamic;
	static public var _valid_parsers : Dynamic;
	static public function _validate_flavor(flavor:Dynamic):Dynamic;
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
		Helper to pass an explicit dtype when instantiating an empty Series.
		
		This silences a DeprecationWarning described in GitHub-17261.
		
		Parameters
		----------
		data : Mirrored from Series.__init__
		index : Mirrored from Series.__init__
		dtype : Mirrored from Series.__init__
		name : Mirrored from Series.__init__
		copy : Mirrored from Series.__init__
		fastpath : Mirrored from Series.__init__
		dtype_if_empty : str, numpy.dtype, or ExtensionDtype
		    This dtype will be passed explicitly if an empty Series will
		    be instantiated.
		
		Returns
		-------
		Series
	**/
	static public function create_series_with_explicit_dtype(?data:Dynamic, ?index:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?copy:Dynamic, ?fastpath:Dynamic, ?dtype_if_empty:Dynamic):Dynamic;
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
		Test whether file exists.
	**/
	static public function file_exists(filepath_or_buffer:Dynamic):Dynamic;
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
		Check to see if a URL has a valid protocol.
		
		Parameters
		----------
		url : str or unicode
		
		Returns
		-------
		isurl : bool
		    If `url` has a valid protocol return True otherwise False.
	**/
	static public function is_url(url:Dynamic):Bool;
	/**
		This function is the sanctioned way of converting objects
		to a string representation and properly handles nested sequences.
		
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
		max_seq_items : int or None, default None
		    Pass through to other pretty printers to limit sequence printing
		
		Returns
		-------
		str
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
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
	/**
		Lazy-import wrapper for stdlib urlopen, as that imports a big chunk of
		the stdlib.
	**/
	static public function urlopen(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function validate_header_arg(header:Dynamic):Dynamic;
}