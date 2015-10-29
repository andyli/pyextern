/* This file is generated, do not edit! */
package pandas.tseries.tests;
@:pythonImport("pandas.tseries.tests.test_converter") extern class Test_converter {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function np_assert_almost_equal(actual:Dynamic, desired:Dynamic, ?decimal:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	static public function test_timtetonum_accepts_unicode():Dynamic;
	static public function u(s:Dynamic):Dynamic;
}