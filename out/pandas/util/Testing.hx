/* This file is generated, do not edit! */
package pandas.util;
@:pythonImport("pandas.util.testing") extern class Testing {
	static public var K : Dynamic;
	static public var N : Dynamic;
	static public var RANDS_CHARS : Dynamic;
	static public var RANDU_CHARS : Dynamic;
	static public var _RAISE_NETWORK_ERROR_DEFAULT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check to see if we can set a locale without throwing an exception.
		
		Parameters
		----------
		lc : str
		    The locale to attempt to set.
		
		Returns
		-------
		isvalid : bool
		    Whether the passed locale can be set
	**/
	static public function _can_set_locale(lc:Dynamic):Dynamic;
	static public function _create_missing_idx(nrows:Dynamic, ncols:Dynamic, density:Dynamic, ?random_state:Dynamic):Dynamic;
	static public function _default_locale_getter():Dynamic;
	/**
		skip if we have bottleneck installed
		and its >= 1.0
		as we don't match the nansum/nanprod behavior for all-nan
		ops, see GH9422
	**/
	static public function _incompat_bottleneck_version(method:Dynamic):Dynamic;
	static public var _network_errno_vals : Dynamic;
	static public var _network_error_classes : Dynamic;
	static public var _network_error_messages : Dynamic;
	static public function _panel_frame_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_column_type:Dynamic, ?check_frame_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?by_blocks:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
	static public function _skip_if_32bit():Dynamic;
	static public function _skip_if_mpl_1_5():Dynamic;
	static public function _skip_if_no_cday():Dynamic;
	static public function _skip_if_no_dateutil():Dynamic;
	static public function _skip_if_no_pytz():Dynamic;
	static public function _skip_if_no_scipy():Dynamic;
	static public function _skip_if_python26():Dynamic;
	static public function _skip_if_windows():Dynamic;
	static public function _skip_if_windows_python_3():Dynamic;
	/**
		Return a list of normalized locales that do not throw an ``Exception``
		when set.
		
		Parameters
		----------
		locales : str
		    A string where each locale is separated by a newline.
		normalize : bool
		    Whether to call ``locale.normalize`` on each locale.
		
		Returns
		-------
		valid_locales : list
		    A list of valid locales.
	**/
	static public function _valid_locales(locales:Dynamic, normalize:Dynamic):Dynamic;
	static public function add_nans(panel:Dynamic):Dynamic;
	static public function add_nans_panel4d(panel4d:Dynamic):Dynamic;
	/**
		Generator which can be iterated over to get instances of all the various
		index classes.
		
		Parameters
		----------
		k: length of each of the index instances
	**/
	static public function all_index_generator(?k:Dynamic):Dynamic;
	/**
		Generator which can be iterated over to get instances of all the classes
		which represent time-seires.
		
		Parameters
		----------
		k: length of each of the index instances
	**/
	static public function all_timeseries_index_generator(?k:Dynamic):Dynamic;
	/**
		True if two arrays, left and right, have equal non-NaN elements, and NaNs in
		corresponding locations.  False otherwise. It is assumed that left and right
		are NumPy arrays of the same dtype. The behavior of this function
		(particularly with respect to NaNs) is not defined if the dtypes are
		different.
		
		Parameters
		----------
		left, right : ndarrays
		strict_nan : bool, default False
		    If True, consider NaN and None to be different.
		
		Returns
		-------
		b : bool
		    Returns True if the arrays are equivalent.
		
		Examples
		--------
		>>> array_equivalent(
		...     np.array([1, 2, np.nan]),
		...     np.array([1, 2, np.nan]))
		True
		>>> array_equivalent(
		...     np.array([1, np.nan, 2]),
		...     np.array([1, 2, np.nan]))
		False
	**/
	static public function array_equivalent(left:Dynamic, right:Dynamic, ?strict_nan:Dynamic):Dynamic;
	/**
		Checks that 'first' is in 'second'
	**/
	static public function assertIn(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'first' is 'second'
	**/
	static public function assertIs(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Test that obj is an instance of cls
		(which can be a class or a tuple of classes,
		as supported by isinstance()).
	**/
	static public function assertIsInstance(obj:Dynamic, cls:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'expr' is None
	**/
	static public function assertIsNone(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'first' is not 'second'
	**/
	static public function assertIsNot(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'expr' is not None
	**/
	static public function assertIsNotNone(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'first' is not in 'second'
	**/
	static public function assertNotIn(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Test that obj is not an instance of cls
		(which can be a class or a tuple of classes,
		as supported by isinstance()).
	**/
	static public function assertNotIsInstance(obj:Dynamic, cls:Dynamic, ?msg:Dynamic):Dynamic;
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
		checks attributes are equal. Both objects must have attribute.
		
		Parameters
		----------
		attr : str
		    Attribute name being compared.
		left : object
		right : object
		obj : str, default 'Attributes'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_attr_equal(attr:Dynamic, left:Dynamic, right:Dynamic, ?obj:Dynamic):Dynamic;
	static public function assert_categorical_equal(res:Dynamic, exp:Dynamic):Dynamic;
	static public function assert_contains_all(iterable:Dynamic, dic:Dynamic):Dynamic;
	/**
		iter1, iter2: iterables that produce elements comparable with assert_almost_equal
		
		Checks that the elements are equal, but not the same object. (Does not
		check that items in sequences are also not the same object)
	**/
	static public function assert_copy(iter1:Dynamic, iter2:Dynamic, eql_kwargs:Dynamic):Dynamic;
	static public function assert_dict_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asserts that a equals b, like nose's assert_equal, but allows custom message to start.
		Passes a and b to format string as well. So you can use '{0}' and '{1}' to display a and b.
		
		Examples
		--------
		>>> assert_equal(2, 2, "apples")
		>>> assert_equal(5.2, 1.2, "{0} was really a dead parrot")
		Traceback (most recent call last):
		    ...
		AssertionError: 5.2 was really a dead parrot: 5.2 != 1.2
	**/
	static public function assert_equal(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
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
		Check that left and right Index are equal.
		
		Parameters
		----------
		left : Index
		right : Index
		exact : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_names : bool, default True
		    Whether to check the names attribute.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_exact : bool, default True
		    Whether to compare number exactly.
		obj : str, default 'Index'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_index_equal(left:Dynamic, right:Dynamic, ?exact:Dynamic, ?check_names:Dynamic, ?check_less_precise:Dynamic, ?check_exact:Dynamic, ?obj:Dynamic):Dynamic;
	static public function assert_isinstance(obj:Dynamic, class_type_or_tuple:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'np_array' is equivalent to 'assert_equal'.
		
		This is similar to ``numpy.testing.assert_array_equal``, but can
		check equality including ``np.nan``. Two numpy arrays are regarded as
		equivalent if the arrays have equal non-NaN elements,
		and `np.nan` in corresponding locations.
	**/
	static public function assert_numpy_array_equal(left:Dynamic, right:Dynamic, ?strict_nan:Dynamic, ?err_msg:Dynamic, ?obj:Dynamic):Dynamic;
	static public function assert_panel4d_equal(left:Dynamic, right:Dynamic, ?check_panel_type:Dynamic, ?check_less_precise:Dynamic, ?assert_func:Dynamic, ?check_names:Dynamic):Dynamic;
	static public function assert_panel_equal(left:Dynamic, right:Dynamic, ?check_panel_type:Dynamic, ?check_less_precise:Dynamic, ?assert_func:Dynamic, ?check_names:Dynamic):Dynamic;
	static public function assert_panelnd_equal(left:Dynamic, right:Dynamic, ?check_panel_type:Dynamic, ?check_less_precise:Dynamic, ?assert_func:Dynamic, ?check_names:Dynamic):Dynamic;
	/**
		Context manager for running code that expects to raise (or not raise)
		warnings.  Checks that code raises the expected warning and only the
		expected warning. Pass ``False`` or ``None`` to check that it does *not*
		raise a warning. Defaults to ``exception.Warning``, baseclass of all
		Warnings. (basically a wrapper around ``warnings.catch_warnings``).
		
		>>> import warnings
		>>> with assert_produces_warning():
		...     warnings.warn(UserWarning())
		...
		>>> with assert_produces_warning(False):
		...     warnings.warn(RuntimeWarning())
		...
		Traceback (most recent call last):
		    ...
		AssertionError: Caused unexpected warning(s): ['RuntimeWarning'].
		>>> with assert_produces_warning(UserWarning):
		...     warnings.warn(RuntimeWarning())
		Traceback (most recent call last):
		    ...
		AssertionError: Did not see expected warning of class 'UserWarning'.
		
		..warn:: This is *not* thread-safe.
	**/
	static public function assert_produces_warning(?expected_warning:Dynamic, ?filter_level:Dynamic, ?clear:Dynamic, ?check_stacklevel:Dynamic):Dynamic;
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
		Return a fixed frequency datetime index, with business day as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'B' (business daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		    Asia/Beijing
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name for the resulting index
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
	static public function bdate_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		Return whether the object is callable (i.e., some kind of function).
		
		Note that classes are callable, as are instances of classes with a
		__call__() method.
	**/
	static public function callable(obj:Dynamic):Dynamic;
	/**
		Try to connect to the given url. True if succeeds, False if IOError
		raised
		
		Parameters
		----------
		url : basestring
		    The URL to try to connect to
		
		Returns
		-------
		connectable : bool
		    Return True if no IOError (unable to connect) or URLError (bad url) was
		    raised
	**/
	static public function can_connect(url:Dynamic, ?error_classes:Dynamic):Dynamic;
	/**
		Run command with arguments and return its output as a byte string.
		
		If the exit code was non-zero it raises a CalledProcessError.  The
		CalledProcessError object will have the return code in the returncode
		attribute and output in the output attribute.
		
		The arguments are the same as for the Popen constructor.  Example:
		
		>>> check_output(["ls", "-l", "/dev/null"])
		'crw-rw-rw- 1 root root 1, 3 Oct 18  2007 /dev/null\n'
		
		The stdout argument is not allowed as it is used internally.
		To capture standard error in the result, use stderr=STDOUT.
		
		>>> check_output(["/bin/sh", "-c",
		...               "ls -l non_existent_file ; exit 0"],
		...              stderr=STDOUT)
		'ls: non_existent_file: No such file or directory\n'
	**/
	static public function check_output(popenargs:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		sample with replacement; uniform over the input
	**/
	static public function choice(x:Dynamic, ?size:Dynamic):Dynamic;
	static public function close(?fignum:Dynamic):Dynamic;
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
	static public function debug(f:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function deprecate(name:Dynamic, alternative:Dynamic, ?alt_name:Dynamic):Dynamic;
	static public function disabled(t:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		Checks if the set of unique elements of arr1 and arr2 are equivalent.
		    
	**/
	static public function equalContents(arr1:Dynamic, arr2:Dynamic):Dynamic;
	static public function getArangeMat():Dynamic;
	static public function getCols(k:Dynamic):Dynamic;
	static public function getMixedTypeDict():Dynamic;
	static public function getPeriodData(?nper:Dynamic):Dynamic;
	static public function getSeriesData():Dynamic;
	static public function getTimeSeriesData(?nper:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Return the path of a data file, these are relative to the current test
		directory.
	**/
	static public function get_data_path(?f:Dynamic):Dynamic;
	/**
		Get all the locales that are available on the system.
		
		Parameters
		----------
		prefix : str
		    If not ``None`` then return only those locales with the prefix
		    provided. For example to get all English language locales (those that
		    start with ``"en"``), pass ``prefix="en"``.
		normalize : bool
		    Call ``locale.normalize`` on the resulting list of available locales.
		    If ``True``, only locales that can be set without throwing an
		    ``Exception`` are returned.
		locale_getter : callable
		    The function to use to retrieve the current locales. This should return
		    a string with each locale separated by a newline character.
		
		Returns
		-------
		locales : list of strings
		    A list of locale strings that can be set with ``locale.setlocale()``.
		    For example::
		
		        locale.setlocale(locale.LC_ALL, locale_string)
		
		On error will return None (no locale available, e.g. Windows)
	**/
	static public function get_locales(?prefix:Dynamic, ?normalize:Dynamic, ?locale_getter:Dynamic):Dynamic;
	static public function is_datetimelike_v_numeric(a:Dynamic, b:Dynamic):Dynamic;
	static public function is_datetimelike_v_object(a:Dynamic, b:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function is_number(obj:Dynamic):Dynamic;
	static public function is_platform_32bit():Dynamic;
	static public function is_platform_windows():Dynamic;
	static public function is_sequence(x:Dynamic):Dynamic;
	static public function is_sorted(seq:Dynamic):Dynamic;
	static public function isiterable(obj:Dynamic):Dynamic;
	static public function lmap(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lzip(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function makeBoolIndex(?k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		make a length k index or n categories 
	**/
	static public function makeCategoricalIndex(?k:Dynamic, ?n:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function makeCustomDataframe(nrows:Dynamic, ncols:Dynamic, ?c_idx_names:Dynamic, ?r_idx_names:Dynamic, ?c_idx_nlevels:Dynamic, ?r_idx_nlevels:Dynamic, ?data_gen_f:Dynamic, ?c_ndupe_l:Dynamic, ?r_ndupe_l:Dynamic, ?dtype:Dynamic, ?c_idx_type:Dynamic, ?r_idx_type:Dynamic):Dynamic;
	/**
		Create an index/multindex with given dimensions, levels, names, etc'
		
		nentries - number of entries in index
		nlevels - number of levels (> 1 produces multindex)
		prefix - a string prefix for labels
		names - (Optional), bool or list of strings. if True will use default names,
		   if false will use no names, if a list is given,  the name of each level
		   in the index will be taken from the list.
		ndupe_l - (Optional), list of ints, the number of rows for which the
		   label will repeated at the corresponding level, you can specify just
		   the first few, the rest will use the default ndupe_l of 1.
		   len(ndupe_l) <= nlevels.
		idx_type - "i"/"f"/"s"/"u"/"dt"/"p"/"td".
		   If idx_type is not None, `idx_nlevels` must be 1.
		   "i"/"f" creates an integer/float index,
		   "s"/"u" creates a string/unicode index
		   "dt" create a datetime index.
		   "td" create a datetime index.
		
		    if unspecified, string labels will be generated.
	**/
	static public function makeCustomIndex(nentries:Dynamic, nlevels:Dynamic, ?prefix:Dynamic, ?names:Dynamic, ?ndupe_l:Dynamic, ?idx_type:Dynamic):Dynamic;
	static public function makeDataFrame():Dynamic;
	static public function makeDateIndex(?k:Dynamic, ?freq:Dynamic, ?name:Dynamic):Dynamic;
	static public function makeFloatIndex(?k:Dynamic, ?name:Dynamic):Dynamic;
	static public function makeFloatSeries(?name:Dynamic):Dynamic;
	static public function makeIntIndex(?k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parameters
		----------
		Density : float, optional
		    Float in (0, 1) that gives the percentage of non-missing numbers in
		    the DataFrame.
		random_state : {np.random.RandomState, int}, optional
		    Random number generator or random seed.
		
		See makeCustomDataframe for descriptions of the rest of the parameters.
	**/
	static public function makeMissingCustomDataframe(nrows:Dynamic, ncols:Dynamic, ?density:Dynamic, ?random_state:Dynamic, ?c_idx_names:Dynamic, ?r_idx_names:Dynamic, ?c_idx_nlevels:Dynamic, ?r_idx_nlevels:Dynamic, ?data_gen_f:Dynamic, ?c_ndupe_l:Dynamic, ?r_ndupe_l:Dynamic, ?dtype:Dynamic, ?c_idx_type:Dynamic, ?r_idx_type:Dynamic):Dynamic;
	static public function makeMissingDataframe(?density:Dynamic, ?random_state:Dynamic):Dynamic;
	static public function makeMixedDataFrame():Dynamic;
	static public function makeObjectSeries(?name:Dynamic):Dynamic;
	static public function makePanel(?nper:Dynamic):Dynamic;
	static public function makePanel4D(?nper:Dynamic):Dynamic;
	static public function makePeriodFrame(?nper:Dynamic):Dynamic;
	static public function makePeriodIndex(?k:Dynamic, ?name:Dynamic):Dynamic;
	static public function makePeriodPanel(?nper:Dynamic):Dynamic;
	static public function makePeriodSeries(?nper:Dynamic, ?name:Dynamic):Dynamic;
	static public function makeStringIndex(?k:Dynamic, ?name:Dynamic):Dynamic;
	static public function makeStringSeries(?name:Dynamic):Dynamic;
	static public function makeTimeDataFrame(?nper:Dynamic, ?freq:Dynamic):Dynamic;
	static public function makeTimeSeries(?nper:Dynamic, ?freq:Dynamic, ?name:Dynamic):Dynamic;
	static public function makeTimedeltaIndex(?k:Dynamic, ?freq:Dynamic, ?name:Dynamic):Dynamic;
	static public function makeUnicodeIndex(?k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Skip a TestCase instance if matplotlib isn't installed
	**/
	static public function mplskip(cls:Dynamic):Dynamic;
	static public var name : Dynamic;
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
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
	/**
		allows a decorator to take optional positional and keyword arguments.
		Assumes that taking a single, callable, positional argument means that
		it is decorating a function, i.e. something like this::
		
		    @my_decorator
		    def function(): pass
		
		Calls decorator with decorator(f, *args, **kwargs)
	**/
	static public function optional_args(decorator:Dynamic):Dynamic;
	/**
		Check that the minimal version of the required package is installed.
		
		Parameters
		----------
		pkg_name : string
		    Name of the required package.
		version : string, optional
		    Minimal version number for required package.
		app : string, optional
		    Application that is performing the check.  For instance, the
		    name of the tutorial being executed that depends on specific
		    packages.
		checker : object, optional
		    The class that will perform the version checking.  Default is
		    distutils.version.LooseVersion.
		exc_failed_import : Exception, optional
		    Class of the exception to be thrown if import failed.
		exc_failed_check : Exception, optional
		    Class of the exception to be thrown if version check failed.
		
		Examples
		--------
		package_check('numpy', '1.3')
		package_check('networkx', '1.0', 'tutorial1')
	**/
	static public function package_check(pkg_name:Dynamic, ?version:Dynamic, ?app:Dynamic, ?checker:Dynamic, ?exc_failed_import:Dynamic, ?exc_failed_check:Dynamic):Dynamic;
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
	static public function pudebug(f:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function raise_assert_detail(obj:Dynamic, message:Dynamic, left:Dynamic, right:Dynamic):Dynamic;
	/**
		Raise exception with existing traceback.
		If traceback is not passed, uses sys.exc_info() to get traceback.
	**/
	static public function raise_with_traceback(exc:Dynamic, ?traceback:Dynamic):Dynamic;
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
	static public function randbool(?size:Dynamic, ?p:Dynamic):Dynamic;
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
		Generate one random byte string.
		
		See `rands_array` if you want to create an array of random strings.
	**/
	static public function rands(nchars:Dynamic):Dynamic;
	/**
		Generate an array of byte strings.
	**/
	static public function rands_array(nchars:Dynamic, size:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Generate one random unicode string.
		
		See `randu_array` if you want to create an array of random unicode strings.
	**/
	static public function randu(nchars:Dynamic):Dynamic;
	/**
		Generate an array of unicode strings.
	**/
	static public function randu_array(nchars:Dynamic, size:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function reset_testing_mode():Dynamic;
	/**
		Context manager for temporarily setting a locale.
		
		Parameters
		----------
		new_locale : str or tuple
		    A string of the form <language_country>.<encoding>. For example to set
		    the current locale to US English with a UTF8 encoding, you would pass
		    "en_US.UTF-8".
		
		Notes
		-----
		This is useful when you want to run a particular block of code under a
		particular locale, without globally setting the locale. This probably isn't
		thread-safe.
	**/
	static public function set_locale(new_locale:Dynamic, ?lc_var:Dynamic):Dynamic;
	static public function set_testing_mode():Dynamic;
	static public function set_trace():Dynamic;
	static public function skip_if_no_ne(?engine:Dynamic):Dynamic;
	/**
		Raise SkipTest if package_check fails
		
		Parameters
		----------
		*args Positional parameters passed to `package_check`
		*kwargs Keyword parameters passed to `package_check`
	**/
	static public function skip_if_no_package(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Context manager for running bits of code while emulating an arbitrary
		stdin encoding.
		
		>>> import sys
		>>> _encoding = sys.stdin.encoding
		>>> with stdin_encoding('AES'): sys.stdin.encoding
		'AES'
		>>> sys.stdin.encoding==_encoding
		True
	**/
	static public function stdin_encoding(?encoding:Dynamic):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass
		
		Parameters
		----------
		arr : ndarray
		    Input array
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indicies are filed with fill_value
		axis : int, default 0
		    Axis to take from
		out : ndarray or None, default None
		    Optional output array, must be appropriate type to hold input and
		    fill_value together, if indexer has any -1 value entries; call
		    common._maybe_promote to determine this type for any fill_value
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		mask_info : tuple of (ndarray, boolean)
		    If provided, value should correspond to:
		        (indexer != -1, (indexer != -1).any())
		    If not provided, it will be computed internally if necessary
		allow_fill : boolean, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask.  Result is
		    undefined if allow_fill == False and -1 is present in indexer.
	**/
	static public function take_1d(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?mask_info:Dynamic, ?allow_fill:Dynamic):Dynamic;
	/**
		Decorator to run the same function multiple times in parallel.
		
		Parameters
		----------
		num_threads : int, optional
		    The number of times the function is run in parallel.
		kwargs_list : list of dicts, optional
		    The list of kwargs to update original function kwargs on different threads.
		Notes
		-----
		This decorator does not pass the return value of the decorated function.
		
		Original from scikit-image: https://github.com/scikit-image/scikit-image/pull/1519
	**/
	static public function test_parallel(?num_threads:Dynamic, ?kwargs_list:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
	/**
		Return a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff.
	**/
	static public function unichr(i:Dynamic):Dynamic;
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	static public function use_numexpr(use:Dynamic, ?min_elements:Dynamic):Dynamic;
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
	static public function with_connectivity_check(t:Dynamic, ?url:Dynamic, ?raise_on_error:Dynamic, ?check_before_test:Dynamic, ?error_classes:Dynamic, ?skip_errnos:Dynamic, ?_skip_on_messages:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}