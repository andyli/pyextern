/* This file is generated, do not edit! */
package seaborn.tests;
@:pythonImport("seaborn.tests.test_utils") extern class Test_utils {
	static public var BeautifulSoup : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var a_norm : Dynamic;
	/**
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	static public function assert_equal(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	static public function check_load_cached_dataset(name:Dynamic):Dynamic;
	static public function check_load_dataset(name:Dynamic):Dynamic;
	/**
		Report available example datasets, useful for reporting issues.
	**/
	static public function get_dataset_names():Dynamic;
	/**
		Load a dataset from the online repository (requires internet).
		
		Parameters
		----------
		name : str
		    Name of the dataset (`name`.csv on
		    https://github.com/mwaskom/seaborn-data).  You can obtain list of
		    available datasets using :func:`get_dataset_names`
		cache : boolean, optional
		    If True, then cache data locally and use the cache on subsequent calls
		data_home : string, optional
		    The directory in which to cache data. By default, uses ~/seaborn_data/
		kws : dict, optional
		    Passed to pandas.read_csv
	**/
	static public function load_dataset(name:Dynamic, ?cache:Dynamic, ?data_home:Dynamic, kws:Dynamic):Dynamic;
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
	static public var pandas_has_categoricals : Dynamic;
	/**
		Test must raise one of expected exceptions to pass.
		
		Example use::
		
		  @raises(TypeError, ValueError)
		  def test_raises_type_error():
		      raise TypeError("This test passes")
		
		  @raises(Exception)
		  def test_that_fails_by_passing():
		      pass
		
		If you want to test many assertions about exceptions in a single test,
		you may want to use `assert_raises` instead.
	**/
	static public function raises(exceptions:Dynamic):Dynamic;
	static public function test_categorical_order():Dynamic;
	/**
		Test behavior of ci_to_errsize.
	**/
	static public function test_ci_to_errsize():Dynamic;
	/**
		Test color desaturation.
	**/
	static public function test_desaturate():Dynamic;
	/**
		Test that pct outside of [0, 1] raises exception.
	**/
	static public function test_desaturation_prop(arg:Dynamic, kw:Dynamic):Dynamic;
	static public function test_get_dataset_names():Dynamic;
	/**
		Test the IQR function.
	**/
	static public function test_iqr():Dynamic;
	static public function test_load_cached_datasets():Dynamic;
	static public function test_load_datasets():Dynamic;
	/**
		Test the function to return barplot args for pmf hist.
	**/
	static public function test_pmf_hist_basics():Dynamic;
	/**
		Test bin specification.
	**/
	static public function test_pmf_hist_bins():Dynamic;
	/**
		Test that output data behaves like a PMF.
	**/
	static public function test_pmf_hist_normalization():Dynamic;
	/**
		Test histogram width is correct.
	**/
	static public function test_pmf_hist_widths():Dynamic;
	/**
		Test performance of saturation function.
	**/
	static public function test_saturate():Dynamic;
	static public function test_ticklabels_overlap():Dynamic;
}