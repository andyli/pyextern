/* This file is generated, do not edit! */
package pandas.io.tests;
@:pythonImport("pandas.io.tests.test_wb") extern class Test_wb {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		Download data series from the World Bank's World Development Indicators
		
		Parameters
		----------
		
		indicator: string or list of strings
		    taken from the ``id`` field in ``WDIsearch()``
		
		country: string or list of strings.
		    ``all`` downloads data for all countries
		    2 or 3 character ISO country codes select individual
		    countries (e.g.``US``,``CA``) or (e.g.``USA``,``CAN``).  The codes
		    can be mixed.
		
		    The two ISO lists of countries, provided by wikipedia, are hardcoded
		    into pandas as of 11/10/2014.
		
		start: int
		    First year of the data series
		
		end: int
		    Last year of the data series (inclusive)
		
		errors: str {'ignore', 'warn', 'raise'}, default 'warn'
		    Country codes are validated against a hardcoded list.  This controls
		    the outcome of that validation, and attempts to also apply
		    to the results from world bank.
		
		    errors='raise', will raise a ValueError on a bad country code.
		
		Returns
		-------
		
		``pandas`` DataFrame with columns: country, iso_code, year,
		indicator value.
	**/
	static public function download(?country:Dynamic, ?indicator:Dynamic, ?start:Dynamic, ?end:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Query information about countries
		    
	**/
	static public function get_countries():Dynamic;
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
		Search available data series from the world bank
		
		Parameters
		----------
		
		string: string
		    regular expression
		field: string
		    id, name, source, sourceNote, sourceOrganization, topics
		    See notes below
		case: bool
		    case sensitive search?
		
		Notes
		-----
		
		The first time this function is run it will download and cache the full
		list of available series. Depending on the speed of your network
		connection, this can take time. Subsequent searches will use the cached
		copy, so they should be much faster.
		
		id : Data series indicator (for use with the ``indicator`` argument of
		``WDI()``) e.g. NY.GNS.ICTR.GN.ZS"
		name: Short description of the data series
		source: Data collection project
		sourceOrganization: Data collection organization
		note:
		sourceNote:
		topics:
	**/
	static public function search(?string:Dynamic, ?field:Dynamic, ?_case:Dynamic):Dynamic;
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
	static public function u(s:Dynamic):Dynamic;
}