/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy.testing") extern class Testing {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Assert that works in release mode.
		Accepts callable msg to allow deferring evaluation until failure.
		
		The Python built-in ``assert`` does not work when executing code in
		optimized mode (the ``-O`` flag) - no byte-code is generated for it.
		
		For documentation on usage, refer to the Python documentation.
	**/
	static public function assert_(val:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two objects are not equal up to desired
		tolerance.
		
		The test is equivalent to ``allclose(actual, desired, rtol, atol)``.
		It compares the difference between `actual` and `desired` to
		``atol + rtol * abs(desired)``.
		
		.. versionadded:: 1.5.0
		
		Parameters
		----------
		actual : array_like
		    Array obtained.
		desired : array_like
		    Array desired.
		rtol : float, optional
		    Relative tolerance.
		atol : float, optional
		    Absolute tolerance.
		equal_nan : bool, optional.
		    If True, NaNs will compare equal.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		    If actual and desired are not equal up to specified precision.
		
		See Also
		--------
		assert_array_almost_equal_nulp, assert_array_max_ulp
		
		Examples
		--------
		>>> x = [1e-5, 1e-3, 1e-1]
		>>> y = np.arccos(np.cos(x))
		>>> assert_allclose(x, y, rtol=1e-5, atol=0)
	**/
	static public function assert_allclose(actual:Dynamic, desired:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two items are not equal up to desired
		precision.
		
		.. note:: It is recommended to use one of `assert_allclose`,
		          `assert_array_almost_equal_nulp` or `assert_array_max_ulp`
		          instead of this function for more consistent floating point
		          comparisons.
		
		The test is equivalent to ``abs(desired-actual) < 0.5 * 10**(-decimal)``.
		
		Given two objects (numbers or ndarrays), check that all elements of these
		objects are almost equal. An exception is raised at conflicting values.
		For ndarrays this delegates to assert_array_almost_equal
		
		Parameters
		----------
		actual : array_like
		    The object to check.
		desired : array_like
		    The expected object.
		decimal : int, optional
		    Desired precision, default is 7.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		  If actual and desired are not equal up to specified precision.
		
		See Also
		--------
		assert_allclose: Compare two array_like objects for equality with desired
		                 relative and/or absolute precision.
		assert_array_almost_equal_nulp, assert_array_max_ulp, assert_equal
		
		Examples
		--------
		>>> import numpy.testing as npt
		>>> npt.assert_almost_equal(2.3333333333333, 2.33333334)
		>>> npt.assert_almost_equal(2.3333333333333, 2.33333334, decimal=10)
		...
		<type 'exceptions.AssertionError'>:
		Items are not equal:
		 ACTUAL: 2.3333333333333002
		 DESIRED: 2.3333333399999998
		
		>>> npt.assert_almost_equal(np.array([1.0,2.3333333333333]),
		...                         np.array([1.0,2.33333334]), decimal=9)
		...
		<type 'exceptions.AssertionError'>:
		Arrays are not almost equal
		<BLANKLINE>
		(mismatch 50.0%)
		 x: array([ 1.        ,  2.33333333])
		 y: array([ 1.        ,  2.33333334])
	**/
	static public function assert_almost_equal(actual:Dynamic, desired:Dynamic, ?decimal:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two items are not equal up to significant
		digits.
		
		.. note:: It is recommended to use one of `assert_allclose`,
		          `assert_array_almost_equal_nulp` or `assert_array_max_ulp`
		          instead of this function for more consistent floating point
		          comparisons.
		
		Given two numbers, check that they are approximately equal.
		Approximately equal is defined as the number of significant digits
		that agree.
		
		Parameters
		----------
		actual : scalar
		    The object to check.
		desired : scalar
		    The expected object.
		significant : int, optional
		    Desired precision, default is 7.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		  If actual and desired are not equal up to specified precision.
		
		See Also
		--------
		assert_allclose: Compare two array_like objects for equality with desired
		                 relative and/or absolute precision.
		assert_array_almost_equal_nulp, assert_array_max_ulp, assert_equal
		
		Examples
		--------
		>>> np.testing.assert_approx_equal(0.12345677777777e-20, 0.1234567e-20)
		>>> np.testing.assert_approx_equal(0.12345670e-20, 0.12345671e-20,
		                                   significant=8)
		>>> np.testing.assert_approx_equal(0.12345670e-20, 0.12345672e-20,
		                                   significant=8)
		...
		<type 'exceptions.AssertionError'>:
		Items are not equal to 8 significant digits:
		 ACTUAL: 1.234567e-021
		 DESIRED: 1.2345672000000001e-021
		
		the evaluated condition that raises the exception is
		
		>>> abs(0.12345670e-20/1e-21 - 0.12345672e-20/1e-21) >= 10**-(8-1)
		True
	**/
	static public function assert_approx_equal(actual:Dynamic, desired:Dynamic, ?significant:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two objects are not equal up to desired
		precision.
		
		.. note:: It is recommended to use one of `assert_allclose`,
		          `assert_array_almost_equal_nulp` or `assert_array_max_ulp`
		          instead of this function for more consistent floating point
		          comparisons.
		
		The test verifies identical shapes and verifies values with
		``abs(desired-actual) < 0.5 * 10**(-decimal)``.
		
		Given two array_like objects, check that the shape is equal and all
		elements of these objects are almost equal. An exception is raised at
		shape mismatch or conflicting values. In contrast to the standard usage
		in numpy, NaNs are compared like numbers, no assertion is raised if
		both objects have NaNs in the same positions.
		
		Parameters
		----------
		x : array_like
		    The actual object to check.
		y : array_like
		    The desired, expected object.
		decimal : int, optional
		    Desired precision, default is 6.
		err_msg : str, optional
		  The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		    If actual and desired are not equal up to specified precision.
		
		See Also
		--------
		assert_allclose: Compare two array_like objects for equality with desired
		                 relative and/or absolute precision.
		assert_array_almost_equal_nulp, assert_array_max_ulp, assert_equal
		
		Examples
		--------
		the first assert does not raise an exception
		
		>>> np.testing.assert_array_almost_equal([1.0,2.333,np.nan],
		                                         [1.0,2.333,np.nan])
		
		>>> np.testing.assert_array_almost_equal([1.0,2.33333,np.nan],
		...                                      [1.0,2.33339,np.nan], decimal=5)
		...
		<type 'exceptions.AssertionError'>:
		AssertionError:
		Arrays are not almost equal
		<BLANKLINE>
		(mismatch 50.0%)
		 x: array([ 1.     ,  2.33333,      NaN])
		 y: array([ 1.     ,  2.33339,      NaN])
		
		>>> np.testing.assert_array_almost_equal([1.0,2.33333,np.nan],
		...                                      [1.0,2.33333, 5], decimal=5)
		<type 'exceptions.ValueError'>:
		ValueError:
		Arrays are not almost equal
		 x: array([ 1.     ,  2.33333,      NaN])
		 y: array([ 1.     ,  2.33333,  5.     ])
	**/
	static public function assert_array_almost_equal(x:Dynamic, y:Dynamic, ?decimal:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Compare two arrays relatively to their spacing.
		
		This is a relatively robust method to compare two arrays whose amplitude
		is variable.
		
		Parameters
		----------
		x, y : array_like
		    Input arrays.
		nulp : int, optional
		    The maximum number of unit in the last place for tolerance (see Notes).
		    Default is 1.
		
		Returns
		-------
		None
		
		Raises
		------
		AssertionError
		    If the spacing between `x` and `y` for one or more elements is larger
		    than `nulp`.
		
		See Also
		--------
		assert_array_max_ulp : Check that all items of arrays differ in at most
		    N Units in the Last Place.
		spacing : Return the distance between x and the nearest adjacent number.
		
		Notes
		-----
		An assertion is raised if the following condition is not met::
		
		    abs(x - y) <= nulps * spacing(maximum(abs(x), abs(y)))
		
		Examples
		--------
		>>> x = np.array([1., 1e-10, 1e-20])
		>>> eps = np.finfo(x.dtype).eps
		>>> np.testing.assert_array_almost_equal_nulp(x, x*eps/2 + x)
		
		>>> np.testing.assert_array_almost_equal_nulp(x, x*eps + x)
		Traceback (most recent call last):
		  ...
		AssertionError: X and Y are not equal to 1 ULP (max is 2)
	**/
	static public function assert_array_almost_equal_nulp(x:Dynamic, y:Dynamic, ?nulp:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two array_like objects are not equal.
		
		Given two array_like objects, check that the shape is equal and all
		elements of these objects are equal. An exception is raised at
		shape mismatch or conflicting values. In contrast to the standard usage
		in numpy, NaNs are compared like numbers, no assertion is raised if
		both objects have NaNs in the same positions.
		
		The usual caution for verifying equality with floating point numbers is
		advised.
		
		Parameters
		----------
		x : array_like
		    The actual object to check.
		y : array_like
		    The desired, expected object.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		    If actual and desired objects are not equal.
		
		See Also
		--------
		assert_allclose: Compare two array_like objects for equality with desired
		                 relative and/or absolute precision.
		assert_array_almost_equal_nulp, assert_array_max_ulp, assert_equal
		
		Examples
		--------
		The first assert does not raise an exception:
		
		>>> np.testing.assert_array_equal([1.0,2.33333,np.nan],
		...                               [np.exp(0),2.33333, np.nan])
		
		Assert fails with numerical inprecision with floats:
		
		>>> np.testing.assert_array_equal([1.0,np.pi,np.nan],
		...                               [1, np.sqrt(np.pi)**2, np.nan])
		...
		<type 'exceptions.ValueError'>:
		AssertionError:
		Arrays are not equal
		<BLANKLINE>
		(mismatch 50.0%)
		 x: array([ 1.        ,  3.14159265,         NaN])
		 y: array([ 1.        ,  3.14159265,         NaN])
		
		Use `assert_allclose` or one of the nulp (number of floating point values)
		functions for these cases instead:
		
		>>> np.testing.assert_allclose([1.0,np.pi,np.nan],
		...                            [1, np.sqrt(np.pi)**2, np.nan],
		...                            rtol=1e-10, atol=0)
	**/
	static public function assert_array_equal(x:Dynamic, y:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two array_like objects are not ordered by less
		than.
		
		Given two array_like objects, check that the shape is equal and all
		elements of the first object are strictly smaller than those of the
		second object. An exception is raised at shape mismatch or incorrectly
		ordered values. Shape mismatch does not raise if an object has zero
		dimension. In contrast to the standard usage in numpy, NaNs are
		compared, no assertion is raised if both objects have NaNs in the same
		positions.
		
		
		
		Parameters
		----------
		x : array_like
		  The smaller object to check.
		y : array_like
		  The larger object to compare.
		err_msg : string
		  The error message to be printed in case of failure.
		verbose : bool
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		  If actual and desired objects are not equal.
		
		See Also
		--------
		assert_array_equal: tests objects for equality
		assert_array_almost_equal: test objects for equality up to precision
		
		
		
		Examples
		--------
		>>> np.testing.assert_array_less([1.0, 1.0, np.nan], [1.1, 2.0, np.nan])
		>>> np.testing.assert_array_less([1.0, 1.0, np.nan], [1, 2.0, np.nan])
		...
		<type 'exceptions.ValueError'>:
		Arrays are not less-ordered
		(mismatch 50.0%)
		 x: array([  1.,   1.,  NaN])
		 y: array([  1.,   2.,  NaN])
		
		>>> np.testing.assert_array_less([1.0, 4.0], 3)
		...
		<type 'exceptions.ValueError'>:
		Arrays are not less-ordered
		(mismatch 50.0%)
		 x: array([ 1.,  4.])
		 y: array(3)
		
		>>> np.testing.assert_array_less([1.0, 2.0, 3.0], [4])
		...
		<type 'exceptions.ValueError'>:
		Arrays are not less-ordered
		(shapes (3,), (1,) mismatch)
		 x: array([ 1.,  2.,  3.])
		 y: array([4])
	**/
	static public function assert_array_less(x:Dynamic, y:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Check that all items of arrays differ in at most N Units in the Last Place.
		
		Parameters
		----------
		a, b : array_like
		    Input arrays to be compared.
		maxulp : int, optional
		    The maximum number of units in the last place that elements of `a` and
		    `b` can differ. Default is 1.
		dtype : dtype, optional
		    Data-type to convert `a` and `b` to if given. Default is None.
		
		Returns
		-------
		ret : ndarray
		    Array containing number of representable floating point numbers between
		    items in `a` and `b`.
		
		Raises
		------
		AssertionError
		    If one or more elements differ by more than `maxulp`.
		
		See Also
		--------
		assert_array_almost_equal_nulp : Compare two arrays relatively to their
		    spacing.
		
		Examples
		--------
		>>> a = np.linspace(0., 1., 100)
		>>> res = np.testing.assert_array_max_ulp(a, np.arcsin(np.sin(a)))
	**/
	static public function assert_array_max_ulp(a:Dynamic, b:Dynamic, ?maxulp:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two objects are not equal.
		
		Given two objects (scalars, lists, tuples, dictionaries or numpy arrays),
		check that all elements of these objects are equal. An exception is raised
		at the first conflicting values.
		
		Parameters
		----------
		actual : array_like
		    The object to check.
		desired : array_like
		    The expected object.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		    If actual and desired are not equal.
		
		Examples
		--------
		>>> np.testing.assert_equal([4,5], [4,6])
		...
		<type 'exceptions.AssertionError'>:
		Items are not equal:
		item=1
		 ACTUAL: 5
		 DESIRED: 6
	**/
	static public function assert_equal(actual:Dynamic, desired:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Fail if the given callable produces any warnings.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		func : callable
		    The callable to test.
		\*args : Arguments
		    Arguments passed to `func`.
		\*\*kwargs : Kwargs
		    Keyword arguments passed to `func`.
		
		Returns
		-------
		The value returned by `func`.
	**/
	static public function assert_no_warnings(func:Dynamic, args:Dynamic, kw:Dynamic):Dynamic;
	/**
		assert_raises(exception_class, callable, *args, **kwargs)
		
		Fail unless an exception of class exception_class is thrown
		by callable when invoked with arguments args and keyword
		arguments kwargs. If a different type of exception is
		thrown, it will not be caught, and the test case will be
		deemed to have suffered an error, exactly as for an
		unexpected exception.
	**/
	static public function assert_raises(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Fail unless an exception of class exception_class and with message that
		matches expected_regexp is thrown by callable when invoked with arguments
		args and keyword arguments kwargs.
		
		Name of this function adheres to Python 3.2+ reference, but should work in
		all versions down to 2.6.
	**/
	static public function assert_raises_regex(exception_class:Dynamic, expected_regexp:Dynamic, ?callable_obj:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Test if two strings are equal.
		
		If the given strings are equal, `assert_string_equal` does nothing.
		If they are not equal, an AssertionError is raised, and the diff
		between the strings is shown.
		
		Parameters
		----------
		actual : str
		    The string to test for equality against the expected string.
		desired : str
		    The expected string.
		
		Examples
		--------
		>>> np.testing.assert_string_equal('abc', 'abc')
		>>> np.testing.assert_string_equal('abc', 'abcd')
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		...
		AssertionError: Differences in strings:
		- abc+ abcd?    +
	**/
	static public function assert_string_equal(actual:Dynamic, desired:Dynamic):Dynamic;
	/**
		Fail unless the given callable throws the specified warning.
		
		A warning of class warning_class should be thrown by the callable when
		invoked with arguments args and keyword arguments kwargs.
		If a different type of warning is thrown, it will not be caught, and the
		test case will be deemed to have suffered an error.
		
		.. versionadded:: 1.4.0
		
		Parameters
		----------
		warning_class : class
		    The class defining the warning that `func` is expected to throw.
		func : callable
		    The callable to test.
		\*args : Arguments
		    Arguments passed to `func`.
		\*\*kwargs : Kwargs
		    Keyword arguments passed to `func`.
		
		Returns
		-------
		The value returned by `func`.
	**/
	static public function assert_warns(warning_class:Dynamic, func:Dynamic, args:Dynamic, kw:Dynamic):Dynamic;
	static public function build_err_msg(arrays:Dynamic, err_msg:Dynamic, ?header:Dynamic, ?verbose:Dynamic, ?names:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		Apply a decorator to all methods in a class matching a regular expression.
		
		The given decorator is applied to all public methods of `cls` that are
		matched by the regular expression `testmatch`
		(``testmatch.search(methodname)``). Methods that are private, i.e. start
		with an underscore, are ignored.
		
		Parameters
		----------
		cls : class
		    Class whose methods to decorate.
		decorator : function
		    Decorator to apply to methods
		testmatch : compiled regexp or str, optional
		    The regular expression. Default value is None, in which case the
		    nose default (``re.compile(r'(?:^|[\b_\.%s-])[Tt]est' % os.sep)``)
		    is used.
		    If `testmatch` is a string, it is compiled to a regular expression
		    first.
	**/
	static public function decorate_methods(cls:Dynamic, decorator:Dynamic, ?testmatch:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return number of jiffies elapsed.
		
		Return number of jiffies (1/100ths of a second) that this
		process has been scheduled in user mode. See man 5 proc.
	**/
	static public function jiffies(?_load_time:Dynamic):Dynamic;
	/**
		Return elapsed time for executing code in the namespace of the caller.
		
		The supplied code string is compiled with the Python builtin ``compile``.
		The precision of the timing is 10 milli-seconds. If the code will execute
		fast on this timescale, it can be executed many times to get reasonable
		timing accuracy.
		
		Parameters
		----------
		code_str : str
		    The code to be timed.
		times : int, optional
		    The number of times the code is executed. Default is 1. The code is
		    only compiled once.
		label : str, optional
		    A label to identify `code_str` with. This is passed into ``compile``
		    as the second argument (for run-time error messages).
		
		Returns
		-------
		elapsed : float
		    Total elapsed time in seconds for executing `code_str` `times` times.
		
		Examples
		--------
		>>> etime = np.testing.measure('for i in range(1000): np.sqrt(i**2)',
		...                            times=times)
		>>> print "Time for a single execution : ", etime / times, "s"
		Time for a single execution :  0.005 s
	**/
	static public function measure(code_str:Dynamic, ?times:Dynamic, ?label:Dynamic):Dynamic;
	/**
		Return memory usage of running python. [Not implemented]
	**/
	static public function memusage():Dynamic;
	/**
		Test if two objects are equal, and print an error message if test fails.
		
		The test is performed with ``actual == desired``.
		
		Parameters
		----------
		test_string : str
		    The message supplied to AssertionError.
		actual : object
		    The object to test for equality against `desired`.
		desired : object
		    The expected result.
		
		Examples
		--------
		>>> np.testing.print_assert_equal('Test XYZ of func xyz', [0, 1], [0, 1])
		>>> np.testing.print_assert_equal('Test XYZ of func xyz', [0, 1], [0, 2])
		Traceback (most recent call last):
		...
		AssertionError: Test XYZ of func xyz failed
		ACTUAL:
		[0, 1]
		DESIRED:
		[0, 2]
	**/
	static public function print_assert_equal(test_string:Dynamic, actual:Dynamic, desired:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function raises(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Returns an array of random numbers with the given shape.
		
		This only uses the standard library, so it is useful for testing purposes.
	**/
	static public function rand(args:Dynamic):Dynamic;
	/**
		Run a test module.
		
		Equivalent to calling ``$ nosetests <argv> <file_to_run>`` from
		the command line
		
		Parameters
		----------
		file_to_run : str, optional
		    Path to test module, or None.
		    By default, run the module from which this function is called.
		argv : list of strings
		    Arguments to be passed to the nose test runner. ``argv[0]`` is
		    ignored. All command line arguments accepted by ``nosetests``
		    will work. If it is the default value None, sys.argv is used.
		
		    .. versionadded:: 1.9.0
		
		Examples
		--------
		Adding the following::
		
		    if __name__ == "__main__" :
		        run_module_suite(argv=sys.argv)
		
		at the end of a test module will run the tests when that module is
		called in the python interpreter.
		
		Alternatively, calling::
		
		>>> run_module_suite(file_to_run="numpy/tests/test_matlib.py")
		
		from an interpreter will run all the test routine in 'test_matlib.py'.
	**/
	static public function run_module_suite(?file_to_run:Dynamic, ?argv:Dynamic):Dynamic;
	/**
		Run doctests found in the given file.
		
		By default `rundocs` raises an AssertionError on failure.
		
		Parameters
		----------
		filename : str
		    The path to the file for which the doctests are run.
		raise_on_error : bool
		    Whether to raise an AssertionError when a doctest fails. Default is
		    True.
		
		Notes
		-----
		The doctests can be run by the user/developer by adding the ``doctests``
		argument to the ``test()`` call. For example, to run all tests (including
		doctests) for `numpy.lib`:
		
		>>> np.lib.test(doctests=True) #doctest: +SKIP
	**/
	static public function rundocs(?filename:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	static public function runstring(astr:Dynamic, dict:Dynamic):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
	static public var verbose : Dynamic;
}