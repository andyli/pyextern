/* This file is generated, do not edit! */
package numpy.ma.core;
@:pythonImport("numpy.ma.core") extern class Core_Module {
	static public var _NoValue : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a class method wrapper around a basic array method.
		
		Creates a class method which returns a masked array, where the new
		``_data`` array is the output of the corresponding basic method called
		on the original ``_data``.
		
		If `onmask` is True, the new mask is the output of the method called
		on the initial mask. Otherwise, the new mask is just a reference
		to the initial mask.
		
		Parameters
		----------
		funcname : str
		    Name of the function to apply on data.
		onmask : bool
		    Whether the mask must be processed also (True) or left
		    alone (False). Default is True. Make available as `_onmask`
		    attribute.
		
		Returns
		-------
		method : instancemethod
		    Class method wrapper of the specified basic array method.
	**/
	static public function _arraymethod(funcname:Dynamic, ?onmask:Dynamic):Dynamic;
	/**
		Private function validating the given `fill_value` for the given dtype.
		
		If fill_value is None, it is set to the default corresponding to the dtype.
		
		If fill_value is not None, its value is forced to the given dtype.
		
		The result is always a 0d array.
	**/
	static public function _check_fill_value(fill_value:Dynamic, ndtype:Dynamic):Dynamic;
	/**
		Check whether there are masked values along the given axis
	**/
	static public function _check_mask_axis(mask:Dynamic, axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Helper function for ma.correlate and ma.convolve
	**/
	static public function _convolve_or_correlate(f:Dynamic, a:Dynamic, v:Dynamic, mode:Dynamic, propagate_mask:Dynamic):Dynamic;
	/**
		Adjust the axis passed to argsort, warning if necessary
		
		Parameters
		----------
		arr
		    The array which argsort was called on
		
		np.ma.argsort has a long-term bug where the default of the axis argument
		is wrong (gh-8701), which now must be kept for backwards compatibility.
		Thankfully, this only makes a difference when arrays are 2- or more-
		dimensional, so we only need a warning then.
	**/
	static public function _deprecate_argsort_axis(arr:Dynamic):Dynamic;
	static public function _extremum_fill_value(obj:Dynamic, extremum:Dynamic, extremum_name:Dynamic):Dynamic;
	/**
		Convert the argument for *_fill_value into a dtype 
	**/
	static public function _get_dtype_of(obj:Dynamic):Dynamic;
	static public var _legacy_print_templates : Dynamic;
	/**
		Internal function that builds a new MaskedArray from the
		information stored in a pickle.
	**/
	static public function _mareconstruct(subtype:Dynamic, baseclass:Dynamic, baseshape:Dynamic, basetype:Dynamic):Dynamic;
	static public function _pickle_warn(method:Dynamic):Dynamic;
	/**
		Recursively produce a fill value for `dtype`, calling f on scalar dtypes
	**/
	static public function _recursive_fill_value(dtype:Dynamic, f:Dynamic):Dynamic;
	/**
		Recursively fill `a` with `fill_value`.
	**/
	static public function _recursive_filled(a:Dynamic, mask:Dynamic, fill_value:Dynamic):Dynamic;
	static public function _recursive_mask_or(m1:Dynamic, m2:Dynamic, newmask:Dynamic):Dynamic;
	/**
		Puts printoptions in result where mask is True.
		
		Private function allowing for recursion
	**/
	static public function _recursive_printoption(result:Dynamic, mask:Dynamic, printopt:Dynamic):Dynamic;
	/**
		Create a fill value for a structured dtype.
		
		Parameters
		----------
		fillvalue : scalar or array_like
		    Scalar or array representing the fill value. If it is of shorter
		    length than the number of fields in dt, it will be resized.
		dt : dtype
		    The structured dtype for which to create the fill value.
		
		Returns
		-------
		val: tuple
		    A tuple of values corresponding to the structured fill value.
	**/
	static public function _recursive_set_fill_value(fillvalue:Dynamic, dt:Dynamic):Dynamic;
	/**
		Construct a dtype description list from a given dtype.
		
		Returns a new dtype object, with all fields and subtypes in the given type
		recursively replaced with `primitive_dtype`.
		
		Arguments are coerced to dtypes first.
	**/
	static public function _replace_dtype_fields(dtype:Dynamic, primitive_dtype:Dynamic):Dynamic;
	/**
		Private function allowing recursion in _replace_dtype_fields.
	**/
	static public function _replace_dtype_fields_recursive(dtype:Dynamic, primitive_dtype:Dynamic):Dynamic;
	/**
		Shrink a mask to nomask if possible
	**/
	static public function _shrink_mask(m:Dynamic):Dynamic;
	/**
		absolute(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the absolute value element-wise.
		
		``np.abs`` is a shorthand for this function.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		    This is a scalar if `x` is a scalar.
		
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
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10], cmap='gray')
		>>> plt.show()
		
		The `abs` function can be used as a shorthand for ``np.absolute`` on
		ndarrays.
		
		>>> x = np.array([-1.2, 1.2])
		>>> abs(x)
		array([1.2, 1.2])
	**/
	static public function abs(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		absolute(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the absolute value element-wise.
		
		``np.abs`` is a shorthand for this function.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		    This is a scalar if `x` is a scalar.
		
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
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10], cmap='gray')
		>>> plt.show()
		
		The `abs` function can be used as a shorthand for ``np.absolute`` on
		ndarrays.
		
		>>> x = np.array([-1.2, 1.2])
		>>> abs(x)
		array([1.2, 1.2])
	**/
	static public function absolute(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		add(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Add arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be added.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		add : ndarray or scalar
		    The sum of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		
		The ``+`` operator can be used as a shorthand for ``np.add`` on ndarrays.
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> x1 + x2
		array([[ 0.,  2.,  4.],
		       [ 3.,  5.,  7.],
		       [ 6.,  8., 10.]])
	**/
	static public function add(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		all(self, axis=None, out=None, keepdims=<no value>)
		
		Returns True if all elements evaluate to True.
		
		The output array is masked where all the values along the given axis
		are masked: if the output would have been a scalar and that all the
		values are masked, then the output is `masked`.
		
		Refer to `numpy.all` for full documentation.
		
		See Also
		--------
		numpy.ndarray.all : corresponding function for ndarrays
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
		>>> a = np.ma.array([1e10, 1e-7, 42.0], mask=[0, 0, 1])
		>>> a
		masked_array(data=[10000000000.0, 1e-07, --],
		             mask=[False, False,  True],
		       fill_value=1e+20)
		>>> b = np.ma.array([1e10, 1e-8, -42.0], mask=[0, 0, 1])
		>>> np.ma.allclose(a, b)
		False
		
		>>> a = np.ma.array([1e10, 1e-8, 42.0], mask=[0, 0, 1])
		>>> b = np.ma.array([1.00001e10, 1e-9, -42.0], mask=[0, 0, 1])
		>>> np.ma.allclose(a, b)
		True
		>>> np.ma.allclose(a, b, masked_equal=False)
		False
		
		Masked values are not compared directly.
		
		>>> a = np.ma.array([1e10, 1e-8, 42.0], mask=[0, 0, 1])
		>>> b = np.ma.array([1.00001e10, 1e-9, 42.0], mask=[0, 0, 1])
		>>> np.ma.allclose(a, b)
		True
		>>> np.ma.allclose(a, b, masked_equal=False)
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
		>>> a = np.ma.array([1e10, 1e-7, 42.0], mask=[0, 0, 1])
		>>> a
		masked_array(data=[10000000000.0, 1e-07, --],
		             mask=[False, False,  True],
		       fill_value=1e+20)
		
		>>> b = np.array([1e10, 1e-7, -42.0])
		>>> b
		array([  1.00000000e+10,   1.00000000e-07,  -4.20000000e+01])
		>>> np.ma.allequal(a, b, fill_value=False)
		False
		>>> np.ma.allequal(a, b)
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
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, the maximum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See :ref:`ufuncs-output-type` for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `amax` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		initial : scalar, optional
		    The minimum value of an output element. Must be present to allow
		    computation on empty slice. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		where : array_like of bool, optional
		    Elements to compare for the maximum. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.17.0
		
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
		>>> np.amax(a, where=[False, True], initial=-1, axis=0)
		array([-1,  3])
		>>> b = np.arange(5, dtype=float)
		>>> b[2] = np.NaN
		>>> np.amax(b)
		nan
		>>> np.amax(b, where=~np.isnan(b), initial=-1)
		4.0
		>>> np.nanmax(b)
		4.0
		
		You can use an initial value to compute the maximum of an empty slice, or
		to initialize it to a different value:
		
		>>> np.amax([[-50], [10]], axis=-1, initial=0)
		array([ 0, 10])
		
		Notice that the initial value is used as one of the elements for which the
		maximum is determined, unlike for the default argument Python's max
		function, which is only used for empty iterables.
		
		>>> np.amax([5], initial=6)
		6
		>>> max([5], default=6)
		5
	**/
	static public function amax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Return the minimum of an array or minimum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, the minimum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See :ref:`ufuncs-output-type` for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `amin` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		initial : scalar, optional
		    The maximum value of an output element. Must be present to allow
		    computation on empty slice. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		where : array_like of bool, optional
		    Elements to compare for the minimum. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.17.0
		
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
		>>> np.amin(a, where=[False, True], initial=10, axis=0)
		array([10,  1])
		
		>>> b = np.arange(5, dtype=float)
		>>> b[2] = np.NaN
		>>> np.amin(b)
		nan
		>>> np.amin(b, where=~np.isnan(b), initial=10)
		0.0
		>>> np.nanmin(b)
		0.0
		
		>>> np.amin([[-50], [10]], axis=-1, initial=0)
		array([-50,   0])
		
		Notice that the initial value is used as one of the elements for which the
		minimum is determined, unlike for the default argument Python's max
		function, which is only used for empty iterables.
		
		Notice that this isn't the same as Python's ``default`` argument.
		
		>>> np.amin([6], initial=5)
		5
		>>> min([6], default=5)
		6
	**/
	static public function amin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
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
		    The counterclockwise angle from the positive real axis on the complex
		    plane in the range ``(-pi, pi]``, with dtype as numpy.float64.
		
		    .. versionchanged:: 1.16.0
		        This function works on subclasses of ndarray like `ma.array`.
		
		See Also
		--------
		arctan2
		absolute
		
		Notes
		-----
		Although the angle of the complex number 0 is undefined, ``numpy.angle(0)``
		returns the value 0.
		
		Examples
		--------
		>>> np.angle([1.0, 1.0j, 1+1j])               # in radians
		array([ 0.        ,  1.57079633,  0.78539816]) # may vary
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
		masked_array(data=[-1.,  0.,  1.],
		             mask=False,
		       fill_value=1e+20)
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
		masked_array(data=[-1.,  0.,  1.],
		             mask=False,
		       fill_value=1e+20)
	**/
	static public function anomalies(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		any(self, axis=None, out=None, keepdims=<no value>)
		
		Returns True if any of the elements of `a` evaluate to True.
		
		Masked values are considered as False during computation.
		
		Refer to `numpy.any` for full documentation.
		
		See Also
		--------
		numpy.ndarray.any : corresponding function for ndarrays
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
		>>> ma.append(a, b)
		masked_array(data=[1, --, 3, 4, 5, 6, --, 8, 9],
		             mask=[False,  True, False, False, False, False,  True, False,
		                   False],
		       fill_value=999999)
	**/
	static public function append(a:Dynamic, b:Dynamic, ?axis:Dynamic):numpy.ma.MaskedArray;
	/**
		arange([start,] stop[, step,], dtype=None, *, like=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range` function, but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, it is often better to use
		`numpy.linspace`. See the warnings section below for more information.
		
		Parameters
		----------
		start : integer or real, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : integer or real
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : integer or real, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified as a position argument,
		    `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		arange : MaskedArray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		Warnings
		--------
		The length of the output might not be numerically stable.
		
		Another stability issue is due to the internal implementation of
		`numpy.arange`.
		The actual step value used to populate the array is
		``dtype(start + step) - dtype(start)`` and not `step`. Precision loss
		can occur here, due to casting or due to using floating points when
		`start` is much larger than `step`. This can lead to unexpected
		behaviour. For example::
		
		  >>> np.arange(0, 5, 0.5, dtype=int)
		  array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
		  >>> np.arange(-3, 3, 0.5, dtype=int)
		  array([-3, -2, -1,  0,  1,  2,  3,  4,  5,  6,  7,  8])
		
		In such cases, the use of `numpy.linspace` should be preferred.
		
		See Also
		--------
		numpy.linspace : Evenly spaced numbers with careful handling of endpoints.
		numpy.ogrid: Arrays of evenly spaced numbers in N-dimensions.
		numpy.mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
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
	static public function arange(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
	/**
		arccos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric inverse cosine, element-wise.
		
		The inverse of `cos` so that, if ``y = cos(x)``, then ``x = arccos(y)``.
		
		Parameters
		----------
		x : array_like
		    `x`-coordinate on the unit circle.
		    For real arguments, the domain is [-1, 1].
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		angle : ndarray
		    The angle of the ray intersecting the unit circle at the given
		    `x`-coordinate in radians [0, pi].
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		cos, arctan, arcsin, emath.arccos
		
		Notes
		-----
		`arccos` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that ``cos(z) = x``. The convention is to return
		the angle `z` whose real part lies in `[0, pi]`.
		
		For real-valued input data types, `arccos` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccos` is a complex analytic function that
		has branch cuts ``[-inf, -1]`` and `[1, inf]` and is continuous from
		above on the former and from below on the latter.
		
		The inverse `cos` is also known as `acos` or cos^-1.
		
		References
		----------
		M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		10th printing, 1964, pp. 79.
		https://personal.math.ubc.ca/~cbm/aands/page_79.htm
		
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
		arccosh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse hyperbolic cosine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		arccosh : ndarray
		    Array of the same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		
		cosh, arcsinh, sinh, arctanh, tanh
		
		Notes
		-----
		`arccosh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `cosh(z) = x`. The convention is to return the
		`z` whose imaginary part lies in ``[-pi, pi]`` and the real part in
		``[0, inf]``.
		
		For real-valued input data types, `arccosh` always returns real output.
		For each value that cannot be expressed as a real number or infinity, it
		yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccosh` is a complex analytical function that
		has a branch cut `[-inf, 1]` and is continuous from above on it.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86.
		       https://personal.math.ubc.ca/~cbm/aands/page_86.htm
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       https://en.wikipedia.org/wiki/Arccosh
		
		Examples
		--------
		>>> np.arccosh([np.e, 10.0])
		array([ 1.65745445,  2.99322285])
		>>> np.arccosh(1)
		0.0
	**/
	static public function arccosh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		arcsin(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    `y`-coordinate on the unit circle.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		angle : ndarray
		    The inverse sine of each element in `x`, in radians and in the
		    closed interval ``[-pi/2, pi/2]``.
		    This is a scalar if `x` is a scalar.
		
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
		https://personal.math.ubc.ca/~cbm/aands/page_79.htm
		
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
		arcsinh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse hyperbolic sine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Array of the same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
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
		       10th printing, 1964, pp. 86.
		       https://personal.math.ubc.ca/~cbm/aands/page_86.htm
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       https://en.wikipedia.org/wiki/Arcsinh
		
		Examples
		--------
		>>> np.arcsinh(np.array([np.e, 10.0]))
		array([ 1.72538256,  2.99822295])
	**/
	static public function arcsinh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		arctan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric inverse tangent, element-wise.
		
		The inverse of tan, so that if ``y = tan(x)`` then ``x = arctan(y)``.
		
		Parameters
		----------
		x : array_like
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Out has the same shape as `x`.  Its real part is in
		    ``[-pi/2, pi/2]`` (``arctan(+/-inf)`` returns ``+/-pi/2``).
		    This is a scalar if `x` is a scalar.
		
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
		has [``1j, infj``] and [``-1j, -infj``] as branch cuts, and is continuous
		from the left on the former and from the right on the latter.
		
		The inverse tangent is also known as `atan` or tan^{-1}.
		
		References
		----------
		Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
		10th printing, New York: Dover, 1964, pp. 79.
		https://personal.math.ubc.ca/~cbm/aands/page_79.htm
		
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
	static public function arctan(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		arctan2(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		    `x`-coordinates.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		angle : ndarray
		    Array of angles in radians, in the range ``[-pi, pi]``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		arctanh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse hyperbolic tangent element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Array of the same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		emath.arctanh
		
		Notes
		-----
		`arctanh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that ``tanh(z) = x``. The convention is to return
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
		       10th printing, 1964, pp. 86.
		       https://personal.math.ubc.ca/~cbm/aands/page_86.htm
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       https://en.wikipedia.org/wiki/Arctanh
		
		Examples
		--------
		>>> np.arctanh([0, -0.5])
		array([ 0.        , -0.54930614])
	**/
	static public function arctanh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		argmax(self, axis=None, fill_value=None, out=None)
		
		Returns array of indices of the maximum values along the given axis.
		Masked values are treated as if they had the value fill_value.
		
		Parameters
		----------
		axis : {None, integer}
		    If None, the index is into the flattened array, otherwise along
		    the specified axis
		fill_value : scalar or None, optional
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
		fill_value : scalar or None, optional
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
		>>> x = np.ma.array(np.arange(4), mask=[1,1,0,0])
		>>> x.shape = (2,2)
		>>> x
		masked_array(
		  data=[[--, --],
		        [2, 3]],
		  mask=[[ True,  True],
		        [False, False]],
		  fill_value=999999)
		>>> x.argmin(axis=0, fill_value=-1)
		array([0, 0])
		>>> x.argmin(axis=0, fill_value=9)
		array([1, 1])
	**/
	static public function argmin(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an ndarray of indices that sort the array along the
		specified axis.  Masked values are filled beforehand to
		`fill_value`.
		
		Parameters
		----------
		axis : int, optional
		    Axis along which to sort. If None, the default, the flattened array
		    is used.
		
		    ..  versionchanged:: 1.13.0
		        Previously, the default was documented to be -1, but that was
		        in error. At some future date, the default will change to -1, as
		        originally intended.
		        Until then, the axis should be given explicitly when
		        ``arr.ndim > 1``, to avoid a FutureWarning.
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, optional
		    The sorting algorithm used.
		order : list, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  Not all fields need be
		    specified.
		endwith : {True, False}, optional
		    Whether missing values (if any) should be treated as the largest values
		    (True) or the smallest values (False)
		    When the array contains unmasked values at the same extremes of the
		    datatype, the ordering of these values and the masked values is
		    undefined.
		fill_value : scalar or None, optional
		    Value used internally for the masked values.
		    If ``fill_value`` is not None, it supersedes ``endwith``.
		
		Returns
		-------
		index_array : ndarray, int
		    Array of indices that sort `a` along the specified axis.
		    In other words, ``a[index_array]`` yields a sorted `a`.
		
		See Also
		--------
		ma.MaskedArray.sort : Describes sorting algorithms used.
		lexsort : Indirect stable sort with multiple keys.
		numpy.ndarray.sort : Inplace sort.
		
		Notes
		-----
		See `sort` for notes on the different sorting algorithms.
		
		Examples
		--------
		>>> a = np.ma.array([3,2,1], mask=[False, False, True])
		>>> a
		masked_array(data=[3, 2, --],
		             mask=[False, False,  True],
		       fill_value=999999)
		>>> a.argsort()
		array([1, 0, 2])
	**/
	static public function argsort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic, ?endwith:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Round an array to the given number of decimals.
		
		See Also
		--------
		around : equivalent function; see for details.
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
		
		Examples
		--------
		
		The ``mask`` can be initialized with an array of boolean values
		with the same shape as ``data``.
		
		>>> data = np.arange(6).reshape((2, 3))
		>>> np.ma.MaskedArray(data, mask=[[False, True, False],
		...                               [False, False, True]])
		masked_array(
		  data=[[0, --, 2],
		        [3, 4, --]],
		  mask=[[False,  True, False],
		        [False, False,  True]],
		  fill_value=999999)
		
		Alternatively, the ``mask`` can be initialized to homogeneous boolean
		array with the same shape as ``data`` by passing in a scalar
		boolean value:
		
		>>> np.ma.MaskedArray(data, mask=False)
		masked_array(
		  data=[[0, 1, 2],
		        [3, 4, 5]],
		  mask=[[False, False, False],
		        [False, False, False]],
		  fill_value=999999)
		
		>>> np.ma.MaskedArray(data, mask=True)
		masked_array(
		  data=[[--, --, --],
		        [--, --, --]],
		  mask=[[ True,  True,  True],
		        [ True,  True,  True]],
		  fill_value=999999,
		  dtype=int64)
		
		.. note::
		    The recommended practice for initializing ``mask`` with a scalar
		    boolean value is to use ``True``/``False`` rather than
		    ``np.True_``/``np.False_``. The reason is :attr:`nomask`
		    is represented internally as ``np.False_``.
		
		    >>> np.False_ is np.ma.nomask
		    True
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
		array([[0., 1., 2., 3., 4.],
		       [5., 6., 7., 8., 9.]])
		>>> np.ma.asanyarray(x)
		masked_array(
		  data=[[0., 1., 2., 3., 4.],
		        [5., 6., 7., 8., 9.]],
		  mask=False,
		  fill_value=1e+20)
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
		array([[0., 1., 2., 3., 4.],
		       [5., 6., 7., 8., 9.]])
		>>> np.ma.asarray(x)
		masked_array(
		  data=[[0., 1., 2., 3., 4.],
		        [5., 6., 7., 8., 9.]],
		  mask=False,
		  fill_value=1e+20)
		>>> type(np.ma.asarray(x))
		<class 'numpy.ma.core.MaskedArray'>
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.ma.MaskedArray;
	/**
		bitwise_and(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the bit-wise AND of two arrays element-wise.
		
		Computes the bit-wise AND of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``&``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Result.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		array([False,  True])
		
		The ``&`` operator can be used as a shorthand for ``np.bitwise_and`` on
		ndarrays.
		
		>>> x1 = np.array([2, 5, 255])
		>>> x2 = np.array([3, 14, 16])
		>>> x1 & x2
		array([ 2,  4, 16])
	**/
	static public function bitwise_and(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		bitwise_or(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the bit-wise OR of two arrays element-wise.
		
		Computes the bit-wise OR of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``|``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Result.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		logical_or
		bitwise_and
		bitwise_xor
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Examples
		--------
		The number 13 has the binary representation ``00001101``. Likewise,
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
		>>> np.bitwise_or(np.array([2, 5, 255, 2147483647], dtype=np.int32),
		...               np.array([4, 4, 4, 2147483647], dtype=np.int32))
		array([         6,          5,        255, 2147483647])
		>>> np.bitwise_or([True, True], [False, True])
		array([ True,  True])
		
		The ``|`` operator can be used as a shorthand for ``np.bitwise_or`` on
		ndarrays.
		
		>>> x1 = np.array([2, 5, 255])
		>>> x2 = np.array([4, 4, 4])
		>>> x1 | x2
		array([  6,   5, 255])
	**/
	static public function bitwise_or(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		bitwise_xor(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the bit-wise XOR of two arrays element-wise.
		
		Computes the bit-wise XOR of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``^``.
		
		Parameters
		----------
		x1, x2 : array_like
		    Only integer and boolean types are handled.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Result.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		array([ True, False])
		
		The ``^`` operator can be used as a shorthand for ``np.bitwise_xor`` on
		ndarrays.
		
		>>> x1 = np.array([True, True])
		>>> x2 = np.array([False, True])
		>>> x1 ^ x2
		array([ True, False])
	**/
	static public function bitwise_xor(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		ceil(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the ceiling of the input, element-wise.
		
		The ceil of the scalar `x` is the smallest integer `i`, such that
		``i >= x``.  It is often denoted as :math:`\lceil x \rceil`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The ceiling of each element in `x`, with `float` dtype.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		floor, trunc, rint, fix
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.ceil(a)
		array([-1., -1., -0.,  1.,  2.,  2.,  2.])
	**/
	static public function ceil(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Use an index array to construct a new array from a list of choices.
		
		Given an array of integers and a list of n choice arrays, this method
		will create a new array that merges each of the choice arrays.  Where a
		value in `index` is i, the new array will have the value that choices[i]
		contains in the same place.
		
		Parameters
		----------
		indices : ndarray of ints
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
		masked_array(data=[3, 2, 1],
		             mask=False,
		       fill_value=999999)
	**/
	static public function choose(indices:Dynamic, choices:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		clip(*args, **kwargs)
		
		Clip (limit) the values in an array.
		
		Given an interval, values outside the interval are clipped to
		the interval edges.  For example, if an interval of ``[0, 1]``
		is specified, values smaller than 0 become 0, and values larger
		than 1 become 1.
		
		Equivalent to but faster than ``np.minimum(a_max, np.maximum(a, a_min))``.
		
		No check is performed to ensure ``a_min < a_max``.
		
		Parameters
		----------
		a : array_like
		    Array containing elements to clip.
		a_min, a_max : array_like or None
		    Minimum and maximum value. If ``None``, clipping is not performed on
		    the corresponding edge. Only one of `a_min` and `a_max` may be
		    ``None``. Both are broadcast against `a`.
		out : ndarray, optional
		    The results will be placed in this array. It may be the input
		    array for in-place clipping.  `out` must be of the right shape
		    to hold the output.  Its type is preserved.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		clipped_array : MaskedArray
		    An array with the elements of `a`, but where values
		    < `a_min` are replaced with `a_min`, and those > `a_max`
		    with `a_max`.
		
		See Also
		--------
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		When `a_min` is greater than `a_max`, `clip` returns an
		array in which all values are equal to `a_max`,
		as shown in the second example.
		
		Examples
		--------
		>>> a = np.arange(10)
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.clip(a, 1, 8)
		array([1, 1, 2, 3, 4, 5, 6, 7, 8, 8])
		>>> np.clip(a, 8, 1)
		array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
		>>> np.clip(a, 3, 6, out=a)
		array([3, 3, 3, 3, 4, 5, 6, 6, 6, 6])
		>>> a
		array([3, 3, 3, 3, 4, 5, 6, 6, 6, 6])
		>>> a = np.arange(10)
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.clip(a, [3, 4, 1, 1, 1, 4, 4, 4, 4, 4], 8)
		array([3, 4, 2, 3, 4, 5, 6, 7, 8, 8])
	**/
	static public function clip(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
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
		
		If condition is a `~ma.MaskedArray`, missing values are considered
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
		    A :class:`~ma.MaskedArray` object.
		
		Notes
		-----
		Please note the difference with :meth:`compressed` !
		The output of :meth:`compress` has a mask, the output of
		:meth:`compressed` does not.
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> x
		masked_array(
		  data=[[1, --, 3],
		        [--, 5, --],
		        [7, --, 9]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		>>> x.compress([1, 0, 1])
		masked_array(data=[1, 3],
		             mask=[False, False],
		       fill_value=999999)
		
		>>> x.compress([1, 0, 1], axis=1)
		masked_array(
		  data=[[1, 3],
		        [--, --],
		        [7, 9]],
		  mask=[[False, False],
		        [ True,  True],
		        [False, False]],
		  fill_value=999999)
	**/
	static public function compress(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
	/**
		Return all the non-masked data as a 1-D array.
		
		This function is equivalent to calling the "compressed" method of a
		`ma.MaskedArray`, see `ma.MaskedArray.compressed` for details.
		
		See Also
		--------
		ma.MaskedArray.compressed : Equivalent method.
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
		masked_array(data=[0, --, 2],
		             mask=[False,  True, False],
		       fill_value=999999)
		>>> b
		masked_array(data=[2, 3, 4],
		             mask=False,
		       fill_value=999999)
		>>> ma.concatenate([a, b])
		masked_array(data=[0, --, 2, 2, 3, 4],
		             mask=[False,  True, False, False, False, False],
		       fill_value=999999)
	**/
	static public function concatenate(arrays:Dynamic, ?axis:Dynamic):numpy.ma.MaskedArray;
	/**
		conjugate(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		`conj` is an alias for `conjugate`:
		
		>>> np.conj is np.conjugate
		True
		
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
		Returns the discrete, linear convolution of two one-dimensional sequences.
		
		Parameters
		----------
		a, v : array_like
		    Input sequences.
		mode : {'valid', 'same', 'full'}, optional
		    Refer to the `np.convolve` docstring.
		propagate_mask : bool
		    If True, then if any masked element is included in the sum for a result
		    element, then the result is masked.
		    If False, then the result element is only masked if no non-masked cells
		    contribute towards it
		
		Returns
		-------
		out : MaskedArray
		    Discrete, linear convolution of `a` and `v`.
		
		See Also
		--------
		numpy.convolve : Equivalent function in the top-level NumPy module.
	**/
	static public function convolve(a:Dynamic, v:Dynamic, ?mode:Dynamic, ?propagate_mask:Dynamic):numpy.ma.MaskedArray;
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
		        as possible. (Note that this function and :func:`numpy.copy` are very
		        similar but have different default values for their order=
		        arguments, and this function always passes sub-classes through.)
		
		    See also
		    --------
		    numpy.copy : Similar function with different default behavior
		    numpy.copyto
		
		    Notes
		    -----
		    This function is the preferred method for creating an array copy.  The
		    function :func:`numpy.copy` is similar, but it defaults to using order 'K',
		    and will not pass sub-classes through by default.
		
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
		Cross-correlation of two 1-dimensional sequences.
		
		Parameters
		----------
		a, v : array_like
		    Input sequences.
		mode : {'valid', 'same', 'full'}, optional
		    Refer to the `np.convolve` docstring.  Note that the default
		    is 'valid', unlike `convolve`, which uses 'full'.
		propagate_mask : bool
		    If True, then a result element is masked if any masked element contributes towards it.
		    If False, then a result element is only masked if no non-masked element
		    contribute towards it
		
		Returns
		-------
		out : MaskedArray
		    Discrete cross-correlation of `a` and `v`.
		
		See Also
		--------
		numpy.correlate : Equivalent function in the top-level NumPy module.
	**/
	static public function correlate(a:Dynamic, v:Dynamic, ?mode:Dynamic, ?propagate_mask:Dynamic):numpy.ma.MaskedArray;
	/**
		cos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding cosine values.
		    This is a scalar if `x` is a scalar.
		
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
		>>> out1 = np.array([0], dtype='d')
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
	**/
	static public function cos(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		cosh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Hyperbolic cosine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) + np.exp(-x))`` and ``np.cos(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array of same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
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
	static public function cosh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		count(self, axis=None, keepdims=<no value>)
		
		Count the non-masked elements of the array along the given axis.
		
		Parameters
		----------
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the count is performed.
		    The default, None, performs the count over all
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
		ma.count_masked : Count masked elements in array or along a given axis.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = ma.arange(6).reshape((2, 3))
		>>> a[1, :] = ma.masked
		>>> a
		masked_array(
		  data=[[0, 1, 2],
		        [--, --, --]],
		  mask=[[False, False, False],
		        [ True,  True,  True]],
		  fill_value=999999)
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
		numpy.ndarray.cumprod : corresponding function for ndarrays
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
		The mask is lost if `out` is not a valid :class:`ma.MaskedArray` !
		
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		See Also
		--------
		numpy.ndarray.cumsum : corresponding function for ndarrays
		numpy.cumsum : equivalent function
		
		Examples
		--------
		>>> marr = np.ma.array(np.arange(10), mask=[0,0,0,1,1,1,0,0,0,0])
		>>> marr.cumsum()
		masked_array(data=[0, 1, 3, --, --, --, 9, 16, 24, 33],
		             mask=[False, False, False,  True,  True,  True, False, False,
		                   False, False],
		       fill_value=999999)
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
		
		For structured types, a structured scalar is returned, with each field the
		default fill value for its type.
		
		For subarray types, the fill value is an array of the same size containing
		the default scalar fill value.
		
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
	static public var default_filler : Dynamic;
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
		diff(*args, **kwargs)
		
		Calculate the n-th discrete difference along the given axis.
		
		The first difference is given by ``out[i] = a[i+1] - a[i]`` along
		the given axis, higher differences are calculated by using `diff`
		recursively.
		
		Parameters
		----------
		a : array_like
		    Input array
		n : int, optional
		    The number of times values are differenced. If zero, the input
		    is returned as-is.
		axis : int, optional
		    The axis along which the difference is taken, default is the
		    last axis.
		prepend, append : array_like, optional
		    Values to prepend or append to `a` along axis prior to
		    performing the difference.  Scalar values are expanded to
		    arrays with length 1 in the direction of axis and the shape
		    of the input array in along all other axes.  Otherwise the
		    dimension and shape must match `a` except along axis.
		
		    .. versionadded:: 1.16.0
		
		Returns
		-------
		diff : MaskedArray
		    The n-th differences. The shape of the output is the same as `a`
		    except along `axis` where the dimension is smaller by `n`. The
		    type of the output is the same as the type of the difference
		    between any two elements of `a`. This is the same as the type of
		    `a` in most cases. A notable exception is `datetime64`, which
		    results in a `timedelta64` output array.
		
		See Also
		--------
		gradient, ediff1d, cumsum
		
		Notes
		-----
		Type is preserved for boolean arrays, so the result will contain
		`False` when consecutive elements are the same and `True` when they
		differ.
		
		For unsigned integer arrays, the results will also be unsigned. This
		should not be surprising, as the result is consistent with
		calculating the difference directly:
		
		>>> u8_arr = np.array([1, 0], dtype=np.uint8)
		>>> np.diff(u8_arr)
		array([255], dtype=uint8)
		>>> u8_arr[1,...] - u8_arr[0,...]
		255
		
		If this is not desirable, then the array should be cast to a larger
		integer type first:
		
		>>> i16_arr = u8_arr.astype(np.int16)
		>>> np.diff(i16_arr)
		array([-1], dtype=int16)
		
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
		
		>>> x = np.arange('1066-10-13', '1066-10-16', dtype=np.datetime64)
		>>> np.diff(x)
		array([1, 1], dtype='timedelta64[D]')
	**/
	static public function diff(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
	/**
		true_divide(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns a true division of the inputs, element-wise.
		
		Unlike 'floor division', true division adjusts the output type
		to present the best answer, regardless of input types.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Notes
		-----
		In Python, ``//`` is the floor division operator and ``/`` the
		true division operator.  The ``true_divide(x1, x2)`` function is
		equivalent to true division in Python.
		
		Examples
		--------
		>>> x = np.arange(5)
		>>> np.true_divide(x, 4)
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x/4
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x//4
		array([0, 0, 0, 0, 1])
		
		The ``/`` operator can be used as a shorthand for ``np.true_divide`` on
		ndarrays.
		
		>>> x = np.arange(5)
		>>> x / 4
		array([0.  , 0.25, 0.5 , 0.75, 1.  ])
	**/
	static public function divide(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adds a Notes section to an existing docstring.
	**/
	static public function doc_note(initialdoc:Dynamic, note:Dynamic):Dynamic;
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
		>>> a = np.ma.array([[1, 2, 3], [4, 5, 6]], mask=[[1, 0, 0], [0, 0, 0]])
		>>> b = np.ma.array([[1, 2], [3, 4], [5, 6]], mask=[[1, 0], [0, 0], [0, 0]])
		>>> np.ma.dot(a, b)
		masked_array(
		  data=[[21, 26],
		        [45, 64]],
		  mask=[[False, False],
		        [False, False]],
		  fill_value=999999)
		>>> np.ma.dot(a, b, strict=True)
		masked_array(
		  data=[[--, --],
		        [--, 64]],
		  mask=[[ True,  True],
		        [ True, False]],
		  fill_value=999999)
	**/
	static public function dot(a:Dynamic, b:Dynamic, ?strict:Dynamic, ?out:Dynamic):Dynamic;
	/**
		empty(shape, dtype=float, order='C', *, like=None)
		
		Return a new array of given shape and type, without initializing entries.
		
		Parameters
		----------
		shape : int or tuple of int
		    Shape of the empty array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    Desired output data-type for the array, e.g, `numpy.int8`. Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: 'C'
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : MaskedArray
		    Array of uninitialized (arbitrary) data of the given shape, dtype, and
		    order.  Object arrays will be initialized to None.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
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
		       [  2.13182611e-314,   3.06959433e-309]])         #uninitialized
		
		>>> np.empty([2, 2], dtype=int)
		array([[-1073741821, -1067949133],
		       [  496041986,    19249760]])                     #uninitialized
	**/
	static public function empty(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
	/**
		empty_like(*args, **kwargs)
		
		empty_like(prototype, dtype=None, order='K', subok=True, shape=None)
		
		Return a new array with the same shape and type as a given array.
		
		Parameters
		----------
		prototype : array_like
		    The shape and data-type of `prototype` define these same attributes
		    of the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `prototype` is Fortran
		    contiguous, 'C' otherwise. 'K' means match the layout of `prototype`
		    as closely as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of `prototype`, otherwise it will be a base-class array. Defaults
		    to True.
		shape : int or sequence of ints, optional.
		    Overrides the shape of the result. If order='K' and the number of
		    dimensions is unchanged, will try to keep order, otherwise,
		    order='C' is implied.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		out : MaskedArray
		    Array of uninitialized (arbitrary) data with the same
		    shape and type as `prototype`.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		
		Notes
		-----
		This function does *not* initialize the returned array; to do that use
		`zeros_like` or `ones_like` instead.  It may be marginally faster than
		the functions that do set the array values.
		
		Examples
		--------
		>>> a = ([1,2,3], [4,5,6])                         # a is array-like
		>>> np.empty_like(a)
		array([[-1073741821, -1073741821,           3],    # uninitialized
		       [          0,           0, -1073741821]])
		>>> a = np.array([[1., 2., 3.],[4.,5.,6.]])
		>>> np.empty_like(a)
		array([[ -2.00000715e+000,   1.48219694e-323,  -2.00000572e+000], # uninitialized
		       [  4.38791518e-305,  -2.00000715e+000,   4.17269252e-309]])
	**/
	static public function empty_like(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
	/**
		equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return (x1 == x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		not_equal, greater_equal, less_equal, greater, less
		
		Examples
		--------
		>>> np.equal([0, 1, 3], np.arange(3))
		array([ True,  True, False])
		
		What is compared are values, not types. So an int (1) and an array of
		length one can evaluate as True:
		
		>>> np.equal(1, np.ones(1))
		array([ True])
		
		The ``==`` operator can be used as a shorthand for ``np.equal`` on
		ndarrays.
		
		>>> a = np.array([2, 4, 6])
		>>> b = np.array([2, 4, 2])
		>>> a == b
		array([ True,  True, False])
	**/
	static public function equal(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		exp(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise exponential of `x`.
		    This is a scalar if `x` is a scalar.
		
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
		       https://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       https://personal.math.ubc.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='gray')
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='hsv')
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Expand the shape of an array.
		
		Insert a new axis that will appear at the `axis` position in the expanded
		array shape.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int or tuple of ints
		    Position in the expanded axes where the new axis (or axes) is placed.
		
		    .. deprecated:: 1.13.0
		        Passing an axis where ``axis > a.ndim`` will be treated as
		        ``axis == a.ndim``, and passing ``axis < -a.ndim - 1`` will
		        be treated as ``axis == 0``. This behavior is deprecated.
		
		    .. versionchanged:: 1.18.0
		        A tuple of axes is now supported.  Out of range axes as
		        described above are now forbidden and raise an `AxisError`.
		
		Returns
		-------
		result : ndarray
		    View of `a` with the number of dimensions increased.
		
		See Also
		--------
		squeeze : The inverse operation, removing singleton dimensions
		reshape : Insert, remove, and combine dimensions, and resize existing ones
		doc.indexing, atleast_1d, atleast_2d, atleast_3d
		
		Examples
		--------
		>>> x = np.array([1, 2])
		>>> x.shape
		(2,)
		
		The following is equivalent to ``x[np.newaxis, :]`` or ``x[np.newaxis]``:
		
		>>> y = np.expand_dims(x, axis=0)
		>>> y
		array([[1, 2]])
		>>> y.shape
		(1, 2)
		
		The following is equivalent to ``x[:, np.newaxis]``:
		
		>>> y = np.expand_dims(x, axis=1)
		>>> y
		array([[1],
		       [2]])
		>>> y.shape
		(2, 1)
		
		``axis`` may also be a tuple:
		
		>>> y = np.expand_dims(x, axis=(0, 1))
		>>> y
		array([[[1, 2]]])
		
		>>> y = np.expand_dims(x, axis=(2, 0))
		>>> y
		array([[[1],
		        [2]]])
		
		Note that some examples may use ``None`` instead of ``np.newaxis``.  These
		are the same objects:
		
		>>> np.newaxis is None
		True
	**/
	static public function expand_dims(a:Dynamic, axis:Dynamic):numpy.Ndarray;
	/**
		fabs(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the absolute values element-wise.
		
		This function returns the absolute values (positive magnitude) of the
		data in `x`. Complex values are not handled, use `absolute` to find the
		absolute values of complex data.
		
		Parameters
		----------
		x : array_like
		    The array of numbers for which the absolute values are required. If
		    `x` is a scalar, the result `y` will also be a scalar.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The absolute values of `x`, the returned values are always floats.
		    This is a scalar if `x` is a scalar.
		
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
		fill_value : array_like, optional.
		    Can be scalar or non-scalar. If non-scalar, the
		    resulting filled array should be broadcastable
		    over input array. Default is None.
		
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
		>>> x.filled(fill_value=333)
		array([[333,   1,   2],
		       [333,   4,   5],
		       [  6,   7,   8]])
		>>> x.filled(fill_value=np.arange(3))
		array([[0, 1, 2],
		       [0, 4, 5],
		       [6, 7, 8]])
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
		masked_array(data=[--, -1.0, nan, inf],
		             mask=[ True, False, False, False],
		       fill_value=1e+20)
		>>> np.ma.fix_invalid(x)
		masked_array(data=[--, -1.0, --, --],
		             mask=[ True, False,  True,  True],
		       fill_value=1e+20)
		
		>>> fixed = np.ma.fix_invalid(x)
		>>> fixed.data
		array([ 1.e+00, -1.e+00,  1.e+20,  1.e+20])
		>>> x.data
		array([ 1., -1., nan, inf])
	**/
	static public function fix_invalid(a:Dynamic, ?mask:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic):numpy.ma.MaskedArray;
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
		>>> mask = np.array([0, 0, 1])
		>>> np.ma.flatten_mask(mask)
		array([False, False,  True])
		
		>>> mask = np.array([(0, 0), (0, 1)], dtype=[('a', bool), ('b', bool)])
		>>> np.ma.flatten_mask(mask)
		array([False, False, False,  True])
		
		>>> mdtype = [('a', bool), ('b', [('ba', bool), ('bb', bool)])]
		>>> mask = np.array([(0, (0, 0)), (0, (0, 1))], dtype=mdtype)
		>>> np.ma.flatten_mask(mask)
		array([False, False, False, False, False,  True])
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
		>>> np.ma.flatten_structured_array(a)
		array([[1., 1.],
		       [2., 2.]])
	**/
	static public function flatten_structured_array(a:Dynamic):Dynamic;
	/**
		floor(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the floor of the input, element-wise.
		
		The floor of the scalar `x` is the largest integer `i`, such that
		`i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The floor of each element in `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		ceil, trunc, rint, fix
		
		Notes
		-----
		Some spreadsheet programs calculate the "floor-towards-zero", where
		``floor(-2.5) == -2``.  NumPy instead uses the definition of
		`floor` where `floor(-2.5) == -3`. The "floor-towards-zero"
		function is called ``fix`` in NumPy.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.floor(a)
		array([-2., -2., -1.,  0.,  1.,  1.,  2.])
	**/
	static public function floor(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		floor_divide(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the largest integer smaller or equal to the division of the inputs.
		It is equivalent to the Python ``//`` operator and pairs with the
		Python ``%`` (`remainder`), function so that ``a = a % b + b * (a // b)``
		up to roundoff.
		
		Parameters
		----------
		x1 : array_like
		    Numerator.
		x2 : array_like
		    Denominator.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    y = floor(`x1`/`x2`)
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		remainder : Remainder complementary to floor_divide.
		divmod : Simultaneous floor division and remainder.
		divide : Standard division.
		floor : Round a number to the nearest integer toward minus infinity.
		ceil : Round a number to the nearest integer toward infinity.
		
		Examples
		--------
		>>> np.floor_divide(7,3)
		2
		>>> np.floor_divide([1., 2., 3., 4.], 2.5)
		array([ 0.,  0.,  1.,  1.])
		
		The ``//`` operator can be used as a shorthand for ``np.floor_divide``
		on ndarrays.
		
		>>> x1 = np.array([1., 2., 3., 4.])
		>>> x1 // 2.5
		array([0., 0., 1., 1.])
	**/
	static public function floor_divide(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		fmod(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the element-wise remainder of division.
		
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
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : array_like
		    The remainder of the division of `x1` by `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		Format an argument spec from the 4 values returned by getargspec.
		
		The first four arguments are (args, varargs, varkw, defaults).  The
		other four arguments are the corresponding optional formatting functions
		that are called to turn names and values into strings.  The ninth
		argument is an optional function to format the sequence of arguments.
	**/
	static public function formatargspec(args:Dynamic, ?varargs:Dynamic, ?varkw:Dynamic, ?defaults:Dynamic, ?formatarg:Dynamic, ?formatvarargs:Dynamic, ?formatvarkw:Dynamic, ?formatvalue:Dynamic, ?join:Dynamic):Dynamic;
	/**
		frombuffer(buffer, dtype=float, count=-1, offset=0, *, like=None)
		
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
		    Start reading the buffer from this offset (in bytes); default: 0.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out: MaskedArray
		
		Notes
		-----
		If the buffer has data that is not in machine byte-order, this should
		be specified as part of the data-type, e.g.::
		
		  >>> dt = np.dtype(int)
		  >>> dt = dt.newbyteorder('>')
		  >>> np.frombuffer(buf, dtype=dt) # doctest: +SKIP
		
		The data of the resulting array will not be byteswapped, but will be
		interpreted correctly.
		
		Examples
		--------
		>>> s = b'hello world'
		>>> np.frombuffer(s, dtype='S1', count=5, offset=6)
		array([b'w', b'o', b'r', b'l', b'd'], dtype='|S1')
		
		>>> np.frombuffer(b'\x01\x02', dtype=np.uint8)
		array([1, 2], dtype=uint8)
		>>> np.frombuffer(b'\x01\x02\x03\x04\x05', dtype=np.uint8, count=3)
		array([1, 2, 3], dtype=uint8)
	**/
	static public function frombuffer(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
	static public function fromfile(file:Dynamic, ?dtype:Dynamic, ?count:Dynamic, ?sep:Dynamic):Dynamic;
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
		array([[(0, False), (1,  True), (2, False)],
		       [(3,  True), (4, False), (5,  True)],
		       [(6, False), (7,  True), (8, False)]],
		      dtype=[('_data', '<i8'), ('_mask', '?')])
		>>> x2 = np.ma.fromflex(rec)
		>>> x2
		masked_array(
		  data=[[0, --, 2],
		        [--, 4, --],
		        [6, --, 8]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		
		Extra fields can be present in the structured array but are discarded:
		
		>>> dt = [('_data', '<i4'), ('_mask', '|b1'), ('field3', '<f4')]
		>>> rec2 = np.zeros((2, 2), dtype=dt)
		>>> rec2
		array([[(0, False, 0.), (0, False, 0.)],
		       [(0, False, 0.), (0, False, 0.)]],
		      dtype=[('_data', '<i4'), ('_mask', '?'), ('field3', '<f4')])
		>>> y = np.ma.fromflex(rec2)
		>>> y
		masked_array(
		  data=[[0, 0],
		        [0, 0]],
		  mask=[[False, False],
		        [False, False]],
		  fill_value=999999,
		  dtype=int32)
	**/
	static public function fromflex(fxarray:Dynamic):numpy.ma.MaskedArray;
	/**
		fromfunction(function, shape, **dtype)
		
		Construct an array by executing a function over each coordinate.
		
		The resulting array therefore has a value ``fn(x, y, z)`` at
		coordinate ``(x, y, z)``.
		
		Parameters
		----------
		function : callable
		    The function is called with N parameters, where N is the rank of
		    `shape`.  Each parameter represents the coordinates of the array
		    varying along a specific axis.  For example, if `shape`
		    were ``(2, 2)``, then the parameters would be
		    ``array([[0, 0], [1, 1]])`` and ``array([[0, 1], [0, 1]])``
		shape : (N,) tuple of ints
		    Shape of the output array, which also determines the shape of
		    the coordinate arrays passed to `function`.
		dtype : data-type, optional
		    Data-type of the coordinate arrays passed to `function`.
		    By default, `dtype` is float.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		fromfunction: MaskedArray
		    The result of the call to `function` is passed back directly.
		    Therefore the shape of `fromfunction` is completely determined by
		    `function`.  If `function` returns a scalar value, the shape of
		    `fromfunction` would not match the `shape` parameter.
		
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
		       [False, False,  True]])
		
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
		masked_array(
		  data=[[1, --],
		        [3, 4]],
		  mask=[[False,  True],
		        [False, False]],
		  fill_value=2)
		>>> ma.getdata(a)
		array([[1, 2],
		       [3, 4]])
		
		Equivalently use the ``MaskedArray`` `data` attribute.
		
		>>> a.data
		array([[1, 2],
		       [3, 4]])
	**/
	static public function get_data(a:Dynamic, ?subok:Dynamic):Dynamic;
	/**
		Return the filling value of a, if any.  Otherwise, returns the
		default filling value for that type.
	**/
	static public function get_fill_value(a:Dynamic):Dynamic;
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
		masked_array(
		  data=[[1, --],
		        [3, 4]],
		  mask=[[False,  True],
		        [False, False]],
		  fill_value=2)
		>>> ma.getmask(a)
		array([[False,  True],
		       [False, False]])
		
		Equivalently use the `MaskedArray` `mask` attribute.
		
		>>> a.mask
		array([[False,  True],
		       [False, False]])
		
		Result when mask == `nomask`
		
		>>> b = ma.masked_array([[1,2],[3,4]])
		>>> b
		masked_array(
		  data=[[1, 2],
		        [3, 4]],
		  mask=False,
		  fill_value=999999)
		>>> ma.nomask
		False
		>>> ma.getmask(b) == ma.nomask
		True
		>>> b.mask == ma.nomask
		True
	**/
	static public function get_mask(a:Dynamic):Dynamic;
	/**
		Return the youngest subclass of MaskedArray from a list of (masked) arrays.
		
		In case of siblings, the first listed takes over.
	**/
	static public function get_masked_subclass(?arrays:python.VarArgs<Dynamic>):Dynamic;
	/**
		Get the signature from obj
	**/
	static public function get_object_signature(obj:Dynamic):Dynamic;
	/**
		Get the names and default values of a function's arguments.
		
		A tuple of four things is returned: (args, varargs, varkw, defaults).
		'args' is a list of the argument names (it may contain nested lists).
		'varargs' and 'varkw' are the names of the * and ** arguments or None.
		'defaults' is an n-tuple of the default values of the last n arguments.
	**/
	static public function getargspec(func:Dynamic):Dynamic;
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
		masked_array(
		  data=[[1, --],
		        [3, 4]],
		  mask=[[False,  True],
		        [False, False]],
		  fill_value=2)
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
		masked_array(
		  data=[[1, --],
		        [3, 4]],
		  mask=[[False,  True],
		        [False, False]],
		  fill_value=2)
		>>> ma.getmask(a)
		array([[False,  True],
		       [False, False]])
		
		Equivalently use the `MaskedArray` `mask` attribute.
		
		>>> a.mask
		array([[False,  True],
		       [False, False]])
		
		Result when mask == `nomask`
		
		>>> b = ma.masked_array([[1,2],[3,4]])
		>>> b
		masked_array(
		  data=[[1, 2],
		        [3, 4]],
		  mask=False,
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
		masked_array(
		  data=[[1, --],
		        [3, 4]],
		  mask=[[False,  True],
		        [False, False]],
		  fill_value=2)
		>>> ma.getmaskarray(a)
		array([[False,  True],
		       [False, False]])
		
		Result when mask == ``nomask``
		
		>>> b = ma.masked_array([[1,2],[3,4]])
		>>> b
		masked_array(
		  data=[[1, 2],
		        [3, 4]],
		  mask=False,
		  fill_value=999999)
		>>> ma.getmaskarray(b)
		array([[False, False],
		       [False, False]])
	**/
	static public function getmaskarray(arr:Dynamic):Dynamic;
	/**
		greater(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truth value of (x1 > x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		
		See Also
		--------
		greater_equal, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater([4,2],[2,2])
		array([ True, False])
		
		The ``>`` operator can be used as a shorthand for ``np.greater`` on
		ndarrays.
		
		>>> a = np.array([4, 2])
		>>> b = np.array([2, 2])
		>>> a > b
		array([ True, False])
	**/
	static public function greater(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		greater_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truth value of (x1 >= x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : bool or ndarray of bool
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater_equal([4, 2, 1], [2, 2, 2])
		array([ True, True, False])
		
		The ``>=`` operator can be used as a shorthand for ``np.greater_equal``
		on ndarrays.
		
		>>> a = np.array([4, 2, 1])
		>>> b = np.array([2, 2, 2])
		>>> a >= b
		array([ True,  True, False])
	**/
	static public function greater_equal(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		harden_mask(self)
		
		Force the mask to hard.
		
		Whether the mask of a masked array is hard or soft is determined by
		its `~ma.MaskedArray.hardmask` property. `harden_mask` sets
		`~ma.MaskedArray.hardmask` to ``True``.
		
		See Also
		--------
		ma.MaskedArray.hardmask
	**/
	static public function harden_mask(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		hypot(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Given the "legs" of a right triangle, return its hypotenuse.
		
		Equivalent to ``sqrt(x1**2 + x2**2)``, element-wise.  If `x1` or
		`x2` is scalar_like (i.e., unambiguously cast-able to a scalar type),
		it is broadcast for use with each element of the other argument.
		(See Examples)
		
		Parameters
		----------
		x1, x2 : array_like
		    Leg of the triangle(s).
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		z : ndarray
		    The hypotenuse of the triangle(s).
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : MaskedArray
		    `n` x `n` array with its main diagonal set to one,
		    and all other elements 0.
		
		Examples
		--------
		>>> np.identity(3)
		array([[1.,  0.,  0.],
		       [0.,  1.,  0.],
		       [0.,  0.,  1.]])
	**/
	static public function identity(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
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
		(166670640, 166659832) # may vary
		
		If the array has no mask, the address of `nomask` is returned. This address
		is typically not close to the data in memory:
		
		>>> x = np.ma.array([1, 2, 3])
		>>> x.ids()
		(166691080, 3083169284) # may vary
	**/
	static public function ids(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		indices(dimensions, dtype=<class 'int'>, sparse=False)
		
		Return an array representing the indices of a grid.
		
		Compute an array where the subarrays contain index values 0, 1, ...
		varying only along the corresponding axis.
		
		Parameters
		----------
		dimensions : sequence of ints
		    The shape of the grid.
		dtype : dtype, optional
		    Data type of the result.
		sparse : boolean, optional
		    Return a sparse representation of the grid instead of a dense
		    representation. Default is False.
		
		    .. versionadded:: 1.17
		
		Returns
		-------
		grid : one MaskedArray or tuple of MaskedArrays
		    If sparse is False:
		        Returns one array of grid indices,
		        ``grid.shape = (len(dimensions),) + tuple(dimensions)``.
		    If sparse is True:
		        Returns a tuple of arrays, with
		        ``grid[i].shape = (1, ..., 1, dimensions[i], 1, ..., 1)`` with
		        dimensions[i] in the ith place
		
		See Also
		--------
		mgrid, ogrid, meshgrid
		
		Notes
		-----
		The output shape in the dense case is obtained by prepending the number
		of dimensions in front of the tuple of dimensions, i.e. if `dimensions`
		is a tuple ``(r0, ..., rN-1)`` of length ``N``, the output shape is
		``(N, r0, ..., rN-1)``.
		
		The subarrays ``grid[k]`` contains the N-D array of indices along the
		``k-th`` axis. Explicitly::
		
		    grid[k, i0, i1, ..., iN-1] = ik
		
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
		
		If sparse is set to true, the grid will be returned in a sparse
		representation.
		
		>>> i, j = np.indices((2, 3), sparse=True)
		>>> i.shape
		(2, 1)
		>>> j.shape
		(1, 3)
		>>> i        # row indices
		array([[0],
		       [1]])
		>>> j        # column indices
		array([[0, 1, 2]])
	**/
	static public function indices(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		inner(a, b, /)
		
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
		    If `a` and `b` are both
		    scalars or both 1-D arrays then a scalar is returned; otherwise
		    an array is returned.
		    ``out.shape = (*a.shape[:-1], *b.shape[:-1])``
		
		Raises
		------
		ValueError
		    If both `a` and `b` are nonscalar and their last dimensions have
		    different sizes.
		
		See Also
		--------
		tensordot : Sum products over arbitrary axes.
		dot : Generalised matrix product, using second last dimension of `b`.
		einsum : Einstein summation convention.
		
		Notes
		-----
		Masked values are replaced by 0.
		
		For vectors (1-D arrays) it computes the ordinary inner-product::
		
		    np.inner(a, b) = sum(a[:]*b[:])
		
		More generally, if `ndim(a) = r > 0` and `ndim(b) = s > 0`::
		
		    np.inner(a, b) = np.tensordot(a, b, axes=(-1,-1))
		
		or explicitly::
		
		    np.inner(a, b)[i0,...,ir-2,j0,...,js-2]
		         = sum(a[i0,...,ir-2,:]*b[j0,...,js-2,:])
		
		In addition `a` or `b` may be scalars, in which case::
		
		   np.inner(a,b) = a*b
		
		Examples
		--------
		Ordinary inner product for vectors:
		
		>>> a = np.array([1,2,3])
		>>> b = np.array([0,1,0])
		>>> np.inner(a, b)
		2
		
		Some multidimensional examples:
		
		>>> a = np.arange(24).reshape((2,3,4))
		>>> b = np.arange(4)
		>>> c = np.inner(a, b)
		>>> c.shape
		(2, 3)
		>>> c
		array([[ 14,  38,  62],
		       [ 86, 110, 134]])
		
		>>> a = np.arange(2).reshape((1,1,2))
		>>> b = np.arange(6).reshape((3,2))
		>>> c = np.inner(a, b)
		>>> c.shape
		(1, 1, 3)
		>>> c
		array([[[1, 3, 5]]])
		
		An example where `b` is a scalar:
		
		>>> np.inner(np.eye(2), 7)
		array([[7., 0.],
		       [0., 7.]])
	**/
	static public function inner(a:Dynamic, b:Dynamic):numpy.Ndarray;
	/**
		inner(a, b, /)
		
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
		    If `a` and `b` are both
		    scalars or both 1-D arrays then a scalar is returned; otherwise
		    an array is returned.
		    ``out.shape = (*a.shape[:-1], *b.shape[:-1])``
		
		Raises
		------
		ValueError
		    If both `a` and `b` are nonscalar and their last dimensions have
		    different sizes.
		
		See Also
		--------
		tensordot : Sum products over arbitrary axes.
		dot : Generalised matrix product, using second last dimension of `b`.
		einsum : Einstein summation convention.
		
		Notes
		-----
		Masked values are replaced by 0.
		
		For vectors (1-D arrays) it computes the ordinary inner-product::
		
		    np.inner(a, b) = sum(a[:]*b[:])
		
		More generally, if `ndim(a) = r > 0` and `ndim(b) = s > 0`::
		
		    np.inner(a, b) = np.tensordot(a, b, axes=(-1,-1))
		
		or explicitly::
		
		    np.inner(a, b)[i0,...,ir-2,j0,...,js-2]
		         = sum(a[i0,...,ir-2,:]*b[j0,...,js-2,:])
		
		In addition `a` or `b` may be scalars, in which case::
		
		   np.inner(a,b) = a*b
		
		Examples
		--------
		Ordinary inner product for vectors:
		
		>>> a = np.array([1,2,3])
		>>> b = np.array([0,1,0])
		>>> np.inner(a, b)
		2
		
		Some multidimensional examples:
		
		>>> a = np.arange(24).reshape((2,3,4))
		>>> b = np.arange(4)
		>>> c = np.inner(a, b)
		>>> c.shape
		(2, 3)
		>>> c
		array([[ 14,  38,  62],
		       [ 86, 110, 134]])
		
		>>> a = np.arange(2).reshape((1,1,2))
		>>> b = np.arange(6).reshape((3,2))
		>>> c = np.inner(a, b)
		>>> c.shape
		(1, 1, 3)
		>>> c
		array([[[1, 3, 5]]])
		
		An example where `b` is a scalar:
		
		>>> np.inner(np.eye(2), 7)
		array([[7., 0.],
		       [0., 7.]])
	**/
	static public function innerproduct(a:Dynamic, b:Dynamic):numpy.Ndarray;
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
		masked_array(
		  data=[[1.0, --, --],
		        [--, 1.0, --],
		        [--, --, 1.0]],
		  mask=[[False,  True,  True],
		        [ True, False,  True],
		        [ True,  True, False]],
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
		masked_array(
		  data=[[1.0, --, --],
		        [--, 1.0, --],
		        [--, --, 1.0]],
		  mask=[[False,  True,  True],
		        [ True, False,  True],
		        [ True,  True, False]],
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
		ma.isMaskedArray : Test whether input is an instance of MaskedArray.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> m = ma.masked_equal([0, 1, 0, 2, 3], 0)
		>>> m
		masked_array(data=[--, 1, --, 2, 3],
		             mask=[ True, False,  True, False, False],
		       fill_value=0)
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
		array([False,  True, False])
		>>> ma.is_mask(m)
		True
		
		Arrays with complex dtypes don't return True.
		
		>>> dtype = np.dtype({'names':['monty', 'pithon'],
		...                   'formats':[bool, bool]})
		>>> dtype
		dtype([('monty', '|b1'), ('pithon', '|b1')])
		>>> m = np.array([(True, False), (False, True), (True, False)],
		...              dtype=dtype)
		>>> m
		array([( True, False), (False,  True), ( True, False)],
		      dtype=[('monty', '?'), ('pithon', '?')])
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
		masked_array(data=[--, 1, --, 2, 3],
		             mask=[ True, False,  True, False, False],
		       fill_value=0)
		>>> ma.is_masked(x)
		True
		>>> x = ma.masked_equal([0, 1, 0, 2, 3], 42)
		>>> x
		masked_array(data=[0, 1, 0, 2, 3],
		             mask=False,
		       fill_value=42)
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
	static public function is_string_or_list_of_strings(val:Dynamic):Dynamic;
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
		masked_array(
		  data=[[1.0, --, --],
		        [--, 1.0, --],
		        [--, --, 1.0]],
		  mask=[[False,  True,  True],
		        [ True, False,  True],
		        [ True,  True, False]],
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
		Check for a complex type or an array of complex numbers.
		
		The type of the input is checked, not the value. Even if the input
		has an imaginary part equal to zero, `iscomplexobj` evaluates to True.
		
		Parameters
		----------
		x : any
		    The input can be of any type and shape.
		
		Returns
		-------
		iscomplexobj : bool
		    The return value, True if `x` is of a complex type or has at least
		    one complex element.
		
		See Also
		--------
		isrealobj, iscomplex
		
		Examples
		--------
		>>> np.iscomplexobj(1)
		False
		>>> np.iscomplexobj(1+0j)
		True
		>>> np.iscomplexobj([3, 1+0j, True])
		True
	**/
	static public function iscomplexobj(x:Dynamic):Bool;
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
		less(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truth value of (x1 < x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less_equal, greater_equal, equal, not_equal
		
		Examples
		--------
		>>> np.less([1, 2], [2, 2])
		array([ True, False])
		
		The ``<`` operator can be used as a shorthand for ``np.less`` on ndarrays.
		
		>>> a = np.array([1, 2])
		>>> b = np.array([2, 2])
		>>> a < b
		array([ True, False])
	**/
	static public function less(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		less_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truth value of (x1 <= x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, greater_equal, equal, not_equal
		
		Examples
		--------
		>>> np.less_equal([4, 2, 1], [2, 2, 2])
		array([False,  True,  True])
		
		The ``<=`` operator can be used as a shorthand for ``np.less_equal`` on
		ndarrays.
		
		>>> a = np.array([4, 2, 1])
		>>> b = np.array([2, 2, 2])
		>>> a <= b
		array([False,  True,  True])
	**/
	static public function less_equal(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		log(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Natural logarithm, element-wise.
		
		The natural logarithm `log` is the inverse of the exponential function,
		so that `log(exp(x)) = x`. The natural logarithm is logarithm in base
		`e`.
		
		Parameters
		----------
		x : array_like
		    Input value.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The natural logarithm of `x`, element-wise.
		    This is a scalar if `x` is a scalar.
		
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
		       10th printing, 1964, pp. 67.
		       https://personal.math.ubc.ca/~cbm/aands/page_67.htm
		.. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log([1, np.e, np.e**2, 0])
		array([  0.,   1.,   2., -Inf])
	**/
	static public function log(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		log10(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the base 10 logarithm of the input array, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The logarithm to the base 10 of `x`, element-wise. NaNs are
		    returned where x is negative.
		    This is a scalar if `x` is a scalar.
		
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
		       10th printing, 1964, pp. 67.
		       https://personal.math.ubc.ca/~cbm/aands/page_67.htm
		.. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log10([1e-15, -3.])
		array([-15.,  nan])
	**/
	static public function log10(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		log2(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Base-2 logarithm of `x`.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    Base-2 logarithm of `x`.
		    This is a scalar if `x` is a scalar.
		
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
		logical_and(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the truth value of x1 AND x2 element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or bool
		    Boolean result of the logical AND operation applied to the elements
		    of `x1` and `x2`; the shape is determined by broadcasting.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		logical_or, logical_not, logical_xor
		bitwise_and
		
		Examples
		--------
		>>> np.logical_and(True, False)
		False
		>>> np.logical_and([True, False], [False, False])
		array([False, False])
		
		>>> x = np.arange(5)
		>>> np.logical_and(x>1, x<4)
		array([False, False,  True,  True, False])
		
		
		The ``&`` operator can be used as a shorthand for ``np.logical_and`` on
		boolean ndarrays.
		
		>>> a = np.array([True, False])
		>>> b = np.array([False, False])
		>>> a & b
		array([False, False])
	**/
	static public function logical_and(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		logical_not(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the truth value of NOT x element-wise.
		
		Parameters
		----------
		x : array_like
		    Logical NOT is applied to the elements of `x`.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : bool or ndarray of bool
		    Boolean result with the same shape as `x` of the NOT operation
		    on elements of `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		logical_and, logical_or, logical_xor
		
		Examples
		--------
		>>> np.logical_not(3)
		False
		>>> np.logical_not([True, False, 0, 1])
		array([False,  True,  True, False])
		
		>>> x = np.arange(5)
		>>> np.logical_not(x<3)
		array([False, False, False,  True,  True])
	**/
	static public function logical_not(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		logical_or(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the truth value of x1 OR x2 element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Logical OR is applied to the elements of `x1` and `x2`.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or bool
		    Boolean result of the logical OR operation applied to the elements
		    of `x1` and `x2`; the shape is determined by broadcasting.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		logical_and, logical_not, logical_xor
		bitwise_or
		
		Examples
		--------
		>>> np.logical_or(True, False)
		True
		>>> np.logical_or([True, False], [False, False])
		array([ True, False])
		
		>>> x = np.arange(5)
		>>> np.logical_or(x < 1, x > 3)
		array([ True, False, False, False,  True])
		
		The ``|`` operator can be used as a shorthand for ``np.logical_or`` on
		boolean ndarrays.
		
		>>> a = np.array([True, False])
		>>> b = np.array([False, False])
		>>> a | b
		array([ True, False])
	**/
	static public function logical_or(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		logical_xor(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the truth value of x1 XOR x2, element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Logical XOR is applied to the elements of `x1` and `x2`.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : bool or ndarray of bool
		    Boolean result of the logical XOR operation applied to the elements
		    of `x1` and `x2`; the shape is determined by broadcasting.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		logical_and, logical_or, logical_not, bitwise_xor
		
		Examples
		--------
		>>> np.logical_xor(True, False)
		True
		>>> np.logical_xor([True, True, False, False], [True, False, True, False])
		array([False,  True,  True, False])
		
		>>> x = np.arange(5)
		>>> np.logical_xor(x < 1, x > 3)
		array([ True, False, False, False,  True])
		
		Simple example showing support of broadcasting
		
		>>> np.logical_xor(0, np.eye(2))
		array([[ True, False],
		       [False,  True]])
	**/
	static public function logical_xor(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a boolean mask from an array.
		
		Return `m` as a boolean mask, creating a copy if necessary or requested.
		The function can accept any sequence that is convertible to integers,
		or ``nomask``.  Does not require that contents must be 0s and 1s, values
		of 0 are interpreted as False, everything else as True.
		
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
		array([ True, False,  True,  True])
		>>> m = [1, 0, 1, 1]
		>>> ma.make_mask(m)
		array([ True, False,  True,  True])
		>>> m = [1, 0, 2, -3]
		>>> ma.make_mask(m)
		array([ True, False,  True,  True])
		
		Effect of the `shrink` parameter.
		
		>>> m = np.zeros(4)
		>>> m
		array([0., 0., 0., 0.])
		>>> ma.make_mask(m)
		False
		>>> ma.make_mask(m, shrink=False)
		array([False, False, False, False])
		
		Using a flexible `dtype`.
		
		>>> m = [1, 0, 1, 1]
		>>> n = [0, 1, 0, 0]
		>>> arr = []
		>>> for man, mouse in zip(m, n):
		...     arr.append((man, mouse))
		>>> arr
		[(1, 0), (0, 1), (1, 0), (1, 0)]
		>>> dtype = np.dtype({'names':['man', 'mouse'],
		...                   'formats':[np.int64, np.int64]})
		>>> arr = np.array(arr, dtype=dtype)
		>>> arr
		array([(1, 0), (0, 1), (1, 0), (1, 0)],
		      dtype=[('man', '<i8'), ('mouse', '<i8')])
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
		...                   'formats':[np.float32, np.int64]})
		>>> dtype
		dtype([('foo', '<f4'), ('bar', '<i8')])
		>>> ma.make_mask_descr(dtype)
		dtype([('foo', '|b1'), ('bar', '|b1')])
		>>> ma.make_mask_descr(np.float32)
		dtype('bool')
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
		array([False, False, False])
		
		Defining a more complex dtype.
		
		>>> dtype = np.dtype({'names':['foo', 'bar'],
		...                   'formats':[np.float32, np.int64]})
		>>> dtype
		dtype([('foo', '<f4'), ('bar', '<i8')])
		>>> ma.make_mask_none((3,), dtype=dtype)
		array([(False, False), (False, False), (False, False)],
		      dtype=[('foo', '|b1'), ('bar', '|b1')])
	**/
	static public function make_mask_none(newshape:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
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
		array([ True,  True,  True, False])
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
		>>> a = np.zeros((3, 3), dtype=int)
		>>> a[1, 1] = 1
		>>> a
		array([[0, 0, 0],
		       [0, 1, 0],
		       [0, 0, 0]])
		>>> a = ma.masked_equal(a, 1)
		>>> a
		masked_array(
		  data=[[0, 0, 0],
		        [0, --, 0],
		        [0, 0, 0]],
		  mask=[[False, False, False],
		        [False,  True, False],
		        [False, False, False]],
		  fill_value=1)
		>>> ma.mask_rowcols(a)
		masked_array(
		  data=[[0, --, 0],
		        [--, --, --],
		        [0, --, 0]],
		  mask=[[False,  True, False],
		        [ True,  True,  True],
		        [False,  True, False]],
		  fill_value=1)
	**/
	static public function mask_rowcols(a:Dynamic, ?axis:Dynamic):numpy.ma.MaskedArray;
	static public var masked : Dynamic;
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
		masked_array(data=[0, 1, --, 3],
		             mask=[False, False,  True, False],
		       fill_value=2)
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
		masked_array(data=[0, 1, 2, --],
		             mask=[False, False, False,  True],
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
		masked_array(data=[0, 1, --, --],
		             mask=[False, False,  True,  True],
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
		masked_array(data=[0.31, 1.2, --, --, -0.4, -1.1],
		             mask=[False, False,  True,  True, False, False],
		       fill_value=1e+20)
		
		The order of `v1` and `v2` doesn't matter.
		
		>>> ma.masked_inside(x, 0.3, -0.3)
		masked_array(data=[0.31, 1.2, --, --, -0.4, -1.1],
		             mask=[False, False,  True,  True, False, False],
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
		>>> a = np.arange(5, dtype=float)
		>>> a[2] = np.NaN
		>>> a[3] = np.PINF
		>>> a
		array([ 0.,  1., nan, inf,  4.])
		>>> ma.masked_invalid(a)
		masked_array(data=[0.0, 1.0, --, --, 4.0],
		             mask=[False, False,  True,  True, False],
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
		masked_array(data=[--, --, 2, 3],
		             mask=[ True,  True, False, False],
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
		masked_array(data=[--, --, --, 3],
		             mask=[ True,  True,  True, False],
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
		masked_array(data=[--, --, 2, --],
		             mask=[ True,  True, False,  True],
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
		>>> eat
		masked_array(data=[--, 'ham'],
		             mask=[ True, False],
		       fill_value='green_eggs',
		            dtype=object)
		>>> # plain ol` ham is boring
		>>> fresh_food = np.array(['cheese', 'ham', 'pineapple'], dtype=object)
		>>> eat = ma.masked_object(fresh_food, 'green_eggs')
		>>> eat
		masked_array(data=['cheese', 'ham', 'pineapple'],
		             mask=False,
		       fill_value='green_eggs',
		            dtype=object)
		
		Note that `mask` is set to ``nomask`` if possible.
		
		>>> eat
		masked_array(data=['cheese', 'ham', 'pineapple'],
		             mask=False,
		       fill_value='green_eggs',
		            dtype=object)
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
		masked_array(data=[--, --, 0.01, 0.2, --, --],
		             mask=[ True,  True, False, False,  True,  True],
		       fill_value=1e+20)
		
		The order of `v1` and `v2` doesn't matter.
		
		>>> ma.masked_outside(x, 0.3, -0.3)
		masked_array(data=[--, --, 0.01, 0.2, --, --],
		             mask=[ True,  True, False, False,  True,  True],
		       fill_value=1e+20)
	**/
	static public function masked_outside(x:Dynamic, v1:Dynamic, v2:Dynamic, ?copy:Dynamic):Dynamic;
	static public var masked_print_option : Dynamic;
	static public var masked_singleton : Dynamic;
	/**
		Mask using floating point equality.
		
		Return a MaskedArray, masked where the data in array `x` are approximately
		equal to `value`, determined using `isclose`. The default tolerances for
		`masked_values` are the same as those for `isclose`.
		
		For integer types, exact equality is used, in the same way as
		`masked_equal`.
		
		The fill_value is set to `value` and the mask is set to ``nomask`` if
		possible.
		
		Parameters
		----------
		x : array_like
		    Array to mask.
		value : float
		    Masking value.
		rtol, atol : float, optional
		    Tolerance parameters passed on to `isclose`
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
		masked_array(data=[1.0, --, 2.0, --, 3.0],
		             mask=[False,  True, False,  True, False],
		       fill_value=1.1)
		
		Note that `mask` is set to ``nomask`` if possible.
		
		>>> ma.masked_values(x, 1.5)
		masked_array(data=[1. , 1.1, 2. , 1.1, 3. ],
		             mask=False,
		       fill_value=1.5)
		
		For integers, the fill value will be different in general to the
		result of ``masked_equal``.
		
		>>> x = np.arange(5)
		>>> x
		array([0, 1, 2, 3, 4])
		>>> ma.masked_values(x, 2)
		masked_array(data=[0, 1, --, 3, 4],
		             mask=[False, False,  True, False, False],
		       fill_value=2)
		>>> ma.masked_equal(x, 2)
		masked_array(data=[0, 1, --, 3, 4],
		             mask=[False, False,  True, False, False],
		       fill_value=2)
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
		masked_array(data=[--, --, --, 3],
		             mask=[ True,  True,  True, False],
		       fill_value=999999)
		
		Mask array `b` conditional on `a`.
		
		>>> b = ['a', 'b', 'c', 'd']
		>>> ma.masked_where(a == 2, b)
		masked_array(data=['a', 'b', --, 'd'],
		             mask=[False, False,  True, False],
		       fill_value='N/A',
		            dtype='<U1')
		
		Effect of the `copy` argument.
		
		>>> c = ma.masked_where(a <= 2, a)
		>>> c
		masked_array(data=[--, --, --, 3],
		             mask=[ True,  True,  True, False],
		       fill_value=999999)
		>>> c[0] = 99
		>>> c
		masked_array(data=[99, --, --, 3],
		             mask=[False,  True,  True, False],
		       fill_value=999999)
		>>> a
		array([0, 1, 2, 3])
		>>> c = ma.masked_where(a <= 2, a, copy=False)
		>>> c[0] = 99
		>>> c
		masked_array(data=[99, --, --, 3],
		             mask=[False,  True,  True, False],
		       fill_value=999999)
		>>> a
		array([99,  1,  2,  3])
		
		When `condition` or `a` contain masked values.
		
		>>> a = np.arange(4)
		>>> a = ma.masked_where(a == 2, a)
		>>> a
		masked_array(data=[0, 1, --, 3],
		             mask=[False, False,  True, False],
		       fill_value=999999)
		>>> b = np.arange(4)
		>>> b = ma.masked_where(b == 0, b)
		>>> b
		masked_array(data=[--, 1, 2, 3],
		             mask=[ True, False, False, False],
		       fill_value=999999)
		>>> ma.masked_where(a == 3, b)
		masked_array(data=[--, 1, --, --],
		             mask=[ True, False,  True,  True],
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
		fill_value : scalar or None, optional
		    Value used to fill in the masked values.
		    If None, use the output of maximum_fill_value().
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		Returns
		-------
		amax : array_like
		    New array holding the result.
		    If ``out`` was specified, ``out`` is returned.
		
		See Also
		--------
		ma.maximum_fill_value
		    Returns the maximum filling value for a given datatype.
	**/
	static public function max(obj:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?keepdims:Dynamic):python.NativeIterable<Dynamic>;
	static public var max_filler : Dynamic;
	/**
		maximum(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Element-wise maximum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		maxima. If one of the elements being compared is a NaN, then that
		element is returned. If both elements are NaNs then the first is
		returned. The latter distinction is important for complex NaNs, which
		are defined as at least one of the real or imaginary parts being a NaN.
		The net effect is that NaNs are propagated.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays holding the elements to be compared.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The maximum of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		minimum :
		    Element-wise minimum of two arrays, propagates NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignores NaNs.
		amax :
		    The maximum value of an array along a given axis, propagates NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignores NaNs.
		
		fmin, amin, nanmin
		
		Notes
		-----
		The maximum is equivalent to ``np.where(x1 >= x2, x1, x2)`` when
		neither x1 nor x2 are nans, but it is faster and does proper
		broadcasting.
		
		Examples
		--------
		>>> np.maximum([2, 3, 4], [1, 5, 2])
		array([2, 5, 4])
		
		>>> np.maximum(np.eye(2), [0.5, 2]) # broadcasting
		array([[ 1. ,  2. ],
		       [ 0.5,  2. ]])
		
		>>> np.maximum([np.nan, 0, np.nan], [0, np.nan, np.nan])
		array([nan, nan, nan])
		>>> np.maximum(np.Inf, 1)
		inf
	**/
	static public function maximum(a:Dynamic, ?b:Dynamic):Dynamic;
	/**
		Return the minimum value that can be represented by the dtype of an object.
		
		This function is useful for calculating a fill value suitable for
		taking the maximum of an array with a given dtype.
		
		Parameters
		----------
		obj : ndarray, dtype or scalar
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
		mean(self, axis=None, dtype=None, out=None, keepdims=<no value>)
		
		Returns the average of the array elements along given axis.
		
		Masked entries are ignored, and result elements which are not
		finite will be masked.
		
		Refer to `numpy.mean` for full documentation.
		
		See Also
		--------
		numpy.ndarray.mean : corresponding function for ndarrays
		numpy.mean : Equivalent function
		numpy.ma.average : Weighted average.
		
		Examples
		--------
		>>> a = np.ma.array([1,2,3], mask=[False, False, True])
		>>> a
		masked_array(data=[1, 2, --],
		             mask=[False, False,  True],
		       fill_value=999999)
		>>> a.mean()
		1.5
	**/
	static public function mean(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
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
		fill_value : scalar or None, optional
		    Value used to fill in the masked values.
		    If None, use the output of `minimum_fill_value`.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		Returns
		-------
		amin : array_like
		    New array holding the result.
		    If ``out`` was specified, ``out`` is returned.
		
		See Also
		--------
		ma.minimum_fill_value
		    Returns the minimum filling value for a given datatype.
	**/
	static public function min(obj:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?keepdims:Dynamic):python.NativeIterable<Dynamic>;
	static public var min_filler : Dynamic;
	/**
		minimum(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Element-wise minimum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		minima. If one of the elements being compared is a NaN, then that
		element is returned. If both elements are NaNs then the first is
		returned. The latter distinction is important for complex NaNs, which
		are defined as at least one of the real or imaginary parts being a NaN.
		The net effect is that NaNs are propagated.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays holding the elements to be compared.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The minimum of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		maximum :
		    Element-wise maximum of two arrays, propagates NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignores NaNs.
		amin :
		    The minimum value of an array along a given axis, propagates NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignores NaNs.
		
		fmax, amax, nanmax
		
		Notes
		-----
		The minimum is equivalent to ``np.where(x1 <= x2, x1, x2)`` when
		neither x1 nor x2 are NaNs, but it is faster and does proper
		broadcasting.
		
		Examples
		--------
		>>> np.minimum([2, 3, 4], [1, 5, 2])
		array([1, 3, 2])
		
		>>> np.minimum(np.eye(2), [0.5, 2]) # broadcasting
		array([[ 0.5,  0. ],
		       [ 0. ,  1. ]])
		
		>>> np.minimum([np.nan, 0, np.nan],[0, np.nan, np.nan])
		array([nan, nan, nan])
		>>> np.minimum(-np.Inf, 1)
		-inf
	**/
	static public function minimum(a:Dynamic, ?b:Dynamic):Dynamic;
	/**
		Return the maximum value that can be represented by the dtype of an object.
		
		This function is useful for calculating a fill value suitable for
		taking the minimum of an array with a given dtype.
		
		Parameters
		----------
		obj : ndarray, dtype or scalar
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
		remainder(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the element-wise remainder of division.
		
		Computes the remainder complementary to the `floor_divide` function.  It is
		equivalent to the Python modulus operator``x1 % x2`` and has the same sign
		as the divisor `x2`. The MATLAB function equivalent to ``np.remainder``
		is ``mod``.
		
		.. warning::
		
		    This should not be confused with:
		
		    * Python 3.7's `math.remainder` and C's ``remainder``, which
		      computes the IEEE remainder, which are the complement to
		      ``round(x1 / x2)``.
		    * The MATLAB ``rem`` function and or the C ``%`` operator which is the
		      complement to ``int(x1 / x2)``.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The element-wise remainder of the quotient ``floor_divide(x1, x2)``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent of Python ``//`` operator.
		divmod : Simultaneous floor division and remainder.
		fmod : Equivalent of the MATLAB ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		``mod`` is an alias of ``remainder``.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
		array([0, 1, 2, 3, 4, 0, 1])
		
		The ``%`` operator can be used as a shorthand for ``np.remainder`` on
		ndarrays.
		
		>>> x1 = np.arange(7)
		>>> x1 % 5
		array([0, 1, 2, 3, 4, 0, 1])
	**/
	static public function mod(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		multiply(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Multiply arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays to be multiplied.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The product of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		
		The ``*`` operator can be used as a shorthand for ``np.multiply`` on
		ndarrays.
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> x1 * x2
		array([[  0.,   1.,   4.],
		       [  0.,   4.,  10.],
		       [  0.,   7.,  16.]])
	**/
	static public function multiply(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		array(object, dtype=None, *, copy=True, order='K', subok=False, ndmin=0,
		      like=None)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		    If object is a scalar, a 0-dimensional array containing object is
		    returned.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for 'A', see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function narray(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		negative(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Numerical negative, element-wise.
		
		Parameters
		----------
		x : array_like or scalar
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    Returned array or scalar: `y = -x`.
		    This is a scalar if `x` is a scalar.
		
		Examples
		--------
		>>> np.negative([1.,-1.])
		array([-1.,  1.])
		
		The unary ``-`` operator can be used as a shorthand for ``np.negative`` on
		ndarrays.
		
		>>> x1 = np.array(([1., -1.]))
		>>> -x1
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
		numpy.ndarray.nonzero :
		    Equivalent ndarray method.
		count_nonzero :
		    Counts the number of non-zero elements in the input array.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> x = ma.array(np.eye(3))
		>>> x
		masked_array(
		  data=[[1., 0., 0.],
		        [0., 1., 0.],
		        [0., 0., 1.]],
		  mask=False,
		  fill_value=1e+20)
		>>> x.nonzero()
		(array([0, 1, 2]), array([0, 1, 2]))
		
		Masked elements are ignored.
		
		>>> x[1, 1] = ma.masked
		>>> x
		masked_array(
		  data=[[1.0, 0.0, 0.0],
		        [0.0, --, 0.0],
		        [0.0, 0.0, 1.0]],
		  mask=[[False, False, False],
		        [False,  True, False],
		        [False, False, False]],
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
		masked_array(
		  data=[[False, False, False],
		        [ True,  True,  True],
		        [ True,  True,  True]],
		  mask=False,
		  fill_value=True)
		>>> ma.nonzero(a > 3)
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
		
		The ``nonzero`` method of the condition array can also be called.
		
		>>> (a > 3).nonzero()
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
	**/
	static public function nonzero(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):python.Tuple<Dynamic>;
	/**
		Normalizes an axis argument into a tuple of non-negative integer axes.
		
		This handles shorthands such as ``1`` and converts them to ``(1,)``,
		as well as performing the handling of negative indices covered by
		`normalize_axis_index`.
		
		By default, this forbids axes from being specified multiple times.
		
		Used internally by multi-axis-checking logic.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		axis : int, iterable of int
		    The un-normalized index or indices of the axis.
		ndim : int
		    The number of dimensions of the array that `axis` should be normalized
		    against.
		argname : str, optional
		    A prefix to put before the error message, typically the name of the
		    argument.
		allow_duplicate : bool, optional
		    If False, the default, disallow an axis from being specified twice.
		
		Returns
		-------
		normalized_axes : tuple of int
		    The normalized axis index, such that `0 <= normalized_axis < ndim`
		
		Raises
		------
		AxisError
		    If any axis provided is out of range
		ValueError
		    If an axis is repeated
		
		See also
		--------
		normalize_axis_index : normalizing a single scalar axis
	**/
	static public function normalize_axis_tuple(axis:Dynamic, ndim:Dynamic, ?argname:Dynamic, ?allow_duplicate:Dynamic):Dynamic;
	/**
		not_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return (x1 != x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		equal, greater, greater_equal, less, less_equal
		
		Examples
		--------
		>>> np.not_equal([1.,2.], [1., 3.])
		array([False,  True])
		>>> np.not_equal([1, 2], [[1, 3],[1, 4]])
		array([[False,  True],
		       [False,  True]])
		
		The ``!=`` operator can be used as a shorthand for ``np.not_equal`` on
		ndarrays.
		
		>>> a = np.array([1., 2.])
		>>> b = np.array([1., 3.])
		>>> a != b
		array([False,  True])
	**/
	static public function not_equal(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		order : {'C', 'F'}, optional, default: C
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : MaskedArray
		    Array of ones with the given shape, dtype, and order.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		empty : Return a new uninitialized array.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Examples
		--------
		>>> np.ones(5)
		array([1., 1., 1., 1., 1.])
		
		>>> np.ones((5,), dtype=int)
		array([1, 1, 1, 1, 1])
		
		>>> np.ones((2, 1))
		array([[1.],
		       [1.]])
		
		>>> s = (2,2)
		>>> np.ones(s)
		array([[1.,  1.],
		       [1.,  1.]])
	**/
	static public function ones(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
	/**
		ones_like(*args, **kwargs)
		
		Return an array of ones with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of
		    the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of `a`, otherwise it will be a base-class array. Defaults
		    to True.
		shape : int or sequence of ints, optional.
		    Overrides the shape of the result. If order='K' and the number of
		    dimensions is unchanged, will try to keep order, otherwise,
		    order='C' is implied.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		out : MaskedArray
		    Array of ones with the same shape and type as `a`.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		ones : Return a new array setting values to one.
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> x = x.reshape((2, 3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.ones_like(x)
		array([[1, 1, 1],
		       [1, 1, 1]])
		
		>>> y = np.arange(3, dtype=float)
		>>> y
		array([0., 1., 2.])
		>>> np.ones_like(y)
		array([1.,  1.,  1.])
	**/
	static public function ones_like(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
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
		inner
		einsum : ``einsum('i,j->ij', a.ravel(), b.ravel())`` is the equivalent.
		ufunc.outer : A generalization to dimensions other than 1D and other
		              operations. ``np.multiply.outer(a.ravel(), b.ravel())``
		              is the equivalent.
		tensordot : ``np.tensordot(a.ravel(), b.ravel(), axes=((), ()))``
		            is the equivalent.
		
		References
		----------
		.. [1] : G. H. Golub and C. F. Van Loan, *Matrix Computations*, 3rd
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
		array([[0.+2.j, 0.+2.j, 0.+2.j, 0.+2.j, 0.+2.j],
		       [0.+1.j, 0.+1.j, 0.+1.j, 0.+1.j, 0.+1.j],
		       [0.+0.j, 0.+0.j, 0.+0.j, 0.+0.j, 0.+0.j],
		       [0.-1.j, 0.-1.j, 0.-1.j, 0.-1.j, 0.-1.j],
		       [0.-2.j, 0.-2.j, 0.-2.j, 0.-2.j, 0.-2.j]])
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
		array([['a', 'aa', 'aaa'],
		       ['b', 'bb', 'bbb'],
		       ['c', 'cc', 'ccc']], dtype=object)
		
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
		inner
		einsum : ``einsum('i,j->ij', a.ravel(), b.ravel())`` is the equivalent.
		ufunc.outer : A generalization to dimensions other than 1D and other
		              operations. ``np.multiply.outer(a.ravel(), b.ravel())``
		              is the equivalent.
		tensordot : ``np.tensordot(a.ravel(), b.ravel(), axes=((), ()))``
		            is the equivalent.
		
		References
		----------
		.. [1] : G. H. Golub and C. F. Van Loan, *Matrix Computations*, 3rd
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
		array([[0.+2.j, 0.+2.j, 0.+2.j, 0.+2.j, 0.+2.j],
		       [0.+1.j, 0.+1.j, 0.+1.j, 0.+1.j, 0.+1.j],
		       [0.+0.j, 0.+0.j, 0.+0.j, 0.+0.j, 0.+0.j],
		       [0.-1.j, 0.-1.j, 0.-1.j, 0.-1.j, 0.-1.j],
		       [0.-2.j, 0.-2.j, 0.-2.j, 0.-2.j, 0.-2.j]])
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
		array([['a', 'aa', 'aaa'],
		       ['b', 'bb', 'bbb'],
		       ['c', 'cc', 'ccc']], dtype=object)
		
		Notes
		-----
		Masked values are replaced by 0.
	**/
	static public function outerproduct(a:Dynamic, b:Dynamic):Dynamic;
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
	/**
		prod(self, axis=None, dtype=None, out=None, keepdims=<no value>)
		
		Return the product of the array elements over the given axis.
		
		Masked elements are set to 1 internally for computation.
		
		Refer to `numpy.prod` for full documentation.
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is raised
		on overflow.
		
		See Also
		--------
		numpy.ndarray.prod : corresponding function for ndarrays
		numpy.prod : equivalent function
	**/
	static public function prod(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		prod(self, axis=None, dtype=None, out=None, keepdims=<no value>)
		
		Return the product of the array elements over the given axis.
		
		Masked elements are set to 1 internally for computation.
		
		Refer to `numpy.prod` for full documentation.
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is raised
		on overflow.
		
		See Also
		--------
		numpy.ndarray.prod : corresponding function for ndarrays
		numpy.prod : equivalent function
	**/
	static public function product(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return (maximum - minimum) along the given dimension
		(i.e. peak-to-peak value).
		
		.. warning::
		    `ptp` preserves the data type of the array. This means the
		    return value for an input of signed integers with n bits
		    (e.g. `np.int8`, `np.int16`, etc) is also a signed integer
		    with n bits.  In that case, peak-to-peak values greater than
		    ``2**(n-1)-1`` will be returned as negative values. An example
		    with a work-around is shown below.
		
		Parameters
		----------
		axis : {None, int}, optional
		    Axis along which to find the peaks.  If None (default) the
		    flattened array is used.
		out : {None, array_like}, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type will be cast if necessary.
		fill_value : scalar or None, optional
		    Value used to fill in the masked values.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		Returns
		-------
		ptp : ndarray.
		    A new array holding the result, unless ``out`` was
		    specified, in which case a reference to ``out`` is returned.
		
		Examples
		--------
		>>> x = np.ma.MaskedArray([[4, 9, 2, 10],
		...                        [6, 9, 7, 12]])
		
		>>> x.ptp(axis=1)
		masked_array(data=[8, 6],
		             mask=False,
		       fill_value=999999)
		
		>>> x.ptp(axis=0)
		masked_array(data=[2, 0, 5, 2],
		             mask=False,
		       fill_value=999999)
		
		>>> x.ptp()
		10
		
		This example shows that a negative value can be returned when
		the input is an array of signed integers.
		
		>>> y = np.ma.MaskedArray([[1, 127],
		...                        [0, 127],
		...                        [-1, 127],
		...                        [-2, 127]], dtype=np.int8)
		>>> y.ptp(axis=1)
		masked_array(data=[ 126,  127, -128, -127],
		             mask=False,
		       fill_value=999999,
		            dtype=int8)
		
		A work-around is to use the `view()` method to view the result as
		unsigned integers with the same bit width:
		
		>>> y.ptp(axis=1).view(np.uint8)
		masked_array(data=[126, 127, 128, 129],
		             mask=False,
		       fill_value=999999,
		            dtype=uint8)
	**/
	static public function ptp(obj:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		>>> x
		masked_array(
		  data=[[1, --, 3],
		        [--, 5, --],
		        [7, --, 9]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		>>> x.ravel()
		masked_array(data=[1, --, 3, --, 5, --, 7, --, 9],
		             mask=[False,  True, False,  True, False,  True, False,  True,
		                   False],
		       fill_value=999999)
	**/
	static public function ravel(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		remainder(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the element-wise remainder of division.
		
		Computes the remainder complementary to the `floor_divide` function.  It is
		equivalent to the Python modulus operator``x1 % x2`` and has the same sign
		as the divisor `x2`. The MATLAB function equivalent to ``np.remainder``
		is ``mod``.
		
		.. warning::
		
		    This should not be confused with:
		
		    * Python 3.7's `math.remainder` and C's ``remainder``, which
		      computes the IEEE remainder, which are the complement to
		      ``round(x1 / x2)``.
		    * The MATLAB ``rem`` function and or the C ``%`` operator which is the
		      complement to ``int(x1 / x2)``.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The element-wise remainder of the quotient ``floor_divide(x1, x2)``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent of Python ``//`` operator.
		divmod : Simultaneous floor division and remainder.
		fmod : Equivalent of the MATLAB ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		``mod`` is an alias of ``remainder``.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
		array([0, 1, 2, 3, 4, 0, 1])
		
		The ``%`` operator can be used as a shorthand for ``np.remainder`` on
		ndarrays.
		
		>>> x1 = np.arange(7)
		>>> x1 % 5
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
		masked_array(
		  data=[[1, --],
		        [3, 4]],
		  mask=[[False,  True],
		        [False, False]],
		  fill_value=999999)
		>>> np.resize(a, (3, 3))
		masked_array(
		  data=[[1, 2, 3],
		        [4, 1, 2],
		        [3, 4, 1]],
		  mask=False,
		  fill_value=999999)
		>>> ma.resize(a, (3, 3))
		masked_array(
		  data=[[1, --, 3],
		        [4, 1, --],
		        [3, 4, 1]],
		  mask=[[False,  True, False],
		        [False, False,  True],
		        [False, False, False]],
		  fill_value=999999)
		
		A MaskedArray is always returned, regardless of the input type.
		
		>>> a = np.array([[1, 2] ,[3, 4]])
		>>> ma.resize(a, (3, 3))
		masked_array(
		  data=[[1, 2, 3],
		        [4, 1, 2],
		        [3, 4, 1]],
		  mask=False,
		  fill_value=999999)
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
		masked_array(data=[--, --, --, 3, 4],
		             mask=[ True,  True,  True, False, False],
		       fill_value=999999)
		>>> ma.set_fill_value(a, -999)
		>>> a
		masked_array(data=[--, --, --, 3, 4],
		             mask=[ True,  True,  True, False, False],
		       fill_value=-999)
		
		Nothing happens if `a` is not a masked array.
		
		>>> a = list(range(5))
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
		len
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
		shrink_mask(self)
		
		Reduce a mask to nomask when possible.
		
		Parameters
		----------
		None
		
		Returns
		-------
		None
		
		Examples
		--------
		>>> x = np.ma.array([[1,2 ], [3, 4]], mask=[0]*4)
		>>> x.mask
		array([[False, False],
		       [False, False]])
		>>> x.shrink_mask()
		masked_array(
		  data=[[1, 2],
		        [3, 4]],
		  mask=False,
		  fill_value=999999)
		>>> x.mask
		False
	**/
	static public function shrink_mask(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		sin(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : array_like
		    The sine of each element of x.
		    This is a scalar if `x` is a scalar.
		
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
		sinh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Hyperbolic sine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) - np.exp(-x))`` or
		``-1j * np.sin(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic sine values.
		    This is a scalar if `x` is a scalar.
		
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
		>>> out1 = np.array([0], dtype='d')
		>>> out2 = np.sinh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.sinh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
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
		its `~ma.MaskedArray.hardmask` property. `soften_mask` sets
		`~ma.MaskedArray.hardmask` to ``False``.
		
		See Also
		--------
		ma.MaskedArray.hardmask
	**/
	static public function soften_mask(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Reduce `target` along the given `axis`.
	**/
	static public function sometrue(target:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return a sorted copy of the masked array.
		
		Equivalent to creating a copy of the array
		and applying the  MaskedArray ``sort()`` method.
		
		Refer to ``MaskedArray.sort`` for the full documentation
		
		See Also
		--------
		MaskedArray.sort : equivalent method
	**/
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic, ?endwith:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		sqrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the non-negative square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		    This is a scalar if `x` is a scalar.
		
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
		
		>>> np.sqrt([4, -1, np.inf])
		array([ 2., nan, inf])
	**/
	static public function sqrt(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		squeeze(*args, **kwargs)
		
		Remove axes of length one from `a`.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    .. versionadded:: 1.7.0
		
		    Selects a subset of the entries of length one in the
		    shape. If an axis is selected with shape entry greater than
		    one, an error is raised.
		
		Returns
		-------
		squeezed : MaskedArray
		    The input array, but with all or a subset of the
		    dimensions of length 1 removed. This is always `a` itself
		    or a view into `a`. Note that if all axes are squeezed,
		    the result is a 0d array and not a scalar.
		
		Raises
		------
		ValueError
		    If `axis` is not None, and an axis being squeezed is not of length 1
		
		See Also
		--------
		expand_dims : The inverse operation, adding entries of length one
		reshape : Insert, remove, and combine dimensions, and resize existing ones
		
		Examples
		--------
		>>> x = np.array([[[0], [1], [2]]])
		>>> x.shape
		(1, 3, 1)
		>>> np.squeeze(x).shape
		(3,)
		>>> np.squeeze(x, axis=0).shape
		(3, 1)
		>>> np.squeeze(x, axis=1).shape
		Traceback (most recent call last):
		...
		ValueError: cannot select an axis to squeeze out which has size not equal to one
		>>> np.squeeze(x, axis=2).shape
		(1, 3)
		>>> x = np.array([[1234]])
		>>> x.shape
		(1, 1)
		>>> np.squeeze(x)
		array(1234)  # 0d array
		>>> np.squeeze(x).shape
		()
		>>> np.squeeze(x)[()]
		1234
	**/
	static public function squeeze(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
	/**
		std(self, axis=None, dtype=None, out=None, ddof=0, keepdims=<no value>)
		
		Returns the standard deviation of the array elements along given axis.
		
		Masked entries are ignored.
		
		Refer to `numpy.std` for full documentation.
		
		See Also
		--------
		numpy.ndarray.std : corresponding function for ndarrays
		numpy.std : Equivalent function
	**/
	static public function std(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		subtract(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Subtract arguments, element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be subtracted from each other.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The difference of `x1` and `x2`, element-wise.
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
		
		The ``-`` operator can be used as a shorthand for ``np.subtract`` on
		ndarrays.
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> x1 - x2
		array([[0., 0., 0.],
		       [3., 3., 3.],
		       [6., 6., 6.]])
	**/
	static public function subtract(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		sum(self, axis=None, dtype=None, out=None, keepdims=<no value>)
		
		Return the sum of the array elements over the given axis.
		
		Masked elements are set to 0 internally.
		
		Refer to `numpy.sum` for full documentation.
		
		See Also
		--------
		numpy.ndarray.sum : corresponding function for ndarrays
		numpy.sum : equivalent function
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> x
		masked_array(
		  data=[[1, --, 3],
		        [--, 5, --],
		        [7, --, 9]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		>>> x.sum()
		25
		>>> x.sum(axis=1)
		masked_array(data=[4, 5, 16],
		             mask=[False, False, False],
		       fill_value=999999)
		>>> x.sum(axis=0)
		masked_array(data=[8, 5, 12],
		             mask=[False, False, False],
		       fill_value=999999)
		>>> print(type(x.sum(axis=0, dtype=np.int64)[0]))
		<class 'numpy.int64'>
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
		tan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute tangent element-wise.
		
		Equivalent to ``np.sin(x)/np.cos(x)`` element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding tangent values.
		    This is a scalar if `x` is a scalar.
		
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
		>>> out1 = np.array([0], dtype='d')
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
	**/
	static public function tan(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		tanh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute hyperbolic tangent element-wise.
		
		Equivalent to ``np.sinh(x)/np.cosh(x)`` or ``-1j * np.tan(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic tangent values.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		.. [1] M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		       New York, NY: Dover, 1972, pg. 83.
		       https://personal.math.ubc.ca/~cbm/aands/page_83.htm
		
		.. [2] Wikipedia, "Hyperbolic function",
		       https://en.wikipedia.org/wiki/Hyperbolic_function
		
		Examples
		--------
		>>> np.tanh((0, np.pi*1j, np.pi*1j/2))
		array([ 0. +0.00000000e+00j,  0. -1.22460635e-16j,  0. +1.63317787e+16j])
		
		>>> # Example of providing the optional output parameter illustrating
		>>> # that what is returned is a reference to said parameter
		>>> out1 = np.array([0], dtype='d')
		>>> out2 = np.tanh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.tanh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
	**/
	static public function tanh(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
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
		>>> x
		masked_array(
		  data=[[0, 1],
		        [2, --]],
		  mask=[[False, False],
		        [False,  True]],
		  fill_value=999999)
		
		>>> ma.transpose(x)
		masked_array(
		  data=[[0, 2],
		        [1, --]],
		  mask=[[False, False],
		        [False,  True]],
		  fill_value=999999)
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		true_divide(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns a true division of the inputs, element-wise.
		
		Unlike 'floor division', true division adjusts the output type
		to present the best answer, regardless of input types.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Notes
		-----
		In Python, ``//`` is the floor division operator and ``/`` the
		true division operator.  The ``true_divide(x1, x2)`` function is
		equivalent to true division in Python.
		
		Examples
		--------
		>>> x = np.arange(5)
		>>> np.true_divide(x, 4)
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x/4
		array([ 0.  ,  0.25,  0.5 ,  0.75,  1.  ])
		
		>>> x//4
		array([0, 0, 0, 0, 1])
		
		The ``/`` operator can be used as a shorthand for ``np.true_divide`` on
		ndarrays.
		
		>>> x = np.arange(5)
		>>> x / 4
		array([0.  , 0.25, 0.5 , 0.75, 1.  ])
	**/
	static public function true_divide(a:Dynamic, b:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var ufunc_domain : Dynamic;
	static public var ufunc_fills : Dynamic;
	static public var v : Dynamic;
	/**
		var(self, axis=None, dtype=None, out=None, ddof=0, keepdims=<no value>)
		
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
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a variance is performed over multiple axes,
		    instead of a single axis or all the axes as before.
		dtype : data-type, optional
		    Type to use in computing the variance.  For arrays of integer type
		    the default is `float64`; for arrays of float types it is the same as
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
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `var` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		where : array_like of bool, optional
		    Elements to include in the variance. See `~numpy.ufunc.reduce` for
		    details.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		variance : ndarray, see dtype parameter above
		    If ``out=None``, returns a new array containing the variance;
		    otherwise, a reference to the output array is returned.
		
		See Also
		--------
		std, mean, nanmean, nanstd, nanvar
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		The variance is the average of the squared deviations from the mean,
		i.e.,  ``var = mean(x)``, where ``x = abs(a - a.mean())**2``.
		
		The mean is typically calculated as ``x.sum() / N``, where ``N = len(x)``.
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
		array([1.,  1.])
		>>> np.var(a, axis=1)
		array([0.25,  0.25])
		
		In single precision, var() can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.var(a)
		0.20250003
		
		Computing the variance in float64 is more accurate:
		
		>>> np.var(a, dtype=np.float64)
		0.20249999932944759 # may vary
		>>> ((1-0.55)**2 + (0.1-0.55)**2)/2
		0.2025
		
		Specifying a where argument:
		
		>>> a = np.array([[14, 8, 11, 10], [7, 9, 10, 11], [10, 15, 5, 10]])
		>>> np.var(a)
		6.833333333333333 # may vary
		>>> np.var(a, where=[[True], [True], [False]])
		4.0
	**/
	@:native("var")
	static public function _var(a:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a masked array with elements from `x` or `y`, depending on condition.
		
		.. note::
		    When only `condition` is provided, this function is identical to
		    `nonzero`. The rest of this documentation covers only the case where
		    all three arguments are provided.
		
		Parameters
		----------
		condition : array_like, bool
		    Where True, yield `x`, otherwise yield `y`.
		x, y : array_like, optional
		    Values from which to choose. `x`, `y` and `condition` need to be
		    broadcastable to some shape.
		
		Returns
		-------
		out : MaskedArray
		    An masked array with `masked` elements where the condition is masked,
		    elements from `x` where `condition` is True, and elements from `y`
		    elsewhere.
		
		See Also
		--------
		numpy.where : Equivalent function in the top-level NumPy module.
		nonzero : The function that is called when x and y are omitted
		
		Examples
		--------
		>>> x = np.ma.array(np.arange(9.).reshape(3, 3), mask=[[0, 1, 0],
		...                                                    [1, 0, 1],
		...                                                    [0, 1, 0]])
		>>> x
		masked_array(
		  data=[[0.0, --, 2.0],
		        [--, 4.0, --],
		        [6.0, --, 8.0]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=1e+20)
		>>> np.ma.where(x > 5, x, -3.1416)
		masked_array(
		  data=[[-3.1416, --, -3.1416],
		        [--, -3.1416, --],
		        [6.0, --, 8.0]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=1e+20)
	**/
	static public function where(condition:Dynamic, ?x:Dynamic, ?y:Dynamic):numpy.ma.MaskedArray;
	/**
		zeros(shape, dtype=float, order='C', *, like=None)
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or tuple of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: 'C'
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : MaskedArray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		full : Return a new array of given shape filled with value.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=int)
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
	static public function zeros(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
	/**
		zeros_like(*args, **kwargs)
		
		Return an array of zeros with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of
		    the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of `a`, otherwise it will be a base-class array. Defaults
		    to True.
		shape : int or sequence of ints, optional.
		    Overrides the shape of the result. If order='K' and the number of
		    dimensions is unchanged, will try to keep order, otherwise,
		    order='C' is implied.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		out : MaskedArray
		    Array of zeros with the same shape and type as `a`.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		zeros : Return a new array setting values to zero.
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> x = x.reshape((2, 3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.zeros_like(x)
		array([[0, 0, 0],
		       [0, 0, 0]])
		
		>>> y = np.arange(3, dtype=float)
		>>> y
		array([0., 1., 2.])
		>>> np.zeros_like(y)
		array([0.,  0.,  0.])
	**/
	static public function zeros_like(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.ma.MaskedArray;
}