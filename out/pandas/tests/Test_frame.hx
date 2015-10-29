/* This file is generated, do not edit! */
package pandas.tests;
@:pythonImport("pandas.tests.test_frame") extern class Test_frame {
	static public var ENGINES : Dynamic;
	static public var JOIN_TYPES : Dynamic;
	static public var MIXED_FLOAT_DTYPES : Dynamic;
	static public var MIXED_INT_DTYPES : Dynamic;
	static public var PARSERS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_mixed_float(df:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _check_mixed_int(df:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var _frame : Dynamic;
	static public var _frame2 : Dynamic;
	static public var _intframe : Dynamic;
	static public var _mixed_frame : Dynamic;
	static public var _seriesd : Dynamic;
	static public var _tsd : Dynamic;
	static public var _tsframe : Dynamic;
	/**
		assertRaises that is usable as context manager or in a with statement
		
		Exceptions that don't match the given Exception type fall through::
		
		>>> with assertRaises(ValueError):
		...     raise TypeError("banana")
		...
		Traceback (most recent call last):
		    ...
		TypeError: banana
		
		If it raises the given Exception type, the test passes
		>>> with assertRaises(KeyError):
		...     dct = dict()
		...     dct["apple"]
		
		If the expected error doesn't occur, it raises an error.
		>>> with assertRaises(KeyError):
		...     dct = {'apple':True}
		...     dct["apple"]
		Traceback (most recent call last):
		    ...
		AssertionError: KeyError not raised.
		
		In addition to using it as a contextmanager, you can also use it as a
		function, just like the normal assertRaises
		
		>>> assertRaises(TypeError, ",".join, [1, 3, 5]);
	**/
	static public function assertRaises(_exception:Dynamic, ?_callable:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Port of assertRaisesRegexp from unittest in Python 2.7 - used in with statement.
		
		Explanation from standard library:
		    Like assertRaises() but also tests that regexp matches on the string
		    representation of the raised exception. regexp may be a regular expression
		    object or a string containing a regular expression suitable for use by
		    re.search().
		
		You can pass either a regular expression or a compiled regular expression object.
		>>> assertRaisesRegexp(ValueError, 'invalid literal for.*XYZ',
		...                                int, 'XYZ');
		>>> import re
		>>> assertRaisesRegexp(ValueError, re.compile('literal'), int, 'XYZ');
		
		If an exception of a different type is raised, it bubbles up.
		
		>>> assertRaisesRegexp(TypeError, 'literal', int, 'XYZ');
		Traceback (most recent call last):
		    ...
		ValueError: invalid literal for int() with base 10: 'XYZ'
		>>> dct = dict()
		>>> assertRaisesRegexp(KeyError, 'pear', dct.__getitem__, 'apple');
		Traceback (most recent call last):
		    ...
		AssertionError: "pear" does not match "'apple'"
		
		You can also use this in a with statement.
		>>> with assertRaisesRegexp(TypeError, 'unsupported operand type\(s\)'):
		...     1 + {}
		>>> with assertRaisesRegexp(TypeError, 'banana'):
		...     'apple'[0] = 'b'
		Traceback (most recent call last):
		    ...
		AssertionError: "banana" does not match "'str' object does not support item assignment"
	**/
	static public function assertRaisesRegexp(_exception:Dynamic, _regexp:Dynamic, ?_callable:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Check that left and right objects are almost equal.
		
		Parameters
		----------
		a : object
		b : object
		check_less_precise : bool, default False
		    Specify comparison precision.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		obj : str, default None
		    Specify object name being compared, internally used to show appropriate
		    assertion message
		lobj : str, default None
		    Specify left object name being compared, internally used to show
		    appropriate assertion message
		robj : str, default None
		    Specify right object name being compared, internally used to show
		    appropriate assertion message
	**/
	static public function assert_almost_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check that left and right DataFrame are equal.
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		check_dtype : bool, default True
		    Whether to check the DataFrame dtype is identical.
		check_index_type : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_column_type : bool, default False
		    Whether to check the columns class, dtype and inferred_type are identical.
		check_frame_type : bool, default False
		    Whether to check the DataFrame class is identical.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_names : bool, default True
		    Whether to check the Index names attribute.
		by_blocks : bool, default False
		    Specify how to compare internal data. If False, compare by columns.
		    If True, compare by blocks.
		check_exact : bool, default False
		    Whether to compare number exactly.
		check_dateteimelike_compat : bool, default False
		    Compare datetime-like which is comparable ignoring dtype.
		obj : str, default 'DataFrame'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_frame_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_column_type:Dynamic, ?check_frame_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?by_blocks:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Checks that 'np_array' is equivalent to 'assert_equal'.
		
		This is similar to ``numpy.testing.assert_array_equal``, but can
		check equality including ``np.nan``. Two numpy arrays are regarded as
		equivalent if the arrays have equal non-NaN elements,
		and `np.nan` in corresponding locations.
	**/
	static public function assert_numpy_array_equal(left:Dynamic, right:Dynamic, ?strict_nan:Dynamic, ?err_msg:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Check that left and right Series are equal.
		
		Parameters
		----------
		left : Series
		right : Series
		check_dtype : bool, default True
		    Whether to check the Series dtype is identical.
		check_index_type : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_series_type : bool, default False
		    Whether to check the Series class is identical.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_exact : bool, default False
		    Whether to compare number exactly.
		check_names : bool, default True
		    Whether to check the Series and Index names attribute.
		check_dateteimelike_compat : bool, default False
		    Compare datetime-like which is comparable ignoring dtype.
		obj : str, default 'Series'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_series_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_series_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
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
		Deep copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function deepcopy(x:Dynamic, ?memo:Dynamic, ?_nil:Dynamic):Dynamic;
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
	static public var inf : Dynamic;
	/**
		am I little endian 
	**/
	static public function is_little_endian():Dynamic;
	static public function is_platform_windows():Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	static public function lmap(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lzip(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	/**
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		
		Parameters
		----------
		start : starting value, period-like, optional
		end : ending value, period-like, optional
		periods : int, default None
		    Number of periods in the index
		freq : str/DateOffset, default 'D'
		    Frequency alias
		name : str, default None
		    Name for the resulting PeriodIndex
		
		Returns
		-------
		prng : PeriodIndex
	**/
	static public function period_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		randn(d0, d1, ..., dn)
		
		Return a sample (or samples) from the "standard normal" distribution.
		
		If positive, int_like or int-convertible arguments are provided,
		`randn` generates an array of shape ``(d0, d1, ..., dn)``, filled
		with random floats sampled from a univariate "normal" (Gaussian)
		distribution of mean 0 and variance 1 (if any of the :math:`d_i` are
		floats, they are first converted to integers by truncation). A single
		float randomly sampled from the distribution is returned if no
		argument is provided.
		
		This is a convenience function.  If you want an interface that takes a
		tuple as the first argument, use `numpy.random.standard_normal` instead.
		
		Parameters
		----------
		d0, d1, ..., dn : int, optional
		    The dimensions of the returned array, should be all positive.
		    If no argument is given a single Python float is returned.
		
		Returns
		-------
		Z : ndarray or float
		    A ``(d0, d1, ..., dn)``-shaped array of floating-point samples from
		    the standard normal distribution, or a single such float if
		    no parameters were supplied.
		
		See Also
		--------
		random.standard_normal : Similar, but takes a tuple as its argument.
		
		Notes
		-----
		For random samples from :math:`N(\mu, \sigma^2)`, use:
		
		``sigma * np.random.randn(...) + mu``
		
		Examples
		--------
		>>> np.random.randn()
		2.1923875335537315 #random
		
		Two-by-four array of samples from N(3, 6.25):
		
		>>> 2.5 * np.random.randn(2, 4) + 3
		array([[-4.49401501,  4.00950034, -1.81814867,  7.29718677],  #random
		       [ 0.39924804,  4.68456316,  4.99394529,  4.84057254]]) #random
	**/
	static public function randn(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function skip_if_no_ne(?engine:Dynamic):Dynamic;
	static public function skip_if_no_pandas_parser(parser:Dynamic):Dynamic;
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
	/**
		Return a fixed frequency timedelta index, with day as the default
		frequency
		
		Parameters
		----------
		start : string or timedelta-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
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
		rng : TimedeltaIndex
	**/
	static public function timedelta_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
}