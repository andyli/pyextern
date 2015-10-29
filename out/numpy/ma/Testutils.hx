/* This file is generated, do not edit! */
package numpy.ma;
@:pythonImport("numpy.ma.testutils") extern class Testutils {
	static public var __all__ : Dynamic;
	static public var __all__masked : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __some__from_testing : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Asserts the equality of two non-array sequences.
	**/
	static public function _assert_equal_on_sequences(actual:Dynamic, desired:Dynamic, ?err_msg:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns True if a and b are equal up to decimal places.
		
		If fill_value is True, masked values considered equal. Otherwise,
		masked values are considered unequal.
	**/
	static public function almost(a:Dynamic, b:Dynamic, ?decimal:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Returns true if all components of a and b are equal to given tolerances.
		
		If fill_value is True, masked values considered equal. Otherwise,
		masked values are considered unequal.  The relative error rtol should
		be positive and << 1.0 The absolute error atol comes into play for
		those elements of b that are very small or zero; it says how small a
		must be also.
	**/
	static public function approx(a:Dynamic, b:Dynamic, ?fill_value:Dynamic, ?rtol:Dynamic, ?atol:Dynamic):Dynamic;
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
		Asserts that two items are almost equal.
		
		The test is equivalent to abs(desired-actual) < 0.5 * 10**(-decimal).
	**/
	static public function assert_almost_equal(actual:Dynamic, desired:Dynamic, ?decimal:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Checks the equality of two masked arrays, up to given number odecimals.
		
		The equality is checked elementwise.
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
		Checks the equality of two masked arrays, up to given number odecimals.
		
		The equality is checked elementwise.
	**/
	static public function assert_array_approx_equal(x:Dynamic, y:Dynamic, ?decimal:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Asserts that comparison between two masked arrays is satisfied.
		
		The comparison is elementwise.
	**/
	static public function assert_array_compare(comparison:Dynamic, x:Dynamic, y:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic, ?header:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Checks the elementwise equality of two masked arrays.
	**/
	static public function assert_array_equal(x:Dynamic, y:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Checks that x is smaller than y elementwise.
	**/
	static public function assert_array_less(x:Dynamic, y:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Asserts that two items are almost equal.
		
		The test is equivalent to abs(desired-actual) < 0.5 * 10**(-decimal).
	**/
	static public function assert_close(actual:Dynamic, desired:Dynamic, ?decimal:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Asserts that two items are equal.
	**/
	static public function assert_equal(actual:Dynamic, desired:Dynamic, ?err_msg:Dynamic):Dynamic;
	/**
		Asserts that two records are equal.
		
		Pretty crude for now.
	**/
	static public function assert_equal_records(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Asserts the equality of two masks.
	**/
	static public function assert_mask_equal(m1:Dynamic, m2:Dynamic, ?err_msg:Dynamic):Dynamic;
	/**
		Raises an assertion error if two items are equal.
	**/
	static public function assert_not_equal(actual:Dynamic, desired:Dynamic, ?err_msg:Dynamic):Dynamic;
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
	static public function build_err_msg(arrays:Dynamic, err_msg:Dynamic, ?header:Dynamic, ?verbose:Dynamic, ?names:Dynamic, ?precision:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Raises an assertion error if two masked arrays are not equal elementwise.
	**/
	static public function fail_if_array_equal(x:Dynamic, y:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Raises an assertion error if two items are equal.
	**/
	static public function fail_if_equal(actual:Dynamic, desired:Dynamic, ?err_msg:Dynamic):Dynamic;
	/**
		Return input as an array with masked data replaced by a fill value.
		
		If `a` is not a `MaskedArray`, `a` itself is returned.
		If `a` is a `MaskedArray` and `fill_value` is None, `fill_value` is set to
		``a.fill_value``.
		
		Parameters
		----------
		a : MaskedArray or array_like
		    An input object.
		fill_value : scalar, optional
		    Filling value. Default is None.
		
		Returns
		-------
		a : ndarray
		    The filled array.
		
		See Also
		--------
		compressed
		
		Examples
		--------
		>>> x = np.ma.array(np.arange(9).reshape(3, 3), mask=[[1, 0, 0],
		...                                                   [1, 0, 0],
		...                                                   [0, 0, 0]])
		>>> x.filled()
		array([[999999,      1,      2],
		       [999999,      4,      5],
		       [     6,      7,      8]])
	**/
	static public function filled(a:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Return the mask of a masked array, or nomask.
		
		Return the mask of `a` as an ndarray if `a` is a `MaskedArray` and the
		mask is not `nomask`, else return `nomask`. To guarantee a full array
		of booleans of the same shape as a, use `getmaskarray`.
		
		Parameters
		----------
		a : array_like
		    Input `MaskedArray` for which the mask is required.
		
		See Also
		--------
		getdata : Return the data of a masked array as an ndarray.
		getmaskarray : Return the mask of a masked array, or full array of False.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = ma.masked_equal([[1,2],[3,4]], 2)
		>>> a
		masked_array(data =
		 [[1 --]
		 [3 4]],
		      mask =
		 [[False  True]
		 [False False]],
		      fill_value=999999)
		>>> ma.getmask(a)
		array([[False,  True],
		       [False, False]], dtype=bool)
		
		Equivalently use the `MaskedArray` `mask` attribute.
		
		>>> a.mask
		array([[False,  True],
		       [False, False]], dtype=bool)
		
		Result when mask == `nomask`
		
		>>> b = ma.masked_array([[1,2],[3,4]])
		>>> b
		masked_array(data =
		 [[1 2]
		 [3 4]],
		      mask =
		 False,
		      fill_value=999999)
		>>> ma.nomask
		False
		>>> ma.getmask(b) == ma.nomask
		True
		>>> b.mask == ma.nomask
		True
	**/
	static public function getmask(a:Dynamic):Dynamic;
	/**
		Combine two masks with the ``logical_or`` operator.
		
		The result may be a view on `m1` or `m2` if the other is `nomask`
		(i.e. False).
		
		Parameters
		----------
		m1, m2 : array_like
		    Input masks.
		copy : bool, optional
		    If copy is False and one of the inputs is `nomask`, return a view
		    of the other input mask. Defaults to False.
		shrink : bool, optional
		    Whether to shrink the output to `nomask` if all its values are
		    False. Defaults to True.
		
		Returns
		-------
		mask : output mask
		    The result masks values that are masked in either `m1` or `m2`.
		
		Raises
		------
		ValueError
		    If `m1` and `m2` have different flexible dtypes.
		
		Examples
		--------
		>>> m1 = np.ma.make_mask([0, 1, 1, 0])
		>>> m2 = np.ma.make_mask([1, 0, 0, 0])
		>>> np.ma.mask_or(m1, m2)
		array([ True,  True,  True, False], dtype=bool)
	**/
	static public function mask_or(m1:Dynamic, m2:Dynamic, ?copy:Dynamic, ?shrink:Dynamic):Dynamic;
	static public var masked : Dynamic;
	static public var nomask : Dynamic;
	static public var print_function : Dynamic;
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
}