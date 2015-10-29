/* This file is generated, do not edit! */
package pandas.io.tests;
@:pythonImport("pandas.io.tests.test_data") extern class Test_data {
	/**
		Imports data from a number of online sources.
		
		Currently supports Yahoo! Finance, Google Finance, St. Louis FED (FRED)
		and Kenneth French's data library.
		
		Parameters
		----------
		name : str or list of strs
		    the name of the dataset. Some data sources (yahoo, google, fred) will
		    accept a list of names.
		data_source: str, default: None
		    the data source ("yahoo", "google", "fred", or "ff")
		start : datetime, default: None
		    left boundary for range (defaults to 1/1/2010)
		end : datetime, default: None
		    right boundary for range (defaults to today)
		retry_count : int, default 3
		    Number of times to retry query request.
		pause : numeric, default 0.001
		    Time, in seconds, to pause between consecutive queries of chunks. If
		    single value given for symbol, represents the pause between retries.
		
		Examples
		----------
		
		# Data from Yahoo! Finance
		gs = DataReader("GS", "yahoo")
		
		# Data from Google Finance
		aapl = DataReader("AAPL", "google")
		
		# Data from FRED
		vix = DataReader("VIXCLS", "fred")
		
		# Data from Fama/French
		ff = DataReader("F-F_Research_Data_Factors", "famafrench")
		ff = DataReader("F-F_Research_Data_Factors_weekly", "famafrench")
		ff = DataReader("6_Portfolios_2x3", "famafrench")
		ff = DataReader("F-F_ST_Reversal_Factor", "famafrench")
	**/
	static public function DataReader(name:Dynamic, ?data_source:Dynamic, ?start:Dynamic, ?end:Dynamic, ?retry_count:Dynamic, ?pause:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _skip_if_no_bs():Dynamic;
	static public function _skip_if_no_lxml():Dynamic;
	static public var _yahoo_codes : Dynamic;
	/**
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	static public function assert_equal(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
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
	static public function assert_n_failed_equals_n_null_columns(wngs:Dynamic, obj:Dynamic, ?cls:Dynamic):Dynamic;
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
}