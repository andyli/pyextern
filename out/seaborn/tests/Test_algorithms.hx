/* This file is generated, do not edit! */
package seaborn.tests;
@:pythonImport("seaborn.tests.test_algorithms") extern class Test_algorithms {
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
	static public var rs : Dynamic;
	/**
		Test that bootstrapping gives the right answer in dumb cases.
	**/
	static public function test_bootstrap():Dynamic;
	/**
		Test that different length args raise ValueError.
	**/
	static public function test_bootstrap_arglength(arg:Dynamic, kw:Dynamic):Dynamic;
	/**
		Test axis kwarg to bootstrap function.
	**/
	static public function test_bootstrap_axis():Dynamic;
	/**
		Test that we get a bootstrap array of the right shape.
	**/
	static public function test_bootstrap_length():Dynamic;
	/**
		Test that bootstrap works with multiple input arrays.
	**/
	static public function test_bootstrap_multiarg():Dynamic;
	/**
		Test that we get a TypeError with noncallable algo.unc.
	**/
	static public function test_bootstrap_noncallable(arg:Dynamic, kw:Dynamic):Dynamic;
	/**
		Test bootstrap of OLS model fit.
	**/
	static public function test_bootstrap_ols():Dynamic;
	/**
		Test that we can get reproducible resamples by seeding the RNG.
	**/
	static public function test_bootstrap_random_seed():Dynamic;
	/**
		Test that boostrapping a random array stays within the right range.
	**/
	static public function test_bootstrap_range():Dynamic;
	/**
		Test that results make sense when passing unit IDs to bootstrap.
	**/
	static public function test_bootstrap_units():Dynamic;
	/**
		Test that the tail argument works.
	**/
	static public function test_randimoize_corrmat_tails():Dynamic;
	/**
		Test that we can seed the corrmat randomization.
	**/
	static public function test_randomise_corrmat_seed():Dynamic;
	/**
		Test the correctness of the correlation matrix p values.
	**/
	static public function test_randomize_corrmat():Dynamic;
	/**
		Test that FWE correction works.
	**/
	static public function test_randomize_corrmat_correction():Dynamic;
	/**
		Test that the distribution looks right.
	**/
	static public function test_randomize_corrmat_dist():Dynamic;
	/**
		Test that we are strict about tail paramete.
	**/
	static public function test_randomize_corrmat_tail_error(arg:Dynamic, kw:Dynamic):Dynamic;
	/**
		Test smooth bootstrap.
	**/
	static public function test_smooth_bootstrap():Dynamic;
}