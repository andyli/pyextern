/* This file is generated, do not edit! */
package pandas.io.xml;
@:pythonImport("pandas.io.xml") extern class Xml_Module {
	static public function CompressionOptions(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function FilePath(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function XMLParsers(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert parsed data to Data Frame.
		
		This method will bind xml dictionary data of keys and values
		into named columns of Data Frame using the built-in TextParser
		class that build Data Frame and infers specific dtypes.
	**/
	static public function _data_to_frame(data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call internal parsers.
		
		This method will conditionally call internal parsers:
		LxmlFrameParser and/or EtreeParser.
		
		Raises
		------
		ImportError
		    * If lxml is not installed if selected as parser.
		
		ValueError
		    * If parser is not lxml or etree.
	**/
	static public function _parse(path_or_buffer:Dynamic, xpath:Dynamic, namespaces:Dynamic, elems_only:Dynamic, attrs_only:Dynamic, names:Dynamic, encoding:Dynamic, parser:Dynamic, stylesheet:Dynamic, compression:Dynamic, storage_options:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _shared_docs : Dynamic;
	static public var annotations : Dynamic;
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
		Test whether file exists.
	**/
	static public function file_exists(filepath_or_buffer:Dynamic):Dynamic;
	/**
		Extract raw XML data.
		
		The method accepts three input types:
		    1. filepath (string-like)
		    2. file-like object (e.g. open file object, StringIO)
		    3. XML string or bytes
		
		This method turns (1) into (2) to simplify the rest of the processing.
		It returns input types (2) and (3) unchanged.
	**/
	static public function get_data_from_filepath(filepath_or_buffer:Dynamic, encoding:Dynamic, compression:Dynamic, storage_options:Dynamic):Dynamic;
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
		Returns true if the given URL looks like
		something fsspec can handle
	**/
	static public function is_fsspec_url(url:Dynamic):Dynamic;
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
		Convert extracted raw data.
		
		This method will return underlying data of extracted XML content.
		The data either has a `read` attribute (e.g. a file object or a
		StringIO/BytesIO) or is a string or bytes that is an XML document.
	**/
	static public function preprocess_data(data:Dynamic):Dynamic;
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
}