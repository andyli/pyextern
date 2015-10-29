/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_collections") extern class Test_collections {
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
		check to make sure all values match the given target
		
		note: this is not a test, it is used by tests
	**/
	static public function check_allprop(values:Dynamic, target:Dynamic):Dynamic;
	/**
		check to make sure all values match the given target if arrays
		
		note: this is not a test, it is used by tests
	**/
	static public function check_allprop_array(values:Dynamic, target:Dynamic):Dynamic;
	/**
		check to make sure all values in the segment are correct, given a
		particular set of inputs
		
		note: this is not a test, it is used by tests
	**/
	static public function check_segments(coll:Dynamic, positions:Dynamic, linelength:Dynamic, lineoffset:Dynamic, orientation:Dynamic):Dynamic;
	static public function cleanup(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		generate the initial collection and plot it
	**/
	static public function generate_EventCollection_plot():Dynamic;
	/**
		call signature::
		
		  image_comparison(baseline_images=['my_figure'], extensions=None)
		
		Compare images generated by the test with those specified in
		*baseline_images*, which must correspond else an
		ImageComparisonFailure exception will be raised.
		
		Keyword arguments:
		
		  *baseline_images*: list
		    A list of strings specifying the names of the images generated
		    by calls to :meth:`matplotlib.figure.savefig`.
		
		  *extensions*: [ None | list ]
		
		    If *None*, default to all supported extensions.
		
		    Otherwise, a list of extensions to test. For example ['png','pdf'].
		
		  *tol*: (default 13)
		    The RMS threshold above which the test is considered failed.
		
		  *freetype_version*: str or tuple
		    The expected freetype version or range of versions for this
		    test to pass.
		
		  *remove_text*: bool
		    Remove the title and tick text from the figure before
		    comparison.  This does not remove other, more deliberate,
		    text, such as legends and annotations.
		
		  *savefig_kwarg*: dict
		    Optional arguments that are passed to the savefig method.
	**/
	static public function image_comparison(?baseline_images:Dynamic, ?extensions:Dynamic, ?tol:Dynamic, ?freetype_version:Dynamic, ?remove_text:Dynamic, ?savefig_kwarg:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		check to make sure the default color matches the input color
	**/
	static public function test__EventCollection__get_color():Dynamic;
	/**
		check to make sure the default linelength matches the input linelength
	**/
	static public function test__EventCollection__get_linelength():Dynamic;
	/**
		check to make sure the default lineoffset matches the input lineoffset
	**/
	static public function test__EventCollection__get_lineoffset():Dynamic;
	/**
		check to make sure the default linestyle matches the input linestyle
	**/
	static public function test__EventCollection__get_linestyle():Dynamic;
	/**
		check to make sure the default orientation matches the input
		orientation
	**/
	static public function test__EventCollection__get_orientation():Dynamic;
	/**
		check to make sure the default positions match the input positions
	**/
	static public function test__EventCollection__get_positions():Dynamic;
	/**
		check to make sure the default orientation matches the input
		orientation
	**/
	static public function test__EventCollection__is_horizontal():Dynamic;
	static public function test_add_collection():Dynamic;
	static public function test_barb_limits():Dynamic;
	static public function test_null_collection_datalim():Dynamic;
	static public function test_quiver_limits():Dynamic;
	static public var unicode_literals : Dynamic;
}