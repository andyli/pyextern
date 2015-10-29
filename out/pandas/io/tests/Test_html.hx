/* This file is generated, do not edit! */
package pandas.io.tests;
@:pythonImport("pandas.io.tests.test_html") extern class Test_html {
	static public var DATA_PATH : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _have_module(module_name:Dynamic):Dynamic;
	static public function _lang_enc(filename:Dynamic):Dynamic;
	static public function _skip_if_no(module_name:Dynamic):Dynamic;
	static public function _skip_if_none_of(module_names:Dynamic):Dynamic;
	static public function assert_framelist_equal(list1:Dynamic, list2:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		Asia/Hong_Kong
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name of the resulting index
		closed : string or None, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Notes
		-----
		2 of start, end, or periods must be specified
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function date_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		converts an absolute native path to a FILE URL.
		
		Parameters
		----------
		path : a path in native format
		
		Returns
		-------
		a valid FILE URL
	**/
	static public function file_path_to_url(path:Dynamic):Dynamic;
	static public function get_elements_from_file(url:Dynamic, ?element:Dynamic):Dynamic;
	static public function get_lxml_elements(url:Dynamic, element:Dynamic):Dynamic;
	/**
		Import a module.
		
		The 'package' argument is required when performing a relative import. It
		specifies the package to use as the anchor point from which to resolve the
		relative import to an absolute import.
	**/
	static public function import_module(name:Dynamic, ?_package:Dynamic):Dynamic;
	static public function is_platform_windows():Dynamic;
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
		Label a test as requiring network connection and, if an error is
		encountered, only raise if it does not find a network connection.
		
		In comparison to ``network``, this assumes an added contract to your test:
		you must assert that, under normal conditions, your test will ONLY fail if
		it does not have network connectivity.
		
		You can call this in 3 ways: as a standard decorator, with keyword
		arguments, or with a positional argument that is the url to check.
		
		Parameters
		----------
		t : callable
		    The test requiring network connectivity.
		url : path
		    The url to test via ``pandas.io.common.urlopen`` to check for connectivity.
		    Defaults to 'http://www.google.com'.
		raise_on_error : bool
		    If True, never catches errors.
		check_before_test : bool
		    If True, checks connectivity before running the test case.
		error_classes : tuple or Exception
		    error classes to ignore. If not in ``error_classes``, raises the error.
		    defaults to IOError. Be careful about changing the error classes here.
		skip_errnos : iterable of int
		    Any exception that has .errno or .reason.erno set to one
		    of these values will be skipped with an appropriate
		    message.
		_skip_on_messages: iterable of string
		    any exception e for which one of the strings is
		    a substring of str(e) will be skipped with an appropriate
		    message. Intended to supress errors where an errno isn't available.
		
		Notes
		-----
		* ``raise_on_error`` supercedes ``check_before_test``
		
		Returns
		-------
		t : callable
		    The decorated test ``t``, with checks for connectivity errors.
		
		Example
		-------
		
		Tests decorated with @network will fail if it's possible to make a network
		connection to another URL (defaults to google.com)::
		
		  >>> from pandas.util.testing import network
		  >>> from pandas.io.common import urlopen
		  >>> @network
		  ... def test_network():
		  ...     with urlopen("rabbit://bonanza.com"):
		  ...         pass
		  Traceback
		     ...
		  URLError: <urlopen error unknown url type: rabit>
		
		  You can specify alternative URLs::
		
		    >>> @network("http://www.yahoo.com")
		    ... def test_something_with_yahoo():
		    ...    raise IOError("Failure Message")
		    >>> test_something_with_yahoo()
		    Traceback (most recent call last):
		        ...
		    IOError: Failure Message
		
		If you set check_before_test, it will check the url first and not run the
		test on failure::
		
		    >>> @network("failing://url.blaher", check_before_test=True)
		    ... def test_something():
		    ...     print("I ran!")
		    ...     raise ValueError("Failure")
		    >>> test_something()
		    Traceback (most recent call last):
		        ...
		    SkipTest
		
		Errors not related to networking will always be raised.
	**/
	static public function network(t:Dynamic, ?url:Dynamic, ?raise_on_error:Dynamic, ?check_before_test:Dynamic, ?error_classes:Dynamic, ?skip_errnos:Dynamic, ?_skip_on_messages:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		rand(d0, d1, ..., dn)
		
		Random values in a given shape.
		
		Create an array of the given shape and propagate it with
		random samples from a uniform distribution
		over ``[0, 1)``.
		
		Parameters
		----------
		d0, d1, ..., dn : int, optional
		    The dimensions of the returned array, should all be positive.
		    If no argument is given a single Python float is returned.
		
		Returns
		-------
		out : ndarray, shape ``(d0, d1, ..., dn)``
		    Random values.
		
		See Also
		--------
		random
		
		Notes
		-----
		This is a convenience function. If you want an interface that
		takes a shape-tuple as the first argument, refer to
		np.random.random_sample .
		
		Examples
		--------
		>>> np.random.rand(3,2)
		array([[ 0.14022471,  0.96360618],  #random
		       [ 0.37601032,  0.25528411],  #random
		       [ 0.49313049,  0.94909878]]) #random
	**/
	static public function rand(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		thousands : str, optional
		    Separator to use to parse thousands. Defaults to ``','``.
		
		encoding : str or None, optional
		    The encoding used to decode the web page. Defaults to ``None``.``None``
		    preserves the previous encoding behavior, which depends on the
		    underlying parser library (e.g., the parser library will try to use
		    the encoding provided by the document).
		
		Returns
		-------
		dfs : list of DataFrames
		
		Notes
		-----
		Before using this function you should read the :ref:`gotchas about the
		HTML parsing libraries <html-gotchas>`.
		
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
	static public function read_html(io:Dynamic, ?match:Dynamic, ?flavor:Dynamic, ?header:Dynamic, ?index_col:Dynamic, ?skiprows:Dynamic, ?attrs:Dynamic, ?parse_dates:Dynamic, ?tupleize_cols:Dynamic, ?thousands:Dynamic, ?encoding:Dynamic):Dynamic;
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
	static public var string_types : Dynamic;
	static public function test_bs4_finds_tables():Dynamic;
	static public function test_bs4_version_fails():Dynamic;
	static public function test_invalid_flavor():Dynamic;
	static public function test_lxml_finds_tables():Dynamic;
	static public function test_lxml_finds_tbody():Dynamic;
	static public function test_same_ordering():Dynamic;
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
}