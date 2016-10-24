/* This file is generated, do not edit! */
package numpy.ma;
@:pythonImport("numpy.ma") extern class Ma_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _numpy_tester():Dynamic;
	/**
		absolute(x[, out])
		
		Calculate the absolute value element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		
		Examples
		--------
		>>> x = np.array([-1.2, 1.2])
		>>> np.absolute(x)
		array([ 1.2,  1.2])
		>>> np.absolute(1.2 + 1j)
		1.5620499351813308
		
		Plot the function over ``[-10, 10]``:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(start=-10, stop=10, num=101)
		>>> plt.plot(x, np.absolute(x))
		>>> plt.show()
		
		Plot the function over the complex plane:
		
		>>> xx = x + 1j * x[:, np.newaxis]
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10])
		>>> plt.show()
	**/
	static public function abs(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		absolute(x[, out])
		
		Calculate the absolute value element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		
		Examples
		--------
		>>> x = np.array([-1.2, 1.2])
		>>> np.absolute(x)
		array([ 1.2,  1.2])
		>>> np.absolute(1.2 + 1j)
		1.5620499351813308
		
		Plot the function over ``[-10, 10]``:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(start=-10, stop=10, num=101)
		>>> plt.plot(x, np.absolute(x))
		>>> plt.show()
		
		Plot the function over the complex plane:
		
		>>> xx = x + 1j * x[:, np.newaxis]
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10])
		>>> plt.show()
	**/
	static public function absolute(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	static public var absolute_import : Dynamic;
	/**
		add(x1, x2[, out])
		
		Add arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be added.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		add : ndarray or scalar
		    The sum of `x1` and `x2`, element-wise.  Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to `x1` + `x2` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.add(1.0, 4.0)
		5.0
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.add(x1, x2)
		array([[  0.,   2.,   4.],
		       [  3.,   5.,   7.],
		       [  6.,   8.,  10.]])
	**/
	static public function add(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		all(self, axis=None, out=None, keepdims=<class 'numpy._globals._NoValue'>)
		
		Returns True if all elements evaluate to True.
		
		The output array is masked where all the values along the given axis
		are masked: if the output would have been a scalar and that all the
		values are masked, then the output is `masked`.
		
		Refer to `numpy.all` for full documentation.
		
		See Also
		--------
		ndarray.all : corresponding function for ndarrays
		numpy.all : equivalent function
		
		Examples
		--------
		>>> np.ma.array([1,2,3]).all()
		True
		>>> a = np.ma.array([1,2,3], mask=True)
		>>> (a.all() is np.ma.masked)
		True
	**/
	static public function all(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns True if two arrays are element-wise equal within a tolerance.
		
		This function is equivalent to `allclose` except that masked values
		are treated as equal (default) or unequal, depending on the `masked_equal`
		argument.
		
		Parameters
		----------
		a, b : array_like
		    Input arrays to compare.
		masked_equal : bool, optional
		    Whether masked values in `a` and `b` are considered equal (True) or not
		    (False). They are considered equal by default.
		rtol : float, optional
		    Relative tolerance. The relative difference is equal to ``rtol * b``.
		    Default is 1e-5.
		atol : float, optional
		    Absolute tolerance. The absolute difference is equal to `atol`.
		    Default is 1e-8.
		
		Returns
		-------
		y : bool
		    Returns True if the two arrays are equal within the given
		    tolerance, False otherwise. If either array contains NaN, then
		    False is returned.
		
		See Also
		--------
		all, any
		numpy.allclose : the non-masked `allclose`.
		
		Notes
		-----
		If the following equation is element-wise True, then `allclose` returns
		True::
		
		  absolute(`a` - `b`) <= (`atol` + `rtol` * absolute(`b`))
		
		Return True if all elements of `a` and `b` are equal subject to
		given tolerances.
		
		Examples
		--------
		>>> a = ma.array([1e10, 1e-7, 42.0], mask=[0, 0, 1])
		>>> a
		masked_array(data = [10000000000.0 1e-07 --],
		             mask = [False False  True],
		       fill_value = 1e+20)
		>>> b = ma.array([1e10, 1e-8, -42.0], mask=[0, 0, 1])
		>>> ma.allclose(a, b)
		False
		
		>>> a = ma.array([1e10, 1e-8, 42.0], mask=[0, 0, 1])
		>>> b = ma.array([1.00001e10, 1e-9, -42.0], mask=[0, 0, 1])
		>>> ma.allclose(a, b)
		True
		>>> ma.allclose(a, b, masked_equal=False)
		False
		
		Masked values are not compared directly.
		
		>>> a = ma.array([1e10, 1e-8, 42.0], mask=[0, 0, 1])
		>>> b = ma.array([1.00001e10, 1e-9, 42.0], mask=[0, 0, 1])
		>>> ma.allclose(a, b)
		True
		>>> ma.allclose(a, b, masked_equal=False)
		False
	**/
	static public function allclose(a:Dynamic, b:Dynamic, ?masked_equal:Dynamic, ?rtol:Dynamic, ?atol:Dynamic):Bool;
	/**
		Return True if all entries of a and b are equal, using
		fill_value as a truth value where either or both are masked.
		
		Parameters
		----------
		a, b : array_like
		    Input arrays to compare.
		fill_value : bool, optional
		    Whether masked values in a or b are considered equal (True) or not
		    (False).
		
		Returns
		-------
		y : bool
		    Returns True if the two arrays are equal within the given
		    tolerance, False otherwise. If either array contains NaN,
		    then False is returned.
		
		See Also
		--------
		all, any
		numpy.ma.allclose
		
		Examples
		--------
		>>> a = ma.array([1e10, 1e-7, 42.0], mask=[0, 0, 1])
		>>> a
		masked_array(data = [10000000000.0 1e-07 --],
		      mask = [False False  True],
		      fill_value=1e+20)
		
		>>> b = array([1e10, 1e-7, -42.0])
		>>> b
		array([  1.00000000e+10,   1.00000000e-07,  -4.20000000e+01])
		>>> ma.allequal(a, b, fill_value=False)
		False
		>>> ma.allequal(a, b)
		True
	**/
	static public function allequal(a:Dynamic, b:Dynamic, ?fill_value:Dynamic):Bool;
	/**
		Reduce `target` along the given `axis`.
	**/
	static public function alltrue(target:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return the maximum of an array or maximum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, the maximum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `amax` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-classes `sum` method does not implement `keepdims` any
		    exceptions will be raised.
		
		Returns
		-------
		amax : ndarray or scalar
		    Maximum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is an array of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		amin :
		    The minimum value of an array along a given axis, propagating any NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignoring any NaNs.
		maximum :
		    Element-wise maximum of two arrays, propagating any NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignoring any NaNs.
		argmax :
		    Return the indices of the maximum values.
		
		nanmin, minimum, fmin
		
		Notes
		-----
		NaN values are propagated, that is if at least one item is NaN, the
		corresponding max value will be NaN as well. To ignore NaN values
		(MATLAB behavior), please use nanmax.
		
		Don't use `amax` for element-wise comparison of 2 arrays; when
		``a.shape[0]`` is 2, ``maximum(a[0], a[1])`` is faster than
		``amax(a, axis=0)``.
		
		Examples
		--------
		>>> a = np.arange(4).reshape((2,2))
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> np.amax(a)           # Maximum of the flattened array
		3
		>>> np.amax(a, axis=0)   # Maxima along the first axis
		array([2, 3])
		>>> np.amax(a, axis=1)   # Maxima along the second axis
		array([1, 3])
		
		>>> b = np.arange(5, dtype=np.float)
		>>> b[2] = np.NaN
		>>> np.amax(b)
		nan
		>>> np.nanmax(b)
		4.0
	**/
	static public function amax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the minimum of an array or minimum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, the minimum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `amin` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-classes `sum` method does not implement `keepdims` any
		    exceptions will be raised.
		
		Returns
		-------
		amin : ndarray or scalar
		    Minimum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is an array of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		amax :
		    The maximum value of an array along a given axis, propagating any NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignoring any NaNs.
		minimum :
		    Element-wise minimum of two arrays, propagating any NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignoring any NaNs.
		argmin :
		    Return the indices of the minimum values.
		
		nanmax, maximum, fmax
		
		Notes
		-----
		NaN values are propagated, that is if at least one item is NaN, the
		corresponding min value will be NaN as well. To ignore NaN values
		(MATLAB behavior), please use nanmin.
		
		Don't use `amin` for element-wise comparison of 2 arrays; when
		``a.shape[0]`` is 2, ``minimum(a[0], a[1])`` is faster than
		``amin(a, axis=0)``.
		
		Examples
		--------
		>>> a = np.arange(4).reshape((2,2))
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> np.amin(a)           # Minimum of the flattened array
		0
		>>> np.amin(a, axis=0)   # Minima along the first axis
		array([0, 1])
		>>> np.amin(a, axis=1)   # Minima along the second axis
		array([0, 2])
		
		>>> b = np.arange(5, dtype=np.float)
		>>> b[2] = np.NaN
		>>> np.amin(b)
		nan
		>>> np.nanmin(b)
		0.0
	**/
	static public function amin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the angle of the complex argument.
		
		Parameters
		----------
		z : array_like
		    A complex number or sequence of complex numbers.
		deg : bool, optional
		    Return angle in degrees if True, radians if False (default).
		
		Returns
		-------
		angle : ndarray or scalar
		    The counterclockwise angle from the positive real axis on
		    the complex plane, with dtype as numpy.float64.
		
		See Also
		--------
		arctan2
		absolute
		
		
		
		Examples
		--------
		>>> np.angle([1.0, 1.0j, 1+1j])               # in radians
		array([ 0.        ,  1.57079633,  0.78539816])
		>>> np.angle(1+1j, deg=True)                  # in degrees
		45.0
	**/
	static public function angle(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		anom(self, axis=None, dtype=None)
		
		Compute the anomalies (deviations from the arithmetic mean)
		along the given axis.
		
		Returns an array of anomalies, with the same shape as the input and
		where the arithmetic mean is computed along the given axis.
		
		Parameters
		----------
		axis : int, optional
		    Axis over which the anomalies are taken.
		    The default is to use the mean of the flattened array as reference.
		dtype : dtype, optional
		    Type to use in computing the variance. For arrays of integer type
		     the default is float32; for arrays of float types it is the same as
		     the array type.
		
		See Also
		--------
		mean : Compute the mean of the array.
		
		Examples
		--------
		>>> a = np.ma.array([1,2,3])
		>>> a.anom()
		masked_array(data = [-1.  0.  1.],
		             mask = False,
		       fill_value = 1e+20)
	**/
	static public function anom(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		anom(self, axis=None, dtype=None)
		
		Compute the anomalies (deviations from the arithmetic mean)
		along the given axis.
		
		Returns an array of anomalies, with the same shape as the input and
		where the arithmetic mean is computed along the given axis.
		
		Parameters
		----------
		axis : int, optional
		    Axis over which the anomalies are taken.
		    The default is to use the mean of the flattened array as reference.
		dtype : dtype, optional
		    Type to use in computing the variance. For arrays of integer type
		     the default is float32; for arrays of float types it is the same as
		     the array type.
		
		See Also
		--------
		mean : Compute the mean of the array.
		
		Examples
		--------
		>>> a = np.ma.array([1,2,3])
		>>> a.anom()
		masked_array(data = [-1.  0.  1.],
		             mask = False,
		       fill_value = 1e+20)
	**/
	static public function anomalies(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		any(self, axis=None, out=None, keepdims=<class 'numpy._globals._NoValue'>)
		
		Returns True if any of the elements of `a` evaluate to True.
		
		Masked values are considered as False during computation.
		
		Refer to `numpy.any` for full documentation.
		
		See Also
		--------
		ndarray.any : corresponding function for ndarrays
		numpy.any : equivalent function
	**/
	static public function any(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Append values to the end of an array.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		a : array_like
		    Values are appended to a copy of this array.
		b : array_like
		    These values are appended to a copy of `a`.  It must be of the
		    correct shape (the same shape as `a`, excluding `axis`).  If `axis`
		    is not specified, `b` can be any shape and will be flattened
		    before use.
		axis : int, optional
		    The axis along which `v` are appended.  If `axis` is not given,
		    both `a` and `b` are flattened before use.
		
		Returns
		-------
		append : MaskedArray
		    A copy of `a` with `b` appended to `axis`.  Note that `append`
		    does not occur in-place: a new array is allocated and filled.  If
		    `axis` is None, the result is a flattened array.
		
		See Also
		--------
		numpy.append : Equivalent function in the top-level NumPy module.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = ma.masked_values([1, 2, 3], 2)
		>>> b = ma.masked_values([[4, 5, 6], [7, 8, 9]], 7)
		>>> print(ma.append(a, b))
		[1 -- 3 4 5 6 -- 8 9]
	**/
	static public function append(a:Dynamic, b:Dynamic, ?axis:Dynamic):numpy.ma.MaskedArray;
	/**
		Apply a function to 1-D slices along the given axis.
		
		Execute `func1d(a, *args)` where `func1d` operates on 1-D arrays and `a`
		is a 1-D slice of `arr` along `axis`.
		
		Parameters
		----------
		func1d : function
		    This function should accept 1-D arrays. It is applied to 1-D
		    slices of `arr` along the specified axis.
		axis : integer
		    Axis along which `arr` is sliced.
		arr : ndarray
		    Input array.
		args : any
		    Additional arguments to `func1d`.
		kwargs: any
		    Additional named arguments to `func1d`.
		
		    .. versionadded:: 1.9.0
		
		
		Returns
		-------
		apply_along_axis : ndarray
		    The output array. The shape of `outarr` is identical to the shape of
		    `arr`, except along the `axis` dimension, where the length of `outarr`
		    is equal to the size of the return value of `func1d`.  If `func1d`
		    returns a scalar `outarr` will have one fewer dimensions than `arr`.
		
		See Also
		--------
		apply_over_axes : Apply a function repeatedly over multiple axes.
		
		Examples
		--------
		>>> def my_func(a):
		...     """Average first and last element of a 1-D array"""
		...     return (a[0] + a[-1]) * 0.5
		>>> b = np.array([[1,2,3], [4,5,6], [7,8,9]])
		>>> np.apply_along_axis(my_func, 0, b)
		array([ 4.,  5.,  6.])
		>>> np.apply_along_axis(my_func, 1, b)
		array([ 2.,  5.,  8.])
		
		For a function that doesn't return a scalar, the number of dimensions in
		`outarr` is the same as `arr`.
		
		>>> b = np.array([[8,1,7], [4,3,9], [5,2,6]])
		>>> np.apply_along_axis(sorted, 1, b)
		array([[1, 7, 8],
		       [3, 4, 9],
		       [2, 5, 6]])
	**/
	static public function apply_along_axis(func1d:Dynamic, axis:Dynamic, arr:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Apply a function repeatedly over multiple axes.
		
		`func` is called as `res = func(a, axis)`, where `axis` is the first
		element of `axes`.  The result `res` of the function call must have
		either the same dimensions as `a` or one less dimension.  If `res`
		has one less dimension than `a`, a dimension is inserted before
		`axis`.  The call to `func` is then repeated for each axis in `axes`,
		with `res` as the first argument.
		
		Parameters
		----------
		func : function
		    This function must take two arguments, `func(a, axis)`.
		a : array_like
		    Input array.
		axes : array_like
		    Axes over which `func` is applied; the elements must be integers.
		
		Returns
		-------
		apply_over_axis : ndarray
		    The output array.  The number of dimensions is the same as `a`,
		    but the shape can be different.  This depends on whether `func`
		    changes the shape of its output with respect to its input.
		
		See Also
		--------
		apply_along_axis :
		    Apply a function to 1-D slices of an array along the given axis.
		
		Examples
		--------
		>>> a = ma.arange(24).reshape(2,3,4)
		>>> a[:,0,1] = ma.masked
		>>> a[:,1,:] = ma.masked
		>>> print(a)
		[[[0 -- 2 3]
		  [-- -- -- --]
		  [8 9 10 11]]
		
		 [[12 -- 14 15]
		  [-- -- -- --]
		  [20 21 22 23]]]
		>>> print(ma.apply_over_axes(ma.sum, a, [0,2]))
		[[[46]
		  [--]
		  [124]]]
		
		Tuple axis arguments to ufuncs are equivalent:
		
		>>> print(ma.sum(a, axis=(0,2)).reshape((1,-1,1)))
		[[[46]
		  [--]
		  [124]]]
	**/
	static public function apply_over_axes(func:Dynamic, a:Dynamic, axes:Dynamic):numpy.Ndarray;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range <http://docs.python.org/lib/built-in-funcs.html>`_ function,
		but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use ``linspace`` for these cases.
		
		Parameters
		----------
		start : number, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : number
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : number, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified, `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		See Also
		--------
		linspace : Evenly spaced numbers with careful handling of endpoints.
		ogrid: Arrays of evenly spaced numbers in N-dimensions.
		mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
		Examples
		--------
		>>> np.arange(3)
		array([0, 1, 2])
		>>> np.arange(3.0)
		array([ 0.,  1.,  2.])
		>>> np.arange(3,7)
		array([3, 4, 5, 6])
		>>> np.arange(3,7,2)
		array([3, 5])
	**/
	static public function arange(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		arccos(x[, out])
		
		Trigonometric inverse cosine, element-wise.
		
		The inverse of `cos` so that, if ``y = cos(x)``, then ``x = arccos(y)``.
		
		Parameters
		----------
		x : array_like
		    `x`-coordinate on the unit circle.
		    For real arguments, the domain is [-1, 1].
		
		out : ndarray, optional
		    Array of the same shape as `a`, to store results in. See
		    `doc.ufuncs` (Section "Output arguments") for more details.
		
		Returns
		-------
		angle : ndarray
		    The angle of the ray intersecting the unit circle at the given
		    `x`-coordinate in radians [0, pi]. If `x` is a scalar then a
		    scalar is returned, otherwise an array of the same shape as `x`
		    is returned.
		
		See Also
		--------
		cos, arctan, arcsin, emath.arccos
		
		Notes
		-----
		`arccos` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `cos(z) = x`. The convention is to return
		the angle `z` whose real part lies in `[0, pi]`.
		
		For real-valued input data types, `arccos` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccos` is a complex analytic function that
		has branch cuts `[-inf, -1]` and `[1, inf]` and is continuous from
		above on the former and from below on the latter.
		
		The inverse `cos` is also known as `acos` or cos^-1.
		
		References
		----------
		M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		10th printing, 1964, pp. 79. http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		We expect the arccos of 1 to be 0, and of -1 to be pi:
		
		>>> np.arccos([1, -1])
		array([ 0.        ,  3.14159265])
		
		Plot arccos:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-1, 1, num=100)
		>>> plt.plot(x, np.arccos(x))
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function arccos(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		arccosh(x[, out])
		
		Inverse hyperbolic cosine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Array of the same shape as `x`, to store results in.
		    See `doc.ufuncs` (Section "Output arguments") for details.
		
		
		Returns
		-------
		arccosh : ndarray
		    Array of the same shape as `x`.
		
		See Also
		--------
		
		cosh, arcsinh, sinh, arctanh, tanh
		
		Notes
		-----
		`arccosh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `cosh(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]` and the real part in
		``[0, inf]``.
		
		For real-valued input data types, `arccosh` always returns real output.
		For each value that cannot be expressed as a real number or infinity, it
		yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccosh` is a complex analytical function that
		has a branch cut `[-inf, 1]` and is continuous from above on it.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       http://en.wikipedia.org/wiki/Arccosh
		
		Examples
		--------
		>>> np.arccosh([np.e, 10.0])
		array([ 1.65745445,  2.99322285])
		>>> np.arccosh(1)
		0.0
	**/
	static public function arccosh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		arcsin(x[, out])
		
		Inverse sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    `y`-coordinate on the unit circle.
		
		out : ndarray, optional
		    Array of the same shape as `x`, in which to store the results.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		
		Returns
		-------
		angle : ndarray
		    The inverse sine of each element in `x`, in radians and in the
		    closed interval ``[-pi/2, pi/2]``.  If `x` is a scalar, a scalar
		    is returned, otherwise an array.
		
		See Also
		--------
		sin, cos, arccos, tan, arctan, arctan2, emath.arcsin
		
		Notes
		-----
		`arcsin` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that :math:`sin(z) = x`.  The convention is to
		return the angle `z` whose real part lies in [-pi/2, pi/2].
		
		For real-valued input data types, *arcsin* always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arcsin` is a complex analytic function that
		has, by convention, the branch cuts [-inf, -1] and [1, inf]  and is
		continuous from above on the former and from below on the latter.
		
		The inverse sine is also known as `asin` or sin^{-1}.
		
		References
		----------
		Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
		10th printing, New York: Dover, 1964, pp. 79ff.
		http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		>>> np.arcsin(1)     # pi/2
		1.5707963267948966
		>>> np.arcsin(-1)    # -pi/2
		-1.5707963267948966
		>>> np.arcsin(0)
		0.0
	**/
	static public function arcsin(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		arcsinh(x[, out])
		
		Inverse hyperbolic sine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See `doc.ufuncs`.
		
		Returns
		-------
		out : ndarray
		    Array of of the same shape as `x`.
		
		Notes
		-----
		`arcsinh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `sinh(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi/2, pi/2]`.
		
		For real-valued input data types, `arcsinh` always returns real output.
		For each value that cannot be expressed as a real number or infinity, it
		returns ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccos` is a complex analytical function that
		has branch cuts `[1j, infj]` and `[-1j, -infj]` and is continuous from
		the right on the former and from the left on the latter.
		
		The inverse hyperbolic sine is also known as `asinh` or ``sinh^-1``.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       http://en.wikipedia.org/wiki/Arcsinh
		
		Examples
		--------
		>>> np.arcsinh(np.array([np.e, 10.0]))
		array([ 1.72538256,  2.99822295])
	**/
	static public function arcsinh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		arctan(x[, out])
		
		Trigonometric inverse tangent, element-wise.
		
		The inverse of tan, so that if ``y = tan(x)`` then ``x = arctan(y)``.
		
		Parameters
		----------
		x : array_like
		    Input values.  `arctan` is applied to each element of `x`.
		
		Returns
		-------
		out : ndarray
		    Out has the same shape as `x`.  Its real part is in
		    ``[-pi/2, pi/2]`` (``arctan(+/-inf)`` returns ``+/-pi/2``).
		    It is a scalar if `x` is a scalar.
		
		See Also
		--------
		arctan2 : The "four quadrant" arctan of the angle formed by (`x`, `y`)
		    and the positive `x`-axis.
		angle : Argument of complex values.
		
		Notes
		-----
		`arctan` is a multi-valued function: for each `x` there are infinitely
		many numbers `z` such that tan(`z`) = `x`.  The convention is to return
		the angle `z` whose real part lies in [-pi/2, pi/2].
		
		For real-valued input data types, `arctan` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arctan` is a complex analytic function that
		has [`1j, infj`] and [`-1j, -infj`] as branch cuts, and is continuous
		from the left on the former and from the right on the latter.
		
		The inverse tangent is also known as `atan` or tan^{-1}.
		
		References
		----------
		Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
		10th printing, New York: Dover, 1964, pp. 79.
		http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		We expect the arctan of 0 to be 0, and of 1 to be pi/4:
		
		>>> np.arctan([0, 1])
		array([ 0.        ,  0.78539816])
		
		>>> np.pi/4
		0.78539816339744828
		
		Plot arctan:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-10, 10)
		>>> plt.plot(x, np.arctan(x))
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function arctan(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		arctan2(x1, x2[, out])
		
		Element-wise arc tangent of ``x1/x2`` choosing the quadrant correctly.
		
		The quadrant (i.e., branch) is chosen so that ``arctan2(x1, x2)`` is
		the signed angle in radians between the ray ending at the origin and
		passing through the point (1,0), and the ray ending at the origin and
		passing through the point (`x2`, `x1`).  (Note the role reversal: the
		"`y`-coordinate" is the first function parameter, the "`x`-coordinate"
		is the second.)  By IEEE convention, this function is defined for
		`x2` = +/-0 and for either or both of `x1` and `x2` = +/-inf (see
		Notes for specific values).
		
		This function is not defined for complex-valued arguments; for the
		so-called argument of complex values, use `angle`.
		
		Parameters
		----------
		x1 : array_like, real-valued
		    `y`-coordinates.
		x2 : array_like, real-valued
		    `x`-coordinates. `x2` must be broadcastable to match the shape of
		    `x1` or vice versa.
		
		Returns
		-------
		angle : ndarray
		    Array of angles in radians, in the range ``[-pi, pi]``.
		
		See Also
		--------
		arctan, tan, angle
		
		Notes
		-----
		*arctan2* is identical to the `atan2` function of the underlying
		C library.  The following special values are defined in the C
		standard: [1]_
		
		====== ====== ================
		`x1`   `x2`   `arctan2(x1,x2)`
		====== ====== ================
		+/- 0  +0     +/- 0
		+/- 0  -0     +/- pi
		 > 0   +/-inf +0 / +pi
		 < 0   +/-inf -0 / -pi
		+/-inf +inf   +/- (pi/4)
		+/-inf -inf   +/- (3*pi/4)
		====== ====== ================
		
		Note that +0 and -0 are distinct floating point numbers, as are +inf
		and -inf.
		
		References
		----------
		.. [1] ISO/IEC standard 9899:1999, "Programming language C."
		
		Examples
		--------
		Consider four points in different quadrants:
		
		>>> x = np.array([-1, +1, +1, -1])
		>>> y = np.array([-1, -1, +1, +1])
		>>> np.arctan2(y, x) * 180 / np.pi
		array([-135.,  -45.,   45.,  135.])
		
		Note the order of the parameters. `arctan2` is defined also when `x2` = 0
		and at several other special points, obtaining values in
		the range ``[-pi, pi]``:
		
		>>> np.arctan2([1., -1.], [0., 0.])
		array([ 1.57079633, -1.57079633])
		>>> np.arctan2([0., 0., np.inf], [+0., -0., np.inf])
		array([ 0.        ,  3.14159265,  0.78539816])
	**/
	static public function arctan2(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		arctanh(x[, out])
		
		Inverse hyperbolic tangent element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Array of the same shape as `x`.
		
		See Also
		--------
		emath.arctanh
		
		Notes
		-----
		`arctanh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `tanh(z) = x`. The convention is to return
		the `z` whose imaginary part lies in `[-pi/2, pi/2]`.
		
		For real-valued input data types, `arctanh` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arctanh` is a complex analytical function
		that has branch cuts `[-1, -inf]` and `[1, inf]` and is continuous from
		above on the former and from below on the latter.
		
		The inverse hyperbolic tangent is also known as `atanh` or ``tanh^-1``.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       http://en.wikipedia.org/wiki/Arctanh
		
		Examples
		--------
		>>> np.arctanh([0, -0.5])
		array([ 0.        , -0.54930614])
	**/
	static public function arctanh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		argmax(self, axis=None, fill_value=None, out=None)
		
		Returns array of indices of the maximum values along the given axis.
		Masked values are treated as if they had the value fill_value.
		
		Parameters
		----------
		axis : {None, integer}
		    If None, the index is into the flattened array, otherwise along
		    the specified axis
		fill_value : {var}, optional
		    Value used to fill in the masked values.  If None, the output of
		    maximum_fill_value(self._data) is used instead.
		out : {None, array}, optional
		    Array into which the result can be placed. Its type is preserved
		    and it must be of the right shape to hold the output.
		
		Returns
		-------
		index_array : {integer_array}
		
		Examples
		--------
		>>> a = np.arange(6).reshape(2,3)
		>>> a.argmax()
		5
		>>> a.argmax(0)
		array([1, 1, 1])
		>>> a.argmax(1)
		array([2, 2])
	**/
	static public function argmax(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		argmin(self, axis=None, fill_value=None, out=None)
		
		Return array of indices to the minimum values along the given axis.
		
		Parameters
		----------
		axis : {None, integer}
		    If None, the index is into the flattened array, otherwise along
		    the specified axis
		fill_value : {var}, optional
		    Value used to fill in the masked values.  If None, the output of
		    minimum_fill_value(self._data) is used instead.
		out : {None, array}, optional
		    Array into which the result can be placed. Its type is preserved
		    and it must be of the right shape to hold the output.
		
		Returns
		-------
		ndarray or scalar
		    If multi-dimension input, returns a new ndarray of indices to the
		    minimum values along the given axis.  Otherwise, returns a scalar
		    of index to the minimum values along the given axis.
		
		Examples
		--------
		>>> x = np.ma.array(arange(4), mask=[1,1,0,0])
		>>> x.shape = (2,2)
		>>> print(x)
		[[-- --]
		 [2 3]]
		>>> print(x.argmin(axis=0, fill_value=-1))
		[0 0]
		>>> print(x.argmin(axis=0, fill_value=9))
		[1 1]
	**/
	static public function argmin(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an ndarray of indices that sort the array along the
		specified axis.  Masked values are filled beforehand to
		`fill_value`.
		
		Parameters
		----------
		axis : int, optional
		    Axis along which to sort.  The default is -1 (last axis).
		    If None, the flattened array is used.
		fill_value : var, optional
		    Value used to fill the array before sorting.
		    The default is the `fill_value` attribute of the input array.
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    Sorting algorithm.
		order : list, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  Not all fields need be
		    specified.
		
		Returns
		-------
		index_array : ndarray, int
		    Array of indices that sort `a` along the specified axis.
		    In other words, ``a[index_array]`` yields a sorted `a`.
		
		See Also
		--------
		sort : Describes sorting algorithms used.
		lexsort : Indirect stable sort with multiple keys.
		ndarray.sort : Inplace sort.
		
		Notes
		-----
		See `sort` for notes on the different sorting algorithms.
		
		Examples
		--------
		>>> a = np.ma.array([3,2,1], mask=[False, False, True])
		>>> a
		masked_array(data = [3 2 --],
		             mask = [False False  True],
		       fill_value = 999999)
		>>> a.argsort()
		array([1, 0, 2])
	**/
	static public function argsort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Round an array to the given number of decimals.
		
		Refer to `around` for full documentation.
		
		See Also
		--------
		around : equivalent function
	**/
	static public function around(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		An array class with possibly masked values.
		
		Masked values of True exclude the corresponding element from any
		computation.
		
		Construction::
		
		  x = MaskedArray(data, mask=nomask, dtype=None, copy=False, subok=True,
		                  ndmin=0, fill_value=None, keep_mask=True, hard_mask=None,
		                  shrink=True, order=None)
		
		Parameters
		----------
		data : array_like
		    Input data.
		mask : sequence, optional
		    Mask. Must be convertible to an array of booleans with the same
		    shape as `data`. True indicates a masked (i.e. invalid) data.
		dtype : dtype, optional
		    Data type of the output.
		    If `dtype` is None, the type of the data argument (``data.dtype``)
		    is used. If `dtype` is not None and different from ``data.dtype``,
		    a copy is performed.
		copy : bool, optional
		    Whether to copy the input data (True), or to use a reference instead.
		    Default is False.
		subok : bool, optional
		    Whether to return a subclass of `MaskedArray` if possible (True) or a
		    plain `MaskedArray`. Default is True.
		ndmin : int, optional
		    Minimum number of dimensions. Default is 0.
		fill_value : scalar, optional
		    Value used to fill in the masked values when necessary.
		    If None, a default based on the data-type is used.
		keep_mask : bool, optional
		    Whether to combine `mask` with the mask of the input data, if any
		    (True), or to use only `mask` for the output (False). Default is True.
		hard_mask : bool, optional
		    Whether to use a hard mask or not. With a hard mask, masked values
		    cannot be unmasked. Default is False.
		shrink : bool, optional
		    Whether to force compression of an empty mask. Default is True.
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C', then the array
		    will be in C-contiguous order (last-index varies the fastest).
		    If order is 'F', then the returned array will be in
		    Fortran-contiguous order (first-index varies the fastest).
		    If order is 'A' (default), then the returned array may be
		    in any order (either C-, Fortran-contiguous, or even discontiguous),
		    unless a copy is required, in which case it will be C-contiguous.
	**/
	static public function array(data:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?order:Dynamic, ?mask:Dynamic, ?fill_value:Dynamic, ?keep_mask:Dynamic, ?hard_mask:Dynamic, ?shrink:Dynamic, ?subok:Dynamic, ?ndmin:Dynamic):Dynamic;
	/**
		Convert the input to a masked array, conserving subclasses.
		
		If `a` is a subclass of `MaskedArray`, its class is conserved.
		No copy is performed if the input is already an `ndarray`.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.
		dtype : dtype, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major ('C') or column-major ('FORTRAN') memory
		    representation.  Default is 'C'.
		
		Returns
		-------
		out : MaskedArray
		    MaskedArray interpretation of `a`.
		
		See Also
		--------
		asarray : Similar to `asanyarray`, but does not conserve subclass.
		
		Examples
		--------
		>>> x = np.arange(10.).reshape(2, 5)
		>>> x
		array([[ 0.,  1.,  2.,  3.,  4.],
		       [ 5.,  6.,  7.,  8.,  9.]])
		>>> np.ma.asanyarray(x)
		masked_array(data =
		 [[ 0.  1.  2.  3.  4.]
		 [ 5.  6.  7.  8.  9.]],
		             mask =
		 False,
		       fill_value = 1e+20)
		>>> type(np.ma.asanyarray(x))
		<class 'numpy.ma.core.MaskedArray'>
	**/
	static public function asanyarray(a:Dynamic, ?dtype:Dynamic):numpy.ma.MaskedArray;
	/**
		Convert the input to a masked array of the given data-type.
		
		No copy is performed if the input is already an `ndarray`. If `a` is
		a subclass of `MaskedArray`, a base class `MaskedArray` is returned.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to a masked array. This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists, ndarrays and masked arrays.
		dtype : dtype, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major ('C') or column-major ('FORTRAN') memory
		    representation.  Default is 'C'.
		
		Returns
		-------
		out : MaskedArray
		    Masked array interpretation of `a`.
		
		See Also
		--------
		asanyarray : Similar to `asarray`, but conserves subclasses.
		
		Examples
		--------
		>>> x = np.arange(10.).reshape(2, 5)
		>>> x
		array([[ 0.,  1.,  2.,  3.,  4.],
		       [ 5.,  6.,  7.,  8.,  9.]])
		>>> np.ma.asarray(x)
		masked_array(data =
		 [[ 0.  1.  2.  3.  4.]
		 [ 5.  6.  7.  8.  9.]],
		             mask =
		 False,
		       fill_value = 1e+20)
		>>> type(np.ma.asarray(x))
		<class 'numpy.ma.core.MaskedArray'>
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.ma.MaskedArray;
	/**
		atleast_1d(*arys)
		
		    Convert inputs to arrays with at least one dimension.
		
		    Scalar inputs are converted to 1-dimensional arrays, whilst
		    higher-dimensional inputs are preserved.
		
		    Parameters
		    ----------
		    arys1, arys2, ... : array_like
		        One or more input arrays.
		
		    Returns
		    -------
		    ret : ndarray
		        An array, or sequence of arrays, each with ``a.ndim >= 1``.
		        Copies are made only if necessary.
		
		    See Also
		    --------
		    atleast_2d, atleast_3d
		
		    Examples
		    --------
		    >>> np.atleast_1d(1.0)
		    array([ 1.])
		
		    >>> x = np.arange(9.0).reshape(3,3)
		    >>> np.atleast_1d(x)
		    array([[ 0.,  1.,  2.],
		           [ 3.,  4.,  5.],
		           [ 6.,  7.,  8.]])
		    >>> np.atleast_1d(x) is x
		    True
		
		    >>> np.atleast_1d(1, [3, 4])
		    [array([1]), array([3, 4])]
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function atleast_1d(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		atleast_2d(*arys)
		
		    View inputs as arrays with at least two dimensions.
		
		    Parameters
		    ----------
		    arys1, arys2, ... : array_like
		        One or more array-like sequences.  Non-array inputs are converted
		        to arrays.  Arrays that already have two or more dimensions are
		        preserved.
		
		    Returns
		    -------
		    res, res2, ... : ndarray
		        An array, or tuple of arrays, each with ``a.ndim >= 2``.
		        Copies are avoided where possible, and views with two or more
		        dimensions are returned.
		
		    See Also
		    --------
		    atleast_1d, atleast_3d
		
		    Examples
		    --------
		    >>> np.atleast_2d(3.0)
		    array([[ 3.]])
		
		    >>> x = np.arange(3.0)
		    >>> np.atleast_2d(x)
		    array([[ 0.,  1.,  2.]])
		    >>> np.atleast_2d(x).base is x
		    True
		
		    >>> np.atleast_2d(1, [1, 2], [[1, 2]])
		    [array([[1]]), array([[1, 2]]), array([[1, 2]])]
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function atleast_2d(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		atleast_3d(*arys)
		
		    View inputs as arrays with at least three dimensions.
		
		    Parameters
		    ----------
		    arys1, arys2, ... : array_like
		        One or more array-like sequences.  Non-array inputs are converted to
		        arrays.  Arrays that already have three or more dimensions are
		        preserved.
		
		    Returns
		    -------
		    res1, res2, ... : ndarray
		        An array, or tuple of arrays, each with ``a.ndim >= 3``.  Copies are
		        avoided where possible, and views with three or more dimensions are
		        returned.  For example, a 1-D array of shape ``(N,)`` becomes a view
		        of shape ``(1, N, 1)``, and a 2-D array of shape ``(M, N)`` becomes a
		        view of shape ``(M, N, 1)``.
		
		    See Also
		    --------
		    atleast_1d, atleast_2d
		
		    Examples
		    --------
		    >>> np.atleast_3d(3.0)
		    array([[[ 3.]]])
		
		    >>> x = np.arange(3.0)
		    >>> np.atleast_3d(x).shape
		    (1, 3, 1)
		
		    >>> x = np.arange(12.0).reshape(4,3)
		    >>> np.atleast_3d(x).shape
		    (4, 3, 1)
		    >>> np.atleast_3d(x).base is x
		    True
		
		    >>> for arr in np.atleast_3d([1, 2], [[1, 2]], [[[1, 2]]]):
		    ...     print(arr, arr.shape)
		    ...
		    [[[1]
		      [2]]] (1, 2, 1)
		    [[[1]
		      [2]]] (1, 2, 1)
		    [[[1 2]]] (1, 1, 2)
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function atleast_3d(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the weighted average of array over the given axis.
		
		Parameters
		----------
		a : array_like
		    Data to be averaged.
		    Masked entries are not taken into account in the computation.
		axis : int, optional
		    Axis along which to average `a`. If `None`, averaging is done over
		    the flattened array.
		weights : array_like, optional
		    The importance that each element has in the computation of the average.
		    The weights array can either be 1-D (in which case its length must be
		    the size of `a` along the given axis) or of the same shape as `a`.
		    If ``weights=None``, then all data in `a` are assumed to have a
		    weight equal to one.   If `weights` is complex, the imaginary parts
		    are ignored.
		returned : bool, optional
		    Flag indicating whether a tuple ``(result, sum of weights)``
		    should be returned as output (True), or just the result (False).
		    Default is False.
		
		Returns
		-------
		average, [sum_of_weights] : (tuple of) scalar or MaskedArray
		    The average along the specified axis. When returned is `True`,
		    return a tuple with the average as the first element and the sum
		    of the weights as the second element. The return type is `np.float64`
		    if `a` is of integer type and floats smaller than `float64`, or the
		    input data-type, otherwise. If returned, `sum_of_weights` is always
		    `float64`.
		
		Examples
		--------
		>>> a = np.ma.array([1., 2., 3., 4.], mask=[False, False, True, True])
		>>> np.ma.average(a, weights=[3, 1, 0, 0])
		1.25
		
		>>> x = np.ma.arange(6.).reshape(3, 2)
		>>> print(x)
		[[ 0.  1.]
		 [ 2.  3.]
		 [ 4.  5.]]
		>>> avg, sumweights = np.ma.average(x, axis=0, weights=[1, 2, 3],
		...                                 returned=True)
		>>> print(avg)
		[2.66666666667 3.66666666667]
	**/
	static public function average(a:Dynamic, ?axis:Dynamic, ?weights:Dynamic, ?returned:Dynamic):Dynamic;
	/**
		Run benchmarks for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the benchmarks to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow benchmarks as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for benchmark outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		
		Returns
		-------
		success : bool
		    Returns True if running the benchmarks works, False if an error
		    occurred.
		
		Notes
		-----
		Benchmarks are like tests, but have names starting with "bench" instead
		of "test", and can be found under the "benchmarks" sub-directory of the
		module.
		
		Each NumPy module exposes `bench` in its namespace to run all benchmarks
		for it.
		
		Examples
		--------
		>>> success = np.lib.bench() #doctest: +SKIP
		Running benchmarks for numpy.lib
		...
		using 562341 items:
		unique:
		0.11
		unique1d:
		0.11
		ratio: 1.0
		nUnique: 56230 == 56230
		...
		OK
		
		>>> success #doctest: +SKIP
		True
	**/
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Bool;
	/**
		bitwise_and(x1, x2[, out])
		
		Compute the bit-wise AND of two arrays element-wise.
		
		Computes the bit-wise AND of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``&``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		
		Returns
		-------
		out : array_like
		    Result.
		
		See Also
		--------
		logical_and
		bitwise_or
		bitwise_xor
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Examples
		--------
		The number 13 is represented by ``00001101``.  Likewise, 17 is
		represented by ``00010001``.  The bit-wise AND of 13 and 17 is
		therefore ``000000001``, or 1:
		
		>>> np.bitwise_and(13, 17)
		1
		
		>>> np.bitwise_and(14, 13)
		12
		>>> np.binary_repr(12)
		'1100'
		>>> np.bitwise_and([14,3], 13)
		array([12,  1])
		
		>>> np.bitwise_and([11,7], [4,25])
		array([0, 1])
		>>> np.bitwise_and(np.array([2,5,255]), np.array([3,14,16]))
		array([ 2,  4, 16])
		>>> np.bitwise_and([True, True], [False, True])
		array([False,  True], dtype=bool)
	**/
	static public function bitwise_and(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):python.NativeIterable<Dynamic>;
	/**
		bitwise_or(x1, x2[, out])
		
		Compute the bit-wise OR of two arrays element-wise.
		
		Computes the bit-wise OR of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``|``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		out : array_like
		    Result.
		
		See Also
		--------
		logical_or
		bitwise_and
		bitwise_xor
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Examples
		--------
		The number 13 has the binaray representation ``00001101``. Likewise,
		16 is represented by ``00010000``.  The bit-wise OR of 13 and 16 is
		then ``000111011``, or 29:
		
		>>> np.bitwise_or(13, 16)
		29
		>>> np.binary_repr(29)
		'11101'
		
		>>> np.bitwise_or(32, 2)
		34
		>>> np.bitwise_or([33, 4], 1)
		array([33,  5])
		>>> np.bitwise_or([33, 4], [1, 2])
		array([33,  6])
		
		>>> np.bitwise_or(np.array([2, 5, 255]), np.array([4, 4, 4]))
		array([  6,   5, 255])
		>>> np.array([2, 5, 255]) | np.array([4, 4, 4])
		array([  6,   5, 255])
		>>> np.bitwise_or(np.array([2, 5, 255, 2147483647L], dtype=np.int32),
		...               np.array([4, 4, 4, 2147483647L], dtype=np.int32))
		array([         6,          5,        255, 2147483647])
		>>> np.bitwise_or([True, True], [False, True])
		array([ True,  True], dtype=bool)
	**/
	static public function bitwise_or(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):python.NativeIterable<Dynamic>;
	/**
		bitwise_xor(x1, x2[, out])
		
		Compute the bit-wise XOR of two arrays element-wise.
		
		Computes the bit-wise XOR of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``^``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		
		Returns
		-------
		out : array_like
		    Result.
		
		See Also
		--------
		logical_xor
		bitwise_and
		bitwise_or
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Examples
		--------
		The number 13 is represented by ``00001101``. Likewise, 17 is
		represented by ``00010001``.  The bit-wise XOR of 13 and 17 is
		therefore ``00011100``, or 28:
		
		>>> np.bitwise_xor(13, 17)
		28
		>>> np.binary_repr(28)
		'11100'
		
		>>> np.bitwise_xor(31, 5)
		26
		>>> np.bitwise_xor([31,3], 5)
		array([26,  6])
		
		>>> np.bitwise_xor([31,3], [5,6])
		array([26,  5])
		>>> np.bitwise_xor([True, True], [False, True])
		array([ True, False], dtype=bool)
	**/
	static public function bitwise_xor(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):python.NativeIterable<Dynamic>;
	/**
		ceil(x[, out])
		
		Return the ceiling of the input, element-wise.
		
		The ceil of the scalar `x` is the smallest integer `i`, such that
		`i >= x`.  It is often denoted as :math:`\lceil x \rceil`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		y : ndarray or scalar
		    The ceiling of each element in `x`, with `float` dtype.
		
		See Also
		--------
		floor, trunc, rint
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.ceil(a)
		array([-1., -1., -0.,  1.,  2.,  2.,  2.])
	**/
	static public function ceil(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Use an index array to construct a new array from a set of choices.
		
		Given an array of integers and a set of n choice arrays, this method
		will create a new array that merges each of the choice arrays.  Where a
		value in `a` is i, the new array will have the value that choices[i]
		contains in the same place.
		
		Parameters
		----------
		a : ndarray of ints
		    This array must contain integers in ``[0, n-1]``, where n is the
		    number of choices.
		choices : sequence of arrays
		    Choice arrays. The index array and all of the choices should be
		    broadcastable to the same shape.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and `dtype`.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		
		    * 'raise' : raise an error
		    * 'wrap' : wrap around
		    * 'clip' : clip to the range
		
		Returns
		-------
		merged_array : array
		
		See Also
		--------
		choose : equivalent function
		
		Examples
		--------
		>>> choice = np.array([[1,1,1], [2,2,2], [3,3,3]])
		>>> a = np.array([2, 1, 0])
		>>> np.ma.choose(a, choice)
		masked_array(data = [3 2 1],
		      mask = False,
		      fill_value=999999)
	**/
	static public function choose(indices:Dynamic, choices:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Clip (limit) the values in an array.
		
		Given an interval, values outside the interval are clipped to
		the interval edges.  For example, if an interval of ``[0, 1]``
		is specified, values smaller than 0 become 0, and values larger
		than 1 become 1.
		
		Parameters
		----------
		a : array_like
		    Array containing elements to clip.
		a_min : scalar or array_like
		    Minimum value.
		a_max : scalar or array_like
		    Maximum value.  If `a_min` or `a_max` are array_like, then they will
		    be broadcasted to the shape of `a`.
		out : ndarray, optional
		    The results will be placed in this array. It may be the input
		    array for in-place clipping.  `out` must be of the right shape
		    to hold the output.  Its type is preserved.
		
		Returns
		-------
		clipped_array : ndarray
		    An array with the elements of `a`, but where values
		    < `a_min` are replaced with `a_min`, and those > `a_max`
		    with `a_max`.
		
		See Also
		--------
		numpy.doc.ufuncs : Section "Output arguments"
		
		Examples
		--------
		>>> a = np.arange(10)
		>>> np.clip(a, 1, 8)
		array([1, 1, 2, 3, 4, 5, 6, 7, 8, 8])
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.clip(a, 3, 6, out=a)
		array([3, 3, 3, 3, 4, 5, 6, 6, 6, 6])
		>>> a = np.arange(10)
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.clip(a, [3,4,1,1,1,4,4,4,4,4], 8)
		array([3, 4, 2, 3, 4, 5, 6, 7, 8, 8])
	**/
	static public function clip(a:Dynamic, a_min:Dynamic, a_max:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Returns a list of slices corresponding to the masked clumps of a 1-D array.
		(A "clump" is defined as a contiguous region of the array).
		
		Parameters
		----------
		a : ndarray
		    A one-dimensional masked array.
		
		Returns
		-------
		slices : list of slice
		    The list of slices, one for each continuous region of masked elements
		    in `a`.
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		See Also
		--------
		flatnotmasked_edges, flatnotmasked_contiguous, notmasked_edges,
		notmasked_contiguous, clump_unmasked
		
		Examples
		--------
		>>> a = np.ma.masked_array(np.arange(10))
		>>> a[[0, 1, 2, 6, 8, 9]] = np.ma.masked
		>>> np.ma.clump_masked(a)
		[slice(0, 3, None), slice(6, 7, None), slice(8, 10, None)]
	**/
	static public function clump_masked(a:Dynamic):Dynamic;
	/**
		Return list of slices corresponding to the unmasked clumps of a 1-D array.
		(A "clump" is defined as a contiguous region of the array).
		
		Parameters
		----------
		a : ndarray
		    A one-dimensional masked array.
		
		Returns
		-------
		slices : list of slice
		    The list of slices, one for each continuous region of unmasked
		    elements in `a`.
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		See Also
		--------
		flatnotmasked_edges, flatnotmasked_contiguous, notmasked_edges,
		notmasked_contiguous, clump_masked
		
		Examples
		--------
		>>> a = np.ma.masked_array(np.arange(10))
		>>> a[[0, 1, 2, 6, 8, 9]] = np.ma.masked
		>>> np.ma.clump_unmasked(a)
		[slice(3, 6, None), slice(7, 8, None)]
	**/
	static public function clump_unmasked(a:Dynamic):Dynamic;
	/**
		column_stack(tup)
		
		    Stack 1-D arrays as columns into a 2-D array.
		
		    Take a sequence of 1-D arrays and stack them as columns
		    to make a single 2-D array. 2-D arrays are stacked as-is,
		    just like with `hstack`.  1-D arrays are turned into 2-D columns
		    first.
		
		    Parameters
		    ----------
		    tup : sequence of 1-D or 2-D arrays.
		        Arrays to stack. All of them must have the same first dimension.
		
		    Returns
		    -------
		    stacked : 2-D array
		        The array formed by stacking the given arrays.
		
		    See Also
		    --------
		    hstack, vstack, concatenate
		
		    Examples
		    --------
		    >>> a = np.array((1,2,3))
		    >>> b = np.array((2,3,4))
		    >>> np.column_stack((a,b))
		    array([[1, 2],
		           [2, 3],
		           [3, 4]])
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function column_stack(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the common filling value of two masked arrays, if any.
		
		If ``a.fill_value == b.fill_value``, return the fill value,
		otherwise return None.
		
		Parameters
		----------
		a, b : MaskedArray
		    The masked arrays for which to compare fill values.
		
		Returns
		-------
		fill_value : scalar or None
		    The common fill value, or None.
		
		Examples
		--------
		>>> x = np.ma.array([0, 1.], fill_value=3)
		>>> y = np.ma.array([0, 1.], fill_value=3)
		>>> np.ma.common_fill_value(x, y)
		3.0
	**/
	static public function common_fill_value(a:Dynamic, b:Dynamic):Dynamic;
	/**
		compress(self, condition, axis=None, out=None)
		
		Return `a` where condition is ``True``.
		
		If condition is a `MaskedArray`, missing values are considered
		as ``False``.
		
		Parameters
		----------
		condition : var
		    Boolean 1-d array selecting which entries to return. If len(condition)
		    is less than the size of a along the axis, then output is truncated
		    to length of condition array.
		axis : {None, int}, optional
		    Axis along which the operation must be performed.
		out : {None, ndarray}, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output but the type will be cast if
		    necessary.
		
		Returns
		-------
		result : MaskedArray
		    A :class:`MaskedArray` object.
		
		Notes
		-----
		Please note the difference with :meth:`compressed` !
		The output of :meth:`compress` has a mask, the output of
		:meth:`compressed` does not.
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> print(x)
		[[1 -- 3]
		 [-- 5 --]
		 [7 -- 9]]
		>>> x.compress([1, 0, 1])
		masked_array(data = [1 3],
		      mask = [False False],
		      fill_value=999999)
		
		>>> x.compress([1, 0, 1], axis=1)
		masked_array(data =
		 [[1 3]
		 [-- --]
		 [7 9]],
		      mask =
		 [[False False]
		 [ True  True]
		 [False False]],
		      fill_value=999999)
	**/
	static public function compress(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
	/**
		Suppress whole columns of a 2-D array that contain masked values.
		
		This is equivalent to ``np.ma.compress_rowcols(a, 1)``, see
		`extras.compress_rowcols` for details.
		
		See Also
		--------
		extras.compress_rowcols
	**/
	static public function compress_cols(a:Dynamic):Dynamic;
	/**
		Supress slices from multiple dimensions which contain masked values.
		
		Parameters
		----------
		x : array_like, MaskedArray
		    The array to operate on. If not a MaskedArray instance (or if no array
		    elements are masked, `x` is interpreted as a MaskedArray with `mask`
		    set to `nomask`.
		axis : tuple of ints or int, optional
		    Which dimensions to supress slices from can be configured with this
		    parameter.
		    - If axis is a tuple of ints, those are the axes to supress slices from.
		    - If axis is an int, then that is the only axis to supress slices from.
		    - If axis is None, all axis are selected.
		
		Returns
		-------
		compress_array : ndarray
		    The compressed array.
	**/
	static public function compress_nd(x:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Suppress the rows and/or columns of a 2-D array that contain
		masked values.
		
		The suppression behavior is selected with the `axis` parameter.
		
		- If axis is None, both rows and columns are suppressed.
		- If axis is 0, only rows are suppressed.
		- If axis is 1 or -1, only columns are suppressed.
		
		Parameters
		----------
		x : array_like, MaskedArray
		    The array to operate on.  If not a MaskedArray instance (or if no array
		    elements are masked), `x` is interpreted as a MaskedArray with
		    `mask` set to `nomask`. Must be a 2D array.
		axis : int, optional
		    Axis along which to perform the operation. Default is None.
		
		Returns
		-------
		compressed_array : ndarray
		    The compressed array.
		
		Examples
		--------
		>>> x = np.ma.array(np.arange(9).reshape(3, 3), mask=[[1, 0, 0],
		...                                                   [1, 0, 0],
		...                                                   [0, 0, 0]])
		>>> x
		masked_array(data =
		 [[-- 1 2]
		 [-- 4 5]
		 [6 7 8]],
		             mask =
		 [[ True False False]
		 [ True False False]
		 [False False False]],
		       fill_value = 999999)
		
		>>> np.ma.compress_rowcols(x)
		array([[7, 8]])
		>>> np.ma.compress_rowcols(x, 0)
		array([[6, 7, 8]])
		>>> np.ma.compress_rowcols(x, 1)
		array([[1, 2],
		       [4, 5],
		       [7, 8]])
	**/
	static public function compress_rowcols(x:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Suppress whole rows of a 2-D array that contain masked values.
		
		This is equivalent to ``np.ma.compress_rowcols(a, 0)``, see
		`extras.compress_rowcols` for details.
		
		See Also
		--------
		extras.compress_rowcols
	**/
	static public function compress_rows(a:Dynamic):Dynamic;
	/**
		Return all the non-masked data as a 1-D array.
		
		This function is equivalent to calling the "compressed" method of a
		`MaskedArray`, see `MaskedArray.compressed` for details.
		
		See Also
		--------
		MaskedArray.compressed
		    Equivalent method.
	**/
	static public function compressed(x:Dynamic):Dynamic;
	/**
		Concatenate a sequence of arrays along the given axis.
		
		Parameters
		----------
		arrays : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined. Default is 0.
		
		Returns
		-------
		result : MaskedArray
		    The concatenated array with any masked entries preserved.
		
		See Also
		--------
		numpy.concatenate : Equivalent function in the top-level NumPy module.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = ma.arange(3)
		>>> a[1] = ma.masked
		>>> b = ma.arange(2, 5)
		>>> a
		masked_array(data = [0 -- 2],
		             mask = [False  True False],
		       fill_value = 999999)
		>>> b
		masked_array(data = [2 3 4],
		             mask = False,
		       fill_value = 999999)
		>>> ma.concatenate([a, b])
		masked_array(data = [0 -- 2 2 3 4],
		             mask = [False  True False False False False],
		       fill_value = 999999)
	**/
	static public function concatenate(arrays:Dynamic, ?axis:Dynamic):numpy.ma.MaskedArray;
	/**
		conjugate(x[, out])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
		
		Returns
		-------
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		
		Examples
		--------
		>>> np.conjugate(1+2j)
		(1-2j)
		
		>>> x = np.eye(2) + 1j * np.eye(2)
		>>> np.conjugate(x)
		array([[ 1.-1.j,  0.-0.j],
		       [ 0.-0.j,  1.-1.j]])
	**/
	static public function conjugate(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		copy(self, *args, **params)
		a.copy(order='C')
		
		    Return a copy of the array.
		
		    Parameters
		    ----------
		    order : {'C', 'F', 'A', 'K'}, optional
		        Controls the memory layout of the copy. 'C' means C-order,
		        'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		        'C' otherwise. 'K' means match the layout of `a` as closely
		        as possible. (Note that this function and :func:numpy.copy are very
		        similar, but have different default values for their order=
		        arguments.)
		
		    See also
		    --------
		    numpy.copy
		    numpy.copyto
		
		    Examples
		    --------
		    >>> x = np.array([[1,2,3],[4,5,6]], order='F')
		
		    >>> y = x.copy()
		
		    >>> x.fill(0)
		
		    >>> x
		    array([[0, 0, 0],
		           [0, 0, 0]])
		
		    >>> y
		    array([[1, 2, 3],
		           [4, 5, 6]])
		
		    >>> y.flags['C_CONTIGUOUS']
		    True
	**/
	static public function copy(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return Pearson product-moment correlation coefficients.
		
		Except for the handling of missing data this function does the same as
		`numpy.corrcoef`. For more details and examples, see `numpy.corrcoef`.
		
		Parameters
		----------
		x : array_like
		    A 1-D or 2-D array containing multiple variables and observations.
		    Each row of `x` represents a variable, and each column a single
		    observation of all those variables. Also see `rowvar` below.
		y : array_like, optional
		    An additional set of variables and observations. `y` has the same
		    shape as `x`.
		rowvar : bool, optional
		    If `rowvar` is True (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : _NoValue, optional
		    Has no effect, do not use.
		
		    .. deprecated:: 1.10.0
		allow_masked : bool, optional
		    If True, masked values are propagated pair-wise: if a value is masked
		    in `x`, the corresponding value is masked in `y`.
		    If False, raises an exception.  Because `bias` is deprecated, this
		    argument needs to be treated as keyword only to avoid a warning.
		ddof : _NoValue, optional
		    Has no effect, do not use.
		
		    .. deprecated:: 1.10.0
		
		See Also
		--------
		numpy.corrcoef : Equivalent function in top-level NumPy module.
		cov : Estimate the covariance matrix.
		
		Notes
		-----
		This function accepts but discards arguments `bias` and `ddof`.  This is
		for backwards compatibility with previous versions of this function.  These
		arguments had no effect on the return values of the function and can be
		safely ignored in this and previous versions of numpy.
	**/
	static public function corrcoef(x:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?allow_masked:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		cos(x[, out])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding cosine values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> np.cos(np.array([0, np.pi/2, np.pi]))
		array([  1.00000000e+00,   6.12303177e-17,  -1.00000000e+00])
		>>>
		>>> # Example of providing the optional output parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function cos(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		cosh(x[, out])
		
		Hyperbolic cosine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) + np.exp(-x))`` and ``np.cos(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Output array of same shape as `x`.
		
		Examples
		--------
		>>> np.cosh(0)
		1.0
		
		The hyperbolic cosine describes the shape of a hanging cable:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-4, 4, 1000)
		>>> plt.plot(x, np.cosh(x))
		>>> plt.show()
	**/
	static public function cosh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		count(self, axis=None, keepdims=<class 'numpy._globals._NoValue'>)
		
		Count the non-masked elements of the array along the given axis.
		
		Parameters
		----------
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the count is performed.
		    The default (`axis` = `None`) performs the count over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.10.0
		
		    If this is a tuple of ints, the count is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		Returns
		-------
		result : ndarray or scalar
		    An array with the same shape as the input array, with the specified
		    axis removed. If the array is a 0-d array, or if `axis` is None, a
		    scalar is returned.
		
		See Also
		--------
		count_masked : Count masked elements in array or along a given axis.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = ma.arange(6).reshape((2, 3))
		>>> a[1, :] = ma.masked
		>>> a
		masked_array(data =
		 [[0 1 2]
		 [-- -- --]],
		             mask =
		 [[False False False]
		 [ True  True  True]],
		       fill_value = 999999)
		>>> a.count()
		3
		
		When the `axis` keyword is specified an array of appropriate size is
		returned.
		
		>>> a.count(axis=0)
		array([1, 1, 1])
		>>> a.count(axis=1)
		array([3, 0])
	**/
	static public function count(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Count the number of masked elements along the given axis.
		
		Parameters
		----------
		arr : array_like
		    An array with (possibly) masked elements.
		axis : int, optional
		    Axis along which to count. If None (default), a flattened
		    version of the array is used.
		
		Returns
		-------
		count : int, ndarray
		    The total number of masked elements (axis=None) or the number
		    of masked elements along each slice of the given axis.
		
		See Also
		--------
		MaskedArray.count : Count non-masked elements.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.arange(9).reshape((3,3))
		>>> a = ma.array(a)
		>>> a[1, 0] = ma.masked
		>>> a[1, 2] = ma.masked
		>>> a[2, 1] = ma.masked
		>>> a
		masked_array(data =
		 [[0 1 2]
		 [-- 4 --]
		 [6 -- 8]],
		      mask =
		 [[False False False]
		 [ True False  True]
		 [False  True False]],
		      fill_value=999999)
		>>> ma.count_masked(a)
		3
		
		When the `axis` keyword is used an array is returned.
		
		>>> ma.count_masked(a, axis=0)
		array([1, 1, 1])
		>>> ma.count_masked(a, axis=1)
		array([0, 2, 1])
	**/
	static public function count_masked(arr:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Estimate the covariance matrix.
		
		Except for the handling of missing data this function does the same as
		`numpy.cov`. For more details and examples, see `numpy.cov`.
		
		By default, masked values are recognized as such. If `x` and `y` have the
		same shape, a common mask is allocated: if ``x[i,j]`` is masked, then
		``y[i,j]`` will also be masked.
		Setting `allow_masked` to False will raise an exception if values are
		missing in either of the input arrays.
		
		Parameters
		----------
		x : array_like
		    A 1-D or 2-D array containing multiple variables and observations.
		    Each row of `x` represents a variable, and each column a single
		    observation of all those variables. Also see `rowvar` below.
		y : array_like, optional
		    An additional set of variables and observations. `y` has the same
		    form as `x`.
		rowvar : bool, optional
		    If `rowvar` is True (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : bool, optional
		    Default normalization (False) is by ``(N-1)``, where ``N`` is the
		    number of observations given (unbiased estimate). If `bias` is True,
		    then normalization is by ``N``. This keyword can be overridden by
		    the keyword ``ddof`` in numpy versions >= 1.5.
		allow_masked : bool, optional
		    If True, masked values are propagated pair-wise: if a value is masked
		    in `x`, the corresponding value is masked in `y`.
		    If False, raises a `ValueError` exception when some values are missing.
		ddof : {None, int}, optional
		    If not ``None`` normalization is by ``(N - ddof)``, where ``N`` is
		    the number of observations; this overrides the value implied by
		    ``bias``. The default value is ``None``.
		
		    .. versionadded:: 1.5
		
		Raises
		------
		ValueError
		    Raised if some values are missing and `allow_masked` is False.
		
		See Also
		--------
		numpy.cov
	**/
	static public function cov(x:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?allow_masked:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		cumprod(self, axis=None, dtype=None, out=None)
		
		Return the cumulative product of the array elements over the given axis.
		
		Masked values are set to 1 internally during the computation.
		However, their position is saved, and the result will be masked at
		the same locations.
		
		Refer to `numpy.cumprod` for full documentation.
		
		Notes
		-----
		The mask is lost if `out` is not a valid MaskedArray !
		
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		See Also
		--------
		ndarray.cumprod : corresponding function for ndarrays
		numpy.cumprod : equivalent function
	**/
	static public function cumprod(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		cumsum(self, axis=None, dtype=None, out=None)
		
		Return the cumulative sum of the array elements over the given axis.
		
		Masked values are set to 0 internally during the computation.
		However, their position is saved, and the result will be masked at
		the same locations.
		
		Refer to `numpy.cumsum` for full documentation.
		
		Notes
		-----
		The mask is lost if `out` is not a valid :class:`MaskedArray` !
		
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		See Also
		--------
		ndarray.cumsum : corresponding function for ndarrays
		numpy.cumsum : equivalent function
		
		Examples
		--------
		>>> marr = np.ma.array(np.arange(10), mask=[0,0,0,1,1,1,0,0,0,0])
		>>> print(marr.cumsum())
		[0 1 3 -- -- -- 9 16 24 33]
	**/
	static public function cumsum(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the default fill value for the argument object.
		
		The default filling value depends on the datatype of the input
		array or the type of the input scalar:
		
		   ========  ========
		   datatype  default
		   ========  ========
		   bool      True
		   int       999999
		   float     1.e20
		   complex   1.e20+0j
		   object    '?'
		   string    'N/A'
		   ========  ========
		
		
		Parameters
		----------
		obj : ndarray, dtype or scalar
		    The array data-type or scalar for which the default fill value
		    is returned.
		
		Returns
		-------
		fill_value : scalar
		    The default fill value.
		
		Examples
		--------
		>>> np.ma.default_fill_value(1)
		999999
		>>> np.ma.default_fill_value(np.array([1.1, 2., np.pi]))
		1e+20
		>>> np.ma.default_fill_value(np.dtype(complex))
		(1e+20+0j)
	**/
	static public function default_fill_value(obj:Dynamic):Dynamic;
	/**
		Extract a diagonal or construct a diagonal array.
		
		This function is the equivalent of `numpy.diag` that takes masked
		values into account, see `numpy.diag` for details.
		
		See Also
		--------
		numpy.diag : Equivalent function for ndarrays.
	**/
	static public function diag(v:Dynamic, ?k:Dynamic):Dynamic;
	/**
		diagflat(v, k=0)
		
		    Create a two-dimensional array with the flattened input as a diagonal.
		
		    Parameters
		    ----------
		    v : array_like
		        Input data, which is flattened and set as the `k`-th
		        diagonal of the output.
		    k : int, optional
		        Diagonal to set; 0, the default, corresponds to the "main" diagonal,
		        a positive (negative) `k` giving the number of the diagonal above
		        (below) the main.
		
		    Returns
		    -------
		    out : ndarray
		        The 2-D output array.
		
		    See Also
		    --------
		    diag : MATLAB work-alike for 1-D and 2-D arrays.
		    diagonal : Return specified diagonals.
		    trace : Sum along diagonals.
		
		    Examples
		    --------
		    >>> np.diagflat([[1,2], [3,4]])
		    array([[1, 0, 0, 0],
		           [0, 2, 0, 0],
		           [0, 0, 3, 0],
		           [0, 0, 0, 4]])
		
		    >>> np.diagflat([1,2], 1)
		    array([[0, 1, 0],
		           [0, 0, 2],
		           [0, 0, 0]])
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function diagflat(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		diagonal(self, *args, **params)
		a.diagonal(offset=0, axis1=0, axis2=1)
		
		    Return specified diagonals. In NumPy 1.9 the returned array is a
		    read-only view instead of a copy as in previous NumPy versions.  In
		    a future version the read-only restriction will be removed.
		
		    Refer to :func:`numpy.diagonal` for full documentation.
		
		    See Also
		    --------
		    numpy.diagonal : equivalent function
	**/
	static public function diagonal(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		    Calculate the n-th discrete difference along given axis.
		
		    The first difference is given by ``out[n] = a[n+1] - a[n]`` along
		    the given axis, higher differences are calculated by using `diff`
		    recursively.
		
		    Parameters
		    ----------
		    a : array_like
		        Input array
		    n : int, optional
		        The number of times values are differenced.
		    axis : int, optional
		        The axis along which the difference is taken, default is the last axis.
		
		    Returns
		    -------
		    diff : ndarray
		        The n-th differences. The shape of the output is the same as `a`
		        except along `axis` where the dimension is smaller by `n`.
		.
		
		    See Also
		    --------
		    gradient, ediff1d, cumsum
		
		    Examples
		    --------
		    >>> x = np.array([1, 2, 4, 7, 0])
		    >>> np.diff(x)
		    array([ 1,  2,  3, -7])
		    >>> np.diff(x, n=2)
		    array([  1,   1, -10])
		
		    >>> x = np.array([[1, 3, 6, 10], [0, 5, 6, 8]])
		    >>> np.diff(x)
		    array([[2, 3, 4],
		           [5, 1, 2]])
		    >>> np.diff(x, axis=0)
		    array([[-1,  2,  0, -2]])
		
		    
	**/
	static public function diff(a:Dynamic, ?n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		true_divide(x1, x2[, out])
		
		Returns a true division of the inputs, element-wise.
		
		Instead of the Python traditional 'floor division', this returns a true
		division.  True division adjusts the output type to present the best
		answer, regardless of input types.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		
		Returns
		-------
		out : ndarray
		    Result is scalar if both inputs are scalar, ndarray otherwise.
		
		Notes
		-----
		The floor division operator ``//`` was added in Python 2.2 making
		``//`` and ``/`` equivalent operators.  The default floor division
		operation of ``/`` can be replaced by true division with ``from
		__future__ import division``.
		
		In Python 3.0, ``//`` is the floor division operator and ``/`` the
		true division operator.  The ``true_divide(x1, x2)`` function is
		equivalent to true division in Python.
		
		Examples
		--------
		>>> x = np.arange(5)
		>>> np.true_divide(x, 4)
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x/4
		array([0, 0, 0, 0, 1])
		>>> x//4
		array([0, 0, 0, 0, 1])
		
		>>> from __future__ import division
		>>> x/4
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		>>> x//4
		array([0, 0, 0, 0, 1])
	**/
	static public function divide(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	static public var division : Dynamic;
	/**
		Return the dot product of two arrays.
		
		This function is the equivalent of `numpy.dot` that takes masked values
		into account. Note that `strict` and `out` are in different position
		than in the method version. In order to maintain compatibility with the
		corresponding method, it is recommended that the optional arguments be
		treated as keyword only.  At some point that may be mandatory.
		
		.. note::
		  Works only with 2-D arrays at the moment.
		
		
		Parameters
		----------
		a, b : masked_array_like
		    Inputs arrays.
		strict : bool, optional
		    Whether masked data are propagated (True) or set to 0 (False) for
		    the computation. Default is False.  Propagating the mask means that
		    if a masked value appears in a row or column, the whole row or
		    column is considered masked.
		out : masked_array, optional
		    Output argument. This must have the exact kind that would be returned
		    if it was not used. In particular, it must have the right type, must be
		    C-contiguous, and its dtype must be the dtype that would be returned
		    for `dot(a,b)`. This is a performance feature. Therefore, if these
		    conditions are not met, an exception is raised, instead of attempting
		    to be flexible.
		
		    .. versionadded:: 1.10.2
		
		See Also
		--------
		numpy.dot : Equivalent function for ndarrays.
		
		Examples
		--------
		>>> a = ma.array([[1, 2, 3], [4, 5, 6]], mask=[[1, 0, 0], [0, 0, 0]])
		>>> b = ma.array([[1, 2], [3, 4], [5, 6]], mask=[[1, 0], [0, 0], [0, 0]])
		>>> np.ma.dot(a, b)
		masked_array(data =
		 [[21 26]
		 [45 64]],
		             mask =
		 [[False False]
		 [False False]],
		       fill_value = 999999)
		>>> np.ma.dot(a, b, strict=True)
		masked_array(data =
		 [[-- --]
		 [-- 64]],
		             mask =
		 [[ True  True]
		 [ True False]],
		       fill_value = 999999)
	**/
	static public function dot(a:Dynamic, b:Dynamic, ?strict:Dynamic, ?out:Dynamic):Dynamic;
	/**
		dstack(tup)
		
		    Stack arrays in sequence depth wise (along third axis).
		
		    Takes a sequence of arrays and stack them along the third axis
		    to make a single array. Rebuilds arrays divided by `dsplit`.
		    This is a simple way to stack 2D arrays (images) into a single
		    3D array for processing.
		
		    Parameters
		    ----------
		    tup : sequence of arrays
		        Arrays to stack. All of them must have the same shape along all
		        but the third axis.
		
		    Returns
		    -------
		    stacked : ndarray
		        The array formed by stacking the given arrays.
		
		    See Also
		    --------
		    stack : Join a sequence of arrays along a new axis.
		    vstack : Stack along first axis.
		    hstack : Stack along second axis.
		    concatenate : Join a sequence of arrays along an existing axis.
		    dsplit : Split array along third axis.
		
		    Notes
		    -----
		    Equivalent to ``np.concatenate(tup, axis=2)``.
		
		    Examples
		    --------
		    >>> a = np.array((1,2,3))
		    >>> b = np.array((2,3,4))
		    >>> np.dstack((a,b))
		    array([[[1, 2],
		            [2, 3],
		            [3, 4]]])
		
		    >>> a = np.array([[1],[2],[3]])
		    >>> b = np.array([[2],[3],[4]])
		    >>> np.dstack((a,b))
		    array([[[1, 2]],
		           [[2, 3]],
		           [[3, 4]]])
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function dstack(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pickle a masked array to a file.
		
		This is a wrapper around ``cPickle.dump``.
		
		Parameters
		----------
		a : MaskedArray
		    The array to be pickled.
		F : str or file-like object
		    The file to pickle `a` to. If a string, the full path to the file.
	**/
	static public function dump(a:Dynamic, F:Dynamic):Dynamic;
	/**
		Return a string corresponding to the pickling of a masked array.
		
		This is a wrapper around ``cPickle.dumps``.
		
		Parameters
		----------
		a : MaskedArray
		    The array for which the string representation of the pickle is
		    returned.
	**/
	static public function dumps(a:Dynamic):Dynamic;
	/**
		Compute the differences between consecutive elements of an array.
		
		This function is the equivalent of `numpy.ediff1d` that takes masked
		values into account, see `numpy.ediff1d` for details.
		
		See Also
		--------
		numpy.ediff1d : Equivalent function for ndarrays.
	**/
	static public function ediff1d(arr:Dynamic, ?to_end:Dynamic, ?to_begin:Dynamic):Dynamic;
	/**
		empty(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, without initializing entries.
		
		Parameters
		----------
		shape : int or tuple of int
		    Shape of the empty array
		dtype : data-type, optional
		    Desired output data-type.
		order : {'C', 'F'}, optional
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data of the given shape, dtype, and
		    order.  Object arrays will be initialized to None.
		
		See Also
		--------
		empty_like, zeros, ones
		
		Notes
		-----
		`empty`, unlike `zeros`, does not set the array values to zero,
		and may therefore be marginally faster.  On the other hand, it requires
		the user to manually set all the values in the array, and should be
		used with caution.
		
		Examples
		--------
		>>> np.empty([2, 2])
		array([[ -9.74499359e+001,   6.69583040e-309],
		       [  2.13182611e-314,   3.06959433e-309]])         #random
		
		>>> np.empty([2, 2], dtype=int)
		array([[-1073741821, -1067949133],
		       [  496041986,    19249760]])                     #random
	**/
	static public function empty(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		empty_like(a, dtype=None, order='K', subok=True)
		
		Return a new array with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of the
		    returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if ``a`` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of ``a`` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the same
		    shape and type as `a`.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		
		Notes
		-----
		This function does *not* initialize the returned array; to do that use
		`zeros_like` or `ones_like` instead.  It may be marginally faster than
		the functions that do set the array values.
		
		Examples
		--------
		>>> a = ([1,2,3], [4,5,6])                         # a is array-like
		>>> np.empty_like(a)
		array([[-1073741821, -1073741821,           3],    #random
		       [          0,           0, -1073741821]])
		>>> a = np.array([[1., 2., 3.],[4.,5.,6.]])
		>>> np.empty_like(a)
		array([[ -2.00000715e+000,   1.48219694e-323,  -2.00000572e+000],#random
		       [  4.38791518e-305,  -2.00000715e+000,   4.17269252e-309]])
	**/
	static public function empty_like(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		equal(x1, x2[, out])
		
		Return (x1 == x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays of the same shape.
		
		Returns
		-------
		out : ndarray or bool
		    Output array of bools, or a single bool if x1 and x2 are scalars.
		
		See Also
		--------
		not_equal, greater_equal, less_equal, greater, less
		
		Examples
		--------
		>>> np.equal([0, 1, 3], np.arange(3))
		array([ True,  True, False], dtype=bool)
		
		What is compared are values, not types. So an int (1) and an array of
		length one can evaluate as True:
		
		>>> np.equal(1, np.ones(1))
		array([ True], dtype=bool)
	**/
	static public function equal(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		exp(x[, out])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		out : ndarray
		    Output array, element-wise exponential of `x`.
		
		See Also
		--------
		expm1 : Calculate ``exp(x) - 1`` for all elements in the array.
		exp2  : Calculate ``2**x`` for all elements in the array.
		
		Notes
		-----
		The irrational number ``e`` is also known as Euler's number.  It is
		approximately 2.718281, and is the base of the natural logarithm,
		``ln`` (this means that, if :math:`x = \ln y = \log_e y`,
		then :math:`e^x = y`. For real input, ``exp(x)`` is always positive.
		
		For complex arguments, ``x = a + ib``, we can write
		:math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
		known (it is the real argument, described above).  The second term,
		:math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
		magnitude 1 and a periodic phase.
		
		References
		----------
		.. [1] Wikipedia, "Exponential function",
		       http://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       http://www.math.sfu.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Expand the shape of an array.
		
		Expands the shape of the array by including a new axis before the one
		specified by the `axis` parameter. This function behaves the same as
		`numpy.expand_dims` but preserves masked elements.
		
		See Also
		--------
		numpy.expand_dims : Equivalent function in top-level NumPy module.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> x = ma.array([1, 2, 4])
		>>> x[1] = ma.masked
		>>> x
		masked_array(data = [1 -- 4],
		             mask = [False  True False],
		       fill_value = 999999)
		>>> np.expand_dims(x, axis=0)
		array([[1, 2, 4]])
		>>> ma.expand_dims(x, axis=0)
		masked_array(data =
		 [[1 -- 4]],
		             mask =
		 [[False  True False]],
		       fill_value = 999999)
		
		The same result can be achieved using slicing syntax with `np.newaxis`.
		
		>>> x[np.newaxis, :]
		masked_array(data =
		 [[1 -- 4]],
		             mask =
		 [[False  True False]],
		       fill_value = 999999)
	**/
	static public function expand_dims(x:Dynamic, axis:Dynamic):Dynamic;
	/**
		fabs(x[, out])
		
		Compute the absolute values element-wise.
		
		This function returns the absolute values (positive magnitude) of the
		data in `x`. Complex values are not handled, use `absolute` to find the
		absolute values of complex data.
		
		Parameters
		----------
		x : array_like
		    The array of numbers for which the absolute values are required. If
		    `x` is a scalar, the result `y` will also be a scalar.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		y : ndarray or scalar
		    The absolute values of `x`, the returned values are always floats.
		
		See Also
		--------
		absolute : Absolute values including `complex` types.
		
		Examples
		--------
		>>> np.fabs(-1)
		1.0
		>>> np.fabs([-1.2, 1.2])
		array([ 1.2,  1.2])
	**/
	static public function fabs(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function filled(a:Dynamic, ?fill_value:Dynamic):numpy.Ndarray;
	/**
		Return input with invalid data masked and replaced by a fill value.
		
		Invalid data means values of `nan`, `inf`, etc.
		
		Parameters
		----------
		a : array_like
		    Input array, a (subclass of) ndarray.
		mask : sequence, optional
		    Mask. Must be convertible to an array of booleans with the same
		    shape as `data`. True indicates a masked (i.e. invalid) data.
		copy : bool, optional
		    Whether to use a copy of `a` (True) or to fix `a` in place (False).
		    Default is True.
		fill_value : scalar, optional
		    Value used for fixing invalid data. Default is None, in which case
		    the ``a.fill_value`` is used.
		
		Returns
		-------
		b : MaskedArray
		    The input array with invalid entries fixed.
		
		Notes
		-----
		A copy is performed by default.
		
		Examples
		--------
		>>> x = np.ma.array([1., -1, np.nan, np.inf], mask=[1] + [0]*3)
		>>> x
		masked_array(data = [-- -1.0 nan inf],
		             mask = [ True False False False],
		       fill_value = 1e+20)
		>>> np.ma.fix_invalid(x)
		masked_array(data = [-- -1.0 -- --],
		             mask = [ True False  True  True],
		       fill_value = 1e+20)
		
		>>> fixed = np.ma.fix_invalid(x)
		>>> fixed.data
		array([  1.00000000e+00,  -1.00000000e+00,   1.00000000e+20,
		         1.00000000e+20])
		>>> x.data
		array([  1.,  -1.,  NaN,  Inf])
	**/
	static public function fix_invalid(a:Dynamic, ?mask:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic):numpy.ma.MaskedArray;
	/**
		Find contiguous unmasked data in a masked array along the given axis.
		
		Parameters
		----------
		a : narray
		    The input array.
		
		Returns
		-------
		slice_list : list
		    A sorted sequence of slices (start index, end index).
		
		See Also
		--------
		flatnotmasked_edges, notmasked_contiguous, notmasked_edges,
		clump_masked, clump_unmasked
		
		Notes
		-----
		Only accepts 2-D arrays at most.
		
		Examples
		--------
		>>> a = np.ma.arange(10)
		>>> np.ma.flatnotmasked_contiguous(a)
		slice(0, 10, None)
		
		>>> mask = (a < 3) | (a > 8) | (a == 5)
		>>> a[mask] = np.ma.masked
		>>> np.array(a[~a.mask])
		array([3, 4, 6, 7, 8])
		
		>>> np.ma.flatnotmasked_contiguous(a)
		[slice(3, 5, None), slice(6, 9, None)]
		>>> a[:] = np.ma.masked
		>>> print(np.ma.flatnotmasked_edges(a))
		None
	**/
	static public function flatnotmasked_contiguous(a:Dynamic):Array<Dynamic>;
	/**
		Find the indices of the first and last unmasked values.
		
		Expects a 1-D `MaskedArray`, returns None if all values are masked.
		
		Parameters
		----------
		a : array_like
		    Input 1-D `MaskedArray`
		
		Returns
		-------
		edges : ndarray or None
		    The indices of first and last non-masked value in the array.
		    Returns None if all values are masked.
		
		See Also
		--------
		flatnotmasked_contiguous, notmasked_contiguous, notmasked_edges,
		clump_masked, clump_unmasked
		
		Notes
		-----
		Only accepts 1-D arrays.
		
		Examples
		--------
		>>> a = np.ma.arange(10)
		>>> flatnotmasked_edges(a)
		[0,-1]
		
		>>> mask = (a < 3) | (a > 8) | (a == 5)
		>>> a[mask] = np.ma.masked
		>>> np.array(a[~a.mask])
		array([3, 4, 6, 7, 8])
		
		>>> flatnotmasked_edges(a)
		array([3, 8])
		
		>>> a[:] = np.ma.masked
		>>> print(flatnotmasked_edges(ma))
		None
	**/
	static public function flatnotmasked_edges(a:Dynamic):Dynamic;
	/**
		Returns a completely flattened version of the mask, where nested fields
		are collapsed.
		
		Parameters
		----------
		mask : array_like
		    Input array, which will be interpreted as booleans.
		
		Returns
		-------
		flattened_mask : ndarray of bools
		    The flattened input.
		
		Examples
		--------
		>>> mask = np.array([0, 0, 1], dtype=np.bool)
		>>> flatten_mask(mask)
		array([False, False,  True], dtype=bool)
		
		>>> mask = np.array([(0, 0), (0, 1)], dtype=[('a', bool), ('b', bool)])
		>>> flatten_mask(mask)
		array([False, False, False,  True], dtype=bool)
		
		>>> mdtype = [('a', bool), ('b', [('ba', bool), ('bb', bool)])]
		>>> mask = np.array([(0, (0, 0)), (0, (0, 1))], dtype=mdtype)
		>>> flatten_mask(mask)
		array([False, False, False, False, False,  True], dtype=bool)
	**/
	static public function flatten_mask(mask:Dynamic):Dynamic;
	/**
		Flatten a structured array.
		
		The data type of the output is chosen such that it can represent all of the
		(nested) fields.
		
		Parameters
		----------
		a : structured array
		
		Returns
		-------
		output : masked array or ndarray
		    A flattened masked array if the input is a masked array, otherwise a
		    standard ndarray.
		
		Examples
		--------
		>>> ndtype = [('a', int), ('b', float)]
		>>> a = np.array([(1, 1), (2, 2)], dtype=ndtype)
		>>> flatten_structured_array(a)
		array([[1., 1.],
		       [2., 2.]])
	**/
	static public function flatten_structured_array(a:Dynamic):Dynamic;
	/**
		floor(x[, out])
		
		Return the floor of the input, element-wise.
		
		The floor of the scalar `x` is the largest integer `i`, such that
		`i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		y : ndarray or scalar
		    The floor of each element in `x`.
		
		See Also
		--------
		ceil, trunc, rint
		
		Notes
		-----
		Some spreadsheet programs calculate the "floor-towards-zero", in other
		words ``floor(-2.5) == -2``.  NumPy instead uses the definition of
		`floor` where `floor(-2.5) == -3`.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.floor(a)
		array([-2., -2., -1.,  0.,  1.,  1.,  2.])
	**/
	static public function floor(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		floor_divide(x1, x2[, out])
		
		Return the largest integer smaller or equal to the division of the inputs.
		It is equivalent to the Python ``//`` operator and pairs with the
		Python ``%`` (`remainder`), function so that ``b = a % b + b * (a // b)``
		up to roundoff.
		
		Parameters
		----------
		x1 : array_like
		    Numerator.
		x2 : array_like
		    Denominator.
		
		Returns
		-------
		y : ndarray
		    y = floor(`x1`/`x2`)
		
		
		See Also
		--------
		remainder : Remainder complementary to floor_divide.
		divide : Standard division.
		floor : Round a number to the nearest integer toward minus infinity.
		ceil : Round a number to the nearest integer toward infinity.
		
		Examples
		--------
		>>> np.floor_divide(7,3)
		2
		>>> np.floor_divide([1., 2., 3., 4.], 2.5)
		array([ 0.,  0.,  1.,  1.])
	**/
	static public function floor_divide(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		fmod(x1, x2[, out])
		
		Return the element-wise remainder of division.
		
		This is the NumPy implementation of the C library function fmod, the
		remainder has the same sign as the dividend `x1`. It is equivalent to
		the Matlab(TM) ``rem`` function and should not be confused with the
		Python modulus operator ``x1 % x2``.
		
		Parameters
		----------
		x1 : array_like
		  Dividend.
		x2 : array_like
		  Divisor.
		
		Returns
		-------
		y : array_like
		  The remainder of the division of `x1` by `x2`.
		
		See Also
		--------
		remainder : Equivalent to the Python ``%`` operator.
		divide
		
		Notes
		-----
		The result of the modulo operation for negative dividend and divisors
		is bound by conventions. For `fmod`, the sign of result is the sign of
		the dividend, while for `remainder` the sign of the result is the sign
		of the divisor. The `fmod` function is equivalent to the Matlab(TM)
		``rem`` function.
		
		Examples
		--------
		>>> np.fmod([-3, -2, -1, 1, 2, 3], 2)
		array([-1,  0, -1,  1,  0,  1])
		>>> np.remainder([-3, -2, -1, 1, 2, 3], 2)
		array([1, 0, 1, 1, 0, 1])
		
		>>> np.fmod([5, 3], [2, 2.])
		array([ 1.,  1.])
		>>> a = np.arange(-3, 3).reshape(3, 2)
		>>> a
		array([[-3, -2],
		       [-1,  0],
		       [ 1,  2]])
		>>> np.fmod(a, [2,2])
		array([[-1,  0],
		       [-1,  0],
		       [ 1,  0]])
	**/
	static public function fmod(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):python.NativeIterable<Dynamic>;
	/**
		frombuffer(buffer, dtype=float, count=-1, offset=0)
		
		Interpret a buffer as a 1-dimensional array.
		
		Parameters
		----------
		buffer : buffer_like
		    An object that exposes the buffer interface.
		dtype : data-type, optional
		    Data-type of the returned array; default: float.
		count : int, optional
		    Number of items to read. ``-1`` means all data in the buffer.
		offset : int, optional
		    Start reading the buffer from this offset; default: 0.
		
		Notes
		-----
		If the buffer has data that is not in machine byte-order, this should
		be specified as part of the data-type, e.g.::
		
		  >>> dt = np.dtype(int)
		  >>> dt = dt.newbyteorder('>')
		  >>> np.frombuffer(buf, dtype=dt)
		
		The data of the resulting array will not be byteswapped, but will be
		interpreted correctly.
		
		Examples
		--------
		>>> s = 'hello world'
		>>> np.frombuffer(s, dtype='S1', count=5, offset=6)
		array(['w', 'o', 'r', 'l', 'd'],
		      dtype='|S1')
	**/
	static public function frombuffer(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Build a masked array from a suitable flexible-type array.
		
		The input array has to have a data-type with ``_data`` and ``_mask``
		fields. This type of array is output by `MaskedArray.toflex`.
		
		Parameters
		----------
		fxarray : ndarray
		    The structured input array, containing ``_data`` and ``_mask``
		    fields. If present, other fields are discarded.
		
		Returns
		-------
		result : MaskedArray
		    The constructed masked array.
		
		See Also
		--------
		MaskedArray.toflex : Build a flexible-type array from a masked array.
		
		Examples
		--------
		>>> x = np.ma.array(np.arange(9).reshape(3, 3), mask=[0] + [1, 0] * 4)
		>>> rec = x.toflex()
		>>> rec
		array([[(0, False), (1, True), (2, False)],
		       [(3, True), (4, False), (5, True)],
		       [(6, False), (7, True), (8, False)]],
		      dtype=[('_data', '<i4'), ('_mask', '|b1')])
		>>> x2 = np.ma.fromflex(rec)
		>>> x2
		masked_array(data =
		 [[0 -- 2]
		 [-- 4 --]
		 [6 -- 8]],
		             mask =
		 [[False  True False]
		 [ True False  True]
		 [False  True False]],
		       fill_value = 999999)
		
		Extra fields can be present in the structured array but are discarded:
		
		>>> dt = [('_data', '<i4'), ('_mask', '|b1'), ('field3', '<f4')]
		>>> rec2 = np.zeros((2, 2), dtype=dt)
		>>> rec2
		array([[(0, False, 0.0), (0, False, 0.0)],
		       [(0, False, 0.0), (0, False, 0.0)]],
		      dtype=[('_data', '<i4'), ('_mask', '|b1'), ('field3', '<f4')])
		>>> y = np.ma.fromflex(rec2)
		>>> y
		masked_array(data =
		 [[0 0]
		 [0 0]],
		             mask =
		 [[False False]
		 [False False]],
		       fill_value = 999999)
	**/
	static public function fromflex(fxarray:Dynamic):numpy.ma.MaskedArray;
	/**
		fromfunction(function, shape, **kwargs)
		
		Construct an array by executing a function over each coordinate.
		
		The resulting array therefore has a value ``fn(x, y, z)`` at
		coordinate ``(x, y, z)``.
		
		Parameters
		----------
		function : callable
		    The function is called with N parameters, where N is the rank of
		    `shape`.  Each parameter represents the coordinates of the array
		    varying along a specific axis.  For example, if `shape`
		    were ``(2, 2)``, then the parameters in turn be (0, 0), (0, 1),
		    (1, 0), (1, 1).
		shape : (N,) tuple of ints
		    Shape of the output array, which also determines the shape of
		    the coordinate arrays passed to `function`.
		dtype : data-type, optional
		    Data-type of the coordinate arrays passed to `function`.
		    By default, `dtype` is float.
		
		Returns
		-------
		fromfunction : any
		    The result of the call to `function` is passed back directly.
		    Therefore the shape of `fromfunction` is completely determined by
		    `function`.  If `function` returns a scalar value, the shape of
		    `fromfunction` would match the `shape` parameter.
		
		See Also
		--------
		indices, meshgrid
		
		Notes
		-----
		Keywords other than `dtype` are passed to `function`.
		
		Examples
		--------
		>>> np.fromfunction(lambda i, j: i == j, (3, 3), dtype=int)
		array([[ True, False, False],
		       [False,  True, False],
		       [False, False,  True]], dtype=bool)
		
		>>> np.fromfunction(lambda i, j: i + j, (3, 3), dtype=int)
		array([[0, 1, 2],
		       [1, 2, 3],
		       [2, 3, 4]])
	**/
	static public function fromfunction(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the data of a masked array as an ndarray.
		
		Return the data of `a` (if any) as an ndarray if `a` is a ``MaskedArray``,
		else return `a` as a ndarray or subclass (depending on `subok`) if not.
		
		Parameters
		----------
		a : array_like
		    Input ``MaskedArray``, alternatively a ndarray or a subclass thereof.
		subok : bool
		    Whether to force the output to be a `pure` ndarray (False) or to
		    return a subclass of ndarray if appropriate (True, default).
		
		See Also
		--------
		getmask : Return the mask of a masked array, or nomask.
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
		>>> ma.getdata(a)
		array([[1, 2],
		       [3, 4]])
		
		Equivalently use the ``MaskedArray`` `data` attribute.
		
		>>> a.data
		array([[1, 2],
		       [3, 4]])
	**/
	static public function getdata(a:Dynamic, ?subok:Dynamic):Dynamic;
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
		Return the mask of a masked array, or full boolean array of False.
		
		Return the mask of `arr` as an ndarray if `arr` is a `MaskedArray` and
		the mask is not `nomask`, else return a full boolean array of False of
		the same shape as `arr`.
		
		Parameters
		----------
		arr : array_like
		    Input `MaskedArray` for which the mask is required.
		
		See Also
		--------
		getmask : Return the mask of a masked array, or nomask.
		getdata : Return the data of a masked array as an ndarray.
		
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
		>>> ma.getmaskarray(a)
		array([[False,  True],
		       [False, False]], dtype=bool)
		
		Result when mask == ``nomask``
		
		>>> b = ma.masked_array([[1,2],[3,4]])
		>>> b
		masked_array(data =
		 [[1 2]
		 [3 4]],
		      mask =
		 False,
		      fill_value=999999)
		>>> >ma.getmaskarray(b)
		array([[False, False],
		       [False, False]], dtype=bool)
	**/
	static public function getmaskarray(arr:Dynamic):Dynamic;
	/**
		greater(x1, x2[, out])
		
		Return the truth value of (x1 > x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		
		See Also
		--------
		greater_equal, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater([4,2],[2,2])
		array([ True, False], dtype=bool)
		
		If the inputs are ndarrays, then np.greater is equivalent to '>'.
		
		>>> a = np.array([4,2])
		>>> b = np.array([2,2])
		>>> a > b
		array([ True, False], dtype=bool)
	**/
	static public function greater(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		greater_equal(x1, x2[, out])
		
		Return the truth value of (x1 >= x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater_equal([4, 2, 1], [2, 2, 2])
		array([ True, True, False], dtype=bool)
	**/
	static public function greater_equal(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		harden_mask(self)
		
		Force the mask to hard.
		
		Whether the mask of a masked array is hard or soft is determined by
		its `hardmask` property. `harden_mask` sets `hardmask` to True.
		
		See Also
		--------
		hardmask
	**/
	static public function harden_mask(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		hsplit(ary, indices_or_sections)
		
		    Split an array into multiple sub-arrays horizontally (column-wise).
		
		    Please refer to the `split` documentation.  `hsplit` is equivalent
		    to `split` with ``axis=1``, the array is always split along the second
		    axis regardless of the array dimension.
		
		    See Also
		    --------
		    split : Split an array into multiple sub-arrays of equal size.
		
		    Examples
		    --------
		    >>> x = np.arange(16.0).reshape(4, 4)
		    >>> x
		    array([[  0.,   1.,   2.,   3.],
		           [  4.,   5.,   6.,   7.],
		           [  8.,   9.,  10.,  11.],
		           [ 12.,  13.,  14.,  15.]])
		    >>> np.hsplit(x, 2)
		    [array([[  0.,   1.],
		           [  4.,   5.],
		           [  8.,   9.],
		           [ 12.,  13.]]),
		     array([[  2.,   3.],
		           [  6.,   7.],
		           [ 10.,  11.],
		           [ 14.,  15.]])]
		    >>> np.hsplit(x, np.array([3, 6]))
		    [array([[  0.,   1.,   2.],
		           [  4.,   5.,   6.],
		           [  8.,   9.,  10.],
		           [ 12.,  13.,  14.]]),
		     array([[  3.],
		           [  7.],
		           [ 11.],
		           [ 15.]]),
		     array([], dtype=float64)]
		
		    With a higher dimensional array the split is still along the second axis.
		
		    >>> x = np.arange(8.0).reshape(2, 2, 2)
		    >>> x
		    array([[[ 0.,  1.],
		            [ 2.,  3.]],
		           [[ 4.,  5.],
		            [ 6.,  7.]]])
		    >>> np.hsplit(x, 2)
		    [array([[[ 0.,  1.]],
		           [[ 4.,  5.]]]),
		     array([[[ 2.,  3.]],
		           [[ 6.,  7.]]])]
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function hsplit(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		hstack(tup)
		
		    Stack arrays in sequence horizontally (column wise).
		
		    Take a sequence of arrays and stack them horizontally to make
		    a single array. Rebuild arrays divided by `hsplit`.
		
		    Parameters
		    ----------
		    tup : sequence of ndarrays
		        All arrays must have the same shape along all but the second axis.
		
		    Returns
		    -------
		    stacked : ndarray
		        The array formed by stacking the given arrays.
		
		    See Also
		    --------
		    stack : Join a sequence of arrays along a new axis.
		    vstack : Stack arrays in sequence vertically (row wise).
		    dstack : Stack arrays in sequence depth wise (along third axis).
		    concatenate : Join a sequence of arrays along an existing axis.
		    hsplit : Split array along second axis.
		
		    Notes
		    -----
		    Equivalent to ``np.concatenate(tup, axis=1)``
		
		    Examples
		    --------
		    >>> a = np.array((1,2,3))
		    >>> b = np.array((2,3,4))
		    >>> np.hstack((a,b))
		    array([1, 2, 3, 2, 3, 4])
		    >>> a = np.array([[1],[2],[3]])
		    >>> b = np.array([[2],[3],[4]])
		    >>> np.hstack((a,b))
		    array([[1, 2],
		           [2, 3],
		           [3, 4]])
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function hstack(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		hypot(x1, x2[, out])
		
		Given the "legs" of a right triangle, return its hypotenuse.
		
		Equivalent to ``sqrt(x1**2 + x2**2)``, element-wise.  If `x1` or
		`x2` is scalar_like (i.e., unambiguously cast-able to a scalar type),
		it is broadcast for use with each element of the other argument.
		(See Examples)
		
		Parameters
		----------
		x1, x2 : array_like
		    Leg of the triangle(s).
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		z : ndarray
		    The hypotenuse of the triangle(s).
		
		Examples
		--------
		>>> np.hypot(3*np.ones((3, 3)), 4*np.ones((3, 3)))
		array([[ 5.,  5.,  5.],
		       [ 5.,  5.,  5.],
		       [ 5.,  5.,  5.]])
		
		Example showing broadcast of scalar_like argument:
		
		>>> np.hypot(3*np.ones((3, 3)), [4])
		array([[ 5.,  5.,  5.],
		       [ 5.,  5.,  5.],
		       [ 5.,  5.,  5.]])
	**/
	static public function hypot(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		identity(n, dtype=None)
		
		Return the identity array.
		
		The identity array is a square array with ones on
		the main diagonal.
		
		Parameters
		----------
		n : int
		    Number of rows (and columns) in `n` x `n` output.
		dtype : data-type, optional
		    Data-type of the output.  Defaults to ``float``.
		
		Returns
		-------
		out : ndarray
		    `n` x `n` array with its main diagonal set to one,
		    and all other elements 0.
		
		Examples
		--------
		>>> np.identity(3)
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
	**/
	static public function identity(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		ids(self)
		
		Return the addresses of the data and mask areas.
		
		Parameters
		----------
		None
		
		Examples
		--------
		>>> x = np.ma.array([1, 2, 3], mask=[0, 1, 1])
		>>> x.ids()
		(166670640, 166659832)
		
		If the array has no mask, the address of `nomask` is returned. This address
		is typically not close to the data in memory:
		
		>>> x = np.ma.array([1, 2, 3])
		>>> x.ids()
		(166691080, 3083169284L)
	**/
	static public function ids(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Test whether each element of an array is also present in a second
		array.
		
		The output is always a masked array. See `numpy.in1d` for more details.
		
		See Also
		--------
		numpy.in1d : Equivalent function for ndarrays.
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function in1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic, ?invert:Dynamic):Dynamic;
	/**
		Return an array representing the indices of a grid.
		
		Compute an array where the subarrays contain index values 0,1,...
		varying only along the corresponding axis.
		
		Parameters
		----------
		dimensions : sequence of ints
		    The shape of the grid.
		dtype : dtype, optional
		    Data type of the result.
		
		Returns
		-------
		grid : ndarray
		    The array of grid indices,
		    ``grid.shape = (len(dimensions),) + tuple(dimensions)``.
		
		See Also
		--------
		mgrid, meshgrid
		
		Notes
		-----
		The output shape is obtained by prepending the number of dimensions
		in front of the tuple of dimensions, i.e. if `dimensions` is a tuple
		``(r0, ..., rN-1)`` of length ``N``, the output shape is
		``(N,r0,...,rN-1)``.
		
		The subarrays ``grid[k]`` contains the N-D array of indices along the
		``k-th`` axis. Explicitly::
		
		    grid[k,i0,i1,...,iN-1] = ik
		
		Examples
		--------
		>>> grid = np.indices((2, 3))
		>>> grid.shape
		(2, 2, 3)
		>>> grid[0]        # row indices
		array([[0, 0, 0],
		       [1, 1, 1]])
		>>> grid[1]        # column indices
		array([[0, 1, 2],
		       [0, 1, 2]])
		
		The indices can be used as an index into an array.
		
		>>> x = np.arange(20).reshape(5, 4)
		>>> row, col = np.indices((2, 3))
		>>> x[row, col]
		array([[0, 1, 2],
		       [4, 5, 6]])
		
		Note that it would be more straightforward in the above example to
		extract the required elements directly with ``x[:2, :3]``.
	**/
	static public function indices(dimensions:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		inner(a, b)
		
		Inner product of two arrays.
		
		Ordinary inner product of vectors for 1-D arrays (without complex
		conjugation), in higher dimensions a sum product over the last axes.
		
		Parameters
		----------
		a, b : array_like
		    If `a` and `b` are nonscalar, their last dimensions must match.
		
		Returns
		-------
		out : ndarray
		    `out.shape = a.shape[:-1] + b.shape[:-1]`
		
		Raises
		------
		ValueError
		    If the last dimension of `a` and `b` has different size.
		
		See Also
		--------
		tensordot : Sum products over arbitrary axes.
		dot : Generalised matrix product, using second last dimension of `b`.
		einsum : Einstein summation convention.
		
		Notes
		-----
		For vectors (1-D arrays) it computes the ordinary inner-product::
		
		    np.inner(a, b) = sum(a[:]*b[:])
		
		More generally, if `ndim(a) = r > 0` and `ndim(b) = s > 0`::
		
		    np.inner(a, b) = np.tensordot(a, b, axes=(-1,-1))
		
		or explicitly::
		
		    np.inner(a, b)[i0,...,ir-1,j0,...,js-1]
		         = sum(a[i0,...,ir-1,:]*b[j0,...,js-1,:])
		
		In addition `a` or `b` may be scalars, in which case::
		
		   np.inner(a,b) = a*b
		
		Examples
		--------
		Ordinary inner product for vectors:
		
		>>> a = np.array([1,2,3])
		>>> b = np.array([0,1,0])
		>>> np.inner(a, b)
		2
		
		A multidimensional example:
		
		>>> a = np.arange(24).reshape((2,3,4))
		>>> b = np.arange(4)
		>>> np.inner(a, b)
		array([[ 14,  38,  62],
		       [ 86, 110, 134]])
		
		An example where `b` is a scalar:
		
		>>> np.inner(np.eye(2), 7)
		array([[ 7.,  0.],
		       [ 0.,  7.]])
		
		Notes
		-----
		Masked values are replaced by 0.
	**/
	static public function inner(a:Dynamic, b:Dynamic):numpy.Ndarray;
	/**
		inner(a, b)
		
		Inner product of two arrays.
		
		Ordinary inner product of vectors for 1-D arrays (without complex
		conjugation), in higher dimensions a sum product over the last axes.
		
		Parameters
		----------
		a, b : array_like
		    If `a` and `b` are nonscalar, their last dimensions must match.
		
		Returns
		-------
		out : ndarray
		    `out.shape = a.shape[:-1] + b.shape[:-1]`
		
		Raises
		------
		ValueError
		    If the last dimension of `a` and `b` has different size.
		
		See Also
		--------
		tensordot : Sum products over arbitrary axes.
		dot : Generalised matrix product, using second last dimension of `b`.
		einsum : Einstein summation convention.
		
		Notes
		-----
		For vectors (1-D arrays) it computes the ordinary inner-product::
		
		    np.inner(a, b) = sum(a[:]*b[:])
		
		More generally, if `ndim(a) = r > 0` and `ndim(b) = s > 0`::
		
		    np.inner(a, b) = np.tensordot(a, b, axes=(-1,-1))
		
		or explicitly::
		
		    np.inner(a, b)[i0,...,ir-1,j0,...,js-1]
		         = sum(a[i0,...,ir-1,:]*b[j0,...,js-1,:])
		
		In addition `a` or `b` may be scalars, in which case::
		
		   np.inner(a,b) = a*b
		
		Examples
		--------
		Ordinary inner product for vectors:
		
		>>> a = np.array([1,2,3])
		>>> b = np.array([0,1,0])
		>>> np.inner(a, b)
		2
		
		A multidimensional example:
		
		>>> a = np.arange(24).reshape((2,3,4))
		>>> b = np.arange(4)
		>>> np.inner(a, b)
		array([[ 14,  38,  62],
		       [ 86, 110, 134]])
		
		An example where `b` is a scalar:
		
		>>> np.inner(np.eye(2), 7)
		array([[ 7.,  0.],
		       [ 0.,  7.]])
		
		Notes
		-----
		Masked values are replaced by 0.
	**/
	static public function innerproduct(a:Dynamic, b:Dynamic):numpy.Ndarray;
	/**
		Returns the unique elements common to both arrays.
		
		Masked values are considered equal one to the other.
		The output is always a masked array.
		
		See `numpy.intersect1d` for more details.
		
		See Also
		--------
		numpy.intersect1d : Equivalent function for ndarrays.
		
		Examples
		--------
		>>> x = array([1, 3, 3, 3], mask=[0, 0, 0, 1])
		>>> y = array([3, 1, 1, 1], mask=[0, 0, 0, 1])
		>>> intersect1d(x, y)
		masked_array(data = [1 3 --],
		             mask = [False False  True],
		       fill_value = 999999)
	**/
	static public function intersect1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):Dynamic;
	/**
		Test whether input is an instance of MaskedArray.
		
		This function returns True if `x` is an instance of MaskedArray
		and returns False otherwise.  Any object is accepted as input.
		
		Parameters
		----------
		x : object
		    Object to test.
		
		Returns
		-------
		result : bool
		    True if `x` is a MaskedArray.
		
		See Also
		--------
		isMA : Alias to isMaskedArray.
		isarray : Alias to isMaskedArray.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.eye(3, 3)
		>>> a
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> m = ma.masked_values(a, 0)
		>>> m
		masked_array(data =
		 [[1.0 -- --]
		 [-- 1.0 --]
		 [-- -- 1.0]],
		      mask =
		 [[False  True  True]
		 [ True False  True]
		 [ True  True False]],
		      fill_value=0.0)
		>>> ma.isMaskedArray(a)
		False
		>>> ma.isMaskedArray(m)
		True
		>>> ma.isMaskedArray([0, 1, 2])
		False
	**/
	static public function isMA(x:Dynamic):Bool;
	/**
		Test whether input is an instance of MaskedArray.
		
		This function returns True if `x` is an instance of MaskedArray
		and returns False otherwise.  Any object is accepted as input.
		
		Parameters
		----------
		x : object
		    Object to test.
		
		Returns
		-------
		result : bool
		    True if `x` is a MaskedArray.
		
		See Also
		--------
		isMA : Alias to isMaskedArray.
		isarray : Alias to isMaskedArray.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.eye(3, 3)
		>>> a
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> m = ma.masked_values(a, 0)
		>>> m
		masked_array(data =
		 [[1.0 -- --]
		 [-- 1.0 --]
		 [-- -- 1.0]],
		      mask =
		 [[False  True  True]
		 [ True False  True]
		 [ True  True False]],
		      fill_value=0.0)
		>>> ma.isMaskedArray(a)
		False
		>>> ma.isMaskedArray(m)
		True
		>>> ma.isMaskedArray([0, 1, 2])
		False
	**/
	static public function isMaskedArray(x:Dynamic):Bool;
	/**
		Return True if m is a valid, standard mask.
		
		This function does not check the contents of the input, only that the
		type is MaskType. In particular, this function returns False if the
		mask has a flexible dtype.
		
		Parameters
		----------
		m : array_like
		    Array to test.
		
		Returns
		-------
		result : bool
		    True if `m.dtype.type` is MaskType, False otherwise.
		
		See Also
		--------
		isMaskedArray : Test whether input is an instance of MaskedArray.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> m = ma.masked_equal([0, 1, 0, 2, 3], 0)
		>>> m
		masked_array(data = [-- 1 -- 2 3],
		      mask = [ True False  True False False],
		      fill_value=999999)
		>>> ma.is_mask(m)
		False
		>>> ma.is_mask(m.mask)
		True
		
		Input must be an ndarray (or have similar attributes)
		for it to be considered a valid mask.
		
		>>> m = [False, True, False]
		>>> ma.is_mask(m)
		False
		>>> m = np.array([False, True, False])
		>>> m
		array([False,  True, False], dtype=bool)
		>>> ma.is_mask(m)
		True
		
		Arrays with complex dtypes don't return True.
		
		>>> dtype = np.dtype({'names':['monty', 'pithon'],
		                      'formats':[np.bool, np.bool]})
		>>> dtype
		dtype([('monty', '|b1'), ('pithon', '|b1')])
		>>> m = np.array([(True, False), (False, True), (True, False)],
		                 dtype=dtype)
		>>> m
		array([(True, False), (False, True), (True, False)],
		      dtype=[('monty', '|b1'), ('pithon', '|b1')])
		>>> ma.is_mask(m)
		False
	**/
	static public function is_mask(m:Dynamic):Bool;
	/**
		Determine whether input has masked values.
		
		Accepts any object as input, but always returns False unless the
		input is a MaskedArray containing masked values.
		
		Parameters
		----------
		x : array_like
		    Array to check for masked values.
		
		Returns
		-------
		result : bool
		    True if `x` is a MaskedArray with masked values, False otherwise.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> x = ma.masked_equal([0, 1, 0, 2, 3], 0)
		>>> x
		masked_array(data = [-- 1 -- 2 3],
		      mask = [ True False  True False False],
		      fill_value=999999)
		>>> ma.is_masked(x)
		True
		>>> x = ma.masked_equal([0, 1, 0, 2, 3], 42)
		>>> x
		masked_array(data = [0 1 0 2 3],
		      mask = False,
		      fill_value=999999)
		>>> ma.is_masked(x)
		False
		
		Always returns False if `x` isn't a MaskedArray.
		
		>>> x = [False, True, False]
		>>> ma.is_masked(x)
		False
		>>> x = 'a string'
		>>> ma.is_masked(x)
		False
	**/
	static public function is_masked(x:Dynamic):Bool;
	/**
		Test whether input is an instance of MaskedArray.
		
		This function returns True if `x` is an instance of MaskedArray
		and returns False otherwise.  Any object is accepted as input.
		
		Parameters
		----------
		x : object
		    Object to test.
		
		Returns
		-------
		result : bool
		    True if `x` is a MaskedArray.
		
		See Also
		--------
		isMA : Alias to isMaskedArray.
		isarray : Alias to isMaskedArray.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.eye(3, 3)
		>>> a
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> m = ma.masked_values(a, 0)
		>>> m
		masked_array(data =
		 [[1.0 -- --]
		 [-- 1.0 --]
		 [-- -- 1.0]],
		      mask =
		 [[False  True  True]
		 [ True False  True]
		 [ True  True False]],
		      fill_value=0.0)
		>>> ma.isMaskedArray(a)
		False
		>>> ma.isMaskedArray(m)
		True
		>>> ma.isMaskedArray([0, 1, 2])
		False
	**/
	static public function isarray(x:Dynamic):Bool;
	/**
		Shift the bits of an integer to the left.
		
		This is the masked array version of `numpy.left_shift`, for details
		see that function.
		
		See Also
		--------
		numpy.left_shift
	**/
	static public function left_shift(a:Dynamic, n:Dynamic):Dynamic;
	/**
		less(x1, x2[, out])
		
		Return the truth value of (x1 < x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less_equal, greater_equal, equal, not_equal
		
		Examples
		--------
		>>> np.less([1, 2], [2, 2])
		array([ True, False], dtype=bool)
	**/
	static public function less(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		less_equal(x1, x2[, out])
		
		Return the truth value of (x1 =< x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, greater_equal, equal, not_equal
		
		Examples
		--------
		>>> np.less_equal([4, 2, 1], [2, 2, 2])
		array([False,  True,  True], dtype=bool)
	**/
	static public function less_equal(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrapper around ``cPickle.load`` which accepts either a file-like object
		or a filename.
		
		Parameters
		----------
		F : str or file
		    The file or file name to load.
		
		See Also
		--------
		dump : Pickle an array
		
		Notes
		-----
		This is different from `numpy.load`, which does not use cPickle but loads
		the NumPy binary .npy format.
	**/
	static public function load(F:Dynamic):Dynamic;
	/**
		Load a pickle from the current string.
		
		The result of ``cPickle.loads(strg)`` is returned.
		
		Parameters
		----------
		strg : str
		    The string to load.
		
		See Also
		--------
		dumps : Return a string corresponding to the pickling of a masked array.
	**/
	static public function loads(strg:Dynamic):Dynamic;
	/**
		log(x[, out])
		
		Natural logarithm, element-wise.
		
		The natural logarithm `log` is the inverse of the exponential function,
		so that `log(exp(x)) = x`. The natural logarithm is logarithm in base
		`e`.
		
		Parameters
		----------
		x : array_like
		    Input value.
		
		Returns
		-------
		y : ndarray
		    The natural logarithm of `x`, element-wise.
		
		See Also
		--------
		log10, log2, log1p, emath.log
		
		Notes
		-----
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `exp(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log` always returns real output. For
		each value that cannot be expressed as a real number or infinity, it
		yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it. `log`
		handles the floating-point negative zero as an infinitesimal negative
		number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Logarithm". http://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log([1, np.e, np.e**2, 0])
		array([  0.,   1.,   2., -Inf])
	**/
	static public function log(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		log10(x[, out])
		
		Return the base 10 logarithm of the input array, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		y : ndarray
		    The logarithm to the base 10 of `x`, element-wise. NaNs are
		    returned where x is negative.
		
		See Also
		--------
		emath.log10
		
		Notes
		-----
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `10**z = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log10` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log10` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it.
		`log10` handles the floating-point negative zero as an infinitesimal
		negative number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Logarithm". http://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log10([1e-15, -3.])
		array([-15.,  NaN])
	**/
	static public function log10(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		log2(x[, out])
		
		Base-2 logarithm of `x`.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		y : ndarray
		    Base-2 logarithm of `x`.
		
		See Also
		--------
		log, log10, log1p, emath.log2
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `2**z = x`. The convention is to return the `z`
		whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log2` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log2` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it. `log2`
		handles the floating-point negative zero as an infinitesimal negative
		number, conforming to the C99 standard.
		
		Examples
		--------
		>>> x = np.array([0, 1, 2, 2**4])
		>>> np.log2(x)
		array([-Inf,   0.,   1.,   4.])
		
		>>> xi = np.array([0+1.j, 1, 2+0.j, 4.j])
		>>> np.log2(xi)
		array([ 0.+2.26618007j,  0.+0.j        ,  1.+0.j        ,  2.+2.26618007j])
	**/
	static public function log2(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		logical_and(x1, x2[, out])
		
		Compute the truth value of x1 AND x2 element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays. `x1` and `x2` must be of the same shape.
		
		
		Returns
		-------
		y : ndarray or bool
		    Boolean result with the same shape as `x1` and `x2` of the logical
		    AND operation on corresponding elements of `x1` and `x2`.
		
		See Also
		--------
		logical_or, logical_not, logical_xor
		bitwise_and
		
		Examples
		--------
		>>> np.logical_and(True, False)
		False
		>>> np.logical_and([True, False], [False, False])
		array([False, False], dtype=bool)
		
		>>> x = np.arange(5)
		>>> np.logical_and(x>1, x<4)
		array([False, False,  True,  True, False], dtype=bool)
	**/
	static public function logical_and(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		logical_not(x[, out])
		
		Compute the truth value of NOT x element-wise.
		
		Parameters
		----------
		x : array_like
		    Logical NOT is applied to the elements of `x`.
		
		Returns
		-------
		y : bool or ndarray of bool
		    Boolean result with the same shape as `x` of the NOT operation
		    on elements of `x`.
		
		See Also
		--------
		logical_and, logical_or, logical_xor
		
		Examples
		--------
		>>> np.logical_not(3)
		False
		>>> np.logical_not([True, False, 0, 1])
		array([False,  True,  True, False], dtype=bool)
		
		>>> x = np.arange(5)
		>>> np.logical_not(x<3)
		array([False, False, False,  True,  True], dtype=bool)
	**/
	static public function logical_not(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		logical_or(x1, x2[, out])
		
		Compute the truth value of x1 OR x2 element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Logical OR is applied to the elements of `x1` and `x2`.
		    They have to be of the same shape.
		
		Returns
		-------
		y : ndarray or bool
		    Boolean result with the same shape as `x1` and `x2` of the logical
		    OR operation on elements of `x1` and `x2`.
		
		See Also
		--------
		logical_and, logical_not, logical_xor
		bitwise_or
		
		Examples
		--------
		>>> np.logical_or(True, False)
		True
		>>> np.logical_or([True, False], [False, False])
		array([ True, False], dtype=bool)
		
		>>> x = np.arange(5)
		>>> np.logical_or(x < 1, x > 3)
		array([ True, False, False, False,  True], dtype=bool)
	**/
	static public function logical_or(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		logical_xor(x1, x2[, out])
		
		Compute the truth value of x1 XOR x2, element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Logical XOR is applied to the elements of `x1` and `x2`.  They must
		    be broadcastable to the same shape.
		
		Returns
		-------
		y : bool or ndarray of bool
		    Boolean result of the logical XOR operation applied to the elements
		    of `x1` and `x2`; the shape is determined by whether or not
		    broadcasting of one or both arrays was required.
		
		See Also
		--------
		logical_and, logical_or, logical_not, bitwise_xor
		
		Examples
		--------
		>>> np.logical_xor(True, False)
		True
		>>> np.logical_xor([True, True, False, False], [True, False, True, False])
		array([False,  True,  True, False], dtype=bool)
		
		>>> x = np.arange(5)
		>>> np.logical_xor(x < 1, x > 3)
		array([ True, False, False, False,  True], dtype=bool)
		
		Simple example showing support of broadcasting
		
		>>> np.logical_xor(0, np.eye(2))
		array([[ True, False],
		       [False,  True]], dtype=bool)
	**/
	static public function logical_xor(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a boolean mask from an array.
		
		Return `m` as a boolean mask, creating a copy if necessary or requested.
		The function can accept any sequence that is convertible to integers,
		or ``nomask``.  Does not require that contents must be 0s and 1s, values
		of 0 are interepreted as False, everything else as True.
		
		Parameters
		----------
		m : array_like
		    Potential mask.
		copy : bool, optional
		    Whether to return a copy of `m` (True) or `m` itself (False).
		shrink : bool, optional
		    Whether to shrink `m` to ``nomask`` if all its values are False.
		dtype : dtype, optional
		    Data-type of the output mask. By default, the output mask has a
		    dtype of MaskType (bool). If the dtype is flexible, each field has
		    a boolean dtype. This is ignored when `m` is ``nomask``, in which
		    case ``nomask`` is always returned.
		
		Returns
		-------
		result : ndarray
		    A boolean mask derived from `m`.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> m = [True, False, True, True]
		>>> ma.make_mask(m)
		array([ True, False,  True,  True], dtype=bool)
		>>> m = [1, 0, 1, 1]
		>>> ma.make_mask(m)
		array([ True, False,  True,  True], dtype=bool)
		>>> m = [1, 0, 2, -3]
		>>> ma.make_mask(m)
		array([ True, False,  True,  True], dtype=bool)
		
		Effect of the `shrink` parameter.
		
		>>> m = np.zeros(4)
		>>> m
		array([ 0.,  0.,  0.,  0.])
		>>> ma.make_mask(m)
		False
		>>> ma.make_mask(m, shrink=False)
		array([False, False, False, False], dtype=bool)
		
		Using a flexible `dtype`.
		
		>>> m = [1, 0, 1, 1]
		>>> n = [0, 1, 0, 0]
		>>> arr = []
		>>> for man, mouse in zip(m, n):
		...     arr.append((man, mouse))
		>>> arr
		[(1, 0), (0, 1), (1, 0), (1, 0)]
		>>> dtype = np.dtype({'names':['man', 'mouse'],
		                      'formats':[np.int, np.int]})
		>>> arr = np.array(arr, dtype=dtype)
		>>> arr
		array([(1, 0), (0, 1), (1, 0), (1, 0)],
		      dtype=[('man', '<i4'), ('mouse', '<i4')])
		>>> ma.make_mask(arr, dtype=dtype)
		array([(True, False), (False, True), (True, False), (True, False)],
		      dtype=[('man', '|b1'), ('mouse', '|b1')])
	**/
	static public function make_mask(m:Dynamic, ?copy:Dynamic, ?shrink:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Construct a dtype description list from a given dtype.
		
		Returns a new dtype object, with the type of all fields in `ndtype` to a
		boolean type. Field names are not altered.
		
		Parameters
		----------
		ndtype : dtype
		    The dtype to convert.
		
		Returns
		-------
		result : dtype
		    A dtype that looks like `ndtype`, the type of all fields is boolean.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> dtype = np.dtype({'names':['foo', 'bar'],
		                      'formats':[np.float32, np.int]})
		>>> dtype
		dtype([('foo', '<f4'), ('bar', '<i4')])
		>>> ma.make_mask_descr(dtype)
		dtype([('foo', '|b1'), ('bar', '|b1')])
		>>> ma.make_mask_descr(np.float32)
		<type 'numpy.bool_'>
	**/
	static public function make_mask_descr(ndtype:Dynamic):Dynamic;
	/**
		Return a boolean mask of the given shape, filled with False.
		
		This function returns a boolean ndarray with all entries False, that can
		be used in common mask manipulations. If a complex dtype is specified, the
		type of each field is converted to a boolean type.
		
		Parameters
		----------
		newshape : tuple
		    A tuple indicating the shape of the mask.
		dtype : {None, dtype}, optional
		    If None, use a MaskType instance. Otherwise, use a new datatype with
		    the same fields as `dtype`, converted to boolean types.
		
		Returns
		-------
		result : ndarray
		    An ndarray of appropriate shape and dtype, filled with False.
		
		See Also
		--------
		make_mask : Create a boolean mask from an array.
		make_mask_descr : Construct a dtype description list from a given dtype.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> ma.make_mask_none((3,))
		array([False, False, False], dtype=bool)
		
		Defining a more complex dtype.
		
		>>> dtype = np.dtype({'names':['foo', 'bar'],
		                      'formats':[np.float32, np.int]})
		>>> dtype
		dtype([('foo', '<f4'), ('bar', '<i4')])
		>>> ma.make_mask_none((3,), dtype=dtype)
		array([(False, False), (False, False), (False, False)],
		      dtype=[('foo', '|b1'), ('bar', '|b1')])
	**/
	static public function make_mask_none(newshape:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Mask columns of a 2D array that contain masked values.
		
		This function is a shortcut to ``mask_rowcols`` with `axis` equal to 1.
		
		See Also
		--------
		mask_rowcols : Mask rows and/or columns of a 2D array.
		masked_where : Mask where a condition is met.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.zeros((3, 3), dtype=np.int)
		>>> a[1, 1] = 1
		>>> a
		array([[0, 0, 0],
		       [0, 1, 0],
		       [0, 0, 0]])
		>>> a = ma.masked_equal(a, 1)
		>>> a
		masked_array(data =
		 [[0 0 0]
		 [0 -- 0]
		 [0 0 0]],
		      mask =
		 [[False False False]
		 [False  True False]
		 [False False False]],
		      fill_value=999999)
		>>> ma.mask_cols(a)
		masked_array(data =
		 [[0 -- 0]
		 [0 -- 0]
		 [0 -- 0]],
		      mask =
		 [[False  True False]
		 [False  True False]
		 [False  True False]],
		      fill_value=999999)
	**/
	static public function mask_cols(a:Dynamic, ?axis:Dynamic):Dynamic;
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
	/**
		Mask rows and/or columns of a 2D array that contain masked values.
		
		Mask whole rows and/or columns of a 2D array that contain
		masked values.  The masking behavior is selected using the
		`axis` parameter.
		
		  - If `axis` is None, rows *and* columns are masked.
		  - If `axis` is 0, only rows are masked.
		  - If `axis` is 1 or -1, only columns are masked.
		
		Parameters
		----------
		a : array_like, MaskedArray
		    The array to mask.  If not a MaskedArray instance (or if no array
		    elements are masked).  The result is a MaskedArray with `mask` set
		    to `nomask` (False). Must be a 2D array.
		axis : int, optional
		    Axis along which to perform the operation. If None, applies to a
		    flattened version of the array.
		
		Returns
		-------
		a : MaskedArray
		    A modified version of the input array, masked depending on the value
		    of the `axis` parameter.
		
		Raises
		------
		NotImplementedError
		    If input array `a` is not 2D.
		
		See Also
		--------
		mask_rows : Mask rows of a 2D array that contain masked values.
		mask_cols : Mask cols of a 2D array that contain masked values.
		masked_where : Mask where a condition is met.
		
		Notes
		-----
		The input array's mask is modified by this function.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.zeros((3, 3), dtype=np.int)
		>>> a[1, 1] = 1
		>>> a
		array([[0, 0, 0],
		       [0, 1, 0],
		       [0, 0, 0]])
		>>> a = ma.masked_equal(a, 1)
		>>> a
		masked_array(data =
		 [[0 0 0]
		 [0 -- 0]
		 [0 0 0]],
		      mask =
		 [[False False False]
		 [False  True False]
		 [False False False]],
		      fill_value=999999)
		>>> ma.mask_rowcols(a)
		masked_array(data =
		 [[0 -- 0]
		 [-- -- --]
		 [0 -- 0]],
		      mask =
		 [[False  True False]
		 [ True  True  True]
		 [False  True False]],
		      fill_value=999999)
	**/
	static public function mask_rowcols(a:Dynamic, ?axis:Dynamic):numpy.ma.MaskedArray;
	/**
		Mask rows of a 2D array that contain masked values.
		
		This function is a shortcut to ``mask_rowcols`` with `axis` equal to 0.
		
		See Also
		--------
		mask_rowcols : Mask rows and/or columns of a 2D array.
		masked_where : Mask where a condition is met.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.zeros((3, 3), dtype=np.int)
		>>> a[1, 1] = 1
		>>> a
		array([[0, 0, 0],
		       [0, 1, 0],
		       [0, 0, 0]])
		>>> a = ma.masked_equal(a, 1)
		>>> a
		masked_array(data =
		 [[0 0 0]
		 [0 -- 0]
		 [0 0 0]],
		      mask =
		 [[False False False]
		 [False  True False]
		 [False False False]],
		      fill_value=999999)
		>>> ma.mask_rows(a)
		masked_array(data =
		 [[0 0 0]
		 [-- -- --]
		 [0 0 0]],
		      mask =
		 [[False False False]
		 [ True  True  True]
		 [False False False]],
		      fill_value=999999)
	**/
	static public function mask_rows(a:Dynamic, ?axis:Dynamic):Dynamic;
	static public var masked : Dynamic;
	/**
		Empty masked array with all elements masked.
		
		Return an empty masked array of the given shape and dtype, where all the
		data are masked.
		
		Parameters
		----------
		shape : tuple
		    Shape of the required MaskedArray.
		dtype : dtype, optional
		    Data type of the output.
		
		Returns
		-------
		a : MaskedArray
		    A masked array with all data masked.
		
		See Also
		--------
		masked_all_like : Empty masked array modelled on an existing array.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> ma.masked_all((3, 3))
		masked_array(data =
		 [[-- -- --]
		 [-- -- --]
		 [-- -- --]],
		      mask =
		 [[ True  True  True]
		 [ True  True  True]
		 [ True  True  True]],
		      fill_value=1e+20)
		
		The `dtype` parameter defines the underlying data type.
		
		>>> a = ma.masked_all((3, 3))
		>>> a.dtype
		dtype('float64')
		>>> a = ma.masked_all((3, 3), dtype=np.int32)
		>>> a.dtype
		dtype('int32')
	**/
	static public function masked_all(shape:Dynamic, ?dtype:Dynamic):numpy.ma.MaskedArray;
	/**
		Empty masked array with the properties of an existing array.
		
		Return an empty masked array of the same shape and dtype as
		the array `arr`, where all the data are masked.
		
		Parameters
		----------
		arr : ndarray
		    An array describing the shape and dtype of the required MaskedArray.
		
		Returns
		-------
		a : MaskedArray
		    A masked array with all data masked.
		
		Raises
		------
		AttributeError
		    If `arr` doesn't have a shape attribute (i.e. not an ndarray)
		
		See Also
		--------
		masked_all : Empty masked array with all elements masked.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> arr = np.zeros((2, 3), dtype=np.float32)
		>>> arr
		array([[ 0.,  0.,  0.],
		       [ 0.,  0.,  0.]], dtype=float32)
		>>> ma.masked_all_like(arr)
		masked_array(data =
		 [[-- -- --]
		 [-- -- --]],
		      mask =
		 [[ True  True  True]
		 [ True  True  True]],
		      fill_value=1e+20)
		
		The dtype of the masked array matches the dtype of `arr`.
		
		>>> arr.dtype
		dtype('float32')
		>>> ma.masked_all_like(arr).dtype
		dtype('float32')
	**/
	static public function masked_all_like(arr:Dynamic):numpy.ma.MaskedArray;
	/**
		Mask an array where equal to a given value.
		
		This function is a shortcut to ``masked_where``, with
		`condition` = (x == value).  For floating point arrays,
		consider using ``masked_values(x, value)``.
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		masked_values : Mask using floating point equality.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.arange(4)
		>>> a
		array([0, 1, 2, 3])
		>>> ma.masked_equal(a, 2)
		masked_array(data = [0 1 -- 3],
		      mask = [False False  True False],
		      fill_value=999999)
	**/
	static public function masked_equal(x:Dynamic, value:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Mask an array where greater than a given value.
		
		This function is a shortcut to ``masked_where``, with
		`condition` = (x > value).
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.arange(4)
		>>> a
		array([0, 1, 2, 3])
		>>> ma.masked_greater(a, 2)
		masked_array(data = [0 1 2 --],
		      mask = [False False False  True],
		      fill_value=999999)
	**/
	static public function masked_greater(x:Dynamic, value:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Mask an array where greater than or equal to a given value.
		
		This function is a shortcut to ``masked_where``, with
		`condition` = (x >= value).
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.arange(4)
		>>> a
		array([0, 1, 2, 3])
		>>> ma.masked_greater_equal(a, 2)
		masked_array(data = [0 1 -- --],
		      mask = [False False  True  True],
		      fill_value=999999)
	**/
	static public function masked_greater_equal(x:Dynamic, value:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Mask an array inside a given interval.
		
		Shortcut to ``masked_where``, where `condition` is True for `x` inside
		the interval [v1,v2] (v1 <= x <= v2).  The boundaries `v1` and `v2`
		can be given in either order.
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		
		Notes
		-----
		The array `x` is prefilled with its filling value.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> x = [0.31, 1.2, 0.01, 0.2, -0.4, -1.1]
		>>> ma.masked_inside(x, -0.3, 0.3)
		masked_array(data = [0.31 1.2 -- -- -0.4 -1.1],
		      mask = [False False  True  True False False],
		      fill_value=1e+20)
		
		The order of `v1` and `v2` doesn't matter.
		
		>>> ma.masked_inside(x, 0.3, -0.3)
		masked_array(data = [0.31 1.2 -- -- -0.4 -1.1],
		      mask = [False False  True  True False False],
		      fill_value=1e+20)
	**/
	static public function masked_inside(x:Dynamic, v1:Dynamic, v2:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Mask an array where invalid values occur (NaNs or infs).
		
		This function is a shortcut to ``masked_where``, with
		`condition` = ~(np.isfinite(a)). Any pre-existing mask is conserved.
		Only applies to arrays with a dtype where NaNs or infs make sense
		(i.e. floating point types), but accepts any array_like object.
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.arange(5, dtype=np.float)
		>>> a[2] = np.NaN
		>>> a[3] = np.PINF
		>>> a
		array([  0.,   1.,  NaN,  Inf,   4.])
		>>> ma.masked_invalid(a)
		masked_array(data = [0.0 1.0 -- -- 4.0],
		      mask = [False False  True  True False],
		      fill_value=1e+20)
	**/
	static public function masked_invalid(a:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Mask an array where less than a given value.
		
		This function is a shortcut to ``masked_where``, with
		`condition` = (x < value).
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.arange(4)
		>>> a
		array([0, 1, 2, 3])
		>>> ma.masked_less(a, 2)
		masked_array(data = [-- -- 2 3],
		      mask = [ True  True False False],
		      fill_value=999999)
	**/
	static public function masked_less(x:Dynamic, value:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Mask an array where less than or equal to a given value.
		
		This function is a shortcut to ``masked_where``, with
		`condition` = (x <= value).
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.arange(4)
		>>> a
		array([0, 1, 2, 3])
		>>> ma.masked_less_equal(a, 2)
		masked_array(data = [-- -- -- 3],
		      mask = [ True  True  True False],
		      fill_value=999999)
	**/
	static public function masked_less_equal(x:Dynamic, value:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Mask an array where `not` equal to a given value.
		
		This function is a shortcut to ``masked_where``, with
		`condition` = (x != value).
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.arange(4)
		>>> a
		array([0, 1, 2, 3])
		>>> ma.masked_not_equal(a, 2)
		masked_array(data = [-- -- 2 --],
		      mask = [ True  True False  True],
		      fill_value=999999)
	**/
	static public function masked_not_equal(x:Dynamic, value:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Mask the array `x` where the data are exactly equal to value.
		
		This function is similar to `masked_values`, but only suitable
		for object arrays: for floating point, use `masked_values` instead.
		
		Parameters
		----------
		x : array_like
		    Array to mask
		value : object
		    Comparison value
		copy : {True, False}, optional
		    Whether to return a copy of `x`.
		shrink : {True, False}, optional
		    Whether to collapse a mask full of False to nomask
		
		Returns
		-------
		result : MaskedArray
		    The result of masking `x` where equal to `value`.
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		masked_equal : Mask where equal to a given value (integers).
		masked_values : Mask using floating point equality.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> food = np.array(['green_eggs', 'ham'], dtype=object)
		>>> # don't eat spoiled food
		>>> eat = ma.masked_object(food, 'green_eggs')
		>>> print(eat)
		[-- ham]
		>>> # plain ol` ham is boring
		>>> fresh_food = np.array(['cheese', 'ham', 'pineapple'], dtype=object)
		>>> eat = ma.masked_object(fresh_food, 'green_eggs')
		>>> print(eat)
		[cheese ham pineapple]
		
		Note that `mask` is set to ``nomask`` if possible.
		
		>>> eat
		masked_array(data = [cheese ham pineapple],
		      mask = False,
		      fill_value=?)
	**/
	static public function masked_object(x:Dynamic, value:Dynamic, ?copy:Dynamic, ?shrink:Dynamic):numpy.ma.MaskedArray;
	/**
		Mask an array outside a given interval.
		
		Shortcut to ``masked_where``, where `condition` is True for `x` outside
		the interval [v1,v2] (x < v1)|(x > v2).
		The boundaries `v1` and `v2` can be given in either order.
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		
		Notes
		-----
		The array `x` is prefilled with its filling value.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> x = [0.31, 1.2, 0.01, 0.2, -0.4, -1.1]
		>>> ma.masked_outside(x, -0.3, 0.3)
		masked_array(data = [-- -- 0.01 0.2 -- --],
		      mask = [ True  True False False  True  True],
		      fill_value=1e+20)
		
		The order of `v1` and `v2` doesn't matter.
		
		>>> ma.masked_outside(x, 0.3, -0.3)
		masked_array(data = [-- -- 0.01 0.2 -- --],
		      mask = [ True  True False False  True  True],
		      fill_value=1e+20)
	**/
	static public function masked_outside(x:Dynamic, v1:Dynamic, v2:Dynamic, ?copy:Dynamic):Dynamic;
	static public var masked_print_option : Dynamic;
	static public var masked_singleton : Dynamic;
	/**
		Mask using floating point equality.
		
		Return a MaskedArray, masked where the data in array `x` are approximately
		equal to `value`, i.e. where the following condition is True
		
		(abs(x - value) <= atol+rtol*abs(value))
		
		The fill_value is set to `value` and the mask is set to ``nomask`` if
		possible.  For integers, consider using ``masked_equal``.
		
		Parameters
		----------
		x : array_like
		    Array to mask.
		value : float
		    Masking value.
		rtol : float, optional
		    Tolerance parameter.
		atol : float, optional
		    Tolerance parameter (1e-8).
		copy : bool, optional
		    Whether to return a copy of `x`.
		shrink : bool, optional
		    Whether to collapse a mask full of False to ``nomask``.
		
		Returns
		-------
		result : MaskedArray
		    The result of masking `x` where approximately equal to `value`.
		
		See Also
		--------
		masked_where : Mask where a condition is met.
		masked_equal : Mask where equal to a given value (integers).
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> x = np.array([1, 1.1, 2, 1.1, 3])
		>>> ma.masked_values(x, 1.1)
		masked_array(data = [1.0 -- 2.0 -- 3.0],
		      mask = [False  True False  True False],
		      fill_value=1.1)
		
		Note that `mask` is set to ``nomask`` if possible.
		
		>>> ma.masked_values(x, 1.5)
		masked_array(data = [ 1.   1.1  2.   1.1  3. ],
		      mask = False,
		      fill_value=1.5)
		
		For integers, the fill value will be different in general to the
		result of ``masked_equal``.
		
		>>> x = np.arange(5)
		>>> x
		array([0, 1, 2, 3, 4])
		>>> ma.masked_values(x, 2)
		masked_array(data = [0 1 -- 3 4],
		      mask = [False False  True False False],
		      fill_value=2)
		>>> ma.masked_equal(x, 2)
		masked_array(data = [0 1 -- 3 4],
		      mask = [False False  True False False],
		      fill_value=999999)
	**/
	static public function masked_values(x:Dynamic, value:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?copy:Dynamic, ?shrink:Dynamic):numpy.ma.MaskedArray;
	/**
		Mask an array where a condition is met.
		
		Return `a` as an array masked where `condition` is True.
		Any masked values of `a` or `condition` are also masked in the output.
		
		Parameters
		----------
		condition : array_like
		    Masking condition.  When `condition` tests floating point values for
		    equality, consider using ``masked_values`` instead.
		a : array_like
		    Array to mask.
		copy : bool
		    If True (default) make a copy of `a` in the result.  If False modify
		    `a` in place and return a view.
		
		Returns
		-------
		result : MaskedArray
		    The result of masking `a` where `condition` is True.
		
		See Also
		--------
		masked_values : Mask using floating point equality.
		masked_equal : Mask where equal to a given value.
		masked_not_equal : Mask where `not` equal to a given value.
		masked_less_equal : Mask where less than or equal to a given value.
		masked_greater_equal : Mask where greater than or equal to a given value.
		masked_less : Mask where less than a given value.
		masked_greater : Mask where greater than a given value.
		masked_inside : Mask inside a given interval.
		masked_outside : Mask outside a given interval.
		masked_invalid : Mask invalid values (NaNs or infs).
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.arange(4)
		>>> a
		array([0, 1, 2, 3])
		>>> ma.masked_where(a <= 2, a)
		masked_array(data = [-- -- -- 3],
		      mask = [ True  True  True False],
		      fill_value=999999)
		
		Mask array `b` conditional on `a`.
		
		>>> b = ['a', 'b', 'c', 'd']
		>>> ma.masked_where(a == 2, b)
		masked_array(data = [a b -- d],
		      mask = [False False  True False],
		      fill_value=N/A)
		
		Effect of the `copy` argument.
		
		>>> c = ma.masked_where(a <= 2, a)
		>>> c
		masked_array(data = [-- -- -- 3],
		      mask = [ True  True  True False],
		      fill_value=999999)
		>>> c[0] = 99
		>>> c
		masked_array(data = [99 -- -- 3],
		      mask = [False  True  True False],
		      fill_value=999999)
		>>> a
		array([0, 1, 2, 3])
		>>> c = ma.masked_where(a <= 2, a, copy=False)
		>>> c[0] = 99
		>>> c
		masked_array(data = [99 -- -- 3],
		      mask = [False  True  True False],
		      fill_value=999999)
		>>> a
		array([99,  1,  2,  3])
		
		When `condition` or `a` contain masked values.
		
		>>> a = np.arange(4)
		>>> a = ma.masked_where(a == 2, a)
		>>> a
		masked_array(data = [0 1 -- 3],
		      mask = [False False  True False],
		      fill_value=999999)
		>>> b = np.arange(4)
		>>> b = ma.masked_where(b == 0, b)
		>>> b
		masked_array(data = [-- 1 2 3],
		      mask = [ True False False False],
		      fill_value=999999)
		>>> ma.masked_where(a == 3, b)
		masked_array(data = [-- 1 -- --],
		      mask = [ True False  True  True],
		      fill_value=999999)
	**/
	static public function masked_where(condition:Dynamic, a:Dynamic, ?copy:Dynamic):numpy.ma.MaskedArray;
	/**
		Return the maximum along a given axis.
		
		Parameters
		----------
		axis : {None, int}, optional
		    Axis along which to operate.  By default, ``axis`` is None and the
		    flattened input is used.
		out : array_like, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		fill_value : {var}, optional
		    Value used to fill in the masked values.
		    If None, use the output of maximum_fill_value().
		
		Returns
		-------
		amax : array_like
		    New array holding the result.
		    If ``out`` was specified, ``out`` is returned.
		
		See Also
		--------
		maximum_fill_value
		    Returns the maximum filling value for a given datatype.
	**/
	static public function max(obj:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?keepdims:Dynamic):python.NativeIterable<Dynamic>;
	static public function maximum(a:Dynamic, ?b:Dynamic):Dynamic;
	/**
		Return the minimum value that can be represented by the dtype of an object.
		
		This function is useful for calculating a fill value suitable for
		taking the maximum of an array with a given dtype.
		
		Parameters
		----------
		obj : {ndarray, dtype}
		    An object that can be queried for it's numeric type.
		
		Returns
		-------
		val : scalar
		    The minimum representable value.
		
		Raises
		------
		TypeError
		    If `obj` isn't a suitable numeric type.
		
		See Also
		--------
		minimum_fill_value : The inverse function.
		set_fill_value : Set the filling value of a masked array.
		MaskedArray.fill_value : Return current fill value.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.int8()
		>>> ma.maximum_fill_value(a)
		-128
		>>> a = np.int32()
		>>> ma.maximum_fill_value(a)
		-2147483648
		
		An array of numeric data can also be passed.
		
		>>> a = np.array([1, 2, 3], dtype=np.int8)
		>>> ma.maximum_fill_value(a)
		-128
		>>> a = np.array([1, 2, 3], dtype=np.float32)
		>>> ma.maximum_fill_value(a)
		-inf
	**/
	static public function maximum_fill_value(obj:Dynamic):Dynamic;
	/**
		mean(self, axis=None, dtype=None, out=None, keepdims=<class 'numpy._globals._NoValue'>)
		
		Returns the average of the array elements along given axis.
		
		Masked entries are ignored, and result elements which are not
		finite will be masked.
		
		Refer to `numpy.mean` for full documentation.
		
		See Also
		--------
		ndarray.mean : corresponding function for ndarrays
		numpy.mean : Equivalent function
		numpy.ma.average: Weighted average.
		
		Examples
		--------
		>>> a = np.ma.array([1,2,3], mask=[False, False, True])
		>>> a
		masked_array(data = [1 2 --],
		             mask = [False False  True],
		       fill_value = 999999)
		>>> a.mean()
		1.5
	**/
	static public function mean(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the median along the specified axis.
		
		Returns the median of the array elements.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : int, optional
		    Axis along which the medians are computed. The default (None) is
		    to compute the median along a flattened version of the array.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow use of memory of input array (a) for
		    calculations. The input array will be modified by the call to
		    median. This will save memory when you do not need to preserve
		    the contents of the input array. Treat the input as undefined,
		    but it will probably be fully or partially sorted. Default is
		    False. Note that, if `overwrite_input` is True, and the input
		    is not already an `ndarray`, an error will be raised.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		median : ndarray
		    A new array holding the result is returned unless out is
		    specified, in which case a reference to out is returned.
		    Return data-type is `float64` for integers and floats smaller than
		    `float64`, or the input data-type, otherwise.
		
		See Also
		--------
		mean
		
		Notes
		-----
		Given a vector ``V`` with ``N`` non masked values, the median of ``V``
		is the middle value of a sorted copy of ``V`` (``Vs``) - i.e.
		``Vs[(N-1)/2]``, when ``N`` is odd, or ``{Vs[N/2 - 1] + Vs[N/2]}/2``
		when ``N`` is even.
		
		Examples
		--------
		>>> x = np.ma.array(np.arange(8), mask=[0]*4 + [1]*4)
		>>> np.ma.median(x)
		1.5
		
		>>> x = np.ma.array(np.arange(10).reshape(2, 5), mask=[0]*6 + [1]*4)
		>>> np.ma.median(x)
		2.5
		>>> np.ma.median(x, axis=-1, overwrite_input=True)
		masked_array(data = [ 2.  5.],
		             mask = False,
		       fill_value = 1e+20)
	**/
	static public function median(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Return the minimum along a given axis.
		
		Parameters
		----------
		axis : {None, int}, optional
		    Axis along which to operate.  By default, ``axis`` is None and the
		    flattened input is used.
		out : array_like, optional
		    Alternative output array in which to place the result.  Must be of
		    the same shape and buffer length as the expected output.
		fill_value : {var}, optional
		    Value used to fill in the masked values.
		    If None, use the output of `minimum_fill_value`.
		
		Returns
		-------
		amin : array_like
		    New array holding the result.
		    If ``out`` was specified, ``out`` is returned.
		
		See Also
		--------
		minimum_fill_value
		    Returns the minimum filling value for a given datatype.
	**/
	static public function min(obj:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?keepdims:Dynamic):python.NativeIterable<Dynamic>;
	static public function minimum(a:Dynamic, ?b:Dynamic):Dynamic;
	/**
		Return the maximum value that can be represented by the dtype of an object.
		
		This function is useful for calculating a fill value suitable for
		taking the minimum of an array with a given dtype.
		
		Parameters
		----------
		obj : ndarray or dtype
		    An object that can be queried for it's numeric type.
		
		Returns
		-------
		val : scalar
		    The maximum representable value.
		
		Raises
		------
		TypeError
		    If `obj` isn't a suitable numeric type.
		
		See Also
		--------
		maximum_fill_value : The inverse function.
		set_fill_value : Set the filling value of a masked array.
		MaskedArray.fill_value : Return current fill value.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.int8()
		>>> ma.minimum_fill_value(a)
		127
		>>> a = np.int32()
		>>> ma.minimum_fill_value(a)
		2147483647
		
		An array of numeric data can also be passed.
		
		>>> a = np.array([1, 2, 3], dtype=np.int8)
		>>> ma.minimum_fill_value(a)
		127
		>>> a = np.array([1, 2, 3], dtype=np.float32)
		>>> ma.minimum_fill_value(a)
		inf
	**/
	static public function minimum_fill_value(obj:Dynamic):Dynamic;
	/**
		remainder(x1, x2[, out])
		
		Return element-wise remainder of division.
		
		Computes the remainder complementary to the `floor_divide` function.  It is
		equivalent to the Python modulus operator``x1 % x2`` and has the same sign
		as the divisor `x2`. It should not be confused with the Matlab(TM) ``rem``
		function.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		y : ndarray
		    The element-wise remainder of the quotient ``floor_divide(x1, x2)``.
		    Returns a scalar if both  `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent of Python ``//`` operator.
		fmod : Equivalent of the Matlab(TM) ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
		array([0, 1, 2, 3, 4, 0, 1])
	**/
	static public function mod(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	static public var mr_ : Dynamic;
	/**
		multiply(x1, x2[, out])
		
		Multiply arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays to be multiplied.
		
		Returns
		-------
		y : ndarray
		    The product of `x1` and `x2`, element-wise. Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to `x1` * `x2` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.multiply(2.0, 4.0)
		8.0
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.multiply(x1, x2)
		array([[  0.,   1.,   4.],
		       [  0.,   4.,  10.],
		       [  0.,   7.,  16.]])
	**/
	static public function multiply(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Return the number of dimensions of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.  If it is not already an ndarray, a conversion is
		    attempted.
		
		Returns
		-------
		number_of_dimensions : int
		    The number of dimensions in `a`.  Scalars are zero-dimensional.
		
		See Also
		--------
		ndarray.ndim : equivalent method
		shape : dimensions of array
		ndarray.shape : dimensions of array
		
		Examples
		--------
		>>> np.ndim([[1,2,3],[4,5,6]])
		2
		>>> np.ndim(np.array([[1,2,3],[4,5,6]]))
		2
		>>> np.ndim(1)
		0
	**/
	static public function ndim(obj:Dynamic):Int;
	/**
		negative(x[, out])
		
		Numerical negative, element-wise.
		
		Parameters
		----------
		x : array_like or scalar
		    Input array.
		
		Returns
		-------
		y : ndarray or scalar
		    Returned array or scalar: `y = -x`.
		
		Examples
		--------
		>>> np.negative([1.,-1.])
		array([-1.,  1.])
	**/
	static public function negative(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var nomask : Dynamic;
	/**
		nonzero(self)
		
		Return the indices of unmasked elements that are not zero.
		
		Returns a tuple of arrays, one for each dimension, containing the
		indices of the non-zero elements in that dimension. The corresponding
		non-zero values can be obtained with::
		
		    a[a.nonzero()]
		
		To group the indices by element, rather than dimension, use
		instead::
		
		    np.transpose(a.nonzero())
		
		The result of this is always a 2d array, with a row for each non-zero
		element.
		
		Parameters
		----------
		None
		
		Returns
		-------
		tuple_of_arrays : tuple
		    Indices of elements that are non-zero.
		
		See Also
		--------
		numpy.nonzero :
		    Function operating on ndarrays.
		flatnonzero :
		    Return indices that are non-zero in the flattened version of the input
		    array.
		ndarray.nonzero :
		    Equivalent ndarray method.
		count_nonzero :
		    Counts the number of non-zero elements in the input array.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> x = ma.array(np.eye(3))
		>>> x
		masked_array(data =
		 [[ 1.  0.  0.]
		 [ 0.  1.  0.]
		 [ 0.  0.  1.]],
		      mask =
		 False,
		      fill_value=1e+20)
		>>> x.nonzero()
		(array([0, 1, 2]), array([0, 1, 2]))
		
		Masked elements are ignored.
		
		>>> x[1, 1] = ma.masked
		>>> x
		masked_array(data =
		 [[1.0 0.0 0.0]
		 [0.0 -- 0.0]
		 [0.0 0.0 1.0]],
		      mask =
		 [[False False False]
		 [False  True False]
		 [False False False]],
		      fill_value=1e+20)
		>>> x.nonzero()
		(array([0, 2]), array([0, 2]))
		
		Indices can also be grouped by element.
		
		>>> np.transpose(x.nonzero())
		array([[0, 0],
		       [2, 2]])
		
		A common use for ``nonzero`` is to find the indices of an array, where
		a condition is True.  Given an array `a`, the condition `a` > 3 is a
		boolean array and since False is interpreted as 0, ma.nonzero(a > 3)
		yields the indices of the `a` where the condition is true.
		
		>>> a = ma.array([[1,2,3],[4,5,6],[7,8,9]])
		>>> a > 3
		masked_array(data =
		 [[False False False]
		 [ True  True  True]
		 [ True  True  True]],
		      mask =
		 False,
		      fill_value=999999)
		>>> ma.nonzero(a > 3)
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
		
		The ``nonzero`` method of the condition array can also be called.
		
		>>> (a > 3).nonzero()
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
	**/
	static public function nonzero(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):python.Tuple<Dynamic>;
	/**
		not_equal(x1, x2[, out])
		
		Return (x1 != x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		  Input arrays.
		out : ndarray, optional
		  A placeholder the same shape as `x1` to store the result.
		  See `doc.ufuncs` (Section "Output arguments") for more details.
		
		Returns
		-------
		not_equal : ndarray bool, scalar bool
		  For each element in `x1, x2`, return True if `x1` is not equal
		  to `x2` and False otherwise.
		
		
		See Also
		--------
		equal, greater, greater_equal, less, less_equal
		
		Examples
		--------
		>>> np.not_equal([1.,2.], [1., 3.])
		array([False,  True], dtype=bool)
		>>> np.not_equal([1, 2], [[1, 3],[1, 4]])
		array([[False,  True],
		       [False,  True]], dtype=bool)
	**/
	static public function not_equal(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find contiguous unmasked data in a masked array along the given axis.
		
		Parameters
		----------
		a : array_like
		    The input array.
		axis : int, optional
		    Axis along which to perform the operation.
		    If None (default), applies to a flattened version of the array.
		
		Returns
		-------
		endpoints : list
		    A list of slices (start and end indexes) of unmasked indexes
		    in the array.
		
		See Also
		--------
		flatnotmasked_edges, flatnotmasked_contiguous, notmasked_edges,
		clump_masked, clump_unmasked
		
		Notes
		-----
		Only accepts 2-D arrays at most.
		
		Examples
		--------
		>>> a = np.arange(9).reshape((3, 3))
		>>> mask = np.zeros_like(a)
		>>> mask[1:, 1:] = 1
		
		>>> ma = np.ma.array(a, mask=mask)
		>>> np.array(ma[~ma.mask])
		array([0, 1, 2, 3, 6])
		
		>>> np.ma.notmasked_contiguous(ma)
		[slice(0, 4, None), slice(6, 7, None)]
	**/
	static public function notmasked_contiguous(a:Dynamic, ?axis:Dynamic):Array<Dynamic>;
	/**
		Find the indices of the first and last unmasked values along an axis.
		
		If all values are masked, return None.  Otherwise, return a list
		of two tuples, corresponding to the indices of the first and last
		unmasked values respectively.
		
		Parameters
		----------
		a : array_like
		    The input array.
		axis : int, optional
		    Axis along which to perform the operation.
		    If None (default), applies to a flattened version of the array.
		
		Returns
		-------
		edges : ndarray or list
		    An array of start and end indexes if there are any masked data in
		    the array. If there are no masked data in the array, `edges` is a
		    list of the first and last index.
		
		See Also
		--------
		flatnotmasked_contiguous, flatnotmasked_edges, notmasked_contiguous,
		clump_masked, clump_unmasked
		
		Examples
		--------
		>>> a = np.arange(9).reshape((3, 3))
		>>> m = np.zeros_like(a)
		>>> m[1:, 1:] = 1
		
		>>> am = np.ma.array(a, mask=m)
		>>> np.array(am[~am.mask])
		array([0, 1, 2, 3, 6])
		
		>>> np.ma.notmasked_edges(ma)
		array([0, 6])
	**/
	static public function notmasked_edges(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		ones(shape, dtype=None, order='C')
		
		Return a new array of given shape and type, filled with ones.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of ones with the given shape, dtype, and order.
		
		See Also
		--------
		zeros, ones_like
		
		Examples
		--------
		>>> np.ones(5)
		array([ 1.,  1.,  1.,  1.,  1.])
		
		>>> np.ones((5,), dtype=np.int)
		array([1, 1, 1, 1, 1])
		
		>>> np.ones((2, 1))
		array([[ 1.],
		       [ 1.]])
		
		>>> s = (2,2)
		>>> np.ones(s)
		array([[ 1.,  1.],
		       [ 1.,  1.]])
	**/
	static public function ones(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Compute the outer product of two vectors.
		
		Given two vectors, ``a = [a0, a1, ..., aM]`` and
		``b = [b0, b1, ..., bN]``,
		the outer product [1]_ is::
		
		  [[a0*b0  a0*b1 ... a0*bN ]
		   [a1*b0    .
		   [ ...          .
		   [aM*b0            aM*bN ]]
		
		Parameters
		----------
		a : (M,) array_like
		    First input vector.  Input is flattened if
		    not already 1-dimensional.
		b : (N,) array_like
		    Second input vector.  Input is flattened if
		    not already 1-dimensional.
		out : (M, N) ndarray, optional
		    A location where the result is stored
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		out : (M, N) ndarray
		    ``out[i, j] = a[i] * b[j]``
		
		See also
		--------
		inner, einsum
		
		References
		----------
		.. [1] : G. H. Golub and C. F. van Loan, *Matrix Computations*, 3rd
		         ed., Baltimore, MD, Johns Hopkins University Press, 1996,
		         pg. 8.
		
		Examples
		--------
		Make a (*very* coarse) grid for computing a Mandelbrot set:
		
		>>> rl = np.outer(np.ones((5,)), np.linspace(-2, 2, 5))
		>>> rl
		array([[-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.]])
		>>> im = np.outer(1j*np.linspace(2, -2, 5), np.ones((5,)))
		>>> im
		array([[ 0.+2.j,  0.+2.j,  0.+2.j,  0.+2.j,  0.+2.j],
		       [ 0.+1.j,  0.+1.j,  0.+1.j,  0.+1.j,  0.+1.j],
		       [ 0.+0.j,  0.+0.j,  0.+0.j,  0.+0.j,  0.+0.j],
		       [ 0.-1.j,  0.-1.j,  0.-1.j,  0.-1.j,  0.-1.j],
		       [ 0.-2.j,  0.-2.j,  0.-2.j,  0.-2.j,  0.-2.j]])
		>>> grid = rl + im
		>>> grid
		array([[-2.+2.j, -1.+2.j,  0.+2.j,  1.+2.j,  2.+2.j],
		       [-2.+1.j, -1.+1.j,  0.+1.j,  1.+1.j,  2.+1.j],
		       [-2.+0.j, -1.+0.j,  0.+0.j,  1.+0.j,  2.+0.j],
		       [-2.-1.j, -1.-1.j,  0.-1.j,  1.-1.j,  2.-1.j],
		       [-2.-2.j, -1.-2.j,  0.-2.j,  1.-2.j,  2.-2.j]])
		
		An example using a "vector" of letters:
		
		>>> x = np.array(['a', 'b', 'c'], dtype=object)
		>>> np.outer(x, [1, 2, 3])
		array([[a, aa, aaa],
		       [b, bb, bbb],
		       [c, cc, ccc]], dtype=object)
		
		
		
		Notes
		-----
		Masked values are replaced by 0.
	**/
	static public function outer(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Compute the outer product of two vectors.
		
		Given two vectors, ``a = [a0, a1, ..., aM]`` and
		``b = [b0, b1, ..., bN]``,
		the outer product [1]_ is::
		
		  [[a0*b0  a0*b1 ... a0*bN ]
		   [a1*b0    .
		   [ ...          .
		   [aM*b0            aM*bN ]]
		
		Parameters
		----------
		a : (M,) array_like
		    First input vector.  Input is flattened if
		    not already 1-dimensional.
		b : (N,) array_like
		    Second input vector.  Input is flattened if
		    not already 1-dimensional.
		out : (M, N) ndarray, optional
		    A location where the result is stored
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		out : (M, N) ndarray
		    ``out[i, j] = a[i] * b[j]``
		
		See also
		--------
		inner, einsum
		
		References
		----------
		.. [1] : G. H. Golub and C. F. van Loan, *Matrix Computations*, 3rd
		         ed., Baltimore, MD, Johns Hopkins University Press, 1996,
		         pg. 8.
		
		Examples
		--------
		Make a (*very* coarse) grid for computing a Mandelbrot set:
		
		>>> rl = np.outer(np.ones((5,)), np.linspace(-2, 2, 5))
		>>> rl
		array([[-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.]])
		>>> im = np.outer(1j*np.linspace(2, -2, 5), np.ones((5,)))
		>>> im
		array([[ 0.+2.j,  0.+2.j,  0.+2.j,  0.+2.j,  0.+2.j],
		       [ 0.+1.j,  0.+1.j,  0.+1.j,  0.+1.j,  0.+1.j],
		       [ 0.+0.j,  0.+0.j,  0.+0.j,  0.+0.j,  0.+0.j],
		       [ 0.-1.j,  0.-1.j,  0.-1.j,  0.-1.j,  0.-1.j],
		       [ 0.-2.j,  0.-2.j,  0.-2.j,  0.-2.j,  0.-2.j]])
		>>> grid = rl + im
		>>> grid
		array([[-2.+2.j, -1.+2.j,  0.+2.j,  1.+2.j,  2.+2.j],
		       [-2.+1.j, -1.+1.j,  0.+1.j,  1.+1.j,  2.+1.j],
		       [-2.+0.j, -1.+0.j,  0.+0.j,  1.+0.j,  2.+0.j],
		       [-2.-1.j, -1.-1.j,  0.-1.j,  1.-1.j,  2.-1.j],
		       [-2.-2.j, -1.-2.j,  0.-2.j,  1.-2.j,  2.-2.j]])
		
		An example using a "vector" of letters:
		
		>>> x = np.array(['a', 'b', 'c'], dtype=object)
		>>> np.outer(x, [1, 2, 3])
		array([[a, aa, aaa],
		       [b, bb, bbb],
		       [c, cc, ccc]], dtype=object)
		
		
		
		Notes
		-----
		Masked values are replaced by 0.
	**/
	static public function outerproduct(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Least squares polynomial fit.
		
		Fit a polynomial ``p(x) = p[0] * x**deg + ... + p[deg]`` of degree `deg`
		to points `(x, y)`. Returns a vector of coefficients `p` that minimises
		the squared error.
		
		Parameters
		----------
		x : array_like, shape (M,)
		    x-coordinates of the M sample points ``(x[i], y[i])``.
		y : array_like, shape (M,) or (M, K)
		    y-coordinates of the sample points. Several data sets of sample
		    points sharing the same x-coordinates can be fitted at once by
		    passing in a 2D-array that contains one dataset per column.
		deg : int
		    Degree of the fitting polynomial
		rcond : float, optional
		    Relative condition number of the fit. Singular values smaller than
		    this relative to the largest singular value will be ignored. The
		    default value is len(x)*eps, where eps is the relative precision of
		    the float type, about 2e-16 in most cases.
		full : bool, optional
		    Switch determining nature of return value. When it is False (the
		    default) just the coefficients are returned, when True diagnostic
		    information from the singular value decomposition is also returned.
		w : array_like, shape (M,), optional
		    Weights to apply to the y-coordinates of the sample points. For
		    gaussian uncertainties, use 1/sigma (not 1/sigma**2).
		cov : bool, optional
		    Return the estimate and the covariance matrix of the estimate
		    If full is True, then cov is not returned.
		
		Returns
		-------
		p : ndarray, shape (M,) or (M, K)
		    Polynomial coefficients, highest power first.  If `y` was 2-D, the
		    coefficients for `k`-th data set are in ``p[:,k]``.
		
		residuals, rank, singular_values, rcond :
		    Present only if `full` = True.  Residuals of the least-squares fit,
		    the effective rank of the scaled Vandermonde coefficient matrix,
		    its singular values, and the specified value of `rcond`. For more
		    details, see `linalg.lstsq`.
		
		V : ndarray, shape (M,M) or (M,M,K)
		    Present only if `full` = False and `cov`=True.  The covariance
		    matrix of the polynomial coefficient estimates.  The diagonal of
		    this matrix are the variance estimates for each coefficient.  If y
		    is a 2-D array, then the covariance matrix for the `k`-th data set
		    are in ``V[:,:,k]``
		
		
		Warns
		-----
		RankWarning
		    The rank of the coefficient matrix in the least-squares fit is
		    deficient. The warning is only raised if `full` = False.
		
		    The warnings can be turned off by
		
		    >>> import warnings
		    >>> warnings.simplefilter('ignore', np.RankWarning)
		
		See Also
		--------
		polyval : Compute polynomial values.
		linalg.lstsq : Computes a least-squares fit.
		scipy.interpolate.UnivariateSpline : Computes spline fits.
		
		Notes
		-----
		The solution minimizes the squared error
		
		.. math ::
		    E = \sum_{j=0}^k |p(x_j) - y_j|^2
		
		in the equations::
		
		    x[0]**n * p[0] + ... + x[0] * p[n-1] + p[n] = y[0]
		    x[1]**n * p[0] + ... + x[1] * p[n-1] + p[n] = y[1]
		    ...
		    x[k]**n * p[0] + ... + x[k] * p[n-1] + p[n] = y[k]
		
		The coefficient matrix of the coefficients `p` is a Vandermonde matrix.
		
		`polyfit` issues a `RankWarning` when the least-squares fit is badly
		conditioned. This implies that the best fit is not well-defined due
		to numerical error. The results may be improved by lowering the polynomial
		degree or by replacing `x` by `x` - `x`.mean(). The `rcond` parameter
		can also be set to a value smaller than its default, but the resulting
		fit may be spurious: including contributions from the small singular
		values can add numerical noise to the result.
		
		Note that fitting polynomial coefficients is inherently badly conditioned
		when the degree of the polynomial is large or the interval of sample points
		is badly centered. The quality of the fit should always be checked in these
		cases. When polynomial fits are not satisfactory, splines may be a good
		alternative.
		
		References
		----------
		.. [1] Wikipedia, "Curve fitting",
		       http://en.wikipedia.org/wiki/Curve_fitting
		.. [2] Wikipedia, "Polynomial interpolation",
		       http://en.wikipedia.org/wiki/Polynomial_interpolation
		
		Examples
		--------
		>>> x = np.array([0.0, 1.0, 2.0, 3.0,  4.0,  5.0])
		>>> y = np.array([0.0, 0.8, 0.9, 0.1, -0.8, -1.0])
		>>> z = np.polyfit(x, y, 3)
		>>> z
		array([ 0.08703704, -0.81349206,  1.69312169, -0.03968254])
		
		It is convenient to use `poly1d` objects for dealing with polynomials:
		
		>>> p = np.poly1d(z)
		>>> p(0.5)
		0.6143849206349179
		>>> p(3.5)
		-0.34732142857143039
		>>> p(10)
		22.579365079365115
		
		High-order polynomials may oscillate wildly:
		
		>>> p30 = np.poly1d(np.polyfit(x, y, 30))
		/... RankWarning: Polyfit may be poorly conditioned...
		>>> p30(4)
		-0.80000000000000204
		>>> p30(5)
		-0.99999999999999445
		>>> p30(4.5)
		-0.10547061179440398
		
		Illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> xp = np.linspace(-2, 6, 100)
		>>> _ = plt.plot(x, y, '.', xp, p(xp), '-', xp, p30(xp), '--')
		>>> plt.ylim(-2,2)
		(-2, 2)
		>>> plt.show()
		
		
		
		Notes
		-----
		
		Any masked values in x is propagated in y, and vice-versa.
	**/
	static public function polyfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic, ?full:Dynamic, ?w:Dynamic, ?cov:Dynamic):Dynamic;
	/**
		Returns element-wise base array raised to power from second array.
		
		This is the masked array version of `numpy.power`. For details see
		`numpy.power`.
		
		See Also
		--------
		numpy.power
		
		Notes
		-----
		The *out* argument to `numpy.power` is not supported, `third` has to be
		None.
	**/
	static public function power(a:Dynamic, b:Dynamic, ?third:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		prod(self, axis=None, dtype=None, out=None, keepdims=<class 'numpy._globals._NoValue'>)
		
		Return the product of the array elements over the given axis.
		
		Masked elements are set to 1 internally for computation.
		
		Refer to `numpy.prod` for full documentation.
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is raised
		on overflow.
		
		See Also
		--------
		ndarray.prod : corresponding function for ndarrays
		numpy.prod : equivalent function
	**/
	static public function prod(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		prod(self, axis=None, dtype=None, out=None, keepdims=<class 'numpy._globals._NoValue'>)
		
		Return the product of the array elements over the given axis.
		
		Masked elements are set to 1 internally for computation.
		
		Refer to `numpy.prod` for full documentation.
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is raised
		on overflow.
		
		See Also
		--------
		ndarray.prod : corresponding function for ndarrays
		numpy.prod : equivalent function
	**/
	static public function product(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return (maximum - minimum) along the the given dimension
		(i.e. peak-to-peak value).
		
		Parameters
		----------
		axis : {None, int}, optional
		    Axis along which to find the peaks.  If None (default) the
		    flattened array is used.
		out : {None, array_like}, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type will be cast if necessary.
		fill_value : {var}, optional
		    Value used to fill in the masked values.
		
		Returns
		-------
		ptp : ndarray.
		    A new array holding the result, unless ``out`` was
		    specified, in which case a reference to ``out`` is returned.
	**/
	static public function ptp(obj:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Set storage-indexed locations to corresponding values.
		
		This function is equivalent to `MaskedArray.put`, see that method
		for details.
		
		See Also
		--------
		MaskedArray.put
	**/
	static public function put(a:Dynamic, indices:Dynamic, values:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Changes elements of an array based on conditional and input values.
		
		This is the masked array version of `numpy.putmask`, for details see
		`numpy.putmask`.
		
		See Also
		--------
		numpy.putmask
		
		Notes
		-----
		Using a masked array as `values` will **not** transform a `ndarray` into
		a `MaskedArray`.
	**/
	static public function putmask(a:Dynamic, mask:Dynamic, values:Dynamic):Dynamic;
	/**
		Return the number of dimensions of an array.
		
		If `a` is not already an array, a conversion is attempted.
		Scalars are zero dimensional.
		
		.. note::
		    This function is deprecated in NumPy 1.9 to avoid confusion with
		    `numpy.linalg.matrix_rank`. The ``ndim`` attribute or function
		    should be used instead.
		
		Parameters
		----------
		a : array_like
		    Array whose number of dimensions is desired. If `a` is not an array,
		    a conversion is attempted.
		
		Returns
		-------
		number_of_dimensions : int
		    The number of dimensions in the array.
		
		See Also
		--------
		ndim : equivalent function
		ndarray.ndim : equivalent property
		shape : dimensions of array
		ndarray.shape : dimensions of array
		
		Notes
		-----
		In the old Numeric package, `rank` was the term used for the number of
		dimensions, but in Numpy `ndim` is used instead.
		
		Examples
		--------
		>>> np.rank([1,2,3])
		1
		>>> np.rank(np.array([[1,2,3],[4,5,6]]))
		2
		>>> np.rank(1)
		0
	**/
	static public function rank(obj:Dynamic):Int;
	/**
		ravel(self, order='C')
		
		Returns a 1D version of self, as a view.
		
		Parameters
		----------
		order : {'C', 'F', 'A', 'K'}, optional
		    The elements of `a` are read using this index order. 'C' means to
		    index the elements in C-like order, with the last axis index
		    changing fastest, back to the first axis index changing slowest.
		    'F' means to index the elements in Fortran-like index order, with
		    the first index changing fastest, and the last index changing
		    slowest. Note that the 'C' and 'F' options take no account of the
		    memory layout of the underlying array, and only refer to the order
		    of axis indexing.  'A' means to read the elements in Fortran-like
		    index order if `m` is Fortran *contiguous* in memory, C-like order
		    otherwise.  'K' means to read the elements in the order they occur
		    in memory, except for reversing the data when strides are negative.
		    By default, 'C' index order is used.
		
		Returns
		-------
		MaskedArray
		    Output view is of shape ``(self.size,)`` (or
		    ``(np.ma.product(self.shape),)``).
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> print(x)
		[[1 -- 3]
		 [-- 5 --]
		 [7 -- 9]]
		>>> print(x.ravel())
		[1 -- 3 -- 5 -- 7 -- 9]
	**/
	static public function ravel(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		remainder(x1, x2[, out])
		
		Return element-wise remainder of division.
		
		Computes the remainder complementary to the `floor_divide` function.  It is
		equivalent to the Python modulus operator``x1 % x2`` and has the same sign
		as the divisor `x2`. It should not be confused with the Matlab(TM) ``rem``
		function.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See doc.ufuncs.
		
		Returns
		-------
		y : ndarray
		    The element-wise remainder of the quotient ``floor_divide(x1, x2)``.
		    Returns a scalar if both  `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent of Python ``//`` operator.
		fmod : Equivalent of the Matlab(TM) ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
		array([0, 1, 2, 3, 4, 0, 1])
	**/
	static public function remainder(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		repeat(self, *args, **params)
		a.repeat(repeats, axis=None)
		
		    Repeat elements of an array.
		
		    Refer to `numpy.repeat` for full documentation.
		
		    See Also
		    --------
		    numpy.repeat : equivalent function
	**/
	static public function repeat(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns an array containing the same data with a new shape.
		
		Refer to `MaskedArray.reshape` for full documentation.
		
		See Also
		--------
		MaskedArray.reshape : equivalent function
	**/
	static public function reshape(a:Dynamic, new_shape:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Return a new masked array with the specified size and shape.
		
		This is the masked equivalent of the `numpy.resize` function. The new
		array is filled with repeated copies of `x` (in the order that the
		data are stored in memory). If `x` is masked, the new array will be
		masked, and the new mask will be a repetition of the old one.
		
		See Also
		--------
		numpy.resize : Equivalent function in the top level NumPy module.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = ma.array([[1, 2] ,[3, 4]])
		>>> a[0, 1] = ma.masked
		>>> a
		masked_array(data =
		 [[1 --]
		 [3 4]],
		             mask =
		 [[False  True]
		 [False False]],
		       fill_value = 999999)
		>>> np.resize(a, (3, 3))
		array([[1, 2, 3],
		       [4, 1, 2],
		       [3, 4, 1]])
		>>> ma.resize(a, (3, 3))
		masked_array(data =
		 [[1 -- 3]
		 [4 1 --]
		 [3 4 1]],
		             mask =
		 [[False  True False]
		 [False False  True]
		 [False False False]],
		       fill_value = 999999)
		
		A MaskedArray is always returned, regardless of the input type.
		
		>>> a = np.array([[1, 2] ,[3, 4]])
		>>> ma.resize(a, (3, 3))
		masked_array(data =
		 [[1 2 3]
		 [4 1 2]
		 [3 4 1]],
		             mask =
		 False,
		       fill_value = 999999)
	**/
	static public function resize(x:Dynamic, new_shape:Dynamic):Dynamic;
	/**
		Shift the bits of an integer to the right.
		
		This is the masked array version of `numpy.right_shift`, for details
		see that function.
		
		See Also
		--------
		numpy.right_shift
	**/
	static public function right_shift(a:Dynamic, n:Dynamic):Dynamic;
	/**
		Return a copy of a, rounded to 'decimals' places.
		
		When 'decimals' is negative, it specifies the number of positions
		to the left of the decimal point.  The real and imaginary parts of
		complex numbers are rounded separately. Nothing is done if the
		array is not of float type and 'decimals' is greater than or equal
		to 0.
		
		Parameters
		----------
		decimals : int
		    Number of decimals to round to. May be negative.
		out : array_like
		    Existing array to use for output.
		    If not given, returns a default copy of a.
		
		Notes
		-----
		If out is given and does not have a mask attribute, the mask of a
		is lost!
	**/
	static public function round(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return a copy of a, rounded to 'decimals' places.
		
		When 'decimals' is negative, it specifies the number of positions
		to the left of the decimal point.  The real and imaginary parts of
		complex numbers are rounded separately. Nothing is done if the
		array is not of float type and 'decimals' is greater than or equal
		to 0.
		
		Parameters
		----------
		decimals : int
		    Number of decimals to round to. May be negative.
		out : array_like
		    Existing array to use for output.
		    If not given, returns a default copy of a.
		
		Notes
		-----
		If out is given and does not have a mask attribute, the mask of a
		is lost!
	**/
	static public function round_(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		vstack(tup)
		
		    Stack arrays in sequence vertically (row wise).
		
		    Take a sequence of arrays and stack them vertically to make a single
		    array. Rebuild arrays divided by `vsplit`.
		
		    Parameters
		    ----------
		    tup : sequence of ndarrays
		        Tuple containing arrays to be stacked. The arrays must have the same
		        shape along all but the first axis.
		
		    Returns
		    -------
		    stacked : ndarray
		        The array formed by stacking the given arrays.
		
		    See Also
		    --------
		    stack : Join a sequence of arrays along a new axis.
		    hstack : Stack arrays in sequence horizontally (column wise).
		    dstack : Stack arrays in sequence depth wise (along third dimension).
		    concatenate : Join a sequence of arrays along an existing axis.
		    vsplit : Split array into a list of multiple sub-arrays vertically.
		
		    Notes
		    -----
		    Equivalent to ``np.concatenate(tup, axis=0)`` if `tup` contains arrays that
		    are at least 2-dimensional.
		
		    Examples
		    --------
		    >>> a = np.array([1, 2, 3])
		    >>> b = np.array([2, 3, 4])
		    >>> np.vstack((a,b))
		    array([[1, 2, 3],
		           [2, 3, 4]])
		
		    >>> a = np.array([[1], [2], [3]])
		    >>> b = np.array([[2], [3], [4]])
		    >>> np.vstack((a,b))
		    array([[1],
		           [2],
		           [3],
		           [2],
		           [3],
		           [4]])
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function row_stack(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the filling value of a, if a is a masked array.
		
		This function changes the fill value of the masked array `a` in place.
		If `a` is not a masked array, the function returns silently, without
		doing anything.
		
		Parameters
		----------
		a : array_like
		    Input array.
		fill_value : dtype
		    Filling value. A consistency test is performed to make sure
		    the value is compatible with the dtype of `a`.
		
		Returns
		-------
		None
		    Nothing returned by this function.
		
		See Also
		--------
		maximum_fill_value : Return the default fill value for a dtype.
		MaskedArray.fill_value : Return current fill value.
		MaskedArray.set_fill_value : Equivalent method.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = np.arange(5)
		>>> a
		array([0, 1, 2, 3, 4])
		>>> a = ma.masked_where(a < 3, a)
		>>> a
		masked_array(data = [-- -- -- 3 4],
		      mask = [ True  True  True False False],
		      fill_value=999999)
		>>> ma.set_fill_value(a, -999)
		>>> a
		masked_array(data = [-- -- -- 3 4],
		      mask = [ True  True  True False False],
		      fill_value=-999)
		
		Nothing happens if `a` is not a masked array.
		
		>>> a = range(5)
		>>> a
		[0, 1, 2, 3, 4]
		>>> ma.set_fill_value(a, 100)
		>>> a
		[0, 1, 2, 3, 4]
		>>> a = np.arange(5)
		>>> a
		array([0, 1, 2, 3, 4])
		>>> ma.set_fill_value(a, 100)
		>>> a
		array([0, 1, 2, 3, 4])
	**/
	static public function set_fill_value(a:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		Set difference of 1D arrays with unique elements.
		
		The output is always a masked array. See `numpy.setdiff1d` for more
		details.
		
		See Also
		--------
		numpy.setdiff1d : Equivalent function for ndarrays.
		
		Examples
		--------
		>>> x = np.ma.array([1, 2, 3, 4], mask=[0, 1, 0, 1])
		>>> np.ma.setdiff1d(x, [1, 2])
		masked_array(data = [3 --],
		             mask = [False  True],
		       fill_value = 999999)
	**/
	static public function setdiff1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):Dynamic;
	/**
		Set exclusive-or of 1-D arrays with unique elements.
		
		The output is always a masked array. See `numpy.setxor1d` for more details.
		
		See Also
		--------
		numpy.setxor1d : Equivalent function for ndarrays.
	**/
	static public function setxor1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):Dynamic;
	/**
		Return the shape of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		
		Returns
		-------
		shape : tuple of ints
		    The elements of the shape tuple give the lengths of the
		    corresponding array dimensions.
		
		See Also
		--------
		alen
		ndarray.shape : Equivalent array method.
		
		Examples
		--------
		>>> np.shape(np.eye(3))
		(3, 3)
		>>> np.shape([[1, 2]])
		(1, 2)
		>>> np.shape([0])
		(1,)
		>>> np.shape(0)
		()
		
		>>> a = np.array([(1, 2), (3, 4)], dtype=[('x', 'i4'), ('y', 'i4')])
		>>> np.shape(a)
		(2,)
		>>> a.shape
		(2,)
	**/
	static public function shape(obj:Dynamic):Dynamic;
	/**
		sin(x[, out])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
		
		Returns
		-------
		y : array_like
		    The sine of each element of x.
		
		See Also
		--------
		arcsin, sinh, cos
		
		Notes
		-----
		The sine is one of the fundamental functions of trigonometry (the
		mathematical study of triangles).  Consider a circle of radius 1
		centered on the origin.  A ray comes in from the :math:`+x` axis, makes
		an angle at the origin (measured counter-clockwise from that axis), and
		departs from the origin.  The :math:`y` coordinate of the outgoing
		ray's intersection with the unit circle is the sine of that angle.  It
		ranges from -1 for :math:`x=3\pi / 2` to +1 for :math:`\pi / 2.`  The
		function has zeroes where the angle is a multiple of :math:`\pi`.
		Sines of angles between :math:`\pi` and :math:`2\pi` are negative.
		The numerous properties of the sine and related functions are included
		in any standard trigonometry text.
		
		Examples
		--------
		Print sine of one angle:
		
		>>> np.sin(np.pi/2.)
		1.0
		
		Print sines of an array of angles given in degrees:
		
		>>> np.sin(np.array((0., 30., 45., 60., 90.)) * np.pi / 180. )
		array([ 0.        ,  0.5       ,  0.70710678,  0.8660254 ,  1.        ])
		
		Plot the sine function:
		
		>>> import matplotlib.pylab as plt
		>>> x = np.linspace(-np.pi, np.pi, 201)
		>>> plt.plot(x, np.sin(x))
		>>> plt.xlabel('Angle [rad]')
		>>> plt.ylabel('sin(x)')
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function sin(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):python.NativeIterable<Dynamic>;
	/**
		sinh(x[, out])
		
		Hyperbolic sine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) - np.exp(-x))`` or
		``-1j * np.sin(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic sine values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972, pg. 83.
		
		Examples
		--------
		>>> np.sinh(0)
		0.0
		>>> np.sinh(np.pi*1j/2)
		1j
		>>> np.sinh(np.pi*1j) # (exact value is 0)
		1.2246063538223773e-016j
		>>> # Discrepancy due to vagaries of floating point arithmetic.
		
		>>> # Example of providing the optional output parameter
		>>> out2 = np.sinh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.sinh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function sinh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Return the number of elements along a given axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : int, optional
		    Axis along which the elements are counted.  By default, give
		    the total number of elements.
		
		Returns
		-------
		element_count : int
		    Number of elements along the specified axis.
		
		See Also
		--------
		shape : dimensions of array
		ndarray.shape : dimensions of array
		ndarray.size : number of elements in array
		
		Examples
		--------
		>>> a = np.array([[1,2,3],[4,5,6]])
		>>> np.size(a)
		6
		>>> np.size(a,1)
		3
		>>> np.size(a,0)
		2
	**/
	static public function size(obj:Dynamic, ?axis:Dynamic):Int;
	/**
		soften_mask(self)
		
		Force the mask to soft.
		
		Whether the mask of a masked array is hard or soft is determined by
		its `hardmask` property. `soften_mask` sets `hardmask` to False.
		
		See Also
		--------
		hardmask
	**/
	static public function soften_mask(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Reduce `target` along the given `axis`.
	**/
	static public function sometrue(target:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Sort the array, in-place
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		axis : int, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    Sorting algorithm. Default is 'quicksort'.
		order : list, optional
		    When `a` is a structured array, this argument specifies which fields
		    to compare first, second, and so on.  This list does not need to
		    include all of the fields.
		endwith : {True, False}, optional
		    Whether missing values (if any) should be forced in the upper indices
		    (at the end of the array) (True) or lower indices (at the beginning).
		    When the array contains unmasked values of the largest (or smallest if
		    False) representable value of the datatype the ordering of these values
		    and the masked values is undefined.  To enforce the masked values are
		    at the end (beginning) in this case one must sort the mask.
		fill_value : {var}, optional
		    Value used internally for the masked values.
		    If ``fill_value`` is not None, it supersedes ``endwith``.
		
		Returns
		-------
		sorted_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		ndarray.sort : Method to sort an array in-place.
		argsort : Indirect sort.
		lexsort : Indirect stable sort on multiple keys.
		searchsorted : Find elements in a sorted array.
		
		Notes
		-----
		See ``sort`` for notes on the different sorting algorithms.
		
		Examples
		--------
		>>> a = ma.array([1, 2, 5, 4, 3],mask=[0, 1, 0, 1, 0])
		>>> # Default
		>>> a.sort()
		>>> print(a)
		[1 3 5 -- --]
		
		>>> a = ma.array([1, 2, 5, 4, 3],mask=[0, 1, 0, 1, 0])
		>>> # Put missing values in the front
		>>> a.sort(endwith=False)
		>>> print(a)
		[-- -- 1 3 5]
		
		>>> a = ma.array([1, 2, 5, 4, 3],mask=[0, 1, 0, 1, 0])
		>>> # fill_value takes over endwith
		>>> a.sort(endwith=False, fill_value=3)
		>>> print(a)
		[1 -- -- 3 5]
	**/
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic, ?endwith:Dynamic, ?fill_value:Dynamic):numpy.Ndarray;
	/**
		sqrt(x[, out])
		
		Return the positive square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, optional
		    Alternate array object in which to put the result; if provided, it
		    must have the same shape as `x`
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		
		See Also
		--------
		lib.scimath.sqrt
		    A version which returns complex numbers when given negative reals.
		
		Notes
		-----
		*sqrt* has--consistent with common convention--as its branch cut the
		real "interval" [`-inf`, 0), and is continuous from above on it.
		A branch cut is a curve in the complex plane across which a given
		complex function fails to be continuous.
		
		Examples
		--------
		>>> np.sqrt([1,4,9])
		array([ 1.,  2.,  3.])
		
		>>> np.sqrt([4, -1, -3+4J])
		array([ 2.+0.j,  0.+1.j,  1.+2.j])
		
		>>> np.sqrt([4, -1, numpy.inf])
		array([  2.,  NaN,  Inf])
	**/
	static public function sqrt(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Remove single-dimensional entries from the shape of an array.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    .. versionadded:: 1.7.0
		
		    Selects a subset of the single-dimensional entries in the
		    shape. If an axis is selected with shape entry greater than
		    one, an error is raised.
		
		Returns
		-------
		squeezed : ndarray
		    The input array, but with all or a subset of the
		    dimensions of length 1 removed. This is always `a` itself
		    or a view into `a`.
		
		Examples
		--------
		>>> x = np.array([[[0], [1], [2]]])
		>>> x.shape
		(1, 3, 1)
		>>> np.squeeze(x).shape
		(3,)
		>>> np.squeeze(x, axis=(2,)).shape
		(1, 3)
	**/
	static public function squeeze(a:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		std(self, axis=None, dtype=None, out=None, ddof=0, keepdims=<class 'numpy._globals._NoValue'>)
		
		Returns the standard deviation of the array elements along given axis.
		
		Masked entries are ignored.
		
		Refer to `numpy.std` for full documentation.
		
		See Also
		--------
		ndarray.std : corresponding function for ndarrays
		numpy.std : Equivalent function
	**/
	static public function std(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		subtract(x1, x2[, out])
		
		Subtract arguments, element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be subtracted from each other.
		
		Returns
		-------
		y : ndarray
		    The difference of `x1` and `x2`, element-wise.  Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to ``x1 - x2`` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.subtract(1.0, 4.0)
		-3.0
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.subtract(x1, x2)
		array([[ 0.,  0.,  0.],
		       [ 3.,  3.,  3.],
		       [ 6.,  6.,  6.]])
	**/
	static public function subtract(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		sum(self, axis=None, dtype=None, out=None, keepdims=<class 'numpy._globals._NoValue'>)
		
		Return the sum of the array elements over the given axis.
		
		Masked elements are set to 0 internally.
		
		Refer to `numpy.sum` for full documentation.
		
		See Also
		--------
		ndarray.sum : corresponding function for ndarrays
		numpy.sum : equivalent function
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> print(x)
		[[1 -- 3]
		 [-- 5 --]
		 [7 -- 9]]
		>>> print(x.sum())
		25
		>>> print(x.sum(axis=1))
		[4 5 16]
		>>> print(x.sum(axis=0))
		[8 5 12]
		>>> print(type(x.sum(axis=0, dtype=np.int64)[0]))
		<type 'numpy.int64'>
	**/
	static public function sum(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		swapaxes(self, *args, **params)
		a.swapaxes(axis1, axis2)
		
		    Return a view of the array with `axis1` and `axis2` interchanged.
		
		    Refer to `numpy.swapaxes` for full documentation.
		
		    See Also
		    --------
		    numpy.swapaxes : equivalent function
	**/
	static public function swapaxes(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		    
	**/
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		tan(x[, out])
		
		Compute tangent element-wise.
		
		Equivalent to ``np.sin(x)/np.cos(x)`` element-wise.
		
		Parameters
		----------
		x : array_like
		  Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		  The corresponding tangent values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> from math import pi
		>>> np.tan(np.array([-pi,pi/2,pi]))
		array([  1.22460635e-16,   1.63317787e+16,  -1.22460635e-16])
		>>>
		>>> # Example of providing the optional output parameter illustrating
		>>> # that what is returned is a reference to said parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function tan(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		tanh(x[, out])
		
		Compute hyperbolic tangent element-wise.
		
		Equivalent to ``np.sinh(x)/np.cosh(x)`` or ``-1j * np.tan(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic tangent values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		.. [1] M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		       New York, NY: Dover, 1972, pg. 83.
		       http://www.math.sfu.ca/~cbm/aands/
		
		.. [2] Wikipedia, "Hyperbolic function",
		       http://en.wikipedia.org/wiki/Hyperbolic_function
		
		Examples
		--------
		>>> np.tanh((0, np.pi*1j, np.pi*1j/2))
		array([ 0. +0.00000000e+00j,  0. -1.22460635e-16j,  0. +1.63317787e+16j])
		
		>>> # Example of providing the optional output parameter illustrating
		>>> # that what is returned is a reference to said parameter
		>>> out2 = np.tanh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.tanh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function tanh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
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
	/**
		trace(self, offset=0, axis1=0, axis2=1, dtype=None, out=None)
		a.trace(offset=0, axis1=0, axis2=1, dtype=None, out=None)
		
		    Return the sum along diagonals of the array.
		
		    Refer to `numpy.trace` for full documentation.
		
		    See Also
		    --------
		    numpy.trace : equivalent function
	**/
	static public function trace(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Permute the dimensions of an array.
		
		This function is exactly equivalent to `numpy.transpose`.
		
		See Also
		--------
		numpy.transpose : Equivalent function in top-level NumPy module.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> x = ma.arange(4).reshape((2,2))
		>>> x[1, 1] = ma.masked
		>>>> x
		masked_array(data =
		 [[0 1]
		 [2 --]],
		             mask =
		 [[False False]
		 [False  True]],
		       fill_value = 999999)
		>>> ma.transpose(x)
		masked_array(data =
		 [[0 2]
		 [1 --]],
		             mask =
		 [[False False]
		 [False  True]],
		       fill_value = 999999)
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		true_divide(x1, x2[, out])
		
		Returns a true division of the inputs, element-wise.
		
		Instead of the Python traditional 'floor division', this returns a true
		division.  True division adjusts the output type to present the best
		answer, regardless of input types.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		
		Returns
		-------
		out : ndarray
		    Result is scalar if both inputs are scalar, ndarray otherwise.
		
		Notes
		-----
		The floor division operator ``//`` was added in Python 2.2 making
		``//`` and ``/`` equivalent operators.  The default floor division
		operation of ``/`` can be replaced by true division with ``from
		__future__ import division``.
		
		In Python 3.0, ``//`` is the floor division operator and ``/`` the
		true division operator.  The ``true_divide(x1, x2)`` function is
		equivalent to true division in Python.
		
		Examples
		--------
		>>> x = np.arange(5)
		>>> np.true_divide(x, 4)
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x/4
		array([0, 0, 0, 0, 1])
		>>> x//4
		array([0, 0, 0, 0, 1])
		
		>>> from __future__ import division
		>>> x/4
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		>>> x//4
		array([0, 0, 0, 0, 1])
	**/
	static public function true_divide(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Union of two arrays.
		
		The output is always a masked array. See `numpy.union1d` for more details.
		
		See also
		--------
		numpy.union1d : Equivalent function for ndarrays.
	**/
	static public function union1d(ar1:Dynamic, ar2:Dynamic):Dynamic;
	/**
		Finds the unique elements of an array.
		
		Masked values are considered the same element (masked). The output array
		is always a masked array. See `numpy.unique` for more details.
		
		See Also
		--------
		numpy.unique : Equivalent function for ndarrays.
	**/
	static public function unique(ar1:Dynamic, ?return_index:Dynamic, ?return_inverse:Dynamic):Dynamic;
	/**
		Generate a Vandermonde matrix.
		
		The columns of the output matrix are powers of the input vector. The
		order of the powers is determined by the `increasing` boolean argument.
		Specifically, when `increasing` is False, the `i`-th output column is
		the input vector raised element-wise to the power of ``N - i - 1``. Such
		a matrix with a geometric progression in each row is named for Alexandre-
		Theophile Vandermonde.
		
		Parameters
		----------
		x : array_like
		    1-D input array.
		N : int, optional
		    Number of columns in the output.  If `N` is not specified, a square
		    array is returned (``N = len(x)``).
		increasing : bool, optional
		    Order of the powers of the columns.  If True, the powers increase
		    from left to right, if False (the default) they are reversed.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		out : ndarray
		    Vandermonde matrix.  If `increasing` is False, the first column is
		    ``x^(N-1)``, the second ``x^(N-2)`` and so forth. If `increasing` is
		    True, the columns are ``x^0, x^1, ..., x^(N-1)``.
		
		See Also
		--------
		polynomial.polynomial.polyvander
		
		Examples
		--------
		>>> x = np.array([1, 2, 3, 5])
		>>> N = 3
		>>> np.vander(x, N)
		array([[ 1,  1,  1],
		       [ 4,  2,  1],
		       [ 9,  3,  1],
		       [25,  5,  1]])
		
		>>> np.column_stack([x**(N-1-i) for i in range(N)])
		array([[ 1,  1,  1],
		       [ 4,  2,  1],
		       [ 9,  3,  1],
		       [25,  5,  1]])
		
		>>> x = np.array([1, 2, 3, 5])
		>>> np.vander(x)
		array([[  1,   1,   1,   1],
		       [  8,   4,   2,   1],
		       [ 27,   9,   3,   1],
		       [125,  25,   5,   1]])
		>>> np.vander(x, increasing=True)
		array([[  1,   1,   1,   1],
		       [  1,   2,   4,   8],
		       [  1,   3,   9,  27],
		       [  1,   5,  25, 125]])
		
		The determinant of a square Vandermonde matrix is the product
		of the differences between the values of the input vector:
		
		>>> np.linalg.det(np.vander(x))
		48.000000000000043
		>>> (5-3)*(5-2)*(5-1)*(3-2)*(3-1)*(2-1)
		48
		
		
		
		Notes
		-----
		
		Masked values in the input array result in rows of zeros.
	**/
	static public function vander(x:Dynamic, ?n:Dynamic):numpy.Ndarray;
	/**
		var(self, axis=None, dtype=None, out=None, ddof=0, keepdims=<class 'numpy._globals._NoValue'>)
		
		Compute the variance along the specified axis.
		
		Returns the variance of the array elements, a measure of the spread of a
		distribution.  The variance is computed for the flattened array by
		default, otherwise over the specified axis.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose variance is desired.  If `a` is not an
		    array, a conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the variance is computed.  The default is to
		    compute the variance of the flattened array.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, a variance is performed over multiple axes,
		    instead of a single axis or all the axes as before.
		dtype : data-type, optional
		    Type to use in computing the variance.  For arrays of integer type
		    the default is `float32`; for arrays of float types it is the same as
		    the array type.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output, but the type is cast if
		    necessary.
		ddof : int, optional
		    "Delta Degrees of Freedom": the divisor used in the calculation is
		    ``N - ddof``, where ``N`` represents the number of elements. By
		    default `ddof` is zero.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `var` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-classes `sum` method does not implement `keepdims` any
		    exceptions will be raised.
		
		Returns
		-------
		variance : ndarray, see dtype parameter above
		    If ``out=None``, returns a new array containing the variance;
		    otherwise, a reference to the output array is returned.
		
		See Also
		--------
		std , mean, nanmean, nanstd, nanvar
		numpy.doc.ufuncs : Section "Output arguments"
		
		Notes
		-----
		The variance is the average of the squared deviations from the mean,
		i.e.,  ``var = mean(abs(x - x.mean())**2)``.
		
		The mean is normally calculated as ``x.sum() / N``, where ``N = len(x)``.
		If, however, `ddof` is specified, the divisor ``N - ddof`` is used
		instead.  In standard statistical practice, ``ddof=1`` provides an
		unbiased estimator of the variance of a hypothetical infinite population.
		``ddof=0`` provides a maximum likelihood estimate of the variance for
		normally distributed variables.
		
		Note that for complex numbers, the absolute value is taken before
		squaring, so that the result is always real and nonnegative.
		
		For floating-point input, the variance is computed using the same
		precision the input has.  Depending on the input data, this can cause
		the results to be inaccurate, especially for `float32` (see example
		below).  Specifying a higher-accuracy accumulator using the ``dtype``
		keyword can alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.var(a)
		1.25
		>>> np.var(a, axis=0)
		array([ 1.,  1.])
		>>> np.var(a, axis=1)
		array([ 0.25,  0.25])
		
		In single precision, var() can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.var(a)
		0.20250003
		
		Computing the variance in float64 is more accurate:
		
		>>> np.var(a, dtype=np.float64)
		0.20249999932944759
		>>> ((1-0.55)**2 + (0.1-0.55)**2)/2
		0.2025
	**/
	@:native("var")
	static public function _var(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		vstack(tup)
		
		    Stack arrays in sequence vertically (row wise).
		
		    Take a sequence of arrays and stack them vertically to make a single
		    array. Rebuild arrays divided by `vsplit`.
		
		    Parameters
		    ----------
		    tup : sequence of ndarrays
		        Tuple containing arrays to be stacked. The arrays must have the same
		        shape along all but the first axis.
		
		    Returns
		    -------
		    stacked : ndarray
		        The array formed by stacking the given arrays.
		
		    See Also
		    --------
		    stack : Join a sequence of arrays along a new axis.
		    hstack : Stack arrays in sequence horizontally (column wise).
		    dstack : Stack arrays in sequence depth wise (along third dimension).
		    concatenate : Join a sequence of arrays along an existing axis.
		    vsplit : Split array into a list of multiple sub-arrays vertically.
		
		    Notes
		    -----
		    Equivalent to ``np.concatenate(tup, axis=0)`` if `tup` contains arrays that
		    are at least 2-dimensional.
		
		    Examples
		    --------
		    >>> a = np.array([1, 2, 3])
		    >>> b = np.array([2, 3, 4])
		    >>> np.vstack((a,b))
		    array([[1, 2, 3],
		           [2, 3, 4]])
		
		    >>> a = np.array([[1], [2], [3]])
		    >>> b = np.array([[2], [3], [4]])
		    >>> np.vstack((a,b))
		    array([[1],
		           [2],
		           [3],
		           [2],
		           [3],
		           [4]])
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function vstack(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a masked array with elements from x or y, depending on condition.
		
		Returns a masked array, shaped like condition, where the elements
		are from `x` when `condition` is True, and from `y` otherwise.
		If neither `x` nor `y` are given, the function returns a tuple of
		indices where `condition` is True (the result of
		``condition.nonzero()``).
		
		Parameters
		----------
		condition : array_like, bool
		    The condition to meet. For each True element, yield the corresponding
		    element from `x`, otherwise from `y`.
		x, y : array_like, optional
		    Values from which to choose. `x` and `y` need to have the same shape
		    as condition, or be broadcast-able to that shape.
		
		Returns
		-------
		out : MaskedArray or tuple of ndarrays
		    The resulting masked array if `x` and `y` were given, otherwise
		    the result of ``condition.nonzero()``.
		
		See Also
		--------
		numpy.where : Equivalent function in the top-level NumPy module.
		
		Examples
		--------
		>>> x = np.ma.array(np.arange(9.).reshape(3, 3), mask=[[0, 1, 0],
		...                                                    [1, 0, 1],
		...                                                    [0, 1, 0]])
		>>> print(x)
		[[0.0 -- 2.0]
		 [-- 4.0 --]
		 [6.0 -- 8.0]]
		>>> np.ma.where(x > 5)    # return the indices where x > 5
		(array([2, 2]), array([0, 2]))
		
		>>> print(np.ma.where(x > 5, x, -3.1416))
		[[-3.1416 -- -3.1416]
		 [-- -3.1416 --]
		 [6.0 -- 8.0]]
	**/
	static public function where(condition:Dynamic, ?x:Dynamic, ?y:Dynamic):Dynamic;
	/**
		zeros(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=np.int)
		array([0, 0, 0, 0, 0])
		
		>>> np.zeros((2, 1))
		array([[ 0.],
		       [ 0.]])
		
		>>> s = (2,2)
		>>> np.zeros(s)
		array([[ 0.,  0.],
		       [ 0.,  0.]])
		
		>>> np.zeros((2,), dtype=[('x', 'i4'), ('y', 'i4')]) # custom dtype
		array([(0, 0), (0, 0)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
	**/
	static public function zeros(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.Ndarray;
}