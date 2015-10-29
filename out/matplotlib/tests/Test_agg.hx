/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_agg") extern class Test_agg {
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
	static public function cleanup(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Read an image from a file into an array.
		
		*fname* may be a string path or a Python file-like object.  If
		using a file object, it must be opened in binary mode.
		
		If *format* is provided, will try to read file of that type,
		otherwise the format is deduced from the filename.  If nothing can
		be deduced, PNG is tried.
		
		Return value is a :class:`numpy.array`.  For grayscale images, the
		return array is MxN.  For RGB images, the return value is MxNx3.
		For RGBA images the return value is MxNx4.
		
		matplotlib can only read PNGs natively, but if `PIL
		<http://www.pythonware.com/products/pil/>`_ is installed, it will
		use it to load the image and return an array (if possible) which
		can be used with :func:`~matplotlib.pyplot.imshow`.
	**/
	static public function imread(fname:Dynamic, ?format:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function report_memory(i:Dynamic):Dynamic;
	static public function test_large_single_path_collection():Dynamic;
	static public function test_marker_with_nan():Dynamic;
	static public function test_repeated_save_with_alpha():Dynamic;
	static public var unicode_literals : Dynamic;
}