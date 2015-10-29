/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_cbook") extern class Test_cbook {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
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
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	static public function assert_equal(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Check that the expression is true.
	**/
	static public function assert_true(expr:Dynamic, ?msg:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Find all masked and/or non-finite points in a set of arguments,
		and return the arguments with only the unmasked points remaining.
		
		Arguments can be in any of 5 categories:
		
		1) 1-D masked arrays
		2) 1-D ndarrays
		3) ndarrays with more than one dimension
		4) other non-string iterables
		5) anything else
		
		The first argument must be in one of the first four categories;
		any argument with a length differing from that of the first
		argument (and hence anything in category 5) then will be
		passed through unchanged.
		
		Masks are obtained from all arguments of the correct length
		in categories 1, 2, and 4; a point is bad if masked in a masked
		array or if it is a nan or inf.  No attempt is made to
		extract a mask from categories 2, 3, and 4 if :meth:`np.isfinite`
		does not yield a Boolean array.
		
		All input arguments that are not passed unchanged are returned
		as ndarrays after removing the points or rows corresponding to
		masks in any of the arguments.
		
		A vastly simpler version of this function was originally
		written as a helper for Axes.scatter().
	**/
	static public function dmp(args:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
	static public function test_allequal():Dynamic;
	static public function test_is_string_like():Dynamic;
	static public function test_restrict_dict():Dynamic;
	static public var unicode_literals : Dynamic;
}