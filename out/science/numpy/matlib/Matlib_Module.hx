/* This file is generated, do not edit! */
package numpy.matlib;
@:pythonImport("numpy.matlib") extern class Matlib_Module {
	static public var ALLOW_THREADS : Dynamic;
	static public var BUFSIZE : Dynamic;
	static public var CLIP : Dynamic;
	static public var ERR_CALL : Dynamic;
	static public var ERR_DEFAULT : Dynamic;
	static public var ERR_IGNORE : Dynamic;
	static public var ERR_LOG : Dynamic;
	static public var ERR_PRINT : Dynamic;
	static public var ERR_RAISE : Dynamic;
	static public var ERR_WARN : Dynamic;
	static public var FLOATING_POINT_SUPPORT : Dynamic;
	static public var FPE_DIVIDEBYZERO : Dynamic;
	static public var FPE_INVALID : Dynamic;
	static public var FPE_OVERFLOW : Dynamic;
	static public var FPE_UNDERFLOW : Dynamic;
	static public var False_ : Dynamic;
	static public var Inf : Dynamic;
	static public var Infinity : Dynamic;
	static public var MAXDIMS : Dynamic;
	static public var MAY_SHARE_BOUNDS : Dynamic;
	static public var MAY_SHARE_EXACT : Dynamic;
	static public var NAN : Dynamic;
	static public var NINF : Dynamic;
	static public var NZERO : Dynamic;
	static public var NaN : Dynamic;
	static public var PINF : Dynamic;
	static public var PZERO : Dynamic;
	static public var RAISE : Dynamic;
	static public var SHIFT_DIVIDEBYZERO : Dynamic;
	static public var SHIFT_INVALID : Dynamic;
	static public var SHIFT_OVERFLOW : Dynamic;
	static public var SHIFT_UNDERFLOW : Dynamic;
	static public var ScalarType : Dynamic;
	static public var True_ : Dynamic;
	static public var UFUNC_BUFSIZE_DEFAULT : Dynamic;
	static public var UFUNC_PYVALS_NAME : Dynamic;
	static public var WRAP : Dynamic;
	static public var _UFUNC_API : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		add_ufunc_docstring(ufunc, new_docstring)
		
		Replace the docstring for a ufunc with new_docstring.
		This method will only work if the current docstring for
		the ufunc is NULL. (At the C level, i.e. when ufunc->doc is NULL.)
		
		Parameters
		----------
		ufunc : numpy.ufunc
		    A ufunc whose current doc is NULL.
		new_docstring : string
		    The new docstring for the ufunc.
		
		Notes
		-----
		This method allocates memory for new_docstring on
		the heap. Technically this creates a mempory leak, since this
		memory will not be reclaimed until the end of the program
		even if the ufunc itself is removed. However this will only
		be a problem if the user is repeatedly creating ufuncs with
		no documentation, adding documentation via add_newdoc_ufunc,
		and then throwing away the ufunc.
	**/
	static public function _add_newdoc_ufunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_from_dlpack(x, /)
		
		Create a NumPy array from an object implementing the ``__dlpack__``
		protocol.
		
		See Also
		--------
		`Array API documentation
		<https://data-apis.org/array-api/latest/design_topics/data_interchange.html#syntax-for-data-interchange-with-dlpack>`_
	**/
	static public function _from_dlpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function absolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add_docstring(obj, docstring)
		
		Add a docstring to a built-in obj if possible.
		If the obj already has a docstring raise a RuntimeError
		If this routine does not know how to add a docstring to the object
		raise a TypeError
	**/
	static public function add_docstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Add documentation to an existing object, typically one defined in C
		
		The purpose is to allow easier editing of the docstrings without requiring
		a re-compile. This exists primarily for internal use within numpy itself.
		
		Parameters
		----------
		place : str
		    The absolute name of the module to import from
		obj : str
		    The name of the object to add documentation to, typically a class or
		    function name
		doc : {str, Tuple[str, str], List[Tuple[str, str]]}
		    If a string, the documentation to apply to `obj`
		
		    If a tuple, then the first element is interpreted as an attribute of
		    `obj` and the second as the docstring to apply - ``(method, docstring)``
		
		    If a list, then each element of the list should be a tuple of length
		    two - ``[(method1, docstring1), (method2, docstring2), ...]``
		warn_on_python : bool
		    If True, the default, emit `UserWarning` if this is used to attach
		    documentation to a pure-python object.
		
		Notes
		-----
		This routine never raises an error if the docstring can't be written, but
		will raise an error if the object being documented does not exist.
		
		This routine cannot modify read-only docstrings, as appear
		in new-style classes or built-in functions. Because this
		routine never raises an error the caller must check manually
		that the docstrings were changed.
		
		Since this function grabs the ``char *`` from a c-level str object and puts
		it into the ``tp_doc`` slot of the type of `obj`, it violates a number of
		C-API best-practices, by:
		
		- modifying a `PyTypeObject` after calling `PyType_Ready`
		- calling `Py_INCREF` on the str and losing the reference, so the str
		  will never be released
		
		If possible it should be avoided.
	**/
	static public function add_newdoc(place:Dynamic, obj:Dynamic, doc:Dynamic, ?warn_on_python:Dynamic):Dynamic;
	/**
		add_ufunc_docstring(ufunc, new_docstring)
		
		Replace the docstring for a ufunc with new_docstring.
		This method will only work if the current docstring for
		the ufunc is NULL. (At the C level, i.e. when ufunc->doc is NULL.)
		
		Parameters
		----------
		ufunc : numpy.ufunc
		    A ufunc whose current doc is NULL.
		new_docstring : string
		    The new docstring for the ufunc.
		
		Notes
		-----
		This method allocates memory for new_docstring on
		the heap. Technically this creates a mempory leak, since this
		memory will not be reclaimed until the end of the program
		even if the ufunc itself is removed. However this will only
		be a problem if the user is repeatedly creating ufuncs with
		no documentation, adding documentation via add_newdoc_ufunc,
		and then throwing away the ufunc.
	**/
	static public function add_newdoc_ufunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the length of the first dimension of the input array.
		
		.. deprecated:: 1.18
		   `numpy.alen` is deprecated, use `len` instead.
		
		Parameters
		----------
		a : array_like
		   Input array.
		
		Returns
		-------
		alen : int
		   Length of the first dimension of `a`.
		
		See Also
		--------
		shape, size
		
		Examples
		--------
		>>> a = np.zeros((7,4,5))
		>>> a.shape[0]
		7
		>>> np.alen(a)
		7
	**/
	static public function alen(a:Dynamic):Int;
	/**
		Test whether all array elements along a given axis evaluate to True.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical AND reduction is performed.
		    The default (``axis=None``) is to perform a logical AND over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.
		    It must have the same shape as the expected output and its
		    type is preserved (e.g., if ``dtype(out)`` is float, the result
		    will consist of 0.0's and 1.0's). See :ref:`ufuncs-output-type` for more
		    details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `all` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		where : array_like of bool, optional
		    Elements to include in checking for all `True` values.
		    See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		all : ndarray, bool
		    A new boolean or array is returned unless `out` is specified,
		    in which case a reference to `out` is returned.
		
		See Also
		--------
		ndarray.all : equivalent method
		
		any : Test whether any element along a given axis evaluates to True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity
		evaluate to `True` because these are not equal to zero.
		
		Examples
		--------
		>>> np.all([[True,False],[True,True]])
		False
		
		>>> np.all([[True,False],[True,True]], axis=0)
		array([ True, False])
		
		>>> np.all([-1, 4, 5])
		True
		
		>>> np.all([1.0, np.nan])
		True
		
		>>> np.all([[True, True], [False, True]], where=[[True], [False]])
		True
		
		>>> o=np.array(False)
		>>> z=np.all([-1, 4, 5], out=o)
		>>> id(z), id(o), z
		(28293632, 28293632, array(True)) # may vary
	**/
	static public function all(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Returns True if two arrays are element-wise equal within a tolerance.
		
		The tolerance values are positive, typically very small numbers.  The
		relative difference (`rtol` * abs(`b`)) and the absolute difference
		`atol` are added together to compare against the absolute difference
		between `a` and `b`.
		
		NaNs are treated as equal if they are in the same place and if
		``equal_nan=True``.  Infs are treated as equal if they are in the same
		place and of the same sign in both arrays.
		
		Parameters
		----------
		a, b : array_like
		    Input arrays to compare.
		rtol : float
		    The relative tolerance parameter (see Notes).
		atol : float
		    The absolute tolerance parameter (see Notes).
		equal_nan : bool
		    Whether to compare NaN's as equal.  If True, NaN's in `a` will be
		    considered equal to NaN's in `b` in the output array.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		allclose : bool
		    Returns True if the two arrays are equal within the given
		    tolerance; False otherwise.
		
		See Also
		--------
		isclose, all, any, equal
		
		Notes
		-----
		If the following equation is element-wise True, then allclose returns
		True.
		
		 absolute(`a` - `b`) <= (`atol` + `rtol` * absolute(`b`))
		
		The above equation is not symmetric in `a` and `b`, so that
		``allclose(a, b)`` might be different from ``allclose(b, a)`` in
		some rare cases.
		
		The comparison of `a` and `b` uses standard broadcasting, which
		means that `a` and `b` need not have the same shape in order for
		``allclose(a, b)`` to evaluate to True.  The same is true for
		`equal` but not `array_equal`.
		
		`allclose` is not defined for non-numeric data types.
		`bool` is considered a numeric data-type for this purpose.
		
		Examples
		--------
		>>> np.allclose([1e10,1e-7], [1.00001e10,1e-8])
		False
		>>> np.allclose([1e10,1e-8], [1.00001e10,1e-9])
		True
		>>> np.allclose([1e10,1e-8], [1.0001e10,1e-9])
		False
		>>> np.allclose([1.0, np.nan], [1.0, np.nan])
		False
		>>> np.allclose([1.0, np.nan], [1.0, np.nan], equal_nan=True)
		True
	**/
	static public function allclose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Bool;
	/**
		Check if all elements of input array are true.
		
		See Also
		--------
		numpy.all : Equivalent function; see for details.
	**/
	static public function alltrue(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function angle(z:Dynamic, ?deg:Dynamic):Dynamic;
	/**
		Test whether any array element along a given axis evaluates to True.
		
		Returns single boolean unless `axis` is not ``None``
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical OR reduction is performed.
		    The default (``axis=None``) is to perform a logical OR over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output and its type is preserved
		    (e.g., if it is of type float, then it will remain so, returning
		    1.0 for True and 0.0 for False, regardless of the type of `a`).
		    See :ref:`ufuncs-output-type` for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `any` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		where : array_like of bool, optional
		    Elements to include in checking for any `True` values.
		    See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		any : bool or ndarray
		    A new boolean or `ndarray` is returned unless `out` is specified,
		    in which case a reference to `out` is returned.
		
		See Also
		--------
		ndarray.any : equivalent method
		
		all : Test whether all elements along a given axis evaluate to True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity evaluate
		to `True` because these are not equal to zero.
		
		Examples
		--------
		>>> np.any([[True, False], [True, True]])
		True
		
		>>> np.any([[True, False], [False, False]], axis=0)
		array([ True, False])
		
		>>> np.any([-1, 0, 5])
		True
		
		>>> np.any(np.nan)
		True
		
		>>> np.any([[True, False], [False, False]], where=[[False], [True]])
		False
		
		>>> o=np.array(False)
		>>> z=np.any([-1, 4, 5], out=o)
		>>> z, o
		(array(True), array(True))
		>>> # Check now that z is a reference to o
		>>> z is o
		True
		>>> id(z), id(o) # identity of z and o              # doctest: +SKIP
		(191614240, 191614240)
	**/
	static public function any(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Append values to the end of an array.
		
		Parameters
		----------
		arr : array_like
		    Values are appended to a copy of this array.
		values : array_like
		    These values are appended to a copy of `arr`.  It must be of the
		    correct shape (the same shape as `arr`, excluding `axis`).  If
		    `axis` is not specified, `values` can be any shape and will be
		    flattened before use.
		axis : int, optional
		    The axis along which `values` are appended.  If `axis` is not
		    given, both `arr` and `values` are flattened before use.
		
		Returns
		-------
		append : ndarray
		    A copy of `arr` with `values` appended to `axis`.  Note that
		    `append` does not occur in-place: a new array is allocated and
		    filled.  If `axis` is None, `out` is a flattened array.
		
		See Also
		--------
		insert : Insert elements into an array.
		delete : Delete elements from an array.
		
		Examples
		--------
		>>> np.append([1, 2, 3], [[4, 5, 6], [7, 8, 9]])
		array([1, 2, 3, ..., 7, 8, 9])
		
		When `axis` is specified, `values` must have the correct shape.
		
		>>> np.append([[1, 2, 3], [4, 5, 6]], [[7, 8, 9]], axis=0)
		array([[1, 2, 3],
		       [4, 5, 6],
		       [7, 8, 9]])
		>>> np.append([[1, 2, 3], [4, 5, 6]], [7, 8, 9], axis=0)
		Traceback (most recent call last):
		    ...
		ValueError: all the input arrays must have same number of dimensions, but
		the array at index 0 has 2 dimension(s) and the array at index 1 has 1
		dimension(s)
	**/
	static public function append(arr:Dynamic, values:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Apply a function to 1-D slices along the given axis.
		
		Execute `func1d(a, *args, **kwargs)` where `func1d` operates on 1-D arrays
		and `a` is a 1-D slice of `arr` along `axis`.
		
		This is equivalent to (but faster than) the following use of `ndindex` and
		`s_`, which sets each of ``ii``, ``jj``, and ``kk`` to a tuple of indices::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nk):
		            f = func1d(arr[ii + s_[:,] + kk])
		            Nj = f.shape
		            for jj in ndindex(Nj):
		                out[ii + jj + kk] = f[jj]
		
		Equivalently, eliminating the inner loop, this can be expressed as::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nk):
		            out[ii + s_[...,] + kk] = func1d(arr[ii + s_[:,] + kk])
		
		Parameters
		----------
		func1d : function (M,) -> (Nj...)
		    This function should accept 1-D arrays. It is applied to 1-D
		    slices of `arr` along the specified axis.
		axis : integer
		    Axis along which `arr` is sliced.
		arr : ndarray (Ni..., M, Nk...)
		    Input array.
		args : any
		    Additional arguments to `func1d`.
		kwargs : any
		    Additional named arguments to `func1d`.
		
		    .. versionadded:: 1.9.0
		
		
		Returns
		-------
		out : ndarray  (Ni..., Nj..., Nk...)
		    The output array. The shape of `out` is identical to the shape of
		    `arr`, except along the `axis` dimension. This axis is removed, and
		    replaced with new dimensions equal to the shape of the return value
		    of `func1d`. So if `func1d` returns a scalar `out` will have one
		    fewer dimensions than `arr`.
		
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
		array([4., 5., 6.])
		>>> np.apply_along_axis(my_func, 1, b)
		array([2.,  5.,  8.])
		
		For a function that returns a 1D array, the number of dimensions in
		`outarr` is the same as `arr`.
		
		>>> b = np.array([[8,1,7], [4,3,9], [5,2,6]])
		>>> np.apply_along_axis(sorted, 1, b)
		array([[1, 7, 8],
		       [3, 4, 9],
		       [2, 5, 6]])
		
		For a function that returns a higher dimensional array, those dimensions
		are inserted in place of the `axis` dimension.
		
		>>> b = np.array([[1,2,3], [4,5,6], [7,8,9]])
		>>> np.apply_along_axis(np.diag, -1, b)
		array([[[1, 0, 0],
		        [0, 2, 0],
		        [0, 0, 3]],
		       [[4, 0, 0],
		        [0, 5, 0],
		        [0, 0, 6]],
		       [[7, 0, 0],
		        [0, 8, 0],
		        [0, 0, 9]]])
	**/
	static public function apply_along_axis(func1d:Dynamic, axis:Dynamic, arr:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		Notes
		-----
		This function is equivalent to tuple axis arguments to reorderable ufuncs
		with keepdims=True. Tuple axis arguments to ufuncs have been available since
		version 1.7.0.
		
		Examples
		--------
		>>> a = np.arange(24).reshape(2,3,4)
		>>> a
		array([[[ 0,  1,  2,  3],
		        [ 4,  5,  6,  7],
		        [ 8,  9, 10, 11]],
		       [[12, 13, 14, 15],
		        [16, 17, 18, 19],
		        [20, 21, 22, 23]]])
		
		Sum over axes 0 and 2. The result has same number of dimensions
		as the original array:
		
		>>> np.apply_over_axes(np.sum, a, [0,2])
		array([[[ 60],
		        [ 92],
		        [124]]])
		
		Tuple axis arguments to ufuncs are equivalent:
		
		>>> np.sum(a, axis=(0,2), keepdims=True)
		array([[[ 60],
		        [ 92],
		        [124]]])
	**/
	static public function apply_over_axes(func:Dynamic, a:Dynamic, axes:Dynamic):numpy.Ndarray;
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
		arange : ndarray
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
	static public function arange(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function arccos(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function arccosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function arcsin(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function arcsinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function arctan(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function arctan2(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function arctanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the indices of the maximum values along an axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    By default, the index is into the flattened array, otherwise
		    along the specified axis.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		index_array : ndarray of ints
		    Array of indices into the array. It has the same shape as `a.shape`
		    with the dimension along `axis` removed. If `keepdims` is set to True,
		    then the size of `axis` will be 1 with the resulting array having same
		    shape as `a.shape`.
		
		See Also
		--------
		ndarray.argmax, argmin
		amax : The maximum value along a given axis.
		unravel_index : Convert a flat index into an index tuple.
		take_along_axis : Apply ``np.expand_dims(index_array, axis)``
		                  from argmax to an array as if by calling max.
		
		Notes
		-----
		In case of multiple occurrences of the maximum values, the indices
		corresponding to the first occurrence are returned.
		
		Examples
		--------
		>>> a = np.arange(6).reshape(2,3) + 10
		>>> a
		array([[10, 11, 12],
		       [13, 14, 15]])
		>>> np.argmax(a)
		5
		>>> np.argmax(a, axis=0)
		array([1, 1, 1])
		>>> np.argmax(a, axis=1)
		array([2, 2])
		
		Indexes of the maximal elements of a N-dimensional array:
		
		>>> ind = np.unravel_index(np.argmax(a, axis=None), a.shape)
		>>> ind
		(1, 2)
		>>> a[ind]
		15
		
		>>> b = np.arange(6)
		>>> b[1] = 5
		>>> b
		array([0, 5, 2, 3, 4, 5])
		>>> np.argmax(b)  # Only the first occurrence is returned.
		1
		
		>>> x = np.array([[4,2,3], [1,0,3]])
		>>> index_array = np.argmax(x, axis=-1)
		>>> # Same as np.amax(x, axis=-1, keepdims=True)
		>>> np.take_along_axis(x, np.expand_dims(index_array, axis=-1), axis=-1)
		array([[4],
		       [3]])
		>>> # Same as np.amax(x, axis=-1)
		>>> np.take_along_axis(x, np.expand_dims(index_array, axis=-1), axis=-1).squeeze(axis=-1)
		array([4, 3])
		
		Setting `keepdims` to `True`,
		
		>>> x = np.arange(24).reshape((2, 3, 4))
		>>> res = np.argmax(x, axis=1, keepdims=True)
		>>> res.shape
		(2, 1, 4)
	**/
	static public function argmax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns the indices of the minimum values along an axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    By default, the index is into the flattened array, otherwise
		    along the specified axis.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		index_array : ndarray of ints
		    Array of indices into the array. It has the same shape as `a.shape`
		    with the dimension along `axis` removed. If `keepdims` is set to True,
		    then the size of `axis` will be 1 with the resulting array having same
		    shape as `a.shape`.
		
		See Also
		--------
		ndarray.argmin, argmax
		amin : The minimum value along a given axis.
		unravel_index : Convert a flat index into an index tuple.
		take_along_axis : Apply ``np.expand_dims(index_array, axis)``
		                  from argmin to an array as if by calling min.
		
		Notes
		-----
		In case of multiple occurrences of the minimum values, the indices
		corresponding to the first occurrence are returned.
		
		Examples
		--------
		>>> a = np.arange(6).reshape(2,3) + 10
		>>> a
		array([[10, 11, 12],
		       [13, 14, 15]])
		>>> np.argmin(a)
		0
		>>> np.argmin(a, axis=0)
		array([0, 0, 0])
		>>> np.argmin(a, axis=1)
		array([0, 0])
		
		Indices of the minimum elements of a N-dimensional array:
		
		>>> ind = np.unravel_index(np.argmin(a, axis=None), a.shape)
		>>> ind
		(0, 0)
		>>> a[ind]
		10
		
		>>> b = np.arange(6) + 10
		>>> b[4] = 10
		>>> b
		array([10, 11, 12, 13, 10, 15])
		>>> np.argmin(b)  # Only the first occurrence is returned.
		0
		
		>>> x = np.array([[4,2,3], [1,0,3]])
		>>> index_array = np.argmin(x, axis=-1)
		>>> # Same as np.amin(x, axis=-1, keepdims=True)
		>>> np.take_along_axis(x, np.expand_dims(index_array, axis=-1), axis=-1)
		array([[2],
		       [0]])
		>>> # Same as np.amax(x, axis=-1)
		>>> np.take_along_axis(x, np.expand_dims(index_array, axis=-1), axis=-1).squeeze(axis=-1)
		array([2, 0])
		
		Setting `keepdims` to `True`,
		
		>>> x = np.arange(24).reshape((2, 3, 4))
		>>> res = np.argmin(x, axis=1, keepdims=True)
		>>> res.shape
		(2, 1, 4)
	**/
	static public function argmin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Perform an indirect partition along the given axis using the
		algorithm specified by the `kind` keyword. It returns an array of
		indices of the same shape as `a` that index data along the given
		axis in partitioned order.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Array to sort.
		kth : int or sequence of ints
		    Element index to partition by. The k-th element will be in its
		    final sorted position and all smaller elements will be moved
		    before it and all larger elements behind it. The order all
		    elements in the partitions is undefined. If provided with a
		    sequence of k-th it will partition all of them into their sorted
		    position at once.
		
		    .. deprecated:: 1.22.0
		        Passing booleans as index is deprecated.
		axis : int or None, optional
		    Axis along which to sort. The default is -1 (the last axis). If
		    None, the flattened array is used.
		kind : {'introselect'}, optional
		    Selection algorithm. Default is 'introselect'
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument
		    specifies which fields to compare first, second, etc. A single
		    field can be specified as a string, and not all fields need be
		    specified, but unspecified fields will still be used, in the
		    order in which they come up in the dtype, to break ties.
		
		Returns
		-------
		index_array : ndarray, int
		    Array of indices that partition `a` along the specified axis.
		    If `a` is one-dimensional, ``a[index_array]`` yields a partitioned `a`.
		    More generally, ``np.take_along_axis(a, index_array, axis=a)`` always
		    yields the partitioned `a`, irrespective of dimensionality.
		
		See Also
		--------
		partition : Describes partition algorithms used.
		ndarray.partition : Inplace partition.
		argsort : Full indirect sort.
		take_along_axis : Apply ``index_array`` from argpartition
		                  to an array as if by calling partition.
		
		Notes
		-----
		See `partition` for notes on the different selection algorithms.
		
		Examples
		--------
		One dimensional array:
		
		>>> x = np.array([3, 4, 2, 1])
		>>> x[np.argpartition(x, 3)]
		array([2, 1, 3, 4])
		>>> x[np.argpartition(x, (1, 3))]
		array([1, 2, 3, 4])
		
		>>> x = [3, 4, 2, 1]
		>>> np.array(x)[np.argpartition(x, 3)]
		array([2, 1, 3, 4])
		
		Multi-dimensional array:
		
		>>> x = np.array([[3, 4, 2], [1, 3, 1]])
		>>> index_array = np.argpartition(x, kth=1, axis=-1)
		>>> np.take_along_axis(x, index_array, axis=-1)  # same as np.partition(x, kth=1)
		array([[2, 3, 4],
		       [1, 1, 3]])
	**/
	static public function argpartition(a:Dynamic, kth:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Returns the indices that would sort an array.
		
		Perform an indirect sort along the given axis using the algorithm specified
		by the `kind` keyword. It returns an array of indices of the same shape as
		`a` that index data along the given axis in sorted order.
		
		Parameters
		----------
		a : array_like
		    Array to sort.
		axis : int or None, optional
		    Axis along which to sort.  The default is -1 (the last axis). If None,
		    the flattened array is used.
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, optional
		    Sorting algorithm. The default is 'quicksort'. Note that both 'stable'
		    and 'mergesort' use timsort under the covers and, in general, the
		    actual implementation will vary with data type. The 'mergesort' option
		    is retained for backwards compatibility.
		
		    .. versionchanged:: 1.15.0.
		       The 'stable' option was added.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
		Returns
		-------
		index_array : ndarray, int
		    Array of indices that sort `a` along the specified `axis`.
		    If `a` is one-dimensional, ``a[index_array]`` yields a sorted `a`.
		    More generally, ``np.take_along_axis(a, index_array, axis=axis)``
		    always yields the sorted `a`, irrespective of dimensionality.
		
		See Also
		--------
		sort : Describes sorting algorithms used.
		lexsort : Indirect stable sort with multiple keys.
		ndarray.sort : Inplace sort.
		argpartition : Indirect partial sort.
		take_along_axis : Apply ``index_array`` from argsort
		                  to an array as if by calling sort.
		
		Notes
		-----
		See `sort` for notes on the different sorting algorithms.
		
		As of NumPy 1.4.0 `argsort` works with real/complex arrays containing
		nan values. The enhanced sort order is documented in `sort`.
		
		Examples
		--------
		One dimensional array:
		
		>>> x = np.array([3, 1, 2])
		>>> np.argsort(x)
		array([1, 2, 0])
		
		Two-dimensional array:
		
		>>> x = np.array([[0, 3], [2, 2]])
		>>> x
		array([[0, 3],
		       [2, 2]])
		
		>>> ind = np.argsort(x, axis=0)  # sorts along first axis (down)
		>>> ind
		array([[0, 1],
		       [1, 0]])
		>>> np.take_along_axis(x, ind, axis=0)  # same as np.sort(x, axis=0)
		array([[0, 2],
		       [2, 3]])
		
		>>> ind = np.argsort(x, axis=1)  # sorts along last axis (across)
		>>> ind
		array([[0, 1],
		       [0, 1]])
		>>> np.take_along_axis(x, ind, axis=1)  # same as np.sort(x, axis=1)
		array([[0, 3],
		       [2, 2]])
		
		Indices of the sorted elements of a N-dimensional array:
		
		>>> ind = np.unravel_index(np.argsort(x, axis=None), x.shape)
		>>> ind
		(array([0, 1, 1, 0]), array([0, 0, 1, 1]))
		>>> x[ind]  # same as np.sort(x, axis=None)
		array([0, 2, 2, 3])
		
		Sorting with keys:
		
		>>> x = np.array([(1, 0), (0, 1)], dtype=[('x', '<i4'), ('y', '<i4')])
		>>> x
		array([(1, 0), (0, 1)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
		
		>>> np.argsort(x, order=('x','y'))
		array([1, 0])
		
		>>> np.argsort(x, order=('y','x'))
		array([0, 1])
	**/
	static public function argsort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Find the indices of array elements that are non-zero, grouped by element.
		
		Parameters
		----------
		a : array_like
		    Input data.
		
		Returns
		-------
		index_array : (N, a.ndim) ndarray
		    Indices of elements that are non-zero. Indices are grouped by element.
		    This array will have shape ``(N, a.ndim)`` where ``N`` is the number of
		    non-zero items.
		
		See Also
		--------
		where, nonzero
		
		Notes
		-----
		``np.argwhere(a)`` is almost the same as ``np.transpose(np.nonzero(a))``,
		but produces a result of the correct shape for a 0D array.
		
		The output of ``argwhere`` is not suitable for indexing arrays.
		For this purpose use ``nonzero(a)`` instead.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2,3)
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.argwhere(x>1)
		array([[0, 2],
		       [1, 0],
		       [1, 1],
		       [1, 2]])
	**/
	static public function argwhere(a:Dynamic):Dynamic;
	/**
		Evenly round to the given number of decimals.
		
		Parameters
		----------
		a : array_like
		    Input data.
		decimals : int, optional
		    Number of decimal places to round to (default: 0).  If
		    decimals is negative, it specifies the number of positions to
		    the left of the decimal point.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary. See :ref:`ufuncs-output-type` for more
		    details.
		
		Returns
		-------
		rounded_array : ndarray
		    An array of the same type as `a`, containing the rounded values.
		    Unless `out` was specified, a new array is created.  A reference to
		    the result is returned.
		
		    The real and imaginary parts of complex numbers are rounded
		    separately.  The result of rounding a float is a float.
		
		See Also
		--------
		ndarray.round : equivalent method
		
		ceil, fix, floor, rint, trunc
		
		
		Notes
		-----
		For values exactly halfway between rounded decimal values, NumPy
		rounds to the nearest even value. Thus 1.5 and 2.5 round to 2.0,
		-0.5 and 0.5 round to 0.0, etc.
		
		``np.around`` uses a fast but sometimes inexact algorithm to round
		floating-point datatypes. For positive `decimals` it is equivalent to
		``np.true_divide(np.rint(a * 10**decimals), 10**decimals)``, which has
		error due to the inexact representation of decimal fractions in the IEEE
		floating point standard [1]_ and errors introduced when scaling by powers
		of ten. For instance, note the extra "1" in the following:
		
		    >>> np.round(56294995342131.5, 3)
		    56294995342131.51
		
		If your goal is to print such values with a fixed number of decimals, it is
		preferable to use numpy's float printing routines to limit the number of
		printed decimals:
		
		    >>> np.format_float_positional(56294995342131.5, precision=3)
		    '56294995342131.5'
		
		The float printing routines use an accurate but much more computationally
		demanding algorithm to compute the number of digits after the decimal
		point.
		
		Alternatively, Python's builtin `round` function uses a more accurate
		but slower algorithm for 64-bit floating point values:
		
		    >>> round(56294995342131.5, 3)
		    56294995342131.5
		    >>> np.round(16.055, 2), round(16.055, 2)  # equals 16.0549999999999997
		    (16.06, 16.05)
		
		
		References
		----------
		.. [1] "Lecture Notes on the Status of IEEE 754", William Kahan,
		       https://people.eecs.berkeley.edu/~wkahan/ieee754status/IEEE754.PDF
		
		Examples
		--------
		>>> np.around([0.37, 1.64])
		array([0., 2.])
		>>> np.around([0.37, 1.64], decimals=1)
		array([0.4, 1.6])
		>>> np.around([.5, 1.5, 2.5, 3.5, 4.5]) # rounds to nearest even value
		array([0., 2., 2., 4., 4.])
		>>> np.around([1,2,3,11], decimals=1) # ndarray of ints is returned
		array([ 1,  2,  3, 11])
		>>> np.around([1,2,3,11], decimals=-1)
		array([ 0,  0,  0, 10])
	**/
	static public function around(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):numpy.Ndarray;
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
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation of an array.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		max_line_width : int, optional
		    Inserts newlines if text is longer than `max_line_width`.
		    Defaults to ``numpy.get_printoptions()['linewidth']``.
		precision : int or None, optional
		    Floating point precision.
		    Defaults to ``numpy.get_printoptions()['precision']``.
		suppress_small : bool, optional
		    Represent numbers "very close" to zero as zero; default is False.
		    Very close is defined by precision: if the precision is 8, e.g.,
		    numbers smaller (in absolute value) than 5e-9 are represented as
		    zero.
		    Defaults to ``numpy.get_printoptions()['suppress']``.
		separator : str, optional
		    Inserted between elements.
		prefix : str, optional
		suffix : str, optional
		    The length of the prefix and suffix strings are used to respectively
		    align and wrap the output. An array is typically printed as::
		
		      prefix + array2string(a) + suffix
		
		    The output is left-padded by the length of the prefix string, and
		    wrapping is forced at the column ``max_line_width - len(suffix)``.
		    It should be noted that the content of prefix and suffix strings are
		    not included in the output.
		style : _NoValue, optional
		    Has no effect, do not use.
		
		    .. deprecated:: 1.14.0
		formatter : dict of callables, optional
		    If not None, the keys should indicate the type(s) that the respective
		    formatting function applies to.  Callables should return a string.
		    Types that are not specified (by their corresponding keys) are handled
		    by the default formatters.  Individual types for which a formatter
		    can be set are:
		
		    - 'bool'
		    - 'int'
		    - 'timedelta' : a `numpy.timedelta64`
		    - 'datetime' : a `numpy.datetime64`
		    - 'float'
		    - 'longfloat' : 128-bit floats
		    - 'complexfloat'
		    - 'longcomplexfloat' : composed of two 128-bit floats
		    - 'void' : type `numpy.void`
		    - 'numpystr' : types `numpy.string_` and `numpy.unicode_`
		
		    Other keys that can be used to set a group of types at once are:
		
		    - 'all' : sets all types
		    - 'int_kind' : sets 'int'
		    - 'float_kind' : sets 'float' and 'longfloat'
		    - 'complex_kind' : sets 'complexfloat' and 'longcomplexfloat'
		    - 'str_kind' : sets 'numpystr'
		threshold : int, optional
		    Total number of array elements which trigger summarization
		    rather than full repr.
		    Defaults to ``numpy.get_printoptions()['threshold']``.
		edgeitems : int, optional
		    Number of array items in summary at beginning and end of
		    each dimension.
		    Defaults to ``numpy.get_printoptions()['edgeitems']``.
		sign : string, either '-', '+', or ' ', optional
		    Controls printing of the sign of floating-point types. If '+', always
		    print the sign of positive values. If ' ', always prints a space
		    (whitespace character) in the sign position of positive values.  If
		    '-', omit the sign character of positive values.
		    Defaults to ``numpy.get_printoptions()['sign']``.
		floatmode : str, optional
		    Controls the interpretation of the `precision` option for
		    floating-point types.
		    Defaults to ``numpy.get_printoptions()['floatmode']``.
		    Can take the following values:
		
		    - 'fixed': Always print exactly `precision` fractional digits,
		      even if this would print more or fewer digits than
		      necessary to specify the value uniquely.
		    - 'unique': Print the minimum number of fractional digits necessary
		      to represent each value uniquely. Different elements may
		      have a different number of digits.  The value of the
		      `precision` option is ignored.
		    - 'maxprec': Print at most `precision` fractional digits, but if
		      an element can be uniquely represented with fewer digits
		      only print it with that many.
		    - 'maxprec_equal': Print at most `precision` fractional digits,
		      but if every element in the array can be uniquely
		      represented with an equal number of fewer digits, use that
		      many digits for all elements.
		legacy : string or `False`, optional
		    If set to the string `'1.13'` enables 1.13 legacy printing mode. This
		    approximates numpy 1.13 print output by including a space in the sign
		    position of floats and different behavior for 0d arrays. If set to
		    `False`, disables legacy mode. Unrecognized strings will be ignored
		    with a warning for forward compatibility.
		
		    .. versionadded:: 1.14.0
		
		Returns
		-------
		array_str : str
		    String representation of the array.
		
		Raises
		------
		TypeError
		    if a callable in `formatter` does not return a string.
		
		See Also
		--------
		array_str, array_repr, set_printoptions, get_printoptions
		
		Notes
		-----
		If a formatter is specified for a certain type, the `precision` keyword is
		ignored for that type.
		
		This is a very flexible function; `array_repr` and `array_str` are using
		`array2string` internally so keywords with the same name should work
		identically in all three functions.
		
		Examples
		--------
		>>> x = np.array([1e-16,1,2,3])
		>>> np.array2string(x, precision=2, separator=',',
		...                       suppress_small=True)
		'[0.,1.,2.,3.]'
		
		>>> x  = np.arange(3.)
		>>> np.array2string(x, formatter={'float_kind':lambda x: "%.2f" % x})
		'[0.00 1.00 2.00]'
		
		>>> x  = np.arange(3)
		>>> np.array2string(x, formatter={'int':lambda x: hex(x)})
		'[0x0 0x1 0x2]'
	**/
	static public function array2string(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic, ?separator:Dynamic, ?prefix:Dynamic, ?style:Dynamic, ?formatter:Dynamic, ?threshold:Dynamic, ?edgeitems:Dynamic, ?sign:Dynamic, ?floatmode:Dynamic, ?suffix:Dynamic, ?legacy:Dynamic):String;
	/**
		True if two arrays have the same shape and elements, False otherwise.
		
		Parameters
		----------
		a1, a2 : array_like
		    Input arrays.
		equal_nan : bool
		    Whether to compare NaN's as equal. If the dtype of a1 and a2 is
		    complex, values will be considered equal if either the real or the
		    imaginary component of a given value is ``nan``.
		
		    .. versionadded:: 1.19.0
		
		Returns
		-------
		b : bool
		    Returns True if the arrays are equal.
		
		See Also
		--------
		allclose: Returns True if two arrays are element-wise equal within a
		          tolerance.
		array_equiv: Returns True if input arrays are shape consistent and all
		             elements equal.
		
		Examples
		--------
		>>> np.array_equal([1, 2], [1, 2])
		True
		>>> np.array_equal(np.array([1, 2]), np.array([1, 2]))
		True
		>>> np.array_equal([1, 2], [1, 2, 3])
		False
		>>> np.array_equal([1, 2], [1, 4])
		False
		>>> a = np.array([1, np.nan])
		>>> np.array_equal(a, a)
		False
		>>> np.array_equal(a, a, equal_nan=True)
		True
		
		When ``equal_nan`` is True, complex values with nan components are
		considered equal if either the real *or* the imaginary components are nan.
		
		>>> a = np.array([1 + 1j])
		>>> b = a.copy()
		>>> a.real = np.nan
		>>> b.imag = np.nan
		>>> np.array_equal(a, b, equal_nan=True)
		True
	**/
	static public function array_equal(a1:Dynamic, a2:Dynamic, ?equal_nan:Dynamic):Bool;
	/**
		Returns True if input arrays are shape consistent and all elements equal.
		
		Shape consistent means they are either the same shape, or one input array
		can be broadcasted to create the same shape as the other one.
		
		Parameters
		----------
		a1, a2 : array_like
		    Input arrays.
		
		Returns
		-------
		out : bool
		    True if equivalent, False otherwise.
		
		Examples
		--------
		>>> np.array_equiv([1, 2], [1, 2])
		True
		>>> np.array_equiv([1, 2], [1, 3])
		False
		
		Showing the shape equivalence:
		
		>>> np.array_equiv([1, 2], [[1, 2], [1, 2]])
		True
		>>> np.array_equiv([1, 2], [[1, 2, 1, 2], [1, 2, 1, 2]])
		False
		
		>>> np.array_equiv([1, 2], [[1, 2], [1, 3]])
		False
	**/
	static public function array_equiv(a1:Dynamic, a2:Dynamic):Bool;
	/**
		Return the string representation of an array.
		
		Parameters
		----------
		arr : ndarray
		    Input array.
		max_line_width : int, optional
		    Inserts newlines if text is longer than `max_line_width`.
		    Defaults to ``numpy.get_printoptions()['linewidth']``.
		precision : int, optional
		    Floating point precision.
		    Defaults to ``numpy.get_printoptions()['precision']``.
		suppress_small : bool, optional
		    Represent numbers "very close" to zero as zero; default is False.
		    Very close is defined by precision: if the precision is 8, e.g.,
		    numbers smaller (in absolute value) than 5e-9 are represented as
		    zero.
		    Defaults to ``numpy.get_printoptions()['suppress']``.
		
		Returns
		-------
		string : str
		  The string representation of an array.
		
		See Also
		--------
		array_str, array2string, set_printoptions
		
		Examples
		--------
		>>> np.array_repr(np.array([1,2]))
		'array([1, 2])'
		>>> np.array_repr(np.ma.array([0.]))
		'MaskedArray([0.])'
		>>> np.array_repr(np.array([], np.int32))
		'array([], dtype=int32)'
		
		>>> x = np.array([1e-6, 4e-7, 2, 3])
		>>> np.array_repr(x, precision=6, suppress_small=True)
		'array([0.000001,  0.      ,  2.      ,  3.      ])'
	**/
	static public function array_repr(arr:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic):String;
	/**
		Split an array into multiple sub-arrays.
		
		Please refer to the ``split`` documentation.  The only difference
		between these functions is that ``array_split`` allows
		`indices_or_sections` to be an integer that does *not* equally
		divide the axis. For an array of length l that should be split
		into n sections, it returns l % n sub-arrays of size l//n + 1
		and the rest of size l//n.
		
		See Also
		--------
		split : Split array into multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> x = np.arange(8.0)
		>>> np.array_split(x, 3)
		[array([0.,  1.,  2.]), array([3.,  4.,  5.]), array([6.,  7.])]
		
		>>> x = np.arange(9)
		>>> np.array_split(x, 4)
		[array([0, 1, 2]), array([3, 4]), array([5, 6]), array([7, 8])]
	**/
	static public function array_split(ary:Dynamic, indices_or_sections:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return a string representation of the data in an array.
		
		The data in the array is returned as a single string.  This function is
		similar to `array_repr`, the difference being that `array_repr` also
		returns information on the kind of array and its data type.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		max_line_width : int, optional
		    Inserts newlines if text is longer than `max_line_width`.
		    Defaults to ``numpy.get_printoptions()['linewidth']``.
		precision : int, optional
		    Floating point precision.
		    Defaults to ``numpy.get_printoptions()['precision']``.
		suppress_small : bool, optional
		    Represent numbers "very close" to zero as zero; default is False.
		    Very close is defined by precision: if the precision is 8, e.g.,
		    numbers smaller (in absolute value) than 5e-9 are represented as
		    zero.
		    Defaults to ``numpy.get_printoptions()['suppress']``.
		
		See Also
		--------
		array2string, array_repr, set_printoptions
		
		Examples
		--------
		>>> np.array_str(np.arange(3))
		'[0 1 2]'
	**/
	static public function array_str(a:Dynamic, ?max_line_width:Dynamic, ?precision:Dynamic, ?suppress_small:Dynamic):Dynamic;
	/**
		asanyarray(a, dtype=None, order=None, *, like=None)
		
		Convert the input to an ndarray, but pass ndarray subclasses through.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes scalars, lists, lists of tuples, tuples, tuples of tuples,
		    tuples of lists, and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'C'.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray or an ndarray subclass
		    Array interpretation of `a`.  If `a` is an ndarray or a subclass
		    of ndarray, it is returned as-is and no copy is performed.
		
		See Also
		--------
		asarray : Similar function which always returns ndarrays.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and
		                    Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asanyarray(a)
		array([1, 2])
		
		Instances of `ndarray` subclasses are passed through as-is:
		
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asanyarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asarray(a, dtype=None, order=None, *, like=None)
		
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'K'.
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
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray with matching dtype and order.  If `a` is a
		    subclass of ndarray, a base class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.recarray, np.ndarray)
		True
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the input to an array, checking for NaNs or Infs.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.  Success requires no NaNs or Infs.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		Raises
		------
		ValueError
		    Raises ValueError if `a` contains NaN (Not a Number) or Inf (Infinity).
		
		See Also
		--------
		asarray : Create and array.
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array.  If all elements are finite
		``asarray_chkfinite`` is identical to ``asarray``.
		
		>>> a = [1, 2]
		>>> np.asarray_chkfinite(a, dtype=float)
		array([1., 2.])
		
		Raises ValueError if array_like contains Nans or Infs.
		
		>>> a = [1, 2, np.inf]
		>>> try:
		...     np.asarray_chkfinite(a)
		... except ValueError:
		...     print('ValueError')
		...
		ValueError
	**/
	static public function asarray_chkfinite(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		ascontiguousarray(a, dtype=None, *, like=None)
		
		Return a contiguous array (ndim >= 1) in memory (C order).
		
		Parameters
		----------
		a : array_like
		    Input array.
		dtype : str or dtype object, optional
		    Data-type of returned array.
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
		    Contiguous array of same shape and content as `a`, with type `dtype`
		    if specified.
		
		See Also
		--------
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		require : Return an ndarray that satisfies requirements.
		ndarray.flags : Information about the memory layout of the array.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2,3)
		>>> np.ascontiguousarray(x, dtype=np.float32)
		array([[0., 1., 2.],
		       [3., 4., 5.]], dtype=float32)
		>>> x.flags['C_CONTIGUOUS']
		True
		
		Note: This function returns an array with at least one-dimension (1-d)
		so it will not preserve 0-d arrays.
	**/
	static public function ascontiguousarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an array converted to a float type.
		
		Parameters
		----------
		a : array_like
		    The input array.
		dtype : str or dtype object, optional
		    Float type code to coerce input array `a`.  If `dtype` is one of the
		    'int' dtypes, it is replaced with float64.
		
		Returns
		-------
		out : ndarray
		    The input `a` as a float ndarray.
		
		Examples
		--------
		>>> np.asfarray([2, 3])
		array([2.,  3.])
		>>> np.asfarray([2, 3], dtype='float')
		array([2.,  3.])
		>>> np.asfarray([2, 3], dtype='int8')
		array([2.,  3.])
	**/
	static public function asfarray(a:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		asfortranarray(a, dtype=None, *, like=None)
		
		Return an array (ndim >= 1) laid out in Fortran order in memory.
		
		Parameters
		----------
		a : array_like
		    Input array.
		dtype : str or dtype object, optional
		    By default, the data-type is inferred from the input data.
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
		    The input `a` in Fortran, or column-major, order.
		
		See Also
		--------
		ascontiguousarray : Convert input to a contiguous (C order) array.
		asanyarray : Convert input to an ndarray with either row or
		    column-major memory order.
		require : Return an ndarray that satisfies requirements.
		ndarray.flags : Information about the memory layout of the array.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2,3)
		>>> y = np.asfortranarray(x)
		>>> x.flags['F_CONTIGUOUS']
		False
		>>> y.flags['F_CONTIGUOUS']
		True
		
		Note: This function returns an array with at least one-dimension (1-d)
		so it will not preserve 0-d arrays.
	**/
	static public function asfortranarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Interpret the input as a matrix.
		
		Unlike `matrix`, `asmatrix` does not make a copy if the input is already
		a matrix or an ndarray.  Equivalent to ``matrix(data, copy=False)``.
		
		Parameters
		----------
		data : array_like
		    Input data.
		dtype : data-type
		   Data-type of the output matrix.
		
		Returns
		-------
		mat : matrix
		    `data` interpreted as a matrix.
		
		Examples
		--------
		>>> x = np.array([[1, 2], [3, 4]])
		
		>>> m = np.asmatrix(x)
		
		>>> x[0,0] = 5
		
		>>> m
		matrix([[5, 2],
		        [3, 4]])
	**/
	static public function asmatrix(data:Dynamic, ?dtype:Dynamic):numpy.Matrix;
	/**
		Convert an array of size 1 to its scalar equivalent.
		
		.. deprecated:: 1.16
		
		    Deprecated, use `numpy.ndarray.item()` instead.
		
		Parameters
		----------
		a : ndarray
		    Input array of size 1.
		
		Returns
		-------
		out : scalar
		    Scalar representation of `a`. The output data type is the same type
		    returned by the input's `item` method.
		
		Examples
		--------
		>>> np.asscalar(np.array([24]))
		24
	**/
	static public function asscalar(a:Dynamic):Dynamic;
	/**
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
		    An array, or list of arrays, each with ``a.ndim >= 1``.
		    Copies are made only if necessary.
		
		See Also
		--------
		atleast_2d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_1d(1.0)
		array([1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[0., 1., 2.],
		       [3., 4., 5.],
		       [6., 7., 8.]])
		>>> np.atleast_1d(x) is x
		True
		
		>>> np.atleast_1d(1, [3, 4])
		[array([1]), array([3, 4])]
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):numpy.Ndarray;
	/**
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
		    An array, or list of arrays, each with ``a.ndim >= 2``.
		    Copies are avoided where possible, and views with two or more
		    dimensions are returned.
		
		See Also
		--------
		atleast_1d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_2d(3.0)
		array([[3.]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_2d(x)
		array([[0., 1., 2.]])
		>>> np.atleast_2d(x).base is x
		True
		
		>>> np.atleast_2d(1, [1, 2], [[1, 2]])
		[array([[1]]), array([[1, 2]]), array([[1, 2]])]
	**/
	static public function atleast_2d(?arys:python.VarArgs<Dynamic>):numpy.Ndarray;
	/**
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
		    An array, or list of arrays, each with ``a.ndim >= 3``.  Copies are
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
		array([[[3.]]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_3d(x).shape
		(1, 3, 1)
		
		>>> x = np.arange(12.0).reshape(4,3)
		>>> np.atleast_3d(x).shape
		(4, 3, 1)
		>>> np.atleast_3d(x).base is x.base  # x is a reshape, so not base itself
		True
		
		>>> for arr in np.atleast_3d([1, 2], [[1, 2]], [[[1, 2]]]):
		...     print(arr, arr.shape) # doctest: +SKIP
		...
		[[[1]
		  [2]]] (1, 2, 1)
		[[[1]
		  [2]]] (1, 2, 1)
		[[[1 2]]] (1, 1, 2)
	**/
	static public function atleast_3d(?arys:python.VarArgs<Dynamic>):numpy.Ndarray;
	/**
		Compute the weighted average along the specified axis.
		
		Parameters
		----------
		a : array_like
		    Array containing data to be averaged. If `a` is not an array, a
		    conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to average `a`.  The default,
		    axis=None, will average over all of the elements of the input array.
		    If axis is negative it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, averaging is performed on all of the axes
		    specified in the tuple instead of a single axis or all the axes as
		    before.
		weights : array_like, optional
		    An array of weights associated with the values in `a`. Each value in
		    `a` contributes to the average according to its associated weight.
		    The weights array can either be 1-D (in which case its length must be
		    the size of `a` along the given axis) or of the same shape as `a`.
		    If `weights=None`, then all data in `a` are assumed to have a
		    weight equal to one.  The 1-D calculation is::
		
		        avg = sum(a * weights) / sum(weights)
		
		    The only constraint on `weights` is that `sum(weights)` must not be 0.
		returned : bool, optional
		    Default is `False`. If `True`, the tuple (`average`, `sum_of_weights`)
		    is returned, otherwise only the average is returned.
		    If `weights=None`, `sum_of_weights` is equivalent to the number of
		    elements over which the average is taken.
		
		Returns
		-------
		retval, [sum_of_weights] : array_type or double
		    Return the average along the specified axis. When `returned` is `True`,
		    return a tuple with the average as the first element and the sum
		    of the weights as the second element. `sum_of_weights` is of the
		    same type as `retval`. The result dtype follows a genereal pattern.
		    If `weights` is None, the result dtype will be that of `a` , or ``float64``
		    if `a` is integral. Otherwise, if `weights` is not None and `a` is non-
		    integral, the result type will be the type of lowest precision capable of
		    representing values of both `a` and `weights`. If `a` happens to be
		    integral, the previous rules still applies but the result dtype will
		    at least be ``float64``.
		
		Raises
		------
		ZeroDivisionError
		    When all weights along axis are zero. See `numpy.ma.average` for a
		    version robust to this type of error.
		TypeError
		    When the length of 1D `weights` is not the same as the shape of `a`
		    along axis.
		
		See Also
		--------
		mean
		
		ma.average : average for masked arrays -- useful if your data contains
		             "missing" values
		numpy.result_type : Returns the type that results from applying the
		                    numpy type promotion rules to the arguments.
		
		Examples
		--------
		>>> data = np.arange(1, 5)
		>>> data
		array([1, 2, 3, 4])
		>>> np.average(data)
		2.5
		>>> np.average(np.arange(1, 11), weights=np.arange(10, 0, -1))
		4.0
		
		>>> data = np.arange(6).reshape((3,2))
		>>> data
		array([[0, 1],
		       [2, 3],
		       [4, 5]])
		>>> np.average(data, axis=1, weights=[1./4, 3./4])
		array([0.75, 2.75, 4.75])
		>>> np.average(data, weights=[1./4, 3./4])
		Traceback (most recent call last):
		    ...
		TypeError: Axis must be specified when shapes of a and weights differ.
		
		>>> a = np.ones(5, dtype=np.float128)
		>>> w = np.ones(5, dtype=np.complex64)
		>>> avg = np.average(a, weights=w)
		>>> print(avg.dtype)
		complex256
	**/
	static public function average(a:Dynamic, ?axis:Dynamic, ?weights:Dynamic, ?returned:Dynamic):Dynamic;
	/**
		Return the Bartlett window.
		
		The Bartlett window is very similar to a triangular window, except
		that the end points are at zero.  It is often used in signal
		processing for tapering a signal, without generating too much
		ripple in the frequency domain.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		
		Returns
		-------
		out : array
		    The triangular window, with the maximum value normalized to one
		    (the value one appears only if the number of samples is odd), with
		    the first and last samples equal to zero.
		
		See Also
		--------
		blackman, hamming, hanning, kaiser
		
		Notes
		-----
		The Bartlett window is defined as
		
		.. math:: w(n) = \frac{2}{M-1} \left(
		          \frac{M-1}{2} - \left|n - \frac{M-1}{2}\right|
		          \right)
		
		Most references to the Bartlett window come from the signal
		processing literature, where it is used as one of many windowing
		functions for smoothing values.  Note that convolution with this
		window produces linear interpolation.  It is also known as an
		apodization (which means"removing the foot", i.e. smoothing
		discontinuities at the beginning and end of the sampled signal) or
		tapering function. The fourier transform of the Bartlett is the product
		of two sinc functions.
		Note the excellent discussion in Kanasewich.
		
		References
		----------
		.. [1] M.S. Bartlett, "Periodogram Analysis and Continuous Spectra",
		       Biometrika 37, 1-16, 1950.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
		       The University of Alberta Press, 1975, pp. 109-110.
		.. [3] A.V. Oppenheim and R.W. Schafer, "Discrete-Time Signal
		       Processing", Prentice-Hall, 1999, pp. 468-471.
		.. [4] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		.. [5] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 429.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> np.bartlett(12)
		array([ 0.        ,  0.18181818,  0.36363636,  0.54545455,  0.72727273, # may vary
		        0.90909091,  0.90909091,  0.72727273,  0.54545455,  0.36363636,
		        0.18181818,  0.        ])
		
		Plot the window and its frequency response (requires SciPy and matplotlib):
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.bartlett(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Bartlett window")
		Text(0.5, 1.0, 'Bartlett window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> with np.errstate(divide='ignore', invalid='ignore'):
		...     response = 20 * np.log10(mag)
		...
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Bartlett window")
		Text(0.5, 1.0, 'Frequency response of Bartlett window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> _ = plt.axis('tight')
		>>> plt.show()
	**/
	static public function bartlett(M:Dynamic):Array<Dynamic>;
	/**
		Return a string representation of a number in the given base system.
		
		Parameters
		----------
		number : int
		    The value to convert. Positive and negative values are handled.
		base : int, optional
		    Convert `number` to the `base` number system. The valid range is 2-36,
		    the default value is 2.
		padding : int, optional
		    Number of zeros padded on the left. Default is 0 (no padding).
		
		Returns
		-------
		out : str
		    String representation of `number` in `base` system.
		
		See Also
		--------
		binary_repr : Faster version of `base_repr` for base 2.
		
		Examples
		--------
		>>> np.base_repr(5)
		'101'
		>>> np.base_repr(6, 5)
		'11'
		>>> np.base_repr(7, base=5, padding=3)
		'00012'
		
		>>> np.base_repr(10, base=16)
		'A'
		>>> np.base_repr(32, base=16)
		'20'
	**/
	static public function base_repr(number:Dynamic, ?base:Dynamic, ?padding:Dynamic):String;
	/**
		Return the binary representation of the input number as a string.
		
		For negative numbers, if width is not given, a minus sign is added to the
		front. If width is given, the two's complement of the number is
		returned, with respect to that width.
		
		In a two's-complement system negative numbers are represented by the two's
		complement of the absolute value. This is the most common method of
		representing signed integers on computers [1]_. A N-bit two's-complement
		system can represent every integer in the range
		:math:`-2^{N-1}` to :math:`+2^{N-1}-1`.
		
		Parameters
		----------
		num : int
		    Only an integer decimal number can be used.
		width : int, optional
		    The length of the returned string if `num` is positive, or the length
		    of the two's complement if `num` is negative, provided that `width` is
		    at least a sufficient number of bits for `num` to be represented in the
		    designated form.
		
		    If the `width` value is insufficient, it will be ignored, and `num` will
		    be returned in binary (`num` > 0) or two's complement (`num` < 0) form
		    with its width equal to the minimum number of bits needed to represent
		    the number in the designated form. This behavior is deprecated and will
		    later raise an error.
		
		    .. deprecated:: 1.12.0
		
		Returns
		-------
		bin : str
		    Binary representation of `num` or two's complement of `num`.
		
		See Also
		--------
		base_repr: Return a string representation of a number in the given base
		           system.
		bin: Python's built-in binary representation generator of an integer.
		
		Notes
		-----
		`binary_repr` is equivalent to using `base_repr` with base 2, but about 25x
		faster.
		
		References
		----------
		.. [1] Wikipedia, "Two's complement",
		    https://en.wikipedia.org/wiki/Two's_complement
		
		Examples
		--------
		>>> np.binary_repr(3)
		'11'
		>>> np.binary_repr(-3)
		'-11'
		>>> np.binary_repr(3, width=4)
		'0011'
		
		The two's complement is returned when the input number is negative and
		width is specified:
		
		>>> np.binary_repr(-3, width=3)
		'101'
		>>> np.binary_repr(-3, width=5)
		'11101'
	**/
	static public function binary_repr(num:Dynamic, ?width:Dynamic):String;
	/**
		bincount(x, /, weights=None, minlength=0)
		
		Count number of occurrences of each value in array of non-negative ints.
		
		The number of bins (of size 1) is one larger than the largest value in
		`x`. If `minlength` is specified, there will be at least this number
		of bins in the output array (though it will be longer if necessary,
		depending on the contents of `x`).
		Each bin gives the number of occurrences of its index value in `x`.
		If `weights` is specified the input array is weighted by it, i.e. if a
		value ``n`` is found at position ``i``, ``out[n] += weight[i]`` instead
		of ``out[n] += 1``.
		
		Parameters
		----------
		x : array_like, 1 dimension, nonnegative ints
		    Input array.
		weights : array_like, optional
		    Weights, array of the same shape as `x`.
		minlength : int, optional
		    A minimum number of bins for the output array.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		out : ndarray of ints
		    The result of binning the input array.
		    The length of `out` is equal to ``np.amax(x)+1``.
		
		Raises
		------
		ValueError
		    If the input is not 1-dimensional, or contains elements with negative
		    values, or if `minlength` is negative.
		TypeError
		    If the type of the input is float or complex.
		
		See Also
		--------
		histogram, digitize, unique
		
		Examples
		--------
		>>> np.bincount(np.arange(5))
		array([1, 1, 1, 1, 1])
		>>> np.bincount(np.array([0, 1, 1, 3, 2, 1, 7]))
		array([1, 3, 1, 1, 0, 0, 0, 1])
		
		>>> x = np.array([0, 1, 1, 3, 2, 1, 7, 23])
		>>> np.bincount(x).size == np.amax(x)+1
		True
		
		The input array needs to be of integer dtype, otherwise a
		TypeError is raised:
		
		>>> np.bincount(np.arange(5, dtype=float))
		Traceback (most recent call last):
		  ...
		TypeError: Cannot cast array data from dtype('float64') to dtype('int64')
		according to the rule 'safe'
		
		A possible use of ``bincount`` is to perform sums over
		variable-size chunks of an array, using the ``weights`` keyword.
		
		>>> w = np.array([0.3, 0.5, 0.2, 0.7, 1., -0.6]) # weights
		>>> x = np.array([0, 1, 1, 2, 2, 2])
		>>> np.bincount(x,  weights=w)
		array([ 0.3,  0.7,  1.1])
	**/
	static public function bincount(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function bitwise_and(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		invert(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute bit-wise inversion, or bit-wise NOT, element-wise.
		
		Computes the bit-wise NOT of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``~``.
		
		For signed integer inputs, the two's complement is returned.  In a
		two's-complement system negative numbers are represented by the two's
		complement of the absolute value. This is the most common method of
		representing signed integers on computers [1]_. A N-bit
		two's-complement system can represent every integer in the range
		:math:`-2^{N-1}` to :math:`+2^{N-1}-1`.
		
		Parameters
		----------
		x : array_like
		    Only integer and boolean types are handled.
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
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		bitwise_and, bitwise_or, bitwise_xor
		logical_not
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Notes
		-----
		`bitwise_not` is an alias for `invert`:
		
		>>> np.bitwise_not is np.invert
		True
		
		References
		----------
		.. [1] Wikipedia, "Two's complement",
		    https://en.wikipedia.org/wiki/Two's_complement
		
		Examples
		--------
		We've seen that 13 is represented by ``00001101``.
		The invert or bit-wise NOT of 13 is then:
		
		>>> x = np.invert(np.array(13, dtype=np.uint8))
		>>> x
		242
		>>> np.binary_repr(x, width=8)
		'11110010'
		
		The result depends on the bit-width:
		
		>>> x = np.invert(np.array(13, dtype=np.uint16))
		>>> x
		65522
		>>> np.binary_repr(x, width=16)
		'1111111111110010'
		
		When using signed integer types the result is the two's complement of
		the result for the unsigned type:
		
		>>> np.invert(np.array([13], dtype=np.int8))
		array([-14], dtype=int8)
		>>> np.binary_repr(-14, width=8)
		'11110010'
		
		Booleans are accepted as well:
		
		>>> np.invert(np.array([True, False]))
		array([False,  True])
		
		The ``~`` operator can be used as a shorthand for ``np.invert`` on
		ndarrays.
		
		>>> x1 = np.array([True, False])
		>>> ~x1
		array([False,  True])
	**/
	static public function bitwise_not(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function bitwise_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function bitwise_xor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the Blackman window.
		
		The Blackman window is a taper formed by using the first three
		terms of a summation of cosines. It was designed to have close to the
		minimal leakage possible.  It is close to optimal, only slightly worse
		than a Kaiser window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		
		Returns
		-------
		out : ndarray
		    The window, with the maximum value normalized to one (the value one
		    appears only if the number of samples is odd).
		
		See Also
		--------
		bartlett, hamming, hanning, kaiser
		
		Notes
		-----
		The Blackman window is defined as
		
		.. math::  w(n) = 0.42 - 0.5 \cos(2\pi n/M) + 0.08 \cos(4\pi n/M)
		
		Most references to the Blackman window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function. It is known as a
		"near optimal" tapering function, almost as good (by some measures)
		as the kaiser window.
		
		References
		----------
		Blackman, R.B. and Tukey, J.W., (1958) The measurement of power spectra,
		Dover Publications, New York.
		
		Oppenheim, A.V., and R.W. Schafer. Discrete-Time Signal Processing.
		Upper Saddle River, NJ: Prentice-Hall, 1999, pp. 468-471.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> np.blackman(12)
		array([-1.38777878e-17,   3.26064346e-02,   1.59903635e-01, # may vary
		        4.14397981e-01,   7.36045180e-01,   9.67046769e-01,
		        9.67046769e-01,   7.36045180e-01,   4.14397981e-01,
		        1.59903635e-01,   3.26064346e-02,  -1.38777878e-17])
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.blackman(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Blackman window")
		Text(0.5, 1.0, 'Blackman window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> with np.errstate(divide='ignore', invalid='ignore'):
		...     response = 20 * np.log10(mag)
		...
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Blackman window")
		Text(0.5, 1.0, 'Frequency response of Blackman window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> _ = plt.axis('tight')
		>>> plt.show()
	**/
	static public function blackman(M:Dynamic):numpy.Ndarray;
	/**
		Assemble an nd-array from nested lists of blocks.
		
		Blocks in the innermost lists are concatenated (see `concatenate`) along
		the last dimension (-1), then these are concatenated along the
		second-last dimension (-2), and so on until the outermost list is reached.
		
		Blocks can be of any dimension, but will not be broadcasted using the normal
		rules. Instead, leading axes of size 1 are inserted, to make ``block.ndim``
		the same for all blocks. This is primarily useful for working with scalars,
		and means that code like ``np.block([v, 1])`` is valid, where
		``v.ndim == 1``.
		
		When the nested list is two levels deep, this allows block matrices to be
		constructed from their components.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		arrays : nested list of array_like or scalars (but not tuples)
		    If passed a single ndarray or scalar (a nested list of depth 0), this
		    is returned unmodified (and not copied).
		
		    Elements shapes must match along the appropriate axes (without
		    broadcasting), but leading 1s will be prepended to the shape as
		    necessary to make the dimensions match.
		
		Returns
		-------
		block_array : ndarray
		    The array assembled from the given blocks.
		
		    The dimensionality of the output is equal to the greatest of:
		    * the dimensionality of all the inputs
		    * the depth to which the input list is nested
		
		Raises
		------
		ValueError
		    * If list depths are mismatched - for instance, ``[[a, b], c]`` is
		      illegal, and should be spelt ``[[a, b], [c]]``
		    * If lists are empty - for instance, ``[[a, b], []]``
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		vstack : Stack arrays in sequence vertically (row wise).
		hstack : Stack arrays in sequence horizontally (column wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		vsplit : Split an array into multiple sub-arrays vertically (row-wise).
		
		Notes
		-----
		
		When called with only scalars, ``np.block`` is equivalent to an ndarray
		call. So ``np.block([[1, 2], [3, 4]])`` is equivalent to
		``np.array([[1, 2], [3, 4]])``.
		
		This function does not enforce that the blocks lie on a fixed grid.
		``np.block([[a, b], [c, d]])`` is not restricted to arrays of the form::
		
		    AAAbb
		    AAAbb
		    cccDD
		
		But is also allowed to produce, for some ``a, b, c, d``::
		
		    AAAbb
		    AAAbb
		    cDDDD
		
		Since concatenation happens along the last axis first, `block` is _not_
		capable of producing the following directly::
		
		    AAAbb
		    cccbb
		    cccDD
		
		Matlab's "square bracket stacking", ``[A, B, ...; p, q, ...]``, is
		equivalent to ``np.block([[A, B, ...], [p, q, ...]])``.
		
		Examples
		--------
		The most common use of this function is to build a block matrix
		
		>>> A = np.eye(2) * 2
		>>> B = np.eye(3) * 3
		>>> np.block([
		...     [A,               np.zeros((2, 3))],
		...     [np.ones((3, 2)), B               ]
		... ])
		array([[2., 0., 0., 0., 0.],
		       [0., 2., 0., 0., 0.],
		       [1., 1., 3., 0., 0.],
		       [1., 1., 0., 3., 0.],
		       [1., 1., 0., 0., 3.]])
		
		With a list of depth 1, `block` can be used as `hstack`
		
		>>> np.block([1, 2, 3])              # hstack([1, 2, 3])
		array([1, 2, 3])
		
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([4, 5, 6])
		>>> np.block([a, b, 10])             # hstack([a, b, 10])
		array([ 1,  2,  3,  4,  5,  6, 10])
		
		>>> A = np.ones((2, 2), int)
		>>> B = 2 * A
		>>> np.block([A, B])                 # hstack([A, B])
		array([[1, 1, 2, 2],
		       [1, 1, 2, 2]])
		
		With a list of depth 2, `block` can be used in place of `vstack`:
		
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([4, 5, 6])
		>>> np.block([[a], [b]])             # vstack([a, b])
		array([[1, 2, 3],
		       [4, 5, 6]])
		
		>>> A = np.ones((2, 2), int)
		>>> B = 2 * A
		>>> np.block([[A], [B]])             # vstack([A, B])
		array([[1, 1],
		       [1, 1],
		       [2, 2],
		       [2, 2]])
		
		It can also be used in places of `atleast_1d` and `atleast_2d`
		
		>>> a = np.array(0)
		>>> b = np.array([1])
		>>> np.block([a])                    # atleast_1d(a)
		array([0])
		>>> np.block([b])                    # atleast_1d(b)
		array([1])
		
		>>> np.block([[a]])                  # atleast_2d(a)
		array([[0]])
		>>> np.block([[b]])                  # atleast_2d(b)
		array([[1]])
	**/
	static public function block(arrays:Dynamic):numpy.Ndarray;
	/**
		Build a matrix object from a string, nested sequence, or array.
		
		Parameters
		----------
		obj : str or array_like
		    Input data. If a string, variables in the current scope may be
		    referenced by name.
		ldict : dict, optional
		    A dictionary that replaces local operands in current frame.
		    Ignored if `obj` is not a string or `gdict` is None.
		gdict : dict, optional
		    A dictionary that replaces global operands in current frame.
		    Ignored if `obj` is not a string.
		
		Returns
		-------
		out : matrix
		    Returns a matrix object, which is a specialized 2-D array.
		
		See Also
		--------
		block :
		    A generalization of this function for N-d arrays, that returns normal
		    ndarrays.
		
		Examples
		--------
		>>> A = np.mat('1 1; 1 1')
		>>> B = np.mat('2 2; 2 2')
		>>> C = np.mat('3 4; 5 6')
		>>> D = np.mat('7 8; 9 0')
		
		All the following expressions construct the same block matrix:
		
		>>> np.bmat([[A, B], [C, D]])
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
		>>> np.bmat(np.r_[np.c_[A, B], np.c_[C, D]])
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
		>>> np.bmat('A,B; C,D')
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
	**/
	static public function bmat(obj:Dynamic, ?ldict:Dynamic, ?gdict:Dynamic):numpy.Matrix;
	/**
		Broadcast any number of arrays against each other.
		
		Parameters
		----------
		`*args` : array_likes
		    The arrays to broadcast.
		
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned arrays will be forced to be a base-class array (default).
		
		Returns
		-------
		broadcasted : list of arrays
		    These arrays are views on the original arrays.  They are typically
		    not contiguous.  Furthermore, more than one element of a
		    broadcasted array may refer to a single memory location. If you need
		    to write to the arrays, make copies first. While you can set the
		    ``writable`` flag True, writing to a single output value may end up
		    changing more than one location in the output array.
		
		    .. deprecated:: 1.17
		        The output is currently marked so that if written to, a deprecation
		        warning will be emitted. A future version will set the
		        ``writable`` flag False so writing to it will raise an error.
		
		See Also
		--------
		broadcast
		broadcast_to
		broadcast_shapes
		
		Examples
		--------
		>>> x = np.array([[1,2,3]])
		>>> y = np.array([[4],[5]])
		>>> np.broadcast_arrays(x, y)
		[array([[1, 2, 3],
		       [1, 2, 3]]), array([[4, 4, 4],
		       [5, 5, 5]])]
		
		Here is a useful idiom for getting contiguous copies instead of
		non-contiguous views.
		
		>>> [np.array(a) for a in np.broadcast_arrays(x, y)]
		[array([[1, 2, 3],
		       [1, 2, 3]]), array([[4, 4, 4],
		       [5, 5, 5]])]
	**/
	static public function broadcast_arrays(?args:python.VarArgs<Dynamic>, ?subok:Dynamic):Dynamic;
	/**
		Broadcast the input shapes into a single shape.
		
		:ref:`Learn more about broadcasting here <basics.broadcasting>`.
		
		.. versionadded:: 1.20.0
		
		Parameters
		----------
		`*args` : tuples of ints, or ints
		    The shapes to be broadcast against each other.
		
		Returns
		-------
		tuple
		    Broadcasted shape.
		
		Raises
		------
		ValueError
		    If the shapes are not compatible and cannot be broadcast according
		    to NumPy's broadcasting rules.
		
		See Also
		--------
		broadcast
		broadcast_arrays
		broadcast_to
		
		Examples
		--------
		>>> np.broadcast_shapes((1, 2), (3, 1), (3, 2))
		(3, 2)
		
		>>> np.broadcast_shapes((6, 7), (5, 6, 1), (7,), (5, 1, 7))
		(5, 6, 7)
	**/
	static public function broadcast_shapes(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Broadcast an array to a new shape.
		
		Parameters
		----------
		array : array_like
		    The array to broadcast.
		shape : tuple or int
		    The shape of the desired array. A single integer ``i`` is interpreted
		    as ``(i,)``.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		
		Returns
		-------
		broadcast : array
		    A readonly view on the original array with the given shape. It is
		    typically not contiguous. Furthermore, more than one element of a
		    broadcasted array may refer to a single memory location.
		
		Raises
		------
		ValueError
		    If the array is not compatible with the new shape according to NumPy's
		    broadcasting rules.
		
		See Also
		--------
		broadcast
		broadcast_arrays
		broadcast_shapes
		
		Notes
		-----
		.. versionadded:: 1.10.0
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> np.broadcast_to(x, (3, 3))
		array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]])
	**/
	static public function broadcast_to(array:Dynamic, shape:Dynamic, ?subok:Dynamic):Array<Dynamic>;
	/**
		busday_count(begindates, enddates, weekmask='1111100', holidays=[], busdaycal=None, out=None)
		
		Counts the number of valid days between `begindates` and
		`enddates`, not including the day of `enddates`.
		
		If ``enddates`` specifies a date value that is earlier than the
		corresponding ``begindates`` date value, the count will be negative.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		begindates : array_like of datetime64[D]
		    The array of the first dates for counting.
		enddates : array_like of datetime64[D]
		    The array of the end dates for counting, which are excluded
		    from the count themselves.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of int, optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of int
		    An array with a shape from broadcasting ``begindates`` and ``enddates``
		    together, containing the number of valid days between
		    the begin and end dates.
		
		See Also
		--------
		busdaycalendar : An object that specifies a custom set of valid days.
		is_busday : Returns a boolean array indicating valid days.
		busday_offset : Applies an offset counted in valid days.
		
		Examples
		--------
		>>> # Number of weekdays in January 2011
		... np.busday_count('2011-01', '2011-02')
		21
		>>> # Number of weekdays in 2011
		>>> np.busday_count('2011', '2012')
		260
		>>> # Number of Saturdays in 2011
		... np.busday_count('2011', '2012', weekmask='Sat')
		53
	**/
	static public function busday_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		busday_offset(dates, offsets, roll='raise', weekmask='1111100', holidays=None, busdaycal=None, out=None)
		
		First adjusts the date to fall on a valid day according to
		the ``roll`` rule, then applies offsets to the given dates
		counted in valid days.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dates : array_like of datetime64[D]
		    The array of dates to process.
		offsets : array_like of int
		    The array of offsets, which is broadcast with ``dates``.
		roll : {'raise', 'nat', 'forward', 'following', 'backward', 'preceding', 'modifiedfollowing', 'modifiedpreceding'}, optional
		    How to treat dates that do not fall on a valid day. The default
		    is 'raise'.
		
		      * 'raise' means to raise an exception for an invalid day.
		      * 'nat' means to return a NaT (not-a-time) for an invalid day.
		      * 'forward' and 'following' mean to take the first valid day
		        later in time.
		      * 'backward' and 'preceding' mean to take the first valid day
		        earlier in time.
		      * 'modifiedfollowing' means to take the first valid day
		        later in time unless it is across a Month boundary, in which
		        case to take the first valid day earlier in time.
		      * 'modifiedpreceding' means to take the first valid day
		        earlier in time unless it is across a Month boundary, in which
		        case to take the first valid day later in time.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of datetime64[D], optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of datetime64[D]
		    An array with a shape from broadcasting ``dates`` and ``offsets``
		    together, containing the dates with offsets applied.
		
		See Also
		--------
		busdaycalendar : An object that specifies a custom set of valid days.
		is_busday : Returns a boolean array indicating valid days.
		busday_count : Counts how many valid days are in a half-open date range.
		
		Examples
		--------
		>>> # First business day in October 2011 (not accounting for holidays)
		... np.busday_offset('2011-10', 0, roll='forward')
		numpy.datetime64('2011-10-03')
		>>> # Last business day in February 2012 (not accounting for holidays)
		... np.busday_offset('2012-03', -1, roll='forward')
		numpy.datetime64('2012-02-29')
		>>> # Third Wednesday in January 2011
		... np.busday_offset('2011-01', 2, roll='forward', weekmask='Wed')
		numpy.datetime64('2011-01-19')
		>>> # 2012 Mother's Day in Canada and the U.S.
		... np.busday_offset('2012-05', 1, roll='forward', weekmask='Sun')
		numpy.datetime64('2012-05-13')
		
		>>> # First business day on or after a date
		... np.busday_offset('2011-03-20', 0, roll='forward')
		numpy.datetime64('2011-03-21')
		>>> np.busday_offset('2011-03-22', 0, roll='forward')
		numpy.datetime64('2011-03-22')
		>>> # First business day after a date
		... np.busday_offset('2011-03-20', 1, roll='backward')
		numpy.datetime64('2011-03-21')
		>>> np.busday_offset('2011-03-22', 1, roll='backward')
		numpy.datetime64('2011-03-23')
	**/
	static public function busday_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns pointers to the end-points of an array.
		
		Parameters
		----------
		a : ndarray
		    Input array. It must conform to the Python-side of the array
		    interface.
		
		Returns
		-------
		(low, high) : tuple of 2 integers
		    The first integer is the first byte of the array, the second
		    integer is just past the last byte of the array.  If `a` is not
		    contiguous it will not use every byte between the (`low`, `high`)
		    values.
		
		Examples
		--------
		>>> I = np.eye(2, dtype='f'); I.dtype
		dtype('float32')
		>>> low, high = np.byte_bounds(I)
		>>> high - low == I.size*I.itemsize
		True
		>>> I = np.eye(2); I.dtype
		dtype('float64')
		>>> low, high = np.byte_bounds(I)
		>>> high - low == I.size*I.itemsize
		True
	**/
	static public function byte_bounds(a:Dynamic):Dynamic;
	static public var c_ : Dynamic;
	/**
		can_cast(from_, to, casting='safe')
		
		Returns True if cast between data types can occur according to the
		casting rule.  If from is a scalar or array scalar, also returns
		True if the scalar value can be cast without overflow or truncation
		to an integer.
		
		Parameters
		----------
		from_ : dtype, dtype specifier, scalar, or array
		    Data type, scalar, or array to cast from.
		to : dtype or dtype specifier
		    Data type to cast to.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		
		Returns
		-------
		out : bool
		    True if cast can occur according to the casting rule.
		
		Notes
		-----
		.. versionchanged:: 1.17.0
		   Casting between a simple data type and a structured one is possible only
		   for "unsafe" casting.  Casting to multiple fields is allowed, but
		   casting from multiple fields is not.
		
		.. versionchanged:: 1.9.0
		   Casting from numeric to string types in 'safe' casting mode requires
		   that the string dtype length is long enough to store the maximum
		   integer/float value converted.
		
		See also
		--------
		dtype, result_type
		
		Examples
		--------
		Basic examples
		
		>>> np.can_cast(np.int32, np.int64)
		True
		>>> np.can_cast(np.float64, complex)
		True
		>>> np.can_cast(complex, float)
		False
		
		>>> np.can_cast('i8', 'f8')
		True
		>>> np.can_cast('i8', 'f4')
		False
		>>> np.can_cast('i4', 'S4')
		False
		
		Casting scalars
		
		>>> np.can_cast(100, 'i1')
		True
		>>> np.can_cast(150, 'i1')
		False
		>>> np.can_cast(150, 'u1')
		True
		
		>>> np.can_cast(3.5e100, np.float32)
		False
		>>> np.can_cast(1000.0, np.float32)
		True
		
		Array scalar checks the value, array does not
		
		>>> np.can_cast(np.array(1000.0), np.float32)
		True
		>>> np.can_cast(np.array([1000.0]), np.float32)
		False
		
		Using the casting rules
		
		>>> np.can_cast('i8', 'i8', 'no')
		True
		>>> np.can_cast('<i8', '>i8', 'no')
		False
		
		>>> np.can_cast('<i8', '>i8', 'equiv')
		True
		>>> np.can_cast('<i4', '>i8', 'equiv')
		False
		
		>>> np.can_cast('<i4', '>i8', 'safe')
		True
		>>> np.can_cast('<i8', '>i4', 'safe')
		False
		
		>>> np.can_cast('<i8', '>i4', 'same_kind')
		True
		>>> np.can_cast('<i8', '>u4', 'same_kind')
		False
		
		>>> np.can_cast('<i8', '>u4', 'unsafe')
		True
	**/
	static public function can_cast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:native("cast")
	static public var _cast : Dynamic;
	/**
		cbrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the cube-root of an array, element-wise.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		x : array_like
		    The values whose cube-roots are required.
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
		    An array of the same shape as `x`, containing the cube
		    cube-root of each element in `x`.
		    If `out` was provided, `y` is a reference to it.
		    This is a scalar if `x` is a scalar.
		
		
		Examples
		--------
		>>> np.cbrt([1,8,27])
		array([ 1.,  2.,  3.])
	**/
	static public function cbrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Construct an array from an index array and a list of arrays to choose from.
		
		First of all, if confused or uncertain, definitely look at the Examples -
		in its full generality, this function is less simple than it might
		seem from the following code description (below ndi =
		`numpy.lib.index_tricks`):
		
		``np.choose(a,c) == np.array([c[a[I]][I] for I in ndi.ndindex(a.shape)])``.
		
		But this omits some subtleties.  Here is a fully general summary:
		
		Given an "index" array (`a`) of integers and a sequence of ``n`` arrays
		(`choices`), `a` and each choice array are first broadcast, as necessary,
		to arrays of a common shape; calling these *Ba* and *Bchoices[i], i =
		0,...,n-1* we have that, necessarily, ``Ba.shape == Bchoices[i].shape``
		for each ``i``.  Then, a new array with shape ``Ba.shape`` is created as
		follows:
		
		* if ``mode='raise'`` (the default), then, first of all, each element of
		  ``a`` (and thus ``Ba``) must be in the range ``[0, n-1]``; now, suppose
		  that ``i`` (in that range) is the value at the ``(j0, j1, ..., jm)``
		  position in ``Ba`` - then the value at the same position in the new array
		  is the value in ``Bchoices[i]`` at that same position;
		
		* if ``mode='wrap'``, values in `a` (and thus `Ba`) may be any (signed)
		  integer; modular arithmetic is used to map integers outside the range
		  `[0, n-1]` back into that range; and then the new array is constructed
		  as above;
		
		* if ``mode='clip'``, values in `a` (and thus ``Ba``) may be any (signed)
		  integer; negative integers are mapped to 0; values greater than ``n-1``
		  are mapped to ``n-1``; and then the new array is constructed as above.
		
		Parameters
		----------
		a : int array
		    This array must contain integers in ``[0, n-1]``, where ``n`` is the
		    number of choices, unless ``mode=wrap`` or ``mode=clip``, in which
		    cases any integers are permissible.
		choices : sequence of arrays
		    Choice arrays. `a` and all of the choices must be broadcastable to the
		    same shape.  If `choices` is itself an array (not recommended), then
		    its outermost dimension (i.e., the one corresponding to
		    ``choices.shape[0]``) is taken as defining the "sequence".
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype. Note that `out` is always
		    buffered if ``mode='raise'``; use other modes for better performance.
		mode : {'raise' (default), 'wrap', 'clip'}, optional
		    Specifies how indices outside ``[0, n-1]`` will be treated:
		
		      * 'raise' : an exception is raised
		      * 'wrap' : value becomes value mod ``n``
		      * 'clip' : values < 0 are mapped to 0, values > n-1 are mapped to n-1
		
		Returns
		-------
		merged_array : array
		    The merged result.
		
		Raises
		------
		ValueError: shape mismatch
		    If `a` and each choice array are not all broadcastable to the same
		    shape.
		
		See Also
		--------
		ndarray.choose : equivalent method
		numpy.take_along_axis : Preferable if `choices` is an array
		
		Notes
		-----
		To reduce the chance of misinterpretation, even though the following
		"abuse" is nominally supported, `choices` should neither be, nor be
		thought of as, a single array, i.e., the outermost sequence-like container
		should be either a list or a tuple.
		
		Examples
		--------
		
		>>> choices = [[0, 1, 2, 3], [10, 11, 12, 13],
		...   [20, 21, 22, 23], [30, 31, 32, 33]]
		>>> np.choose([2, 3, 1, 0], choices
		... # the first element of the result will be the first element of the
		... # third (2+1) "array" in choices, namely, 20; the second element
		... # will be the second element of the fourth (3+1) choice array, i.e.,
		... # 31, etc.
		... )
		array([20, 31, 12,  3])
		>>> np.choose([2, 4, 1, 0], choices, mode='clip') # 4 goes to 3 (4-1)
		array([20, 31, 12,  3])
		>>> # because there are 4 choice arrays
		>>> np.choose([2, 4, 1, 0], choices, mode='wrap') # 4 goes to (4 mod 4)
		array([20,  1, 12,  3])
		>>> # i.e., 0
		
		A couple examples illustrating how choose broadcasts:
		
		>>> a = [[1, 0, 1], [0, 1, 0], [1, 0, 1]]
		>>> choices = [-10, 10]
		>>> np.choose(a, choices)
		array([[ 10, -10,  10],
		       [-10,  10, -10],
		       [ 10, -10,  10]])
		
		>>> # With thanks to Anne Archibald
		>>> a = np.array([0, 1]).reshape((2,1,1))
		>>> c1 = np.array([1, 2, 3]).reshape((1,3,1))
		>>> c2 = np.array([-1, -2, -3, -4, -5]).reshape((1,1,5))
		>>> np.choose(a, (c1, c2)) # result is 2x3x5, res[0,:,:]=c1, res[1,:,:]=c2
		array([[[ 1,  1,  1,  1,  1],
		        [ 2,  2,  2,  2,  2],
		        [ 3,  3,  3,  3,  3]],
		       [[-1, -2, -3, -4, -5],
		        [-1, -2, -3, -4, -5],
		        [-1, -2, -3, -4, -5]]])
	**/
	static public function choose(a:Dynamic, choices:Dynamic, ?out:Dynamic, ?mode:Dynamic):Array<Dynamic>;
	/**
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
		clipped_array : ndarray
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
	static public function clip(a:Dynamic, a_min:Dynamic, a_max:Dynamic, ?out:Dynamic, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
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
		stack, hstack, vstack, concatenate
		
		Examples
		--------
		>>> a = np.array((1,2,3))
		>>> b = np.array((2,3,4))
		>>> np.column_stack((a,b))
		array([[1, 2],
		       [2, 3],
		       [3, 4]])
	**/
	static public function column_stack(tup:Dynamic):Dynamic;
	/**
		Return a scalar type which is common to the input arrays.
		
		The return type will always be an inexact (i.e. floating point) scalar
		type, even if all the arrays are integer arrays. If one of the inputs is
		an integer array, the minimum precision type that is returned is a
		64-bit floating point dtype.
		
		All input arrays except int64 and uint64 can be safely cast to the
		returned dtype without loss of information.
		
		Parameters
		----------
		array1, array2, ... : ndarrays
		    Input arrays.
		
		Returns
		-------
		out : data type code
		    Data type code.
		
		See Also
		--------
		dtype, mintypecode
		
		Examples
		--------
		>>> np.common_type(np.arange(2, dtype=np.float32))
		<class 'numpy.float32'>
		>>> np.common_type(np.arange(2, dtype=np.float32), np.arange(2))
		<class 'numpy.float64'>
		>>> np.common_type(np.arange(4), np.array([45, 6.j]), np.array([45.0]))
		<class 'numpy.complex128'>
	**/
	static public function common_type(?arrays:python.VarArgs<Dynamic>):Dynamic;
	/**
		compare_chararrays(a1, a2, cmp, rstrip)
		
		Performs element-wise comparison of two string arrays using the
		comparison operator specified by `cmp_op`.
		
		Parameters
		----------
		a1, a2 : array_like
		    Arrays to be compared.
		cmp : {"<", "<=", "==", ">=", ">", "!="}
		    Type of comparison.
		rstrip : Boolean
		    If True, the spaces at the end of Strings are removed before the comparison.
		
		Returns
		-------
		out : ndarray
		    The output array of type Boolean with the same shape as a and b.
		
		Raises
		------
		ValueError
		    If `cmp_op` is not valid.
		TypeError
		    If at least one of `a` or `b` is a non-string array
		
		Examples
		--------
		>>> a = np.array(["a", "b", "cde"])
		>>> b = np.array(["a", "a", "dec"])
		>>> np.compare_chararrays(a, b, ">", True)
		array([False,  True, False])
	**/
	static public function compare_chararrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return selected slices of an array along given axis.
		
		When working along a given axis, a slice along that axis is returned in
		`output` for each index where `condition` evaluates to True. When
		working on a 1-D array, `compress` is equivalent to `extract`.
		
		Parameters
		----------
		condition : 1-D array of bools
		    Array that selects which entries to return. If len(condition)
		    is less than the size of `a` along the given axis, then output is
		    truncated to the length of the condition array.
		a : array_like
		    Array from which to extract a part.
		axis : int, optional
		    Axis along which to take slices. If None (default), work on the
		    flattened array.
		out : ndarray, optional
		    Output array.  Its type is preserved and it must be of the right
		    shape to hold the output.
		
		Returns
		-------
		compressed_array : ndarray
		    A copy of `a` without the slices along axis for which `condition`
		    is false.
		
		See Also
		--------
		take, choose, diag, diagonal, select
		ndarray.compress : Equivalent method in ndarray
		extract : Equivalent method when working on 1-D arrays
		:ref:`ufuncs-output-type`
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4], [5, 6]])
		>>> a
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
		>>> np.compress([0, 1], a, axis=0)
		array([[3, 4]])
		>>> np.compress([False, True, True], a, axis=0)
		array([[3, 4],
		       [5, 6]])
		>>> np.compress([False, True], a, axis=1)
		array([[2],
		       [4],
		       [6]])
		
		Working on the flattened array does not return slices along an axis but
		selects elements.
		
		>>> np.compress([False, True], a)
		array([2])
	**/
	static public function compress(condition:Dynamic, a:Dynamic, ?axis:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		concatenate((a1, a2, ...), axis=0, out=None, dtype=None, casting="same_kind")
		
		Join a sequence of arrays along an existing axis.
		
		Parameters
		----------
		a1, a2, ... : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined.  If axis is None,
		    arrays are flattened before use.  Default is 0.
		out : ndarray, optional
		    If provided, the destination to place the result. The shape must be
		    correct, matching that of what concatenate would have returned if no
		    out argument were specified.
		dtype : str or dtype
		    If provided, the destination array will have this dtype. Cannot be
		    provided together with `out`.
		
		    .. versionadded:: 1.20.0
		
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur. Defaults to 'same_kind'.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		res : ndarray
		    The concatenated array.
		
		See Also
		--------
		ma.concatenate : Concatenate function that preserves input masks.
		array_split : Split an array into multiple sub-arrays of equal or
		              near-equal size.
		split : Split array into a list of multiple sub-arrays of equal size.
		hsplit : Split array into multiple sub-arrays horizontally (column wise).
		vsplit : Split array into multiple sub-arrays vertically (row wise).
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		stack : Stack a sequence of arrays along a new axis.
		block : Assemble arrays from blocks.
		hstack : Stack arrays in sequence horizontally (column wise).
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third dimension).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		
		Notes
		-----
		When one or more of the arrays to be concatenated is a MaskedArray,
		this function will return a MaskedArray object instead of an ndarray,
		but the input masks are *not* preserved. In cases where a MaskedArray
		is expected as input, use the ma.concatenate function from the masked
		array module instead.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> b = np.array([[5, 6]])
		>>> np.concatenate((a, b), axis=0)
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
		>>> np.concatenate((a, b.T), axis=1)
		array([[1, 2, 5],
		       [3, 4, 6]])
		>>> np.concatenate((a, b), axis=None)
		array([1, 2, 3, 4, 5, 6])
		
		This function will not preserve masking of MaskedArray inputs.
		
		>>> a = np.ma.arange(3)
		>>> a[1] = np.ma.masked
		>>> b = np.arange(2, 5)
		>>> a
		masked_array(data=[0, --, 2],
		             mask=[False,  True, False],
		       fill_value=999999)
		>>> b
		array([2, 3, 4])
		>>> np.concatenate([a, b])
		masked_array(data=[0, 1, 2, 2, 3, 4],
		             mask=False,
		       fill_value=999999)
		>>> np.ma.concatenate([a, b])
		masked_array(data=[0, --, 2, 2, 3, 4],
		             mask=[False,  True, False, False, False, False],
		       fill_value=999999)
	**/
	static public function concatenate(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the discrete, linear convolution of two one-dimensional sequences.
		
		The convolution operator is often seen in signal processing, where it
		models the effect of a linear time-invariant system on a signal [1]_.  In
		probability theory, the sum of two independent random variables is
		distributed according to the convolution of their individual
		distributions.
		
		If `v` is longer than `a`, the arrays are swapped before computation.
		
		Parameters
		----------
		a : (N,) array_like
		    First one-dimensional input array.
		v : (M,) array_like
		    Second one-dimensional input array.
		mode : {'full', 'valid', 'same'}, optional
		    'full':
		      By default, mode is 'full'.  This returns the convolution
		      at each point of overlap, with an output shape of (N+M-1,). At
		      the end-points of the convolution, the signals do not overlap
		      completely, and boundary effects may be seen.
		
		    'same':
		      Mode 'same' returns output of length ``max(M, N)``.  Boundary
		      effects are still visible.
		
		    'valid':
		      Mode 'valid' returns output of length
		      ``max(M, N) - min(M, N) + 1``.  The convolution product is only given
		      for points where the signals overlap completely.  Values outside
		      the signal boundary have no effect.
		
		Returns
		-------
		out : ndarray
		    Discrete, linear convolution of `a` and `v`.
		
		See Also
		--------
		scipy.signal.fftconvolve : Convolve two arrays using the Fast Fourier
		                           Transform.
		scipy.linalg.toeplitz : Used to construct the convolution operator.
		polymul : Polynomial multiplication. Same output as convolve, but also
		          accepts poly1d objects as input.
		
		Notes
		-----
		The discrete convolution operation is defined as
		
		.. math:: (a * v)[n] = \sum_{m = -\infty}^{\infty} a[m] v[n - m]
		
		It can be shown that a convolution :math:`x(t) * y(t)` in time/space
		is equivalent to the multiplication :math:`X(f) Y(f)` in the Fourier
		domain, after appropriate padding (padding is necessary to prevent
		circular convolution).  Since multiplication is more efficient (faster)
		than convolution, the function `scipy.signal.fftconvolve` exploits the
		FFT to calculate the convolution of large data-sets.
		
		References
		----------
		.. [1] Wikipedia, "Convolution",
		    https://en.wikipedia.org/wiki/Convolution
		
		Examples
		--------
		Note how the convolution operator flips the second array
		before "sliding" the two across one another:
		
		>>> np.convolve([1, 2, 3], [0, 1, 0.5])
		array([0. , 1. , 2.5, 4. , 1.5])
		
		Only return the middle values of the convolution.
		Contains boundary effects, where zeros are taken
		into account:
		
		>>> np.convolve([1,2,3],[0,1,0.5], 'same')
		array([1. ,  2.5,  4. ])
		
		The two arrays are of the same length, so there
		is only one position where they completely overlap:
		
		>>> np.convolve([1,2,3],[0,1,0.5], 'valid')
		array([2.5])
	**/
	static public function convolve(a:Dynamic, v:Dynamic, ?mode:Dynamic):numpy.Ndarray;
	/**
		Return an array copy of the given object.
		
		Parameters
		----------
		a : array_like
		    Input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the copy. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible. (Note that this function and :meth:`ndarray.copy` are very
		    similar, but have different default values for their order=
		    arguments.)
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise the
		    returned array will be forced to be a base-class array (defaults to False).
		
		    .. versionadded:: 1.19.0
		
		Returns
		-------
		arr : ndarray
		    Array interpretation of `a`.
		
		See Also
		--------
		ndarray.copy : Preferred method for creating an array copy
		
		Notes
		-----
		This is equivalent to:
		
		>>> np.array(a, copy=True)  #doctest: +SKIP
		
		Examples
		--------
		Create an array x, with a reference y and a copy z:
		
		>>> x = np.array([1, 2, 3])
		>>> y = x
		>>> z = np.copy(x)
		
		Note that, when we modify x, y changes, but not z:
		
		>>> x[0] = 10
		>>> x[0] == y[0]
		True
		>>> x[0] == z[0]
		False
		
		Note that, np.copy clears previously set WRITEABLE=False flag.
		
		>>> a = np.array([1, 2, 3])
		>>> a.flags["WRITEABLE"] = False
		>>> b = np.copy(a)
		>>> b.flags["WRITEABLE"]
		True
		>>> b[0] = 3
		>>> b
		array([3, 2, 3])
		
		Note that np.copy is a shallow copy and will not copy object
		elements within arrays. This is mainly important for arrays
		containing Python objects. The new array will contain the
		same object which may lead to surprises if that object can
		be modified (is mutable):
		
		>>> a = np.array([1, 'm', [2, 3, 4]], dtype=object)
		>>> b = np.copy(a)
		>>> b[2][0] = 10
		>>> a
		array([1, 'm', list([10, 3, 4])], dtype=object)
		
		To ensure all elements within an ``object`` array are copied,
		use `copy.deepcopy`:
		
		>>> import copy
		>>> a = np.array([1, 'm', [2, 3, 4]], dtype=object)
		>>> c = copy.deepcopy(a)
		>>> c[2][0] = 10
		>>> c
		array([1, 'm', list([10, 3, 4])], dtype=object)
		>>> a
		array([1, 'm', list([2, 3, 4])], dtype=object)
	**/
	static public function copy(a:Dynamic, ?order:Dynamic, ?subok:Dynamic):numpy.Ndarray;
	/**
		copysign(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Change the sign of x1 to that of x2, element-wise.
		
		If `x2` is a scalar, its sign will be copied to all elements of `x1`.
		
		Parameters
		----------
		x1 : array_like
		    Values to change the sign of.
		x2 : array_like
		    The sign of `x2` is copied to `x1`.
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
		    The values of `x1` with the sign of `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Examples
		--------
		>>> np.copysign(1.3, -1)
		-1.3
		>>> 1/np.copysign(0, 1)
		inf
		>>> 1/np.copysign(0, -1)
		-inf
		
		>>> np.copysign([-1, 0, 1], -1.1)
		array([-1., -0., -1.])
		>>> np.copysign([-1, 0, 1], np.arange(3)-1)
		array([-1.,  0.,  1.])
	**/
	static public function copysign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copyto(dst, src, casting='same_kind', where=True)
		
		Copies values from one array to another, broadcasting as necessary.
		
		Raises a TypeError if the `casting` rule is violated, and if
		`where` is provided, it selects which elements to copy.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dst : ndarray
		    The array into which values are copied.
		src : array_like
		    The array from which values are copied.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur when copying.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		where : array_like of bool, optional
		    A boolean array which is broadcasted to match the dimensions
		    of `dst`, and selects elements to copy from `src` to `dst`
		    wherever it contains the value True.
	**/
	static public function copyto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return Pearson product-moment correlation coefficients.
		
		Please refer to the documentation for `cov` for more detail.  The
		relationship between the correlation coefficient matrix, `R`, and the
		covariance matrix, `C`, is
		
		.. math:: R_{ij} = \frac{ C_{ij} } { \sqrt{ C_{ii} * C_{jj} } }
		
		The values of `R` are between -1 and 1, inclusive.
		
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
		ddof : _NoValue, optional
		    Has no effect, do not use.
		
		    .. deprecated:: 1.10.0
		dtype : data-type, optional
		    Data-type of the result. By default, the return data-type will have
		    at least `numpy.float64` precision.
		
		    .. versionadded:: 1.20
		
		Returns
		-------
		R : ndarray
		    The correlation coefficient matrix of the variables.
		
		See Also
		--------
		cov : Covariance matrix
		
		Notes
		-----
		Due to floating point rounding the resulting array may not be Hermitian,
		the diagonal elements may not be 1, and the elements may not satisfy the
		inequality abs(a) <= 1. The real and imaginary parts are clipped to the
		interval [-1,  1] in an attempt to improve on that situation but is not
		much help in the complex case.
		
		This function accepts but discards arguments `bias` and `ddof`.  This is
		for backwards compatibility with previous versions of this function.  These
		arguments had no effect on the return values of the function and can be
		safely ignored in this and previous versions of numpy.
		
		Examples
		--------
		In this example we generate two random arrays, ``xarr`` and ``yarr``, and
		compute the row-wise and column-wise Pearson correlation coefficients,
		``R``. Since ``rowvar`` is  true by  default, we first find the row-wise
		Pearson correlation coefficients between the variables of ``xarr``.
		
		>>> import numpy as np
		>>> rng = np.random.default_rng(seed=42)
		>>> xarr = rng.random((3, 3))
		>>> xarr
		array([[0.77395605, 0.43887844, 0.85859792],
		       [0.69736803, 0.09417735, 0.97562235],
		       [0.7611397 , 0.78606431, 0.12811363]])
		>>> R1 = np.corrcoef(xarr)
		>>> R1
		array([[ 1.        ,  0.99256089, -0.68080986],
		       [ 0.99256089,  1.        , -0.76492172],
		       [-0.68080986, -0.76492172,  1.        ]])
		
		If we add another set of variables and observations ``yarr``, we can
		compute the row-wise Pearson correlation coefficients between the
		variables in ``xarr`` and ``yarr``.
		
		>>> yarr = rng.random((3, 3))
		>>> yarr
		array([[0.45038594, 0.37079802, 0.92676499],
		       [0.64386512, 0.82276161, 0.4434142 ],
		       [0.22723872, 0.55458479, 0.06381726]])
		>>> R2 = np.corrcoef(xarr, yarr)
		>>> R2
		array([[ 1.        ,  0.99256089, -0.68080986,  0.75008178, -0.934284  ,
		        -0.99004057],
		       [ 0.99256089,  1.        , -0.76492172,  0.82502011, -0.97074098,
		        -0.99981569],
		       [-0.68080986, -0.76492172,  1.        , -0.99507202,  0.89721355,
		         0.77714685],
		       [ 0.75008178,  0.82502011, -0.99507202,  1.        , -0.93657855,
		        -0.83571711],
		       [-0.934284  , -0.97074098,  0.89721355, -0.93657855,  1.        ,
		         0.97517215],
		       [-0.99004057, -0.99981569,  0.77714685, -0.83571711,  0.97517215,
		         1.        ]])
		
		Finally if we use the option ``rowvar=False``, the columns are now
		being treated as the variables and we will find the column-wise Pearson
		correlation coefficients between variables in ``xarr`` and ``yarr``.
		
		>>> R3 = np.corrcoef(xarr, yarr, rowvar=False)
		>>> R3
		array([[ 1.        ,  0.77598074, -0.47458546, -0.75078643, -0.9665554 ,
		         0.22423734],
		       [ 0.77598074,  1.        , -0.92346708, -0.99923895, -0.58826587,
		        -0.44069024],
		       [-0.47458546, -0.92346708,  1.        ,  0.93773029,  0.23297648,
		         0.75137473],
		       [-0.75078643, -0.99923895,  0.93773029,  1.        ,  0.55627469,
		         0.47536961],
		       [-0.9665554 , -0.58826587,  0.23297648,  0.55627469,  1.        ,
		        -0.46666491],
		       [ 0.22423734, -0.44069024,  0.75137473,  0.47536961, -0.46666491,
		         1.        ]])
	**/
	static public function corrcoef(x:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Cross-correlation of two 1-dimensional sequences.
		
		This function computes the correlation as generally defined in signal
		processing texts::
		
		    c_{av}[k] = sum_n a[n+k] * conj(v[n])
		
		with a and v sequences being zero-padded where necessary and conj being
		the conjugate.
		
		Parameters
		----------
		a, v : array_like
		    Input sequences.
		mode : {'valid', 'same', 'full'}, optional
		    Refer to the `convolve` docstring.  Note that the default
		    is 'valid', unlike `convolve`, which uses 'full'.
		old_behavior : bool
		    `old_behavior` was removed in NumPy 1.10. If you need the old
		    behavior, use `multiarray.correlate`.
		
		Returns
		-------
		out : ndarray
		    Discrete cross-correlation of `a` and `v`.
		
		See Also
		--------
		convolve : Discrete, linear convolution of two one-dimensional sequences.
		multiarray.correlate : Old, no conjugate, version of correlate.
		scipy.signal.correlate : uses FFT which has superior performance on large arrays. 
		
		Notes
		-----
		The definition of correlation above is not unique and sometimes correlation
		may be defined differently. Another common definition is::
		
		    c'_{av}[k] = sum_n a[n] conj(v[n+k])
		
		which is related to ``c_{av}[k]`` by ``c'_{av}[k] = c_{av}[-k]``.
		
		`numpy.correlate` may perform slowly in large arrays (i.e. n = 1e5) because it does
		not use the FFT to compute the convolution; in that case, `scipy.signal.correlate` might
		be preferable.
		
		
		Examples
		--------
		>>> np.correlate([1, 2, 3], [0, 1, 0.5])
		array([3.5])
		>>> np.correlate([1, 2, 3], [0, 1, 0.5], "same")
		array([2. ,  3.5,  3. ])
		>>> np.correlate([1, 2, 3], [0, 1, 0.5], "full")
		array([0.5,  2. ,  3.5,  3. ,  0. ])
		
		Using complex sequences:
		
		>>> np.correlate([1+1j, 2, 3-1j], [0, 1, 0.5j], 'full')
		array([ 0.5-0.5j,  1.0+0.j ,  1.5-1.5j,  3.0-1.j ,  0.0+0.j ])
		
		Note that you get the time reversed, complex conjugated result
		when the two input sequences change places, i.e.,
		``c_{va}[k] = c^{*}_{av}[-k]``:
		
		>>> np.correlate([0, 1, 0.5j], [1+1j, 2, 3-1j], 'full')
		array([ 0.0+0.j ,  3.0+1.j ,  1.5+1.5j,  1.0+0.j ,  0.5+0.5j])
	**/
	static public function correlate(a:Dynamic, v:Dynamic, ?mode:Dynamic):numpy.Ndarray;
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
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function cosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Counts the number of non-zero values in the array ``a``.
		
		The word "non-zero" is in reference to the Python 2.x
		built-in method ``__nonzero__()`` (renamed ``__bool__()``
		in Python 3.x) of Python objects that tests an object's
		"truthfulness". For example, any number is considered
		truthful if it is nonzero, whereas any string is considered
		truthful if it is not the empty string. Thus, this function
		(recursively) counts how many elements in ``a`` (and in
		sub-arrays thereof) have their ``__nonzero__()`` or ``__bool__()``
		method evaluated to ``True``.
		
		Parameters
		----------
		a : array_like
		    The array for which to count non-zeros.
		axis : int or tuple, optional
		    Axis or tuple of axes along which to count non-zeros.
		    Default is None, meaning that non-zeros will be counted
		    along a flattened version of ``a``.
		
		    .. versionadded:: 1.12.0
		
		keepdims : bool, optional
		    If this is set to True, the axes that are counted are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    .. versionadded:: 1.19.0
		
		Returns
		-------
		count : int or array of int
		    Number of non-zero values in the array along a given axis.
		    Otherwise, the total number of non-zero values in the array
		    is returned.
		
		See Also
		--------
		nonzero : Return the coordinates of all the non-zero values.
		
		Examples
		--------
		>>> np.count_nonzero(np.eye(4))
		4
		>>> a = np.array([[0, 1, 7, 0],
		...               [3, 0, 2, 19]])
		>>> np.count_nonzero(a)
		5
		>>> np.count_nonzero(a, axis=0)
		array([1, 1, 2, 1])
		>>> np.count_nonzero(a, axis=1)
		array([2, 3])
		>>> np.count_nonzero(a, axis=1, keepdims=True)
		array([[2],
		       [3]])
	**/
	static public function count_nonzero(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Estimate a covariance matrix, given data and weights.
		
		Covariance indicates the level to which two variables vary together.
		If we examine N-dimensional samples, :math:`X = [x_1, x_2, ... x_N]^T`,
		then the covariance matrix element :math:`C_{ij}` is the covariance of
		:math:`x_i` and :math:`x_j`. The element :math:`C_{ii}` is the variance
		of :math:`x_i`.
		
		See the notes for an outline of the algorithm.
		
		Parameters
		----------
		m : array_like
		    A 1-D or 2-D array containing multiple variables and observations.
		    Each row of `m` represents a variable, and each column a single
		    observation of all those variables. Also see `rowvar` below.
		y : array_like, optional
		    An additional set of variables and observations. `y` has the same form
		    as that of `m`.
		rowvar : bool, optional
		    If `rowvar` is True (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : bool, optional
		    Default normalization (False) is by ``(N - 1)``, where ``N`` is the
		    number of observations given (unbiased estimate). If `bias` is True,
		    then normalization is by ``N``. These values can be overridden by using
		    the keyword ``ddof`` in numpy versions >= 1.5.
		ddof : int, optional
		    If not ``None`` the default value implied by `bias` is overridden.
		    Note that ``ddof=1`` will return the unbiased estimate, even if both
		    `fweights` and `aweights` are specified, and ``ddof=0`` will return
		    the simple average. See the notes for the details. The default value
		    is ``None``.
		
		    .. versionadded:: 1.5
		fweights : array_like, int, optional
		    1-D array of integer frequency weights; the number of times each
		    observation vector should be repeated.
		
		    .. versionadded:: 1.10
		aweights : array_like, optional
		    1-D array of observation vector weights. These relative weights are
		    typically large for observations considered "important" and smaller for
		    observations considered less "important". If ``ddof=0`` the array of
		    weights can be used to assign probabilities to observation vectors.
		
		    .. versionadded:: 1.10
		dtype : data-type, optional
		    Data-type of the result. By default, the return data-type will have
		    at least `numpy.float64` precision.
		
		    .. versionadded:: 1.20
		
		Returns
		-------
		out : ndarray
		    The covariance matrix of the variables.
		
		See Also
		--------
		corrcoef : Normalized covariance matrix
		
		Notes
		-----
		Assume that the observations are in the columns of the observation
		array `m` and let ``f = fweights`` and ``a = aweights`` for brevity. The
		steps to compute the weighted covariance are as follows::
		
		    >>> m = np.arange(10, dtype=np.float64)
		    >>> f = np.arange(10) * 2
		    >>> a = np.arange(10) ** 2.
		    >>> ddof = 1
		    >>> w = f * a
		    >>> v1 = np.sum(w)
		    >>> v2 = np.sum(w * a)
		    >>> m -= np.sum(m * w, axis=None, keepdims=True) / v1
		    >>> cov = np.dot(m * w, m.T) * v1 / (v1**2 - ddof * v2)
		
		Note that when ``a == 1``, the normalization factor
		``v1 / (v1**2 - ddof * v2)`` goes over to ``1 / (np.sum(f) - ddof)``
		as it should.
		
		Examples
		--------
		Consider two variables, :math:`x_0` and :math:`x_1`, which
		correlate perfectly, but in opposite directions:
		
		>>> x = np.array([[0, 2], [1, 1], [2, 0]]).T
		>>> x
		array([[0, 1, 2],
		       [2, 1, 0]])
		
		Note how :math:`x_0` increases while :math:`x_1` decreases. The covariance
		matrix shows this clearly:
		
		>>> np.cov(x)
		array([[ 1., -1.],
		       [-1.,  1.]])
		
		Note that element :math:`C_{0,1}`, which shows the correlation between
		:math:`x_0` and :math:`x_1`, is negative.
		
		Further, note how `x` and `y` are combined:
		
		>>> x = [-2.1, -1,  4.3]
		>>> y = [3,  1.1,  0.12]
		>>> X = np.stack((x, y), axis=0)
		>>> np.cov(X)
		array([[11.71      , -4.286     ], # may vary
		       [-4.286     ,  2.144133]])
		>>> np.cov(x, y)
		array([[11.71      , -4.286     ], # may vary
		       [-4.286     ,  2.144133]])
		>>> np.cov(x)
		array(11.71)
	**/
	static public function cov(m:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?fweights:Dynamic, ?aweights:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Return the cross product of two (arrays of) vectors.
		
		The cross product of `a` and `b` in :math:`R^3` is a vector perpendicular
		to both `a` and `b`.  If `a` and `b` are arrays of vectors, the vectors
		are defined by the last axis of `a` and `b` by default, and these axes
		can have dimensions 2 or 3.  Where the dimension of either `a` or `b` is
		2, the third component of the input vector is assumed to be zero and the
		cross product calculated accordingly.  In cases where both input vectors
		have dimension 2, the z-component of the cross product is returned.
		
		Parameters
		----------
		a : array_like
		    Components of the first vector(s).
		b : array_like
		    Components of the second vector(s).
		axisa : int, optional
		    Axis of `a` that defines the vector(s).  By default, the last axis.
		axisb : int, optional
		    Axis of `b` that defines the vector(s).  By default, the last axis.
		axisc : int, optional
		    Axis of `c` containing the cross product vector(s).  Ignored if
		    both input vectors have dimension 2, as the return is scalar.
		    By default, the last axis.
		axis : int, optional
		    If defined, the axis of `a`, `b` and `c` that defines the vector(s)
		    and cross product(s).  Overrides `axisa`, `axisb` and `axisc`.
		
		Returns
		-------
		c : ndarray
		    Vector cross product(s).
		
		Raises
		------
		ValueError
		    When the dimension of the vector(s) in `a` and/or `b` does not
		    equal 2 or 3.
		
		See Also
		--------
		inner : Inner product
		outer : Outer product.
		ix_ : Construct index arrays.
		
		Notes
		-----
		.. versionadded:: 1.9.0
		
		Supports full broadcasting of the inputs.
		
		Examples
		--------
		Vector cross-product.
		
		>>> x = [1, 2, 3]
		>>> y = [4, 5, 6]
		>>> np.cross(x, y)
		array([-3,  6, -3])
		
		One vector with dimension 2.
		
		>>> x = [1, 2]
		>>> y = [4, 5, 6]
		>>> np.cross(x, y)
		array([12, -6, -3])
		
		Equivalently:
		
		>>> x = [1, 2, 0]
		>>> y = [4, 5, 6]
		>>> np.cross(x, y)
		array([12, -6, -3])
		
		Both vectors with dimension 2.
		
		>>> x = [1,2]
		>>> y = [4,5]
		>>> np.cross(x, y)
		array(-3)
		
		Multiple vector cross-products. Note that the direction of the cross
		product vector is defined by the `right-hand rule`.
		
		>>> x = np.array([[1,2,3], [4,5,6]])
		>>> y = np.array([[4,5,6], [1,2,3]])
		>>> np.cross(x, y)
		array([[-3,  6, -3],
		       [ 3, -6,  3]])
		
		The orientation of `c` can be changed using the `axisc` keyword.
		
		>>> np.cross(x, y, axisc=0)
		array([[-3,  3],
		       [ 6, -6],
		       [-3,  3]])
		
		Change the vector definition of `x` and `y` using `axisa` and `axisb`.
		
		>>> x = np.array([[1,2,3], [4,5,6], [7, 8, 9]])
		>>> y = np.array([[7, 8, 9], [4,5,6], [1,2,3]])
		>>> np.cross(x, y)
		array([[ -6,  12,  -6],
		       [  0,   0,   0],
		       [  6, -12,   6]])
		>>> np.cross(x, y, axisa=0, axisb=0)
		array([[-24,  48, -24],
		       [-30,  60, -30],
		       [-36,  72, -36]])
	**/
	static public function cross(a:Dynamic, b:Dynamic, ?axisa:Dynamic, ?axisb:Dynamic, ?axisc:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Return the cumulative product of elements along a given axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    Axis along which the cumulative product is computed.  By default
		    the input is flattened.
		dtype : dtype, optional
		    Type of the returned array, as well as of the accumulator in which
		    the elements are multiplied.  If *dtype* is not specified, it
		    defaults to the dtype of `a`, unless `a` has an integer dtype with
		    a precision less than that of the default platform integer.  In
		    that case, the default platform integer is used instead.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type of the resulting values will be cast if necessary.
		
		Returns
		-------
		cumprod : ndarray
		    A new array holding the result is returned unless `out` is
		    specified, in which case a reference to out is returned.
		
		See Also
		--------
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		Examples
		--------
		>>> a = np.array([1,2,3])
		>>> np.cumprod(a) # intermediate results 1, 1*2
		...               # total product 1*2*3 = 6
		array([1, 2, 6])
		>>> a = np.array([[1, 2, 3], [4, 5, 6]])
		>>> np.cumprod(a, dtype=float) # specify type of output
		array([   1.,    2.,    6.,   24.,  120.,  720.])
		
		The cumulative product for each column (i.e., over the rows) of `a`:
		
		>>> np.cumprod(a, axis=0)
		array([[ 1,  2,  3],
		       [ 4, 10, 18]])
		
		The cumulative product for each row (i.e. over the columns) of `a`:
		
		>>> np.cumprod(a,axis=1)
		array([[  1,   2,   6],
		       [  4,  20, 120]])
	**/
	static public function cumprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Return the cumulative product over the given axis.
		
		See Also
		--------
		cumprod : equivalent function; see for details.
	**/
	static public function cumproduct(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the cumulative sum of the elements along a given axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    Axis along which the cumulative sum is computed. The default
		    (None) is to compute the cumsum over the flattened array.
		dtype : dtype, optional
		    Type of the returned array and of the accumulator in which the
		    elements are summed.  If `dtype` is not specified, it defaults
		    to the dtype of `a`, unless `a` has an integer dtype with a
		    precision less than that of the default platform integer.  In
		    that case, the default platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type will be cast if necessary. See :ref:`ufuncs-output-type` for
		    more details.
		
		Returns
		-------
		cumsum_along_axis : ndarray.
		    A new array holding the result is returned unless `out` is
		    specified, in which case a reference to `out` is returned. The
		    result has the same size as `a`, and the same shape as `a` if
		    `axis` is not None or `a` is a 1-d array.
		
		See Also
		--------
		sum : Sum array elements.
		trapz : Integration of array values using the composite trapezoidal rule.
		diff : Calculate the n-th discrete difference along given axis.
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		``cumsum(a)[-1]`` may not be equal to ``sum(a)`` for floating-point
		values since ``sum`` may use a pairwise summation routine, reducing
		the roundoff-error. See `sum` for more information.
		
		Examples
		--------
		>>> a = np.array([[1,2,3], [4,5,6]])
		>>> a
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> np.cumsum(a)
		array([ 1,  3,  6, 10, 15, 21])
		>>> np.cumsum(a, dtype=float)     # specifies type of output value(s)
		array([  1.,   3.,   6.,  10.,  15.,  21.])
		
		>>> np.cumsum(a,axis=0)      # sum over rows for each of the 3 columns
		array([[1, 2, 3],
		       [5, 7, 9]])
		>>> np.cumsum(a,axis=1)      # sum over columns for each of the 2 rows
		array([[ 1,  3,  6],
		       [ 4,  9, 15]])
		
		``cumsum(b)[-1]`` may not be equal to ``sum(b)``
		
		>>> b = np.array([1, 2e-9, 3e-9] * 1000000)
		>>> b.cumsum()[-1]
		1000000.0050045159
		>>> b.sum()
		1000000.0050000029
	**/
	static public function cumsum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	/**
		datetime_as_string(arr, unit=None, timezone='naive', casting='same_kind')
		
		Convert an array of datetimes into an array of strings.
		
		Parameters
		----------
		arr : array_like of datetime64
		    The array of UTC timestamps to format.
		unit : str
		    One of None, 'auto', or a :ref:`datetime unit <arrays.dtypes.dateunits>`.
		timezone : {'naive', 'UTC', 'local'} or tzinfo
		    Timezone information to use when displaying the datetime. If 'UTC', end
		    with a Z to indicate UTC time. If 'local', convert to the local timezone
		    first, and suffix with a +-#### timezone offset. If a tzinfo object,
		    then do as with 'local', but use the specified timezone.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}
		    Casting to allow when changing between datetime units.
		
		Returns
		-------
		str_arr : ndarray
		    An array of strings the same shape as `arr`.
		
		Examples
		--------
		>>> import pytz
		>>> d = np.arange('2002-10-27T04:30', 4*60, 60, dtype='M8[m]')
		>>> d
		array(['2002-10-27T04:30', '2002-10-27T05:30', '2002-10-27T06:30',
		       '2002-10-27T07:30'], dtype='datetime64[m]')
		
		Setting the timezone to UTC shows the same information, but with a Z suffix
		
		>>> np.datetime_as_string(d, timezone='UTC')
		array(['2002-10-27T04:30Z', '2002-10-27T05:30Z', '2002-10-27T06:30Z',
		       '2002-10-27T07:30Z'], dtype='<U35')
		
		Note that we picked datetimes that cross a DST boundary. Passing in a
		``pytz`` timezone object will print the appropriate offset
		
		>>> np.datetime_as_string(d, timezone=pytz.timezone('US/Eastern'))
		array(['2002-10-27T00:30-0400', '2002-10-27T01:30-0400',
		       '2002-10-27T01:30-0500', '2002-10-27T02:30-0500'], dtype='<U39')
		
		Passing in a unit will change the precision
		
		>>> np.datetime_as_string(d, unit='h')
		array(['2002-10-27T04', '2002-10-27T05', '2002-10-27T06', '2002-10-27T07'],
		      dtype='<U32')
		>>> np.datetime_as_string(d, unit='s')
		array(['2002-10-27T04:30:00', '2002-10-27T05:30:00', '2002-10-27T06:30:00',
		       '2002-10-27T07:30:00'], dtype='<U38')
		
		'casting' can be used to specify whether precision can be changed
		
		>>> np.datetime_as_string(d, unit='h', casting='safe')
		Traceback (most recent call last):
		    ...
		TypeError: Cannot create a datetime string as units 'h' from a NumPy
		datetime with units 'm' according to the rule 'safe'
	**/
	static public function datetime_as_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		datetime_data(dtype, /)
		
		Get information about the step size of a date or time type.
		
		The returned tuple can be passed as the second argument of `numpy.datetime64` and
		`numpy.timedelta64`.
		
		Parameters
		----------
		dtype : dtype
		    The dtype object, which must be a `datetime64` or `timedelta64` type.
		
		Returns
		-------
		unit : str
		    The :ref:`datetime unit <arrays.dtypes.dateunits>` on which this dtype
		    is based.
		count : int
		    The number of base units in a step.
		
		Examples
		--------
		>>> dt_25s = np.dtype('timedelta64[25s]')
		>>> np.datetime_data(dt_25s)
		('s', 25)
		>>> np.array(10, dt_25s).astype('timedelta64[s]')
		array(250, dtype='timedelta64[s]')
		
		The result can be used to construct a datetime that uses the same units
		as a timedelta
		
		>>> np.datetime64('2010', np.datetime_data(dt_25s))
		numpy.datetime64('2010-01-01T00:00:00','25s')
	**/
	static public function datetime_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deg2rad(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Convert angles from degrees to radians.
		
		Parameters
		----------
		x : array_like
		    Angles in degrees.
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
		    The corresponding angle in radians.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		rad2deg : Convert angles from radians to degrees.
		unwrap : Remove large jumps in angle by wrapping.
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		``deg2rad(x)`` is ``x * pi / 180``.
		
		Examples
		--------
		>>> np.deg2rad(180)
		3.1415926535897931
	**/
	static public function deg2rad(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		degrees(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Convert angles from radians to degrees.
		
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
		y : ndarray of floats
		    The corresponding degree values; if `out` was supplied this is a
		    reference to it.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		rad2deg : equivalent function
		
		Examples
		--------
		Convert a radian array to degrees
		
		>>> rad = np.arange(12.)*np.pi/6
		>>> np.degrees(rad)
		array([   0.,   30.,   60.,   90.,  120.,  150.,  180.,  210.,  240.,
		        270.,  300.,  330.])
		
		>>> out = np.zeros((rad.shape))
		>>> r = np.degrees(rad, out)
		>>> np.all(r == out)
		True
	**/
	static public function degrees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a new array with sub-arrays along an axis deleted. For a one
		dimensional array, this returns those entries not returned by
		`arr[obj]`.
		
		Parameters
		----------
		arr : array_like
		    Input array.
		obj : slice, int or array of ints
		    Indicate indices of sub-arrays to remove along the specified axis.
		
		    .. versionchanged:: 1.19.0
		        Boolean indices are now treated as a mask of elements to remove,
		        rather than being cast to the integers 0 and 1.
		
		axis : int, optional
		    The axis along which to delete the subarray defined by `obj`.
		    If `axis` is None, `obj` is applied to the flattened array.
		
		Returns
		-------
		out : ndarray
		    A copy of `arr` with the elements specified by `obj` removed. Note
		    that `delete` does not occur in-place. If `axis` is None, `out` is
		    a flattened array.
		
		See Also
		--------
		insert : Insert elements into an array.
		append : Append elements at the end of an array.
		
		Notes
		-----
		Often it is preferable to use a boolean mask. For example:
		
		>>> arr = np.arange(12) + 1
		>>> mask = np.ones(len(arr), dtype=bool)
		>>> mask[[0,2,4]] = False
		>>> result = arr[mask,...]
		
		Is equivalent to `np.delete(arr, [0,2,4], axis=0)`, but allows further
		use of `mask`.
		
		Examples
		--------
		>>> arr = np.array([[1,2,3,4], [5,6,7,8], [9,10,11,12]])
		>>> arr
		array([[ 1,  2,  3,  4],
		       [ 5,  6,  7,  8],
		       [ 9, 10, 11, 12]])
		>>> np.delete(arr, 1, 0)
		array([[ 1,  2,  3,  4],
		       [ 9, 10, 11, 12]])
		
		>>> np.delete(arr, np.s_[::2], 1)
		array([[ 2,  4],
		       [ 6,  8],
		       [10, 12]])
		>>> np.delete(arr, [1,3,5], None)
		array([ 1,  3,  5,  7,  8,  9, 10, 11, 12])
	**/
	static public function delete(arr:Dynamic, obj:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Issues a DeprecationWarning, adds warning to `old_name`'s
		docstring, rebinds ``old_name.__name__`` and returns the new
		function object.
		
		This function may also be used as a decorator.
		
		Parameters
		----------
		func : function
		    The function to be deprecated.
		old_name : str, optional
		    The name of the function to be deprecated. Default is None, in
		    which case the name of `func` is used.
		new_name : str, optional
		    The new name for the function. Default is None, in which case the
		    deprecation message is that `old_name` is deprecated. If given, the
		    deprecation message is that `old_name` is deprecated and `new_name`
		    should be used instead.
		message : str, optional
		    Additional explanation of the deprecation.  Displayed in the
		    docstring after the warning.
		
		Returns
		-------
		old_func : function
		    The deprecated function.
		
		Examples
		--------
		Note that ``olduint`` returns a value after printing Deprecation
		Warning:
		
		>>> olduint = np.deprecate(np.uint)
		DeprecationWarning: `uint64` is deprecated! # may vary
		>>> olduint(6)
		6
	**/
	static public function deprecate(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	/**
		Deprecates a function and includes the deprecation in its docstring.
		
		This function is used as a decorator. It returns an object that can be
		used to issue a DeprecationWarning, by passing the to-be decorated
		function as argument, this adds warning to the to-be decorated function's
		docstring and returns the new function object.
		
		See Also
		--------
		deprecate : Decorate a function such that it issues a `DeprecationWarning`
		
		Parameters
		----------
		msg : str
		    Additional explanation of the deprecation. Displayed in the
		    docstring after the warning.
		
		Returns
		-------
		obj : object
	**/
	static public function deprecate_with_doc(msg:Dynamic):Dynamic;
	/**
		Extract a diagonal or construct a diagonal array.
		
		See the more detailed documentation for ``numpy.diagonal`` if you use this
		function to extract a diagonal and wish to write to the resulting array;
		whether it returns a copy or a view depends on what version of numpy you
		are using.
		
		Parameters
		----------
		v : array_like
		    If `v` is a 2-D array, return a copy of its `k`-th diagonal.
		    If `v` is a 1-D array, return a 2-D array with `v` on the `k`-th
		    diagonal.
		k : int, optional
		    Diagonal in question. The default is 0. Use `k>0` for diagonals
		    above the main diagonal, and `k<0` for diagonals below the main
		    diagonal.
		
		Returns
		-------
		out : ndarray
		    The extracted diagonal or constructed diagonal array.
		
		See Also
		--------
		diagonal : Return specified diagonals.
		diagflat : Create a 2-D array with the flattened input as a diagonal.
		trace : Sum along diagonals.
		triu : Upper triangle of an array.
		tril : Lower triangle of an array.
		
		Examples
		--------
		>>> x = np.arange(9).reshape((3,3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5],
		       [6, 7, 8]])
		
		>>> np.diag(x)
		array([0, 4, 8])
		>>> np.diag(x, k=1)
		array([1, 5])
		>>> np.diag(x, k=-1)
		array([3, 7])
		
		>>> np.diag(np.diag(x))
		array([[0, 0, 0],
		       [0, 4, 0],
		       [0, 0, 8]])
	**/
	static public function diag(v:Dynamic, ?k:Dynamic):numpy.Ndarray;
	/**
		Return the indices to access the main diagonal of an array.
		
		This returns a tuple of indices that can be used to access the main
		diagonal of an array `a` with ``a.ndim >= 2`` dimensions and shape
		(n, n, ..., n). For ``a.ndim = 2`` this is the usual diagonal, for
		``a.ndim > 2`` this is the set of indices to access ``a[i, i, ..., i]``
		for ``i = [0..n-1]``.
		
		Parameters
		----------
		n : int
		  The size, along each dimension, of the arrays for which the returned
		  indices can be used.
		
		ndim : int, optional
		  The number of dimensions.
		
		See Also
		--------
		diag_indices_from
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		Create a set of indices to access the diagonal of a (4, 4) array:
		
		>>> di = np.diag_indices(4)
		>>> di
		(array([0, 1, 2, 3]), array([0, 1, 2, 3]))
		>>> a = np.arange(16).reshape(4, 4)
		>>> a
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15]])
		>>> a[di] = 100
		>>> a
		array([[100,   1,   2,   3],
		       [  4, 100,   6,   7],
		       [  8,   9, 100,  11],
		       [ 12,  13,  14, 100]])
		
		Now, we create indices to manipulate a 3-D array:
		
		>>> d3 = np.diag_indices(2, 3)
		>>> d3
		(array([0, 1]), array([0, 1]), array([0, 1]))
		
		And use it to set the diagonal of an array of zeros to 1:
		
		>>> a = np.zeros((2, 2, 2), dtype=int)
		>>> a[d3] = 1
		>>> a
		array([[[1, 0],
		        [0, 0]],
		       [[0, 0],
		        [0, 1]]])
	**/
	static public function diag_indices(n:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Return the indices to access the main diagonal of an n-dimensional array.
		
		See `diag_indices` for full details.
		
		Parameters
		----------
		arr : array, at least 2-D
		
		See Also
		--------
		diag_indices
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function diag_indices_from(arr:Dynamic):Dynamic;
	/**
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
	**/
	static public function diagflat(v:Dynamic, ?k:Dynamic):numpy.Ndarray;
	/**
		Return specified diagonals.
		
		If `a` is 2-D, returns the diagonal of `a` with the given offset,
		i.e., the collection of elements of the form ``a[i, i+offset]``.  If
		`a` has more than two dimensions, then the axes specified by `axis1`
		and `axis2` are used to determine the 2-D sub-array whose diagonal is
		returned.  The shape of the resulting array can be determined by
		removing `axis1` and `axis2` and appending an index to the right equal
		to the size of the resulting diagonals.
		
		In versions of NumPy prior to 1.7, this function always returned a new,
		independent array containing a copy of the values in the diagonal.
		
		In NumPy 1.7 and 1.8, it continues to return a copy of the diagonal,
		but depending on this fact is deprecated. Writing to the resulting
		array continues to work as it used to, but a FutureWarning is issued.
		
		Starting in NumPy 1.9 it returns a read-only view on the original array.
		Attempting to write to the resulting array will produce an error.
		
		In some future release, it will return a read/write view and writing to
		the returned array will alter your original array.  The returned array
		will have the same type as the input array.
		
		If you don't write to the array returned by this function, then you can
		just ignore all of the above.
		
		If you depend on the current behavior, then we suggest copying the
		returned array explicitly, i.e., use ``np.diagonal(a).copy()`` instead
		of just ``np.diagonal(a)``. This will work with both past and future
		versions of NumPy.
		
		Parameters
		----------
		a : array_like
		    Array from which the diagonals are taken.
		offset : int, optional
		    Offset of the diagonal from the main diagonal.  Can be positive or
		    negative.  Defaults to main diagonal (0).
		axis1 : int, optional
		    Axis to be used as the first axis of the 2-D sub-arrays from which
		    the diagonals should be taken.  Defaults to first axis (0).
		axis2 : int, optional
		    Axis to be used as the second axis of the 2-D sub-arrays from
		    which the diagonals should be taken. Defaults to second axis (1).
		
		Returns
		-------
		array_of_diagonals : ndarray
		    If `a` is 2-D, then a 1-D array containing the diagonal and of the
		    same type as `a` is returned unless `a` is a `matrix`, in which case
		    a 1-D array rather than a (2-D) `matrix` is returned in order to
		    maintain backward compatibility.
		
		    If ``a.ndim > 2``, then the dimensions specified by `axis1` and `axis2`
		    are removed, and a new axis inserted at the end corresponding to the
		    diagonal.
		
		Raises
		------
		ValueError
		    If the dimension of `a` is less than 2.
		
		See Also
		--------
		diag : MATLAB work-a-like for 1-D and 2-D arrays.
		diagflat : Create diagonal arrays.
		trace : Sum along diagonals.
		
		Examples
		--------
		>>> a = np.arange(4).reshape(2,2)
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> a.diagonal()
		array([0, 3])
		>>> a.diagonal(1)
		array([1])
		
		A 3-D example:
		
		>>> a = np.arange(8).reshape(2,2,2); a
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> a.diagonal(0,  # Main diagonals of two arrays created by skipping
		...            0,  # across the outer(left)-most axis last and
		...            1)  # the "middle" (row) axis first.
		array([[0, 6],
		       [1, 7]])
		
		The sub-arrays whose main diagonals we just obtained; note that each
		corresponds to fixing the right-most (column) axis, and that the
		diagonals are "packed" in rows.
		
		>>> a[:,:,0]  # main diagonal is [0 6]
		array([[0, 2],
		       [4, 6]])
		>>> a[:,:,1]  # main diagonal is [1 7]
		array([[1, 3],
		       [5, 7]])
		
		The anti-diagonal can be obtained by reversing the order of elements
		using either `numpy.flipud` or `numpy.fliplr`.
		
		>>> a = np.arange(9).reshape(3, 3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5],
		       [6, 7, 8]])
		>>> np.fliplr(a).diagonal()  # Horizontal flip
		array([2, 4, 6])
		>>> np.flipud(a).diagonal()  # Vertical flip
		array([6, 4, 2])
		
		Note that the order in which the diagonal is retrieved varies depending
		on the flip function.
	**/
	static public function diagonal(a:Dynamic, ?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic):numpy.Ndarray;
	/**
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
		diff : ndarray
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
	static public function diff(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?prepend:Dynamic, ?append:Dynamic):numpy.Ndarray;
	/**
		Return the indices of the bins to which each value in input array belongs.
		
		=========  =============  ============================
		`right`    order of bins  returned index `i` satisfies
		=========  =============  ============================
		``False``  increasing     ``bins[i-1] <= x < bins[i]``
		``True``   increasing     ``bins[i-1] < x <= bins[i]``
		``False``  decreasing     ``bins[i-1] > x >= bins[i]``
		``True``   decreasing     ``bins[i-1] >= x > bins[i]``
		=========  =============  ============================
		
		If values in `x` are beyond the bounds of `bins`, 0 or ``len(bins)`` is
		returned as appropriate.
		
		Parameters
		----------
		x : array_like
		    Input array to be binned. Prior to NumPy 1.10.0, this array had to
		    be 1-dimensional, but can now have any shape.
		bins : array_like
		    Array of bins. It has to be 1-dimensional and monotonic.
		right : bool, optional
		    Indicating whether the intervals include the right or the left bin
		    edge. Default behavior is (right==False) indicating that the interval
		    does not include the right edge. The left bin end is open in this
		    case, i.e., bins[i-1] <= x < bins[i] is the default behavior for
		    monotonically increasing bins.
		
		Returns
		-------
		indices : ndarray of ints
		    Output array of indices, of same shape as `x`.
		
		Raises
		------
		ValueError
		    If `bins` is not monotonic.
		TypeError
		    If the type of the input is complex.
		
		See Also
		--------
		bincount, histogram, unique, searchsorted
		
		Notes
		-----
		If values in `x` are such that they fall outside the bin range,
		attempting to index `bins` with the indices that `digitize` returns
		will result in an IndexError.
		
		.. versionadded:: 1.10.0
		
		`np.digitize` is  implemented in terms of `np.searchsorted`. This means
		that a binary search is used to bin the values, which scales much better
		for larger number of bins than the previous linear search. It also removes
		the requirement for the input array to be 1-dimensional.
		
		For monotonically _increasing_ `bins`, the following are equivalent::
		
		    np.digitize(x, bins, right=True)
		    np.searchsorted(bins, x, side='left')
		
		Note that as the order of the arguments are reversed, the side must be too.
		The `searchsorted` call is marginally faster, as it does not do any
		monotonicity checks. Perhaps more importantly, it supports all dtypes.
		
		Examples
		--------
		>>> x = np.array([0.2, 6.4, 3.0, 1.6])
		>>> bins = np.array([0.0, 1.0, 2.5, 4.0, 10.0])
		>>> inds = np.digitize(x, bins)
		>>> inds
		array([1, 4, 3, 2])
		>>> for n in range(x.size):
		...   print(bins[inds[n]-1], "<=", x[n], "<", bins[inds[n]])
		...
		0.0 <= 0.2 < 1.0
		4.0 <= 6.4 < 10.0
		2.5 <= 3.0 < 4.0
		1.0 <= 1.6 < 2.5
		
		>>> x = np.array([1.2, 10.0, 12.4, 15.5, 20.])
		>>> bins = np.array([0, 5, 10, 15, 20])
		>>> np.digitize(x,bins,right=True)
		array([1, 2, 3, 4, 4])
		>>> np.digitize(x,bins,right=False)
		array([1, 3, 3, 4, 5])
	**/
	static public function digitize(x:Dynamic, bins:Dynamic, ?right:Dynamic):Dynamic;
	/**
		Display a message on a device.
		
		Parameters
		----------
		mesg : str
		    Message to display.
		device : object
		    Device to write message. If None, defaults to ``sys.stdout`` which is
		    very similar to ``print``. `device` needs to have ``write()`` and
		    ``flush()`` methods.
		linefeed : bool, optional
		    Option whether to print a line feed or not. Defaults to True.
		
		Raises
		------
		AttributeError
		    If `device` does not have a ``write()`` or ``flush()`` method.
		
		Examples
		--------
		Besides ``sys.stdout``, a file-like object can also be used as it has
		both required methods:
		
		>>> from io import StringIO
		>>> buf = StringIO()
		>>> np.disp(u'"Display" in a file', device=buf)
		>>> buf.getvalue()
		'"Display" in a file\n'
	**/
	static public function disp(mesg:Dynamic, ?device:Dynamic, ?linefeed:Dynamic):Dynamic;
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
	static public function divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		divmod(x1, x2[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return element-wise quotient and remainder simultaneously.
		
		.. versionadded:: 1.13.0
		
		``np.divmod(x, y)`` is equivalent to ``(x // y, x % y)``, but faster
		because it avoids redundant work. It is used to implement the Python
		built-in function ``divmod`` on NumPy arrays.
		
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
		out1 : ndarray
		    Element-wise quotient resulting from floor division.
		    This is a scalar if both `x1` and `x2` are scalars.
		out2 : ndarray
		    Element-wise remainder from floor division.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent to Python's ``//`` operator.
		remainder : Equivalent to Python's ``%`` operator.
		modf : Equivalent to ``divmod(x, 1)`` for positive ``x`` with the return
		       values switched.
		
		Examples
		--------
		>>> np.divmod(np.arange(5), 3)
		(array([0, 0, 0, 1, 1]), array([0, 1, 2, 0, 1]))
		
		The `divmod` function can be used as a shorthand for ``np.divmod`` on
		ndarrays.
		
		>>> x = np.arange(5)
		>>> divmod(x, 3)
		(array([0, 0, 0, 1, 1]), array([0, 1, 2, 0, 1]))
	**/
	static public function divmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays. Specifically,
		
		- If both `a` and `b` are 1-D arrays, it is inner product of vectors
		  (without complex conjugation).
		
		- If both `a` and `b` are 2-D arrays, it is matrix multiplication,
		  but using :func:`matmul` or ``a @ b`` is preferred.
		
		- If either `a` or `b` is 0-D (scalar), it is equivalent to :func:`multiply`
		  and using ``numpy.multiply(a, b)`` or ``a * b`` is preferred.
		
		- If `a` is an N-D array and `b` is a 1-D array, it is a sum product over
		  the last axis of `a` and `b`.
		
		- If `a` is an N-D array and `b` is an M-D array (where ``M>=2``), it is a
		  sum product over the last axis of `a` and the second-to-last axis of `b`::
		
		    dot(a, b)[i,j,k,m] = sum(a[i,j,:] * b[k,:,m])
		
		Parameters
		----------
		a : array_like
		    First argument.
		b : array_like
		    Second argument.
		out : ndarray, optional
		    Output argument. This must have the exact kind that would be returned
		    if it was not used. In particular, it must have the right type, must be
		    C-contiguous, and its dtype must be the dtype that would be returned
		    for `dot(a,b)`. This is a performance feature. Therefore, if these
		    conditions are not met, an exception is raised, instead of attempting
		    to be flexible.
		
		Returns
		-------
		output : ndarray
		    Returns the dot product of `a` and `b`.  If `a` and `b` are both
		    scalars or both 1-D arrays then a scalar is returned; otherwise
		    an array is returned.
		    If `out` is given, then it is returned.
		
		Raises
		------
		ValueError
		    If the last dimension of `a` is not the same size as
		    the second-to-last dimension of `b`.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		matmul : '@' operator as method with out parameter.
		linalg.multi_dot : Chained dot product.
		
		Examples
		--------
		>>> np.dot(3, 4)
		12
		
		Neither argument is complex-conjugated:
		
		>>> np.dot([2j, 3j], [2j, 3j])
		(-13+0j)
		
		For 2-D arrays it is the matrix product:
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [[4, 1], [2, 2]]
		>>> np.dot(a, b)
		array([[4, 1],
		       [2, 2]])
		
		>>> a = np.arange(3*4*5*6).reshape((3,4,5,6))
		>>> b = np.arange(3*4*5*6)[::-1].reshape((5,4,6,3))
		>>> np.dot(a, b)[2,3,2,1,2,2]
		499128
		>>> sum(a[2,3,2,:] * b[1,2,:,2])
		499128
	**/
	static public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Split array into multiple sub-arrays along the 3rd axis (depth).
		
		Please refer to the `split` documentation.  `dsplit` is equivalent
		to `split` with ``axis=2``, the array is always split along the third
		axis provided the array dimension is greater than or equal to 3.
		
		See Also
		--------
		split : Split an array into multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> x = np.arange(16.0).reshape(2, 2, 4)
		>>> x
		array([[[ 0.,   1.,   2.,   3.],
		        [ 4.,   5.,   6.,   7.]],
		       [[ 8.,   9.,  10.,  11.],
		        [12.,  13.,  14.,  15.]]])
		>>> np.dsplit(x, 2)
		[array([[[ 0.,  1.],
		        [ 4.,  5.]],
		       [[ 8.,  9.],
		        [12., 13.]]]), array([[[ 2.,  3.],
		        [ 6.,  7.]],
		       [[10., 11.],
		        [14., 15.]]])]
		>>> np.dsplit(x, np.array([3, 6]))
		[array([[[ 0.,   1.,   2.],
		        [ 4.,   5.,   6.]],
		       [[ 8.,   9.,  10.],
		        [12.,  13.,  14.]]]),
		 array([[[ 3.],
		        [ 7.]],
		       [[11.],
		        [15.]]]),
		array([], shape=(2, 2, 0), dtype=float64)]
	**/
	static public function dsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		Stack arrays in sequence depth wise (along third axis).
		
		This is equivalent to concatenation along the third axis after 2-D arrays
		of shape `(M,N)` have been reshaped to `(M,N,1)` and 1-D arrays of shape
		`(N,)` have been reshaped to `(1,N,1)`. Rebuilds arrays divided by
		`dsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of arrays
		    The arrays must have the same shape along all but the third axis.
		    1-D or 2-D arrays must have the same shape.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays, will be at least 3-D.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		block : Assemble an nd-array from nested lists of blocks.
		vstack : Stack arrays in sequence vertically (row wise).
		hstack : Stack arrays in sequence horizontally (column wise).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		dsplit : Split array along third axis.
		
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
	**/
	static public function dstack(tup:Dynamic):numpy.Ndarray;
	static public var e : Dynamic;
	/**
		The differences between consecutive elements of an array.
		
		Parameters
		----------
		ary : array_like
		    If necessary, will be flattened before the differences are taken.
		to_end : array_like, optional
		    Number(s) to append at the end of the returned differences.
		to_begin : array_like, optional
		    Number(s) to prepend at the beginning of the returned differences.
		
		Returns
		-------
		ediff1d : ndarray
		    The differences. Loosely, this is ``ary.flat[1:] - ary.flat[:-1]``.
		
		See Also
		--------
		diff, gradient
		
		Notes
		-----
		When applied to masked arrays, this function drops the mask information
		if the `to_begin` and/or `to_end` parameters are used.
		
		Examples
		--------
		>>> x = np.array([1, 2, 4, 7, 0])
		>>> np.ediff1d(x)
		array([ 1,  2,  3, -7])
		
		>>> np.ediff1d(x, to_begin=-99, to_end=np.array([88, 99]))
		array([-99,   1,   2, ...,  -7,  88,  99])
		
		The returned array is always 1D.
		
		>>> y = [[1, 2, 4], [1, 6, 24]]
		>>> np.ediff1d(y)
		array([ 1,  2, -3,  5, 18])
	**/
	static public function ediff1d(ary:Dynamic, ?to_end:Dynamic, ?to_begin:Dynamic):numpy.Ndarray;
	/**
		einsum(subscripts, *operands, out=None, dtype=None, order='K',
		       casting='safe', optimize=False)
		
		Evaluates the Einstein summation convention on the operands.
		
		Using the Einstein summation convention, many common multi-dimensional,
		linear algebraic array operations can be represented in a simple fashion.
		In *implicit* mode `einsum` computes these values.
		
		In *explicit* mode, `einsum` provides further flexibility to compute
		other array operations that might not be considered classical Einstein
		summation operations, by disabling, or forcing summation over specified
		subscript labels.
		
		See the notes and examples for clarification.
		
		Parameters
		----------
		subscripts : str
		    Specifies the subscripts for summation as comma separated list of
		    subscript labels. An implicit (classical Einstein summation)
		    calculation is performed unless the explicit indicator '->' is
		    included as well as subscript labels of the precise output form.
		operands : list of array_like
		    These are the arrays for the operation.
		out : ndarray, optional
		    If provided, the calculation is done into this array.
		dtype : {data-type, None}, optional
		    If provided, forces the calculation to use the data type specified.
		    Note that you may have to also give a more liberal `casting`
		    parameter to allow the conversions. Default is None.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the output. 'C' means it should
		    be C contiguous. 'F' means it should be Fortran contiguous,
		    'A' means it should be 'F' if the inputs are all 'F', 'C' otherwise.
		    'K' means it should be as close to the layout as the inputs as
		    is possible, including arbitrarily permuted axes.
		    Default is 'K'.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.  Setting this to
		    'unsafe' is not recommended, as it can adversely affect accumulations.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		
		    Default is 'safe'.
		optimize : {False, True, 'greedy', 'optimal'}, optional
		    Controls if intermediate optimization should occur. No optimization
		    will occur if False and True will default to the 'greedy' algorithm.
		    Also accepts an explicit contraction list from the ``np.einsum_path``
		    function. See ``np.einsum_path`` for more details. Defaults to False.
		
		Returns
		-------
		output : ndarray
		    The calculation based on the Einstein summation convention.
		
		See Also
		--------
		einsum_path, dot, inner, outer, tensordot, linalg.multi_dot
		einops :
		    similar verbose interface is provided by
		    `einops <https://github.com/arogozhnikov/einops>`_ package to cover
		    additional operations: transpose, reshape/flatten, repeat/tile,
		    squeeze/unsqueeze and reductions.
		opt_einsum :
		    `opt_einsum <https://optimized-einsum.readthedocs.io/en/stable/>`_
		    optimizes contraction order for einsum-like expressions
		    in backend-agnostic manner.
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The Einstein summation convention can be used to compute
		many multi-dimensional, linear algebraic array operations. `einsum`
		provides a succinct way of representing these.
		
		A non-exhaustive list of these operations,
		which can be computed by `einsum`, is shown below along with examples:
		
		* Trace of an array, :py:func:`numpy.trace`.
		* Return a diagonal, :py:func:`numpy.diag`.
		* Array axis summations, :py:func:`numpy.sum`.
		* Transpositions and permutations, :py:func:`numpy.transpose`.
		* Matrix multiplication and dot product, :py:func:`numpy.matmul` :py:func:`numpy.dot`.
		* Vector inner and outer products, :py:func:`numpy.inner` :py:func:`numpy.outer`.
		* Broadcasting, element-wise and scalar multiplication, :py:func:`numpy.multiply`.
		* Tensor contractions, :py:func:`numpy.tensordot`.
		* Chained array operations, in efficient calculation order, :py:func:`numpy.einsum_path`.
		
		The subscripts string is a comma-separated list of subscript labels,
		where each label refers to a dimension of the corresponding operand.
		Whenever a label is repeated it is summed, so ``np.einsum('i,i', a, b)``
		is equivalent to :py:func:`np.inner(a,b) <numpy.inner>`. If a label
		appears only once, it is not summed, so ``np.einsum('i', a)`` produces a
		view of ``a`` with no changes. A further example ``np.einsum('ij,jk', a, b)``
		describes traditional matrix multiplication and is equivalent to
		:py:func:`np.matmul(a,b) <numpy.matmul>`. Repeated subscript labels in one
		operand take the diagonal. For example, ``np.einsum('ii', a)`` is equivalent
		to :py:func:`np.trace(a) <numpy.trace>`.
		
		In *implicit mode*, the chosen subscripts are important
		since the axes of the output are reordered alphabetically.  This
		means that ``np.einsum('ij', a)`` doesn't affect a 2D array, while
		``np.einsum('ji', a)`` takes its transpose. Additionally,
		``np.einsum('ij,jk', a, b)`` returns a matrix multiplication, while,
		``np.einsum('ij,jh', a, b)`` returns the transpose of the
		multiplication since subscript 'h' precedes subscript 'i'.
		
		In *explicit mode* the output can be directly controlled by
		specifying output subscript labels.  This requires the
		identifier '->' as well as the list of output subscript labels.
		This feature increases the flexibility of the function since
		summing can be disabled or forced when required. The call
		``np.einsum('i->', a)`` is like :py:func:`np.sum(a, axis=-1) <numpy.sum>`,
		and ``np.einsum('ii->i', a)`` is like :py:func:`np.diag(a) <numpy.diag>`.
		The difference is that `einsum` does not allow broadcasting by default.
		Additionally ``np.einsum('ij,jh->ih', a, b)`` directly specifies the
		order of the output subscript labels and therefore returns matrix
		multiplication, unlike the example above in implicit mode.
		
		To enable and control broadcasting, use an ellipsis.  Default
		NumPy-style broadcasting is done by adding an ellipsis
		to the left of each term, like ``np.einsum('...ii->...i', a)``.
		To take the trace along the first and last axes,
		you can do ``np.einsum('i...i', a)``, or to do a matrix-matrix
		product with the left-most indices instead of rightmost, one can do
		``np.einsum('ij...,jk...->ik...', a, b)``.
		
		When there is only one operand, no axes are summed, and no output
		parameter is provided, a view into the operand is returned instead
		of a new array.  Thus, taking the diagonal as ``np.einsum('ii->i', a)``
		produces a view (changed in version 1.10.0).
		
		`einsum` also provides an alternative way to provide the subscripts
		and operands as ``einsum(op0, sublist0, op1, sublist1, ..., [sublistout])``.
		If the output shape is not provided in this format `einsum` will be
		calculated in implicit mode, otherwise it will be performed explicitly.
		The examples below have corresponding `einsum` calls with the two
		parameter methods.
		
		.. versionadded:: 1.10.0
		
		Views returned from einsum are now writeable whenever the input array
		is writeable. For example, ``np.einsum('ijk...->kji...', a)`` will now
		have the same effect as :py:func:`np.swapaxes(a, 0, 2) <numpy.swapaxes>`
		and ``np.einsum('ii->i', a)`` will return a writeable view of the diagonal
		of a 2D array.
		
		.. versionadded:: 1.12.0
		
		Added the ``optimize`` argument which will optimize the contraction order
		of an einsum expression. For a contraction with three or more operands this
		can greatly increase the computational efficiency at the cost of a larger
		memory footprint during computation.
		
		Typically a 'greedy' algorithm is applied which empirical tests have shown
		returns the optimal path in the majority of cases. In some cases 'optimal'
		will return the superlative path through a more expensive, exhaustive search.
		For iterative calculations it may be advisable to calculate the optimal path
		once and reuse that path by supplying it as an argument. An example is given
		below.
		
		See :py:func:`numpy.einsum_path` for more details.
		
		Examples
		--------
		>>> a = np.arange(25).reshape(5,5)
		>>> b = np.arange(5)
		>>> c = np.arange(6).reshape(2,3)
		
		Trace of a matrix:
		
		>>> np.einsum('ii', a)
		60
		>>> np.einsum(a, [0,0])
		60
		>>> np.trace(a)
		60
		
		Extract the diagonal (requires explicit form):
		
		>>> np.einsum('ii->i', a)
		array([ 0,  6, 12, 18, 24])
		>>> np.einsum(a, [0,0], [0])
		array([ 0,  6, 12, 18, 24])
		>>> np.diag(a)
		array([ 0,  6, 12, 18, 24])
		
		Sum over an axis (requires explicit form):
		
		>>> np.einsum('ij->i', a)
		array([ 10,  35,  60,  85, 110])
		>>> np.einsum(a, [0,1], [0])
		array([ 10,  35,  60,  85, 110])
		>>> np.sum(a, axis=1)
		array([ 10,  35,  60,  85, 110])
		
		For higher dimensional arrays summing a single axis can be done with ellipsis:
		
		>>> np.einsum('...j->...', a)
		array([ 10,  35,  60,  85, 110])
		>>> np.einsum(a, [Ellipsis,1], [Ellipsis])
		array([ 10,  35,  60,  85, 110])
		
		Compute a matrix transpose, or reorder any number of axes:
		
		>>> np.einsum('ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum('ij->ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum(c, [1,0])
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.transpose(c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		
		Vector inner products:
		
		>>> np.einsum('i,i', b, b)
		30
		>>> np.einsum(b, [0], b, [0])
		30
		>>> np.inner(b,b)
		30
		
		Matrix vector multiplication:
		
		>>> np.einsum('ij,j', a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum(a, [0,1], b, [1])
		array([ 30,  80, 130, 180, 230])
		>>> np.dot(a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum('...j,j', a, b)
		array([ 30,  80, 130, 180, 230])
		
		Broadcasting and scalar multiplication:
		
		>>> np.einsum('..., ...', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(',ij', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(3, [Ellipsis], c, [Ellipsis])
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.multiply(3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		
		Vector outer product:
		
		>>> np.einsum('i,j', np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.einsum(np.arange(2)+1, [0], b, [1])
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.outer(np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		
		Tensor contraction:
		
		>>> a = np.arange(60.).reshape(3,4,5)
		>>> b = np.arange(24.).reshape(4,3,2)
		>>> np.einsum('ijk,jil->kl', a, b)
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		>>> np.einsum(a, [0,1,2], b, [1,0,3], [2,3])
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		>>> np.tensordot(a,b, axes=([1,0],[0,1]))
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		
		Writeable returned arrays (since version 1.10.0):
		
		>>> a = np.zeros((3, 3))
		>>> np.einsum('ii->i', a)[:] = 1
		>>> a
		array([[1., 0., 0.],
		       [0., 1., 0.],
		       [0., 0., 1.]])
		
		Example of ellipsis use:
		
		>>> a = np.arange(6).reshape((3,2))
		>>> b = np.arange(12).reshape((4,3))
		>>> np.einsum('ki,jk->ij', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('ki,...k->i...', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('k...,jk', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		
		Chained array operations. For more complicated contractions, speed ups
		might be achieved by repeatedly computing a 'greedy' path or pre-computing the
		'optimal' path and repeatedly applying it, using an
		`einsum_path` insertion (since version 1.12.0). Performance improvements can be
		particularly significant with larger arrays:
		
		>>> a = np.ones(64).reshape(2,4,8)
		
		Basic `einsum`: ~1520ms  (benchmarked on 3.1GHz Intel i5.)
		
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a)
		
		Sub-optimal `einsum` (due to repeated path calculation time): ~330ms
		
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize='optimal')
		
		Greedy `einsum` (faster optimal path approximation): ~160ms
		
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize='greedy')
		
		Optimal `einsum` (best usage pattern in some use cases): ~110ms
		
		>>> path = np.einsum_path('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize='optimal')[0]
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize=path)
	**/
	static public function einsum(?operands:python.VarArgs<Dynamic>, ?out:Dynamic, ?optimize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		einsum_path(subscripts, *operands, optimize='greedy')
		
		Evaluates the lowest cost contraction order for an einsum expression by
		considering the creation of intermediate arrays.
		
		Parameters
		----------
		subscripts : str
		    Specifies the subscripts for summation.
		*operands : list of array_like
		    These are the arrays for the operation.
		optimize : {bool, list, tuple, 'greedy', 'optimal'}
		    Choose the type of path. If a tuple is provided, the second argument is
		    assumed to be the maximum intermediate size created. If only a single
		    argument is provided the largest input or output array size is used
		    as a maximum intermediate size.
		
		    * if a list is given that starts with ``einsum_path``, uses this as the
		      contraction path
		    * if False no optimization is taken
		    * if True defaults to the 'greedy' algorithm
		    * 'optimal' An algorithm that combinatorially explores all possible
		      ways of contracting the listed tensors and choosest the least costly
		      path. Scales exponentially with the number of terms in the
		      contraction.
		    * 'greedy' An algorithm that chooses the best pair contraction
		      at each step. Effectively, this algorithm searches the largest inner,
		      Hadamard, and then outer products at each step. Scales cubically with
		      the number of terms in the contraction. Equivalent to the 'optimal'
		      path for most contractions.
		
		    Default is 'greedy'.
		
		Returns
		-------
		path : list of tuples
		    A list representation of the einsum path.
		string_repr : str
		    A printable representation of the einsum path.
		
		Notes
		-----
		The resulting path indicates which terms of the input contraction should be
		contracted first, the result of this contraction is then appended to the
		end of the contraction list. This list can then be iterated over until all
		intermediate contractions are complete.
		
		See Also
		--------
		einsum, linalg.multi_dot
		
		Examples
		--------
		
		We can begin with a chain dot example. In this case, it is optimal to
		contract the ``b`` and ``c`` tensors first as represented by the first
		element of the path ``(1, 2)``. The resulting tensor is added to the end
		of the contraction and the remaining contraction ``(0, 1)`` is then
		completed.
		
		>>> np.random.seed(123)
		>>> a = np.random.rand(2, 2)
		>>> b = np.random.rand(2, 5)
		>>> c = np.random.rand(5, 2)
		>>> path_info = np.einsum_path('ij,jk,kl->il', a, b, c, optimize='greedy')
		>>> print(path_info[0])
		['einsum_path', (1, 2), (0, 1)]
		>>> print(path_info[1])
		  Complete contraction:  ij,jk,kl->il # may vary
		         Naive scaling:  4
		     Optimized scaling:  3
		      Naive FLOP count:  1.600e+02
		  Optimized FLOP count:  5.600e+01
		   Theoretical speedup:  2.857
		  Largest intermediate:  4.000e+00 elements
		-------------------------------------------------------------------------
		scaling                  current                                remaining
		-------------------------------------------------------------------------
		   3                   kl,jk->jl                                ij,jl->il
		   3                   jl,ij->il                                   il->il
		
		
		A more complex index transformation example.
		
		>>> I = np.random.rand(10, 10, 10, 10)
		>>> C = np.random.rand(10, 10)
		>>> path_info = np.einsum_path('ea,fb,abcd,gc,hd->efgh', C, C, I, C, C,
		...                            optimize='greedy')
		
		>>> print(path_info[0])
		['einsum_path', (0, 2), (0, 3), (0, 2), (0, 1)]
		>>> print(path_info[1]) 
		  Complete contraction:  ea,fb,abcd,gc,hd->efgh # may vary
		         Naive scaling:  8
		     Optimized scaling:  5
		      Naive FLOP count:  8.000e+08
		  Optimized FLOP count:  8.000e+05
		   Theoretical speedup:  1000.000
		  Largest intermediate:  1.000e+04 elements
		--------------------------------------------------------------------------
		scaling                  current                                remaining
		--------------------------------------------------------------------------
		   5               abcd,ea->bcde                      fb,gc,hd,bcde->efgh
		   5               bcde,fb->cdef                         gc,hd,cdef->efgh
		   5               cdef,gc->defg                            hd,defg->efgh
		   5               defg,hd->efgh                               efgh->efgh
	**/
	static public function einsum_path(?operands:python.VarArgs<Dynamic>, ?optimize:Dynamic, ?einsum_call:Dynamic):Dynamic;
	/**
		Return a new matrix of given shape and type, without initializing entries.
		
		Parameters
		----------
		shape : int or tuple of int
		    Shape of the empty matrix.
		dtype : data-type, optional
		    Desired output data-type.
		order : {'C', 'F'}, optional
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		See Also
		--------
		empty_like, zeros
		
		Notes
		-----
		`empty`, unlike `zeros`, does not set the matrix values to zero,
		and may therefore be marginally faster.  On the other hand, it requires
		the user to manually set all the values in the array, and should be
		used with caution.
		
		Examples
		--------
		>>> import numpy.matlib
		>>> np.matlib.empty((2, 2))    # filled with random data
		matrix([[  6.76425276e-320,   9.79033856e-307], # random
		        [  7.39337286e-309,   3.22135945e-309]])
		>>> np.matlib.empty((2, 2), dtype=int)
		matrix([[ 6600475,        0], # random
		        [ 6586976, 22740995]])
	**/
	static public function empty(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
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
		out : ndarray
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
	static public function empty_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var euler_gamma : Dynamic;
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
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp2(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate `2**p` for all `p` in the input array.
		
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
		    Element-wise 2 to the power `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		power
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		
		
		Examples
		--------
		>>> np.exp2([2, 3])
		array([ 4.,  8.])
	**/
	static public function exp2(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		expm1(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate ``exp(x) - 1`` for all elements in the array.
		
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
		    Element-wise exponential minus one: ``out = exp(x) - 1``.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		log1p : ``log(1 + x)``, the inverse of expm1.
		
		
		Notes
		-----
		This function provides greater precision than ``exp(x) - 1``
		for small values of ``x``.
		
		Examples
		--------
		The true value of ``exp(1e-10) - 1`` is ``1.00000000005e-10`` to
		about 32 significant digits. This example shows the superiority of
		expm1 in this case.
		
		>>> np.expm1(1e-10)
		1.00000000005e-10
		>>> np.exp(1e-10) - 1
		1.000000082740371e-10
	**/
	static public function expm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the elements of an array that satisfy some condition.
		
		This is equivalent to ``np.compress(ravel(condition), ravel(arr))``.  If
		`condition` is boolean ``np.extract`` is equivalent to ``arr[condition]``.
		
		Note that `place` does the exact opposite of `extract`.
		
		Parameters
		----------
		condition : array_like
		    An array whose nonzero or True entries indicate the elements of `arr`
		    to extract.
		arr : array_like
		    Input array of the same size as `condition`.
		
		Returns
		-------
		extract : ndarray
		    Rank 1 array of values from `arr` where `condition` is True.
		
		See Also
		--------
		take, put, copyto, compress, place
		
		Examples
		--------
		>>> arr = np.arange(12).reshape((3, 4))
		>>> arr
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11]])
		>>> condition = np.mod(arr, 3)==0
		>>> condition
		array([[ True, False, False,  True],
		       [False, False,  True, False],
		       [False,  True, False, False]])
		>>> np.extract(condition, arr)
		array([0, 3, 6, 9])
		
		
		If `condition` is boolean:
		
		>>> arr[condition]
		array([0, 3, 6, 9])
	**/
	static public function extract(condition:Dynamic, arr:Dynamic):numpy.Ndarray;
	/**
		Return a matrix with ones on the diagonal and zeros elsewhere.
		
		Parameters
		----------
		n : int
		    Number of rows in the output.
		M : int, optional
		    Number of columns in the output, defaults to `n`.
		k : int, optional
		    Index of the diagonal: 0 refers to the main diagonal,
		    a positive value refers to an upper diagonal,
		    and a negative value to a lower diagonal.
		dtype : dtype, optional
		    Data-type of the returned matrix.
		order : {'C', 'F'}, optional
		    Whether the output should be stored in row-major (C-style) or
		    column-major (Fortran-style) order in memory.
		
		    .. versionadded:: 1.14.0
		
		Returns
		-------
		I : matrix
		    A `n` x `M` matrix where all elements are equal to zero,
		    except for the `k`-th diagonal, whose values are equal to one.
		
		See Also
		--------
		numpy.eye : Equivalent array function.
		identity : Square identity matrix.
		
		Examples
		--------
		>>> import numpy.matlib
		>>> np.matlib.eye(3, k=1, dtype=float)
		matrix([[0.,  1.,  0.],
		        [0.,  0.,  1.],
		        [0.,  0.,  0.]])
	**/
	static public function eye(n:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Matrix;
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
	static public function fabs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_fastCopyAndTranspose(a)
	**/
	static public function fastCopyAndTranspose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fill the main diagonal of the given array of any dimensionality.
		
		For an array `a` with ``a.ndim >= 2``, the diagonal is the list of
		locations with indices ``a[i, ..., i]`` all identical. This function
		modifies the input array in-place, it does not return a value.
		
		Parameters
		----------
		a : array, at least 2-D.
		  Array whose diagonal is to be filled, it gets modified in-place.
		
		val : scalar or array_like
		  Value(s) to write on the diagonal. If `val` is scalar, the value is
		  written along the diagonal. If array-like, the flattened `val` is
		  written along the diagonal, repeating if necessary to fill all
		  diagonal entries.
		
		wrap : bool
		  For tall matrices in NumPy version up to 1.6.2, the
		  diagonal "wrapped" after N columns. You can have this behavior
		  with this option. This affects only tall matrices.
		
		See also
		--------
		diag_indices, diag_indices_from
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		This functionality can be obtained via `diag_indices`, but internally
		this version uses a much faster implementation that never constructs the
		indices and uses simple slicing.
		
		Examples
		--------
		>>> a = np.zeros((3, 3), int)
		>>> np.fill_diagonal(a, 5)
		>>> a
		array([[5, 0, 0],
		       [0, 5, 0],
		       [0, 0, 5]])
		
		The same function can operate on a 4-D array:
		
		>>> a = np.zeros((3, 3, 3, 3), int)
		>>> np.fill_diagonal(a, 4)
		
		We only show a few blocks for clarity:
		
		>>> a[0, 0]
		array([[4, 0, 0],
		       [0, 0, 0],
		       [0, 0, 0]])
		>>> a[1, 1]
		array([[0, 0, 0],
		       [0, 4, 0],
		       [0, 0, 0]])
		>>> a[2, 2]
		array([[0, 0, 0],
		       [0, 0, 0],
		       [0, 0, 4]])
		
		The wrap option affects only tall matrices:
		
		>>> # tall matrices no wrap
		>>> a = np.zeros((5, 3), int)
		>>> np.fill_diagonal(a, 4)
		>>> a
		array([[4, 0, 0],
		       [0, 4, 0],
		       [0, 0, 4],
		       [0, 0, 0],
		       [0, 0, 0]])
		
		>>> # tall matrices wrap
		>>> a = np.zeros((5, 3), int)
		>>> np.fill_diagonal(a, 4, wrap=True)
		>>> a
		array([[4, 0, 0],
		       [0, 4, 0],
		       [0, 0, 4],
		       [0, 0, 0],
		       [4, 0, 0]])
		
		>>> # wide matrices
		>>> a = np.zeros((3, 5), int)
		>>> np.fill_diagonal(a, 4, wrap=True)
		>>> a
		array([[4, 0, 0, 0, 0],
		       [0, 4, 0, 0, 0],
		       [0, 0, 4, 0, 0]])
		
		The anti-diagonal can be filled by reversing the order of elements
		using either `numpy.flipud` or `numpy.fliplr`.
		
		>>> a = np.zeros((3, 3), int);
		>>> np.fill_diagonal(np.fliplr(a), [1,2,3])  # Horizontal flip
		>>> a
		array([[0, 0, 1],
		       [0, 2, 0],
		       [3, 0, 0]])
		>>> np.fill_diagonal(np.flipud(a), [1,2,3])  # Vertical flip
		>>> a
		array([[0, 0, 3],
		       [0, 2, 0],
		       [1, 0, 0]])
		
		Note that the order in which the diagonal is filled varies depending
		on the flip function.
	**/
	static public function fill_diagonal(a:Dynamic, val:Dynamic, ?wrap:Dynamic):Dynamic;
	/**
		Determine common type following standard coercion rules.
		
		Parameters
		----------
		array_types : sequence
		    A list of dtypes or dtype convertible objects representing arrays.
		scalar_types : sequence
		    A list of dtypes or dtype convertible objects representing scalars.
		
		Returns
		-------
		datatype : dtype
		    The common data type, which is the maximum of `array_types` ignoring
		    `scalar_types`, unless the maximum of `scalar_types` is of a
		    different kind (`dtype.kind`). If the kind is not understood, then
		    None is returned.
		
		See Also
		--------
		dtype, common_type, can_cast, mintypecode
		
		Examples
		--------
		>>> np.find_common_type([], [np.int64, np.float32, complex])
		dtype('complex128')
		>>> np.find_common_type([np.int64, np.float32], [])
		dtype('float64')
		
		The standard casting rules ensure that a scalar cannot up-cast an
		array unless the scalar is of a fundamentally different kind of data
		(i.e. under a different hierarchy in the data type hierarchy) then
		the array:
		
		>>> np.find_common_type([np.float32], [np.int64, np.float64])
		dtype('float32')
		
		Complex is of a different type, so it up-casts the float in the
		`array_types` argument:
		
		>>> np.find_common_type([np.float32], [complex])
		dtype('complex128')
		
		Type specifier strings are convertible to dtypes and can therefore
		be used instead of dtypes:
		
		>>> np.find_common_type(['f4', 'f4', 'i4'], ['c8'])
		dtype('complex128')
	**/
	static public function find_common_type(array_types:Dynamic, scalar_types:Dynamic):Dynamic;
	/**
		Round to nearest integer towards zero.
		
		Round an array of floats element-wise to nearest integer towards zero.
		The rounded values are returned as floats.
		
		Parameters
		----------
		x : array_like
		    An array of floats to be rounded
		out : ndarray, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the input broadcasts to. If not provided or None, a
		    freshly-allocated array is returned.
		
		Returns
		-------
		out : ndarray of floats
		    A float array with the same dimensions as the input.
		    If second argument is not supplied then a float array is returned
		    with the rounded values.
		
		    If a second argument is supplied the result is stored there.
		    The return value `out` is then a reference to that array.
		
		See Also
		--------
		rint, trunc, floor, ceil
		around : Round to given number of decimals
		
		Examples
		--------
		>>> np.fix(3.14)
		3.0
		>>> np.fix(3)
		3.0
		>>> np.fix([2.1, 2.9, -2.1, -2.9])
		array([ 2.,  2., -2., -2.])
	**/
	static public function fix(x:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return indices that are non-zero in the flattened version of a.
		
		This is equivalent to np.nonzero(np.ravel(a))[0].
		
		Parameters
		----------
		a : array_like
		    Input data.
		
		Returns
		-------
		res : ndarray
		    Output array, containing the indices of the elements of `a.ravel()`
		    that are non-zero.
		
		See Also
		--------
		nonzero : Return the indices of the non-zero elements of the input array.
		ravel : Return a 1-D array containing the elements of the input array.
		
		Examples
		--------
		>>> x = np.arange(-2, 3)
		>>> x
		array([-2, -1,  0,  1,  2])
		>>> np.flatnonzero(x)
		array([0, 1, 3, 4])
		
		Use the indices of the non-zero elements as an index array to extract
		these elements:
		
		>>> x.ravel()[np.flatnonzero(x)]
		array([-2, -1,  1,  2])
	**/
	static public function flatnonzero(a:Dynamic):numpy.Ndarray;
	/**
		Reverse the order of elements in an array along the given axis.
		
		The shape of the array is preserved, but the elements are reordered.
		
		.. versionadded:: 1.12.0
		
		Parameters
		----------
		m : array_like
		    Input array.
		axis : None or int or tuple of ints, optional
		     Axis or axes along which to flip over. The default,
		     axis=None, will flip over all of the axes of the input array.
		     If axis is negative it counts from the last to the first axis.
		
		     If axis is a tuple of ints, flipping is performed on all of the axes
		     specified in the tuple.
		
		     .. versionchanged:: 1.15.0
		        None and tuples of axes are supported
		
		Returns
		-------
		out : array_like
		    A view of `m` with the entries of axis reversed.  Since a view is
		    returned, this operation is done in constant time.
		
		See Also
		--------
		flipud : Flip an array vertically (axis=0).
		fliplr : Flip an array horizontally (axis=1).
		
		Notes
		-----
		flip(m, 0) is equivalent to flipud(m).
		
		flip(m, 1) is equivalent to fliplr(m).
		
		flip(m, n) corresponds to ``m[...,::-1,...]`` with ``::-1`` at position n.
		
		flip(m) corresponds to ``m[::-1,::-1,...,::-1]`` with ``::-1`` at all
		positions.
		
		flip(m, (0, 1)) corresponds to ``m[::-1,::-1,...]`` with ``::-1`` at
		position 0 and position 1.
		
		Examples
		--------
		>>> A = np.arange(8).reshape((2,2,2))
		>>> A
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> np.flip(A, 0)
		array([[[4, 5],
		        [6, 7]],
		       [[0, 1],
		        [2, 3]]])
		>>> np.flip(A, 1)
		array([[[2, 3],
		        [0, 1]],
		       [[6, 7],
		        [4, 5]]])
		>>> np.flip(A)
		array([[[7, 6],
		        [5, 4]],
		       [[3, 2],
		        [1, 0]]])
		>>> np.flip(A, (0, 2))
		array([[[5, 4],
		        [7, 6]],
		       [[1, 0],
		        [3, 2]]])
		>>> A = np.random.randn(3,4,5)
		>>> np.all(np.flip(A,2) == A[:,:,::-1,...])
		True
	**/
	static public function flip(m:Dynamic, ?axis:Dynamic):python.NativeIterable<Dynamic>;
	/**
		Reverse the order of elements along axis 1 (left/right).
		
		For a 2-D array, this flips the entries in each row in the left/right
		direction. Columns are preserved, but appear in a different order than
		before.
		
		Parameters
		----------
		m : array_like
		    Input array, must be at least 2-D.
		
		Returns
		-------
		f : ndarray
		    A view of `m` with the columns reversed.  Since a view
		    is returned, this operation is :math:`\mathcal O(1)`.
		
		See Also
		--------
		flipud : Flip array in the up/down direction.
		flip : Flip array in one or more dimensions.
		rot90 : Rotate array counterclockwise.
		
		Notes
		-----
		Equivalent to ``m[:,::-1]`` or ``np.flip(m, axis=1)``.
		Requires the array to be at least 2-D.
		
		Examples
		--------
		>>> A = np.diag([1.,2.,3.])
		>>> A
		array([[1.,  0.,  0.],
		       [0.,  2.,  0.],
		       [0.,  0.,  3.]])
		>>> np.fliplr(A)
		array([[0.,  0.,  1.],
		       [0.,  2.,  0.],
		       [3.,  0.,  0.]])
		
		>>> A = np.random.randn(2,3,5)
		>>> np.all(np.fliplr(A) == A[:,::-1,...])
		True
	**/
	static public function fliplr(m:Dynamic):numpy.Ndarray;
	/**
		Reverse the order of elements along axis 0 (up/down).
		
		For a 2-D array, this flips the entries in each column in the up/down
		direction. Rows are preserved, but appear in a different order than before.
		
		Parameters
		----------
		m : array_like
		    Input array.
		
		Returns
		-------
		out : array_like
		    A view of `m` with the rows reversed.  Since a view is
		    returned, this operation is :math:`\mathcal O(1)`.
		
		See Also
		--------
		fliplr : Flip array in the left/right direction.
		flip : Flip array in one or more dimensions.
		rot90 : Rotate array counterclockwise.
		
		Notes
		-----
		Equivalent to ``m[::-1, ...]`` or ``np.flip(m, axis=0)``.
		Requires the array to be at least 1-D.
		
		Examples
		--------
		>>> A = np.diag([1.0, 2, 3])
		>>> A
		array([[1.,  0.,  0.],
		       [0.,  2.,  0.],
		       [0.,  0.,  3.]])
		>>> np.flipud(A)
		array([[0.,  0.,  3.],
		       [0.,  2.,  0.],
		       [1.,  0.,  0.]])
		
		>>> A = np.random.randn(2,3,5)
		>>> np.all(np.flipud(A) == A[::-1,...])
		True
		
		>>> np.flipud([1,2])
		array([2, 1])
	**/
	static public function flipud(m:Dynamic):python.NativeIterable<Dynamic>;
	/**
		float_power(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		First array elements raised to powers from second array, element-wise.
		
		Raise each base in `x1` to the positionally-corresponding power in `x2`.
		`x1` and `x2` must be broadcastable to the same shape. This differs from
		the power function in that integers, float16, and float32  are promoted to
		floats with a minimum precision of float64 so that the result is always
		inexact.  The intent is that the function will return a usable result for
		negative powers and seldom overflow for positive powers.
		
		Negative values raised to a non-integral value will return ``nan``.
		To get complex results, cast the input to complex, or specify the
		``dtype`` to be ``complex`` (see the example below).
		
		.. versionadded:: 1.12.0
		
		Parameters
		----------
		x1 : array_like
		    The bases.
		x2 : array_like
		    The exponents.
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
		    The bases in `x1` raised to the exponents in `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		power : power function that preserves type
		
		Examples
		--------
		Cube each element in a list.
		
		>>> x1 = range(6)
		>>> x1
		[0, 1, 2, 3, 4, 5]
		>>> np.float_power(x1, 3)
		array([   0.,    1.,    8.,   27.,   64.,  125.])
		
		Raise the bases to different exponents.
		
		>>> x2 = [1.0, 2.0, 3.0, 3.0, 2.0, 1.0]
		>>> np.float_power(x1, x2)
		array([  0.,   1.,   8.,  27.,  16.,   5.])
		
		The effect of broadcasting.
		
		>>> x2 = np.array([[1, 2, 3, 3, 2, 1], [1, 2, 3, 3, 2, 1]])
		>>> x2
		array([[1, 2, 3, 3, 2, 1],
		       [1, 2, 3, 3, 2, 1]])
		>>> np.float_power(x1, x2)
		array([[  0.,   1.,   8.,  27.,  16.,   5.],
		       [  0.,   1.,   8.,  27.,  16.,   5.]])
		
		Negative values raised to a non-integral value will result in ``nan``
		(and a warning will be generated).
		
		>>> x3 = np.array([-1, -4])
		>>> with np.errstate(invalid='ignore'):
		...     p = np.float_power(x3, 1.5)
		...
		>>> p
		array([nan, nan])
		
		To get complex results, give the argument ``dtype=complex``.
		
		>>> np.float_power(x3, 1.5, dtype=complex)
		array([-1.83697020e-16-1.j, -1.46957616e-15-8.j])
	**/
	static public function float_power(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function floor_divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmax(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Element-wise maximum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		maxima. If one of the elements being compared is a NaN, then the
		non-nan element is returned. If both elements are NaNs then the first
		is returned.  The latter distinction is important for complex NaNs,
		which are defined as at least one of the real or imaginary parts being
		a NaN. The net effect is that NaNs are ignored when possible.
		
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
		fmin :
		    Element-wise minimum of two arrays, ignores NaNs.
		maximum :
		    Element-wise maximum of two arrays, propagates NaNs.
		amax :
		    The maximum value of an array along a given axis, propagates NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignores NaNs.
		
		minimum, amin, nanmin
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		The fmax is equivalent to ``np.where(x1 >= x2, x1, x2)`` when neither
		x1 nor x2 are NaNs, but it is faster and does proper broadcasting.
		
		Examples
		--------
		>>> np.fmax([2, 3, 4], [1, 5, 2])
		array([ 2.,  5.,  4.])
		
		>>> np.fmax(np.eye(2), [0.5, 2])
		array([[ 1. ,  2. ],
		       [ 0.5,  2. ]])
		
		>>> np.fmax([np.nan, 0, np.nan],[0, np.nan, np.nan])
		array([ 0.,  0., nan])
	**/
	static public function fmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmin(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Element-wise minimum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		minima. If one of the elements being compared is a NaN, then the
		non-nan element is returned. If both elements are NaNs then the first
		is returned.  The latter distinction is important for complex NaNs,
		which are defined as at least one of the real or imaginary parts being
		a NaN. The net effect is that NaNs are ignored when possible.
		
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
		fmax :
		    Element-wise maximum of two arrays, ignores NaNs.
		minimum :
		    Element-wise minimum of two arrays, propagates NaNs.
		amin :
		    The minimum value of an array along a given axis, propagates NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignores NaNs.
		
		maximum, amax, nanmax
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		The fmin is equivalent to ``np.where(x1 <= x2, x1, x2)`` when neither
		x1 nor x2 are NaNs, but it is faster and does proper broadcasting.
		
		Examples
		--------
		>>> np.fmin([2, 3, 4], [1, 5, 2])
		array([1, 3, 2])
		
		>>> np.fmin(np.eye(2), [0.5, 2])
		array([[ 0.5,  0. ],
		       [ 0. ,  1. ]])
		
		>>> np.fmin([np.nan, 0, np.nan],[0, np.nan, np.nan])
		array([ 0.,  0., nan])
	**/
	static public function fmin(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function fmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Format a floating-point scalar as a decimal string in positional notation.
		
		Provides control over rounding, trimming and padding. Uses and assumes
		IEEE unbiased rounding. Uses the "Dragon4" algorithm.
		
		Parameters
		----------
		x : python float or numpy floating scalar
		    Value to format.
		precision : non-negative integer or None, optional
		    Maximum number of digits to print. May be None if `unique` is
		    `True`, but must be an integer if unique is `False`.
		unique : boolean, optional
		    If `True`, use a digit-generation strategy which gives the shortest
		    representation which uniquely identifies the floating-point number from
		    other values of the same type, by judicious rounding. If `precision`
		    is given fewer digits than necessary can be printed, or if `min_digits`
		    is given more can be printed, in which cases the last digit is rounded
		    with unbiased rounding.
		    If `False`, digits are generated as if printing an infinite-precision
		    value and stopping after `precision` digits, rounding the remaining
		    value with unbiased rounding
		fractional : boolean, optional
		    If `True`, the cutoffs of `precision` and `min_digits` refer to the
		    total number of digits after the decimal point, including leading
		    zeros.
		    If `False`, `precision` and `min_digits` refer to the total number of
		    significant digits, before or after the decimal point, ignoring leading
		    zeros.
		trim : one of 'k', '.', '0', '-', optional
		    Controls post-processing trimming of trailing digits, as follows:
		
		    * 'k' : keep trailing zeros, keep decimal point (no trimming)
		    * '.' : trim all trailing zeros, leave decimal point
		    * '0' : trim all but the zero before the decimal point. Insert the
		      zero if it is missing.
		    * '-' : trim trailing zeros and any trailing decimal point
		sign : boolean, optional
		    Whether to show the sign for positive values.
		pad_left : non-negative integer, optional
		    Pad the left side of the string with whitespace until at least that
		    many characters are to the left of the decimal point.
		pad_right : non-negative integer, optional
		    Pad the right side of the string with whitespace until at least that
		    many characters are to the right of the decimal point.
		min_digits : non-negative integer or None, optional
		    Minimum number of digits to print. Only has an effect if `unique=True`
		    in which case additional digits past those necessary to uniquely
		    identify the value may be printed, rounding the last additional digit.
		    
		    -- versionadded:: 1.21.0
		
		Returns
		-------
		rep : string
		    The string representation of the floating point value
		
		See Also
		--------
		format_float_scientific
		
		Examples
		--------
		>>> np.format_float_positional(np.float32(np.pi))
		'3.1415927'
		>>> np.format_float_positional(np.float16(np.pi))
		'3.14'
		>>> np.format_float_positional(np.float16(0.3))
		'0.3'
		>>> np.format_float_positional(np.float16(0.3), unique=False, precision=10)
		'0.3000488281'
	**/
	static public function format_float_positional(x:Dynamic, ?precision:Dynamic, ?unique:Dynamic, ?fractional:Dynamic, ?trim:Dynamic, ?sign:Dynamic, ?pad_left:Dynamic, ?pad_right:Dynamic, ?min_digits:Dynamic):String;
	/**
		Format a floating-point scalar as a decimal string in scientific notation.
		
		Provides control over rounding, trimming and padding. Uses and assumes
		IEEE unbiased rounding. Uses the "Dragon4" algorithm.
		
		Parameters
		----------
		x : python float or numpy floating scalar
		    Value to format.
		precision : non-negative integer or None, optional
		    Maximum number of digits to print. May be None if `unique` is
		    `True`, but must be an integer if unique is `False`.
		unique : boolean, optional
		    If `True`, use a digit-generation strategy which gives the shortest
		    representation which uniquely identifies the floating-point number from
		    other values of the same type, by judicious rounding. If `precision`
		    is given fewer digits than necessary can be printed. If `min_digits`
		    is given more can be printed, in which cases the last digit is rounded
		    with unbiased rounding.
		    If `False`, digits are generated as if printing an infinite-precision
		    value and stopping after `precision` digits, rounding the remaining
		    value with unbiased rounding
		trim : one of 'k', '.', '0', '-', optional
		    Controls post-processing trimming of trailing digits, as follows:
		
		    * 'k' : keep trailing zeros, keep decimal point (no trimming)
		    * '.' : trim all trailing zeros, leave decimal point
		    * '0' : trim all but the zero before the decimal point. Insert the
		      zero if it is missing.
		    * '-' : trim trailing zeros and any trailing decimal point
		sign : boolean, optional
		    Whether to show the sign for positive values.
		pad_left : non-negative integer, optional
		    Pad the left side of the string with whitespace until at least that
		    many characters are to the left of the decimal point.
		exp_digits : non-negative integer, optional
		    Pad the exponent with zeros until it contains at least this many digits.
		    If omitted, the exponent will be at least 2 digits.
		min_digits : non-negative integer or None, optional
		    Minimum number of digits to print. This only has an effect for
		    `unique=True`. In that case more digits than necessary to uniquely
		    identify the value may be printed and rounded unbiased.
		
		    -- versionadded:: 1.21.0
		    
		Returns
		-------
		rep : string
		    The string representation of the floating point value
		
		See Also
		--------
		format_float_positional
		
		Examples
		--------
		>>> np.format_float_scientific(np.float32(np.pi))
		'3.1415927e+00'
		>>> s = np.float32(1.23e24)
		>>> np.format_float_scientific(s, unique=False, precision=15)
		'1.230000071797338e+24'
		>>> np.format_float_scientific(s, exp_digits=4)
		'1.23e+0024'
	**/
	static public function format_float_scientific(x:Dynamic, ?precision:Dynamic, ?unique:Dynamic, ?trim:Dynamic, ?sign:Dynamic, ?pad_left:Dynamic, ?exp_digits:Dynamic, ?min_digits:Dynamic):String;
	/**
		frexp(x[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Decompose the elements of x into mantissa and twos exponent.
		
		Returns (`mantissa`, `exponent`), where `x = mantissa * 2**exponent``.
		The mantissa lies in the open interval(-1, 1), while the twos
		exponent is a signed integer.
		
		Parameters
		----------
		x : array_like
		    Array of numbers to be decomposed.
		out1 : ndarray, optional
		    Output array for the mantissa. Must have the same shape as `x`.
		out2 : ndarray, optional
		    Output array for the exponent. Must have the same shape as `x`.
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
		mantissa : ndarray
		    Floating values between -1 and 1.
		    This is a scalar if `x` is a scalar.
		exponent : ndarray
		    Integer exponents of 2.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		ldexp : Compute ``y = x1 * 2**x2``, the inverse of `frexp`.
		
		Notes
		-----
		Complex dtypes are not supported, they will raise a TypeError.
		
		Examples
		--------
		>>> x = np.arange(9)
		>>> y1, y2 = np.frexp(x)
		>>> y1
		array([ 0.   ,  0.5  ,  0.5  ,  0.75 ,  0.5  ,  0.625,  0.75 ,  0.875,
		        0.5  ])
		>>> y2
		array([0, 1, 2, 2, 3, 3, 3, 3, 4])
		>>> y1 * 2**y2
		array([ 0.,  1.,  2.,  3.,  4.,  5.,  6.,  7.,  8.])
	**/
	static public function frexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		out : ndarray
		
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
	static public function frombuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromfile(file, dtype=float, count=-1, sep='', offset=0, *, like=None)
		
		Construct an array from data in a text or binary file.
		
		A highly efficient way of reading binary data with a known data-type,
		as well as parsing simply formatted text files.  Data written using the
		`tofile` method can be read using this function.
		
		Parameters
		----------
		file : file or str or Path
		    Open file object or filename.
		
		    .. versionchanged:: 1.17.0
		        `pathlib.Path` objects are now accepted.
		
		dtype : data-type
		    Data type of the returned array.
		    For binary files, it is used to determine the size and byte-order
		    of the items in the file.
		    Most builtin numeric types are supported and extension types may be supported.
		
		    .. versionadded:: 1.18.0
		        Complex dtypes.
		
		count : int
		    Number of items to read. ``-1`` means all items (i.e., the complete
		    file).
		sep : str
		    Separator between items if file is a text file.
		    Empty ("") separator means the file should be treated as binary.
		    Spaces (" ") in the separator match zero or more whitespace characters.
		    A separator consisting only of spaces must match at least one
		    whitespace.
		offset : int
		    The offset (in bytes) from the file's current position. Defaults to 0.
		    Only permitted for binary files.
		
		    .. versionadded:: 1.17.0
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		See also
		--------
		load, save
		ndarray.tofile
		loadtxt : More flexible way of loading data from a text file.
		
		Notes
		-----
		Do not rely on the combination of `tofile` and `fromfile` for
		data storage, as the binary files generated are not platform
		independent.  In particular, no byte-order or data-type information is
		saved.  Data can be stored in the platform independent ``.npy`` format
		using `save` and `load` instead.
		
		Examples
		--------
		Construct an ndarray:
		
		>>> dt = np.dtype([('time', [('min', np.int64), ('sec', np.int64)]),
		...                ('temp', float)])
		>>> x = np.zeros((1,), dtype=dt)
		>>> x['time']['min'] = 10; x['temp'] = 98.25
		>>> x
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i8'), ('sec', '<i8')]), ('temp', '<f8')])
		
		Save the raw data to disk:
		
		>>> import tempfile
		>>> fname = tempfile.mkstemp()[1]
		>>> x.tofile(fname)
		
		Read the raw data from disk:
		
		>>> np.fromfile(fname, dtype=dt)
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i8'), ('sec', '<i8')]), ('temp', '<f8')])
		
		The recommended way to store and load data:
		
		>>> np.save(fname, x)
		>>> np.load(fname + '.npy')
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i8'), ('sec', '<i8')]), ('temp', '<f8')])
	**/
	static public function fromfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
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
		fromfunction : any
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
	static public function fromfunction(_function:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?like:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		fromiter(iter, dtype, count=-1, *, like=None)
		
		Create a new 1-dimensional array from an iterable object.
		
		Parameters
		----------
		iter : iterable object
		    An iterable object providing data for the array.
		dtype : data-type
		    The data-type of the returned array.
		count : int, optional
		    The number of items to read from *iterable*.  The default is -1,
		    which means all data is read.
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
		    The output array.
		
		Notes
		-----
		Specify `count` to improve performance.  It allows ``fromiter`` to
		pre-allocate the output array, instead of resizing it on demand.
		
		Examples
		--------
		>>> iterable = (x*x for x in range(5))
		>>> np.fromiter(iterable, float)
		array([  0.,   1.,   4.,   9.,  16.])
	**/
	static public function fromiter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frompyfunc(func, /, nin, nout, *[, identity])
		
		Takes an arbitrary Python function and returns a NumPy ufunc.
		
		Can be used, for example, to add broadcasting to a built-in Python
		function (see Examples section).
		
		Parameters
		----------
		func : Python function object
		    An arbitrary Python function.
		nin : int
		    The number of input arguments.
		nout : int
		    The number of objects returned by `func`.
		identity : object, optional
		    The value to use for the `~numpy.ufunc.identity` attribute of the resulting
		    object. If specified, this is equivalent to setting the underlying
		    C ``identity`` field to ``PyUFunc_IdentityValue``.
		    If omitted, the identity is set to ``PyUFunc_None``. Note that this is
		    _not_ equivalent to setting the identity to ``None``, which implies the
		    operation is reorderable.
		
		Returns
		-------
		out : ufunc
		    Returns a NumPy universal function (``ufunc``) object.
		
		See Also
		--------
		vectorize : Evaluates pyfunc over input arrays using broadcasting rules of numpy.
		
		Notes
		-----
		The returned ufunc always returns PyObject arrays.
		
		Examples
		--------
		Use frompyfunc to add broadcasting to the Python function ``oct``:
		
		>>> oct_array = np.frompyfunc(oct, 1, 1)
		>>> oct_array(np.array((10, 30, 100)))
		array(['0o12', '0o36', '0o144'], dtype=object)
		>>> np.array((oct(10), oct(30), oct(100))) # for comparison
		array(['0o12', '0o36', '0o144'], dtype='<U5')
	**/
	static public function frompyfunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Construct an array from a text file, using regular expression parsing.
		
		The returned array is always a structured array, and is constructed from
		all matches of the regular expression in the file. Groups in the regular
		expression are converted to fields of the structured array.
		
		Parameters
		----------
		file : path or file
		    Filename or file object to read.
		
		    .. versionchanged:: 1.22.0
		        Now accepts `os.PathLike` implementations.
		regexp : str or regexp
		    Regular expression used to parse the file.
		    Groups in the regular expression correspond to fields in the dtype.
		dtype : dtype or list of dtypes
		    Dtype for the structured array; must be a structured datatype.
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply to input streams.
		
		    .. versionadded:: 1.14.0
		
		Returns
		-------
		output : ndarray
		    The output array, containing the part of the content of `file` that
		    was matched by `regexp`. `output` is always a structured array.
		
		Raises
		------
		TypeError
		    When `dtype` is not a valid dtype for a structured array.
		
		See Also
		--------
		fromstring, loadtxt
		
		Notes
		-----
		Dtypes for structured arrays can be specified in several forms, but all
		forms specify at least the data type and field name. For details see
		`basics.rec`.
		
		Examples
		--------
		>>> from io import StringIO
		>>> text = StringIO("1312 foo\n1534  bar\n444   qux")
		
		>>> regexp = r"(\d+)\s+(...)"  # match [digits, whitespace, anything]
		>>> output = np.fromregex(text, regexp,
		...                       [('num', np.int64), ('key', 'S3')])
		>>> output
		array([(1312, b'foo'), (1534, b'bar'), ( 444, b'qux')],
		      dtype=[('num', '<i8'), ('key', 'S3')])
		>>> output['num']
		array([1312, 1534,  444])
	**/
	static public function fromregex(file:Dynamic, regexp:Dynamic, dtype:Dynamic, ?encoding:Dynamic):numpy.Ndarray;
	/**
		fromstring(string, dtype=float, count=-1, *, sep, like=None)
		
		A new 1-D array initialized from text data in a string.
		
		Parameters
		----------
		string : str
		    A string containing the data.
		dtype : data-type, optional
		    The data type of the array; default: float.  For binary input data,
		    the data must be in exactly this format. Most builtin numeric types are
		    supported and extension types may be supported.
		
		    .. versionadded:: 1.18.0
		        Complex dtypes.
		
		count : int, optional
		    Read this number of `dtype` elements from the data.  If this is
		    negative (the default), the count will be determined from the
		    length of the data.
		sep : str, optional
		    The string separating numbers in the data; extra whitespace between
		    elements is also ignored.
		
		    .. deprecated:: 1.14
		        Passing ``sep=''``, the default, is deprecated since it will
		        trigger the deprecated binary mode of this function. This mode
		        interprets `string` as binary bytes, rather than ASCII text with
		        decimal numbers, an operation which is better spelt
		        ``frombuffer(string, dtype, count)``. If `string` contains unicode
		        text, the binary mode of `fromstring` will first encode it into
		        bytes using either utf-8 (python 3) or the default encoding
		        (python 2), neither of which produce sane results.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		arr : ndarray
		    The constructed array.
		
		Raises
		------
		ValueError
		    If the string is not the correct size to satisfy the requested
		    `dtype` and `count`.
		
		See Also
		--------
		frombuffer, fromfile, fromiter
		
		Examples
		--------
		>>> np.fromstring('1 2', dtype=int, sep=' ')
		array([1, 2])
		>>> np.fromstring('1, 2', dtype=int, sep=',')
		array([1, 2])
	**/
	static public function fromstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a new array of given shape and type, filled with `fill_value`.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		fill_value : scalar or array_like
		    Fill value.
		dtype : data-type, optional
		    The desired data-type for the array  The default, None, means
		     ``np.array(fill_value).dtype``.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
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
		    Array of `fill_value` with the given shape, dtype, and order.
		
		See Also
		--------
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		
		Examples
		--------
		>>> np.full((2, 2), np.inf)
		array([[inf, inf],
		       [inf, inf]])
		>>> np.full((2, 2), 10)
		array([[10, 10],
		       [10, 10]])
		
		>>> np.full((2, 2), [1, 2])
		array([[1, 2],
		       [1, 2]])
	**/
	static public function full(shape:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?like:Dynamic):numpy.Ndarray;
	/**
		Return a full array with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of
		    the returned array.
		fill_value : scalar
		    Fill value.
		dtype : data-type, optional
		    Overrides the data type of the result.
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible.
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
		out : ndarray
		    Array of `fill_value` with the same shape and type as `a`.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full : Return a new array of given shape filled with value.
		
		Examples
		--------
		>>> x = np.arange(6, dtype=int)
		>>> np.full_like(x, 1)
		array([1, 1, 1, 1, 1, 1])
		>>> np.full_like(x, 0.1)
		array([0, 0, 0, 0, 0, 0])
		>>> np.full_like(x, 0.1, dtype=np.double)
		array([0.1, 0.1, 0.1, 0.1, 0.1, 0.1])
		>>> np.full_like(x, np.nan, dtype=np.double)
		array([nan, nan, nan, nan, nan, nan])
		
		>>> y = np.arange(6, dtype=np.double)
		>>> np.full_like(y, 0.1)
		array([0.1, 0.1, 0.1, 0.1, 0.1, 0.1])
	**/
	static public function full_like(a:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic, ?shape:Dynamic):numpy.Ndarray;
	/**
		gcd(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the greatest common divisor of ``|x1|`` and ``|x2|``
		
		Parameters
		----------
		x1, x2 : array_like, int
		    Arrays of values.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		
		Returns
		-------
		y : ndarray or scalar
		    The greatest common divisor of the absolute value of the inputs
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		lcm : The lowest common multiple
		
		Examples
		--------
		>>> np.gcd(12, 20)
		4
		>>> np.gcd.reduce([15, 25, 35])
		5
		>>> np.gcd(np.arange(6), 20)
		array([20,  1,  2,  1,  4,  5])
	**/
	static public function gcd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Load data from a text file, with missing values handled as specified.
		
		Each line past the first `skip_header` lines is split at the `delimiter`
		character, and characters following the `comments` character are discarded.
		
		Parameters
		----------
		fname : file, str, pathlib.Path, list of str, generator
		    File, filename, list, or generator to read.  If the filename
		    extension is ``.gz`` or ``.bz2``, the file is first decompressed. Note
		    that generators must return bytes or strings. The strings
		    in a list or produced by a generator are treated as lines.
		dtype : dtype, optional
		    Data type of the resulting array.
		    If None, the dtypes will be determined by the contents of each
		    column, individually.
		comments : str, optional
		    The character used to indicate the start of a comment.
		    All the characters occurring on a line after a comment are discarded.
		delimiter : str, int, or sequence, optional
		    The string used to separate values.  By default, any consecutive
		    whitespaces act as delimiter.  An integer or sequence of integers
		    can also be provided as width(s) of each field.
		skiprows : int, optional
		    `skiprows` was removed in numpy 1.10. Please use `skip_header` instead.
		skip_header : int, optional
		    The number of lines to skip at the beginning of the file.
		skip_footer : int, optional
		    The number of lines to skip at the end of the file.
		converters : variable, optional
		    The set of functions that convert the data of a column to a value.
		    The converters can also be used to provide a default value
		    for missing data: ``converters = {3: lambda s: float(s or 0)}``.
		missing : variable, optional
		    `missing` was removed in numpy 1.10. Please use `missing_values`
		    instead.
		missing_values : variable, optional
		    The set of strings corresponding to missing data.
		filling_values : variable, optional
		    The set of values to be used as default when the data are missing.
		usecols : sequence, optional
		    Which columns to read, with 0 being the first.  For example,
		    ``usecols = (1, 4, 5)`` will extract the 2nd, 5th and 6th columns.
		names : {None, True, str, sequence}, optional
		    If `names` is True, the field names are read from the first line after
		    the first `skip_header` lines. This line can optionally be preceded
		    by a comment delimiter. If `names` is a sequence or a single-string of
		    comma-separated names, the names will be used to define the field names
		    in a structured dtype. If `names` is None, the names of the dtype
		    fields will be used, if any.
		excludelist : sequence, optional
		    A list of names to exclude. This list is appended to the default list
		    ['return','file','print']. Excluded names are appended with an
		    underscore: for example, `file` would become `file_`.
		deletechars : str, optional
		    A string combining invalid characters that must be deleted from the
		    names.
		defaultfmt : str, optional
		    A format used to define default field names, such as "f%i" or "f_%02i".
		autostrip : bool, optional
		    Whether to automatically strip white spaces from the variables.
		replace_space : char, optional
		    Character(s) used in replacement of white spaces in the variable
		    names. By default, use a '_'.
		case_sensitive : {True, False, 'upper', 'lower'}, optional
		    If True, field names are case sensitive.
		    If False or 'upper', field names are converted to upper case.
		    If 'lower', field names are converted to lower case.
		unpack : bool, optional
		    If True, the returned array is transposed, so that arguments may be
		    unpacked using ``x, y, z = genfromtxt(...)``.  When used with a
		    structured data-type, arrays are returned for each field.
		    Default is False.
		usemask : bool, optional
		    If True, return a masked array.
		    If False, return a regular array.
		loose : bool, optional
		    If True, do not raise errors for invalid values.
		invalid_raise : bool, optional
		    If True, an exception is raised if an inconsistency is detected in the
		    number of columns.
		    If False, a warning is emitted and the offending lines are skipped.
		max_rows : int,  optional
		    The maximum number of rows to read. Must not be used with skip_footer
		    at the same time.  If given, the value must be at least 1. Default is
		    to read the entire file.
		
		    .. versionadded:: 1.10.0
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply when `fname` is
		    a file object.  The special value 'bytes' enables backward compatibility
		    workarounds that ensure that you receive byte arrays when possible
		    and passes latin1 encoded strings to converters. Override this value to
		    receive unicode arrays and pass strings as input to converters.  If set
		    to None the system default is used. The default value is 'bytes'.
		
		    .. versionadded:: 1.14.0
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
		    Data read from the text file. If `usemask` is True, this is a
		    masked array.
		
		See Also
		--------
		numpy.loadtxt : equivalent function when no data is missing.
		
		Notes
		-----
		* When spaces are used as delimiters, or when no delimiter has been given
		  as input, there should not be any missing data between two fields.
		* When the variables are named (either by a flexible dtype or with `names`),
		  there must not be any header in the file (else a ValueError
		  exception is raised).
		* Individual values are not stripped of spaces by default.
		  When using a custom converter, make sure the function does remove spaces.
		
		References
		----------
		.. [1] NumPy User Guide, section `I/O with NumPy
		       <https://docs.scipy.org/doc/numpy/user/basics.io.genfromtxt.html>`_.
		
		Examples
		--------
		>>> from io import StringIO
		>>> import numpy as np
		
		Comma delimited file with mixed dtype
		
		>>> s = StringIO(u"1,1.3,abcde")
		>>> data = np.genfromtxt(s, dtype=[('myint','i8'),('myfloat','f8'),
		... ('mystring','S5')], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		Using dtype = None
		
		>>> _ = s.seek(0) # needed for StringIO example only
		>>> data = np.genfromtxt(s, dtype=None,
		... names = ['myint','myfloat','mystring'], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		Specifying dtype and names
		
		>>> _ = s.seek(0)
		>>> data = np.genfromtxt(s, dtype="i8,f8,S5",
		... names=['myint','myfloat','mystring'], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		An example with fixed-width columns
		
		>>> s = StringIO(u"11.3abcde")
		>>> data = np.genfromtxt(s, dtype=None, names=['intvar','fltvar','strvar'],
		...     delimiter=[1,3,5])
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('intvar', '<i8'), ('fltvar', '<f8'), ('strvar', 'S5')])
		
		An example to show comments
		
		>>> f = StringIO('''
		... text,# of chars
		... hello world,11
		... numpy,5''')
		>>> np.genfromtxt(f, dtype='S12,S12', delimiter=',')
		array([(b'text', b''), (b'hello world', b'11'), (b'numpy', b'5')],
		  dtype=[('f0', 'S12'), ('f1', 'S12')])
	**/
	static public function genfromtxt(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?skip_header:Dynamic, ?skip_footer:Dynamic, ?converters:Dynamic, ?missing_values:Dynamic, ?filling_values:Dynamic, ?usecols:Dynamic, ?names:Dynamic, ?excludelist:Dynamic, ?deletechars:Dynamic, ?replace_space:Dynamic, ?autostrip:Dynamic, ?case_sensitive:Dynamic, ?defaultfmt:Dynamic, ?unpack:Dynamic, ?usemask:Dynamic, ?loose:Dynamic, ?invalid_raise:Dynamic, ?max_rows:Dynamic, ?encoding:Dynamic, ?like:Dynamic):numpy.Ndarray;
	/**
		Return numbers spaced evenly on a log scale (a geometric progression).
		
		This is similar to `logspace`, but with endpoints specified directly.
		Each output sample is a constant multiple of the previous.
		
		.. versionchanged:: 1.16.0
		    Non-scalar `start` and `stop` are now supported.
		
		Parameters
		----------
		start : array_like
		    The starting value of the sequence.
		stop : array_like
		    The final value of the sequence, unless `endpoint` is False.
		    In that case, ``num + 1`` values are spaced over the
		    interval in log-space, of which all but the last (a sequence of
		    length `num`) are returned.
		num : integer, optional
		    Number of samples to generate.  Default is 50.
		endpoint : boolean, optional
		    If true, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, the data type
		    is inferred from `start` and `stop`. The inferred dtype will never be
		    an integer; `float` is chosen even if the arguments would produce an
		    array of integers.
		axis : int, optional
		    The axis in the result to store the samples.  Relevant only if start
		    or stop are array-like.  By default (0), the samples will be along a
		    new axis inserted at the beginning. Use -1 to get an axis at the end.
		
		    .. versionadded:: 1.16.0
		
		Returns
		-------
		samples : ndarray
		    `num` samples, equally spaced on a log scale.
		
		See Also
		--------
		logspace : Similar to geomspace, but with endpoints specified using log
		           and base.
		linspace : Similar to geomspace, but with arithmetic instead of geometric
		           progression.
		arange : Similar to linspace, with the step size specified instead of the
		         number of samples.
		
		Notes
		-----
		If the inputs or dtype are complex, the output will follow a logarithmic
		spiral in the complex plane.  (There are an infinite number of spirals
		passing through two points; the output will follow the shortest such path.)
		
		Examples
		--------
		>>> np.geomspace(1, 1000, num=4)
		array([    1.,    10.,   100.,  1000.])
		>>> np.geomspace(1, 1000, num=3, endpoint=False)
		array([   1.,   10.,  100.])
		>>> np.geomspace(1, 1000, num=4, endpoint=False)
		array([   1.        ,    5.62341325,   31.6227766 ,  177.827941  ])
		>>> np.geomspace(1, 256, num=9)
		array([   1.,    2.,    4.,    8.,   16.,   32.,   64.,  128.,  256.])
		
		Note that the above may not produce exact integers:
		
		>>> np.geomspace(1, 256, num=9, dtype=int)
		array([  1,   2,   4,   7,  16,  32,  63, 127, 256])
		>>> np.around(np.geomspace(1, 256, num=9)).astype(int)
		array([  1,   2,   4,   8,  16,  32,  64, 128, 256])
		
		Negative, decreasing, and complex inputs are allowed:
		
		>>> np.geomspace(1000, 1, num=4)
		array([1000.,  100.,   10.,    1.])
		>>> np.geomspace(-1000, -1, num=4)
		array([-1000.,  -100.,   -10.,    -1.])
		>>> np.geomspace(1j, 1000j, num=4)  # Straight line
		array([0.   +1.j, 0.  +10.j, 0. +100.j, 0.+1000.j])
		>>> np.geomspace(-1+0j, 1+0j, num=5)  # Circle
		array([-1.00000000e+00+1.22464680e-16j, -7.07106781e-01+7.07106781e-01j,
		        6.12323400e-17+1.00000000e+00j,  7.07106781e-01+7.07106781e-01j,
		        1.00000000e+00+0.00000000e+00j])
		
		Graphical illustration of `endpoint` parameter:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 10
		>>> y = np.zeros(N)
		>>> plt.semilogx(np.geomspace(1, 1000, N, endpoint=True), y + 1, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.semilogx(np.geomspace(1, 1000, N, endpoint=False), y + 2, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.axis([0.5, 2000, 0, 3])
		[0.5, 2000, 0, 3]
		>>> plt.grid(True, color='0.7', linestyle='-', which='both', axis='both')
		>>> plt.show()
	**/
	static public function geomspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Find the wrapper for the array with the highest priority.
		
		In case of ties, leftmost wins. If no wrapper is found, return None
	**/
	static public function get_array_wrap(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return the directory that contains the NumPy \*.h header files.
		
		Extension modules that need to compile against NumPy should use this
		function to locate the appropriate include directory.
		
		Notes
		-----
		When using ``distutils``, for example in ``setup.py``.
		::
		
		    import numpy as np
		    ...
		    Extension('extension_name', ...
		            include_dirs=[np.get_include()])
		    ...
	**/
	static public function get_include():Dynamic;
	/**
		Return the current print options.
		
		Returns
		-------
		print_opts : dict
		    Dictionary of current print options with keys
		
		      - precision : int
		      - threshold : int
		      - edgeitems : int
		      - linewidth : int
		      - suppress : bool
		      - nanstr : str
		      - infstr : str
		      - formatter : dict of callables
		      - sign : str
		
		    For a full description of these options, see `set_printoptions`.
		
		See Also
		--------
		set_printoptions, printoptions, set_string_function
	**/
	static public function get_printoptions():python.Dict<Dynamic, Dynamic>;
	/**
		Return the size of the buffer used in ufuncs.
		
		Returns
		-------
		getbufsize : int
		    Size of ufunc buffer in bytes.
	**/
	static public function getbufsize():Int;
	/**
		Get the current way of handling floating-point errors.
		
		Returns
		-------
		res : dict
		    A dictionary with keys "divide", "over", "under", and "invalid",
		    whose values are from the strings "ignore", "print", "log", "warn",
		    "raise", and "call". The keys represent possible floating-point
		    exceptions, and the values define how these exceptions are handled.
		
		See Also
		--------
		geterrcall, seterr, seterrcall
		
		Notes
		-----
		For complete documentation of the types of floating-point exceptions and
		treatment options, see `seterr`.
		
		Examples
		--------
		>>> np.geterr()
		{'divide': 'warn', 'over': 'warn', 'under': 'ignore', 'invalid': 'warn'}
		>>> np.arange(3.) / np.arange(3.)
		array([nan,  1.,  1.])
		
		>>> oldsettings = np.seterr(all='warn', over='raise')
		>>> np.geterr()
		{'divide': 'warn', 'over': 'raise', 'under': 'warn', 'invalid': 'warn'}
		>>> np.arange(3.) / np.arange(3.)
		array([nan,  1.,  1.])
	**/
	static public function geterr():python.Dict<Dynamic, Dynamic>;
	/**
		Return the current callback function used on floating-point errors.
		
		When the error handling for a floating-point error (one of "divide",
		"over", "under", or "invalid") is set to 'call' or 'log', the function
		that is called or the log instance that is written to is returned by
		`geterrcall`. This function or log instance has been set with
		`seterrcall`.
		
		Returns
		-------
		errobj : callable, log instance or None
		    The current error handler. If no handler was set through `seterrcall`,
		    ``None`` is returned.
		
		See Also
		--------
		seterrcall, seterr, geterr
		
		Notes
		-----
		For complete documentation of the types of floating-point exceptions and
		treatment options, see `seterr`.
		
		Examples
		--------
		>>> np.geterrcall()  # we did not yet set a handler, returns None
		
		>>> oldsettings = np.seterr(all='call')
		>>> def err_handler(type, flag):
		...     print("Floating point error (%s), with flag %s" % (type, flag))
		>>> oldhandler = np.seterrcall(err_handler)
		>>> np.array([1, 2, 3]) / 0.0
		Floating point error (divide by zero), with flag 1
		array([inf, inf, inf])
		
		>>> cur_handler = np.geterrcall()
		>>> cur_handler is err_handler
		True
	**/
	static public function geterrcall():Dynamic;
	/**
		geterrobj()
		
		Return the current object that defines floating-point error handling.
		
		The error object contains all information that defines the error handling
		behavior in NumPy. `geterrobj` is used internally by the other
		functions that get and set error handling behavior (`geterr`, `seterr`,
		`geterrcall`, `seterrcall`).
		
		Returns
		-------
		errobj : list
		    The error object, a list containing three elements:
		    [internal numpy buffer size, error mask, error callback function].
		
		    The error mask is a single integer that holds the treatment information
		    on all four floating point errors. The information for each error type
		    is contained in three bits of the integer. If we print it in base 8, we
		    can see what treatment is set for "invalid", "under", "over", and
		    "divide" (in that order). The printed string can be interpreted with
		
		    * 0 : 'ignore'
		    * 1 : 'warn'
		    * 2 : 'raise'
		    * 3 : 'call'
		    * 4 : 'print'
		    * 5 : 'log'
		
		See Also
		--------
		seterrobj, seterr, geterr, seterrcall, geterrcall
		getbufsize, setbufsize
		
		Notes
		-----
		For complete documentation of the types of floating-point exceptions and
		treatment options, see `seterr`.
		
		Examples
		--------
		>>> np.geterrobj()  # first get the defaults
		[8192, 521, None]
		
		>>> def err_handler(type, flag):
		...     print("Floating point error (%s), with flag %s" % (type, flag))
		...
		>>> old_bufsize = np.setbufsize(20000)
		>>> old_err = np.seterr(divide='raise')
		>>> old_handler = np.seterrcall(err_handler)
		>>> np.geterrobj()
		[8192, 521, <function err_handler at 0x91dcaac>]
		
		>>> old_err = np.seterr(all='ignore')
		>>> np.base_repr(np.geterrobj()[1], 8)
		'0'
		>>> old_err = np.seterr(divide='warn', over='log', under='call',
		...                     invalid='print')
		>>> np.base_repr(np.geterrobj()[1], 8)
		'4351'
	**/
	static public function geterrobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the gradient of an N-dimensional array.
		
		The gradient is computed using second order accurate central differences
		in the interior points and either first or second order accurate one-sides
		(forward or backwards) differences at the boundaries.
		The returned gradient hence has the same shape as the input array.
		
		Parameters
		----------
		f : array_like
		    An N-dimensional array containing samples of a scalar function.
		varargs : list of scalar or array, optional
		    Spacing between f values. Default unitary spacing for all dimensions.
		    Spacing can be specified using:
		
		    1. single scalar to specify a sample distance for all dimensions.
		    2. N scalars to specify a constant sample distance for each dimension.
		       i.e. `dx`, `dy`, `dz`, ...
		    3. N arrays to specify the coordinates of the values along each
		       dimension of F. The length of the array must match the size of
		       the corresponding dimension
		    4. Any combination of N scalars/arrays with the meaning of 2. and 3.
		
		    If `axis` is given, the number of varargs must equal the number of axes.
		    Default: 1.
		
		edge_order : {1, 2}, optional
		    Gradient is calculated using N-th order accurate differences
		    at the boundaries. Default: 1.
		
		    .. versionadded:: 1.9.1
		
		axis : None or int or tuple of ints, optional
		    Gradient is calculated only along the given axis or axes
		    The default (axis = None) is to calculate the gradient for all the axes
		    of the input array. axis may be negative, in which case it counts from
		    the last to the first axis.
		
		    .. versionadded:: 1.11.0
		
		Returns
		-------
		gradient : ndarray or list of ndarray
		    A list of ndarrays (or a single ndarray if there is only one dimension)
		    corresponding to the derivatives of f with respect to each dimension.
		    Each derivative has the same shape as f.
		
		Examples
		--------
		>>> f = np.array([1, 2, 4, 7, 11, 16], dtype=float)
		>>> np.gradient(f)
		array([1. , 1.5, 2.5, 3.5, 4.5, 5. ])
		>>> np.gradient(f, 2)
		array([0.5 ,  0.75,  1.25,  1.75,  2.25,  2.5 ])
		
		Spacing can be also specified with an array that represents the coordinates
		of the values F along the dimensions.
		For instance a uniform spacing:
		
		>>> x = np.arange(f.size)
		>>> np.gradient(f, x)
		array([1. ,  1.5,  2.5,  3.5,  4.5,  5. ])
		
		Or a non uniform one:
		
		>>> x = np.array([0., 1., 1.5, 3.5, 4., 6.], dtype=float)
		>>> np.gradient(f, x)
		array([1. ,  3. ,  3.5,  6.7,  6.9,  2.5])
		
		For two dimensional arrays, the return will be two arrays ordered by
		axis. In this example the first array stands for the gradient in
		rows and the second one in columns direction:
		
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=float))
		[array([[ 2.,  2., -1.],
		       [ 2.,  2., -1.]]), array([[1. , 2.5, 4. ],
		       [1. , 1. , 1. ]])]
		
		In this example the spacing is also specified:
		uniform for axis=0 and non uniform for axis=1
		
		>>> dx = 2.
		>>> y = [1., 1.5, 3.5]
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=float), dx, y)
		[array([[ 1. ,  1. , -0.5],
		       [ 1. ,  1. , -0.5]]), array([[2. , 2. , 2. ],
		       [2. , 1.7, 0.5]])]
		
		It is possible to specify how boundaries are treated using `edge_order`
		
		>>> x = np.array([0, 1, 2, 3, 4])
		>>> f = x**2
		>>> np.gradient(f, edge_order=1)
		array([1.,  2.,  4.,  6.,  7.])
		>>> np.gradient(f, edge_order=2)
		array([0., 2., 4., 6., 8.])
		
		The `axis` keyword can be used to specify a subset of axes of which the
		gradient is calculated
		
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=float), axis=0)
		array([[ 2.,  2., -1.],
		       [ 2.,  2., -1.]])
		
		Notes
		-----
		Assuming that :math:`f\in C^{3}` (i.e., :math:`f` has at least 3 continuous
		derivatives) and let :math:`h_{*}` be a non-homogeneous stepsize, we
		minimize the "consistency error" :math:`\eta_{i}` between the true gradient
		and its estimate from a linear combination of the neighboring grid-points:
		
		.. math::
		
		    \eta_{i} = f_{i}^{\left(1\right)} -
		                \left[ \alpha f\left(x_{i}\right) +
		                        \beta f\left(x_{i} + h_{d}\right) +
		                        \gamma f\left(x_{i}-h_{s}\right)
		                \right]
		
		By substituting :math:`f(x_{i} + h_{d})` and :math:`f(x_{i} - h_{s})`
		with their Taylor series expansion, this translates into solving
		the following the linear system:
		
		.. math::
		
		    \left\{
		        \begin{array}{r}
		            \alpha+\beta+\gamma=0 \\
		            \beta h_{d}-\gamma h_{s}=1 \\
		            \beta h_{d}^{2}+\gamma h_{s}^{2}=0
		        \end{array}
		    \right.
		
		The resulting approximation of :math:`f_{i}^{(1)}` is the following:
		
		.. math::
		
		    \hat f_{i}^{(1)} =
		        \frac{
		            h_{s}^{2}f\left(x_{i} + h_{d}\right)
		            + \left(h_{d}^{2} - h_{s}^{2}\right)f\left(x_{i}\right)
		            - h_{d}^{2}f\left(x_{i}-h_{s}\right)}
		            { h_{s}h_{d}\left(h_{d} + h_{s}\right)}
		        + \mathcal{O}\left(\frac{h_{d}h_{s}^{2}
		                            + h_{s}h_{d}^{2}}{h_{d}
		                            + h_{s}}\right)
		
		It is worth noting that if :math:`h_{s}=h_{d}`
		(i.e., data are evenly spaced)
		we find the standard second order approximation:
		
		.. math::
		
		    \hat f_{i}^{(1)}=
		        \frac{f\left(x_{i+1}\right) - f\left(x_{i-1}\right)}{2h}
		        + \mathcal{O}\left(h^{2}\right)
		
		With a similar procedure the forward/backward approximations used for
		boundaries can be derived.
		
		References
		----------
		.. [1]  Quarteroni A., Sacco R., Saleri F. (2007) Numerical Mathematics
		        (Texts in Applied Mathematics). New York: Springer.
		.. [2]  Durran D. R. (1999) Numerical Methods for Wave Equations
		        in Geophysical Fluid Dynamics. New York: Springer.
		.. [3]  Fornberg B. (1988) Generation of Finite Difference Formulas on
		        Arbitrarily Spaced Grids,
		        Mathematics of Computation 51, no. 184 : 699-706.
		        `PDF <http://www.ams.org/journals/mcom/1988-51-184/
		        S0025-5718-1988-0935077-0/S0025-5718-1988-0935077-0.pdf>`_.
	**/
	static public function gradient(f:Dynamic, ?varargs:python.VarArgs<Dynamic>, ?axis:Dynamic, ?edge_order:Dynamic):Dynamic;
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
	static public function greater(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function greater_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the Hamming window.
		
		The Hamming window is a taper formed by using a weighted cosine.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		
		Returns
		-------
		out : ndarray
		    The window, with the maximum value normalized to one (the value
		    one appears only if the number of samples is odd).
		
		See Also
		--------
		bartlett, blackman, hanning, kaiser
		
		Notes
		-----
		The Hamming window is defined as
		
		.. math::  w(n) = 0.54 - 0.46cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The Hamming was named for R. W. Hamming, an associate of J. W. Tukey
		and is described in Blackman and Tukey. It was recommended for
		smoothing the truncated autocovariance function in the time domain.
		Most references to the Hamming window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics", The
		       University of Alberta Press, 1975, pp. 109-110.
		.. [3] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		>>> np.hamming(12)
		array([ 0.08      ,  0.15302337,  0.34890909,  0.60546483,  0.84123594, # may vary
		        0.98136677,  0.98136677,  0.84123594,  0.60546483,  0.34890909,
		        0.15302337,  0.08      ])
		
		Plot the window and the frequency response:
		
		>>> import matplotlib.pyplot as plt
		>>> from numpy.fft import fft, fftshift
		>>> window = np.hamming(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Hamming window")
		Text(0.5, 1.0, 'Hamming window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Hamming window")
		Text(0.5, 1.0, 'Frequency response of Hamming window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> plt.axis('tight')
		...
		>>> plt.show()
	**/
	static public function hamming(M:Dynamic):numpy.Ndarray;
	/**
		Return the Hanning window.
		
		The Hanning window is a taper formed by using a weighted cosine.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		
		Returns
		-------
		out : ndarray, shape(M,)
		    The window, with the maximum value normalized to one (the value
		    one appears only if `M` is odd).
		
		See Also
		--------
		bartlett, blackman, hamming, kaiser
		
		Notes
		-----
		The Hanning window is defined as
		
		.. math::  w(n) = 0.5 - 0.5cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The Hanning was named for Julius von Hann, an Austrian meteorologist.
		It is also known as the Cosine Bell. Some authors prefer that it be
		called a Hann window, to help avoid confusion with the very similar
		Hamming window.
		
		Most references to the Hanning window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
		       The University of Alberta Press, 1975, pp. 106-108.
		.. [3] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		>>> np.hanning(12)
		array([0.        , 0.07937323, 0.29229249, 0.57115742, 0.82743037,
		       0.97974649, 0.97974649, 0.82743037, 0.57115742, 0.29229249,
		       0.07937323, 0.        ])
		
		Plot the window and its frequency response:
		
		>>> import matplotlib.pyplot as plt
		>>> from numpy.fft import fft, fftshift
		>>> window = np.hanning(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Hann window")
		Text(0.5, 1.0, 'Hann window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> with np.errstate(divide='ignore', invalid='ignore'):
		...     response = 20 * np.log10(mag)
		...
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of the Hann window")
		Text(0.5, 1.0, 'Frequency response of the Hann window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> plt.axis('tight')
		...
		>>> plt.show()
	**/
	static public function hanning(M:Dynamic):Dynamic;
	/**
		heaviside(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the Heaviside step function.
		
		The Heaviside step function is defined as::
		
		                          0   if x1 < 0
		    heaviside(x1, x2) =  x2   if x1 == 0
		                          1   if x1 > 0
		
		where `x2` is often taken to be 0.5, but 0 and 1 are also sometimes used.
		
		Parameters
		----------
		x1 : array_like
		    Input values.
		x2 : array_like
		    The value of the function when x1 is 0.
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
		    The output array, element-wise Heaviside step function of `x1`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Notes
		-----
		.. versionadded:: 1.13.0
		
		References
		----------
		.. Wikipedia, "Heaviside step function",
		   https://en.wikipedia.org/wiki/Heaviside_step_function
		
		Examples
		--------
		>>> np.heaviside([-1.5, 0, 2.0], 0.5)
		array([ 0. ,  0.5,  1. ])
		>>> np.heaviside([-1.5, 0, 2.0], 1)
		array([ 0.,  1.,  1.])
	**/
	static public function heaviside(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the histogram of a dataset.
		
		Parameters
		----------
		a : array_like
		    Input data. The histogram is computed over the flattened array.
		bins : int or sequence of scalars or str, optional
		    If `bins` is an int, it defines the number of equal-width
		    bins in the given range (10, by default). If `bins` is a
		    sequence, it defines a monotonically increasing array of bin edges,
		    including the rightmost edge, allowing for non-uniform bin widths.
		
		    .. versionadded:: 1.11.0
		
		    If `bins` is a string, it defines the method used to calculate the
		    optimal bin width, as defined by `histogram_bin_edges`.
		
		range : (float, float), optional
		    The lower and upper range of the bins.  If not provided, range
		    is simply ``(a.min(), a.max())``.  Values outside the range are
		    ignored. The first element of the range must be less than or
		    equal to the second. `range` affects the automatic bin
		    computation as well. While bin width is computed to be optimal
		    based on the actual data within `range`, the bin count will fill
		    the entire range including portions containing no data.
		normed : bool, optional
		
		    .. deprecated:: 1.6.0
		
		    This is equivalent to the `density` argument, but produces incorrect
		    results for unequal bin widths. It should not be used.
		
		    .. versionchanged:: 1.15.0
		        DeprecationWarnings are actually emitted.
		
		weights : array_like, optional
		    An array of weights, of the same shape as `a`.  Each value in
		    `a` only contributes its associated weight towards the bin count
		    (instead of 1). If `density` is True, the weights are
		    normalized, so that the integral of the density over the range
		    remains 1.
		density : bool, optional
		    If ``False``, the result will contain the number of samples in
		    each bin. If ``True``, the result is the value of the
		    probability *density* function at the bin, normalized such that
		    the *integral* over the range is 1. Note that the sum of the
		    histogram values will not be equal to 1 unless bins of unity
		    width are chosen; it is not a probability *mass* function.
		
		    Overrides the ``normed`` keyword if given.
		
		Returns
		-------
		hist : array
		    The values of the histogram. See `density` and `weights` for a
		    description of the possible semantics.
		bin_edges : array of dtype float
		    Return the bin edges ``(length(hist)+1)``.
		
		
		See Also
		--------
		histogramdd, bincount, searchsorted, digitize, histogram_bin_edges
		
		Notes
		-----
		All but the last (righthand-most) bin is half-open.  In other words,
		if `bins` is::
		
		  [1, 2, 3, 4]
		
		then the first bin is ``[1, 2)`` (including 1, but excluding 2) and
		the second ``[2, 3)``.  The last bin, however, is ``[3, 4]``, which
		*includes* 4.
		
		
		Examples
		--------
		>>> np.histogram([1, 2, 1], bins=[0, 1, 2, 3])
		(array([0, 2, 1]), array([0, 1, 2, 3]))
		>>> np.histogram(np.arange(4), bins=np.arange(5), density=True)
		(array([0.25, 0.25, 0.25, 0.25]), array([0, 1, 2, 3, 4]))
		>>> np.histogram([[1, 2, 1], [1, 0, 1]], bins=[0,1,2,3])
		(array([1, 4, 1]), array([0, 1, 2, 3]))
		
		>>> a = np.arange(5)
		>>> hist, bin_edges = np.histogram(a, density=True)
		>>> hist
		array([0.5, 0. , 0.5, 0. , 0. , 0.5, 0. , 0.5, 0. , 0.5])
		>>> hist.sum()
		2.4999999999999996
		>>> np.sum(hist * np.diff(bin_edges))
		1.0
		
		.. versionadded:: 1.11.0
		
		Automated Bin Selection Methods example, using 2 peak random data
		with 2000 points:
		
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.RandomState(10)  # deterministic random data
		>>> a = np.hstack((rng.normal(size=1000),
		...                rng.normal(loc=5, scale=2, size=1000)))
		>>> _ = plt.hist(a, bins='auto')  # arguments are passed to np.histogram
		>>> plt.title("Histogram with 'auto' bins")
		Text(0.5, 1.0, "Histogram with 'auto' bins")
		>>> plt.show()
	**/
	static public function histogram(a:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):Array<Dynamic>;
	/**
		Compute the bi-dimensional histogram of two data samples.
		
		Parameters
		----------
		x : array_like, shape (N,)
		    An array containing the x coordinates of the points to be
		    histogrammed.
		y : array_like, shape (N,)
		    An array containing the y coordinates of the points to be
		    histogrammed.
		bins : int or array_like or [int, int] or [array, array], optional
		    The bin specification:
		
		      * If int, the number of bins for the two dimensions (nx=ny=bins).
		      * If array_like, the bin edges for the two dimensions
		        (x_edges=y_edges=bins).
		      * If [int, int], the number of bins in each dimension
		        (nx, ny = bins).
		      * If [array, array], the bin edges in each dimension
		        (x_edges, y_edges = bins).
		      * A combination [int, array] or [array, int], where int
		        is the number of bins and array is the bin edges.
		
		range : array_like, shape(2,2), optional
		    The leftmost and rightmost edges of the bins along each dimension
		    (if not specified explicitly in the `bins` parameters):
		    ``[[xmin, xmax], [ymin, ymax]]``. All values outside of this range
		    will be considered outliers and not tallied in the histogram.
		density : bool, optional
		    If False, the default, returns the number of samples in each bin.
		    If True, returns the probability *density* function at the bin,
		    ``bin_count / sample_count / bin_area``.
		normed : bool, optional
		    An alias for the density argument that behaves identically. To avoid
		    confusion with the broken normed argument to `histogram`, `density`
		    should be preferred.
		weights : array_like, shape(N,), optional
		    An array of values ``w_i`` weighing each sample ``(x_i, y_i)``.
		    Weights are normalized to 1 if `normed` is True. If `normed` is
		    False, the values of the returned histogram are equal to the sum of
		    the weights belonging to the samples falling into each bin.
		
		Returns
		-------
		H : ndarray, shape(nx, ny)
		    The bi-dimensional histogram of samples `x` and `y`. Values in `x`
		    are histogrammed along the first dimension and values in `y` are
		    histogrammed along the second dimension.
		xedges : ndarray, shape(nx+1,)
		    The bin edges along the first dimension.
		yedges : ndarray, shape(ny+1,)
		    The bin edges along the second dimension.
		
		See Also
		--------
		histogram : 1D histogram
		histogramdd : Multidimensional histogram
		
		Notes
		-----
		When `normed` is True, then the returned histogram is the sample
		density, defined such that the sum over bins of the product
		``bin_value * bin_area`` is 1.
		
		Please note that the histogram does not follow the Cartesian convention
		where `x` values are on the abscissa and `y` values on the ordinate
		axis.  Rather, `x` is histogrammed along the first dimension of the
		array (vertical), and `y` along the second dimension of the array
		(horizontal).  This ensures compatibility with `histogramdd`.
		
		Examples
		--------
		>>> from matplotlib.image import NonUniformImage
		>>> import matplotlib.pyplot as plt
		
		Construct a 2-D histogram with variable bin width. First define the bin
		edges:
		
		>>> xedges = [0, 1, 3, 5]
		>>> yedges = [0, 2, 3, 4, 6]
		
		Next we create a histogram H with random bin content:
		
		>>> x = np.random.normal(2, 1, 100)
		>>> y = np.random.normal(1, 1, 100)
		>>> H, xedges, yedges = np.histogram2d(x, y, bins=(xedges, yedges))
		>>> # Histogram does not follow Cartesian convention (see Notes),
		>>> # therefore transpose H for visualization purposes.
		>>> H = H.T
		
		:func:`imshow <matplotlib.pyplot.imshow>` can only display square bins:
		
		>>> fig = plt.figure(figsize=(7, 3))
		>>> ax = fig.add_subplot(131, title='imshow: square bins')
		>>> plt.imshow(H, interpolation='nearest', origin='lower',
		...         extent=[xedges[0], xedges[-1], yedges[0], yedges[-1]])
		<matplotlib.image.AxesImage object at 0x...>
		
		:func:`pcolormesh <matplotlib.pyplot.pcolormesh>` can display actual edges:
		
		>>> ax = fig.add_subplot(132, title='pcolormesh: actual edges',
		...         aspect='equal')
		>>> X, Y = np.meshgrid(xedges, yedges)
		>>> ax.pcolormesh(X, Y, H)
		<matplotlib.collections.QuadMesh object at 0x...>
		
		:class:`NonUniformImage <matplotlib.image.NonUniformImage>` can be used to
		display actual bin edges with interpolation:
		
		>>> ax = fig.add_subplot(133, title='NonUniformImage: interpolated',
		...         aspect='equal', xlim=xedges[[0, -1]], ylim=yedges[[0, -1]])
		>>> im = NonUniformImage(ax, interpolation='bilinear')
		>>> xcenters = (xedges[:-1] + xedges[1:]) / 2
		>>> ycenters = (yedges[:-1] + yedges[1:]) / 2
		>>> im.set_data(xcenters, ycenters, H)
		>>> ax.images.append(im)
		>>> plt.show()
		
		It is also possible to construct a 2-D histogram without specifying bin
		edges:
		
		>>> # Generate non-symmetric test data
		>>> n = 10000
		>>> x = np.linspace(1, 100, n)
		>>> y = 2*np.log(x) + np.random.rand(n) - 0.5
		>>> # Compute 2d histogram. Note the order of x/y and xedges/yedges
		>>> H, yedges, xedges = np.histogram2d(y, x, bins=20)
		
		Now we can plot the histogram using
		:func:`pcolormesh <matplotlib.pyplot.pcolormesh>`, and a
		:func:`hexbin <matplotlib.pyplot.hexbin>` for comparison.
		
		>>> # Plot histogram using pcolormesh
		>>> fig, (ax1, ax2) = plt.subplots(ncols=2, sharey=True)
		>>> ax1.pcolormesh(xedges, yedges, H, cmap='rainbow')
		>>> ax1.plot(x, 2*np.log(x), 'k-')
		>>> ax1.set_xlim(x.min(), x.max())
		>>> ax1.set_ylim(y.min(), y.max())
		>>> ax1.set_xlabel('x')
		>>> ax1.set_ylabel('y')
		>>> ax1.set_title('histogram2d')
		>>> ax1.grid()
		
		>>> # Create hexbin plot for comparison
		>>> ax2.hexbin(x, y, gridsize=20, cmap='rainbow')
		>>> ax2.plot(x, 2*np.log(x), 'k-')
		>>> ax2.set_title('hexbin')
		>>> ax2.set_xlim(x.min(), x.max())
		>>> ax2.set_xlabel('x')
		>>> ax2.grid()
		
		>>> plt.show()
	**/
	static public function histogram2d(x:Dynamic, y:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):Dynamic;
	/**
		Function to calculate only the edges of the bins used by the `histogram`
		function.
		
		Parameters
		----------
		a : array_like
		    Input data. The histogram is computed over the flattened array.
		bins : int or sequence of scalars or str, optional
		    If `bins` is an int, it defines the number of equal-width
		    bins in the given range (10, by default). If `bins` is a
		    sequence, it defines the bin edges, including the rightmost
		    edge, allowing for non-uniform bin widths.
		
		    If `bins` is a string from the list below, `histogram_bin_edges` will use
		    the method chosen to calculate the optimal bin width and
		    consequently the number of bins (see `Notes` for more detail on
		    the estimators) from the data that falls within the requested
		    range. While the bin width will be optimal for the actual data
		    in the range, the number of bins will be computed to fill the
		    entire range, including the empty portions. For visualisation,
		    using the 'auto' option is suggested. Weighted data is not
		    supported for automated bin size selection.
		
		    'auto'
		        Maximum of the 'sturges' and 'fd' estimators. Provides good
		        all around performance.
		
		    'fd' (Freedman Diaconis Estimator)
		        Robust (resilient to outliers) estimator that takes into
		        account data variability and data size.
		
		    'doane'
		        An improved version of Sturges' estimator that works better
		        with non-normal datasets.
		
		    'scott'
		        Less robust estimator that that takes into account data
		        variability and data size.
		
		    'stone'
		        Estimator based on leave-one-out cross-validation estimate of
		        the integrated squared error. Can be regarded as a generalization
		        of Scott's rule.
		
		    'rice'
		        Estimator does not take variability into account, only data
		        size. Commonly overestimates number of bins required.
		
		    'sturges'
		        R's default method, only accounts for data size. Only
		        optimal for gaussian data and underestimates number of bins
		        for large non-gaussian datasets.
		
		    'sqrt'
		        Square root (of data size) estimator, used by Excel and
		        other programs for its speed and simplicity.
		
		range : (float, float), optional
		    The lower and upper range of the bins.  If not provided, range
		    is simply ``(a.min(), a.max())``.  Values outside the range are
		    ignored. The first element of the range must be less than or
		    equal to the second. `range` affects the automatic bin
		    computation as well. While bin width is computed to be optimal
		    based on the actual data within `range`, the bin count will fill
		    the entire range including portions containing no data.
		
		weights : array_like, optional
		    An array of weights, of the same shape as `a`.  Each value in
		    `a` only contributes its associated weight towards the bin count
		    (instead of 1). This is currently not used by any of the bin estimators,
		    but may be in the future.
		
		Returns
		-------
		bin_edges : array of dtype float
		    The edges to pass into `histogram`
		
		See Also
		--------
		histogram
		
		Notes
		-----
		The methods to estimate the optimal number of bins are well founded
		in literature, and are inspired by the choices R provides for
		histogram visualisation. Note that having the number of bins
		proportional to :math:`n^{1/3}` is asymptotically optimal, which is
		why it appears in most estimators. These are simply plug-in methods
		that give good starting points for number of bins. In the equations
		below, :math:`h` is the binwidth and :math:`n_h` is the number of
		bins. All estimators that compute bin counts are recast to bin width
		using the `ptp` of the data. The final bin count is obtained from
		``np.round(np.ceil(range / h))``. The final bin width is often less 
		than what is returned by the estimators below.
		
		'auto' (maximum of the 'sturges' and 'fd' estimators)
		    A compromise to get a good value. For small datasets the Sturges
		    value will usually be chosen, while larger datasets will usually
		    default to FD.  Avoids the overly conservative behaviour of FD
		    and Sturges for small and large datasets respectively.
		    Switchover point is usually :math:`a.size \approx 1000`.
		
		'fd' (Freedman Diaconis Estimator)
		    .. math:: h = 2 \frac{IQR}{n^{1/3}}
		
		    The binwidth is proportional to the interquartile range (IQR)
		    and inversely proportional to cube root of a.size. Can be too
		    conservative for small datasets, but is quite good for large
		    datasets. The IQR is very robust to outliers.
		
		'scott'
		    .. math:: h = \sigma \sqrt[3]{\frac{24 * \sqrt{\pi}}{n}}
		
		    The binwidth is proportional to the standard deviation of the
		    data and inversely proportional to cube root of ``x.size``. Can
		    be too conservative for small datasets, but is quite good for
		    large datasets. The standard deviation is not very robust to
		    outliers. Values are very similar to the Freedman-Diaconis
		    estimator in the absence of outliers.
		
		'rice'
		    .. math:: n_h = 2n^{1/3}
		
		    The number of bins is only proportional to cube root of
		    ``a.size``. It tends to overestimate the number of bins and it
		    does not take into account data variability.
		
		'sturges'
		    .. math:: n_h = \log _{2}n+1
		
		    The number of bins is the base 2 log of ``a.size``.  This
		    estimator assumes normality of data and is too conservative for
		    larger, non-normal datasets. This is the default method in R's
		    ``hist`` method.
		
		'doane'
		    .. math:: n_h = 1 + \log_{2}(n) +
		                    \log_{2}(1 + \frac{|g_1|}{\sigma_{g_1}})
		
		        g_1 = mean[(\frac{x - \mu}{\sigma})^3]
		
		        \sigma_{g_1} = \sqrt{\frac{6(n - 2)}{(n + 1)(n + 3)}}
		
		    An improved version of Sturges' formula that produces better
		    estimates for non-normal datasets. This estimator attempts to
		    account for the skew of the data.
		
		'sqrt'
		    .. math:: n_h = \sqrt n
		
		    The simplest and fastest estimator. Only takes into account the
		    data size.
		
		Examples
		--------
		>>> arr = np.array([0, 0, 0, 1, 2, 3, 3, 4, 5])
		>>> np.histogram_bin_edges(arr, bins='auto', range=(0, 1))
		array([0.  , 0.25, 0.5 , 0.75, 1.  ])
		>>> np.histogram_bin_edges(arr, bins=2)
		array([0. , 2.5, 5. ])
		
		For consistency with histogram, an array of pre-computed bins is
		passed through unmodified:
		
		>>> np.histogram_bin_edges(arr, [1, 2])
		array([1, 2])
		
		This function allows one set of bins to be computed, and reused across
		multiple histograms:
		
		>>> shared_bins = np.histogram_bin_edges(arr, bins='auto')
		>>> shared_bins
		array([0., 1., 2., 3., 4., 5.])
		
		>>> group_id = np.array([0, 1, 1, 0, 1, 1, 0, 1, 1])
		>>> hist_0, _ = np.histogram(arr[group_id == 0], bins=shared_bins)
		>>> hist_1, _ = np.histogram(arr[group_id == 1], bins=shared_bins)
		
		>>> hist_0; hist_1
		array([1, 1, 0, 1, 0])
		array([2, 0, 1, 1, 2])
		
		Which gives more easily comparable results than using separate bins for
		each histogram:
		
		>>> hist_0, bins_0 = np.histogram(arr[group_id == 0], bins='auto')
		>>> hist_1, bins_1 = np.histogram(arr[group_id == 1], bins='auto')
		>>> hist_0; hist_1
		array([1, 1, 1])
		array([2, 1, 1, 2])
		>>> bins_0; bins_1
		array([0., 1., 2., 3.])
		array([0.  , 1.25, 2.5 , 3.75, 5.  ])
	**/
	static public function histogram_bin_edges(a:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Compute the multidimensional histogram of some data.
		
		Parameters
		----------
		sample : (N, D) array, or (D, N) array_like
		    The data to be histogrammed.
		
		    Note the unusual interpretation of sample when an array_like:
		
		    * When an array, each row is a coordinate in a D-dimensional space -
		      such as ``histogramdd(np.array([p1, p2, p3]))``.
		    * When an array_like, each element is the list of values for single
		      coordinate - such as ``histogramdd((X, Y, Z))``.
		
		    The first form should be preferred.
		
		bins : sequence or int, optional
		    The bin specification:
		
		    * A sequence of arrays describing the monotonically increasing bin
		      edges along each dimension.
		    * The number of bins for each dimension (nx, ny, ... =bins)
		    * The number of bins for all dimensions (nx=ny=...=bins).
		
		range : sequence, optional
		    A sequence of length D, each an optional (lower, upper) tuple giving
		    the outer bin edges to be used if the edges are not given explicitly in
		    `bins`.
		    An entry of None in the sequence results in the minimum and maximum
		    values being used for the corresponding dimension.
		    The default, None, is equivalent to passing a tuple of D None values.
		density : bool, optional
		    If False, the default, returns the number of samples in each bin.
		    If True, returns the probability *density* function at the bin,
		    ``bin_count / sample_count / bin_volume``.
		normed : bool, optional
		    An alias for the density argument that behaves identically. To avoid
		    confusion with the broken normed argument to `histogram`, `density`
		    should be preferred.
		weights : (N,) array_like, optional
		    An array of values `w_i` weighing each sample `(x_i, y_i, z_i, ...)`.
		    Weights are normalized to 1 if normed is True. If normed is False,
		    the values of the returned histogram are equal to the sum of the
		    weights belonging to the samples falling into each bin.
		
		Returns
		-------
		H : ndarray
		    The multidimensional histogram of sample x. See normed and weights
		    for the different possible semantics.
		edges : list
		    A list of D arrays describing the bin edges for each dimension.
		
		See Also
		--------
		histogram: 1-D histogram
		histogram2d: 2-D histogram
		
		Examples
		--------
		>>> r = np.random.randn(100,3)
		>>> H, edges = np.histogramdd(r, bins = (5, 8, 4))
		>>> H.shape, edges[0].size, edges[1].size, edges[2].size
		((5, 8, 4), 6, 9, 5)
	**/
	static public function histogramdd(sample:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):numpy.Ndarray;
	/**
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
		array([[ 0.,   1.,   2.,   3.],
		       [ 4.,   5.,   6.,   7.],
		       [ 8.,   9.,  10.,  11.],
		       [12.,  13.,  14.,  15.]])
		>>> np.hsplit(x, 2)
		[array([[  0.,   1.],
		       [  4.,   5.],
		       [  8.,   9.],
		       [12.,  13.]]),
		 array([[  2.,   3.],
		       [  6.,   7.],
		       [10.,  11.],
		       [14.,  15.]])]
		>>> np.hsplit(x, np.array([3, 6]))
		[array([[ 0.,   1.,   2.],
		       [ 4.,   5.,   6.],
		       [ 8.,   9.,  10.],
		       [12.,  13.,  14.]]),
		 array([[ 3.],
		       [ 7.],
		       [11.],
		       [15.]]),
		 array([], shape=(4, 0), dtype=float64)]
		
		With a higher dimensional array the split is still along the second axis.
		
		>>> x = np.arange(8.0).reshape(2, 2, 2)
		>>> x
		array([[[0.,  1.],
		        [2.,  3.]],
		       [[4.,  5.],
		        [6.,  7.]]])
		>>> np.hsplit(x, 2)
		[array([[[0.,  1.]],
		       [[4.,  5.]]]),
		 array([[[2.,  3.]],
		       [[6.,  7.]]])]
	**/
	static public function hsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		Stack arrays in sequence horizontally (column wise).
		
		This is equivalent to concatenation along the second axis, except for 1-D
		arrays where it concatenates along the first axis. Rebuilds arrays divided
		by `hsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    The arrays must have the same shape along all but the second axis,
		    except 1-D arrays which can be any length.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		block : Assemble an nd-array from nested lists of blocks.
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		hsplit : Split an array into multiple sub-arrays horizontally (column-wise).
		
		Examples
		--------
		>>> a = np.array((1,2,3))
		>>> b = np.array((4,5,6))
		>>> np.hstack((a,b))
		array([1, 2, 3, 4, 5, 6])
		>>> a = np.array([[1],[2],[3]])
		>>> b = np.array([[4],[5],[6]])
		>>> np.hstack((a,b))
		array([[1, 4],
		       [2, 5],
		       [3, 6]])
	**/
	static public function hstack(tup:Dynamic):numpy.Ndarray;
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
	static public function hypot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Modified Bessel function of the first kind, order 0.
		
		Usually denoted :math:`I_0`.
		
		Parameters
		----------
		x : array_like of float
		    Argument of the Bessel function.
		
		Returns
		-------
		out : ndarray, shape = x.shape, dtype = float
		    The modified Bessel function evaluated at each of the elements of `x`.
		
		See Also
		--------
		scipy.special.i0, scipy.special.iv, scipy.special.ive
		
		Notes
		-----
		The scipy implementation is recommended over this function: it is a
		proper ufunc written in C, and more than an order of magnitude faster.
		
		We use the algorithm published by Clenshaw [1]_ and referenced by
		Abramowitz and Stegun [2]_, for which the function domain is
		partitioned into the two intervals [0,8] and (8,inf), and Chebyshev
		polynomial expansions are employed in each interval. Relative error on
		the domain [0,30] using IEEE arithmetic is documented [3]_ as having a
		peak of 5.8e-16 with an rms of 1.4e-16 (n = 30000).
		
		References
		----------
		.. [1] C. W. Clenshaw, "Chebyshev series for mathematical functions", in
		       *National Physical Laboratory Mathematical Tables*, vol. 5, London:
		       Her Majesty's Stationery Office, 1962.
		.. [2] M. Abramowitz and I. A. Stegun, *Handbook of Mathematical
		       Functions*, 10th printing, New York: Dover, 1964, pp. 379.
		       https://personal.math.ubc.ca/~cbm/aands/page_379.htm
		.. [3] https://metacpan.org/pod/distribution/Math-Cephes/lib/Math/Cephes.pod#i0:-Modified-Bessel-function-of-order-zero
		
		Examples
		--------
		>>> np.i0(0.)
		array(1.0)
		>>> np.i0([0, 1, 2, 3])
		array([1.        , 1.26606588, 2.2795853 , 4.88079259])
	**/
	static public function i0(x:Dynamic):Dynamic;
	/**
		Returns the square identity matrix of given size.
		
		Parameters
		----------
		n : int
		    Size of the returned identity matrix.
		dtype : data-type, optional
		    Data-type of the output. Defaults to ``float``.
		
		Returns
		-------
		out : matrix
		    `n` x `n` matrix with its main diagonal set to one,
		    and all other elements zero.
		
		See Also
		--------
		numpy.identity : Equivalent array function.
		matlib.eye : More general matrix identity function.
		
		Examples
		--------
		>>> import numpy.matlib
		>>> np.matlib.identity(3, dtype=int)
		matrix([[1, 0, 0],
		        [0, 1, 0],
		        [0, 0, 1]])
	**/
	static public function identity(n:Dynamic, ?dtype:Dynamic):numpy.Matrix;
	/**
		Return the imaginary part of the complex argument.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    The imaginary component of the complex argument. If `val` is real,
		    the type of `val` is used for the output.  If `val` has complex
		    elements, the returned type is float.
		
		See Also
		--------
		real, angle, real_if_close
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.imag
		array([2.,  4.,  6.])
		>>> a.imag = np.array([8, 10, 12])
		>>> a
		array([1. +8.j,  3.+10.j,  5.+12.j])
		>>> np.imag(1 + 1j)
		1.0
	**/
	static public function imag(val:Dynamic):Dynamic;
	/**
		Test whether each element of a 1-D array is also present in a second array.
		
		Returns a boolean array the same length as `ar1` that is True
		where an element of `ar1` is in `ar2` and False otherwise.
		
		We recommend using :func:`isin` instead of `in1d` for new code.
		
		Parameters
		----------
		ar1 : (M,) array_like
		    Input array.
		ar2 : array_like
		    The values against which to test each value of `ar1`.
		assume_unique : bool, optional
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		invert : bool, optional
		    If True, the values in the returned array are inverted (that is,
		    False where an element of `ar1` is in `ar2` and True otherwise).
		    Default is False. ``np.in1d(a, b, invert=True)`` is equivalent
		    to (but is faster than) ``np.invert(in1d(a, b))``.
		
		    .. versionadded:: 1.8.0
		
		Returns
		-------
		in1d : (M,) ndarray, bool
		    The values `ar1[in1d]` are in `ar2`.
		
		See Also
		--------
		isin                  : Version of this function that preserves the
		                        shape of ar1.
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Notes
		-----
		`in1d` can be considered as an element-wise function version of the
		python keyword `in`, for 1-D sequences. ``in1d(a, b)`` is roughly
		equivalent to ``np.array([item in b for item in a])``.
		However, this idea fails if `ar2` is a set, or similar (non-sequence)
		container:  As ``ar2`` is converted to an array, in those cases
		``asarray(ar2)`` is an object array rather than the expected array of
		contained values.
		
		.. versionadded:: 1.4.0
		
		Examples
		--------
		>>> test = np.array([0, 1, 2, 5, 0])
		>>> states = [0, 2]
		>>> mask = np.in1d(test, states)
		>>> mask
		array([ True, False,  True, False,  True])
		>>> test[mask]
		array([0, 2, 0])
		>>> mask = np.in1d(test, states, invert=True)
		>>> mask
		array([False,  True, False,  True, False])
		>>> test[mask]
		array([1, 5])
	**/
	static public function in1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic, ?invert:Dynamic):Dynamic;
	static public var index_exp : Dynamic;
	/**
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
		grid : one ndarray or tuple of ndarrays
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
	static public function indices(dimensions:Dynamic, ?dtype:Dynamic, ?sparse:Dynamic):Dynamic;
	static public var inf : Dynamic;
	/**
		Get help information for a function, class, or module.
		
		Parameters
		----------
		object : object or str, optional
		    Input object or name to get information about. If `object` is a
		    numpy object, its docstring is given. If it is a string, available
		    modules are searched for matching objects.  If None, information
		    about `info` itself is returned.
		maxwidth : int, optional
		    Printing width.
		output : file like object, optional
		    File like object that the output is written to, default is
		    ``stdout``.  The object has to be opened in 'w' or 'a' mode.
		toplevel : str, optional
		    Start search at this level.
		
		See Also
		--------
		source, lookfor
		
		Notes
		-----
		When used interactively with an object, ``np.info(obj)`` is equivalent
		to ``help(obj)`` on the Python prompt or ``obj?`` on the IPython
		prompt.
		
		Examples
		--------
		>>> np.info(np.polyval) # doctest: +SKIP
		   polyval(p, x)
		     Evaluate the polynomial p at x.
		     ...
		
		When using a string for `object` it is possible to get multiple results.
		
		>>> np.info('fft') # doctest: +SKIP
		     *** Found in numpy ***
		Core FFT routines
		...
		     *** Found in numpy.fft ***
		 fft(a, n=None, axis=-1)
		...
		     *** Repeat reference found in numpy.fft.fftpack ***
		     *** Total of 3 references found. ***
	**/
	static public function info(?object:Dynamic, ?maxwidth:Dynamic, ?output:Dynamic, ?toplevel:Dynamic):Dynamic;
	static public var infty : Dynamic;
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
	static public function inner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Insert values along the given axis before the given indices.
		
		Parameters
		----------
		arr : array_like
		    Input array.
		obj : int, slice or sequence of ints
		    Object that defines the index or indices before which `values` is
		    inserted.
		
		    .. versionadded:: 1.8.0
		
		    Support for multiple insertions when `obj` is a single scalar or a
		    sequence with one element (similar to calling insert multiple
		    times).
		values : array_like
		    Values to insert into `arr`. If the type of `values` is different
		    from that of `arr`, `values` is converted to the type of `arr`.
		    `values` should be shaped so that ``arr[...,obj,...] = values``
		    is legal.
		axis : int, optional
		    Axis along which to insert `values`.  If `axis` is None then `arr`
		    is flattened first.
		
		Returns
		-------
		out : ndarray
		    A copy of `arr` with `values` inserted.  Note that `insert`
		    does not occur in-place: a new array is returned. If
		    `axis` is None, `out` is a flattened array.
		
		See Also
		--------
		append : Append elements at the end of an array.
		concatenate : Join a sequence of arrays along an existing axis.
		delete : Delete elements from an array.
		
		Notes
		-----
		Note that for higher dimensional inserts `obj=0` behaves very different
		from `obj=[0]` just like `arr[:,0,:] = values` is different from
		`arr[:,[0],:] = values`.
		
		Examples
		--------
		>>> a = np.array([[1, 1], [2, 2], [3, 3]])
		>>> a
		array([[1, 1],
		       [2, 2],
		       [3, 3]])
		>>> np.insert(a, 1, 5)
		array([1, 5, 1, ..., 2, 3, 3])
		>>> np.insert(a, 1, 5, axis=1)
		array([[1, 5, 1],
		       [2, 5, 2],
		       [3, 5, 3]])
		
		Difference between sequence and scalars:
		
		>>> np.insert(a, [1], [[1],[2],[3]], axis=1)
		array([[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]])
		>>> np.array_equal(np.insert(a, 1, [1, 2, 3], axis=1),
		...                np.insert(a, [1], [[1],[2],[3]], axis=1))
		True
		
		>>> b = a.flatten()
		>>> b
		array([1, 1, 2, 2, 3, 3])
		>>> np.insert(b, [2, 2], [5, 6])
		array([1, 1, 5, ..., 2, 3, 3])
		
		>>> np.insert(b, slice(2, 4), [5, 6])
		array([1, 1, 5, ..., 2, 3, 3])
		
		>>> np.insert(b, [2, 2], [7.13, False]) # type casting
		array([1, 1, 7, ..., 2, 3, 3])
		
		>>> x = np.arange(8).reshape(2, 4)
		>>> idx = (1, 3)
		>>> np.insert(x, idx, 999, axis=1)
		array([[  0, 999,   1,   2, 999,   3],
		       [  4, 999,   5,   6, 999,   7]])
	**/
	static public function insert(arr:Dynamic, obj:Dynamic, values:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		One-dimensional linear interpolation for monotonically increasing sample points.
		
		Returns the one-dimensional piecewise linear interpolant to a function
		with given discrete data points (`xp`, `fp`), evaluated at `x`.
		
		Parameters
		----------
		x : array_like
		    The x-coordinates at which to evaluate the interpolated values.
		
		xp : 1-D sequence of floats
		    The x-coordinates of the data points, must be increasing if argument
		    `period` is not specified. Otherwise, `xp` is internally sorted after
		    normalizing the periodic boundaries with ``xp = xp % period``.
		
		fp : 1-D sequence of float or complex
		    The y-coordinates of the data points, same length as `xp`.
		
		left : optional float or complex corresponding to fp
		    Value to return for `x < xp[0]`, default is `fp[0]`.
		
		right : optional float or complex corresponding to fp
		    Value to return for `x > xp[-1]`, default is `fp[-1]`.
		
		period : None or float, optional
		    A period for the x-coordinates. This parameter allows the proper
		    interpolation of angular x-coordinates. Parameters `left` and `right`
		    are ignored if `period` is specified.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		y : float or complex (corresponding to fp) or ndarray
		    The interpolated values, same shape as `x`.
		
		Raises
		------
		ValueError
		    If `xp` and `fp` have different length
		    If `xp` or `fp` are not 1-D sequences
		    If `period == 0`
		
		See Also
		--------
		scipy.interpolate
		
		Warnings
		--------
		The x-coordinate sequence is expected to be increasing, but this is not
		explicitly enforced.  However, if the sequence `xp` is non-increasing,
		interpolation results are meaningless.
		
		Note that, since NaN is unsortable, `xp` also cannot contain NaNs.
		
		A simple check for `xp` being strictly increasing is::
		
		    np.all(np.diff(xp) > 0)
		
		Examples
		--------
		>>> xp = [1, 2, 3]
		>>> fp = [3, 2, 0]
		>>> np.interp(2.5, xp, fp)
		1.0
		>>> np.interp([0, 1, 1.5, 2.72, 3.14], xp, fp)
		array([3.  , 3.  , 2.5 , 0.56, 0.  ])
		>>> UNDEF = -99.0
		>>> np.interp(3.14, xp, fp, right=UNDEF)
		-99.0
		
		Plot an interpolant to the sine function:
		
		>>> x = np.linspace(0, 2*np.pi, 10)
		>>> y = np.sin(x)
		>>> xvals = np.linspace(0, 2*np.pi, 50)
		>>> yinterp = np.interp(xvals, x, y)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(xvals, yinterp, '-x')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.show()
		
		Interpolation with periodic x-coordinates:
		
		>>> x = [-180, -170, -185, 185, -10, -5, 0, 365]
		>>> xp = [190, -190, 350, -350]
		>>> fp = [5, 10, 3, 4]
		>>> np.interp(x, xp, fp, period=360)
		array([7.5 , 5.  , 8.75, 6.25, 3.  , 3.25, 3.5 , 3.75])
		
		Complex interpolation:
		
		>>> x = [1.5, 4.0]
		>>> xp = [2,3,5]
		>>> fp = [1.0j, 0, 2+3j]
		>>> np.interp(x, xp, fp)
		array([0.+1.j , 1.+1.5j])
	**/
	static public function interp(x:Dynamic, xp:Dynamic, fp:Dynamic, ?left:Dynamic, ?right:Dynamic, ?period:Dynamic):Dynamic;
	/**
		Find the intersection of two arrays.
		
		Return the sorted, unique values that are in both of the input arrays.
		
		Parameters
		----------
		ar1, ar2 : array_like
		    Input arrays. Will be flattened if not already 1D.
		assume_unique : bool
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  If True but ``ar1`` or ``ar2`` are not
		    unique, incorrect results and out-of-bounds indices could result.
		    Default is False.
		return_indices : bool
		    If True, the indices which correspond to the intersection of the two
		    arrays are returned. The first instance of a value is used if there are
		    multiple. Default is False.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		intersect1d : ndarray
		    Sorted 1D array of common and unique elements.
		comm1 : ndarray
		    The indices of the first occurrences of the common values in `ar1`.
		    Only provided if `return_indices` is True.
		comm2 : ndarray
		    The indices of the first occurrences of the common values in `ar2`.
		    Only provided if `return_indices` is True.
		
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> np.intersect1d([1, 3, 4, 3], [3, 1, 2, 1])
		array([1, 3])
		
		To intersect more than two arrays, use functools.reduce:
		
		>>> from functools import reduce
		>>> reduce(np.intersect1d, ([1, 3, 4, 3], [3, 1, 2, 1], [6, 3, 4, 2]))
		array([3])
		
		To return the indices of the values common to the input arrays
		along with the intersected values:
		
		>>> x = np.array([1, 1, 2, 3, 4])
		>>> y = np.array([2, 1, 4, 6])
		>>> xy, x_ind, y_ind = np.intersect1d(x, y, return_indices=True)
		>>> x_ind, y_ind
		(array([0, 2, 4]), array([1, 0, 2]))
		>>> xy, x[x_ind], y[y_ind]
		(array([1, 2, 4]), array([1, 2, 4]), array([1, 2, 4]))
	**/
	static public function intersect1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic, ?return_indices:Dynamic):numpy.Ndarray;
	/**
		invert(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute bit-wise inversion, or bit-wise NOT, element-wise.
		
		Computes the bit-wise NOT of the underlying binary representation of
		the integers in the input arrays. This ufunc implements the C/Python
		operator ``~``.
		
		For signed integer inputs, the two's complement is returned.  In a
		two's-complement system negative numbers are represented by the two's
		complement of the absolute value. This is the most common method of
		representing signed integers on computers [1]_. A N-bit
		two's-complement system can represent every integer in the range
		:math:`-2^{N-1}` to :math:`+2^{N-1}-1`.
		
		Parameters
		----------
		x : array_like
		    Only integer and boolean types are handled.
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
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		bitwise_and, bitwise_or, bitwise_xor
		logical_not
		binary_repr :
		    Return the binary representation of the input number as a string.
		
		Notes
		-----
		`bitwise_not` is an alias for `invert`:
		
		>>> np.bitwise_not is np.invert
		True
		
		References
		----------
		.. [1] Wikipedia, "Two's complement",
		    https://en.wikipedia.org/wiki/Two's_complement
		
		Examples
		--------
		We've seen that 13 is represented by ``00001101``.
		The invert or bit-wise NOT of 13 is then:
		
		>>> x = np.invert(np.array(13, dtype=np.uint8))
		>>> x
		242
		>>> np.binary_repr(x, width=8)
		'11110010'
		
		The result depends on the bit-width:
		
		>>> x = np.invert(np.array(13, dtype=np.uint16))
		>>> x
		65522
		>>> np.binary_repr(x, width=16)
		'1111111111110010'
		
		When using signed integer types the result is the two's complement of
		the result for the unsigned type:
		
		>>> np.invert(np.array([13], dtype=np.int8))
		array([-14], dtype=int8)
		>>> np.binary_repr(-14, width=8)
		'11110010'
		
		Booleans are accepted as well:
		
		>>> np.invert(np.array([True, False]))
		array([False,  True])
		
		The ``~`` operator can be used as a shorthand for ``np.invert`` on
		ndarrays.
		
		>>> x1 = np.array([True, False])
		>>> ~x1
		array([False,  True])
	**/
	static public function invert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_busday(dates, weekmask='1111100', holidays=None, busdaycal=None, out=None)
		
		Calculates which of the given dates are valid days, and which are not.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dates : array_like of datetime64[D]
		    The array of dates to process.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of bool, optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of bool
		    An array with the same shape as ``dates``, containing True for
		    each valid day, and False for each invalid day.
		
		See Also
		--------
		busdaycalendar : An object that specifies a custom set of valid days.
		busday_offset : Applies an offset counted in valid days.
		busday_count : Counts how many valid days are in a half-open date range.
		
		Examples
		--------
		>>> # The weekdays are Friday, Saturday, and Monday
		... np.is_busday(['2011-07-01', '2011-07-02', '2011-07-18'],
		...                 holidays=['2011-07-01', '2011-07-04', '2011-07-17'])
		array([False, False,  True])
	**/
	static public function is_busday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a boolean array where two arrays are element-wise equal within a
		tolerance.
		
		The tolerance values are positive, typically very small numbers.  The
		relative difference (`rtol` * abs(`b`)) and the absolute difference
		`atol` are added together to compare against the absolute difference
		between `a` and `b`.
		
		.. warning:: The default `atol` is not appropriate for comparing numbers
		             that are much smaller than one (see Notes).
		
		Parameters
		----------
		a, b : array_like
		    Input arrays to compare.
		rtol : float
		    The relative tolerance parameter (see Notes).
		atol : float
		    The absolute tolerance parameter (see Notes).
		equal_nan : bool
		    Whether to compare NaN's as equal.  If True, NaN's in `a` will be
		    considered equal to NaN's in `b` in the output array.
		
		Returns
		-------
		y : array_like
		    Returns a boolean array of where `a` and `b` are equal within the
		    given tolerance. If both `a` and `b` are scalars, returns a single
		    boolean value.
		
		See Also
		--------
		allclose
		math.isclose
		
		Notes
		-----
		.. versionadded:: 1.7.0
		
		For finite values, isclose uses the following equation to test whether
		two floating point values are equivalent.
		
		 absolute(`a` - `b`) <= (`atol` + `rtol` * absolute(`b`))
		
		Unlike the built-in `math.isclose`, the above equation is not symmetric
		in `a` and `b` -- it assumes `b` is the reference value -- so that
		`isclose(a, b)` might be different from `isclose(b, a)`. Furthermore,
		the default value of atol is not zero, and is used to determine what
		small values should be considered close to zero. The default value is
		appropriate for expected values of order unity: if the expected values
		are significantly smaller than one, it can result in false positives.
		`atol` should be carefully selected for the use case at hand. A zero value
		for `atol` will result in `False` if either `a` or `b` is zero.
		
		`isclose` is not defined for non-numeric data types.
		`bool` is considered a numeric data-type for this purpose.
		
		Examples
		--------
		>>> np.isclose([1e10,1e-7], [1.00001e10,1e-8])
		array([ True, False])
		>>> np.isclose([1e10,1e-8], [1.00001e10,1e-9])
		array([ True, True])
		>>> np.isclose([1e10,1e-8], [1.0001e10,1e-9])
		array([False,  True])
		>>> np.isclose([1.0, np.nan], [1.0, np.nan])
		array([ True, False])
		>>> np.isclose([1.0, np.nan], [1.0, np.nan], equal_nan=True)
		array([ True, True])
		>>> np.isclose([1e-8, 1e-7], [0.0, 0.0])
		array([ True, False])
		>>> np.isclose([1e-100, 1e-7], [0.0, 0.0], atol=0.0)
		array([False, False])
		>>> np.isclose([1e-10, 1e-10], [1e-20, 0.0])
		array([ True,  True])
		>>> np.isclose([1e-10, 1e-10], [1e-20, 0.999999e-10], atol=0.0)
		array([False,  True])
	**/
	static public function isclose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):python.NativeIterable<Dynamic>;
	/**
		Returns a bool array, where True if input element is complex.
		
		What is tested is whether the input has a non-zero imaginary part, not if
		the input type is complex.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray of bools
		    Output array.
		
		See Also
		--------
		isreal
		iscomplexobj : Return True if x is a complex type or an array of complex
		               numbers.
		
		Examples
		--------
		>>> np.iscomplex([1+1j, 1+0j, 4.5, 3, 2, 2j])
		array([ True, False, False, False, False,  True])
	**/
	static public function iscomplex(x:Dynamic):Dynamic;
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
		isfinite(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for finiteness (not infinity and not Not a Number).
		
		The result is returned as a boolean array.
		
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
		y : ndarray, bool
		    True where ``x`` is not positive infinity, negative infinity,
		    or NaN; false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isinf, isneginf, isposinf, isnan
		
		Notes
		-----
		Not a Number, positive infinity and negative infinity are considered
		to be non-finite.
		
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		Also that positive infinity is not equivalent to negative infinity. But
		infinity is equivalent to positive infinity.  Errors result if the
		second argument is also supplied when `x` is a scalar input, or if
		first and second arguments have different shapes.
		
		Examples
		--------
		>>> np.isfinite(1)
		True
		>>> np.isfinite(0)
		True
		>>> np.isfinite(np.nan)
		False
		>>> np.isfinite(np.inf)
		False
		>>> np.isfinite(np.NINF)
		False
		>>> np.isfinite([np.log(-1.),1.,np.log(0)])
		array([False,  True, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isfinite(x, y)
		array([0, 1, 0])
		>>> y
		array([0, 1, 0])
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the array is Fortran contiguous but *not* C contiguous.
		
		This function is obsolete and, because of changes due to relaxed stride
		checking, its return value for the same array may differ for versions
		of NumPy >= 1.10.0 and previous versions. If you only want to check if an
		array is Fortran contiguous use ``a.flags.f_contiguous`` instead.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		
		Returns
		-------
		isfortran : bool
		    Returns True if the array is Fortran contiguous but *not* C contiguous.
		
		
		Examples
		--------
		
		np.array allows to specify whether the array is written in C-contiguous
		order (last index varies the fastest), or FORTRAN-contiguous order in
		memory (first index varies the fastest).
		
		>>> a = np.array([[1, 2, 3], [4, 5, 6]], order='C')
		>>> a
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> np.isfortran(a)
		False
		
		>>> b = np.array([[1, 2, 3], [4, 5, 6]], order='F')
		>>> b
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> np.isfortran(b)
		True
		
		
		The transpose of a C-ordered array is a FORTRAN-ordered array.
		
		>>> a = np.array([[1, 2, 3], [4, 5, 6]], order='C')
		>>> a
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> np.isfortran(a)
		False
		>>> b = a.T
		>>> b
		array([[1, 4],
		       [2, 5],
		       [3, 6]])
		>>> np.isfortran(b)
		True
		
		C-ordered arrays evaluate as False even if they are also FORTRAN-ordered.
		
		>>> np.isfortran(np.array([1, 2], order='F'))
		False
	**/
	static public function isfortran(a:Dynamic):Bool;
	/**
		Calculates `element in test_elements`, broadcasting over `element` only.
		Returns a boolean array of the same shape as `element` that is True
		where an element of `element` is in `test_elements` and False otherwise.
		
		Parameters
		----------
		element : array_like
		    Input array.
		test_elements : array_like
		    The values against which to test each value of `element`.
		    This argument is flattened if it is an array or array_like.
		    See notes for behavior with non-array-like parameters.
		assume_unique : bool, optional
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		invert : bool, optional
		    If True, the values in the returned array are inverted, as if
		    calculating `element not in test_elements`. Default is False.
		    ``np.isin(a, b, invert=True)`` is equivalent to (but faster
		    than) ``np.invert(np.isin(a, b))``.
		
		Returns
		-------
		isin : ndarray, bool
		    Has the same shape as `element`. The values `element[isin]`
		    are in `test_elements`.
		
		See Also
		--------
		in1d                  : Flattened version of this function.
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Notes
		-----
		
		`isin` is an element-wise function version of the python keyword `in`.
		``isin(a, b)`` is roughly equivalent to
		``np.array([item in b for item in a])`` if `a` and `b` are 1-D sequences.
		
		`element` and `test_elements` are converted to arrays if they are not
		already. If `test_elements` is a set (or other non-sequence collection)
		it will be converted to an object array with one element, rather than an
		array of the values contained in `test_elements`. This is a consequence
		of the `array` constructor's way of handling non-sequence collections.
		Converting the set to a list usually gives the desired behavior.
		
		.. versionadded:: 1.13.0
		
		Examples
		--------
		>>> element = 2*np.arange(4).reshape((2, 2))
		>>> element
		array([[0, 2],
		       [4, 6]])
		>>> test_elements = [1, 2, 4, 8]
		>>> mask = np.isin(element, test_elements)
		>>> mask
		array([[False,  True],
		       [ True, False]])
		>>> element[mask]
		array([2, 4])
		
		The indices of the matched values can be obtained with `nonzero`:
		
		>>> np.nonzero(mask)
		(array([0, 1]), array([1, 0]))
		
		The test can also be inverted:
		
		>>> mask = np.isin(element, test_elements, invert=True)
		>>> mask
		array([[ True, False],
		       [False,  True]])
		>>> element[mask]
		array([0, 6])
		
		Because of how `array` handles sets, the following does not
		work as expected:
		
		>>> test_set = {1, 2, 4, 8}
		>>> np.isin(element, test_set)
		array([[False, False],
		       [False, False]])
		
		Casting the set to a list gives the expected result:
		
		>>> np.isin(element, list(test_set))
		array([[False,  True],
		       [ True, False]])
	**/
	static public function isin(element:Dynamic, test_elements:Dynamic, ?assume_unique:Dynamic, ?invert:Dynamic):Dynamic;
	/**
		isinf(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for positive or negative infinity.
		
		Returns a boolean array of the same shape as `x`, True where ``x ==
		+/-inf``, otherwise False.
		
		Parameters
		----------
		x : array_like
		    Input values
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
		y : bool (scalar) or boolean ndarray
		    True where ``x`` is positive or negative infinity, false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isneginf, isposinf, isnan, isfinite
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is supplied when the first
		argument is a scalar, or if the first and second arguments have
		different shapes.
		
		Examples
		--------
		>>> np.isinf(np.inf)
		True
		>>> np.isinf(np.nan)
		False
		>>> np.isinf(np.NINF)
		True
		>>> np.isinf([np.inf, -np.inf, 1.0, np.nan])
		array([ True,  True, False, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isinf(x, y)
		array([1, 0, 1])
		>>> y
		array([1, 0, 1])
	**/
	static public function isinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for NaN and return result as a boolean array.
		
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
		y : ndarray or bool
		    True where ``x`` is NaN, false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isinf, isneginf, isposinf, isfinite, isnat
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		Examples
		--------
		>>> np.isnan(np.nan)
		True
		>>> np.isnan(np.inf)
		False
		>>> np.isnan([np.log(-1.),1.,np.log(0)])
		array([ True, False, False])
	**/
	static public function isnan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnat(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for NaT (not a time) and return result as a boolean array.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		x : array_like
		    Input array with datetime or timedelta data type.
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
		    True where ``x`` is NaT, false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isnan, isinf, isneginf, isposinf, isfinite
		
		Examples
		--------
		>>> np.isnat(np.datetime64("NaT"))
		True
		>>> np.isnat(np.datetime64("2016-01-01"))
		False
		>>> np.isnat(np.array(["NaT", "2016-01-01"], dtype="datetime64[ns]"))
		array([ True, False])
	**/
	static public function isnat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Test element-wise for negative infinity, return result as bool array.
		
		Parameters
		----------
		x : array_like
		    The input array.
		out : array_like, optional
		    A location into which the result is stored. If provided, it must have a
		    shape that the input broadcasts to. If not provided or None, a
		    freshly-allocated boolean array is returned.
		
		Returns
		-------
		out : ndarray
		    A boolean array with the same dimensions as the input.
		    If second argument is not supplied then a numpy boolean array is
		    returned with values True where the corresponding element of the
		    input is negative infinity and values False where the element of
		    the input is not negative infinity.
		
		    If a second argument is supplied the result is stored there. If the
		    type of that array is a numeric type the result is represented as
		    zeros and ones, if the type is boolean then as False and True. The
		    return value `out` is then a reference to that array.
		
		See Also
		--------
		isinf, isposinf, isnan, isfinite
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is also supplied when x is a scalar
		input, if first and second arguments have different shapes, or if the
		first argument has complex values.
		
		Examples
		--------
		>>> np.isneginf(np.NINF)
		True
		>>> np.isneginf(np.inf)
		False
		>>> np.isneginf(np.PINF)
		False
		>>> np.isneginf([-np.inf, 0., np.inf])
		array([ True, False, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isneginf(x, y)
		array([1, 0, 0])
		>>> y
		array([1, 0, 0])
	**/
	static public function isneginf(x:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Test element-wise for positive infinity, return result as bool array.
		
		Parameters
		----------
		x : array_like
		    The input array.
		out : array_like, optional
		    A location into which the result is stored. If provided, it must have a
		    shape that the input broadcasts to. If not provided or None, a
		    freshly-allocated boolean array is returned.
		
		Returns
		-------
		out : ndarray
		    A boolean array with the same dimensions as the input.
		    If second argument is not supplied then a boolean array is returned
		    with values True where the corresponding element of the input is
		    positive infinity and values False where the element of the input is
		    not positive infinity.
		
		    If a second argument is supplied the result is stored there. If the
		    type of that array is a numeric type the result is represented as zeros
		    and ones, if the type is boolean then as False and True.
		    The return value `out` is then a reference to that array.
		
		See Also
		--------
		isinf, isneginf, isfinite, isnan
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is also supplied when x is a scalar
		input, if first and second arguments have different shapes, or if the
		first argument has complex values
		
		Examples
		--------
		>>> np.isposinf(np.PINF)
		True
		>>> np.isposinf(np.inf)
		True
		>>> np.isposinf(np.NINF)
		False
		>>> np.isposinf([-np.inf, 0., np.inf])
		array([False, False,  True])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isposinf(x, y)
		array([0, 0, 1])
		>>> y
		array([0, 0, 1])
	**/
	static public function isposinf(x:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Returns a bool array, where True if input element is real.
		
		If element has complex type with zero complex part, the return value
		for that element is True.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray, bool
		    Boolean array of same shape as `x`.
		
		Notes
		-----
		`isreal` may behave unexpectedly for string or object arrays (see examples)
		
		See Also
		--------
		iscomplex
		isrealobj : Return True if x is not a complex type.
		
		Examples
		--------
		>>> a = np.array([1+1j, 1+0j, 4.5, 3, 2, 2j], dtype=complex)
		>>> np.isreal(a)
		array([False,  True,  True,  True,  True, False])
		
		The function does not work on string arrays.
		
		>>> a = np.array([2j, "a"], dtype="U")
		>>> np.isreal(a)  # Warns about non-elementwise comparison
		False
		
		Returns True for all elements in input array of ``dtype=object`` even if
		any of the elements is complex.
		
		>>> a = np.array([1, "2", 3+4j], dtype=object)
		>>> np.isreal(a)
		array([ True,  True,  True])
		
		isreal should not be used with object arrays
		
		>>> a = np.array([1+2j, 2+1j], dtype=object)
		>>> np.isreal(a)
		array([ True,  True])
	**/
	static public function isreal(x:Dynamic):Dynamic;
	/**
		Return True if x is a not complex type or an array of complex numbers.
		
		The type of the input is checked, not the value. So even if the input
		has an imaginary part equal to zero, `isrealobj` evaluates to False
		if the data type is complex.
		
		Parameters
		----------
		x : any
		    The input can be of any type and shape.
		
		Returns
		-------
		y : bool
		    The return value, False if `x` is of a complex type.
		
		See Also
		--------
		iscomplexobj, isreal
		
		Notes
		-----
		The function is only meant for arrays with numerical values but it
		accepts all other objects. Since it assumes array input, the return
		value of other objects may be True.
		
		>>> np.isrealobj('A string')
		True
		>>> np.isrealobj(False)
		True
		>>> np.isrealobj(None)
		True
		
		Examples
		--------
		>>> np.isrealobj(1)
		True
		>>> np.isrealobj(1+0j)
		False
		>>> np.isrealobj([3, 1+0j, True])
		False
	**/
	static public function isrealobj(x:Dynamic):Bool;
	/**
		Returns True if the type of `element` is a scalar type.
		
		Parameters
		----------
		element : any
		    Input argument, can be of any type and shape.
		
		Returns
		-------
		val : bool
		    True if `element` is a scalar type, False if it is not.
		
		See Also
		--------
		ndim : Get the number of dimensions of an array
		
		Notes
		-----
		If you need a stricter way to identify a *numerical* scalar, use
		``isinstance(x, numbers.Number)``, as that returns ``False`` for most
		non-numerical elements such as strings.
		
		In most cases ``np.ndim(x) == 0`` should be used instead of this function,
		as that will also return true for 0d arrays. This is how numpy overloads
		functions in the style of the ``dx`` arguments to `gradient` and the ``bins``
		argument to `histogram`. Some key differences:
		
		+--------------------------------------+---------------+-------------------+
		| x                                    |``isscalar(x)``|``np.ndim(x) == 0``|
		+======================================+===============+===================+
		| PEP 3141 numeric objects (including  | ``True``      | ``True``          |
		| builtins)                            |               |                   |
		+--------------------------------------+---------------+-------------------+
		| builtin string and buffer objects    | ``True``      | ``True``          |
		+--------------------------------------+---------------+-------------------+
		| other builtin objects, like          | ``False``     | ``True``          |
		| `pathlib.Path`, `Exception`,         |               |                   |
		| the result of `re.compile`           |               |                   |
		+--------------------------------------+---------------+-------------------+
		| third-party objects like             | ``False``     | ``True``          |
		| `matplotlib.figure.Figure`           |               |                   |
		+--------------------------------------+---------------+-------------------+
		| zero-dimensional numpy arrays        | ``False``     | ``True``          |
		+--------------------------------------+---------------+-------------------+
		| other numpy arrays                   | ``False``     | ``False``         |
		+--------------------------------------+---------------+-------------------+
		| `list`, `tuple`, and other sequence  | ``False``     | ``False``         |
		| objects                              |               |                   |
		+--------------------------------------+---------------+-------------------+
		
		Examples
		--------
		>>> np.isscalar(3.1)
		True
		>>> np.isscalar(np.array(3.1))
		False
		>>> np.isscalar([3.1])
		False
		>>> np.isscalar(False)
		True
		>>> np.isscalar('numpy')
		True
		
		NumPy supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> np.isscalar(Fraction(5, 17))
		True
		>>> from numbers import Number
		>>> np.isscalar(Number())
		True
	**/
	static public function isscalar(element:Dynamic):Bool;
	/**
		Determines whether the given object represents a scalar data-type.
		
		Parameters
		----------
		rep : any
		    If `rep` is an instance of a scalar dtype, True is returned. If not,
		    False is returned.
		
		Returns
		-------
		out : bool
		    Boolean result of check whether `rep` is a scalar dtype.
		
		See Also
		--------
		issubsctype, issubdtype, obj2sctype, sctype2char
		
		Examples
		--------
		>>> np.issctype(np.int32)
		True
		>>> np.issctype(list)
		False
		>>> np.issctype(1.1)
		False
		
		Strings are also a scalar type:
		
		>>> np.issctype(np.dtype('str'))
		True
	**/
	static public function issctype(rep:Dynamic):Bool;
	/**
		Determine if a class is a subclass of a second class.
		
		`issubclass_` is equivalent to the Python built-in ``issubclass``,
		except that it returns False instead of raising a TypeError if one
		of the arguments is not a class.
		
		Parameters
		----------
		arg1 : class
		    Input class. True is returned if `arg1` is a subclass of `arg2`.
		arg2 : class or tuple of classes.
		    Input class. If a tuple of classes, True is returned if `arg1` is a
		    subclass of any of the tuple elements.
		
		Returns
		-------
		out : bool
		    Whether `arg1` is a subclass of `arg2` or not.
		
		See Also
		--------
		issubsctype, issubdtype, issctype
		
		Examples
		--------
		>>> np.issubclass_(np.int32, int)
		False
		>>> np.issubclass_(np.int32, float)
		False
		>>> np.issubclass_(np.float64, float)
		True
	**/
	static public function issubclass_(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		This is like the builtin :func:`issubclass`, but for `dtype`\ s.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    `dtype` or object coercible to one
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		:ref:`arrays.scalars` : Overview of the numpy type hierarchy.
		issubsctype, issubclass_
		
		Examples
		--------
		`issubdtype` can be used to check the type of arrays:
		
		>>> ints = np.array([1, 2, 3], dtype=np.int32)
		>>> np.issubdtype(ints.dtype, np.integer)
		True
		>>> np.issubdtype(ints.dtype, np.floating)
		False
		
		>>> floats = np.array([1, 2, 3], dtype=np.float32)
		>>> np.issubdtype(floats.dtype, np.integer)
		False
		>>> np.issubdtype(floats.dtype, np.floating)
		True
		
		Similar types of different sizes are not subdtypes of each other:
		
		>>> np.issubdtype(np.float64, np.float32)
		False
		>>> np.issubdtype(np.float32, np.float64)
		False
		
		but both are subtypes of `floating`:
		
		>>> np.issubdtype(np.float64, np.floating)
		True
		>>> np.issubdtype(np.float32, np.floating)
		True
		
		For convenience, dtype-like objects are allowed too:
		
		>>> np.issubdtype('S1', np.string_)
		True
		>>> np.issubdtype('i4', np.signedinteger)
		True
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Determine if the first argument is a subclass of the second argument.
		
		Parameters
		----------
		arg1, arg2 : dtype or dtype specifier
		    Data-types.
		
		Returns
		-------
		out : bool
		    The result.
		
		See Also
		--------
		issctype, issubdtype, obj2sctype
		
		Examples
		--------
		>>> np.issubsctype('S8', str)
		False
		>>> np.issubsctype(np.array([1]), int)
		True
		>>> np.issubsctype(np.array([1]), float)
		False
	**/
	static public function issubsctype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Check whether or not an object can be iterated over.
		
		Parameters
		----------
		y : object
		  Input object.
		
		Returns
		-------
		b : bool
		  Return ``True`` if the object has an iterator method or is a
		  sequence and ``False`` otherwise.
		
		
		Examples
		--------
		>>> np.iterable([1, 2, 3])
		True
		>>> np.iterable(2)
		False
		
		Notes
		-----
		In most cases, the results of ``np.iterable(obj)`` are consistent with
		``isinstance(obj, collections.abc.Iterable)``. One notable exception is
		the treatment of 0-dimensional arrays::
		
		    >>> from collections.abc import Iterable
		    >>> a = np.array(1.0)  # 0-dimensional numpy array
		    >>> isinstance(a, Iterable)
		    True
		    >>> np.iterable(a)
		    False
	**/
	static public function iterable(y:Dynamic):Bool;
	/**
		Construct an open mesh from multiple sequences.
		
		This function takes N 1-D sequences and returns N outputs with N
		dimensions each, such that the shape is 1 in all but one dimension
		and the dimension with the non-unit shape value cycles through all
		N dimensions.
		
		Using `ix_` one can quickly construct index arrays that will index
		the cross product. ``a[np.ix_([1,3],[2,5])]`` returns the array
		``[[a[1,2] a[1,5]], [a[3,2] a[3,5]]]``.
		
		Parameters
		----------
		args : 1-D sequences
		    Each sequence should be of integer or boolean type.
		    Boolean sequences will be interpreted as boolean masks for the
		    corresponding dimension (equivalent to passing in
		    ``np.nonzero(boolean_sequence)``).
		
		Returns
		-------
		out : tuple of ndarrays
		    N arrays with N dimensions each, with N the number of input
		    sequences. Together these arrays form an open mesh.
		
		See Also
		--------
		ogrid, mgrid, meshgrid
		
		Examples
		--------
		>>> a = np.arange(10).reshape(2, 5)
		>>> a
		array([[0, 1, 2, 3, 4],
		       [5, 6, 7, 8, 9]])
		>>> ixgrid = np.ix_([0, 1], [2, 4])
		>>> ixgrid
		(array([[0],
		       [1]]), array([[2, 4]]))
		>>> ixgrid[0].shape, ixgrid[1].shape
		((2, 1), (1, 2))
		>>> a[ixgrid]
		array([[2, 4],
		       [7, 9]])
		
		>>> ixgrid = np.ix_([True, True], [2, 4])
		>>> a[ixgrid]
		array([[2, 4],
		       [7, 9]])
		>>> ixgrid = np.ix_([True, True], [False, False, True, False, True])
		>>> a[ixgrid]
		array([[2, 4],
		       [7, 9]])
	**/
	static public function ix_(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return the Kaiser window.
		
		The Kaiser window is a taper formed by using a Bessel function.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		beta : float
		    Shape parameter for window.
		
		Returns
		-------
		out : array
		    The window, with the maximum value normalized to one (the value
		    one appears only if the number of samples is odd).
		
		See Also
		--------
		bartlett, blackman, hamming, hanning
		
		Notes
		-----
		The Kaiser window is defined as
		
		.. math::  w(n) = I_0\left( \beta \sqrt{1-\frac{4n^2}{(M-1)^2}}
		           \right)/I_0(\beta)
		
		with
		
		.. math:: \quad -\frac{M-1}{2} \leq n \leq \frac{M-1}{2},
		
		where :math:`I_0` is the modified zeroth-order Bessel function.
		
		The Kaiser was named for Jim Kaiser, who discovered a simple
		approximation to the DPSS window based on Bessel functions.  The Kaiser
		window is a very good approximation to the Digital Prolate Spheroidal
		Sequence, or Slepian window, which is the transform which maximizes the
		energy in the main lobe of the window relative to total energy.
		
		The Kaiser can approximate many other windows by varying the beta
		parameter.
		
		====  =======================
		beta  Window shape
		====  =======================
		0     Rectangular
		5     Similar to a Hamming
		6     Similar to a Hanning
		8.6   Similar to a Blackman
		====  =======================
		
		A beta value of 14 is probably a good starting point. Note that as beta
		gets large, the window narrows, and so the number of samples needs to be
		large enough to sample the increasingly narrow spike, otherwise NaNs will
		get returned.
		
		Most references to the Kaiser window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] J. F. Kaiser, "Digital Filters" - Ch 7 in "Systems analysis by
		       digital computer", Editors: F.F. Kuo and J.F. Kaiser, p 218-285.
		       John Wiley and Sons, New York, (1966).
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics", The
		       University of Alberta Press, 1975, pp. 177-178.
		.. [3] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> np.kaiser(12, 14)
		 array([7.72686684e-06, 3.46009194e-03, 4.65200189e-02, # may vary
		        2.29737120e-01, 5.99885316e-01, 9.45674898e-01,
		        9.45674898e-01, 5.99885316e-01, 2.29737120e-01,
		        4.65200189e-02, 3.46009194e-03, 7.72686684e-06])
		
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.kaiser(51, 14)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Kaiser window")
		Text(0.5, 1.0, 'Kaiser window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Kaiser window")
		Text(0.5, 1.0, 'Frequency response of Kaiser window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...) # may vary
		>>> plt.show()
	**/
	static public function kaiser(M:Dynamic, beta:Dynamic):Array<Dynamic>;
	/**
		Kronecker product of two arrays.
		
		Computes the Kronecker product, a composite array made of blocks of the
		second array scaled by the first.
		
		Parameters
		----------
		a, b : array_like
		
		Returns
		-------
		out : ndarray
		
		See Also
		--------
		outer : The outer product
		
		Notes
		-----
		The function assumes that the number of dimensions of `a` and `b`
		are the same, if necessary prepending the smallest with ones.
		If ``a.shape = (r0,r1,..,rN)`` and ``b.shape = (s0,s1,...,sN)``,
		the Kronecker product has shape ``(r0*s0, r1*s1, ..., rN*SN)``.
		The elements are products of elements from `a` and `b`, organized
		explicitly by::
		
		    kron(a,b)[k0,k1,...,kN] = a[i0,i1,...,iN] * b[j0,j1,...,jN]
		
		where::
		
		    kt = it * st + jt,  t = 0,...,N
		
		In the common 2-D case (N=1), the block structure can be visualized::
		
		    [[ a[0,0]*b,   a[0,1]*b,  ... , a[0,-1]*b  ],
		     [  ...                              ...   ],
		     [ a[-1,0]*b,  a[-1,1]*b, ... , a[-1,-1]*b ]]
		
		
		Examples
		--------
		>>> np.kron([1,10,100], [5,6,7])
		array([  5,   6,   7, ..., 500, 600, 700])
		>>> np.kron([5,6,7], [1,10,100])
		array([  5,  50, 500, ...,   7,  70, 700])
		
		>>> np.kron(np.eye(2), np.ones((2,2)))
		array([[1.,  1.,  0.,  0.],
		       [1.,  1.,  0.,  0.],
		       [0.,  0.,  1.,  1.],
		       [0.,  0.,  1.,  1.]])
		
		>>> a = np.arange(100).reshape((2,5,2,5))
		>>> b = np.arange(24).reshape((2,3,4))
		>>> c = np.kron(a,b)
		>>> c.shape
		(2, 10, 6, 20)
		>>> I = (1,3,0,2)
		>>> J = (0,2,1)
		>>> J1 = (0,) + J             # extend to ndim=4
		>>> S1 = (1,) + b.shape
		>>> K = tuple(np.array(I) * np.array(S1) + np.array(J1))
		>>> c[K] == a[I]*b[J]
		True
	**/
	static public function kron(a:Dynamic, b:Dynamic):numpy.Ndarray;
	/**
		lcm(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the lowest common multiple of ``|x1|`` and ``|x2|``
		
		Parameters
		----------
		x1, x2 : array_like, int
		    Arrays of values.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
		
		Returns
		-------
		y : ndarray or scalar
		    The lowest common multiple of the absolute value of the inputs
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		gcd : The greatest common divisor
		
		Examples
		--------
		>>> np.lcm(12, 20)
		60
		>>> np.lcm.reduce([3, 12, 20])
		60
		>>> np.lcm.reduce([40, 12, 20])
		120
		>>> np.lcm(np.arange(6), 20)
		array([ 0, 20, 20, 60, 20, 20])
	**/
	static public function lcm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldexp(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns x1 * 2**x2, element-wise.
		
		The mantissas `x1` and twos exponents `x2` are used to construct
		floating point numbers ``x1 * 2**x2``.
		
		Parameters
		----------
		x1 : array_like
		    Array of multipliers.
		x2 : array_like, int
		    Array of twos exponents.
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
		    The result of ``x1 * 2**x2``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		frexp : Return (y1, y2) from ``x = y1 * 2**y2``, inverse to `ldexp`.
		
		Notes
		-----
		Complex dtypes are not supported, they will raise a TypeError.
		
		`ldexp` is useful as the inverse of `frexp`, if used by itself it is
		more clear to simply use the expression ``x1 * 2**x2``.
		
		Examples
		--------
		>>> np.ldexp(5, np.arange(4))
		array([ 5., 10., 20., 40.], dtype=float16)
		
		>>> x = np.arange(6)
		>>> np.ldexp(*np.frexp(x))
		array([ 0.,  1.,  2.,  3.,  4.,  5.])
	**/
	static public function ldexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		left_shift(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Shift the bits of an integer to the left.
		
		Bits are shifted to the left by appending `x2` 0s at the right of `x1`.
		Since the internal representation of numbers is in binary format, this
		operation is equivalent to multiplying `x1` by ``2**x2``.
		
		Parameters
		----------
		x1 : array_like of integer type
		    Input values.
		x2 : array_like of integer type
		    Number of zeros to append to `x1`. Has to be non-negative.
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
		out : array of integer type
		    Return `x1` with bits shifted `x2` times to the left.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		right_shift : Shift the bits of an integer to the right.
		binary_repr : Return the binary representation of the input number
		    as a string.
		
		Examples
		--------
		>>> np.binary_repr(5)
		'101'
		>>> np.left_shift(5, 2)
		20
		>>> np.binary_repr(20)
		'10100'
		
		>>> np.left_shift(5, [1,2,3])
		array([10, 20, 40])
		
		Note that the dtype of the second argument may change the dtype of the
		result and can lead to unexpected results in some cases (see
		:ref:`Casting Rules <ufuncs.casting>`):
		
		>>> a = np.left_shift(np.uint8(255), 1) # Expect 254
		>>> print(a, type(a)) # Unexpected result due to upcasting
		510 <class 'numpy.int64'>
		>>> b = np.left_shift(np.uint8(255), np.uint8(1))
		>>> print(b, type(b))
		254 <class 'numpy.uint8'>
		
		The ``<<`` operator can be used as a shorthand for ``np.left_shift`` on
		ndarrays.
		
		>>> x1 = 5
		>>> x2 = np.array([1, 2, 3])
		>>> x1 << x2
		array([10, 20, 40])
	**/
	static public function left_shift(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function less(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function less_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lexsort(keys, axis=-1)
		
		Perform an indirect stable sort using a sequence of keys.
		
		Given multiple sorting keys, which can be interpreted as columns in a
		spreadsheet, lexsort returns an array of integer indices that describes
		the sort order by multiple columns. The last key in the sequence is used
		for the primary sort order, the second-to-last key for the secondary sort
		order, and so on. The keys argument must be a sequence of objects that
		can be converted to arrays of the same shape. If a 2D array is provided
		for the keys argument, its rows are interpreted as the sorting keys and
		sorting is according to the last row, second last row etc.
		
		Parameters
		----------
		keys : (k, N) array or tuple containing k (N,)-shaped sequences
		    The `k` different "columns" to be sorted.  The last column (or row if
		    `keys` is a 2D array) is the primary sort key.
		axis : int, optional
		    Axis to be indirectly sorted.  By default, sort over the last axis.
		
		Returns
		-------
		indices : (N,) ndarray of ints
		    Array of indices that sort the keys along the specified axis.
		
		See Also
		--------
		argsort : Indirect sort.
		ndarray.sort : In-place sort.
		sort : Return a sorted copy of an array.
		
		Examples
		--------
		Sort names: first by surname, then by name.
		
		>>> surnames =    ('Hertz',    'Galilei', 'Hertz')
		>>> first_names = ('Heinrich', 'Galileo', 'Gustav')
		>>> ind = np.lexsort((first_names, surnames))
		>>> ind
		array([1, 2, 0])
		
		>>> [surnames[i] + ", " + first_names[i] for i in ind]
		['Galilei, Galileo', 'Hertz, Gustav', 'Hertz, Heinrich']
		
		Sort two columns of numbers:
		
		>>> a = [1,5,1,4,3,4,4] # First column
		>>> b = [9,4,0,4,0,2,1] # Second column
		>>> ind = np.lexsort((b,a)) # Sort by a, then by b
		>>> ind
		array([2, 0, 4, 6, 5, 3, 1])
		
		>>> [(a[i],b[i]) for i in ind]
		[(1, 0), (1, 9), (3, 0), (4, 1), (4, 2), (4, 4), (5, 4)]
		
		Note that sorting is first according to the elements of ``a``.
		Secondary sorting is according to the elements of ``b``.
		
		A normal ``argsort`` would have yielded:
		
		>>> [(a[i],b[i]) for i in np.argsort(a)]
		[(1, 9), (1, 0), (3, 0), (4, 4), (4, 2), (4, 1), (5, 4)]
		
		Structured arrays are sorted lexically by ``argsort``:
		
		>>> x = np.array([(1,9), (5,4), (1,0), (4,4), (3,0), (4,2), (4,1)],
		...              dtype=np.dtype([('x', int), ('y', int)]))
		
		>>> np.argsort(x) # or np.argsort(x, order=('x', 'y'))
		array([2, 0, 4, 6, 5, 3, 1])
	**/
	static public function lexsort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return evenly spaced numbers over a specified interval.
		
		Returns `num` evenly spaced samples, calculated over the
		interval [`start`, `stop`].
		
		The endpoint of the interval can optionally be excluded.
		
		.. versionchanged:: 1.16.0
		    Non-scalar `start` and `stop` are now supported.
		
		.. versionchanged:: 1.20.0
		    Values are rounded towards ``-inf`` instead of ``0`` when an
		    integer ``dtype`` is specified. The old behavior can
		    still be obtained with ``np.linspace(start, stop, num).astype(int)``
		
		Parameters
		----------
		start : array_like
		    The starting value of the sequence.
		stop : array_like
		    The end value of the sequence, unless `endpoint` is set to False.
		    In that case, the sequence consists of all but the last of ``num + 1``
		    evenly spaced samples, so that `stop` is excluded.  Note that the step
		    size changes when `endpoint` is False.
		num : int, optional
		    Number of samples to generate. Default is 50. Must be non-negative.
		endpoint : bool, optional
		    If True, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		retstep : bool, optional
		    If True, return (`samples`, `step`), where `step` is the spacing
		    between samples.
		dtype : dtype, optional
		    The type of the output array.  If `dtype` is not given, the data type
		    is inferred from `start` and `stop`. The inferred dtype will never be
		    an integer; `float` is chosen even if the arguments would produce an
		    array of integers.
		
		    .. versionadded:: 1.9.0
		
		axis : int, optional
		    The axis in the result to store the samples.  Relevant only if start
		    or stop are array-like.  By default (0), the samples will be along a
		    new axis inserted at the beginning. Use -1 to get an axis at the end.
		
		    .. versionadded:: 1.16.0
		
		Returns
		-------
		samples : ndarray
		    There are `num` equally spaced samples in the closed interval
		    ``[start, stop]`` or the half-open interval ``[start, stop)``
		    (depending on whether `endpoint` is True or False).
		step : float, optional
		    Only returned if `retstep` is True
		
		    Size of spacing between samples.
		
		
		See Also
		--------
		arange : Similar to `linspace`, but uses a step size (instead of the
		         number of samples).
		geomspace : Similar to `linspace`, but with numbers spaced evenly on a log
		            scale (a geometric progression).
		logspace : Similar to `geomspace`, but with the end points specified as
		           logarithms.
		
		Examples
		--------
		>>> np.linspace(2.0, 3.0, num=5)
		array([2.  , 2.25, 2.5 , 2.75, 3.  ])
		>>> np.linspace(2.0, 3.0, num=5, endpoint=False)
		array([2. ,  2.2,  2.4,  2.6,  2.8])
		>>> np.linspace(2.0, 3.0, num=5, retstep=True)
		(array([2.  ,  2.25,  2.5 ,  2.75,  3.  ]), 0.25)
		
		Graphical illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 8
		>>> y = np.zeros(N)
		>>> x1 = np.linspace(0, 10, N, endpoint=True)
		>>> x2 = np.linspace(0, 10, N, endpoint=False)
		>>> plt.plot(x1, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(x2, y + 0.5, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.ylim([-0.5, 1])
		(-0.5, 1)
		>>> plt.show()
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?retstep:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	static public var little_endian : Dynamic;
	/**
		Load arrays or pickled objects from ``.npy``, ``.npz`` or pickled files.
		
		.. warning:: Loading files that contain object arrays uses the ``pickle``
		             module, which is not secure against erroneous or maliciously
		             constructed data. Consider passing ``allow_pickle=False`` to
		             load data that is known not to contain object arrays for the
		             safer handling of untrusted sources.
		
		Parameters
		----------
		file : file-like object, string, or pathlib.Path
		    The file to read. File-like objects must support the
		    ``seek()`` and ``read()`` methods. Pickled files require that the
		    file-like object support the ``readline()`` method as well.
		mmap_mode : {None, 'r+', 'r', 'w+', 'c'}, optional
		    If not None, then memory-map the file, using the given mode (see
		    `numpy.memmap` for a detailed description of the modes).  A
		    memory-mapped array is kept on disk. However, it can be accessed
		    and sliced like any ndarray.  Memory mapping is especially useful
		    for accessing small fragments of large files without reading the
		    entire file into memory.
		allow_pickle : bool, optional
		    Allow loading pickled object arrays stored in npy files. Reasons for
		    disallowing pickles include security, as loading pickled data can
		    execute arbitrary code. If pickles are disallowed, loading object
		    arrays will fail. Default: False
		
		    .. versionchanged:: 1.16.3
		        Made default False in response to CVE-2019-6446.
		
		fix_imports : bool, optional
		    Only useful when loading Python 2 generated pickled files on Python 3,
		    which includes npy/npz files containing object arrays. If `fix_imports`
		    is True, pickle will try to map the old Python 2 names to the new names
		    used in Python 3.
		encoding : str, optional
		    What encoding to use when reading Python 2 strings. Only useful when
		    loading Python 2 generated pickled files in Python 3, which includes
		    npy/npz files containing object arrays. Values other than 'latin1',
		    'ASCII', and 'bytes' are not allowed, as they can corrupt numerical
		    data. Default: 'ASCII'
		
		Returns
		-------
		result : array, tuple, dict, etc.
		    Data stored in the file. For ``.npz`` files, the returned instance
		    of NpzFile class must be closed to avoid leaking file descriptors.
		
		Raises
		------
		OSError
		    If the input file does not exist or cannot be read.
		UnpicklingError
		    If ``allow_pickle=True``, but the file cannot be loaded as a pickle.
		ValueError
		    The file contains an object array, but ``allow_pickle=False`` given.
		
		See Also
		--------
		save, savez, savez_compressed, loadtxt
		memmap : Create a memory-map to an array stored in a file on disk.
		lib.format.open_memmap : Create or load a memory-mapped ``.npy`` file.
		
		Notes
		-----
		- If the file contains pickle data, then whatever object is stored
		  in the pickle is returned.
		- If the file is a ``.npy`` file, then a single array is returned.
		- If the file is a ``.npz`` file, then a dictionary-like object is
		  returned, containing ``{filename: array}`` key-value pairs, one for
		  each file in the archive.
		- If the file is a ``.npz`` file, the returned value supports the
		  context manager protocol in a similar fashion to the open function::
		
		    with load('foo.npz') as data:
		        a = data['a']
		
		  The underlying file descriptor is closed when exiting the 'with'
		  block.
		
		Examples
		--------
		Store data to disk, and load it again:
		
		>>> np.save('/tmp/123', np.array([[1, 2, 3], [4, 5, 6]]))
		>>> np.load('/tmp/123.npy')
		array([[1, 2, 3],
		       [4, 5, 6]])
		
		Store compressed data to disk, and load it again:
		
		>>> a=np.array([[1, 2, 3], [4, 5, 6]])
		>>> b=np.array([1, 2])
		>>> np.savez('/tmp/123.npz', a=a, b=b)
		>>> data = np.load('/tmp/123.npz')
		>>> data['a']
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> data['b']
		array([1, 2])
		>>> data.close()
		
		Mem-map the stored array, and then access the second row
		directly from disk:
		
		>>> X = np.load('/tmp/123.npy', mmap_mode='r')
		>>> X[1, :]
		memmap([4, 5, 6])
	**/
	static public function load(file:Dynamic, ?mmap_mode:Dynamic, ?allow_pickle:Dynamic, ?fix_imports:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Load data from a text file.
		
		Each row in the text file must have the same number of values.
		
		Parameters
		----------
		fname : file, str, pathlib.Path, list of str, generator
		    File, filename, list, or generator to read.  If the filename
		    extension is ``.gz`` or ``.bz2``, the file is first decompressed. Note
		    that generators must return bytes or strings. The strings
		    in a list or produced by a generator are treated as lines.
		dtype : data-type, optional
		    Data-type of the resulting array; default: float.  If this is a
		    structured data-type, the resulting array will be 1-dimensional, and
		    each row will be interpreted as an element of the array.  In this
		    case, the number of columns used must match the number of fields in
		    the data-type.
		comments : str or sequence of str, optional
		    The characters or list of characters used to indicate the start of a
		    comment. None implies no comments. For backwards compatibility, byte
		    strings will be decoded as 'latin1'. The default is '#'.
		delimiter : str, optional
		    The string used to separate values. For backwards compatibility, byte
		    strings will be decoded as 'latin1'. The default is whitespace.
		converters : dict, optional
		    A dictionary mapping column number to a function that will parse the
		    column string into the desired value.  E.g., if column 0 is a date
		    string: ``converters = {0: datestr2num}``.  Converters can also be
		    used to provide a default value for missing data (but see also
		    `genfromtxt`): ``converters = {3: lambda s: float(s.strip() or 0)}``.
		    Default: None.
		skiprows : int, optional
		    Skip the first `skiprows` lines, including comments; default: 0.
		usecols : int or sequence, optional
		    Which columns to read, with 0 being the first. For example,
		    ``usecols = (1,4,5)`` will extract the 2nd, 5th and 6th columns.
		    The default, None, results in all columns being read.
		
		    .. versionchanged:: 1.11.0
		        When a single column has to be read it is possible to use
		        an integer instead of a tuple. E.g ``usecols = 3`` reads the
		        fourth column the same way as ``usecols = (3,)`` would.
		unpack : bool, optional
		    If True, the returned array is transposed, so that arguments may be
		    unpacked using ``x, y, z = loadtxt(...)``.  When used with a
		    structured data-type, arrays are returned for each field.
		    Default is False.
		ndmin : int, optional
		    The returned array will have at least `ndmin` dimensions.
		    Otherwise mono-dimensional axes will be squeezed.
		    Legal values: 0 (default), 1 or 2.
		
		    .. versionadded:: 1.6.0
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply to input streams.
		    The special value 'bytes' enables backward compatibility workarounds
		    that ensures you receive byte arrays as results if possible and passes
		    'latin1' encoded strings to converters. Override this value to receive
		    unicode arrays and pass strings as input to converters.  If set to None
		    the system default is used. The default value is 'bytes'.
		
		    .. versionadded:: 1.14.0
		max_rows : int, optional
		    Read `max_rows` lines of content after `skiprows` lines. The default
		    is to read all the lines.
		
		    .. versionadded:: 1.16.0
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
		    Data read from the text file.
		
		See Also
		--------
		load, fromstring, fromregex
		genfromtxt : Load data with missing values handled as specified.
		scipy.io.loadmat : reads MATLAB data files
		
		Notes
		-----
		This function aims to be a fast reader for simply formatted files.  The
		`genfromtxt` function provides more sophisticated handling of, e.g.,
		lines with missing values.
		
		.. versionadded:: 1.10.0
		
		The strings produced by the Python float.hex method can be used as
		input for floats.
		
		Examples
		--------
		>>> from io import StringIO   # StringIO behaves like a file object
		>>> c = StringIO("0 1\n2 3")
		>>> np.loadtxt(c)
		array([[0., 1.],
		       [2., 3.]])
		
		>>> d = StringIO("M 21 72\nF 35 58")
		>>> np.loadtxt(d, dtype={'names': ('gender', 'age', 'weight'),
		...                      'formats': ('S1', 'i4', 'f4')})
		array([(b'M', 21, 72.), (b'F', 35, 58.)],
		      dtype=[('gender', 'S1'), ('age', '<i4'), ('weight', '<f4')])
		
		>>> c = StringIO("1,0,2\n3,0,4")
		>>> x, y = np.loadtxt(c, delimiter=',', usecols=(0, 2), unpack=True)
		>>> x
		array([1., 3.])
		>>> y
		array([2., 4.])
		
		This example shows how `converters` can be used to convert a field
		with a trailing minus sign into a negative number.
		
		>>> s = StringIO('10.01 31.25-\n19.22 64.31\n17.57- 63.94')
		>>> def conv(fld):
		...     return -float(fld[:-1]) if fld.endswith(b'-') else float(fld)
		...
		>>> np.loadtxt(s, converters={0: conv, 1: conv})
		array([[ 10.01, -31.25],
		       [ 19.22,  64.31],
		       [-17.57,  63.94]])
	**/
	static public function loadtxt(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?converters:Dynamic, ?skiprows:Dynamic, ?usecols:Dynamic, ?unpack:Dynamic, ?ndmin:Dynamic, ?encoding:Dynamic, ?max_rows:Dynamic, ?like:Dynamic):numpy.Ndarray;
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
	static public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function log10(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log1p(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the natural logarithm of one plus the input array, element-wise.
		
		Calculates ``log(1 + x)``.
		
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
		    Natural logarithm of `1 + x`, element-wise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		expm1 : ``exp(x) - 1``, the inverse of `log1p`.
		
		Notes
		-----
		For real-valued input, `log1p` is accurate also for `x` so small
		that `1 + x == 1` in floating-point accuracy.
		
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `exp(z) = 1 + x`. The convention is to return
		the `z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log1p` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log1p` is a complex analytical function that
		has a branch cut `[-inf, -1]` and is continuous from above on it.
		`log1p` handles the floating-point negative zero as an infinitesimal
		negative number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67.
		       https://personal.math.ubc.ca/~cbm/aands/page_67.htm
		.. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log1p(1e-99)
		1e-99
		>>> np.log(1 + 1e-99)
		0.0
	**/
	static public function log1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function log2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logaddexp(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Logarithm of the sum of exponentiations of the inputs.
		
		Calculates ``log(exp(x1) + exp(x2))``. This function is useful in
		statistics where the calculated probabilities of events may be so small
		as to exceed the range of normal floating point numbers.  In such cases
		the logarithm of the calculated probability is stored. This function
		allows adding probabilities stored in such a fashion.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input values.
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
		result : ndarray
		    Logarithm of ``exp(x1) + exp(x2)``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		logaddexp2: Logarithm of the sum of exponentiations of inputs in base 2.
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		Examples
		--------
		>>> prob1 = np.log(1e-50)
		>>> prob2 = np.log(2.5e-50)
		>>> prob12 = np.logaddexp(prob1, prob2)
		>>> prob12
		-113.87649168120691
		>>> np.exp(prob12)
		3.5000000000000057e-50
	**/
	static public function logaddexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logaddexp2(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Logarithm of the sum of exponentiations of the inputs in base-2.
		
		Calculates ``log2(2**x1 + 2**x2)``. This function is useful in machine
		learning when the calculated probabilities of events may be so small as
		to exceed the range of normal floating point numbers.  In such cases
		the base-2 logarithm of the calculated probability can be used instead.
		This function allows adding probabilities stored in such a fashion.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input values.
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
		result : ndarray
		    Base-2 logarithm of ``2**x1 + 2**x2``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		logaddexp: Logarithm of the sum of exponentiations of the inputs.
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		Examples
		--------
		>>> prob1 = np.log2(1e-50)
		>>> prob2 = np.log2(2.5e-50)
		>>> prob12 = np.logaddexp2(prob1, prob2)
		>>> prob1, prob2, prob12
		(-166.09640474436813, -164.77447664948076, -164.28904982231052)
		>>> 2**prob12
		3.4999999999999914e-50
	**/
	static public function logaddexp2(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function logical_and(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function logical_not(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function logical_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function logical_xor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return numbers spaced evenly on a log scale.
		
		In linear space, the sequence starts at ``base ** start``
		(`base` to the power of `start`) and ends with ``base ** stop``
		(see `endpoint` below).
		
		.. versionchanged:: 1.16.0
		    Non-scalar `start` and `stop` are now supported.
		
		Parameters
		----------
		start : array_like
		    ``base ** start`` is the starting value of the sequence.
		stop : array_like
		    ``base ** stop`` is the final value of the sequence, unless `endpoint`
		    is False.  In that case, ``num + 1`` values are spaced over the
		    interval in log-space, of which all but the last (a sequence of
		    length `num`) are returned.
		num : integer, optional
		    Number of samples to generate.  Default is 50.
		endpoint : boolean, optional
		    If true, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		base : array_like, optional
		    The base of the log space. The step size between the elements in
		    ``ln(samples) / ln(base)`` (or ``log_base(samples)``) is uniform.
		    Default is 10.0.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, the data type
		    is inferred from `start` and `stop`. The inferred type will never be
		    an integer; `float` is chosen even if the arguments would produce an
		    array of integers.
		axis : int, optional
		    The axis in the result to store the samples.  Relevant only if start
		    or stop are array-like.  By default (0), the samples will be along a
		    new axis inserted at the beginning. Use -1 to get an axis at the end.
		
		    .. versionadded:: 1.16.0
		
		
		Returns
		-------
		samples : ndarray
		    `num` samples, equally spaced on a log scale.
		
		See Also
		--------
		arange : Similar to linspace, with the step size specified instead of the
		         number of samples. Note that, when used with a float endpoint, the
		         endpoint may or may not be included.
		linspace : Similar to logspace, but with the samples uniformly distributed
		           in linear space, instead of log space.
		geomspace : Similar to logspace, but with endpoints specified directly.
		
		Notes
		-----
		Logspace is equivalent to the code
		
		>>> y = np.linspace(start, stop, num=num, endpoint=endpoint)
		... # doctest: +SKIP
		>>> power(base, y).astype(dtype)
		... # doctest: +SKIP
		
		Examples
		--------
		>>> np.logspace(2.0, 3.0, num=4)
		array([ 100.        ,  215.443469  ,  464.15888336, 1000.        ])
		>>> np.logspace(2.0, 3.0, num=4, endpoint=False)
		array([100.        ,  177.827941  ,  316.22776602,  562.34132519])
		>>> np.logspace(2.0, 3.0, num=4, base=2.0)
		array([4.        ,  5.0396842 ,  6.34960421,  8.        ])
		
		Graphical illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 10
		>>> x1 = np.logspace(0.1, 1, N, endpoint=True)
		>>> x2 = np.logspace(0.1, 1, N, endpoint=False)
		>>> y = np.zeros(N)
		>>> plt.plot(x1, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(x2, y + 0.5, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.ylim([-0.5, 1])
		(-0.5, 1)
		>>> plt.show()
	**/
	static public function logspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?base:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Do a keyword search on docstrings.
		
		A list of objects that matched the search is displayed,
		sorted by relevance. All given keywords need to be found in the
		docstring for it to be returned as a result, but the order does
		not matter.
		
		Parameters
		----------
		what : str
		    String containing words to look for.
		module : str or list, optional
		    Name of module(s) whose docstrings to go through.
		import_modules : bool, optional
		    Whether to import sub-modules in packages. Default is True.
		regenerate : bool, optional
		    Whether to re-generate the docstring cache. Default is False.
		output : file-like, optional
		    File-like object to write the output to. If omitted, use a pager.
		
		See Also
		--------
		source, info
		
		Notes
		-----
		Relevance is determined only roughly, by checking if the keywords occur
		in the function name, at the start of a docstring, etc.
		
		Examples
		--------
		>>> np.lookfor('binary representation') # doctest: +SKIP
		Search results for 'binary representation'
		------------------------------------------
		numpy.binary_repr
		    Return the binary representation of the input number as a string.
		numpy.core.setup_common.long_double_representation
		    Given a binary dump as given by GNU od -b, look for long double
		numpy.base_repr
		    Return a string representation of a number in the given base system.
		...
	**/
	static public function lookfor(what:Dynamic, ?module:Dynamic, ?import_modules:Dynamic, ?regenerate:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Return the indices to access (n, n) arrays, given a masking function.
		
		Assume `mask_func` is a function that, for a square array a of size
		``(n, n)`` with a possible offset argument `k`, when called as
		``mask_func(a, k)`` returns a new array with zeros in certain locations
		(functions like `triu` or `tril` do precisely this). Then this function
		returns the indices where the non-zero values would be located.
		
		Parameters
		----------
		n : int
		    The returned indices will be valid to access arrays of shape (n, n).
		mask_func : callable
		    A function whose call signature is similar to that of `triu`, `tril`.
		    That is, ``mask_func(x, k)`` returns a boolean array, shaped like `x`.
		    `k` is an optional argument to the function.
		k : scalar
		    An optional argument which is passed through to `mask_func`. Functions
		    like `triu`, `tril` take a second argument that is interpreted as an
		    offset.
		
		Returns
		-------
		indices : tuple of arrays.
		    The `n` arrays of indices corresponding to the locations where
		    ``mask_func(np.ones((n, n)), k)`` is True.
		
		See Also
		--------
		triu, tril, triu_indices, tril_indices
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		These are the indices that would allow you to access the upper triangular
		part of any 3x3 array:
		
		>>> iu = np.mask_indices(3, np.triu)
		
		For example, if `a` is a 3x3 array:
		
		>>> a = np.arange(9).reshape(3, 3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5],
		       [6, 7, 8]])
		>>> a[iu]
		array([0, 1, 2, 4, 5, 8])
		
		An offset can be passed also to the masking function.  This gets us the
		indices starting on the first diagonal right of the main one:
		
		>>> iu1 = np.mask_indices(3, np.triu, 1)
		
		with which we now extract only three elements:
		
		>>> a[iu1]
		array([1, 2, 5])
	**/
	static public function mask_indices(n:Dynamic, mask_func:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Interpret the input as a matrix.
		
		Unlike `matrix`, `asmatrix` does not make a copy if the input is already
		a matrix or an ndarray.  Equivalent to ``matrix(data, copy=False)``.
		
		Parameters
		----------
		data : array_like
		    Input data.
		dtype : data-type
		   Data-type of the output matrix.
		
		Returns
		-------
		mat : matrix
		    `data` interpreted as a matrix.
		
		Examples
		--------
		>>> x = np.array([[1, 2], [3, 4]])
		
		>>> m = np.asmatrix(x)
		
		>>> x[0,0] = 5
		
		>>> m
		matrix([[5, 2],
		        [3, 4]])
	**/
	static public function mat(data:Dynamic, ?dtype:Dynamic):numpy.Matrix;
	/**
		matmul(x1, x2, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj, axes, axis])
		
		Matrix product of two arrays.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays, scalars not allowed.
		out : ndarray, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that matches the signature `(n,k),(k,m)->(n,m)`. If not
		    provided or None, a freshly-allocated array is returned.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		    .. versionadded:: 1.16
		       Now handles ufunc kwargs
		
		Returns
		-------
		y : ndarray
		    The matrix product of the inputs.
		    This is a scalar only when both x1, x2 are 1-d vectors.
		
		Raises
		------
		ValueError
		    If the last dimension of `x1` is not the same size as
		    the second-to-last dimension of `x2`.
		
		    If a scalar value is passed in.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		dot : alternative matrix product with different broadcasting rules.
		
		Notes
		-----
		
		The behavior depends on the arguments in the following way.
		
		- If both arguments are 2-D they are multiplied like conventional
		  matrices.
		- If either argument is N-D, N > 2, it is treated as a stack of
		  matrices residing in the last two indexes and broadcast accordingly.
		- If the first argument is 1-D, it is promoted to a matrix by
		  prepending a 1 to its dimensions. After matrix multiplication
		  the prepended 1 is removed.
		- If the second argument is 1-D, it is promoted to a matrix by
		  appending a 1 to its dimensions. After matrix multiplication
		  the appended 1 is removed.
		
		``matmul`` differs from ``dot`` in two important ways:
		
		- Multiplication by scalars is not allowed, use ``*`` instead.
		- Stacks of matrices are broadcast together as if the matrices
		  were elements, respecting the signature ``(n,k),(k,m)->(n,m)``:
		
		  >>> a = np.ones([9, 5, 7, 4])
		  >>> c = np.ones([9, 5, 4, 3])
		  >>> np.dot(a, c).shape
		  (9, 5, 7, 9, 5, 3)
		  >>> np.matmul(a, c).shape
		  (9, 5, 7, 3)
		  >>> # n is 7, k is 4, m is 3
		
		The matmul function implements the semantics of the ``@`` operator introduced
		in Python 3.5 following :pep:`465`.
		
		Examples
		--------
		For 2-D arrays it is the matrix product:
		
		>>> a = np.array([[1, 0],
		...               [0, 1]])
		>>> b = np.array([[4, 1],
		...               [2, 2]])
		>>> np.matmul(a, b)
		array([[4, 1],
		       [2, 2]])
		
		For 2-D mixed with 1-D, the result is the usual.
		
		>>> a = np.array([[1, 0],
		...               [0, 1]])
		>>> b = np.array([1, 2])
		>>> np.matmul(a, b)
		array([1, 2])
		>>> np.matmul(b, a)
		array([1, 2])
		
		
		Broadcasting is conventional for stacks of arrays
		
		>>> a = np.arange(2 * 2 * 4).reshape((2, 2, 4))
		>>> b = np.arange(2 * 2 * 4).reshape((2, 4, 2))
		>>> np.matmul(a,b).shape
		(2, 2, 2)
		>>> np.matmul(a, b)[0, 1, 1]
		98
		>>> sum(a[0, 1, :] * b[0 , :, 1])
		98
		
		Vector, vector returns the scalar inner product, but neither argument
		is complex-conjugated:
		
		>>> np.matmul([2j, 3j], [2j, 3j])
		(-13+0j)
		
		Scalar multiplication raises an error.
		
		>>> np.matmul([1,2], 3)
		Traceback (most recent call last):
		...
		ValueError: matmul: Input operand 1 does not have enough dimensions ...
		
		The ``@`` operator can be used as a shorthand for ``np.matmul`` on
		ndarrays.
		
		>>> x1 = np.array([2j, 3j])
		>>> x2 = np.array([2j, 3j])
		>>> x1 @ x2
		(-13+0j)
		
		.. versionadded:: 1.10.0
	**/
	static public function matmul(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function maximum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the scalar type of highest precision of the same kind as the input.
		
		Parameters
		----------
		t : dtype or dtype specifier
		    The input data type. This can be a `dtype` object or an object that
		    is convertible to a `dtype`.
		
		Returns
		-------
		out : dtype
		    The highest precision data type of the same kind (`dtype.kind`) as `t`.
		
		See Also
		--------
		obj2sctype, mintypecode, sctype2char
		dtype
		
		Examples
		--------
		>>> np.maximum_sctype(int)
		<class 'numpy.int64'>
		>>> np.maximum_sctype(np.uint8)
		<class 'numpy.uint64'>
		>>> np.maximum_sctype(complex)
		<class 'numpy.complex256'> # may vary
		
		>>> np.maximum_sctype(str)
		<class 'numpy.str_'>
		
		>>> np.maximum_sctype('i2')
		<class 'numpy.int64'>
		>>> np.maximum_sctype('f4')
		<class 'numpy.float128'> # may vary
	**/
	static public function maximum_sctype(t:Dynamic):Dynamic;
	/**
		may_share_memory(a, b, /, max_work=None)
		
		Determine if two arrays might share memory
		
		A return of True does not necessarily mean that the two arrays
		share any element.  It just means that they *might*.
		
		Only the memory bounds of a and b are checked by default.
		
		Parameters
		----------
		a, b : ndarray
		    Input arrays
		max_work : int, optional
		    Effort to spend on solving the overlap problem.  See
		    `shares_memory` for details.  Default for ``may_share_memory``
		    is to do a bounds check.
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		shares_memory
		
		Examples
		--------
		>>> np.may_share_memory(np.array([1,2]), np.array([5,8,9]))
		False
		>>> x = np.zeros([3, 4])
		>>> np.may_share_memory(x[:,0], x[:,1])
		True
	**/
	static public function may_share_memory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the arithmetic mean along the specified axis.
		
		Returns the average of the array elements.  The average is taken over
		the flattened array by default, otherwise over the specified axis.
		`float64` intermediate and return values are used for integer inputs.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose mean is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the means are computed. The default is to
		    compute the mean of the flattened array.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a mean is performed over multiple axes,
		    instead of a single axis or all the axes as before.
		dtype : data-type, optional
		    Type to use in computing the mean.  For integer inputs, the default
		    is `float64`; for floating point inputs, it is the same as the
		    input dtype.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.
		    See :ref:`ufuncs-output-type` for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `mean` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		where : array_like of bool, optional
		    Elements to include in the mean. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		m : ndarray, see dtype parameter above
		    If `out=None`, returns a new array containing the mean values,
		    otherwise a reference to the output array is returned.
		
		See Also
		--------
		average : Weighted average
		std, var, nanmean, nanstd, nanvar
		
		Notes
		-----
		The arithmetic mean is the sum of the elements along the axis divided
		by the number of elements.
		
		Note that for floating-point input, the mean is computed using the
		same precision the input has.  Depending on the input data, this can
		cause the results to be inaccurate, especially for `float32` (see
		example below).  Specifying a higher-precision accumulator using the
		`dtype` keyword can alleviate this issue.
		
		By default, `float16` results are computed using `float32` intermediates
		for extra precision.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.mean(a)
		2.5
		>>> np.mean(a, axis=0)
		array([2., 3.])
		>>> np.mean(a, axis=1)
		array([1.5, 3.5])
		
		In single precision, `mean` can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.mean(a)
		0.54999924
		
		Computing the mean in float64 is more accurate:
		
		>>> np.mean(a, dtype=np.float64)
		0.55000000074505806 # may vary
		
		Specifying a where argument:
		>>> a = np.array([[5, 9, 13], [14, 10, 12], [11, 15, 19]])
		>>> np.mean(a)
		12.0
		>>> np.mean(a, where=[[True], [False], [False]])
		9.0
	**/
	static public function mean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Compute the median along the specified axis.
		
		Returns the median of the array elements.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : {int, sequence of int, None}, optional
		    Axis or axes along which the medians are computed. The default
		    is to compute the median along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		   If True, then allow use of memory of input array `a` for
		   calculations. The input array will be modified by the call to
		   `median`. This will save memory when you do not need to preserve
		   the contents of the input array. Treat the input as undefined,
		   but it will probably be fully or partially sorted. Default is
		   False. If `overwrite_input` is ``True`` and `a` is not already an
		   `ndarray`, an error will be raised.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		median : ndarray
		    A new array holding the result. If the input contains integers
		    or floats smaller than ``float64``, then the output data-type is
		    ``np.float64``.  Otherwise, the data-type of the output is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean, percentile
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the median of ``V`` is the
		middle value of a sorted copy of ``V``, ``V_sorted`` - i
		e., ``V_sorted[(N-1)/2]``, when ``N`` is odd, and the average of the
		two middle values of ``V_sorted`` when ``N`` is even.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.median(a)
		3.5
		>>> np.median(a, axis=0)
		array([6.5, 4.5, 2.5])
		>>> np.median(a, axis=1)
		array([7.,  2.])
		>>> m = np.median(a, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.median(a, axis=0, out=m)
		array([6.5,  4.5,  2.5])
		>>> m
		array([6.5,  4.5,  2.5])
		>>> b = a.copy()
		>>> np.median(b, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.median(b, axis=None, overwrite_input=True)
		3.5
		>>> assert not np.all(a==b)
	**/
	static public function median(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Return coordinate matrices from coordinate vectors.
		
		Make N-D coordinate arrays for vectorized evaluations of
		N-D scalar/vector fields over N-D grids, given
		one-dimensional coordinate arrays x1, x2,..., xn.
		
		.. versionchanged:: 1.9
		   1-D and 0-D cases are allowed.
		
		Parameters
		----------
		x1, x2,..., xn : array_like
		    1-D arrays representing the coordinates of a grid.
		indexing : {'xy', 'ij'}, optional
		    Cartesian ('xy', default) or matrix ('ij') indexing of output.
		    See Notes for more details.
		
		    .. versionadded:: 1.7.0
		sparse : bool, optional
		    If True the shape of the returned coordinate array for dimension *i*
		    is reduced from ``(N1, ..., Ni, ... Nn)`` to
		    ``(1, ..., 1, Ni, 1, ..., 1)``.  These sparse coordinate grids are
		    intended to be use with :ref:`basics.broadcasting`.  When all
		    coordinates are used in an expression, broadcasting still leads to a
		    fully-dimensonal result array.
		
		    Default is False.
		
		    .. versionadded:: 1.7.0
		copy : bool, optional
		    If False, a view into the original arrays are returned in order to
		    conserve memory.  Default is True.  Please note that
		    ``sparse=False, copy=False`` will likely return non-contiguous
		    arrays.  Furthermore, more than one element of a broadcast array
		    may refer to a single memory location.  If you need to write to the
		    arrays, make copies first.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		X1, X2,..., XN : ndarray
		    For vectors `x1`, `x2`,..., 'xn' with lengths ``Ni=len(xi)`` ,
		    return ``(N1, N2, N3,...Nn)`` shaped arrays if indexing='ij'
		    or ``(N2, N1, N3,...Nn)`` shaped arrays if indexing='xy'
		    with the elements of `xi` repeated to fill the matrix along
		    the first dimension for `x1`, the second for `x2` and so on.
		
		Notes
		-----
		This function supports both indexing conventions through the indexing
		keyword argument.  Giving the string 'ij' returns a meshgrid with
		matrix indexing, while 'xy' returns a meshgrid with Cartesian indexing.
		In the 2-D case with inputs of length M and N, the outputs are of shape
		(N, M) for 'xy' indexing and (M, N) for 'ij' indexing.  In the 3-D case
		with inputs of length M, N and P, outputs are of shape (N, M, P) for
		'xy' indexing and (M, N, P) for 'ij' indexing.  The difference is
		illustrated by the following code snippet::
		
		    xv, yv = np.meshgrid(x, y, indexing='ij')
		    for i in range(nx):
		        for j in range(ny):
		            # treat xv[i,j], yv[i,j]
		
		    xv, yv = np.meshgrid(x, y, indexing='xy')
		    for i in range(nx):
		        for j in range(ny):
		            # treat xv[j,i], yv[j,i]
		
		In the 1-D and 0-D case, the indexing and sparse keywords have no effect.
		
		See Also
		--------
		mgrid : Construct a multi-dimensional "meshgrid" using indexing notation.
		ogrid : Construct an open multi-dimensional "meshgrid" using indexing
		        notation.
		
		Examples
		--------
		>>> nx, ny = (3, 2)
		>>> x = np.linspace(0, 1, nx)
		>>> y = np.linspace(0, 1, ny)
		>>> xv, yv = np.meshgrid(x, y)
		>>> xv
		array([[0. , 0.5, 1. ],
		       [0. , 0.5, 1. ]])
		>>> yv
		array([[0.,  0.,  0.],
		       [1.,  1.,  1.]])
		>>> xv, yv = np.meshgrid(x, y, sparse=True)  # make sparse output arrays
		>>> xv
		array([[0. ,  0.5,  1. ]])
		>>> yv
		array([[0.],
		       [1.]])
		
		`meshgrid` is very useful to evaluate functions on a grid.  If the
		function depends on all coordinates, you can use the parameter
		``sparse=True`` to save memory and computation time.
		
		>>> x = np.linspace(-5, 5, 101)
		>>> y = np.linspace(-5, 5, 101)
		>>> # full coorindate arrays
		>>> xx, yy = np.meshgrid(x, y)
		>>> zz = np.sqrt(xx**2 + yy**2)
		>>> xx.shape, yy.shape, zz.shape
		((101, 101), (101, 101), (101, 101))
		>>> # sparse coordinate arrays
		>>> xs, ys = np.meshgrid(x, y, sparse=True)
		>>> zs = np.sqrt(xs**2 + ys**2)
		>>> xs.shape, ys.shape, zs.shape
		((1, 101), (101, 1), (101, 101))
		>>> np.array_equal(zz, zs)
		True
		
		>>> import matplotlib.pyplot as plt
		>>> h = plt.contourf(x, y, zs)
		>>> plt.axis('scaled')
		>>> plt.colorbar()
		>>> plt.show()
	**/
	static public function meshgrid(?xi:python.VarArgs<Dynamic>, ?copy:Dynamic, ?sparse:Dynamic, ?indexing:Dynamic):numpy.Ndarray;
	static public var mgrid : Dynamic;
	/**
		min_scalar_type(a, /)
		
		For scalar ``a``, returns the data type with the smallest size
		and smallest scalar kind which can hold its value.  For non-scalar
		array ``a``, returns the vector's dtype unmodified.
		
		Floating point values are not demoted to integers,
		and complex values are not demoted to floats.
		
		Parameters
		----------
		a : scalar or array_like
		    The value whose minimal data type is to be found.
		
		Returns
		-------
		out : dtype
		    The minimal data type.
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		See Also
		--------
		result_type, promote_types, dtype, can_cast
		
		Examples
		--------
		>>> np.min_scalar_type(10)
		dtype('uint8')
		
		>>> np.min_scalar_type(-260)
		dtype('int16')
		
		>>> np.min_scalar_type(3.1)
		dtype('float16')
		
		>>> np.min_scalar_type(1e50)
		dtype('float64')
		
		>>> np.min_scalar_type(np.arange(4,dtype='f8'))
		dtype('float64')
	**/
	static public function min_scalar_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function minimum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the character for the minimum-size type to which given types can
		be safely cast.
		
		The returned type character must represent the smallest size dtype such
		that an array of the returned type can handle the data from an array of
		all types in `typechars` (or if `typechars` is an array, then its
		dtype.char).
		
		Parameters
		----------
		typechars : list of str or array_like
		    If a list of strings, each string should represent a dtype.
		    If array_like, the character representation of the array dtype is used.
		typeset : str or list of str, optional
		    The set of characters that the returned character is chosen from.
		    The default set is 'GDFgdf'.
		default : str, optional
		    The default character, this is returned if none of the characters in
		    `typechars` matches a character in `typeset`.
		
		Returns
		-------
		typechar : str
		    The character representing the minimum-size type that was found.
		
		See Also
		--------
		dtype, sctype2char, maximum_sctype
		
		Examples
		--------
		>>> np.mintypecode(['d', 'f', 'S'])
		'd'
		>>> x = np.array([1.1, 2-3.j])
		>>> np.mintypecode(x)
		'D'
		
		>>> np.mintypecode('abceh', default='G')
		'G'
	**/
	static public function mintypecode(typechars:Dynamic, ?typeset:Dynamic, ?_default:Dynamic):String;
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
	static public function mod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		modf(x[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the fractional and integral parts of an array, element-wise.
		
		The fractional and integral parts are negative if the given number is
		negative.
		
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
		y1 : ndarray
		    Fractional part of `x`.
		    This is a scalar if `x` is a scalar.
		y2 : ndarray
		    Integral part of `x`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		For integer input the return values are floats.
		
		See Also
		--------
		divmod : ``divmod(x, 1)`` is equivalent to ``modf`` with the return values
		         switched, except it always has a positive remainder.
		
		Examples
		--------
		>>> np.modf([0, 3.5])
		(array([ 0. ,  0.5]), array([ 0.,  3.]))
		>>> np.modf(-0.5)
		(-0.5, -0)
	**/
	static public function modf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Move axes of an array to new positions.
		
		Other axes remain in their original order.
		
		.. versionadded:: 1.11.0
		
		Parameters
		----------
		a : np.ndarray
		    The array whose axes should be reordered.
		source : int or sequence of int
		    Original positions of the axes to move. These must be unique.
		destination : int or sequence of int
		    Destination positions for each of the original axes. These must also be
		    unique.
		
		Returns
		-------
		result : np.ndarray
		    Array with moved axes. This array is a view of the input array.
		
		See Also
		--------
		transpose : Permute the dimensions of an array.
		swapaxes : Interchange two axes of an array.
		
		Examples
		--------
		>>> x = np.zeros((3, 4, 5))
		>>> np.moveaxis(x, 0, -1).shape
		(4, 5, 3)
		>>> np.moveaxis(x, -1, 0).shape
		(5, 3, 4)
		
		These all achieve the same result:
		
		>>> np.transpose(x).shape
		(5, 4, 3)
		>>> np.swapaxes(x, 0, -1).shape
		(5, 4, 3)
		>>> np.moveaxis(x, [0, 1], [-1, -2]).shape
		(5, 4, 3)
		>>> np.moveaxis(x, [0, 1, 2], [-1, -2, -3]).shape
		(5, 4, 3)
	**/
	static public function moveaxis(a:Dynamic, source:Dynamic, destination:Dynamic):Dynamic;
	/**
		Return a copy of an array sorted along the first axis.
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		
		Returns
		-------
		sorted_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		sort
		
		Notes
		-----
		``np.msort(a)`` is equivalent to  ``np.sort(a, axis=0)``.
	**/
	static public function msort(a:Dynamic):numpy.Ndarray;
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
	static public function multiply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nan : Dynamic;
	/**
		Replace NaN with zero and infinity with large finite numbers (default
		behaviour) or with the numbers defined by the user using the `nan`, 
		`posinf` and/or `neginf` keywords.
		
		If `x` is inexact, NaN is replaced by zero or by the user defined value in
		`nan` keyword, infinity is replaced by the largest finite floating point 
		values representable by ``x.dtype`` or by the user defined value in 
		`posinf` keyword and -infinity is replaced by the most negative finite 
		floating point values representable by ``x.dtype`` or by the user defined 
		value in `neginf` keyword.
		
		For complex dtypes, the above is applied to each of the real and
		imaginary components of `x` separately.
		
		If `x` is not inexact, then no replacements are made.
		
		Parameters
		----------
		x : scalar or array_like
		    Input data.
		copy : bool, optional
		    Whether to create a copy of `x` (True) or to replace values
		    in-place (False). The in-place operation only occurs if
		    casting to an array does not require a copy.
		    Default is True.
		    
		    .. versionadded:: 1.13
		nan : int, float, optional
		    Value to be used to fill NaN values. If no value is passed 
		    then NaN values will be replaced with 0.0.
		    
		    .. versionadded:: 1.17
		posinf : int, float, optional
		    Value to be used to fill positive infinity values. If no value is 
		    passed then positive infinity values will be replaced with a very
		    large number.
		    
		    .. versionadded:: 1.17
		neginf : int, float, optional
		    Value to be used to fill negative infinity values. If no value is 
		    passed then negative infinity values will be replaced with a very
		    small (or negative) number.
		    
		    .. versionadded:: 1.17
		
		    
		
		Returns
		-------
		out : ndarray
		    `x`, with the non-finite values replaced. If `copy` is False, this may
		    be `x` itself.
		
		See Also
		--------
		isinf : Shows which elements are positive or negative infinity.
		isneginf : Shows which elements are negative infinity.
		isposinf : Shows which elements are positive infinity.
		isnan : Shows which elements are Not a Number (NaN).
		isfinite : Shows which elements are finite (not NaN, not infinity)
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		Examples
		--------
		>>> np.nan_to_num(np.inf)
		1.7976931348623157e+308
		>>> np.nan_to_num(-np.inf)
		-1.7976931348623157e+308
		>>> np.nan_to_num(np.nan)
		0.0
		>>> x = np.array([np.inf, -np.inf, np.nan, -128, 128])
		>>> np.nan_to_num(x)
		array([ 1.79769313e+308, -1.79769313e+308,  0.00000000e+000, # may vary
		       -1.28000000e+002,  1.28000000e+002])
		>>> np.nan_to_num(x, nan=-9999, posinf=33333333, neginf=33333333)
		array([ 3.3333333e+07,  3.3333333e+07, -9.9990000e+03, 
		       -1.2800000e+02,  1.2800000e+02])
		>>> y = np.array([complex(np.inf, np.nan), np.nan, complex(np.nan, np.inf)])
		array([  1.79769313e+308,  -1.79769313e+308,   0.00000000e+000, # may vary
		     -1.28000000e+002,   1.28000000e+002])
		>>> np.nan_to_num(y)
		array([  1.79769313e+308 +0.00000000e+000j, # may vary
		         0.00000000e+000 +0.00000000e+000j,
		         0.00000000e+000 +1.79769313e+308j])
		>>> np.nan_to_num(y, nan=111111, posinf=222222)
		array([222222.+111111.j, 111111.     +0.j, 111111.+222222.j])
	**/
	static public function nan_to_num(x:Dynamic, ?copy:Dynamic, ?nan:Dynamic, ?posinf:Dynamic, ?neginf:Dynamic):numpy.Ndarray;
	/**
		Return the indices of the maximum values in the specified axis ignoring
		NaNs. For all-NaN slices ``ValueError`` is raised. Warning: the
		results cannot be trusted if a slice contains only NaNs and -Infs.
		
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : int, optional
		    Axis along which to operate.  By default flattened input is used.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		
		    .. versionadded:: 1.22.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		index_array : ndarray
		    An array of indices or a single index value.
		
		See Also
		--------
		argmax, nanargmin
		
		Examples
		--------
		>>> a = np.array([[np.nan, 4], [2, 3]])
		>>> np.argmax(a)
		0
		>>> np.nanargmax(a)
		1
		>>> np.nanargmax(a, axis=0)
		array([1, 0])
		>>> np.nanargmax(a, axis=1)
		array([1, 1])
	**/
	static public function nanargmax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Return the indices of the minimum values in the specified axis ignoring
		NaNs. For all-NaN slices ``ValueError`` is raised. Warning: the results
		cannot be trusted if a slice contains only NaNs and Infs.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : int, optional
		    Axis along which to operate.  By default flattened input is used.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		
		    .. versionadded:: 1.22.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		index_array : ndarray
		    An array of indices or a single index value.
		
		See Also
		--------
		argmin, nanargmax
		
		Examples
		--------
		>>> a = np.array([[np.nan, 4], [2, 3]])
		>>> np.argmin(a)
		0
		>>> np.nanargmin(a)
		2
		>>> np.nanargmin(a, axis=0)
		array([1, 1])
		>>> np.nanargmin(a, axis=1)
		array([1, 0])
	**/
	static public function nanargmin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Return the cumulative product of array elements over a given axis treating Not a
		Numbers (NaNs) as one.  The cumulative product does not change when NaNs are
		encountered and leading NaNs are replaced by ones.
		
		Ones are returned for slices that are all-NaN or empty.
		
		.. versionadded:: 1.12.0
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    Axis along which the cumulative product is computed.  By default
		    the input is flattened.
		dtype : dtype, optional
		    Type of the returned array, as well as of the accumulator in which
		    the elements are multiplied.  If *dtype* is not specified, it
		    defaults to the dtype of `a`, unless `a` has an integer dtype with
		    a precision less than that of the default platform integer.  In
		    that case, the default platform integer is used instead.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type of the resulting values will be cast if necessary.
		
		Returns
		-------
		nancumprod : ndarray
		    A new array holding the result is returned unless `out` is
		    specified, in which case it is returned.
		
		See Also
		--------
		numpy.cumprod : Cumulative product across array propagating NaNs.
		isnan : Show which elements are NaN.
		
		Examples
		--------
		>>> np.nancumprod(1)
		array([1])
		>>> np.nancumprod([1])
		array([1])
		>>> np.nancumprod([1, np.nan])
		array([1.,  1.])
		>>> a = np.array([[1, 2], [3, np.nan]])
		>>> np.nancumprod(a)
		array([1.,  2.,  6.,  6.])
		>>> np.nancumprod(a, axis=0)
		array([[1.,  2.],
		       [3.,  2.]])
		>>> np.nancumprod(a, axis=1)
		array([[1.,  2.],
		       [3.,  3.]])
	**/
	static public function nancumprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Return the cumulative sum of array elements over a given axis treating Not a
		Numbers (NaNs) as zero.  The cumulative sum does not change when NaNs are
		encountered and leading NaNs are replaced by zeros.
		
		Zeros are returned for slices that are all-NaN or empty.
		
		.. versionadded:: 1.12.0
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    Axis along which the cumulative sum is computed. The default
		    (None) is to compute the cumsum over the flattened array.
		dtype : dtype, optional
		    Type of the returned array and of the accumulator in which the
		    elements are summed.  If `dtype` is not specified, it defaults
		    to the dtype of `a`, unless `a` has an integer dtype with a
		    precision less than that of the default platform integer.  In
		    that case, the default platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type will be cast if necessary. See :ref:`ufuncs-output-type` for
		    more details.
		
		Returns
		-------
		nancumsum : ndarray.
		    A new array holding the result is returned unless `out` is
		    specified, in which it is returned. The result has the same
		    size as `a`, and the same shape as `a` if `axis` is not None
		    or `a` is a 1-d array.
		
		See Also
		--------
		numpy.cumsum : Cumulative sum across array propagating NaNs.
		isnan : Show which elements are NaN.
		
		Examples
		--------
		>>> np.nancumsum(1)
		array([1])
		>>> np.nancumsum([1])
		array([1])
		>>> np.nancumsum([1, np.nan])
		array([1.,  1.])
		>>> a = np.array([[1, 2], [3, np.nan]])
		>>> np.nancumsum(a)
		array([1.,  3.,  6.,  6.])
		>>> np.nancumsum(a, axis=0)
		array([[1.,  2.],
		       [4.,  2.]])
		>>> np.nancumsum(a, axis=1)
		array([[1.,  3.],
		       [3.,  3.]])
	**/
	static public function nancumsum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return the maximum of an array or maximum along an axis, ignoring any
		NaNs.  When all-NaN slices are encountered a ``RuntimeWarning`` is
		raised and NaN is returned for that slice.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose maximum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the maximum is computed. The default is to compute
		    the maximum of the flattened array.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary. See
		    :ref:`ufuncs-output-type` for more details.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		    If the value is anything but the default, then
		    `keepdims` will be passed through to the `max` method
		    of sub-classes of `ndarray`.  If the sub-classes methods
		    does not implement `keepdims` any exceptions will be raised.
		
		    .. versionadded:: 1.8.0
		initial : scalar, optional
		    The minimum value of an output element. Must be present to allow
		    computation on empty slice. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		where : array_like of bool, optional
		    Elements to compare for the maximum. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		nanmax : ndarray
		    An array with the same shape as `a`, with the specified axis removed.
		    If `a` is a 0-d array, or if axis is None, an ndarray scalar is
		    returned.  The same dtype as `a` is returned.
		
		See Also
		--------
		nanmin :
		    The minimum value of an array along a given axis, ignoring any NaNs.
		amax :
		    The maximum value of an array along a given axis, propagating any NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignoring any NaNs.
		maximum :
		    Element-wise maximum of two arrays, propagating any NaNs.
		isnan :
		    Shows which elements are Not a Number (NaN).
		isfinite:
		    Shows which elements are neither NaN nor infinity.
		
		amin, fmin, minimum
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		Positive infinity is treated as a very large number and negative
		infinity is treated as a very small (i.e. negative) number.
		
		If the input has a integer type the function is equivalent to np.max.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, np.nan]])
		>>> np.nanmax(a)
		3.0
		>>> np.nanmax(a, axis=0)
		array([3.,  2.])
		>>> np.nanmax(a, axis=1)
		array([2.,  3.])
		
		When positive infinity and negative infinity are present:
		
		>>> np.nanmax([1, 2, np.nan, np.NINF])
		2.0
		>>> np.nanmax([1, 2, np.nan, np.inf])
		inf
	**/
	static public function nanmax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):numpy.Ndarray;
	/**
		Compute the arithmetic mean along the specified axis, ignoring NaNs.
		
		Returns the average of the array elements.  The average is taken over
		the flattened array by default, otherwise over the specified axis.
		`float64` intermediate and return values are used for integer inputs.
		
		For all-NaN slices, NaN is returned and a `RuntimeWarning` is raised.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose mean is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the means are computed. The default is to compute
		    the mean of the flattened array.
		dtype : data-type, optional
		    Type to use in computing the mean.  For integer inputs, the default
		    is `float64`; for inexact inputs, it is the same as the input
		    dtype.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary. See
		    :ref:`ufuncs-output-type` for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		    If the value is anything but the default, then
		    `keepdims` will be passed through to the `mean` or `sum` methods
		    of sub-classes of `ndarray`.  If the sub-classes methods
		    does not implement `keepdims` any exceptions will be raised.
		where : array_like of bool, optional
		    Elements to include in the mean. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		m : ndarray, see dtype parameter above
		    If `out=None`, returns a new array containing the mean values,
		    otherwise a reference to the output array is returned. Nan is
		    returned for slices that contain only NaNs.
		
		See Also
		--------
		average : Weighted average
		mean : Arithmetic mean taken while not ignoring NaNs
		var, nanvar
		
		Notes
		-----
		The arithmetic mean is the sum of the non-NaN elements along the axis
		divided by the number of non-NaN elements.
		
		Note that for floating-point input, the mean is computed using the same
		precision the input has.  Depending on the input data, this can cause
		the results to be inaccurate, especially for `float32`.  Specifying a
		higher-precision accumulator using the `dtype` keyword can alleviate
		this issue.
		
		Examples
		--------
		>>> a = np.array([[1, np.nan], [3, 4]])
		>>> np.nanmean(a)
		2.6666666666666665
		>>> np.nanmean(a, axis=0)
		array([2.,  4.])
		>>> np.nanmean(a, axis=1)
		array([1.,  3.5]) # may vary
	**/
	static public function nanmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Compute the median along the specified axis, while ignoring NaNs.
		
		Returns the median of the array elements.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : {int, sequence of int, None}, optional
		    Axis or axes along which the medians are computed. The default
		    is to compute the median along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		   If True, then allow use of memory of input array `a` for
		   calculations. The input array will be modified by the call to
		   `median`. This will save memory when you do not need to preserve
		   the contents of the input array. Treat the input as undefined,
		   but it will probably be fully or partially sorted. Default is
		   False. If `overwrite_input` is ``True`` and `a` is not already an
		   `ndarray`, an error will be raised.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		    If this is anything but the default value it will be passed
		    through (in the special case of an empty array) to the
		    `mean` function of the underlying array.  If the array is
		    a sub-class and `mean` does not have the kwarg `keepdims` this
		    will raise a RuntimeError.
		
		Returns
		-------
		median : ndarray
		    A new array holding the result. If the input contains integers
		    or floats smaller than ``float64``, then the output data-type is
		    ``np.float64``.  Otherwise, the data-type of the output is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean, median, percentile
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the median of ``V`` is the
		middle value of a sorted copy of ``V``, ``V_sorted`` - i.e.,
		``V_sorted[(N-1)/2]``, when ``N`` is odd and the average of the two
		middle values of ``V_sorted`` when ``N`` is even.
		
		Examples
		--------
		>>> a = np.array([[10.0, 7, 4], [3, 2, 1]])
		>>> a[0, 1] = np.nan
		>>> a
		array([[10., nan,  4.],
		       [ 3.,  2.,  1.]])
		>>> np.median(a)
		nan
		>>> np.nanmedian(a)
		3.0
		>>> np.nanmedian(a, axis=0)
		array([6.5, 2. , 2.5])
		>>> np.median(a, axis=1)
		array([nan,  2.])
		>>> b = a.copy()
		>>> np.nanmedian(b, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.nanmedian(b, axis=None, overwrite_input=True)
		3.0
		>>> assert not np.all(a==b)
	**/
	static public function nanmedian(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Return minimum of an array or minimum along an axis, ignoring any NaNs.
		When all-NaN slices are encountered a ``RuntimeWarning`` is raised and
		Nan is returned for that slice.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose minimum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the minimum is computed. The default is to compute
		    the minimum of the flattened array.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary. See
		    :ref:`ufuncs-output-type` for more details.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		    If the value is anything but the default, then
		    `keepdims` will be passed through to the `min` method
		    of sub-classes of `ndarray`.  If the sub-classes methods
		    does not implement `keepdims` any exceptions will be raised.
		
		    .. versionadded:: 1.8.0
		initial : scalar, optional
		    The maximum value of an output element. Must be present to allow
		    computation on empty slice. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		where : array_like of bool, optional
		    Elements to compare for the minimum. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		nanmin : ndarray
		    An array with the same shape as `a`, with the specified axis
		    removed.  If `a` is a 0-d array, or if axis is None, an ndarray
		    scalar is returned.  The same dtype as `a` is returned.
		
		See Also
		--------
		nanmax :
		    The maximum value of an array along a given axis, ignoring any NaNs.
		amin :
		    The minimum value of an array along a given axis, propagating any NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignoring any NaNs.
		minimum :
		    Element-wise minimum of two arrays, propagating any NaNs.
		isnan :
		    Shows which elements are Not a Number (NaN).
		isfinite:
		    Shows which elements are neither NaN nor infinity.
		
		amax, fmax, maximum
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		Positive infinity is treated as a very large number and negative
		infinity is treated as a very small (i.e. negative) number.
		
		If the input has a integer type the function is equivalent to np.min.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, np.nan]])
		>>> np.nanmin(a)
		1.0
		>>> np.nanmin(a, axis=0)
		array([1.,  2.])
		>>> np.nanmin(a, axis=1)
		array([1.,  3.])
		
		When positive infinity and negative infinity are present:
		
		>>> np.nanmin([1, 2, np.nan, np.inf])
		1.0
		>>> np.nanmin([1, 2, np.nan, np.NINF])
		-inf
	**/
	static public function nanmin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):numpy.Ndarray;
	/**
		Compute the qth percentile of the data along the specified axis,
		while ignoring nan values.
		
		Returns the qth percentile(s) of the array elements.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array, containing
		    nan values to be ignored.
		q : array_like of float
		    Percentile or sequence of percentiles to compute, which must be
		    between 0 and 100 inclusive.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the percentiles are computed. The default
		    is to compute the percentile(s) along a flattened version of the
		    array.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape and buffer length as the expected output, but the
		    type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow the input array `a` to be modified by
		    intermediate calculations, to save memory. In this case, the
		    contents of the input `a` after this function completes is
		    undefined.
		method : str, optional
		    This parameter specifies the method to use for estimating the
		    percentile.  There are many different methods, some unique to NumPy.
		    See the notes for explanation.  The options sorted by their R type
		    as summarized in the H&F paper [1]_ are:
		
		    1. 'inverted_cdf'
		    2. 'averaged_inverted_cdf'
		    3. 'closest_observation'
		    4. 'interpolated_inverted_cdf'
		    5. 'hazen'
		    6. 'weibull'
		    7. 'linear'  (default)
		    8. 'median_unbiased'
		    9. 'normal_unbiased'
		
		    The first three methods are discontiuous.  NumPy further defines the
		    following discontinuous variations of the default 'linear' (7.) option:
		
		    * 'lower'
		    * 'higher',
		    * 'midpoint'
		    * 'nearest'
		
		    .. versionchanged:: 1.22.0
		        This argument was previously called "interpolation" and only
		        offered the "linear" default and last four options.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the
		    result will broadcast correctly against the original array `a`.
		
		    If this is anything but the default value it will be passed
		    through (in the special case of an empty array) to the
		    `mean` function of the underlying array.  If the array is
		    a sub-class and `mean` does not have the kwarg `keepdims` this
		    will raise a RuntimeError.
		
		interpolation : str, optional
		    Deprecated name for the method keyword argument.
		
		    .. deprecated:: 1.22.0
		
		Returns
		-------
		percentile : scalar or ndarray
		    If `q` is a single percentile and `axis=None`, then the result
		    is a scalar. If multiple percentiles are given, first axis of
		    the result corresponds to the percentiles. The other axes are
		    the axes that remain after the reduction of `a`. If the input
		    contains integers or floats smaller than ``float64``, the output
		    data-type is ``float64``. Otherwise, the output data-type is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		nanmean
		nanmedian : equivalent to ``nanpercentile(..., 50)``
		percentile, median, mean
		nanquantile : equivalent to nanpercentile, except q in range [0, 1].
		
		Notes
		-----
		For more information please see `numpy.percentile`
		
		Examples
		--------
		>>> a = np.array([[10., 7., 4.], [3., 2., 1.]])
		>>> a[0][1] = np.nan
		>>> a
		array([[10.,  nan,   4.],
		      [ 3.,   2.,   1.]])
		>>> np.percentile(a, 50)
		nan
		>>> np.nanpercentile(a, 50)
		3.0
		>>> np.nanpercentile(a, 50, axis=0)
		array([6.5, 2. , 2.5])
		>>> np.nanpercentile(a, 50, axis=1, keepdims=True)
		array([[7.],
		       [2.]])
		>>> m = np.nanpercentile(a, 50, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.nanpercentile(a, 50, axis=0, out=out)
		array([6.5, 2. , 2.5])
		>>> m
		array([6.5,  2. ,  2.5])
		
		>>> b = a.copy()
		>>> np.nanpercentile(b, 50, axis=1, overwrite_input=True)
		array([7., 2.])
		>>> assert not np.all(a==b)
		
		References
		----------
		.. [1] R. J. Hyndman and Y. Fan,
		   "Sample quantiles in statistical packages,"
		   The American Statistician, 50(4), pp. 361-365, 1996
	**/
	static public function nanpercentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Return the product of array elements over a given axis treating Not a
		Numbers (NaNs) as ones.
		
		One is returned for slices that are all-NaN or empty.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose product is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the product is computed. The default is to compute
		    the product of the flattened array.
		dtype : data-type, optional
		    The type of the returned array and of the accumulator in which the
		    elements are summed.  By default, the dtype of `a` is used.  An
		    exception is when `a` has an integer type with less precision than
		    the platform (u)intp. In that case, the default will be either
		    (u)int32 or (u)int64 depending on whether the platform is 32 or 64
		    bits. For inexact inputs, dtype must be inexact.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``. If provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary. See
		    :ref:`ufuncs-output-type` for more details. The casting of NaN to integer
		    can yield unexpected results.
		keepdims : bool, optional
		    If True, the axes which are reduced are left in the result as
		    dimensions with size one. With this option, the result will
		    broadcast correctly against the original `arr`.
		initial : scalar, optional
		    The starting value for this product. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.22.0
		where : array_like of bool, optional
		    Elements to include in the product. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		nanprod : ndarray
		    A new array holding the result is returned unless `out` is
		    specified, in which case it is returned.
		
		See Also
		--------
		numpy.prod : Product across array propagating NaNs.
		isnan : Show which elements are NaN.
		
		Examples
		--------
		>>> np.nanprod(1)
		1
		>>> np.nanprod([1])
		1
		>>> np.nanprod([1, np.nan])
		1.0
		>>> a = np.array([[1, 2], [3, np.nan]])
		>>> np.nanprod(a)
		6.0
		>>> np.nanprod(a, axis=0)
		array([3., 2.])
	**/
	static public function nanprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):numpy.Ndarray;
	/**
		Compute the qth quantile of the data along the specified axis,
		while ignoring nan values.
		Returns the qth quantile(s) of the array elements.
		
		.. versionadded:: 1.15.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array, containing
		    nan values to be ignored
		q : array_like of float
		    Quantile or sequence of quantiles to compute, which must be between
		    0 and 1 inclusive.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the quantiles are computed. The
		    default is to compute the quantile(s) along a flattened
		    version of the array.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow the input array `a` to be modified by intermediate
		    calculations, to save memory. In this case, the contents of the input
		    `a` after this function completes is undefined.
		method : str, optional
		    This parameter specifies the method to use for estimating the
		    quantile.  There are many different methods, some unique to NumPy.
		    See the notes for explanation.  The options sorted by their R type
		    as summarized in the H&F paper [1]_ are:
		
		    1. 'inverted_cdf'
		    2. 'averaged_inverted_cdf'
		    3. 'closest_observation'
		    4. 'interpolated_inverted_cdf'
		    5. 'hazen'
		    6. 'weibull'
		    7. 'linear'  (default)
		    8. 'median_unbiased'
		    9. 'normal_unbiased'
		
		    The first three methods are discontiuous.  NumPy further defines the
		    following discontinuous variations of the default 'linear' (7.) option:
		
		    * 'lower'
		    * 'higher',
		    * 'midpoint'
		    * 'nearest'
		
		    .. versionchanged:: 1.22.0
		        This argument was previously called "interpolation" and only
		        offered the "linear" default and last four options.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the
		    result will broadcast correctly against the original array `a`.
		
		    If this is anything but the default value it will be passed
		    through (in the special case of an empty array) to the
		    `mean` function of the underlying array.  If the array is
		    a sub-class and `mean` does not have the kwarg `keepdims` this
		    will raise a RuntimeError.
		
		interpolation : str, optional
		    Deprecated name for the method keyword argument.
		
		    .. deprecated:: 1.22.0
		
		Returns
		-------
		quantile : scalar or ndarray
		    If `q` is a single percentile and `axis=None`, then the result
		    is a scalar. If multiple quantiles are given, first axis of
		    the result corresponds to the quantiles. The other axes are
		    the axes that remain after the reduction of `a`. If the input
		    contains integers or floats smaller than ``float64``, the output
		    data-type is ``float64``. Otherwise, the output data-type is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		quantile
		nanmean, nanmedian
		nanmedian : equivalent to ``nanquantile(..., 0.5)``
		nanpercentile : same as nanquantile, but with q in the range [0, 100].
		
		Notes
		-----
		For more information please see `numpy.quantile`
		
		Examples
		--------
		>>> a = np.array([[10., 7., 4.], [3., 2., 1.]])
		>>> a[0][1] = np.nan
		>>> a
		array([[10.,  nan,   4.],
		      [ 3.,   2.,   1.]])
		>>> np.quantile(a, 0.5)
		nan
		>>> np.nanquantile(a, 0.5)
		3.0
		>>> np.nanquantile(a, 0.5, axis=0)
		array([6.5, 2. , 2.5])
		>>> np.nanquantile(a, 0.5, axis=1, keepdims=True)
		array([[7.],
		       [2.]])
		>>> m = np.nanquantile(a, 0.5, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.nanquantile(a, 0.5, axis=0, out=out)
		array([6.5, 2. , 2.5])
		>>> m
		array([6.5,  2. ,  2.5])
		>>> b = a.copy()
		>>> np.nanquantile(b, 0.5, axis=1, overwrite_input=True)
		array([7., 2.])
		>>> assert not np.all(a==b)
		
		References
		----------
		.. [1] R. J. Hyndman and Y. Fan,
		   "Sample quantiles in statistical packages,"
		   The American Statistician, 50(4), pp. 361-365, 1996
	**/
	static public function nanquantile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Compute the standard deviation along the specified axis, while
		ignoring NaNs.
		
		Returns the standard deviation, a measure of the spread of a
		distribution, of the non-NaN array elements. The standard deviation is
		computed for the flattened array by default, otherwise over the
		specified axis.
		
		For all-NaN slices or slices with zero degrees of freedom, NaN is
		returned and a `RuntimeWarning` is raised.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Calculate the standard deviation of the non-NaN values.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the standard deviation is computed. The default is
		    to compute the standard deviation of the flattened array.
		dtype : dtype, optional
		    Type to use in computing the standard deviation. For arrays of
		    integer type the default is float64, for arrays of float types it
		    is the same as the array type.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output but the type (of the
		    calculated values) will be cast if necessary.
		ddof : int, optional
		    Means Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of non-NaN
		    elements.  By default `ddof` is zero.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		    If this value is anything but the default it is passed through
		    as-is to the relevant functions of the sub-classes.  If these
		    functions do not have a `keepdims` kwarg, a RuntimeError will
		    be raised.
		where : array_like of bool, optional
		    Elements to include in the standard deviation.
		    See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		standard_deviation : ndarray, see dtype parameter above.
		    If `out` is None, return a new array containing the standard
		    deviation, otherwise return a reference to the output array. If
		    ddof is >= the number of non-NaN elements in a slice or the slice
		    contains only NaNs, then the result for that slice is NaN.
		
		See Also
		--------
		var, mean, std
		nanvar, nanmean
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		The standard deviation is the square root of the average of the squared
		deviations from the mean: ``std = sqrt(mean(abs(x - x.mean())**2))``.
		
		The average squared deviation is normally calculated as
		``x.sum() / N``, where ``N = len(x)``.  If, however, `ddof` is
		specified, the divisor ``N - ddof`` is used instead. In standard
		statistical practice, ``ddof=1`` provides an unbiased estimator of the
		variance of the infinite population. ``ddof=0`` provides a maximum
		likelihood estimate of the variance for normally distributed variables.
		The standard deviation computed in this function is the square root of
		the estimated variance, so even with ``ddof=1``, it will not be an
		unbiased estimate of the standard deviation per se.
		
		Note that, for complex numbers, `std` takes the absolute value before
		squaring, so that the result is always real and nonnegative.
		
		For floating-point input, the *std* is computed using the same
		precision the input has. Depending on the input data, this can cause
		the results to be inaccurate, especially for float32 (see example
		below).  Specifying a higher-accuracy accumulator using the `dtype`
		keyword can alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, np.nan], [3, 4]])
		>>> np.nanstd(a)
		1.247219128924647
		>>> np.nanstd(a, axis=0)
		array([1., 0.])
		>>> np.nanstd(a, axis=1)
		array([0.,  0.5]) # may vary
	**/
	static public function nanstd(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Return the sum of array elements over a given axis treating Not a
		Numbers (NaNs) as zero.
		
		In NumPy versions <= 1.9.0 Nan is returned for slices that are all-NaN or
		empty. In later versions zero is returned.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose sum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the sum is computed. The default is to compute the
		    sum of the flattened array.
		dtype : data-type, optional
		    The type of the returned array and of the accumulator in which the
		    elements are summed.  By default, the dtype of `a` is used.  An
		    exception is when `a` has an integer type with less precision than
		    the platform (u)intp. In that case, the default will be either
		    (u)int32 or (u)int64 depending on whether the platform is 32 or 64
		    bits. For inexact inputs, dtype must be inexact.
		
		    .. versionadded:: 1.8.0
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``. If provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.  See
		    :ref:`ufuncs-output-type` for more details. The casting of NaN to integer
		    can yield unexpected results.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		
		    If the value is anything but the default, then
		    `keepdims` will be passed through to the `mean` or `sum` methods
		    of sub-classes of `ndarray`.  If the sub-classes methods
		    does not implement `keepdims` any exceptions will be raised.
		
		    .. versionadded:: 1.8.0
		initial : scalar, optional
		    Starting value for the sum. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		where : array_like of bool, optional
		    Elements to include in the sum. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		nansum : ndarray.
		    A new array holding the result is returned unless `out` is
		    specified, in which it is returned. The result has the same
		    size as `a`, and the same shape as `a` if `axis` is not None
		    or `a` is a 1-d array.
		
		See Also
		--------
		numpy.sum : Sum across array propagating NaNs.
		isnan : Show which elements are NaN.
		isfinite : Show which elements are not NaN or +/-inf.
		
		Notes
		-----
		If both positive and negative infinity are present, the sum will be Not
		A Number (NaN).
		
		Examples
		--------
		>>> np.nansum(1)
		1
		>>> np.nansum([1])
		1
		>>> np.nansum([1, np.nan])
		1.0
		>>> a = np.array([[1, 1], [1, np.nan]])
		>>> np.nansum(a)
		3.0
		>>> np.nansum(a, axis=0)
		array([2.,  1.])
		>>> np.nansum([1, np.nan, np.inf])
		inf
		>>> np.nansum([1, np.nan, np.NINF])
		-inf
		>>> from numpy.testing import suppress_warnings
		>>> with suppress_warnings() as sup:
		...     sup.filter(RuntimeWarning)
		...     np.nansum([1, np.nan, np.inf, -np.inf]) # both +/- infinity present
		nan
	**/
	static public function nansum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Compute the variance along the specified axis, while ignoring NaNs.
		
		Returns the variance of the array elements, a measure of the spread of
		a distribution.  The variance is computed for the flattened array by
		default, otherwise over the specified axis.
		
		For all-NaN slices or slices with zero degrees of freedom, NaN is
		returned and a `RuntimeWarning` is raised.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose variance is desired.  If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the variance is computed.  The default is to compute
		    the variance of the flattened array.
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
		    ``N - ddof``, where ``N`` represents the number of non-NaN
		    elements. By default `ddof` is zero.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		where : array_like of bool, optional
		    Elements to include in the variance. See `~numpy.ufunc.reduce` for
		    details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		variance : ndarray, see dtype parameter above
		    If `out` is None, return a new array containing the variance,
		    otherwise return a reference to the output array. If ddof is >= the
		    number of non-NaN elements in a slice or the slice contains only
		    NaNs, then the result for that slice is NaN.
		
		See Also
		--------
		std : Standard deviation
		mean : Average
		var : Variance while not ignoring NaNs
		nanstd, nanmean
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		The variance is the average of the squared deviations from the mean,
		i.e.,  ``var = mean(abs(x - x.mean())**2)``.
		
		The mean is normally calculated as ``x.sum() / N``, where ``N = len(x)``.
		If, however, `ddof` is specified, the divisor ``N - ddof`` is used
		instead.  In standard statistical practice, ``ddof=1`` provides an
		unbiased estimator of the variance of a hypothetical infinite
		population.  ``ddof=0`` provides a maximum likelihood estimate of the
		variance for normally distributed variables.
		
		Note that for complex numbers, the absolute value is taken before
		squaring, so that the result is always real and nonnegative.
		
		For floating-point input, the variance is computed using the same
		precision the input has.  Depending on the input data, this can cause
		the results to be inaccurate, especially for `float32` (see example
		below).  Specifying a higher-accuracy accumulator using the ``dtype``
		keyword can alleviate this issue.
		
		For this function to work on sub-classes of ndarray, they must define
		`sum` with the kwarg `keepdims`
		
		Examples
		--------
		>>> a = np.array([[1, np.nan], [3, 4]])
		>>> np.nanvar(a)
		1.5555555555555554
		>>> np.nanvar(a, axis=0)
		array([1.,  0.])
		>>> np.nanvar(a, axis=1)
		array([0.,  0.25])  # may vary
	**/
	static public function nanvar(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	static public var nbytes : Dynamic;
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
	static public function ndim(a:Dynamic):Int;
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
	static public function negative(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nested_iters(op, axes, flags=None, op_flags=None, op_dtypes=None,     order="K", casting="safe", buffersize=0)
		
		Create nditers for use in nested loops
		
		Create a tuple of `nditer` objects which iterate in nested loops over
		different axes of the op argument. The first iterator is used in the
		outermost loop, the last in the innermost loop. Advancing one will change
		the subsequent iterators to point at its new element.
		
		Parameters
		----------
		op : ndarray or sequence of array_like
		    The array(s) to iterate over.
		
		axes : list of list of int
		    Each item is used as an "op_axes" argument to an nditer
		
		flags, op_flags, op_dtypes, order, casting, buffersize (optional)
		    See `nditer` parameters of the same name
		
		Returns
		-------
		iters : tuple of nditer
		    An nditer for each item in `axes`, outermost first
		
		See Also
		--------
		nditer
		
		Examples
		--------
		
		Basic usage. Note how y is the "flattened" version of
		[a[:, 0, :], a[:, 1, 0], a[:, 2, :]] since we specified
		the first iter's axes as [1]
		
		>>> a = np.arange(12).reshape(2, 3, 2)
		>>> i, j = np.nested_iters(a, [[1], [0, 2]], flags=["multi_index"])
		>>> for x in i:
		...      print(i.multi_index)
		...      for y in j:
		...          print('', j.multi_index, y)
		(0,)
		 (0, 0) 0
		 (0, 1) 1
		 (1, 0) 6
		 (1, 1) 7
		(1,)
		 (0, 0) 2
		 (0, 1) 3
		 (1, 0) 8
		 (1, 1) 9
		(2,)
		 (0, 0) 4
		 (0, 1) 5
		 (1, 0) 10
		 (1, 1) 11
	**/
	static public function nested_iters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var newaxis : Dynamic;
	/**
		nextafter(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the next floating-point value after x1 towards x2, element-wise.
		
		Parameters
		----------
		x1 : array_like
		    Values to find the next representable value of.
		x2 : array_like
		    The direction where to look for the next representable value of `x1`.
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
		    The next representable values of `x1` in the direction of `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Examples
		--------
		>>> eps = np.finfo(np.float64).eps
		>>> np.nextafter(1, 2) == eps + 1
		True
		>>> np.nextafter([1, 2], [2, 1]) == [eps + 1, 2 - eps]
		array([ True,  True])
	**/
	static public function nextafter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the indices of the elements that are non-zero.
		
		Returns a tuple of arrays, one for each dimension of `a`,
		containing the indices of the non-zero elements in that
		dimension. The values in `a` are always tested and returned in
		row-major, C-style order.
		
		To group the indices by element, rather than dimension, use `argwhere`,
		which returns a row for each non-zero element.
		
		.. note::
		
		   When called on a zero-d array or scalar, ``nonzero(a)`` is treated
		   as ``nonzero(atleast_1d(a))``.
		
		   .. deprecated:: 1.17.0
		
		      Use `atleast_1d` explicitly if this behavior is deliberate.
		
		Parameters
		----------
		a : array_like
		    Input array.
		
		Returns
		-------
		tuple_of_arrays : tuple
		    Indices of elements that are non-zero.
		
		See Also
		--------
		flatnonzero :
		    Return indices that are non-zero in the flattened version of the input
		    array.
		ndarray.nonzero :
		    Equivalent ndarray method.
		count_nonzero :
		    Counts the number of non-zero elements in the input array.
		
		Notes
		-----
		While the nonzero values can be obtained with ``a[nonzero(a)]``, it is
		recommended to use ``x[x.astype(bool)]`` or ``x[x != 0]`` instead, which
		will correctly handle 0-d arrays.
		
		Examples
		--------
		>>> x = np.array([[3, 0, 0], [0, 4, 0], [5, 6, 0]])
		>>> x
		array([[3, 0, 0],
		       [0, 4, 0],
		       [5, 6, 0]])
		>>> np.nonzero(x)
		(array([0, 1, 2, 2]), array([0, 1, 0, 1]))
		
		>>> x[np.nonzero(x)]
		array([3, 4, 5, 6])
		>>> np.transpose(np.nonzero(x))
		array([[0, 0],
		       [1, 1],
		       [2, 0],
		       [2, 1]])
		
		A common use for ``nonzero`` is to find the indices of an array, where
		a condition is True.  Given an array `a`, the condition `a` > 3 is a
		boolean array and since False is interpreted as 0, np.nonzero(a > 3)
		yields the indices of the `a` where the condition is true.
		
		>>> a = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		>>> a > 3
		array([[False, False, False],
		       [ True,  True,  True],
		       [ True,  True,  True]])
		>>> np.nonzero(a > 3)
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
		
		Using this result to index `a` is equivalent to using the mask directly:
		
		>>> a[np.nonzero(a > 3)]
		array([4, 5, 6, 7, 8, 9])
		>>> a[a > 3]  # prefer this spelling
		array([4, 5, 6, 7, 8, 9])
		
		``nonzero`` can also be called as a method of the array.
		
		>>> (a > 3).nonzero()
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
	**/
	static public function nonzero(a:Dynamic):python.Tuple<Dynamic>;
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
	static public function not_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the scalar dtype or NumPy equivalent of Python type of an object.
		
		Parameters
		----------
		rep : any
		    The object of which the type is returned.
		default : any, optional
		    If given, this is returned for objects whose types can not be
		    determined. If not given, None is returned for those objects.
		
		Returns
		-------
		dtype : dtype or Python type
		    The data type of `rep`.
		
		See Also
		--------
		sctype2char, issctype, issubsctype, issubdtype, maximum_sctype
		
		Examples
		--------
		>>> np.obj2sctype(np.int32)
		<class 'numpy.int32'>
		>>> np.obj2sctype(np.array([1., 2.]))
		<class 'numpy.float64'>
		>>> np.obj2sctype(np.array([1.j]))
		<class 'numpy.complex128'>
		
		>>> np.obj2sctype(dict)
		<class 'numpy.object_'>
		>>> np.obj2sctype('string')
		
		>>> np.obj2sctype(1, default=list)
		<class 'list'>
	**/
	static public function obj2sctype(rep:Dynamic, ?_default:Dynamic):Dynamic;
	static public var ogrid : Dynamic;
	/**
		Matrix of ones.
		
		Return a matrix of given shape and type, filled with ones.
		
		Parameters
		----------
		shape : {sequence of ints, int}
		    Shape of the matrix
		dtype : data-type, optional
		    The desired data-type for the matrix, default is np.float64.
		order : {'C', 'F'}, optional
		    Whether to store matrix in C- or Fortran-contiguous order,
		    default is 'C'.
		
		Returns
		-------
		out : matrix
		    Matrix of ones of given shape, dtype, and order.
		
		See Also
		--------
		ones : Array of ones.
		matlib.zeros : Zero matrix.
		
		Notes
		-----
		If `shape` has length one i.e. ``(N,)``, or is a scalar ``N``,
		`out` becomes a single row matrix of shape ``(1,N)``.
		
		Examples
		--------
		>>> np.matlib.ones((2,3))
		matrix([[1.,  1.,  1.],
		        [1.,  1.,  1.]])
		
		>>> np.matlib.ones(2)
		matrix([[1.,  1.]])
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Matrix;
	/**
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
		out : ndarray
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
	static public function ones_like(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic, ?shape:Dynamic):numpy.Ndarray;
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
	**/
	static public function outer(a:Dynamic, b:Dynamic, ?out:Dynamic):Dynamic;
	/**
		packbits(a, /, axis=None, bitorder='big')
		
		Packs the elements of a binary-valued array into bits in a uint8 array.
		
		The result is padded to full bytes by inserting zero bits at the end.
		
		Parameters
		----------
		a : array_like
		    An array of integers or booleans whose elements should be packed to
		    bits.
		axis : int, optional
		    The dimension over which bit-packing is done.
		    ``None`` implies packing the flattened array.
		bitorder : {'big', 'little'}, optional
		    The order of the input bits. 'big' will mimic bin(val),
		    ``[0, 0, 0, 0, 0, 0, 1, 1] => 3 = 0b00000011``, 'little' will
		    reverse the order so ``[1, 1, 0, 0, 0, 0, 0, 0] => 3``.
		    Defaults to 'big'.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		packed : ndarray
		    Array of type uint8 whose elements represent bits corresponding to the
		    logical (0 or nonzero) value of the input elements. The shape of
		    `packed` has the same number of dimensions as the input (unless `axis`
		    is None, in which case the output is 1-D).
		
		See Also
		--------
		unpackbits: Unpacks elements of a uint8 array into a binary-valued output
		            array.
		
		Examples
		--------
		>>> a = np.array([[[1,0,1],
		...                [0,1,0]],
		...               [[1,1,0],
		...                [0,0,1]]])
		>>> b = np.packbits(a, axis=-1)
		>>> b
		array([[[160],
		        [ 64]],
		       [[192],
		        [ 32]]], dtype=uint8)
		
		Note that in binary 160 = 1010 0000, 64 = 0100 0000, 192 = 1100 0000,
		and 32 = 0010 0000.
	**/
	static public function packbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Pad an array.
		
		Parameters
		----------
		array : array_like of rank N
		    The array to pad.
		pad_width : {sequence, array_like, int}
		    Number of values padded to the edges of each axis.
		    ((before_1, after_1), ... (before_N, after_N)) unique pad widths
		    for each axis.
		    ((before, after),) yields same before and after pad for each axis.
		    (pad,) or int is a shortcut for before = after = pad width for all
		    axes.
		mode : str or function, optional
		    One of the following string values or a user supplied function.
		
		    'constant' (default)
		        Pads with a constant value.
		    'edge'
		        Pads with the edge values of array.
		    'linear_ramp'
		        Pads with the linear ramp between end_value and the
		        array edge value.
		    'maximum'
		        Pads with the maximum value of all or part of the
		        vector along each axis.
		    'mean'
		        Pads with the mean value of all or part of the
		        vector along each axis.
		    'median'
		        Pads with the median value of all or part of the
		        vector along each axis.
		    'minimum'
		        Pads with the minimum value of all or part of the
		        vector along each axis.
		    'reflect'
		        Pads with the reflection of the vector mirrored on
		        the first and last values of the vector along each
		        axis.
		    'symmetric'
		        Pads with the reflection of the vector mirrored
		        along the edge of the array.
		    'wrap'
		        Pads with the wrap of the vector along the axis.
		        The first values are used to pad the end and the
		        end values are used to pad the beginning.
		    'empty'
		        Pads with undefined values.
		
		        .. versionadded:: 1.17
		
		    <function>
		        Padding function, see Notes.
		stat_length : sequence or int, optional
		    Used in 'maximum', 'mean', 'median', and 'minimum'.  Number of
		    values at edge of each axis used to calculate the statistic value.
		
		    ((before_1, after_1), ... (before_N, after_N)) unique statistic
		    lengths for each axis.
		
		    ((before, after),) yields same before and after statistic lengths
		    for each axis.
		
		    (stat_length,) or int is a shortcut for before = after = statistic
		    length for all axes.
		
		    Default is ``None``, to use the entire axis.
		constant_values : sequence or scalar, optional
		    Used in 'constant'.  The values to set the padded values for each
		    axis.
		
		    ``((before_1, after_1), ... (before_N, after_N))`` unique pad constants
		    for each axis.
		
		    ``((before, after),)`` yields same before and after constants for each
		    axis.
		
		    ``(constant,)`` or ``constant`` is a shortcut for ``before = after = constant`` for
		    all axes.
		
		    Default is 0.
		end_values : sequence or scalar, optional
		    Used in 'linear_ramp'.  The values used for the ending value of the
		    linear_ramp and that will form the edge of the padded array.
		
		    ``((before_1, after_1), ... (before_N, after_N))`` unique end values
		    for each axis.
		
		    ``((before, after),)`` yields same before and after end values for each
		    axis.
		
		    ``(constant,)`` or ``constant`` is a shortcut for ``before = after = constant`` for
		    all axes.
		
		    Default is 0.
		reflect_type : {'even', 'odd'}, optional
		    Used in 'reflect', and 'symmetric'.  The 'even' style is the
		    default with an unaltered reflection around the edge value.  For
		    the 'odd' style, the extended part of the array is created by
		    subtracting the reflected values from two times the edge value.
		
		Returns
		-------
		pad : ndarray
		    Padded array of rank equal to `array` with shape increased
		    according to `pad_width`.
		
		Notes
		-----
		.. versionadded:: 1.7.0
		
		For an array with rank greater than 1, some of the padding of later
		axes is calculated from padding of previous axes.  This is easiest to
		think about with a rank 2 array where the corners of the padded array
		are calculated by using padded values from the first axis.
		
		The padding function, if used, should modify a rank 1 array in-place. It
		has the following signature::
		
		    padding_func(vector, iaxis_pad_width, iaxis, kwargs)
		
		where
		
		    vector : ndarray
		        A rank 1 array already padded with zeros.  Padded values are
		        vector[:iaxis_pad_width[0]] and vector[-iaxis_pad_width[1]:].
		    iaxis_pad_width : tuple
		        A 2-tuple of ints, iaxis_pad_width[0] represents the number of
		        values padded at the beginning of vector where
		        iaxis_pad_width[1] represents the number of values padded at
		        the end of vector.
		    iaxis : int
		        The axis currently being calculated.
		    kwargs : dict
		        Any keyword arguments the function requires.
		
		Examples
		--------
		>>> a = [1, 2, 3, 4, 5]
		>>> np.pad(a, (2, 3), 'constant', constant_values=(4, 6))
		array([4, 4, 1, ..., 6, 6, 6])
		
		>>> np.pad(a, (2, 3), 'edge')
		array([1, 1, 1, ..., 5, 5, 5])
		
		>>> np.pad(a, (2, 3), 'linear_ramp', end_values=(5, -4))
		array([ 5,  3,  1,  2,  3,  4,  5,  2, -1, -4])
		
		>>> np.pad(a, (2,), 'maximum')
		array([5, 5, 1, 2, 3, 4, 5, 5, 5])
		
		>>> np.pad(a, (2,), 'mean')
		array([3, 3, 1, 2, 3, 4, 5, 3, 3])
		
		>>> np.pad(a, (2,), 'median')
		array([3, 3, 1, 2, 3, 4, 5, 3, 3])
		
		>>> a = [[1, 2], [3, 4]]
		>>> np.pad(a, ((3, 2), (2, 3)), 'minimum')
		array([[1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [3, 3, 3, 4, 3, 3, 3],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1]])
		
		>>> a = [1, 2, 3, 4, 5]
		>>> np.pad(a, (2, 3), 'reflect')
		array([3, 2, 1, 2, 3, 4, 5, 4, 3, 2])
		
		>>> np.pad(a, (2, 3), 'reflect', reflect_type='odd')
		array([-1,  0,  1,  2,  3,  4,  5,  6,  7,  8])
		
		>>> np.pad(a, (2, 3), 'symmetric')
		array([2, 1, 1, 2, 3, 4, 5, 5, 4, 3])
		
		>>> np.pad(a, (2, 3), 'symmetric', reflect_type='odd')
		array([0, 1, 1, 2, 3, 4, 5, 5, 6, 7])
		
		>>> np.pad(a, (2, 3), 'wrap')
		array([4, 5, 1, 2, 3, 4, 5, 1, 2, 3])
		
		>>> def pad_with(vector, pad_width, iaxis, kwargs):
		...     pad_value = kwargs.get('padder', 10)
		...     vector[:pad_width[0]] = pad_value
		...     vector[-pad_width[1]:] = pad_value
		>>> a = np.arange(6)
		>>> a = a.reshape((2, 3))
		>>> np.pad(a, 2, pad_with)
		array([[10, 10, 10, 10, 10, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10],
		       [10, 10,  0,  1,  2, 10, 10],
		       [10, 10,  3,  4,  5, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10]])
		>>> np.pad(a, 2, pad_with, padder=100)
		array([[100, 100, 100, 100, 100, 100, 100],
		       [100, 100, 100, 100, 100, 100, 100],
		       [100, 100,   0,   1,   2, 100, 100],
		       [100, 100,   3,   4,   5, 100, 100],
		       [100, 100, 100, 100, 100, 100, 100],
		       [100, 100, 100, 100, 100, 100, 100]])
	**/
	static public function pad(array:Dynamic, pad_width:Dynamic, ?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Return a partitioned copy of an array.
		
		Creates a copy of the array with its elements rearranged in such a
		way that the value of the element in k-th position is in the
		position it would be in a sorted array. All elements smaller than
		the k-th element are moved before this element and all equal or
		greater are moved behind it. The ordering of the elements in the two
		partitions is undefined.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		kth : int or sequence of ints
		    Element index to partition by. The k-th value of the element
		    will be in its final sorted position and all smaller elements
		    will be moved before it and all equal or greater elements behind
		    it. The order of all elements in the partitions is undefined. If
		    provided with a sequence of k-th it will partition all elements
		    indexed by k-th  of them into their sorted position at once.
		
		    .. deprecated:: 1.22.0
		        Passing booleans as index is deprecated.
		axis : int or None, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'introselect'}, optional
		    Selection algorithm. Default is 'introselect'.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument
		    specifies which fields to compare first, second, etc.  A single
		    field can be specified as a string.  Not all fields need be
		    specified, but unspecified fields will still be used, in the
		    order in which they come up in the dtype, to break ties.
		
		Returns
		-------
		partitioned_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		ndarray.partition : Method to sort an array in-place.
		argpartition : Indirect partition.
		sort : Full sorting
		
		Notes
		-----
		The various selection algorithms are characterized by their average
		speed, worst case performance, work space size, and whether they are
		stable. A stable sort keeps items with the same key in the same
		relative order. The available algorithms have the following
		properties:
		
		================= ======= ============= ============ =======
		   kind            speed   worst case    work space  stable
		================= ======= ============= ============ =======
		'introselect'        1        O(n)           0         no
		================= ======= ============= ============ =======
		
		All the partition algorithms make temporary copies of the data when
		partitioning along any but the last axis.  Consequently,
		partitioning along the last axis is faster and uses less space than
		partitioning along any other axis.
		
		The sort order for complex numbers is lexicographic. If both the
		real and imaginary parts are non-nan then the order is determined by
		the real parts except when they are equal, in which case the order
		is determined by the imaginary parts.
		
		Examples
		--------
		>>> a = np.array([3, 4, 2, 1])
		>>> np.partition(a, 3)
		array([2, 1, 3, 4])
		
		>>> np.partition(a, (1, 3))
		array([1, 2, 3, 4])
	**/
	static public function partition(a:Dynamic, kth:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Compute the q-th percentile of the data along the specified axis.
		
		Returns the q-th percentile(s) of the array elements.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		q : array_like of float
		    Percentile or sequence of percentiles to compute, which must be between
		    0 and 100 inclusive.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the percentiles are computed. The
		    default is to compute the percentile(s) along a flattened
		    version of the array.
		
		    .. versionchanged:: 1.9.0
		        A tuple of axes is supported
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow the input array `a` to be modified by intermediate
		    calculations, to save memory. In this case, the contents of the input
		    `a` after this function completes is undefined.
		method : str, optional
		    This parameter specifies the method to use for estimating the
		    percentile.  There are many different methods, some unique to NumPy.
		    See the notes for explanation.  The options sorted by their R type
		    as summarized in the H&F paper [1]_ are:
		
		    1. 'inverted_cdf'
		    2. 'averaged_inverted_cdf'
		    3. 'closest_observation'
		    4. 'interpolated_inverted_cdf'
		    5. 'hazen'
		    6. 'weibull'
		    7. 'linear'  (default)
		    8. 'median_unbiased'
		    9. 'normal_unbiased'
		
		    The first three methods are discontiuous.  NumPy further defines the
		    following discontinuous variations of the default 'linear' (7.) option:
		
		    * 'lower'
		    * 'higher',
		    * 'midpoint'
		    * 'nearest'
		
		    .. versionchanged:: 1.22.0
		        This argument was previously called "interpolation" and only
		        offered the "linear" default and last four options.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the
		    result will broadcast correctly against the original array `a`.
		
		    .. versionadded:: 1.9.0
		
		interpolation : str, optional
		    Deprecated name for the method keyword argument.
		
		    .. deprecated:: 1.22.0
		
		Returns
		-------
		percentile : scalar or ndarray
		    If `q` is a single percentile and `axis=None`, then the result
		    is a scalar. If multiple percentiles are given, first axis of
		    the result corresponds to the percentiles. The other axes are
		    the axes that remain after the reduction of `a`. If the input
		    contains integers or floats smaller than ``float64``, the output
		    data-type is ``float64``. Otherwise, the output data-type is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean
		median : equivalent to ``percentile(..., 50)``
		nanpercentile
		quantile : equivalent to percentile, except q in the range [0, 1].
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the q-th percentile of ``V`` is
		the value ``q/100`` of the way from the minimum to the maximum in a
		sorted copy of ``V``. The values and distances of the two nearest
		neighbors as well as the `method` parameter will determine the
		percentile if the normalized ranking does not match the location of
		``q`` exactly. This function is the same as the median if ``q=50``, the
		same as the minimum if ``q=0`` and the same as the maximum if
		``q=100``.
		
		This optional `method` parameter specifies the method to use when the
		desired quantile lies between two data points ``i < j``.
		If ``g`` is the fractional part of the index surrounded by ``i`` and
		alpha and beta are correction constants modifying i and j.
		
		Below, 'q' is the quantile value, 'n' is the sample size and
		alpha and beta are constants.
		The following formula gives an interpolation "i + g" of where the quantile
		would be in the sorted sample.
		With 'i' being the floor and 'g' the fractional part of the result.
		
		.. math::
		    i + g = (q - alpha) / ( n - alpha - beta + 1 )
		
		The different methods then work as follows
		
		inverted_cdf:
		    method 1 of H&F [1]_.
		    This method gives discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then take i
		
		averaged_inverted_cdf:
		    method 2 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then average between bounds
		
		closest_observation:
		    method 3 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 and index is odd ; then take j
		    * if g = 0 and index is even ; then take i
		
		interpolated_inverted_cdf:
		    method 4 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 1
		
		hazen:
		    method 5 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1/2
		    * beta = 1/2
		
		weibull:
		    method 6 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 0
		
		linear:
		    method 7 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1
		    * beta = 1
		
		median_unbiased:
		    method 8 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is unknown (see reference).
		    This method give continuous results using:
		    * alpha = 1/3
		    * beta = 1/3
		
		normal_unbiased:
		    method 9 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is known to be normal.
		    This method give continuous results using:
		    * alpha = 3/8
		    * beta = 3/8
		
		lower:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` as the interpolation point.
		
		higher:
		    NumPy method kept for backwards compatibility.
		    Takes ``j`` as the interpolation point.
		
		nearest:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` or ``j``, whichever is nearest.
		
		midpoint:
		    NumPy method kept for backwards compatibility.
		    Uses ``(i + j) / 2``.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.percentile(a, 50)
		3.5
		>>> np.percentile(a, 50, axis=0)
		array([6.5, 4.5, 2.5])
		>>> np.percentile(a, 50, axis=1)
		array([7.,  2.])
		>>> np.percentile(a, 50, axis=1, keepdims=True)
		array([[7.],
		       [2.]])
		
		>>> m = np.percentile(a, 50, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.percentile(a, 50, axis=0, out=out)
		array([6.5, 4.5, 2.5])
		>>> m
		array([6.5, 4.5, 2.5])
		
		>>> b = a.copy()
		>>> np.percentile(b, 50, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a == b)
		
		The different methods can be visualized graphically:
		
		.. plot::
		
		    import matplotlib.pyplot as plt
		
		    a = np.arange(4)
		    p = np.linspace(0, 100, 6001)
		    ax = plt.gca()
		    lines = [
		        ('linear', '-', 'C0'),
		        ('inverted_cdf', ':', 'C1'),
		        # Almost the same as `inverted_cdf`:
		        ('averaged_inverted_cdf', '-.', 'C1'),
		        ('closest_observation', ':', 'C2'),
		        ('interpolated_inverted_cdf', '--', 'C1'),
		        ('hazen', '--', 'C3'),
		        ('weibull', '-.', 'C4'),
		        ('median_unbiased', '--', 'C5'),
		        ('normal_unbiased', '-.', 'C6'),
		        ]
		    for method, style, color in lines:
		        ax.plot(
		            p, np.percentile(a, p, method=method),
		            label=method, linestyle=style, color=color)
		    ax.set(
		        title='Percentiles for different methods and data: ' + str(a),
		        xlabel='Percentile',
		        ylabel='Estimated percentile value',
		        yticks=a)
		    ax.legend()
		    plt.show()
		
		References
		----------
		.. [1] R. J. Hyndman and Y. Fan,
		   "Sample quantiles in statistical packages,"
		   The American Statistician, 50(4), pp. 361-365, 1996
	**/
	static public function percentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		Evaluate a piecewise-defined function.
		
		Given a set of conditions and corresponding functions, evaluate each
		function on the input data wherever its condition is true.
		
		Parameters
		----------
		x : ndarray or scalar
		    The input domain.
		condlist : list of bool arrays or bool scalars
		    Each boolean array corresponds to a function in `funclist`.  Wherever
		    `condlist[i]` is True, `funclist[i](x)` is used as the output value.
		
		    Each boolean array in `condlist` selects a piece of `x`,
		    and should therefore be of the same shape as `x`.
		
		    The length of `condlist` must correspond to that of `funclist`.
		    If one extra function is given, i.e. if
		    ``len(funclist) == len(condlist) + 1``, then that extra function
		    is the default value, used wherever all conditions are false.
		funclist : list of callables, f(x,*args,**kw), or scalars
		    Each function is evaluated over `x` wherever its corresponding
		    condition is True.  It should take a 1d array as input and give an 1d
		    array or a scalar value as output.  If, instead of a callable,
		    a scalar is provided then a constant function (``lambda x: scalar``) is
		    assumed.
		args : tuple, optional
		    Any further arguments given to `piecewise` are passed to the functions
		    upon execution, i.e., if called ``piecewise(..., ..., 1, 'a')``, then
		    each function is called as ``f(x, 1, 'a')``.
		kw : dict, optional
		    Keyword arguments used in calling `piecewise` are passed to the
		    functions upon execution, i.e., if called
		    ``piecewise(..., ..., alpha=1)``, then each function is called as
		    ``f(x, alpha=1)``.
		
		Returns
		-------
		out : ndarray
		    The output is the same shape and type as x and is found by
		    calling the functions in `funclist` on the appropriate portions of `x`,
		    as defined by the boolean arrays in `condlist`.  Portions not covered
		    by any condition have a default value of 0.
		
		
		See Also
		--------
		choose, select, where
		
		Notes
		-----
		This is similar to choose or select, except that functions are
		evaluated on elements of `x` that satisfy the corresponding condition from
		`condlist`.
		
		The result is::
		
		        |--
		        |funclist[0](x[condlist[0]])
		  out = |funclist[1](x[condlist[1]])
		        |...
		        |funclist[n2](x[condlist[n2]])
		        |--
		
		Examples
		--------
		Define the sigma function, which is -1 for ``x < 0`` and +1 for ``x >= 0``.
		
		>>> x = np.linspace(-2.5, 2.5, 6)
		>>> np.piecewise(x, [x < 0, x >= 0], [-1, 1])
		array([-1., -1., -1.,  1.,  1.,  1.])
		
		Define the absolute value, which is ``-x`` for ``x <0`` and ``x`` for
		``x >= 0``.
		
		>>> np.piecewise(x, [x < 0, x >= 0], [lambda x: -x, lambda x: x])
		array([2.5,  1.5,  0.5,  0.5,  1.5,  2.5])
		
		Apply the same function to a scalar value.
		
		>>> y = -2
		>>> np.piecewise(y, [y < 0, y >= 0], [lambda x: -x, lambda x: x])
		array(2)
	**/
	static public function piecewise(x:Dynamic, condlist:Dynamic, funclist:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Change elements of an array based on conditional and input values.
		
		Similar to ``np.copyto(arr, vals, where=mask)``, the difference is that
		`place` uses the first N elements of `vals`, where N is the number of
		True values in `mask`, while `copyto` uses the elements where `mask`
		is True.
		
		Note that `extract` does the exact opposite of `place`.
		
		Parameters
		----------
		arr : ndarray
		    Array to put data into.
		mask : array_like
		    Boolean mask array. Must have the same size as `a`.
		vals : 1-D sequence
		    Values to put into `a`. Only the first N elements are used, where
		    N is the number of True values in `mask`. If `vals` is smaller
		    than N, it will be repeated, and if elements of `a` are to be masked,
		    this sequence must be non-empty.
		
		See Also
		--------
		copyto, put, take, extract
		
		Examples
		--------
		>>> arr = np.arange(6).reshape(2, 3)
		>>> np.place(arr, arr>2, [44, 55])
		>>> arr
		array([[ 0,  1,  2],
		       [44, 55, 44]])
	**/
	static public function place(arr:Dynamic, mask:Dynamic, vals:Dynamic):Dynamic;
	/**
		Find the coefficients of a polynomial with the given sequence of roots.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Returns the coefficients of the polynomial whose leading coefficient
		is one for the given sequence of zeros (multiple roots must be included
		in the sequence as many times as their multiplicity; see Examples).
		A square matrix (or array, which will be treated as a matrix) can also
		be given, in which case the coefficients of the characteristic polynomial
		of the matrix are returned.
		
		Parameters
		----------
		seq_of_zeros : array_like, shape (N,) or (N, N)
		    A sequence of polynomial roots, or a square array or matrix object.
		
		Returns
		-------
		c : ndarray
		    1D array of polynomial coefficients from highest to lowest degree:
		
		    ``c[0] * x**(N) + c[1] * x**(N-1) + ... + c[N-1] * x + c[N]``
		    where c[0] always equals 1.
		
		Raises
		------
		ValueError
		    If input is the wrong shape (the input must be a 1-D or square
		    2-D array).
		
		See Also
		--------
		polyval : Compute polynomial values.
		roots : Return the roots of a polynomial.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		Specifying the roots of a polynomial still leaves one degree of
		freedom, typically represented by an undetermined leading
		coefficient. [1]_ In the case of this function, that coefficient -
		the first one in the returned array - is always taken as one. (If
		for some reason you have one other point, the only automatic way
		presently to leverage that information is to use ``polyfit``.)
		
		The characteristic polynomial, :math:`p_a(t)`, of an `n`-by-`n`
		matrix **A** is given by
		
		    :math:`p_a(t) = \mathrm{det}(t\, \mathbf{I} - \mathbf{A})`,
		
		where **I** is the `n`-by-`n` identity matrix. [2]_
		
		References
		----------
		.. [1] M. Sullivan and M. Sullivan, III, "Algebra and Trignometry,
		   Enhanced With Graphing Utilities," Prentice-Hall, pg. 318, 1996.
		
		.. [2] G. Strang, "Linear Algebra and Its Applications, 2nd Edition,"
		   Academic Press, pg. 182, 1980.
		
		Examples
		--------
		Given a sequence of a polynomial's zeros:
		
		>>> np.poly((0, 0, 0)) # Multiple root example
		array([1., 0., 0., 0.])
		
		The line above represents z**3 + 0*z**2 + 0*z + 0.
		
		>>> np.poly((-1./2, 0, 1./2))
		array([ 1.  ,  0.  , -0.25,  0.  ])
		
		The line above represents z**3 - z/4
		
		>>> np.poly((np.random.random(1)[0], 0, np.random.random(1)[0]))
		array([ 1.        , -0.77086955,  0.08618131,  0.        ]) # random
		
		Given a square array object:
		
		>>> P = np.array([[0, 1./3], [-1./2, 0]])
		>>> np.poly(P)
		array([1.        , 0.        , 0.16666667])
		
		Note how in all cases the leading coefficient is always 1.
	**/
	static public function poly(seq_of_zeros:Dynamic):numpy.Ndarray;
	/**
		Find the sum of two polynomials.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Returns the polynomial resulting from the sum of two input polynomials.
		Each input must be either a poly1d object or a 1D sequence of polynomial
		coefficients, from highest to lowest degree.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d object
		    Input polynomials.
		
		Returns
		-------
		out : ndarray or poly1d object
		    The sum of the inputs. If either input is a poly1d object, then the
		    output is also a poly1d object. Otherwise, it is a 1D array of
		    polynomial coefficients from highest to lowest degree.
		
		See Also
		--------
		poly1d : A one-dimensional polynomial class.
		poly, polyadd, polyder, polydiv, polyfit, polyint, polysub, polyval
		
		Examples
		--------
		>>> np.polyadd([1, 2], [9, 5, 4])
		array([9, 6, 6])
		
		Using poly1d objects:
		
		>>> p1 = np.poly1d([1, 2])
		>>> p2 = np.poly1d([9, 5, 4])
		>>> print(p1)
		1 x + 2
		>>> print(p2)
		   2
		9 x + 5 x + 4
		>>> print(np.polyadd(p1, p2))
		   2
		9 x + 6 x + 6
	**/
	static public function polyadd(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Return the derivative of the specified order of a polynomial.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Parameters
		----------
		p : poly1d or sequence
		    Polynomial to differentiate.
		    A sequence is interpreted as polynomial coefficients, see `poly1d`.
		m : int, optional
		    Order of differentiation (default: 1)
		
		Returns
		-------
		der : poly1d
		    A new polynomial representing the derivative.
		
		See Also
		--------
		polyint : Anti-derivative of a polynomial.
		poly1d : Class for one-dimensional polynomials.
		
		Examples
		--------
		The derivative of the polynomial :math:`x^3 + x^2 + x^1 + 1` is:
		
		>>> p = np.poly1d([1,1,1,1])
		>>> p2 = np.polyder(p)
		>>> p2
		poly1d([3, 2, 1])
		
		which evaluates to:
		
		>>> p2(2.)
		17.0
		
		We can verify this, approximating the derivative with
		``(f(x + h) - f(x))/h``:
		
		>>> (p(2. + 0.001) - p(2.)) / 0.001
		17.007000999997857
		
		The fourth-order derivative of a 3rd-order polynomial is zero:
		
		>>> np.polyder(p, 2)
		poly1d([6, 2])
		>>> np.polyder(p, 3)
		poly1d([6])
		>>> np.polyder(p, 4)
		poly1d([0])
	**/
	static public function polyder(p:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Returns the quotient and remainder of polynomial division.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		The input arrays are the coefficients (including any coefficients
		equal to zero) of the "numerator" (dividend) and "denominator"
		(divisor) polynomials, respectively.
		
		Parameters
		----------
		u : array_like or poly1d
		    Dividend polynomial's coefficients.
		
		v : array_like or poly1d
		    Divisor polynomial's coefficients.
		
		Returns
		-------
		q : ndarray
		    Coefficients, including those equal to zero, of the quotient.
		r : ndarray
		    Coefficients, including those equal to zero, of the remainder.
		
		See Also
		--------
		poly, polyadd, polyder, polydiv, polyfit, polyint, polymul, polysub
		polyval
		
		Notes
		-----
		Both `u` and `v` must be 0-d or 1-d (ndim = 0 or 1), but `u.ndim` need
		not equal `v.ndim`. In other words, all four possible combinations -
		``u.ndim = v.ndim = 0``, ``u.ndim = v.ndim = 1``,
		``u.ndim = 1, v.ndim = 0``, and ``u.ndim = 0, v.ndim = 1`` - work.
		
		Examples
		--------
		.. math:: \frac{3x^2 + 5x + 2}{2x + 1} = 1.5x + 1.75, remainder 0.25
		
		>>> x = np.array([3.0, 5.0, 2.0])
		>>> y = np.array([2.0, 1.0])
		>>> np.polydiv(x, y)
		(array([1.5 , 1.75]), array([0.25]))
	**/
	static public function polydiv(u:Dynamic, v:Dynamic):numpy.Ndarray;
	/**
		Least squares polynomial fit.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Fit a polynomial ``p(x) = p[0] * x**deg + ... + p[deg]`` of degree `deg`
		to points `(x, y)`. Returns a vector of coefficients `p` that minimises
		the squared error in the order `deg`, `deg-1`, ... `0`.
		
		The `Polynomial.fit <numpy.polynomial.polynomial.Polynomial.fit>` class
		method is recommended for new code as it is more stable numerically. See
		the documentation of the method for more information.
		
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
		    Weights. If not None, the weight ``w[i]`` applies to the unsquared
		    residual ``y[i] - y_hat[i]`` at ``x[i]``. Ideally the weights are
		    chosen so that the errors of the products ``w[i]*y[i]`` all have the
		    same variance.  When using inverse-variance weighting, use
		    ``w[i] = 1/sigma(y[i])``.  The default value is None.
		cov : bool or str, optional
		    If given and not `False`, return not just the estimate but also its
		    covariance matrix. By default, the covariance are scaled by
		    chi2/dof, where dof = M - (deg + 1), i.e., the weights are presumed
		    to be unreliable except in a relative sense and everything is scaled
		    such that the reduced chi2 is unity. This scaling is omitted if
		    ``cov='unscaled'``, as is relevant for the case that the weights are
		    w = 1/sigma, with sigma known to be a reliable estimate of the
		    uncertainty.
		
		Returns
		-------
		p : ndarray, shape (deg + 1,) or (deg + 1, K)
		    Polynomial coefficients, highest power first.  If `y` was 2-D, the
		    coefficients for `k`-th data set are in ``p[:,k]``.
		
		residuals, rank, singular_values, rcond
		    These values are only returned if ``full == True``
		
		    - residuals -- sum of squared residuals of the least squares fit
		    - rank -- the effective rank of the scaled Vandermonde
		       coefficient matrix
		    - singular_values -- singular values of the scaled Vandermonde
		       coefficient matrix
		    - rcond -- value of `rcond`.
		
		    For more details, see `numpy.linalg.lstsq`.
		
		V : ndarray, shape (M,M) or (M,M,K)
		    Present only if ``full == False`` and ``cov == True``.  The covariance
		    matrix of the polynomial coefficient estimates.  The diagonal of
		    this matrix are the variance estimates for each coefficient.  If y
		    is a 2-D array, then the covariance matrix for the `k`-th data set
		    are in ``V[:,:,k]``
		
		
		Warns
		-----
		RankWarning
		    The rank of the coefficient matrix in the least-squares fit is
		    deficient. The warning is only raised if ``full == False``.
		
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
		
		.. math::
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
		       https://en.wikipedia.org/wiki/Curve_fitting
		.. [2] Wikipedia, "Polynomial interpolation",
		       https://en.wikipedia.org/wiki/Polynomial_interpolation
		
		Examples
		--------
		>>> import warnings
		>>> x = np.array([0.0, 1.0, 2.0, 3.0,  4.0,  5.0])
		>>> y = np.array([0.0, 0.8, 0.9, 0.1, -0.8, -1.0])
		>>> z = np.polyfit(x, y, 3)
		>>> z
		array([ 0.08703704, -0.81349206,  1.69312169, -0.03968254]) # may vary
		
		It is convenient to use `poly1d` objects for dealing with polynomials:
		
		>>> p = np.poly1d(z)
		>>> p(0.5)
		0.6143849206349179 # may vary
		>>> p(3.5)
		-0.34732142857143039 # may vary
		>>> p(10)
		22.579365079365115 # may vary
		
		High-order polynomials may oscillate wildly:
		
		>>> with warnings.catch_warnings():
		...     warnings.simplefilter('ignore', np.RankWarning)
		...     p30 = np.poly1d(np.polyfit(x, y, 30))
		...
		>>> p30(4)
		-0.80000000000000204 # may vary
		>>> p30(5)
		-0.99999999999999445 # may vary
		>>> p30(4.5)
		-0.10547061179440398 # may vary
		
		Illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> xp = np.linspace(-2, 6, 100)
		>>> _ = plt.plot(x, y, '.', xp, p(xp), '-', xp, p30(xp), '--')
		>>> plt.ylim(-2,2)
		(-2, 2)
		>>> plt.show()
	**/
	static public function polyfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic, ?full:Dynamic, ?w:Dynamic, ?cov:Dynamic):Dynamic;
	/**
		Return an antiderivative (indefinite integral) of a polynomial.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		The returned order `m` antiderivative `P` of polynomial `p` satisfies
		:math:`\frac{d^m}{dx^m}P(x) = p(x)` and is defined up to `m - 1`
		integration constants `k`. The constants determine the low-order
		polynomial part
		
		.. math:: \frac{k_{m-1}}{0!} x^0 + \ldots + \frac{k_0}{(m-1)!}x^{m-1}
		
		of `P` so that :math:`P^{(j)}(0) = k_{m-j-1}`.
		
		Parameters
		----------
		p : array_like or poly1d
		    Polynomial to integrate.
		    A sequence is interpreted as polynomial coefficients, see `poly1d`.
		m : int, optional
		    Order of the antiderivative. (Default: 1)
		k : list of `m` scalars or scalar, optional
		    Integration constants. They are given in the order of integration:
		    those corresponding to highest-order terms come first.
		
		    If ``None`` (default), all constants are assumed to be zero.
		    If `m = 1`, a single scalar can be given instead of a list.
		
		See Also
		--------
		polyder : derivative of a polynomial
		poly1d.integ : equivalent method
		
		Examples
		--------
		The defining property of the antiderivative:
		
		>>> p = np.poly1d([1,1,1])
		>>> P = np.polyint(p)
		>>> P
		 poly1d([ 0.33333333,  0.5       ,  1.        ,  0.        ]) # may vary
		>>> np.polyder(P) == p
		True
		
		The integration constants default to zero, but can be specified:
		
		>>> P = np.polyint(p, 3)
		>>> P(0)
		0.0
		>>> np.polyder(P)(0)
		0.0
		>>> np.polyder(P, 2)(0)
		0.0
		>>> P = np.polyint(p, 3, k=[6,5,3])
		>>> P
		poly1d([ 0.01666667,  0.04166667,  0.16666667,  3. ,  5. ,  3. ]) # may vary
		
		Note that 3 = 6 / 2!, and that the constants are given in the order of
		integrations. Constant of the highest-order polynomial term comes first:
		
		>>> np.polyder(P, 2)(0)
		6.0
		>>> np.polyder(P, 1)(0)
		5.0
		>>> P(0)
		3.0
	**/
	static public function polyint(p:Dynamic, ?m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Find the product of two polynomials.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Finds the polynomial resulting from the multiplication of the two input
		polynomials. Each input must be either a poly1d object or a 1D sequence
		of polynomial coefficients, from highest to lowest degree.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d object
		    Input polynomials.
		
		Returns
		-------
		out : ndarray or poly1d object
		    The polynomial resulting from the multiplication of the inputs. If
		    either inputs is a poly1d object, then the output is also a poly1d
		    object. Otherwise, it is a 1D array of polynomial coefficients from
		    highest to lowest degree.
		
		See Also
		--------
		poly1d : A one-dimensional polynomial class.
		poly, polyadd, polyder, polydiv, polyfit, polyint, polysub, polyval
		convolve : Array convolution. Same output as polymul, but has parameter
		           for overlap mode.
		
		Examples
		--------
		>>> np.polymul([1, 2, 3], [9, 5, 1])
		array([ 9, 23, 38, 17,  3])
		
		Using poly1d objects:
		
		>>> p1 = np.poly1d([1, 2, 3])
		>>> p2 = np.poly1d([9, 5, 1])
		>>> print(p1)
		   2
		1 x + 2 x + 3
		>>> print(p2)
		   2
		9 x + 5 x + 1
		>>> print(np.polymul(p1, p2))
		   4      3      2
		9 x + 23 x + 38 x + 17 x + 3
	**/
	static public function polymul(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Difference (subtraction) of two polynomials.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Given two polynomials `a1` and `a2`, returns ``a1 - a2``.
		`a1` and `a2` can be either array_like sequences of the polynomials'
		coefficients (including coefficients equal to zero), or `poly1d` objects.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d
		    Minuend and subtrahend polynomials, respectively.
		
		Returns
		-------
		out : ndarray or poly1d
		    Array or `poly1d` object of the difference polynomial's coefficients.
		
		See Also
		--------
		polyval, polydiv, polymul, polyadd
		
		Examples
		--------
		.. math:: (2 x^2 + 10 x - 2) - (3 x^2 + 10 x -4) = (-x^2 + 2)
		
		>>> np.polysub([2, 10, -2], [3, 10, -4])
		array([-1,  0,  2])
	**/
	static public function polysub(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Evaluate a polynomial at specific values.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		If `p` is of length N, this function returns the value:
		
		    ``p[0]*x**(N-1) + p[1]*x**(N-2) + ... + p[N-2]*x + p[N-1]``
		
		If `x` is a sequence, then ``p(x)`` is returned for each element of ``x``.
		If `x` is another polynomial then the composite polynomial ``p(x(t))``
		is returned.
		
		Parameters
		----------
		p : array_like or poly1d object
		   1D array of polynomial coefficients (including coefficients equal
		   to zero) from highest degree to the constant term, or an
		   instance of poly1d.
		x : array_like or poly1d object
		   A number, an array of numbers, or an instance of poly1d, at
		   which to evaluate `p`.
		
		Returns
		-------
		values : ndarray or poly1d
		   If `x` is a poly1d instance, the result is the composition of the two
		   polynomials, i.e., `x` is "substituted" in `p` and the simplified
		   result is returned. In addition, the type of `x` - array_like or
		   poly1d - governs the type of the output: `x` array_like => `values`
		   array_like, `x` a poly1d object => `values` is also.
		
		See Also
		--------
		poly1d: A polynomial class.
		
		Notes
		-----
		Horner's scheme [1]_ is used to evaluate the polynomial. Even so,
		for polynomials of high degree the values may be inaccurate due to
		rounding errors. Use carefully.
		
		If `x` is a subtype of `ndarray` the return value will be of the same type.
		
		References
		----------
		.. [1] I. N. Bronshtein, K. A. Semendyayev, and K. A. Hirsch (Eng.
		   trans. Ed.), *Handbook of Mathematics*, New York, Van Nostrand
		   Reinhold Co., 1985, pg. 720.
		
		Examples
		--------
		>>> np.polyval([3,0,1], 5)  # 3 * 5**2 + 0 * 5**1 + 1
		76
		>>> np.polyval([3,0,1], np.poly1d(5))
		poly1d([76])
		>>> np.polyval(np.poly1d([3,0,1]), 5)
		76
		>>> np.polyval(np.poly1d([3,0,1]), np.poly1d(5))
		poly1d([76])
	**/
	static public function polyval(p:Dynamic, x:Dynamic):Dynamic;
	/**
		positive(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Numerical positive, element-wise.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		x : array_like or scalar
		    Input array.
		
		Returns
		-------
		y : ndarray or scalar
		    Returned array or scalar: `y = +x`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		Equivalent to `x.copy()`, but only defined for types that support
		arithmetic.
		
		Examples
		--------
		
		>>> x1 = np.array(([1., -1.]))
		>>> np.positive(x1)
		array([ 1., -1.])
		
		The unary ``+`` operator can be used as a shorthand for ``np.positive`` on
		ndarrays.
		
		>>> x1 = np.array(([1., -1.]))
		>>> +x1
		array([ 1., -1.])
	**/
	static public function positive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		power(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		First array elements raised to powers from second array, element-wise.
		
		Raise each base in `x1` to the positionally-corresponding power in
		`x2`.  `x1` and `x2` must be broadcastable to the same shape.
		
		An integer type raised to a negative integer power will raise a
		``ValueError``.
		
		Negative values raised to a non-integral value will return ``nan``.
		To get complex results, cast the input to complex, or specify the
		``dtype`` to be ``complex`` (see the example below).
		
		Parameters
		----------
		x1 : array_like
		    The bases.
		x2 : array_like
		    The exponents.
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
		    The bases in `x1` raised to the exponents in `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		float_power : power function that promotes integers to float
		
		Examples
		--------
		Cube each element in an array.
		
		>>> x1 = np.arange(6)
		>>> x1
		[0, 1, 2, 3, 4, 5]
		>>> np.power(x1, 3)
		array([  0,   1,   8,  27,  64, 125])
		
		Raise the bases to different exponents.
		
		>>> x2 = [1.0, 2.0, 3.0, 3.0, 2.0, 1.0]
		>>> np.power(x1, x2)
		array([  0.,   1.,   8.,  27.,  16.,   5.])
		
		The effect of broadcasting.
		
		>>> x2 = np.array([[1, 2, 3, 3, 2, 1], [1, 2, 3, 3, 2, 1]])
		>>> x2
		array([[1, 2, 3, 3, 2, 1],
		       [1, 2, 3, 3, 2, 1]])
		>>> np.power(x1, x2)
		array([[ 0,  1,  8, 27, 16,  5],
		       [ 0,  1,  8, 27, 16,  5]])
		
		The ``**`` operator can be used as a shorthand for ``np.power`` on
		ndarrays.
		
		>>> x2 = np.array([1, 2, 3, 3, 2, 1])
		>>> x1 = np.arange(6)
		>>> x1 ** x2
		array([ 0,  1,  8, 27, 16,  5])
		
		Negative values raised to a non-integral value will result in ``nan``
		(and a warning will be generated).
		
		>>> x3 = np.array([-1.0, -4.0])
		>>> with np.errstate(invalid='ignore'):
		...     p = np.power(x3, 1.5)
		...
		>>> p
		array([nan, nan])
		
		To get complex results, give the argument ``dtype=complex``.
		
		>>> np.power(x3, 1.5, dtype=complex)
		array([-1.83697020e-16-1.j, -1.46957616e-15-8.j])
	**/
	static public function power(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Context manager for setting print options.
		
		Set print options for the scope of the `with` block, and restore the old
		options at the end. See `set_printoptions` for the full description of
		available options.
		
		Examples
		--------
		
		>>> from numpy.testing import assert_equal
		>>> with np.printoptions(precision=2):
		...     np.array([2.0]) / 3
		array([0.67])
		
		The `as`-clause of the `with`-statement gives the current print options:
		
		>>> with np.printoptions(precision=2) as opts:
		...      assert_equal(opts, np.get_printoptions())
		
		See Also
		--------
		set_printoptions, get_printoptions
	**/
	static public function printoptions(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a product is performed.  The default,
		    axis=None, will calculate the product of all the elements in the
		    input array. If axis is negative it counts from the last to the
		    first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, a product is performed on all of the
		    axes specified in the tuple instead of a single axis or all the
		    axes as before.
		dtype : dtype, optional
		    The type of the returned array, as well as of the accumulator in
		    which the elements are multiplied.  The dtype of `a` is used by
		    default unless `a` has an integer dtype of less precision than the
		    default platform integer.  In that case, if `a` is signed then the
		    platform integer is used while if `a` is unsigned then an unsigned
		    integer of the same precision as the platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `prod` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		initial : scalar, optional
		    The starting value for this product. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		where : array_like of bool, optional
		    Elements to include in the product. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		product_along_axis : ndarray, see `dtype` parameter above.
		    An array shaped as `a` but with the specified axis removed.
		    Returns a reference to `out` if specified.
		
		See Also
		--------
		ndarray.prod : equivalent method
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.  That means that, on a 32-bit platform:
		
		>>> x = np.array([536870910, 536870910, 536870910, 536870910])
		>>> np.prod(x)
		16 # may vary
		
		The product of an empty array is the neutral element 1:
		
		>>> np.prod([])
		1.0
		
		Examples
		--------
		By default, calculate the product of all elements:
		
		>>> np.prod([1.,2.])
		2.0
		
		Even when the input array is two-dimensional:
		
		>>> np.prod([[1.,2.],[3.,4.]])
		24.0
		
		But we can also specify the axis over which to multiply:
		
		>>> np.prod([[1.,2.],[3.,4.]], axis=1)
		array([  2.,  12.])
		
		Or select specific elements to include:
		
		>>> np.prod([1., np.nan, 3.], where=[True, False, True])
		3.0
		
		If the type of `x` is unsigned, then the output type is
		the unsigned platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.uint8)
		>>> np.prod(x).dtype == np.uint
		True
		
		If `x` is of a signed integer type, then the output type
		is the default platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.int8)
		>>> np.prod(x).dtype == int
		True
		
		You can also start the product with a value other than one:
		
		>>> np.prod([1, 2], initial=5)
		10
	**/
	static public function prod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		See Also
		--------
		prod : equivalent function; see for details.
	**/
	static public function product(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		promote_types(type1, type2)
		
		Returns the data type with the smallest size and smallest scalar
		kind to which both ``type1`` and ``type2`` may be safely cast.
		The returned data type is always in native byte order.
		
		This function is symmetric, but rarely associative.
		
		Parameters
		----------
		type1 : dtype or dtype specifier
		    First data type.
		type2 : dtype or dtype specifier
		    Second data type.
		
		Returns
		-------
		out : dtype
		    The promoted data type.
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		Starting in NumPy 1.9, promote_types function now returns a valid string
		length when given an integer or float dtype as one argument and a string
		dtype as another argument. Previously it always returned the input string
		dtype, even if it wasn't long enough to store the max integer/float value
		converted to a string.
		
		See Also
		--------
		result_type, dtype, can_cast
		
		Examples
		--------
		>>> np.promote_types('f4', 'f8')
		dtype('float64')
		
		>>> np.promote_types('i8', 'f4')
		dtype('float64')
		
		>>> np.promote_types('>i8', '<c8')
		dtype('complex128')
		
		>>> np.promote_types('i4', 'S8')
		dtype('S11')
		
		An example of a non-associative case:
		
		>>> p = np.promote_types
		>>> p('S', p('i1', 'u1'))
		dtype('S6')
		>>> p(p('S', 'i1'), 'u1')
		dtype('S4')
	**/
	static public function promote_types(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Range of values (maximum - minimum) along an axis.
		
		The name of the function comes from the acronym for 'peak to peak'.
		
		.. warning::
		    `ptp` preserves the data type of the array. This means the
		    return value for an input of signed integers with n bits
		    (e.g. `np.int8`, `np.int16`, etc) is also a signed integer
		    with n bits.  In that case, peak-to-peak values greater than
		    ``2**(n-1)-1`` will be returned as negative values. An example
		    with a work-around is shown below.
		
		Parameters
		----------
		a : array_like
		    Input values.
		axis : None or int or tuple of ints, optional
		    Axis along which to find the peaks.  By default, flatten the
		    array.  `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.15.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : array_like
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type of the output values will be cast if necessary.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `ptp` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		Returns
		-------
		ptp : ndarray
		    A new array holding the result, unless `out` was
		    specified, in which case a reference to `out` is returned.
		
		Examples
		--------
		>>> x = np.array([[4, 9, 2, 10],
		...               [6, 9, 7, 12]])
		
		>>> np.ptp(x, axis=1)
		array([8, 6])
		
		>>> np.ptp(x, axis=0)
		array([2, 0, 5, 2])
		
		>>> np.ptp(x)
		10
		
		This example shows that a negative value can be returned when
		the input is an array of signed integers.
		
		>>> y = np.array([[1, 127],
		...               [0, 127],
		...               [-1, 127],
		...               [-2, 127]], dtype=np.int8)
		>>> np.ptp(y, axis=1)
		array([ 126,  127, -128, -127], dtype=int8)
		
		A work-around is to use the `view()` method to view the result as
		unsigned integers with the same bit width:
		
		>>> np.ptp(y, axis=1).view(np.uint8)
		array([126, 127, 128, 129], dtype=uint8)
	**/
	static public function ptp(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Replaces specified elements of an array with given values.
		
		The indexing works on the flattened target array. `put` is roughly
		equivalent to:
		
		::
		
		    a.flat[ind] = v
		
		Parameters
		----------
		a : ndarray
		    Target array.
		ind : array_like
		    Target indices, interpreted as integers.
		v : array_like
		    Values to place in `a` at target indices. If `v` is shorter than
		    `ind` it will be repeated as necessary.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    'clip' mode means that all indices that are too large are replaced
		    by the index that addresses the last element along that axis. Note
		    that this disables indexing with negative numbers. In 'raise' mode,
		    if an exception occurs the target array may still be modified.
		
		See Also
		--------
		putmask, place
		put_along_axis : Put elements by matching the array and the index arrays
		
		Examples
		--------
		>>> a = np.arange(5)
		>>> np.put(a, [0, 2], [-44, -55])
		>>> a
		array([-44,   1, -55,   3,   4])
		
		>>> a = np.arange(5)
		>>> np.put(a, 22, -5, mode='clip')
		>>> a
		array([ 0,  1,  2,  3, -5])
	**/
	static public function put(a:Dynamic, ind:Dynamic, v:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Put values into the destination array by matching 1d index and data slices.
		
		This iterates over matching 1d slices oriented along the specified axis in
		the index and data arrays, and uses the former to place values into the
		latter. These slices can be different lengths.
		
		Functions returning an index along an axis, like `argsort` and
		`argpartition`, produce suitable indices for this function.
		
		.. versionadded:: 1.15.0
		
		Parameters
		----------
		arr : ndarray (Ni..., M, Nk...)
		    Destination array.
		indices : ndarray (Ni..., J, Nk...)
		    Indices to change along each 1d slice of `arr`. This must match the
		    dimension of arr, but dimensions in Ni and Nj may be 1 to broadcast
		    against `arr`.
		values : array_like (Ni..., J, Nk...)
		    values to insert at those indices. Its shape and dimension are
		    broadcast to match that of `indices`.
		axis : int
		    The axis to take 1d slices along. If axis is None, the destination
		    array is treated as if a flattened 1d view had been created of it.
		
		Notes
		-----
		This is equivalent to (but faster than) the following use of `ndindex` and
		`s_`, which sets each of ``ii`` and ``kk`` to a tuple of indices::
		
		    Ni, M, Nk = a.shape[:axis], a.shape[axis], a.shape[axis+1:]
		    J = indices.shape[axis]  # Need not equal M
		
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nk):
		            a_1d       = a      [ii + s_[:,] + kk]
		            indices_1d = indices[ii + s_[:,] + kk]
		            values_1d  = values [ii + s_[:,] + kk]
		            for j in range(J):
		                a_1d[indices_1d[j]] = values_1d[j]
		
		Equivalently, eliminating the inner loop, the last two lines would be::
		
		            a_1d[indices_1d] = values_1d
		
		See Also
		--------
		take_along_axis :
		    Take values from the input array by matching 1d index and data slices
		
		Examples
		--------
		
		For this sample array
		
		>>> a = np.array([[10, 30, 20], [60, 40, 50]])
		
		We can replace the maximum values with:
		
		>>> ai = np.expand_dims(np.argmax(a, axis=1), axis=1)
		>>> ai
		array([[1],
		       [0]])
		>>> np.put_along_axis(a, ai, 99, axis=1)
		>>> a
		array([[10, 99, 20],
		       [99, 40, 50]])
	**/
	static public function put_along_axis(arr:Dynamic, indices:Dynamic, values:Dynamic, axis:Dynamic):Dynamic;
	/**
		putmask(a, mask, values)
		
		Changes elements of an array based on conditional and input values.
		
		Sets ``a.flat[n] = values[n]`` for each n where ``mask.flat[n]==True``.
		
		If `values` is not the same size as `a` and `mask` then it will repeat.
		This gives behavior different from ``a[mask] = values``.
		
		Parameters
		----------
		a : ndarray
		    Target array.
		mask : array_like
		    Boolean mask array. It has to be the same shape as `a`.
		values : array_like
		    Values to put into `a` where `mask` is True. If `values` is smaller
		    than `a` it will be repeated.
		
		See Also
		--------
		place, put, take, copyto
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2, 3)
		>>> np.putmask(x, x>2, x**2)
		>>> x
		array([[ 0,  1,  2],
		       [ 9, 16, 25]])
		
		If `values` is smaller than `a` it is repeated:
		
		>>> x = np.arange(5)
		>>> np.putmask(x, x>1, [-33, -44])
		>>> x
		array([  0,   1, -33, -44, -33])
	**/
	static public function putmask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the q-th quantile of the data along the specified axis.
		
		.. versionadded:: 1.15.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		q : array_like of float
		    Quantile or sequence of quantiles to compute, which must be between
		    0 and 1 inclusive.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the quantiles are computed. The default is
		    to compute the quantile(s) along a flattened version of the array.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape and buffer length as the expected output, but the
		    type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow the input array `a` to be modified by
		    intermediate calculations, to save memory. In this case, the
		    contents of the input `a` after this function completes is
		    undefined.
		method : str, optional
		    This parameter specifies the method to use for estimating the
		    quantile.  There are many different methods, some unique to NumPy.
		    See the notes for explanation.  The options sorted by their R type
		    as summarized in the H&F paper [1]_ are:
		
		    1. 'inverted_cdf'
		    2. 'averaged_inverted_cdf'
		    3. 'closest_observation'
		    4. 'interpolated_inverted_cdf'
		    5. 'hazen'
		    6. 'weibull'
		    7. 'linear'  (default)
		    8. 'median_unbiased'
		    9. 'normal_unbiased'
		
		    The first three methods are discontiuous.  NumPy further defines the
		    following discontinuous variations of the default 'linear' (7.) option:
		
		    * 'lower'
		    * 'higher',
		    * 'midpoint'
		    * 'nearest'
		
		    .. versionchanged:: 1.22.0
		        This argument was previously called "interpolation" and only
		        offered the "linear" default and last four options.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the
		    result will broadcast correctly against the original array `a`.
		
		interpolation : str, optional
		    Deprecated name for the method keyword argument.
		
		    .. deprecated:: 1.22.0
		
		Returns
		-------
		quantile : scalar or ndarray
		    If `q` is a single quantile and `axis=None`, then the result
		    is a scalar. If multiple quantiles are given, first axis of
		    the result corresponds to the quantiles. The other axes are
		    the axes that remain after the reduction of `a`. If the input
		    contains integers or floats smaller than ``float64``, the output
		    data-type is ``float64``. Otherwise, the output data-type is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean
		percentile : equivalent to quantile, but with q in the range [0, 100].
		median : equivalent to ``quantile(..., 0.5)``
		nanquantile
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the q-th quantile of ``V`` is the
		value ``q`` of the way from the minimum to the maximum in a sorted copy of
		``V``. The values and distances of the two nearest neighbors as well as the
		`method` parameter will determine the quantile if the normalized
		ranking does not match the location of ``q`` exactly. This function is the
		same as the median if ``q=0.5``, the same as the minimum if ``q=0.0`` and
		the same as the maximum if ``q=1.0``.
		
		This optional `method` parameter specifies the method to use when the
		desired quantile lies between two data points ``i < j``.
		If ``g`` is the fractional part of the index surrounded by ``i`` and
		alpha and beta are correction constants modifying i and j.
		
		.. math::
		    i + g = (q - alpha) / ( n - alpha - beta + 1 )
		
		The different methods then work as follows
		
		inverted_cdf:
		    method 1 of H&F [1]_.
		    This method gives discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then take i
		
		averaged_inverted_cdf:
		    method 2 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then average between bounds
		
		closest_observation:
		    method 3 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 and index is odd ; then take j
		    * if g = 0 and index is even ; then take i
		
		interpolated_inverted_cdf:
		    method 4 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 1
		
		hazen:
		    method 5 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1/2
		    * beta = 1/2
		
		weibull:
		    method 6 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 0
		
		linear:
		    method 7 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1
		    * beta = 1
		
		median_unbiased:
		    method 8 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is unknown (see reference).
		    This method give continuous results using:
		    * alpha = 1/3
		    * beta = 1/3
		
		normal_unbiased:
		    method 9 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is known to be normal.
		    This method give continuous results using:
		    * alpha = 3/8
		    * beta = 3/8
		
		lower:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` as the interpolation point.
		
		higher:
		    NumPy method kept for backwards compatibility.
		    Takes ``j`` as the interpolation point.
		
		nearest:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` or ``j``, whichever is nearest.
		
		midpoint:
		    NumPy method kept for backwards compatibility.
		    Uses ``(i + j) / 2``.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.quantile(a, 0.5)
		3.5
		>>> np.quantile(a, 0.5, axis=0)
		array([6.5, 4.5, 2.5])
		>>> np.quantile(a, 0.5, axis=1)
		array([7.,  2.])
		>>> np.quantile(a, 0.5, axis=1, keepdims=True)
		array([[7.],
		       [2.]])
		>>> m = np.quantile(a, 0.5, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.quantile(a, 0.5, axis=0, out=out)
		array([6.5, 4.5, 2.5])
		>>> m
		array([6.5, 4.5, 2.5])
		>>> b = a.copy()
		>>> np.quantile(b, 0.5, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a == b)
		
		See also `numpy.percentile` for a visualization of most methods.
		
		References
		----------
		.. [1] R. J. Hyndman and Y. Fan,
		   "Sample quantiles in statistical packages,"
		   The American Statistician, 50(4), pp. 361-365, 1996
	**/
	static public function quantile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	static public var r_ : Dynamic;
	/**
		rad2deg(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Convert angles from radians to degrees.
		
		Parameters
		----------
		x : array_like
		    Angle in radians.
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
		    The corresponding angle in degrees.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		deg2rad : Convert angles from degrees to radians.
		unwrap : Remove large jumps in angle by wrapping.
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		rad2deg(x) is ``180 * x / pi``.
		
		Examples
		--------
		>>> np.rad2deg(np.pi/2)
		90.0
	**/
	static public function rad2deg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		radians(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Convert angles from degrees to radians.
		
		Parameters
		----------
		x : array_like
		    Input array in degrees.
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
		    The corresponding radian values.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		deg2rad : equivalent function
		
		Examples
		--------
		Convert a degree array to radians
		
		>>> deg = np.arange(12.) * 30.
		>>> np.radians(deg)
		array([ 0.        ,  0.52359878,  1.04719755,  1.57079633,  2.0943951 ,
		        2.61799388,  3.14159265,  3.66519143,  4.1887902 ,  4.71238898,
		        5.23598776,  5.75958653])
		
		>>> out = np.zeros((deg.shape))
		>>> ret = np.radians(deg, out)
		>>> ret is out
		True
	**/
	static public function radians(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a matrix of random values with given shape.
		
		Create a matrix of the given shape and propagate it with
		random samples from a uniform distribution over ``[0, 1)``.
		
		Parameters
		----------
		\*args : Arguments
		    Shape of the output.
		    If given as N integers, each integer specifies the size of one
		    dimension.
		    If given as a tuple, this tuple gives the complete shape.
		
		Returns
		-------
		out : ndarray
		    The matrix of random values with shape given by `\*args`.
		
		See Also
		--------
		randn, numpy.random.RandomState.rand
		
		Examples
		--------
		>>> np.random.seed(123)
		>>> import numpy.matlib
		>>> np.matlib.rand(2, 3)
		matrix([[0.69646919, 0.28613933, 0.22685145],
		        [0.55131477, 0.71946897, 0.42310646]])
		>>> np.matlib.rand((2, 3))
		matrix([[0.9807642 , 0.68482974, 0.4809319 ],
		        [0.39211752, 0.34317802, 0.72904971]])
		
		If the first argument is a tuple, other arguments are ignored:
		
		>>> np.matlib.rand((2, 3), 4)
		matrix([[0.43857224, 0.0596779 , 0.39804426],
		        [0.73799541, 0.18249173, 0.17545176]])
	**/
	static public function rand(?args:python.VarArgs<Dynamic>):numpy.Ndarray;
	/**
		Return a random matrix with data from the "standard normal" distribution.
		
		`randn` generates a matrix filled with random floats sampled from a
		univariate "normal" (Gaussian) distribution of mean 0 and variance 1.
		
		Parameters
		----------
		\*args : Arguments
		    Shape of the output.
		    If given as N integers, each integer specifies the size of one
		    dimension. If given as a tuple, this tuple gives the complete shape.
		
		Returns
		-------
		Z : matrix of floats
		    A matrix of floating-point samples drawn from the standard normal
		    distribution.
		
		See Also
		--------
		rand, numpy.random.RandomState.randn
		
		Notes
		-----
		For random samples from :math:`N(\mu, \sigma^2)`, use:
		
		``sigma * np.matlib.randn(...) + mu``
		
		Examples
		--------
		>>> np.random.seed(123)
		>>> import numpy.matlib
		>>> np.matlib.randn(1)
		matrix([[-1.0856306]])
		>>> np.matlib.randn(1, 2, 3)
		matrix([[ 0.99734545,  0.2829785 , -1.50629471],
		        [-0.57860025,  1.65143654, -2.42667924]])
		
		Two-by-four matrix of samples from :math:`N(3, 6.25)`:
		
		>>> 2.5 * np.matlib.randn((2, 4)) + 3
		matrix([[1.92771843, 6.16484065, 0.83314899, 1.30278462],
		        [2.76322758, 6.72847407, 1.40274501, 1.8900451 ]])
	**/
	static public function randn(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a contiguous flattened array.
		
		A 1-D array, containing the elements of the input, is returned.  A copy is
		made only if needed.
		
		As of NumPy 1.10, the returned array will have the same type as the input
		array. (for example, a masked array will be returned for a masked array
		input)
		
		Parameters
		----------
		a : array_like
		    Input array.  The elements in `a` are read in the order specified by
		    `order`, and packed as a 1-D array.
		order : {'C','F', 'A', 'K'}, optional
		
		    The elements of `a` are read using this index order. 'C' means
		    to index the elements in row-major, C-style order,
		    with the last axis index changing fastest, back to the first
		    axis index changing slowest.  'F' means to index the elements
		    in column-major, Fortran-style order, with the
		    first index changing fastest, and the last index changing
		    slowest. Note that the 'C' and 'F' options take no account of
		    the memory layout of the underlying array, and only refer to
		    the order of axis indexing.  'A' means to read the elements in
		    Fortran-like index order if `a` is Fortran *contiguous* in
		    memory, C-like order otherwise.  'K' means to read the
		    elements in the order they occur in memory, except for
		    reversing the data when strides are negative.  By default, 'C'
		    index order is used.
		
		Returns
		-------
		y : array_like
		    y is an array of the same subtype as `a`, with shape ``(a.size,)``.
		    Note that matrices are special cased for backward compatibility, if `a`
		    is a matrix, then y is a 1-D ndarray.
		
		See Also
		--------
		ndarray.flat : 1-D iterator over an array.
		ndarray.flatten : 1-D array copy of the elements of an array
		                  in row-major order.
		ndarray.reshape : Change the shape of an array without changing its data.
		
		Notes
		-----
		In row-major, C-style order, in two dimensions, the row index
		varies the slowest, and the column index the quickest.  This can
		be generalized to multiple dimensions, where row-major order
		implies that the index along the first axis varies slowest, and
		the index along the last quickest.  The opposite holds for
		column-major, Fortran-style index ordering.
		
		When a view is desired in as many cases as possible, ``arr.reshape(-1)``
		may be preferable.
		
		Examples
		--------
		It is equivalent to ``reshape(-1, order=order)``.
		
		>>> x = np.array([[1, 2, 3], [4, 5, 6]])
		>>> np.ravel(x)
		array([1, 2, 3, 4, 5, 6])
		
		>>> x.reshape(-1)
		array([1, 2, 3, 4, 5, 6])
		
		>>> np.ravel(x, order='F')
		array([1, 4, 2, 5, 3, 6])
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> np.ravel(x.T)
		array([1, 4, 2, 5, 3, 6])
		>>> np.ravel(x.T, order='A')
		array([1, 2, 3, 4, 5, 6])
		
		When ``order`` is 'K', it will preserve orderings that are neither 'C'
		nor 'F', but won't reverse axes:
		
		>>> a = np.arange(3)[::-1]; a
		array([2, 1, 0])
		>>> a.ravel(order='C')
		array([2, 1, 0])
		>>> a.ravel(order='K')
		array([2, 1, 0])
		
		>>> a = np.arange(12).reshape(2,3,2).swapaxes(1,2); a
		array([[[ 0,  2,  4],
		        [ 1,  3,  5]],
		       [[ 6,  8, 10],
		        [ 7,  9, 11]]])
		>>> a.ravel(order='C')
		array([ 0,  2,  4,  1,  3,  5,  6,  8, 10,  7,  9, 11])
		>>> a.ravel(order='K')
		array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11])
	**/
	static public function ravel(a:Dynamic, ?order:Dynamic):python.NativeIterable<Dynamic>;
	/**
		ravel_multi_index(multi_index, dims, mode='raise', order='C')
		
		Converts a tuple of index arrays into an array of flat
		indices, applying boundary modes to the multi-index.
		
		Parameters
		----------
		multi_index : tuple of array_like
		    A tuple of integer arrays, one array for each dimension.
		dims : tuple of ints
		    The shape of array into which the indices from ``multi_index`` apply.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices are handled.  Can specify
		    either one mode or a tuple of modes, one mode per index.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    In 'clip' mode, a negative index which would normally
		    wrap will clip to 0 instead.
		order : {'C', 'F'}, optional
		    Determines whether the multi-index should be viewed as
		    indexing in row-major (C-style) or column-major
		    (Fortran-style) order.
		
		Returns
		-------
		raveled_indices : ndarray
		    An array of indices into the flattened version of an array
		    of dimensions ``dims``.
		
		See Also
		--------
		unravel_index
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		Examples
		--------
		>>> arr = np.array([[3,6,6],[4,5,1]])
		>>> np.ravel_multi_index(arr, (7,6))
		array([22, 41, 37])
		>>> np.ravel_multi_index(arr, (7,6), order='F')
		array([31, 41, 13])
		>>> np.ravel_multi_index(arr, (4,6), mode='clip')
		array([22, 23, 19])
		>>> np.ravel_multi_index(arr, (4,4), mode=('clip','wrap'))
		array([12, 13, 13])
		
		>>> np.ravel_multi_index((3,1,4,1), (6,7,8,9))
		1621
	**/
	static public function ravel_multi_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the real part of the complex argument.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    The real component of the complex argument. If `val` is real, the type
		    of `val` is used for the output.  If `val` has complex elements, the
		    returned type is float.
		
		See Also
		--------
		real_if_close, imag, angle
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.real
		array([1.,  3.,  5.])
		>>> a.real = 9
		>>> a
		array([9.+2.j,  9.+4.j,  9.+6.j])
		>>> a.real = np.array([9, 8, 7])
		>>> a
		array([9.+2.j,  8.+4.j,  7.+6.j])
		>>> np.real(1 + 1j)
		1.0
	**/
	static public function real(val:Dynamic):Dynamic;
	/**
		If input is complex with all imaginary parts close to zero, return 
		real parts.
		
		"Close to zero" is defined as `tol` * (machine epsilon of the type for
		`a`).
		
		Parameters
		----------
		a : array_like
		    Input array.
		tol : float
		    Tolerance in machine epsilons for the complex part of the elements
		    in the array.
		
		Returns
		-------
		out : ndarray
		    If `a` is real, the type of `a` is used for the output.  If `a`
		    has complex elements, the returned type is float.
		
		See Also
		--------
		real, imag, angle
		
		Notes
		-----
		Machine epsilon varies from machine to machine and between data types
		but Python floats on most platforms have a machine epsilon equal to
		2.2204460492503131e-16.  You can use 'np.finfo(float).eps' to print
		out the machine epsilon for floats.
		
		Examples
		--------
		>>> np.finfo(float).eps
		2.2204460492503131e-16 # may vary
		
		>>> np.real_if_close([2.1 + 4e-14j, 5.2 + 3e-15j], tol=1000)
		array([2.1, 5.2])
		>>> np.real_if_close([2.1 + 4e-13j, 5.2 + 3e-15j], tol=1000)
		array([2.1+4.e-13j, 5.2 + 3e-15j])
	**/
	static public function real_if_close(a:Dynamic, ?tol:Dynamic):numpy.Ndarray;
	/**
		Load ASCII data stored in a comma-separated file.
		
		The returned array is a record array (if ``usemask=False``, see
		`recarray`) or a masked record array (if ``usemask=True``,
		see `ma.mrecords.MaskedRecords`).
		
		Parameters
		----------
		fname, kwargs : For a description of input parameters, see `genfromtxt`.
		
		See Also
		--------
		numpy.genfromtxt : generic function to load ASCII data.
		
		Notes
		-----
		By default, `dtype` is None, which means that the data-type of the output
		array will be determined from the data.
	**/
	static public function recfromcsv(fname:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load ASCII data from a file and return it in a record array.
		
		If ``usemask=False`` a standard `recarray` is returned,
		if ``usemask=True`` a MaskedRecords array is returned.
		
		Parameters
		----------
		fname, kwargs : For a description of input parameters, see `genfromtxt`.
		
		See Also
		--------
		numpy.genfromtxt : generic function
		
		Notes
		-----
		By default, `dtype` is None, which means that the data-type of the output
		array will be determined from the data.
	**/
	static public function recfromtxt(fname:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		reciprocal(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the reciprocal of the argument, element-wise.
		
		Calculates ``1/x``.
		
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
		    Return array.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		.. note::
		    This function is not designed to work with integers.
		
		For integer arguments with absolute value larger than 1 the result is
		always zero because of the way Python handles integer division.  For
		integer zero the result is an overflow.
		
		Examples
		--------
		>>> np.reciprocal(2.)
		0.5
		>>> np.reciprocal([1, 2., 3.33])
		array([ 1.       ,  0.5      ,  0.3003003])
	**/
	static public function reciprocal(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function remainder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Repeat elements of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		repeats : int or array of ints
		    The number of repetitions for each element.  `repeats` is broadcasted
		    to fit the shape of the given axis.
		axis : int, optional
		    The axis along which to repeat values.  By default, use the
		    flattened input array, and return a flat output array.
		
		Returns
		-------
		repeated_array : ndarray
		    Output array which has the same shape as `a`, except along
		    the given axis.
		
		See Also
		--------
		tile : Tile an array.
		unique : Find the unique elements of an array.
		
		Examples
		--------
		>>> np.repeat(3, 4)
		array([3, 3, 3, 3])
		>>> x = np.array([[1,2],[3,4]])
		>>> np.repeat(x, 2)
		array([1, 1, 2, 2, 3, 3, 4, 4])
		>>> np.repeat(x, 3, axis=1)
		array([[1, 1, 1, 2, 2, 2],
		       [3, 3, 3, 4, 4, 4]])
		>>> np.repeat(x, [1, 2], axis=0)
		array([[1, 2],
		       [3, 4],
		       [3, 4]])
	**/
	static public function repeat(a:Dynamic, repeats:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Repeat a 0-D to 2-D array or matrix MxN times.
		
		Parameters
		----------
		a : array_like
		    The array or matrix to be repeated.
		m, n : int
		    The number of times `a` is repeated along the first and second axes.
		
		Returns
		-------
		out : ndarray
		    The result of repeating `a`.
		
		Examples
		--------
		>>> import numpy.matlib
		>>> a0 = np.array(1)
		>>> np.matlib.repmat(a0, 2, 3)
		array([[1, 1, 1],
		       [1, 1, 1]])
		
		>>> a1 = np.arange(4)
		>>> np.matlib.repmat(a1, 2, 2)
		array([[0, 1, 2, 3, 0, 1, 2, 3],
		       [0, 1, 2, 3, 0, 1, 2, 3]])
		
		>>> a2 = np.asmatrix(np.arange(6).reshape(2, 3))
		>>> np.matlib.repmat(a2, 2, 3)
		matrix([[0, 1, 2, 0, 1, 2, 0, 1, 2],
		        [3, 4, 5, 3, 4, 5, 3, 4, 5],
		        [0, 1, 2, 0, 1, 2, 0, 1, 2],
		        [3, 4, 5, 3, 4, 5, 3, 4, 5]])
	**/
	static public function repmat(a:Dynamic, m:Dynamic, n:Dynamic):numpy.Ndarray;
	/**
		Return an ndarray of the provided type that satisfies requirements.
		
		This function is useful to be sure that an array with the correct flags
		is returned for passing to compiled code (perhaps through ctypes).
		
		Parameters
		----------
		a : array_like
		   The object to be converted to a type-and-requirement-satisfying array.
		dtype : data-type
		   The required data-type. If None preserve the current dtype. If your
		   application requires the data to be in native byteorder, include
		   a byteorder specification as a part of the dtype specification.
		requirements : str or list of str
		   The requirements list can be any of the following
		
		   * 'F_CONTIGUOUS' ('F') - ensure a Fortran-contiguous array
		   * 'C_CONTIGUOUS' ('C') - ensure a C-contiguous array
		   * 'ALIGNED' ('A')      - ensure a data-type aligned array
		   * 'WRITEABLE' ('W')    - ensure a writable array
		   * 'OWNDATA' ('O')      - ensure an array that owns its own data
		   * 'ENSUREARRAY', ('E') - ensure a base array, instead of a subclass
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
		    Array with specified requirements and type if given.
		
		See Also
		--------
		asarray : Convert input to an ndarray.
		asanyarray : Convert to an ndarray, but pass through ndarray subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		ndarray.flags : Information about the memory layout of the array.
		
		Notes
		-----
		The returned array will be guaranteed to have the listed requirements
		by making a copy if needed.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2,3)
		>>> x.flags
		  C_CONTIGUOUS : True
		  F_CONTIGUOUS : False
		  OWNDATA : False
		  WRITEABLE : True
		  ALIGNED : True
		  WRITEBACKIFCOPY : False
		  UPDATEIFCOPY : False
		
		>>> y = np.require(x, dtype=np.float32, requirements=['A', 'O', 'W', 'F'])
		>>> y.flags
		  C_CONTIGUOUS : False
		  F_CONTIGUOUS : True
		  OWNDATA : True
		  WRITEABLE : True
		  ALIGNED : True
		  WRITEBACKIFCOPY : False
		  UPDATEIFCOPY : False
	**/
	static public function require(a:Dynamic, ?dtype:Dynamic, ?requirements:Dynamic, ?like:Dynamic):numpy.Ndarray;
	/**
		Gives a new shape to an array without changing its data.
		
		Parameters
		----------
		a : array_like
		    Array to be reshaped.
		newshape : int or tuple of ints
		    The new shape should be compatible with the original shape. If
		    an integer, then the result will be a 1-D array of that length.
		    One shape dimension can be -1. In this case, the value is
		    inferred from the length of the array and remaining dimensions.
		order : {'C', 'F', 'A'}, optional
		    Read the elements of `a` using this index order, and place the
		    elements into the reshaped array using this index order.  'C'
		    means to read / write the elements using C-like index order,
		    with the last axis index changing fastest, back to the first
		    axis index changing slowest. 'F' means to read / write the
		    elements using Fortran-like index order, with the first index
		    changing fastest, and the last index changing slowest. Note that
		    the 'C' and 'F' options take no account of the memory layout of
		    the underlying array, and only refer to the order of indexing.
		    'A' means to read / write the elements in Fortran-like index
		    order if `a` is Fortran *contiguous* in memory, C-like order
		    otherwise.
		
		Returns
		-------
		reshaped_array : ndarray
		    This will be a new view object if possible; otherwise, it will
		    be a copy.  Note there is no guarantee of the *memory layout* (C- or
		    Fortran- contiguous) of the returned array.
		
		See Also
		--------
		ndarray.reshape : Equivalent method.
		
		Notes
		-----
		It is not always possible to change the shape of an array without
		copying the data. If you want an error to be raised when the data is copied,
		you should assign the new shape to the shape attribute of the array::
		
		 >>> a = np.zeros((10, 2))
		
		 # A transpose makes the array non-contiguous
		 >>> b = a.T
		
		 # Taking a view makes it possible to modify the shape without modifying
		 # the initial object.
		 >>> c = b.view()
		 >>> c.shape = (20)
		 Traceback (most recent call last):
		    ...
		 AttributeError: Incompatible shape for in-place modification. Use
		 `.reshape()` to make a copy with the desired shape.
		
		The `order` keyword gives the index ordering both for *fetching* the values
		from `a`, and then *placing* the values into the output array.
		For example, let's say you have an array:
		
		>>> a = np.arange(6).reshape((3, 2))
		>>> a
		array([[0, 1],
		       [2, 3],
		       [4, 5]])
		
		You can think of reshaping as first raveling the array (using the given
		index order), then inserting the elements from the raveled array into the
		new array using the same kind of index ordering as was used for the
		raveling.
		
		>>> np.reshape(a, (2, 3)) # C-like index ordering
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.reshape(np.ravel(a), (2, 3)) # equivalent to C ravel then C reshape
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.reshape(a, (2, 3), order='F') # Fortran-like index ordering
		array([[0, 4, 3],
		       [2, 1, 5]])
		>>> np.reshape(np.ravel(a, order='F'), (2, 3), order='F')
		array([[0, 4, 3],
		       [2, 1, 5]])
		
		Examples
		--------
		>>> a = np.array([[1,2,3], [4,5,6]])
		>>> np.reshape(a, 6)
		array([1, 2, 3, 4, 5, 6])
		>>> np.reshape(a, 6, order='F')
		array([1, 4, 2, 5, 3, 6])
		
		>>> np.reshape(a, (3,-1))       # the unspecified value is inferred to be 2
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
	**/
	static public function reshape(a:Dynamic, newshape:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Return a new array with the specified shape.
		
		If the new array is larger than the original array, then the new
		array is filled with repeated copies of `a`.  Note that this behavior
		is different from a.resize(new_shape) which fills with zeros instead
		of repeated copies of `a`.
		
		Parameters
		----------
		a : array_like
		    Array to be resized.
		
		new_shape : int or tuple of int
		    Shape of resized array.
		
		Returns
		-------
		reshaped_array : ndarray
		    The new array is formed from the data in the old array, repeated
		    if necessary to fill out the required number of elements.  The
		    data are repeated iterating over the array in C-order.
		
		See Also
		--------
		numpy.reshape : Reshape an array without changing the total size.
		numpy.pad : Enlarge and pad an array.
		numpy.repeat : Repeat elements of an array.
		ndarray.resize : resize an array in-place.
		
		Notes
		-----
		When the total size of the array does not change `~numpy.reshape` should
		be used.  In most other cases either indexing (to reduce the size)
		or padding (to increase the size) may be a more appropriate solution.
		
		Warning: This functionality does **not** consider axes separately,
		i.e. it does not apply interpolation/extrapolation.
		It fills the return array with the required number of elements, iterating
		over `a` in C-order, disregarding axes (and cycling back from the start if
		the new shape is larger).  This functionality is therefore not suitable to
		resize images, or data where each axis represents a separate and distinct
		entity.
		
		Examples
		--------
		>>> a=np.array([[0,1],[2,3]])
		>>> np.resize(a,(2,3))
		array([[0, 1, 2],
		       [3, 0, 1]])
		>>> np.resize(a,(1,4))
		array([[0, 1, 2, 3]])
		>>> np.resize(a,(2,4))
		array([[0, 1, 2, 3],
		       [0, 1, 2, 3]])
	**/
	static public function resize(a:Dynamic, new_shape:Dynamic):numpy.Ndarray;
	/**
		result_type(*arrays_and_dtypes)
		
		Returns the type that results from applying the NumPy
		type promotion rules to the arguments.
		
		Type promotion in NumPy works similarly to the rules in languages
		like C++, with some slight differences.  When both scalars and
		arrays are used, the array's type takes precedence and the actual value
		of the scalar is taken into account.
		
		For example, calculating 3*a, where a is an array of 32-bit floats,
		intuitively should result in a 32-bit float output.  If the 3 is a
		32-bit integer, the NumPy rules indicate it can't convert losslessly
		into a 32-bit float, so a 64-bit float should be the result type.
		By examining the value of the constant, '3', we see that it fits in
		an 8-bit integer, which can be cast losslessly into the 32-bit float.
		
		Parameters
		----------
		arrays_and_dtypes : list of arrays and dtypes
		    The operands of some operation whose result type is needed.
		
		Returns
		-------
		out : dtype
		    The result type.
		
		See also
		--------
		dtype, promote_types, min_scalar_type, can_cast
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The specific algorithm used is as follows.
		
		Categories are determined by first checking which of boolean,
		integer (int/uint), or floating point (float/complex) the maximum
		kind of all the arrays and the scalars are.
		
		If there are only scalars or the maximum category of the scalars
		is higher than the maximum category of the arrays,
		the data types are combined with :func:`promote_types`
		to produce the return value.
		
		Otherwise, `min_scalar_type` is called on each array, and
		the resulting data types are all combined with :func:`promote_types`
		to produce the return value.
		
		The set of int values is not a subset of the uint values for types
		with the same number of bits, something not reflected in
		:func:`min_scalar_type`, but handled as a special case in `result_type`.
		
		Examples
		--------
		>>> np.result_type(3, np.arange(7, dtype='i1'))
		dtype('int8')
		
		>>> np.result_type('i4', 'c8')
		dtype('complex128')
		
		>>> np.result_type(3.0, -2)
		dtype('float64')
	**/
	static public function result_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		right_shift(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Shift the bits of an integer to the right.
		
		Bits are shifted to the right `x2`.  Because the internal
		representation of numbers is in binary format, this operation is
		equivalent to dividing `x1` by ``2**x2``.
		
		Parameters
		----------
		x1 : array_like, int
		    Input values.
		x2 : array_like, int
		    Number of bits to remove at the right of `x1`.
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
		out : ndarray, int
		    Return `x1` with bits shifted `x2` times to the right.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		left_shift : Shift the bits of an integer to the left.
		binary_repr : Return the binary representation of the input number
		    as a string.
		
		Examples
		--------
		>>> np.binary_repr(10)
		'1010'
		>>> np.right_shift(10, 1)
		5
		>>> np.binary_repr(5)
		'101'
		
		>>> np.right_shift(10, [1,2,3])
		array([5, 2, 1])
		
		The ``>>`` operator can be used as a shorthand for ``np.right_shift`` on
		ndarrays.
		
		>>> x1 = 10
		>>> x2 = np.array([1,2,3])
		>>> x1 >> x2
		array([5, 2, 1])
	**/
	static public function right_shift(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rint(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Round elements of the array to the nearest integer.
		
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
		    Output array is same shape and type as `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		fix, ceil, floor, trunc
		
		Notes
		-----
		For values exactly halfway between rounded decimal values, NumPy
		rounds to the nearest even value. Thus 1.5 and 2.5 round to 2.0,
		-0.5 and 0.5 round to 0.0, etc.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.rint(a)
		array([-2., -2., -0.,  0.,  2.,  2.,  2.])
	**/
	static public function rint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Roll array elements along a given axis.
		
		Elements that roll beyond the last position are re-introduced at
		the first.
		
		Parameters
		----------
		a : array_like
		    Input array.
		shift : int or tuple of ints
		    The number of places by which elements are shifted.  If a tuple,
		    then `axis` must be a tuple of the same size, and each of the
		    given axes is shifted by the corresponding number.  If an int
		    while `axis` is a tuple of ints, then the same value is used for
		    all given axes.
		axis : int or tuple of ints, optional
		    Axis or axes along which elements are shifted.  By default, the
		    array is flattened before shifting, after which the original
		    shape is restored.
		
		Returns
		-------
		res : ndarray
		    Output array, with the same shape as `a`.
		
		See Also
		--------
		rollaxis : Roll the specified axis backwards, until it lies in a
		           given position.
		
		Notes
		-----
		.. versionadded:: 1.12.0
		
		Supports rolling over multiple dimensions simultaneously.
		
		Examples
		--------
		>>> x = np.arange(10)
		>>> np.roll(x, 2)
		array([8, 9, 0, 1, 2, 3, 4, 5, 6, 7])
		>>> np.roll(x, -2)
		array([2, 3, 4, 5, 6, 7, 8, 9, 0, 1])
		
		>>> x2 = np.reshape(x, (2, 5))
		>>> x2
		array([[0, 1, 2, 3, 4],
		       [5, 6, 7, 8, 9]])
		>>> np.roll(x2, 1)
		array([[9, 0, 1, 2, 3],
		       [4, 5, 6, 7, 8]])
		>>> np.roll(x2, -1)
		array([[1, 2, 3, 4, 5],
		       [6, 7, 8, 9, 0]])
		>>> np.roll(x2, 1, axis=0)
		array([[5, 6, 7, 8, 9],
		       [0, 1, 2, 3, 4]])
		>>> np.roll(x2, -1, axis=0)
		array([[5, 6, 7, 8, 9],
		       [0, 1, 2, 3, 4]])
		>>> np.roll(x2, 1, axis=1)
		array([[4, 0, 1, 2, 3],
		       [9, 5, 6, 7, 8]])
		>>> np.roll(x2, -1, axis=1)
		array([[1, 2, 3, 4, 0],
		       [6, 7, 8, 9, 5]])
		>>> np.roll(x2, (1, 1), axis=(1, 0))
		array([[9, 5, 6, 7, 8],
		       [4, 0, 1, 2, 3]])
		>>> np.roll(x2, (2, 1), axis=(1, 0))
		array([[8, 9, 5, 6, 7],
		       [3, 4, 0, 1, 2]])
	**/
	static public function roll(a:Dynamic, shift:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Roll the specified axis backwards, until it lies in a given position.
		
		This function continues to be supported for backward compatibility, but you
		should prefer `moveaxis`. The `moveaxis` function was added in NumPy
		1.11.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		axis : int
		    The axis to be rolled. The positions of the other axes do not
		    change relative to one another.
		start : int, optional
		    When ``start <= axis``, the axis is rolled back until it lies in
		    this position. When ``start > axis``, the axis is rolled until it
		    lies before this position. The default, 0, results in a "complete"
		    roll. The following table describes how negative values of ``start``
		    are interpreted:
		
		    .. table::
		       :align: left
		
		       +-------------------+----------------------+
		       |     ``start``     | Normalized ``start`` |
		       +===================+======================+
		       | ``-(arr.ndim+1)`` | raise ``AxisError``  |
		       +-------------------+----------------------+
		       | ``-arr.ndim``     | 0                    |
		       +-------------------+----------------------+
		       | |vdots|           | |vdots|              |
		       +-------------------+----------------------+
		       | ``-1``            | ``arr.ndim-1``       |
		       +-------------------+----------------------+
		       | ``0``             | ``0``                |
		       +-------------------+----------------------+
		       | |vdots|           | |vdots|              |
		       +-------------------+----------------------+
		       | ``arr.ndim``      | ``arr.ndim``         |
		       +-------------------+----------------------+
		       | ``arr.ndim + 1``  | raise ``AxisError``  |
		       +-------------------+----------------------+
		       
		    .. |vdots|   unicode:: U+22EE .. Vertical Ellipsis
		
		Returns
		-------
		res : ndarray
		    For NumPy >= 1.10.0 a view of `a` is always returned. For earlier
		    NumPy versions a view of `a` is returned only if the order of the
		    axes is changed, otherwise the input array is returned.
		
		See Also
		--------
		moveaxis : Move array axes to new positions.
		roll : Roll the elements of an array by a number of positions along a
		    given axis.
		
		Examples
		--------
		>>> a = np.ones((3,4,5,6))
		>>> np.rollaxis(a, 3, 1).shape
		(3, 6, 4, 5)
		>>> np.rollaxis(a, 2).shape
		(5, 3, 4, 6)
		>>> np.rollaxis(a, 1, 4).shape
		(3, 5, 6, 4)
	**/
	static public function rollaxis(a:Dynamic, axis:Dynamic, ?start:Dynamic):numpy.Ndarray;
	/**
		Return the roots of a polynomial with coefficients given in p.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		The values in the rank-1 array `p` are coefficients of a polynomial.
		If the length of `p` is n+1 then the polynomial is described by::
		
		  p[0] * x**n + p[1] * x**(n-1) + ... + p[n-1]*x + p[n]
		
		Parameters
		----------
		p : array_like
		    Rank-1 array of polynomial coefficients.
		
		Returns
		-------
		out : ndarray
		    An array containing the roots of the polynomial.
		
		Raises
		------
		ValueError
		    When `p` cannot be converted to a rank-1 array.
		
		See also
		--------
		poly : Find the coefficients of a polynomial with a given sequence
		       of roots.
		polyval : Compute polynomial values.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		The algorithm relies on computing the eigenvalues of the
		companion matrix [1]_.
		
		References
		----------
		.. [1] R. A. Horn & C. R. Johnson, *Matrix Analysis*.  Cambridge, UK:
		    Cambridge University Press, 1999, pp. 146-7.
		
		Examples
		--------
		>>> coeff = [3.2, 2, 1]
		>>> np.roots(coeff)
		array([-0.3125+0.46351241j, -0.3125-0.46351241j])
	**/
	static public function roots(p:Dynamic):numpy.Ndarray;
	/**
		Rotate an array by 90 degrees in the plane specified by axes.
		
		Rotation direction is from the first towards the second axis.
		
		Parameters
		----------
		m : array_like
		    Array of two or more dimensions.
		k : integer
		    Number of times the array is rotated by 90 degrees.
		axes: (2,) array_like
		    The array is rotated in the plane defined by the axes.
		    Axes must be different.
		
		    .. versionadded:: 1.12.0
		
		Returns
		-------
		y : ndarray
		    A rotated view of `m`.
		
		See Also
		--------
		flip : Reverse the order of elements in an array along the given axis.
		fliplr : Flip an array horizontally.
		flipud : Flip an array vertically.
		
		Notes
		-----
		``rot90(m, k=1, axes=(1,0))``  is the reverse of
		``rot90(m, k=1, axes=(0,1))``
		
		``rot90(m, k=1, axes=(1,0))`` is equivalent to
		``rot90(m, k=-1, axes=(0,1))``
		
		Examples
		--------
		>>> m = np.array([[1,2],[3,4]], int)
		>>> m
		array([[1, 2],
		       [3, 4]])
		>>> np.rot90(m)
		array([[2, 4],
		       [1, 3]])
		>>> np.rot90(m, 2)
		array([[4, 3],
		       [2, 1]])
		>>> m = np.arange(8).reshape((2,2,2))
		>>> np.rot90(m, 1, (1,2))
		array([[[1, 3],
		        [0, 2]],
		       [[5, 7],
		        [4, 6]]])
	**/
	static public function rot90(m:Dynamic, ?k:Dynamic, ?axes:Dynamic):numpy.Ndarray;
	/**
		Round an array to the given number of decimals.
		
		See Also
		--------
		around : equivalent function; see for details.
	**/
	static public function round_(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Stack arrays in sequence vertically (row wise).
		
		This is equivalent to concatenation along the first axis after 1-D arrays
		of shape `(N,)` have been reshaped to `(1,N)`. Rebuilds arrays divided by
		`vsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    The arrays must have the same shape along all but the first axis.
		    1-D arrays must have the same length.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays, will be at least 2-D.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		block : Assemble an nd-array from nested lists of blocks.
		hstack : Stack arrays in sequence horizontally (column wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		vsplit : Split an array into multiple sub-arrays vertically (row-wise).
		
		Examples
		--------
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([4, 5, 6])
		>>> np.vstack((a,b))
		array([[1, 2, 3],
		       [4, 5, 6]])
		
		>>> a = np.array([[1], [2], [3]])
		>>> b = np.array([[4], [5], [6]])
		>>> np.vstack((a,b))
		array([[1],
		       [2],
		       [3],
		       [4],
		       [5],
		       [6]])
	**/
	static public function row_stack(tup:Dynamic):numpy.Ndarray;
	static public var s_ : Dynamic;
	/**
		Protected string evaluation.
		
		Evaluate a string containing a Python literal expression without
		allowing the execution of arbitrary non-literal code.
		
		Parameters
		----------
		source : str
		    The string to evaluate.
		
		Returns
		-------
		obj : object
		   The result of evaluating `source`.
		
		Raises
		------
		SyntaxError
		    If the code has invalid Python syntax, or if it contains
		    non-literal code.
		
		Examples
		--------
		>>> np.safe_eval('1')
		1
		>>> np.safe_eval('[1, 2, 3]')
		[1, 2, 3]
		>>> np.safe_eval('{"foo": ("bar", 10.0)}')
		{'foo': ('bar', 10.0)}
		
		>>> np.safe_eval('import os')
		Traceback (most recent call last):
		  ...
		SyntaxError: invalid syntax
		
		>>> np.safe_eval('open("/home/user/.ssh/id_dsa").read()')
		Traceback (most recent call last):
		  ...
		ValueError: malformed node or string: <_ast.Call object at 0x...>
	**/
	static public function safe_eval(source:Dynamic):Dynamic;
	/**
		Save an array to a binary file in NumPy ``.npy`` format.
		
		Parameters
		----------
		file : file, str, or pathlib.Path
		    File or filename to which the data is saved.  If file is a file-object,
		    then the filename is unchanged.  If file is a string or Path, a ``.npy``
		    extension will be appended to the filename if it does not already
		    have one.
		arr : array_like
		    Array data to be saved.
		allow_pickle : bool, optional
		    Allow saving object arrays using Python pickles. Reasons for disallowing
		    pickles include security (loading pickled data can execute arbitrary
		    code) and portability (pickled objects may not be loadable on different
		    Python installations, for example if the stored objects require libraries
		    that are not available, and not all pickled data is compatible between
		    Python 2 and Python 3).
		    Default: True
		fix_imports : bool, optional
		    Only useful in forcing objects in object arrays on Python 3 to be
		    pickled in a Python 2 compatible way. If `fix_imports` is True, pickle
		    will try to map the new Python 3 names to the old module names used in
		    Python 2, so that the pickle data stream is readable with Python 2.
		
		See Also
		--------
		savez : Save several arrays into a ``.npz`` archive
		savetxt, load
		
		Notes
		-----
		For a description of the ``.npy`` format, see :py:mod:`numpy.lib.format`.
		
		Any data saved to the file is appended to the end of the file.
		
		Examples
		--------
		>>> from tempfile import TemporaryFile
		>>> outfile = TemporaryFile()
		
		>>> x = np.arange(10)
		>>> np.save(outfile, x)
		
		>>> _ = outfile.seek(0) # Only needed here to simulate closing & reopening file
		>>> np.load(outfile)
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		
		>>> with open('test.npy', 'wb') as f:
		...     np.save(f, np.array([1, 2]))
		...     np.save(f, np.array([1, 3]))
		>>> with open('test.npy', 'rb') as f:
		...     a = np.load(f)
		...     b = np.load(f)
		>>> print(a, b)
		# [1 2] [1 3]
	**/
	static public function save(file:Dynamic, arr:Dynamic, ?allow_pickle:Dynamic, ?fix_imports:Dynamic):Dynamic;
	/**
		Save an array to a text file.
		
		Parameters
		----------
		fname : filename or file handle
		    If the filename ends in ``.gz``, the file is automatically saved in
		    compressed gzip format.  `loadtxt` understands gzipped files
		    transparently.
		X : 1D or 2D array_like
		    Data to be saved to a text file.
		fmt : str or sequence of strs, optional
		    A single format (%10.5f), a sequence of formats, or a
		    multi-format string, e.g. 'Iteration %d -- %10.5f', in which
		    case `delimiter` is ignored. For complex `X`, the legal options
		    for `fmt` are:
		
		    * a single specifier, `fmt='%.4e'`, resulting in numbers formatted
		      like `' (%s+%sj)' % (fmt, fmt)`
		    * a full string specifying every real and imaginary part, e.g.
		      `' %.4e %+.4ej %.4e %+.4ej %.4e %+.4ej'` for 3 columns
		    * a list of specifiers, one per column - in this case, the real
		      and imaginary part must have separate specifiers,
		      e.g. `['%.3e + %.3ej', '(%.15e%+.15ej)']` for 2 columns
		delimiter : str, optional
		    String or character separating columns.
		newline : str, optional
		    String or character separating lines.
		
		    .. versionadded:: 1.5.0
		header : str, optional
		    String that will be written at the beginning of the file.
		
		    .. versionadded:: 1.7.0
		footer : str, optional
		    String that will be written at the end of the file.
		
		    .. versionadded:: 1.7.0
		comments : str, optional
		    String that will be prepended to the ``header`` and ``footer`` strings,
		    to mark them as comments. Default: '# ',  as expected by e.g.
		    ``numpy.loadtxt``.
		
		    .. versionadded:: 1.7.0
		encoding : {None, str}, optional
		    Encoding used to encode the outputfile. Does not apply to output
		    streams. If the encoding is something other than 'bytes' or 'latin1'
		    you will not be able to load the file in NumPy versions < 1.14. Default
		    is 'latin1'.
		
		    .. versionadded:: 1.14.0
		
		
		See Also
		--------
		save : Save an array to a binary file in NumPy ``.npy`` format
		savez : Save several arrays into an uncompressed ``.npz`` archive
		savez_compressed : Save several arrays into a compressed ``.npz`` archive
		
		Notes
		-----
		Further explanation of the `fmt` parameter
		(``%[flag]width[.precision]specifier``):
		
		flags:
		    ``-`` : left justify
		
		    ``+`` : Forces to precede result with + or -.
		
		    ``0`` : Left pad the number with zeros instead of space (see width).
		
		width:
		    Minimum number of characters to be printed. The value is not truncated
		    if it has more characters.
		
		precision:
		    - For integer specifiers (eg. ``d,i,o,x``), the minimum number of
		      digits.
		    - For ``e, E`` and ``f`` specifiers, the number of digits to print
		      after the decimal point.
		    - For ``g`` and ``G``, the maximum number of significant digits.
		    - For ``s``, the maximum number of characters.
		
		specifiers:
		    ``c`` : character
		
		    ``d`` or ``i`` : signed decimal integer
		
		    ``e`` or ``E`` : scientific notation with ``e`` or ``E``.
		
		    ``f`` : decimal floating point
		
		    ``g,G`` : use the shorter of ``e,E`` or ``f``
		
		    ``o`` : signed octal
		
		    ``s`` : string of characters
		
		    ``u`` : unsigned decimal integer
		
		    ``x,X`` : unsigned hexadecimal integer
		
		This explanation of ``fmt`` is not complete, for an exhaustive
		specification see [1]_.
		
		References
		----------
		.. [1] `Format Specification Mini-Language
		       <https://docs.python.org/library/string.html#format-specification-mini-language>`_,
		       Python Documentation.
		
		Examples
		--------
		>>> x = y = z = np.arange(0.0,5.0,1.0)
		>>> np.savetxt('test.out', x, delimiter=',')   # X is an array
		>>> np.savetxt('test.out', (x,y,z))   # x,y,z equal sized 1D arrays
		>>> np.savetxt('test.out', x, fmt='%1.4e')   # use exponential notation
	**/
	static public function savetxt(fname:Dynamic, X:Dynamic, ?fmt:Dynamic, ?delimiter:Dynamic, ?newline:Dynamic, ?header:Dynamic, ?footer:Dynamic, ?comments:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Save several arrays into a single file in uncompressed ``.npz`` format.
		
		Provide arrays as keyword arguments to store them under the
		corresponding name in the output file: ``savez(fn, x=x, y=y)``.
		
		If arrays are specified as positional arguments, i.e., ``savez(fn,
		x, y)``, their names will be `arr_0`, `arr_1`, etc.
		
		Parameters
		----------
		file : str or file
		    Either the filename (string) or an open file (file-like object)
		    where the data will be saved. If file is a string or a Path, the
		    ``.npz`` extension will be appended to the filename if it is not
		    already there.
		args : Arguments, optional
		    Arrays to save to the file. Please use keyword arguments (see
		    `kwds` below) to assign names to arrays.  Arrays specified as
		    args will be named "arr_0", "arr_1", and so on.
		kwds : Keyword arguments, optional
		    Arrays to save to the file. Each array will be saved to the
		    output file with its corresponding keyword name.
		
		Returns
		-------
		None
		
		See Also
		--------
		save : Save a single array to a binary file in NumPy format.
		savetxt : Save an array to a file as plain text.
		savez_compressed : Save several arrays into a compressed ``.npz`` archive
		
		Notes
		-----
		The ``.npz`` file format is a zipped archive of files named after the
		variables they contain.  The archive is not compressed and each file
		in the archive contains one variable in ``.npy`` format. For a
		description of the ``.npy`` format, see :py:mod:`numpy.lib.format`.
		
		When opening the saved ``.npz`` file with `load` a `NpzFile` object is
		returned. This is a dictionary-like object which can be queried for
		its list of arrays (with the ``.files`` attribute), and for the arrays
		themselves.
		
		Keys passed in `kwds` are used as filenames inside the ZIP archive.
		Therefore, keys should be valid filenames; e.g., avoid keys that begin with
		``/`` or contain ``.``.
		
		When naming variables with keyword arguments, it is not possible to name a
		variable ``file``, as this would cause the ``file`` argument to be defined
		twice in the call to ``savez``.
		
		Examples
		--------
		>>> from tempfile import TemporaryFile
		>>> outfile = TemporaryFile()
		>>> x = np.arange(10)
		>>> y = np.sin(x)
		
		Using `savez` with \*args, the arrays are saved with default names.
		
		>>> np.savez(outfile, x, y)
		>>> _ = outfile.seek(0) # Only needed here to simulate closing & reopening file
		>>> npzfile = np.load(outfile)
		>>> npzfile.files
		['arr_0', 'arr_1']
		>>> npzfile['arr_0']
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		Using `savez` with \**kwds, the arrays are saved with the keyword names.
		
		>>> outfile = TemporaryFile()
		>>> np.savez(outfile, x=x, y=y)
		>>> _ = outfile.seek(0)
		>>> npzfile = np.load(outfile)
		>>> sorted(npzfile.files)
		['x', 'y']
		>>> npzfile['x']
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
	**/
	static public function savez(file:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Save several arrays into a single file in compressed ``.npz`` format.
		
		Provide arrays as keyword arguments to store them under the
		corresponding name in the output file: ``savez(fn, x=x, y=y)``.
		
		If arrays are specified as positional arguments, i.e., ``savez(fn,
		x, y)``, their names will be `arr_0`, `arr_1`, etc.
		
		Parameters
		----------
		file : str or file
		    Either the filename (string) or an open file (file-like object)
		    where the data will be saved. If file is a string or a Path, the
		    ``.npz`` extension will be appended to the filename if it is not
		    already there.
		args : Arguments, optional
		    Arrays to save to the file. Please use keyword arguments (see
		    `kwds` below) to assign names to arrays.  Arrays specified as
		    args will be named "arr_0", "arr_1", and so on.
		kwds : Keyword arguments, optional
		    Arrays to save to the file. Each array will be saved to the
		    output file with its corresponding keyword name.
		
		Returns
		-------
		None
		
		See Also
		--------
		numpy.save : Save a single array to a binary file in NumPy format.
		numpy.savetxt : Save an array to a file as plain text.
		numpy.savez : Save several arrays into an uncompressed ``.npz`` file format
		numpy.load : Load the files created by savez_compressed.
		
		Notes
		-----
		The ``.npz`` file format is a zipped archive of files named after the
		variables they contain.  The archive is compressed with
		``zipfile.ZIP_DEFLATED`` and each file in the archive contains one variable
		in ``.npy`` format. For a description of the ``.npy`` format, see
		:py:mod:`numpy.lib.format`.
		
		
		When opening the saved ``.npz`` file with `load` a `NpzFile` object is
		returned. This is a dictionary-like object which can be queried for
		its list of arrays (with the ``.files`` attribute), and for the arrays
		themselves.
		
		Examples
		--------
		>>> test_array = np.random.rand(3, 2)
		>>> test_vector = np.random.rand(4)
		>>> np.savez_compressed('/tmp/123', a=test_array, b=test_vector)
		>>> loaded = np.load('/tmp/123.npz')
		>>> print(np.array_equal(test_array, loaded['a']))
		True
		>>> print(np.array_equal(test_vector, loaded['b']))
		True
	**/
	static public function savez_compressed(file:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the string representation of a scalar dtype.
		
		Parameters
		----------
		sctype : scalar dtype or object
		    If a scalar dtype, the corresponding string character is
		    returned. If an object, `sctype2char` tries to infer its scalar type
		    and then return the corresponding string character.
		
		Returns
		-------
		typechar : str
		    The string character corresponding to the scalar type.
		
		Raises
		------
		ValueError
		    If `sctype` is an object for which the type can not be inferred.
		
		See Also
		--------
		obj2sctype, issctype, issubsctype, mintypecode
		
		Examples
		--------
		>>> for sctype in [np.int32, np.double, np.complex_, np.string_, np.ndarray]:
		...     print(np.sctype2char(sctype))
		l # may vary
		d
		D
		S
		O
		
		>>> x = np.array([1., 2-1.j])
		>>> np.sctype2char(x)
		'D'
		>>> np.sctype2char(list)
		'O'
	**/
	static public function sctype2char(sctype:Dynamic):String;
	static public var sctypeDict : Dynamic;
	static public var sctypes : Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted array `a` such that, if the
		corresponding elements in `v` were inserted before the indices, the
		order of `a` would be preserved.
		
		Assuming that `a` is sorted:
		
		======  ============================
		`side`  returned index `i` satisfies
		======  ============================
		left    ``a[i-1] < v <= a[i]``
		right   ``a[i-1] <= v < a[i]``
		======  ============================
		
		Parameters
		----------
		a : 1-D array_like
		    Input array. If `sorter` is None, then it must be sorted in
		    ascending order, otherwise `sorter` must be an array of indices
		    that sort it.
		v : array_like
		    Values to insert into `a`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `a`).
		sorter : 1-D array_like, optional
		    Optional array of integer indices that sort array a into ascending
		    order. They are typically the result of argsort.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		indices : int or array of ints
		    Array of insertion points with the same shape as `v`,
		    or an integer if `v` is a scalar.
		
		See Also
		--------
		sort : Return a sorted copy of an array.
		histogram : Produce histogram from 1-D data.
		
		Notes
		-----
		Binary search is used to find the required insertion points.
		
		As of NumPy 1.4.0 `searchsorted` works with real/complex arrays containing
		`nan` values. The enhanced sort order is documented in `sort`.
		
		This function uses the same algorithm as the builtin python `bisect.bisect_left`
		(``side='left'``) and `bisect.bisect_right` (``side='right'``) functions,
		which is also vectorized in the `v` argument.
		
		Examples
		--------
		>>> np.searchsorted([1,2,3,4,5], 3)
		2
		>>> np.searchsorted([1,2,3,4,5], 3, side='right')
		3
		>>> np.searchsorted([1,2,3,4,5], [-10, 10, 2, 3])
		array([0, 5, 1, 2])
	**/
	static public function searchsorted(a:Dynamic, v:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		Return an array drawn from elements in choicelist, depending on conditions.
		
		Parameters
		----------
		condlist : list of bool ndarrays
		    The list of conditions which determine from which array in `choicelist`
		    the output elements are taken. When multiple conditions are satisfied,
		    the first one encountered in `condlist` is used.
		choicelist : list of ndarrays
		    The list of arrays from which the output elements are taken. It has
		    to be of the same length as `condlist`.
		default : scalar, optional
		    The element inserted in `output` when all conditions evaluate to False.
		
		Returns
		-------
		output : ndarray
		    The output at position m is the m-th element of the array in
		    `choicelist` where the m-th element of the corresponding array in
		    `condlist` is True.
		
		See Also
		--------
		where : Return elements from one of two arrays depending on condition.
		take, choose, compress, diag, diagonal
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> condlist = [x<3, x>3]
		>>> choicelist = [x, x**2]
		>>> np.select(condlist, choicelist, 42)
		array([ 0,  1,  2, 42, 16, 25])
		
		>>> condlist = [x<=4, x>3]
		>>> choicelist = [x, x**2]
		>>> np.select(condlist, choicelist, 55)
		array([ 0,  1,  2,  3,  4, 25])
	**/
	static public function select(condlist:Dynamic, choicelist:Dynamic, ?_default:Dynamic):numpy.Ndarray;
	/**
		set_numeric_ops(op1=func1, op2=func2, ...)
		
		Set numerical operators for array objects.
		
		.. deprecated:: 1.16
		
		    For the general case, use :c:func:`PyUFunc_ReplaceLoopBySignature`.
		    For ndarray subclasses, define the ``__array_ufunc__`` method and
		    override the relevant ufunc.
		
		Parameters
		----------
		op1, op2, ... : callable
		    Each ``op = func`` pair describes an operator to be replaced.
		    For example, ``add = lambda x, y: np.add(x, y) % 5`` would replace
		    addition by modulus 5 addition.
		
		Returns
		-------
		saved_ops : list of callables
		    A list of all operators, stored before making replacements.
		
		Notes
		-----
		.. WARNING::
		   Use with care!  Incorrect usage may lead to memory errors.
		
		A function replacing an operator cannot make use of that operator.
		For example, when replacing add, you may not use ``+``.  Instead,
		directly call ufuncs.
		
		Examples
		--------
		>>> def add_mod5(x, y):
		...     return np.add(x, y) % 5
		...
		>>> old_funcs = np.set_numeric_ops(add=add_mod5)
		
		>>> x = np.arange(12).reshape((3, 4))
		>>> x + x
		array([[0, 2, 4, 1],
		       [3, 0, 2, 4],
		       [1, 3, 0, 2]])
		
		>>> ignore = np.set_numeric_ops(**old_funcs) # restore operators
	**/
	static public function set_numeric_ops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Set printing options.
		
		These options determine the way floating point numbers, arrays and
		other NumPy objects are displayed.
		
		Parameters
		----------
		precision : int or None, optional
		    Number of digits of precision for floating point output (default 8).
		    May be None if `floatmode` is not `fixed`, to print as many digits as
		    necessary to uniquely specify the value.
		threshold : int, optional
		    Total number of array elements which trigger summarization
		    rather than full repr (default 1000).
		    To always use the full repr without summarization, pass `sys.maxsize`.
		edgeitems : int, optional
		    Number of array items in summary at beginning and end of
		    each dimension (default 3).
		linewidth : int, optional
		    The number of characters per line for the purpose of inserting
		    line breaks (default 75).
		suppress : bool, optional
		    If True, always print floating point numbers using fixed point
		    notation, in which case numbers equal to zero in the current precision
		    will print as zero.  If False, then scientific notation is used when
		    absolute value of the smallest number is < 1e-4 or the ratio of the
		    maximum absolute value to the minimum is > 1e3. The default is False.
		nanstr : str, optional
		    String representation of floating point not-a-number (default nan).
		infstr : str, optional
		    String representation of floating point infinity (default inf).
		sign : string, either '-', '+', or ' ', optional
		    Controls printing of the sign of floating-point types. If '+', always
		    print the sign of positive values. If ' ', always prints a space
		    (whitespace character) in the sign position of positive values.  If
		    '-', omit the sign character of positive values. (default '-')
		formatter : dict of callables, optional
		    If not None, the keys should indicate the type(s) that the respective
		    formatting function applies to.  Callables should return a string.
		    Types that are not specified (by their corresponding keys) are handled
		    by the default formatters.  Individual types for which a formatter
		    can be set are:
		
		    - 'bool'
		    - 'int'
		    - 'timedelta' : a `numpy.timedelta64`
		    - 'datetime' : a `numpy.datetime64`
		    - 'float'
		    - 'longfloat' : 128-bit floats
		    - 'complexfloat'
		    - 'longcomplexfloat' : composed of two 128-bit floats
		    - 'numpystr' : types `numpy.string_` and `numpy.unicode_`
		    - 'object' : `np.object_` arrays
		
		    Other keys that can be used to set a group of types at once are:
		
		    - 'all' : sets all types
		    - 'int_kind' : sets 'int'
		    - 'float_kind' : sets 'float' and 'longfloat'
		    - 'complex_kind' : sets 'complexfloat' and 'longcomplexfloat'
		    - 'str_kind' : sets 'numpystr'
		floatmode : str, optional
		    Controls the interpretation of the `precision` option for
		    floating-point types. Can take the following values
		    (default maxprec_equal):
		
		    * 'fixed': Always print exactly `precision` fractional digits,
		            even if this would print more or fewer digits than
		            necessary to specify the value uniquely.
		    * 'unique': Print the minimum number of fractional digits necessary
		            to represent each value uniquely. Different elements may
		            have a different number of digits. The value of the
		            `precision` option is ignored.
		    * 'maxprec': Print at most `precision` fractional digits, but if
		            an element can be uniquely represented with fewer digits
		            only print it with that many.
		    * 'maxprec_equal': Print at most `precision` fractional digits,
		            but if every element in the array can be uniquely
		            represented with an equal number of fewer digits, use that
		            many digits for all elements.
		legacy : string or `False`, optional
		    If set to the string `'1.13'` enables 1.13 legacy printing mode. This
		    approximates numpy 1.13 print output by including a space in the sign
		    position of floats and different behavior for 0d arrays. This also
		    enables 1.21 legacy printing mode (described below).
		
		    If set to the string `'1.21'` enables 1.21 legacy printing mode. This
		    approximates numpy 1.21 print output of complex structured dtypes
		    by not inserting spaces after commas that separate fields and after
		    colons.
		
		    If set to `False`, disables legacy mode.
		
		    Unrecognized strings will be ignored with a warning for forward
		    compatibility.
		
		    .. versionadded:: 1.14.0
		    .. versionchanged:: 1.22.0
		
		See Also
		--------
		get_printoptions, printoptions, set_string_function, array2string
		
		Notes
		-----
		`formatter` is always reset with a call to `set_printoptions`.
		
		Use `printoptions` as a context manager to set the values temporarily.
		
		Examples
		--------
		Floating point precision can be set:
		
		>>> np.set_printoptions(precision=4)
		>>> np.array([1.123456789])
		[1.1235]
		
		Long arrays can be summarised:
		
		>>> np.set_printoptions(threshold=5)
		>>> np.arange(10)
		array([0, 1, 2, ..., 7, 8, 9])
		
		Small results can be suppressed:
		
		>>> eps = np.finfo(float).eps
		>>> x = np.arange(4.)
		>>> x**2 - (x + eps)**2
		array([-4.9304e-32, -4.4409e-16,  0.0000e+00,  0.0000e+00])
		>>> np.set_printoptions(suppress=True)
		>>> x**2 - (x + eps)**2
		array([-0., -0.,  0.,  0.])
		
		A custom formatter can be used to display array elements as desired:
		
		>>> np.set_printoptions(formatter={'all':lambda x: 'int: '+str(-x)})
		>>> x = np.arange(3)
		>>> x
		array([int: 0, int: -1, int: -2])
		>>> np.set_printoptions()  # formatter gets reset
		>>> x
		array([0, 1, 2])
		
		To put back the default options, you can use:
		
		>>> np.set_printoptions(edgeitems=3, infstr='inf',
		... linewidth=75, nanstr='nan', precision=8,
		... suppress=False, threshold=1000, formatter=None)
		
		Also to temporarily override options, use `printoptions` as a context manager:
		
		>>> with np.printoptions(precision=2, suppress=True, threshold=5):
		...     np.linspace(0, 10, 10)
		array([ 0.  ,  1.11,  2.22, ...,  7.78,  8.89, 10.  ])
	**/
	static public function set_printoptions(?precision:Dynamic, ?threshold:Dynamic, ?edgeitems:Dynamic, ?linewidth:Dynamic, ?suppress:Dynamic, ?nanstr:Dynamic, ?infstr:Dynamic, ?formatter:Dynamic, ?sign:Dynamic, ?floatmode:Dynamic, ?legacy:Dynamic):Dynamic;
	/**
		Set a Python function to be used when pretty printing arrays.
		
		Parameters
		----------
		f : function or None
		    Function to be used to pretty print arrays. The function should expect
		    a single array argument and return a string of the representation of
		    the array. If None, the function is reset to the default NumPy function
		    to print arrays.
		repr : bool, optional
		    If True (default), the function for pretty printing (``__repr__``)
		    is set, if False the function that returns the default string
		    representation (``__str__``) is set.
		
		See Also
		--------
		set_printoptions, get_printoptions
		
		Examples
		--------
		>>> def pprint(arr):
		...     return 'HA! - What are you going to do now?'
		...
		>>> np.set_string_function(pprint)
		>>> a = np.arange(10)
		>>> a
		HA! - What are you going to do now?
		>>> _ = a
		>>> # [0 1 2 3 4 5 6 7 8 9]
		
		We can reset the function to the default:
		
		>>> np.set_string_function(None)
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		`repr` affects either pretty printing or normal string representation.
		Note that ``__repr__`` is still affected by setting ``__str__``
		because the width of each array element in the returned string becomes
		equal to the length of the result of ``__str__()``.
		
		>>> x = np.arange(4)
		>>> np.set_string_function(lambda x:'random', repr=False)
		>>> x.__str__()
		'random'
		>>> x.__repr__()
		'array([0, 1, 2, 3])'
	**/
	static public function set_string_function(f:Dynamic, ?repr:Dynamic):Dynamic;
	/**
		Set the size of the buffer used in ufuncs.
		
		Parameters
		----------
		size : int
		    Size of buffer.
	**/
	static public function setbufsize(size:Dynamic):Dynamic;
	/**
		Find the set difference of two arrays.
		
		Return the unique values in `ar1` that are not in `ar2`.
		
		Parameters
		----------
		ar1 : array_like
		    Input array.
		ar2 : array_like
		    Input comparison array.
		assume_unique : bool
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		
		Returns
		-------
		setdiff1d : ndarray
		    1D array of values in `ar1` that are not in `ar2`. The result
		    is sorted when `assume_unique=False`, but otherwise only sorted
		    if the input is sorted.
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> a = np.array([1, 2, 3, 2, 4, 1])
		>>> b = np.array([3, 4, 5, 6])
		>>> np.setdiff1d(a, b)
		array([1, 2])
	**/
	static public function setdiff1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):numpy.Ndarray;
	/**
		Set how floating-point errors are handled.
		
		Note that operations on integer scalar types (such as `int16`) are
		handled like floating point, and are affected by these settings.
		
		Parameters
		----------
		all : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
		    Set treatment for all types of floating-point errors at once:
		
		    - ignore: Take no action when the exception occurs.
		    - warn: Print a `RuntimeWarning` (via the Python `warnings` module).
		    - raise: Raise a `FloatingPointError`.
		    - call: Call a function specified using the `seterrcall` function.
		    - print: Print a warning directly to ``stdout``.
		    - log: Record error in a Log object specified by `seterrcall`.
		
		    The default is not to change the current behavior.
		divide : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
		    Treatment for division by zero.
		over : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
		    Treatment for floating-point overflow.
		under : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
		    Treatment for floating-point underflow.
		invalid : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
		    Treatment for invalid floating-point operation.
		
		Returns
		-------
		old_settings : dict
		    Dictionary containing the old settings.
		
		See also
		--------
		seterrcall : Set a callback function for the 'call' mode.
		geterr, geterrcall, errstate
		
		Notes
		-----
		The floating-point exceptions are defined in the IEEE 754 standard [1]_:
		
		- Division by zero: infinite result obtained from finite numbers.
		- Overflow: result too large to be expressed.
		- Underflow: result so close to zero that some precision
		  was lost.
		- Invalid operation: result is not an expressible number, typically
		  indicates that a NaN was produced.
		
		.. [1] https://en.wikipedia.org/wiki/IEEE_754
		
		Examples
		--------
		>>> old_settings = np.seterr(all='ignore')  #seterr to known value
		>>> np.seterr(over='raise')
		{'divide': 'ignore', 'over': 'ignore', 'under': 'ignore', 'invalid': 'ignore'}
		>>> np.seterr(**old_settings)  # reset to default
		{'divide': 'ignore', 'over': 'raise', 'under': 'ignore', 'invalid': 'ignore'}
		
		>>> np.int16(32000) * np.int16(3)
		30464
		>>> old_settings = np.seterr(all='warn', over='raise')
		>>> np.int16(32000) * np.int16(3)
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		FloatingPointError: overflow encountered in short_scalars
		
		>>> old_settings = np.seterr(all='print')
		>>> np.geterr()
		{'divide': 'print', 'over': 'print', 'under': 'print', 'invalid': 'print'}
		>>> np.int16(32000) * np.int16(3)
		30464
	**/
	static public function seterr(?all:Dynamic, ?divide:Dynamic, ?over:Dynamic, ?under:Dynamic, ?invalid:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Set the floating-point error callback function or log object.
		
		There are two ways to capture floating-point error messages.  The first
		is to set the error-handler to 'call', using `seterr`.  Then, set
		the function to call using this function.
		
		The second is to set the error-handler to 'log', using `seterr`.
		Floating-point errors then trigger a call to the 'write' method of
		the provided object.
		
		Parameters
		----------
		func : callable f(err, flag) or object with write method
		    Function to call upon floating-point errors ('call'-mode) or
		    object whose 'write' method is used to log such message ('log'-mode).
		
		    The call function takes two arguments. The first is a string describing
		    the type of error (such as "divide by zero", "overflow", "underflow",
		    or "invalid value"), and the second is the status flag.  The flag is a
		    byte, whose four least-significant bits indicate the type of error, one
		    of "divide", "over", "under", "invalid"::
		
		      [0 0 0 0 divide over under invalid]
		
		    In other words, ``flags = divide + 2*over + 4*under + 8*invalid``.
		
		    If an object is provided, its write method should take one argument,
		    a string.
		
		Returns
		-------
		h : callable, log instance or None
		    The old error handler.
		
		See Also
		--------
		seterr, geterr, geterrcall
		
		Examples
		--------
		Callback upon error:
		
		>>> def err_handler(type, flag):
		...     print("Floating point error (%s), with flag %s" % (type, flag))
		...
		
		>>> saved_handler = np.seterrcall(err_handler)
		>>> save_err = np.seterr(all='call')
		
		>>> np.array([1, 2, 3]) / 0.0
		Floating point error (divide by zero), with flag 1
		array([inf, inf, inf])
		
		>>> np.seterrcall(saved_handler)
		<function err_handler at 0x...>
		>>> np.seterr(**save_err)
		{'divide': 'call', 'over': 'call', 'under': 'call', 'invalid': 'call'}
		
		Log error message:
		
		>>> class Log:
		...     def write(self, msg):
		...         print("LOG: %s" % msg)
		...
		
		>>> log = Log()
		>>> saved_handler = np.seterrcall(log)
		>>> save_err = np.seterr(all='log')
		
		>>> np.array([1, 2, 3]) / 0.0
		LOG: Warning: divide by zero encountered in true_divide
		array([inf, inf, inf])
		
		>>> np.seterrcall(saved_handler)
		<numpy.core.numeric.Log object at 0x...>
		>>> np.seterr(**save_err)
		{'divide': 'log', 'over': 'log', 'under': 'log', 'invalid': 'log'}
	**/
	static public function seterrcall(func:Dynamic):Dynamic;
	/**
		seterrobj(errobj, /)
		
		Set the object that defines floating-point error handling.
		
		The error object contains all information that defines the error handling
		behavior in NumPy. `seterrobj` is used internally by the other
		functions that set error handling behavior (`seterr`, `seterrcall`).
		
		Parameters
		----------
		errobj : list
		    The error object, a list containing three elements:
		    [internal numpy buffer size, error mask, error callback function].
		
		    The error mask is a single integer that holds the treatment information
		    on all four floating point errors. The information for each error type
		    is contained in three bits of the integer. If we print it in base 8, we
		    can see what treatment is set for "invalid", "under", "over", and
		    "divide" (in that order). The printed string can be interpreted with
		
		    * 0 : 'ignore'
		    * 1 : 'warn'
		    * 2 : 'raise'
		    * 3 : 'call'
		    * 4 : 'print'
		    * 5 : 'log'
		
		See Also
		--------
		geterrobj, seterr, geterr, seterrcall, geterrcall
		getbufsize, setbufsize
		
		Notes
		-----
		For complete documentation of the types of floating-point exceptions and
		treatment options, see `seterr`.
		
		Examples
		--------
		>>> old_errobj = np.geterrobj()  # first get the defaults
		>>> old_errobj
		[8192, 521, None]
		
		>>> def err_handler(type, flag):
		...     print("Floating point error (%s), with flag %s" % (type, flag))
		...
		>>> new_errobj = [20000, 12, err_handler]
		>>> np.seterrobj(new_errobj)
		>>> np.base_repr(12, 8)  # int for divide=4 ('print') and over=1 ('warn')
		'14'
		>>> np.geterr()
		{'over': 'warn', 'divide': 'print', 'invalid': 'ignore', 'under': 'ignore'}
		>>> np.geterrcall() is err_handler
		True
	**/
	static public function seterrobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find the set exclusive-or of two arrays.
		
		Return the sorted, unique values that are in only one (not both) of the
		input arrays.
		
		Parameters
		----------
		ar1, ar2 : array_like
		    Input arrays.
		assume_unique : bool
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		
		Returns
		-------
		setxor1d : ndarray
		    Sorted 1D array of unique values that are in only one of the input
		    arrays.
		
		Examples
		--------
		>>> a = np.array([1, 2, 3, 2, 4])
		>>> b = np.array([2, 3, 5, 7, 5])
		>>> np.setxor1d(a,b)
		array([1, 4, 5, 7])
	**/
	static public function setxor1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):numpy.Ndarray;
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
	static public function shape(a:Dynamic):Dynamic;
	/**
		shares_memory(a, b, /, max_work=None)
		
		Determine if two arrays share memory.
		
		.. warning::
		
		   This function can be exponentially slow for some inputs, unless
		   `max_work` is set to a finite number or ``MAY_SHARE_BOUNDS``.
		   If in doubt, use `numpy.may_share_memory` instead.
		
		Parameters
		----------
		a, b : ndarray
		    Input arrays
		max_work : int, optional
		    Effort to spend on solving the overlap problem (maximum number
		    of candidate solutions to consider). The following special
		    values are recognized:
		
		    max_work=MAY_SHARE_EXACT  (default)
		        The problem is solved exactly. In this case, the function returns
		        True only if there is an element shared between the arrays. Finding
		        the exact solution may take extremely long in some cases.
		    max_work=MAY_SHARE_BOUNDS
		        Only the memory bounds of a and b are checked.
		
		Raises
		------
		numpy.TooHardError
		    Exceeded max_work.
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		may_share_memory
		
		Examples
		--------
		>>> x = np.array([1, 2, 3, 4])
		>>> np.shares_memory(x, np.array([5, 6, 7]))
		False
		>>> np.shares_memory(x[::2], x)
		True
		>>> np.shares_memory(x[::2], x[1::2])
		False
		
		Checking whether two arrays share memory is NP-complete, and
		runtime may increase exponentially in the number of
		dimensions. Hence, `max_work` should generally be set to a finite
		number, as it is possible to construct examples that take
		extremely long to run:
		
		>>> from numpy.lib.stride_tricks import as_strided
		>>> x = np.zeros([192163377], dtype=np.int8)
		>>> x1 = as_strided(x, strides=(36674, 61119, 85569), shape=(1049, 1049, 1049))
		>>> x2 = as_strided(x[64023025:], strides=(12223, 12224, 1), shape=(1049, 1049, 1))
		>>> np.shares_memory(x1, x2, max_work=1000)
		Traceback (most recent call last):
		...
		numpy.TooHardError: Exceeded max_work
		
		Running ``np.shares_memory(x1, x2)`` without `max_work` set takes
		around 1 minute for this case. It is possible to find problems
		that take still significantly longer.
	**/
	static public function shares_memory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Show libraries in the system on which NumPy was built.
		
		Print information about various resources (libraries, library
		directories, include directories, etc.) in the system on which
		NumPy was built.
		
		See Also
		--------
		get_include : Returns the directory containing NumPy C
		              header files.
		
		Notes
		-----
		1. Classes specifying the information to be printed are defined
		   in the `numpy.distutils.system_info` module.
		
		   Information may include:
		
		   * ``language``: language used to write the libraries (mostly
		     C or f77)
		   * ``libraries``: names of libraries found in the system
		   * ``library_dirs``: directories containing the libraries
		   * ``include_dirs``: directories containing library header files
		   * ``src_dirs``: directories containing library source files
		   * ``define_macros``: preprocessor macros used by
		     ``distutils.setup``
		   * ``baseline``: minimum CPU features required
		   * ``found``: dispatched features supported in the system
		   * ``not found``: dispatched features that are not supported
		     in the system
		
		2. NumPy BLAS/LAPACK Installation Notes
		
		   Installing a numpy wheel (``pip install numpy`` or force it
		   via ``pip install numpy --only-binary :numpy: numpy``) includes
		   an OpenBLAS implementation of the BLAS and LAPACK linear algebra
		   APIs. In this case, ``library_dirs`` reports the original build
		   time configuration as compiled with gcc/gfortran; at run time
		   the OpenBLAS library is in
		   ``site-packages/numpy.libs/`` (linux), or
		   ``site-packages/numpy/.dylibs/`` (macOS), or
		   ``site-packages/numpy/.libs/`` (windows).
		
		   Installing numpy from source
		   (``pip install numpy --no-binary numpy``) searches for BLAS and
		   LAPACK dynamic link libraries at build time as influenced by
		   environment variables NPY_BLAS_LIBS, NPY_CBLAS_LIBS, and
		   NPY_LAPACK_LIBS; or NPY_BLAS_ORDER and NPY_LAPACK_ORDER;
		   or the optional file ``~/.numpy-site.cfg``.
		   NumPy remembers those locations and expects to load the same
		   libraries at run-time.
		   In NumPy 1.21+ on macOS, 'accelerate' (Apple's Accelerate BLAS
		   library) is in the default build-time search order after
		   'openblas'.
		
		Examples
		--------
		>>> import numpy as np
		>>> np.show_config()
		blas_opt_info:
		    language = c
		    define_macros = [('HAVE_CBLAS', None)]
		    libraries = ['openblas', 'openblas']
		    library_dirs = ['/usr/local/lib']
	**/
	static public function show_config():Dynamic;
	/**
		sign(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns an element-wise indication of the sign of a number.
		
		The `sign` function returns ``-1 if x < 0, 0 if x==0, 1 if x > 0``.  nan
		is returned for nan inputs.
		
		For complex inputs, the `sign` function returns
		``sign(x.real) + 0j if x.real != 0 else sign(x.imag) + 0j``.
		
		complex(nan, 0) is returned for complex nan inputs.
		
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
		    The sign of `x`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		There is more than one definition of sign in common use for complex
		numbers.  The definition used here is equivalent to :math:`x/\sqrt{x*x}`
		which is different from a common alternative, :math:`x/|x|`.
		
		Examples
		--------
		>>> np.sign([-5., 4.5])
		array([-1.,  1.])
		>>> np.sign(0)
		0
		>>> np.sign(5-2j)
		(1+0j)
	**/
	static public function sign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		signbit(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns element-wise True where signbit is set (less than zero).
		
		Parameters
		----------
		x : array_like
		    The input value(s).
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
		result : ndarray of bool
		    Output array, or reference to `out` if that was supplied.
		    This is a scalar if `x` is a scalar.
		
		Examples
		--------
		>>> np.signbit(-1.2)
		True
		>>> np.signbit(np.array([1, -2.3, 2.1]))
		array([False,  True, False])
	**/
	static public function signbit(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the normalized sinc function.
		
		The sinc function is :math:`\sin(\pi x)/(\pi x)`.
		
		.. note::
		
		    Note the normalization factor of ``pi`` used in the definition.
		    This is the most commonly used definition in signal processing.
		    Use ``sinc(x / np.pi)`` to obtain the unnormalized sinc function
		    :math:`\sin(x)/(x)` that is more common in mathematics.
		
		Parameters
		----------
		x : ndarray
		    Array (possibly multi-dimensional) of values for which to to
		    calculate ``sinc(x)``.
		
		Returns
		-------
		out : ndarray
		    ``sinc(x)``, which has the same shape as the input.
		
		Notes
		-----
		``sinc(0)`` is the limit value 1.
		
		The name sinc is short for "sine cardinal" or "sinus cardinalis".
		
		The sinc function is used in various signal processing applications,
		including in anti-aliasing, in the construction of a Lanczos resampling
		filter, and in interpolation.
		
		For bandlimited interpolation of discrete-time signals, the ideal
		interpolation kernel is proportional to the sinc function.
		
		References
		----------
		.. [1] Weisstein, Eric W. "Sinc Function." From MathWorld--A Wolfram Web
		       Resource. http://mathworld.wolfram.com/SincFunction.html
		.. [2] Wikipedia, "Sinc function",
		       https://en.wikipedia.org/wiki/Sinc_function
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-4, 4, 41)
		>>> np.sinc(x)
		 array([-3.89804309e-17,  -4.92362781e-02,  -8.40918587e-02, # may vary
		        -8.90384387e-02,  -5.84680802e-02,   3.89804309e-17,
		        6.68206631e-02,   1.16434881e-01,   1.26137788e-01,
		        8.50444803e-02,  -3.89804309e-17,  -1.03943254e-01,
		        -1.89206682e-01,  -2.16236208e-01,  -1.55914881e-01,
		        3.89804309e-17,   2.33872321e-01,   5.04551152e-01,
		        7.56826729e-01,   9.35489284e-01,   1.00000000e+00,
		        9.35489284e-01,   7.56826729e-01,   5.04551152e-01,
		        2.33872321e-01,   3.89804309e-17,  -1.55914881e-01,
		       -2.16236208e-01,  -1.89206682e-01,  -1.03943254e-01,
		       -3.89804309e-17,   8.50444803e-02,   1.26137788e-01,
		        1.16434881e-01,   6.68206631e-02,   3.89804309e-17,
		        -5.84680802e-02,  -8.90384387e-02,  -8.40918587e-02,
		        -4.92362781e-02,  -3.89804309e-17])
		
		>>> plt.plot(x, np.sinc(x))
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Sinc Function")
		Text(0.5, 1.0, 'Sinc Function')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("X")
		Text(0.5, 0, 'X')
		>>> plt.show()
	**/
	static public function sinc(x:Dynamic):numpy.Ndarray;
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
	static public function sinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function size(a:Dynamic, ?axis:Dynamic):Int;
	/**
		Check whether some values are true.
		
		Refer to `any` for full documentation.
		
		See Also
		--------
		any : equivalent function; see for details.
	**/
	static public function sometrue(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a sorted copy of an array.
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		axis : int or None, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, optional
		    Sorting algorithm. The default is 'quicksort'. Note that both 'stable'
		    and 'mergesort' use timsort or radix sort under the covers and, in general,
		    the actual implementation will vary with data type. The 'mergesort' option
		    is retained for backwards compatibility.
		
		    .. versionchanged:: 1.15.0.
		       The 'stable' option was added.
		
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
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
		partition : Partial sort.
		
		Notes
		-----
		The various sorting algorithms are characterized by their average speed,
		worst case performance, work space size, and whether they are stable. A
		stable sort keeps items with the same key in the same relative
		order. The four algorithms implemented in NumPy have the following
		properties:
		
		=========== ======= ============= ============ ========
		   kind      speed   worst case    work space   stable
		=========== ======= ============= ============ ========
		'quicksort'    1     O(n^2)            0          no
		'heapsort'     3     O(n*log(n))       0          no
		'mergesort'    2     O(n*log(n))      ~n/2        yes
		'timsort'      2     O(n*log(n))      ~n/2        yes
		=========== ======= ============= ============ ========
		
		.. note:: The datatype determines which of 'mergesort' or 'timsort'
		   is actually used, even if 'mergesort' is specified. User selection
		   at a finer scale is not currently available.
		
		All the sort algorithms make temporary copies of the data when
		sorting along any but the last axis.  Consequently, sorting along
		the last axis is faster and uses less space than sorting along
		any other axis.
		
		The sort order for complex numbers is lexicographic. If both the real
		and imaginary parts are non-nan then the order is determined by the
		real parts except when they are equal, in which case the order is
		determined by the imaginary parts.
		
		Previous to numpy 1.4.0 sorting real and complex arrays containing nan
		values led to undefined behaviour. In numpy versions >= 1.4.0 nan
		values are sorted to the end. The extended sort order is:
		
		  * Real: [R, nan]
		  * Complex: [R + Rj, R + nanj, nan + Rj, nan + nanj]
		
		where R is a non-nan real value. Complex values with the same nan
		placements are sorted according to the non-nan part if it exists.
		Non-nan values are sorted as before.
		
		.. versionadded:: 1.12.0
		
		quicksort has been changed to `introsort <https://en.wikipedia.org/wiki/Introsort>`_.
		When sorting does not make enough progress it switches to
		`heapsort <https://en.wikipedia.org/wiki/Heapsort>`_.
		This implementation makes quicksort O(n*log(n)) in the worst case.
		
		'stable' automatically chooses the best stable sorting algorithm
		for the data type being sorted.
		It, along with 'mergesort' is currently mapped to
		`timsort <https://en.wikipedia.org/wiki/Timsort>`_
		or `radix sort <https://en.wikipedia.org/wiki/Radix_sort>`_
		depending on the data type.
		API forward compatibility currently limits the
		ability to select the implementation and it is hardwired for the different
		data types.
		
		.. versionadded:: 1.17.0
		
		Timsort is added for better performance on already or nearly
		sorted data. On random data timsort is almost identical to
		mergesort. It is now used for stable sort while quicksort is still the
		default sort if none is chosen. For timsort details, refer to
		`CPython listsort.txt <https://github.com/python/cpython/blob/3.7/Objects/listsort.txt>`_.
		'mergesort' and 'stable' are mapped to radix sort for integer data types. Radix sort is an
		O(n) sort instead of O(n log n).
		
		.. versionchanged:: 1.18.0
		
		NaT now sorts to the end of arrays for consistency with NaN.
		
		Examples
		--------
		>>> a = np.array([[1,4],[3,1]])
		>>> np.sort(a)                # sort along the last axis
		array([[1, 4],
		       [1, 3]])
		>>> np.sort(a, axis=None)     # sort the flattened array
		array([1, 1, 3, 4])
		>>> np.sort(a, axis=0)        # sort along the first axis
		array([[1, 1],
		       [3, 4]])
		
		Use the `order` keyword to specify a field to use when sorting a
		structured array:
		
		>>> dtype = [('name', 'S10'), ('height', float), ('age', int)]
		>>> values = [('Arthur', 1.8, 41), ('Lancelot', 1.9, 38),
		...           ('Galahad', 1.7, 38)]
		>>> a = np.array(values, dtype=dtype)       # create a structured array
		>>> np.sort(a, order='height')                        # doctest: +SKIP
		array([('Galahad', 1.7, 38), ('Arthur', 1.8, 41),
		       ('Lancelot', 1.8999999999999999, 38)],
		      dtype=[('name', '|S10'), ('height', '<f8'), ('age', '<i4')])
		
		Sort by age, then height if ages are equal:
		
		>>> np.sort(a, order=['age', 'height'])               # doctest: +SKIP
		array([('Galahad', 1.7, 38), ('Lancelot', 1.8999999999999999, 38),
		       ('Arthur', 1.8, 41)],
		      dtype=[('name', '|S10'), ('height', '<f8'), ('age', '<i4')])
	**/
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Sort a complex array using the real part first, then the imaginary part.
		
		Parameters
		----------
		a : array_like
		    Input array
		
		Returns
		-------
		out : complex ndarray
		    Always returns a sorted complex array.
		
		Examples
		--------
		>>> np.sort_complex([5, 3, 6, 2, 1])
		array([1.+0.j, 2.+0.j, 3.+0.j, 5.+0.j, 6.+0.j])
		
		>>> np.sort_complex([1 + 2j, 2 - 1j, 3 - 2j, 3 - 3j, 3 + 5j])
		array([1.+2.j,  2.-1.j,  3.-3.j,  3.-2.j,  3.+5.j])
	**/
	static public function sort_complex(a:Dynamic):Dynamic;
	/**
		Print or write to a file the source code for a NumPy object.
		
		The source code is only returned for objects written in Python. Many
		functions and classes are defined in C and will therefore not return
		useful information.
		
		Parameters
		----------
		object : numpy object
		    Input object. This can be any object (function, class, module,
		    ...).
		output : file object, optional
		    If `output` not supplied then source code is printed to screen
		    (sys.stdout).  File object must be created with either write 'w' or
		    append 'a' modes.
		
		See Also
		--------
		lookfor, info
		
		Examples
		--------
		>>> np.source(np.interp)                        #doctest: +SKIP
		In file: /usr/lib/python2.6/dist-packages/numpy/lib/function_base.py
		def interp(x, xp, fp, left=None, right=None):
		    """.... (full docstring printed)"""
		    if isinstance(x, (float, int, number)):
		        return compiled_interp([x], xp, fp, left, right).item()
		    else:
		        return compiled_interp(x, xp, fp, left, right)
		
		The source code is only returned for objects written in Python.
		
		>>> np.source(np.array)                         #doctest: +SKIP
		Not available for this object.
	**/
	static public function source(object:Dynamic, ?output:Dynamic):Dynamic;
	/**
		spacing(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the distance between x and the nearest adjacent number.
		
		Parameters
		----------
		x : array_like
		    Values to find the spacing of.
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
		    The spacing of values of `x`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		It can be considered as a generalization of EPS:
		``spacing(np.float64(1)) == np.finfo(np.float64).eps``, and there
		should not be any representable number between ``x + spacing(x)`` and
		x for any finite x.
		
		Spacing of +- inf and NaN is NaN.
		
		Examples
		--------
		>>> np.spacing(1) == np.finfo(np.float64).eps
		True
	**/
	static public function spacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Split an array into multiple sub-arrays as views into `ary`.
		
		Parameters
		----------
		ary : ndarray
		    Array to be divided into sub-arrays.
		indices_or_sections : int or 1-D array
		    If `indices_or_sections` is an integer, N, the array will be divided
		    into N equal arrays along `axis`.  If such a split is not possible,
		    an error is raised.
		
		    If `indices_or_sections` is a 1-D array of sorted integers, the entries
		    indicate where along `axis` the array is split.  For example,
		    ``[2, 3]`` would, for ``axis=0``, result in
		
		      - ary[:2]
		      - ary[2:3]
		      - ary[3:]
		
		    If an index exceeds the dimension of the array along `axis`,
		    an empty sub-array is returned correspondingly.
		axis : int, optional
		    The axis along which to split, default is 0.
		
		Returns
		-------
		sub-arrays : list of ndarrays
		    A list of sub-arrays as views into `ary`.
		
		Raises
		------
		ValueError
		    If `indices_or_sections` is given as an integer, but
		    a split does not result in equal division.
		
		See Also
		--------
		array_split : Split an array into multiple sub-arrays of equal or
		              near-equal size.  Does not raise an exception if
		              an equal division cannot be made.
		hsplit : Split array into multiple sub-arrays horizontally (column-wise).
		vsplit : Split array into multiple sub-arrays vertically (row wise).
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		hstack : Stack arrays in sequence horizontally (column wise).
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third dimension).
		
		Examples
		--------
		>>> x = np.arange(9.0)
		>>> np.split(x, 3)
		[array([0.,  1.,  2.]), array([3.,  4.,  5.]), array([6.,  7.,  8.])]
		
		>>> x = np.arange(8.0)
		>>> np.split(x, [3, 5, 6, 10])
		[array([0.,  1.,  2.]),
		 array([3.,  4.]),
		 array([5.]),
		 array([6.,  7.]),
		 array([], dtype=float64)]
	**/
	static public function split(ary:Dynamic, indices_or_sections:Dynamic, ?axis:Dynamic):Dynamic;
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
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		square(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the element-wise square of the input.
		
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
		out : ndarray or scalar
		    Element-wise `x*x`, of the same shape and dtype as `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		numpy.linalg.matrix_power
		sqrt
		power
		
		Examples
		--------
		>>> np.square([-1j, 1])
		array([-1.-0.j,  1.+0.j])
	**/
	static public function square(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
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
		squeezed : ndarray
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
	static public function squeeze(a:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Join a sequence of arrays along a new axis.
		
		The ``axis`` parameter specifies the index of the new axis in the
		dimensions of the result. For example, if ``axis=0`` it will be the first
		dimension and if ``axis=-1`` it will be the last dimension.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		arrays : sequence of array_like
		    Each array must have the same shape.
		
		axis : int, optional
		    The axis in the result array along which the input arrays are stacked.
		
		out : ndarray, optional
		    If provided, the destination to place the result. The shape must be
		    correct, matching that of what stack would have returned if no
		    out argument were specified.
		
		Returns
		-------
		stacked : ndarray
		    The stacked array has one more dimension than the input arrays.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		block : Assemble an nd-array from nested lists of blocks.
		split : Split array into a list of multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> arrays = [np.random.randn(3, 4) for _ in range(10)]
		>>> np.stack(arrays, axis=0).shape
		(10, 3, 4)
		
		>>> np.stack(arrays, axis=1).shape
		(3, 10, 4)
		
		>>> np.stack(arrays, axis=2).shape
		(3, 4, 10)
		
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([4, 5, 6])
		>>> np.stack((a, b))
		array([[1, 2, 3],
		       [4, 5, 6]])
		
		>>> np.stack((a, b), axis=-1)
		array([[1, 4],
		       [2, 5],
		       [3, 6]])
	**/
	static public function stack(arrays:Dynamic, ?axis:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Compute the standard deviation along the specified axis.
		
		Returns the standard deviation, a measure of the spread of a distribution,
		of the array elements. The standard deviation is computed for the
		flattened array by default, otherwise over the specified axis.
		
		Parameters
		----------
		a : array_like
		    Calculate the standard deviation of these values.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the standard deviation is computed. The
		    default is to compute the standard deviation of the flattened array.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a standard deviation is performed over
		    multiple axes, instead of a single axis or all the axes as before.
		dtype : dtype, optional
		    Type to use in computing the standard deviation. For arrays of
		    integer type the default is float64, for arrays of float types it is
		    the same as the array type.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output but the type (of the calculated
		    values) will be cast if necessary.
		ddof : int, optional
		    Means Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		    By default `ddof` is zero.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `std` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		where : array_like of bool, optional
		    Elements to include in the standard deviation.
		    See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		standard_deviation : ndarray, see dtype parameter above.
		    If `out` is None, return a new array containing the standard deviation,
		    otherwise return a reference to the output array.
		
		See Also
		--------
		var, mean, nanmean, nanstd, nanvar
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		The standard deviation is the square root of the average of the squared
		deviations from the mean, i.e., ``std = sqrt(mean(x))``, where
		``x = abs(a - a.mean())**2``.
		
		The average squared deviation is typically calculated as ``x.sum() / N``,
		where ``N = len(x)``. If, however, `ddof` is specified, the divisor
		``N - ddof`` is used instead. In standard statistical practice, ``ddof=1``
		provides an unbiased estimator of the variance of the infinite population.
		``ddof=0`` provides a maximum likelihood estimate of the variance for
		normally distributed variables. The standard deviation computed in this
		function is the square root of the estimated variance, so even with
		``ddof=1``, it will not be an unbiased estimate of the standard deviation
		per se.
		
		Note that, for complex numbers, `std` takes the absolute
		value before squaring, so that the result is always real and nonnegative.
		
		For floating-point input, the *std* is computed using the same
		precision the input has. Depending on the input data, this can cause
		the results to be inaccurate, especially for float32 (see example below).
		Specifying a higher-accuracy accumulator using the `dtype` keyword can
		alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.std(a)
		1.1180339887498949 # may vary
		>>> np.std(a, axis=0)
		array([1.,  1.])
		>>> np.std(a, axis=1)
		array([0.5,  0.5])
		
		In single precision, std() can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.std(a)
		0.45000005
		
		Computing the standard deviation in float64 is more accurate:
		
		>>> np.std(a, dtype=np.float64)
		0.44999999925494177 # may vary
		
		Specifying a where argument:
		
		>>> a = np.array([[14, 8, 11, 10], [7, 9, 10, 11], [10, 15, 5, 10]])
		>>> np.std(a)
		2.614064523559687 # may vary
		>>> np.std(a, where=[[True], [True], [False]])
		2.0
	**/
	static public function std(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
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
	static public function subtract(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Sum of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Elements to sum.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a sum is performed.  The default,
		    axis=None, will sum all of the elements of the input array.  If
		    axis is negative it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, a sum is performed on all of the axes
		    specified in the tuple instead of a single axis or all the axes as
		    before.
		dtype : dtype, optional
		    The type of the returned array and of the accumulator in which the
		    elements are summed.  The dtype of `a` is used by default unless `a`
		    has an integer dtype of less precision than the default platform
		    integer.  In that case, if `a` is signed then the platform integer
		    is used while if `a` is unsigned then an unsigned integer of the
		    same precision as the platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `sum` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		initial : scalar, optional
		    Starting value for the sum. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		where : array_like of bool, optional
		    Elements to include in the sum. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		sum_along_axis : ndarray
		    An array with the same shape as `a`, with the specified
		    axis removed.   If `a` is a 0-d array, or if `axis` is None, a scalar
		    is returned.  If an output array is specified, a reference to
		    `out` is returned.
		
		See Also
		--------
		ndarray.sum : Equivalent method.
		
		add.reduce : Equivalent functionality of `add`.
		
		cumsum : Cumulative sum of array elements.
		
		trapz : Integration of array values using the composite trapezoidal rule.
		
		mean, average
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		The sum of an empty array is the neutral element 0:
		
		>>> np.sum([])
		0.0
		
		For floating point numbers the numerical precision of sum (and
		``np.add.reduce``) is in general limited by directly adding each number
		individually to the result causing rounding errors in every step.
		However, often numpy will use a  numerically better approach (partial
		pairwise summation) leading to improved precision in many use-cases.
		This improved precision is always provided when no ``axis`` is given.
		When ``axis`` is given, it will depend on which axis is summed.
		Technically, to provide the best speed possible, the improved precision
		is only used when the summation is along the fast axis in memory.
		Note that the exact precision may vary depending on other parameters.
		In contrast to NumPy, Python's ``math.fsum`` function uses a slower but
		more precise approach to summation.
		Especially when summing a large number of lower precision floating point
		numbers, such as ``float32``, numerical errors can become significant.
		In such cases it can be advisable to use `dtype="float64"` to use a higher
		precision for the output.
		
		Examples
		--------
		>>> np.sum([0.5, 1.5])
		2.0
		>>> np.sum([0.5, 0.7, 0.2, 1.5], dtype=np.int32)
		1
		>>> np.sum([[0, 1], [0, 5]])
		6
		>>> np.sum([[0, 1], [0, 5]], axis=0)
		array([0, 6])
		>>> np.sum([[0, 1], [0, 5]], axis=1)
		array([1, 5])
		>>> np.sum([[0, 1], [np.nan, 5]], where=[False, True], axis=1)
		array([1., 5.])
		
		If the accumulator is too small, overflow occurs:
		
		>>> np.ones(128, dtype=np.int8).sum(dtype=np.int8)
		-128
		
		You can also start the sum with a value other than zero:
		
		>>> np.sum([10], initial=5)
		15
	**/
	static public function sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):numpy.Ndarray;
	/**
		Interchange two axes of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis1 : int
		    First axis.
		axis2 : int
		    Second axis.
		
		Returns
		-------
		a_swapped : ndarray
		    For NumPy >= 1.10.0, if `a` is an ndarray, then a view of `a` is
		    returned; otherwise a new array is created. For earlier NumPy
		    versions a view of `a` is returned only if the order of the
		    axes is changed, otherwise the input array is returned.
		
		Examples
		--------
		>>> x = np.array([[1,2,3]])
		>>> np.swapaxes(x,0,1)
		array([[1],
		       [2],
		       [3]])
		
		>>> x = np.array([[[0,1],[2,3]],[[4,5],[6,7]]])
		>>> x
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		
		>>> np.swapaxes(x,0,2)
		array([[[0, 4],
		        [2, 6]],
		       [[1, 5],
		        [3, 7]]])
	**/
	static public function swapaxes(a:Dynamic, axis1:Dynamic, axis2:Dynamic):numpy.Ndarray;
	/**
		Take elements from an array along an axis.
		
		When axis is not None, this function does the same thing as "fancy"
		indexing (indexing arrays using arrays); however, it can be easier to use
		if you need elements along a given axis. A call such as
		``np.take(arr, indices, axis=3)`` is equivalent to
		``arr[:,:,:,indices,...]``.
		
		Explained without fancy indexing, this is equivalent to the following use
		of `ndindex`, which sets each of ``ii``, ``jj``, and ``kk`` to a tuple of
		indices::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    Nj = indices.shape
		    for ii in ndindex(Ni):
		        for jj in ndindex(Nj):
		            for kk in ndindex(Nk):
		                out[ii + jj + kk] = a[ii + (indices[jj],) + kk]
		
		Parameters
		----------
		a : array_like (Ni..., M, Nk...)
		    The source array.
		indices : array_like (Nj...)
		    The indices of the values to extract.
		
		    .. versionadded:: 1.8.0
		
		    Also allow scalars for indices.
		axis : int, optional
		    The axis over which to select values. By default, the flattened
		    input array is used.
		out : ndarray, optional (Ni..., Nj..., Nk...)
		    If provided, the result will be placed in this array. It should
		    be of the appropriate shape and dtype. Note that `out` is always
		    buffered if `mode='raise'`; use other modes for better performance.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    'clip' mode means that all indices that are too large are replaced
		    by the index that addresses the last element along that axis. Note
		    that this disables indexing with negative numbers.
		
		Returns
		-------
		out : ndarray (Ni..., Nj..., Nk...)
		    The returned array has the same type as `a`.
		
		See Also
		--------
		compress : Take elements using a boolean mask
		ndarray.take : equivalent method
		take_along_axis : Take elements by matching the array and the index arrays
		
		Notes
		-----
		
		By eliminating the inner loop in the description above, and using `s_` to
		build simple slice objects, `take` can be expressed  in terms of applying
		fancy indexing to each 1-d slice::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nj):
		            out[ii + s_[...,] + kk] = a[ii + s_[:,] + kk][indices]
		
		For this reason, it is equivalent to (but faster than) the following use
		of `apply_along_axis`::
		
		    out = np.apply_along_axis(lambda a_1d: a_1d[indices], axis, a)
		
		Examples
		--------
		>>> a = [4, 3, 5, 7, 6, 8]
		>>> indices = [0, 1, 4]
		>>> np.take(a, indices)
		array([4, 3, 6])
		
		In this example if `a` is an ndarray, "fancy" indexing can be used.
		
		>>> a = np.array(a)
		>>> a[indices]
		array([4, 3, 6])
		
		If `indices` is not one dimensional, the output also has these dimensions.
		
		>>> np.take(a, [[0, 1], [2, 3]])
		array([[4, 3],
		       [5, 7]])
	**/
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Take values from the input array by matching 1d index and data slices.
		
		This iterates over matching 1d slices oriented along the specified axis in
		the index and data arrays, and uses the former to look up values in the
		latter. These slices can be different lengths.
		
		Functions returning an index along an axis, like `argsort` and
		`argpartition`, produce suitable indices for this function.
		
		.. versionadded:: 1.15.0
		
		Parameters
		----------
		arr : ndarray (Ni..., M, Nk...)
		    Source array
		indices : ndarray (Ni..., J, Nk...)
		    Indices to take along each 1d slice of `arr`. This must match the
		    dimension of arr, but dimensions Ni and Nj only need to broadcast
		    against `arr`.
		axis : int
		    The axis to take 1d slices along. If axis is None, the input array is
		    treated as if it had first been flattened to 1d, for consistency with
		    `sort` and `argsort`.
		
		Returns
		-------
		out: ndarray (Ni..., J, Nk...)
		    The indexed result.
		
		Notes
		-----
		This is equivalent to (but faster than) the following use of `ndindex` and
		`s_`, which sets each of ``ii`` and ``kk`` to a tuple of indices::
		
		    Ni, M, Nk = a.shape[:axis], a.shape[axis], a.shape[axis+1:]
		    J = indices.shape[axis]  # Need not equal M
		    out = np.empty(Ni + (J,) + Nk)
		
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nk):
		            a_1d       = a      [ii + s_[:,] + kk]
		            indices_1d = indices[ii + s_[:,] + kk]
		            out_1d     = out    [ii + s_[:,] + kk]
		            for j in range(J):
		                out_1d[j] = a_1d[indices_1d[j]]
		
		Equivalently, eliminating the inner loop, the last two lines would be::
		
		            out_1d[:] = a_1d[indices_1d]
		
		See Also
		--------
		take : Take along an axis, using the same indices for every 1d slice
		put_along_axis :
		    Put values into the destination array by matching 1d index and data slices
		
		Examples
		--------
		
		For this sample array
		
		>>> a = np.array([[10, 30, 20], [60, 40, 50]])
		
		We can sort either by using sort directly, or argsort and this function
		
		>>> np.sort(a, axis=1)
		array([[10, 20, 30],
		       [40, 50, 60]])
		>>> ai = np.argsort(a, axis=1); ai
		array([[0, 2, 1],
		       [1, 2, 0]])
		>>> np.take_along_axis(a, ai, axis=1)
		array([[10, 20, 30],
		       [40, 50, 60]])
		
		The same works for max and min, if you expand the dimensions:
		
		>>> np.expand_dims(np.max(a, axis=1), axis=1)
		array([[30],
		       [60]])
		>>> ai = np.expand_dims(np.argmax(a, axis=1), axis=1)
		>>> ai
		array([[1],
		       [0]])
		>>> np.take_along_axis(a, ai, axis=1)
		array([[30],
		       [60]])
		
		If we want to get the max and min at the same time, we can stack the
		indices first
		
		>>> ai_min = np.expand_dims(np.argmin(a, axis=1), axis=1)
		>>> ai_max = np.expand_dims(np.argmax(a, axis=1), axis=1)
		>>> ai = np.concatenate([ai_min, ai_max], axis=1)
		>>> ai
		array([[0, 1],
		       [1, 0]])
		>>> np.take_along_axis(a, ai, axis=1)
		array([[10, 30],
		       [40, 60]])
	**/
	static public function take_along_axis(arr:Dynamic, indices:Dynamic, axis:Dynamic):Dynamic;
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
	static public function tan(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function tanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute tensor dot product along specified axes.
		
		Given two tensors, `a` and `b`, and an array_like object containing
		two array_like objects, ``(a_axes, b_axes)``, sum the products of
		`a`'s and `b`'s elements (components) over the axes specified by
		``a_axes`` and ``b_axes``. The third argument can be a single non-negative
		integer_like scalar, ``N``; if it is such, then the last ``N`` dimensions
		of `a` and the first ``N`` dimensions of `b` are summed over.
		
		Parameters
		----------
		a, b : array_like
		    Tensors to "dot".
		
		axes : int or (2,) array_like
		    * integer_like
		      If an int N, sum over the last N axes of `a` and the first N axes
		      of `b` in order. The sizes of the corresponding axes must match.
		    * (2,) array_like
		      Or, a list of axes to be summed over, first sequence applying to `a`,
		      second to `b`. Both elements array_like must be of the same length.
		
		Returns
		-------
		output : ndarray
		    The tensor dot product of the input.
		
		See Also
		--------
		dot, einsum
		
		Notes
		-----
		Three common use cases are:
		    * ``axes = 0`` : tensor product :math:`a\otimes b`
		    * ``axes = 1`` : tensor dot product :math:`a\cdot b`
		    * ``axes = 2`` : (default) tensor double contraction :math:`a:b`
		
		When `axes` is integer_like, the sequence for evaluation will be: first
		the -Nth axis in `a` and 0th axis in `b`, and the -1th axis in `a` and
		Nth axis in `b` last.
		
		When there is more than one axis to sum over - and they are not the last
		(first) axes of `a` (`b`) - the argument `axes` should consist of
		two sequences of the same length, with the first axis to sum over given
		first in both sequences, the second axis second, and so forth.
		
		The shape of the result consists of the non-contracted axes of the
		first tensor, followed by the non-contracted axes of the second.
		
		Examples
		--------
		A "traditional" example:
		
		>>> a = np.arange(60.).reshape(3,4,5)
		>>> b = np.arange(24.).reshape(4,3,2)
		>>> c = np.tensordot(a,b, axes=([1,0],[0,1]))
		>>> c.shape
		(5, 2)
		>>> c
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		>>> # A slower but equivalent way of computing the same...
		>>> d = np.zeros((5,2))
		>>> for i in range(5):
		...   for j in range(2):
		...     for k in range(3):
		...       for n in range(4):
		...         d[i,j] += a[k,n,i] * b[n,k,j]
		>>> c == d
		array([[ True,  True],
		       [ True,  True],
		       [ True,  True],
		       [ True,  True],
		       [ True,  True]])
		
		An extended example taking advantage of the overloading of + and \*:
		
		>>> a = np.array(range(1, 9))
		>>> a.shape = (2, 2, 2)
		>>> A = np.array(('a', 'b', 'c', 'd'), dtype=object)
		>>> A.shape = (2, 2)
		>>> a; A
		array([[[1, 2],
		        [3, 4]],
		       [[5, 6],
		        [7, 8]]])
		array([['a', 'b'],
		       ['c', 'd']], dtype=object)
		
		>>> np.tensordot(a, A) # third argument default is 2 for double-contraction
		array(['abbcccdddd', 'aaaaabbbbbbcccccccdddddddd'], dtype=object)
		
		>>> np.tensordot(a, A, 1)
		array([[['acc', 'bdd'],
		        ['aaacccc', 'bbbdddd']],
		       [['aaaaacccccc', 'bbbbbdddddd'],
		        ['aaaaaaacccccccc', 'bbbbbbbdddddddd']]], dtype=object)
		
		>>> np.tensordot(a, A, 0) # tensor product (result too long to incl.)
		array([[[[['a', 'b'],
		          ['c', 'd']],
		          ...
		
		>>> np.tensordot(a, A, (0, 1))
		array([[['abbbbb', 'cddddd'],
		        ['aabbbbbb', 'ccdddddd']],
		       [['aaabbbbbbb', 'cccddddddd'],
		        ['aaaabbbbbbbb', 'ccccdddddddd']]], dtype=object)
		
		>>> np.tensordot(a, A, (2, 1))
		array([[['abb', 'cdd'],
		        ['aaabbbb', 'cccdddd']],
		       [['aaaaabbbbbb', 'cccccdddddd'],
		        ['aaaaaaabbbbbbbb', 'cccccccdddddddd']]], dtype=object)
		
		>>> np.tensordot(a, A, ((0, 1), (0, 1)))
		array(['abbbcccccddddddd', 'aabbbbccccccdddddddd'], dtype=object)
		
		>>> np.tensordot(a, A, ((2, 1), (1, 0)))
		array(['acccbbdddd', 'aaaaacccccccbbbbbbdddddddd'], dtype=object)
	**/
	static public function tensordot(a:Dynamic, b:Dynamic, ?axes:Dynamic):numpy.Ndarray;
	/**
		Construct an array by repeating A the number of times given by reps.
		
		If `reps` has length ``d``, the result will have dimension of
		``max(d, A.ndim)``.
		
		If ``A.ndim < d``, `A` is promoted to be d-dimensional by prepending new
		axes. So a shape (3,) array is promoted to (1, 3) for 2-D replication,
		or shape (1, 1, 3) for 3-D replication. If this is not the desired
		behavior, promote `A` to d-dimensions manually before calling this
		function.
		
		If ``A.ndim > d``, `reps` is promoted to `A`.ndim by pre-pending 1's to it.
		Thus for an `A` of shape (2, 3, 4, 5), a `reps` of (2, 2) is treated as
		(1, 1, 2, 2).
		
		Note : Although tile may be used for broadcasting, it is strongly
		recommended to use numpy's broadcasting operations and functions.
		
		Parameters
		----------
		A : array_like
		    The input array.
		reps : array_like
		    The number of repetitions of `A` along each axis.
		
		Returns
		-------
		c : ndarray
		    The tiled output array.
		
		See Also
		--------
		repeat : Repeat elements of an array.
		broadcast_to : Broadcast an array to a new shape
		
		Examples
		--------
		>>> a = np.array([0, 1, 2])
		>>> np.tile(a, 2)
		array([0, 1, 2, 0, 1, 2])
		>>> np.tile(a, (2, 2))
		array([[0, 1, 2, 0, 1, 2],
		       [0, 1, 2, 0, 1, 2]])
		>>> np.tile(a, (2, 1, 2))
		array([[[0, 1, 2, 0, 1, 2]],
		       [[0, 1, 2, 0, 1, 2]]])
		
		>>> b = np.array([[1, 2], [3, 4]])
		>>> np.tile(b, 2)
		array([[1, 2, 1, 2],
		       [3, 4, 3, 4]])
		>>> np.tile(b, (2, 1))
		array([[1, 2],
		       [3, 4],
		       [1, 2],
		       [3, 4]])
		
		>>> c = np.array([1,2,3,4])
		>>> np.tile(c,(4,1))
		array([[1, 2, 3, 4],
		       [1, 2, 3, 4],
		       [1, 2, 3, 4],
		       [1, 2, 3, 4]])
	**/
	static public function tile(A:Dynamic, reps:Dynamic):numpy.Ndarray;
	/**
		Return the sum along diagonals of the array.
		
		If `a` is 2-D, the sum along its diagonal with the given offset
		is returned, i.e., the sum of elements ``a[i,i+offset]`` for all i.
		
		If `a` has more than two dimensions, then the axes specified by axis1 and
		axis2 are used to determine the 2-D sub-arrays whose traces are returned.
		The shape of the resulting array is the same as that of `a` with `axis1`
		and `axis2` removed.
		
		Parameters
		----------
		a : array_like
		    Input array, from which the diagonals are taken.
		offset : int, optional
		    Offset of the diagonal from the main diagonal. Can be both positive
		    and negative. Defaults to 0.
		axis1, axis2 : int, optional
		    Axes to be used as the first and second axis of the 2-D sub-arrays
		    from which the diagonals should be taken. Defaults are the first two
		    axes of `a`.
		dtype : dtype, optional
		    Determines the data-type of the returned array and of the accumulator
		    where the elements are summed. If dtype has the value None and `a` is
		    of integer type of precision less than the default integer
		    precision, then the default integer precision is used. Otherwise,
		    the precision is the same as that of `a`.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and
		    it must be of the right shape to hold the output.
		
		Returns
		-------
		sum_along_diagonals : ndarray
		    If `a` is 2-D, the sum along the diagonal is returned.  If `a` has
		    larger dimensions, then an array of sums along diagonals is returned.
		
		See Also
		--------
		diag, diagonal, diagflat
		
		Examples
		--------
		>>> np.trace(np.eye(3))
		3.0
		>>> a = np.arange(8).reshape((2,2,2))
		>>> np.trace(a)
		array([6, 8])
		
		>>> a = np.arange(24).reshape((2,2,2,3))
		>>> np.trace(a).shape
		(2, 3)
	**/
	static public function trace(a:Dynamic, ?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic, ?dtype:Dynamic, ?out:Dynamic):numpy.Ndarray;
	static public var tracemalloc_domain : Dynamic;
	/**
		Reverse or permute the axes of an array; returns the modified array.
		
		For an array a with two axes, transpose(a) gives the matrix transpose.
		
		Refer to `numpy.ndarray.transpose` for full documentation.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axes : tuple or list of ints, optional
		    If specified, it must be a tuple or list which contains a permutation of
		    [0,1,..,N-1] where N is the number of axes of a.  The i'th axis of the
		    returned array will correspond to the axis numbered ``axes[i]`` of the
		    input.  If not specified, defaults to ``range(a.ndim)[::-1]``, which
		    reverses the order of the axes.
		
		Returns
		-------
		p : ndarray
		    `a` with its axes permuted.  A view is returned whenever
		    possible.
		
		See Also
		--------
		ndarray.transpose : Equivalent method
		moveaxis
		argsort
		
		Notes
		-----
		Use `transpose(a, argsort(axes))` to invert the transposition of tensors
		when using the `axes` keyword argument.
		
		Transposing a 1-D array returns an unchanged view of the original array.
		
		Examples
		--------
		>>> x = np.arange(4).reshape((2,2))
		>>> x
		array([[0, 1],
		       [2, 3]])
		
		>>> np.transpose(x)
		array([[0, 2],
		       [1, 3]])
		
		>>> x = np.ones((1, 2, 3))
		>>> np.transpose(x, (1, 0, 2)).shape
		(2, 1, 3)
		
		>>> x = np.ones((2, 3, 4, 5))
		>>> np.transpose(x).shape
		(5, 4, 3, 2)
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):numpy.Ndarray;
	/**
		Integrate along the given axis using the composite trapezoidal rule.
		
		If `x` is provided, the integration happens in sequence along its
		elements - they are not sorted.
		
		Integrate `y` (`x`) along each 1d slice on the given axis, compute
		:math:`\int y(x) dx`.
		When `x` is specified, this integrates along the parametric curve,
		computing :math:`\int_t y(t) dt =
		\int_t y(t) \left.\frac{dx}{dt}\right|_{x=x(t)} dt`.
		
		Parameters
		----------
		y : array_like
		    Input array to integrate.
		x : array_like, optional
		    The sample points corresponding to the `y` values. If `x` is None,
		    the sample points are assumed to be evenly spaced `dx` apart. The
		    default is None.
		dx : scalar, optional
		    The spacing between sample points when `x` is None. The default is 1.
		axis : int, optional
		    The axis along which to integrate.
		
		Returns
		-------
		trapz : float or ndarray
		    Definite integral of 'y' = n-dimensional array as approximated along
		    a single axis by the trapezoidal rule. If 'y' is a 1-dimensional array,
		    then the result is a float. If 'n' is greater than 1, then the result
		    is an 'n-1' dimensional array.
		
		See Also
		--------
		sum, cumsum
		
		Notes
		-----
		Image [2]_ illustrates trapezoidal rule -- y-axis locations of points
		will be taken from `y` array, by default x-axis distances between
		points will be 1.0, alternatively they can be provided with `x` array
		or with `dx` scalar.  Return value will be equal to combined area under
		the red lines.
		
		
		References
		----------
		.. [1] Wikipedia page: https://en.wikipedia.org/wiki/Trapezoidal_rule
		
		.. [2] Illustration image:
		       https://en.wikipedia.org/wiki/File:Composite_trapezoidal_rule_illustration.png
		
		Examples
		--------
		>>> np.trapz([1,2,3])
		4.0
		>>> np.trapz([1,2,3], x=[4,6,8])
		8.0
		>>> np.trapz([1,2,3], dx=2)
		8.0
		
		Using a decreasing `x` corresponds to integrating in reverse:
		
		>>> np.trapz([1,2,3], x=[8,6,4])
		-8.0
		
		More generally `x` is used to integrate along a parametric curve.
		This finds the area of a circle, noting we repeat the sample which closes
		the curve:
		
		>>> theta = np.linspace(0, 2 * np.pi, num=1000, endpoint=True)
		>>> np.trapz(np.cos(theta), x=np.sin(theta))
		3.141571941375841
		
		>>> a = np.arange(6).reshape(2, 3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.trapz(a, axis=0)
		array([1.5, 2.5, 3.5])
		>>> np.trapz(a, axis=1)
		array([2.,  8.])
	**/
	static public function trapz(y:Dynamic, ?x:Dynamic, ?dx:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		An array with ones at and below the given diagonal and zeros elsewhere.
		
		Parameters
		----------
		N : int
		    Number of rows in the array.
		M : int, optional
		    Number of columns in the array.
		    By default, `M` is taken equal to `N`.
		k : int, optional
		    The sub-diagonal at and below which the array is filled.
		    `k` = 0 is the main diagonal, while `k` < 0 is below it,
		    and `k` > 0 is above.  The default is 0.
		dtype : dtype, optional
		    Data type of the returned array.  The default is float.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		tri : ndarray of shape (N, M)
		    Array with its lower triangle filled with ones and zero elsewhere;
		    in other words ``T[i,j] == 1`` for ``j <= i + k``, 0 otherwise.
		
		Examples
		--------
		>>> np.tri(3, 5, 2, dtype=int)
		array([[1, 1, 1, 0, 0],
		       [1, 1, 1, 1, 0],
		       [1, 1, 1, 1, 1]])
		
		>>> np.tri(3, 5, -1)
		array([[0.,  0.,  0.,  0.,  0.],
		       [1.,  0.,  0.,  0.,  0.],
		       [1.,  1.,  0.,  0.,  0.]])
	**/
	static public function tri(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?like:Dynamic):Dynamic;
	/**
		Lower triangle of an array.
		
		Return a copy of an array with elements above the `k`-th diagonal zeroed.
		For arrays with ``ndim`` exceeding 2, `tril` will apply to the final two
		axes.
		
		Parameters
		----------
		m : array_like, shape (..., M, N)
		    Input array.
		k : int, optional
		    Diagonal above which to zero elements.  `k = 0` (the default) is the
		    main diagonal, `k < 0` is below it and `k > 0` is above.
		
		Returns
		-------
		tril : ndarray, shape (..., M, N)
		    Lower triangle of `m`, of same shape and data-type as `m`.
		
		See Also
		--------
		triu : same thing, only for the upper triangle
		
		Examples
		--------
		>>> np.tril([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 0,  0,  0],
		       [ 4,  0,  0],
		       [ 7,  8,  0],
		       [10, 11, 12]])
		
		>>> np.tril(np.arange(3*4*5).reshape(3, 4, 5))
		array([[[ 0,  0,  0,  0,  0],
		        [ 5,  6,  0,  0,  0],
		        [10, 11, 12,  0,  0],
		        [15, 16, 17, 18,  0]],
		       [[20,  0,  0,  0,  0],
		        [25, 26,  0,  0,  0],
		        [30, 31, 32,  0,  0],
		        [35, 36, 37, 38,  0]],
		       [[40,  0,  0,  0,  0],
		        [45, 46,  0,  0,  0],
		        [50, 51, 52,  0,  0],
		        [55, 56, 57, 58,  0]]])
	**/
	static public function tril(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Return the indices for the lower-triangle of an (n, m) array.
		
		Parameters
		----------
		n : int
		    The row dimension of the arrays for which the returned
		    indices will be valid.
		k : int, optional
		    Diagonal offset (see `tril` for details).
		m : int, optional
		    .. versionadded:: 1.9.0
		
		    The column dimension of the arrays for which the returned
		    arrays will be valid.
		    By default `m` is taken equal to `n`.
		
		
		Returns
		-------
		inds : tuple of arrays
		    The indices for the triangle. The returned tuple contains two arrays,
		    each with the indices along one dimension of the array.
		
		See also
		--------
		triu_indices : similar function, for upper-triangular.
		mask_indices : generic function accepting an arbitrary mask function.
		tril, triu
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		Compute two different sets of indices to access 4x4 arrays, one for the
		lower triangular part starting at the main diagonal, and one starting two
		diagonals further right:
		
		>>> il1 = np.tril_indices(4)
		>>> il2 = np.tril_indices(4, 2)
		
		Here is how they can be used with a sample array:
		
		>>> a = np.arange(16).reshape(4, 4)
		>>> a
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15]])
		
		Both for indexing:
		
		>>> a[il1]
		array([ 0,  4,  5, ..., 13, 14, 15])
		
		And for assigning values:
		
		>>> a[il1] = -1
		>>> a
		array([[-1,  1,  2,  3],
		       [-1, -1,  6,  7],
		       [-1, -1, -1, 11],
		       [-1, -1, -1, -1]])
		
		These cover almost the whole array (two diagonals right of the main one):
		
		>>> a[il2] = -10
		>>> a
		array([[-10, -10, -10,   3],
		       [-10, -10, -10, -10],
		       [-10, -10, -10, -10],
		       [-10, -10, -10, -10]])
	**/
	static public function tril_indices(n:Dynamic, ?k:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Return the indices for the lower-triangle of arr.
		
		See `tril_indices` for full details.
		
		Parameters
		----------
		arr : array_like
		    The indices will be valid for square arrays whose dimensions are
		    the same as arr.
		k : int, optional
		    Diagonal offset (see `tril` for details).
		
		See Also
		--------
		tril_indices, tril
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function tril_indices_from(arr:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Trim the leading and/or trailing zeros from a 1-D array or sequence.
		
		Parameters
		----------
		filt : 1-D array or sequence
		    Input array.
		trim : str, optional
		    A string with 'f' representing trim from front and 'b' to trim from
		    back. Default is 'fb', trim zeros from both front and back of the
		    array.
		
		Returns
		-------
		trimmed : 1-D array or sequence
		    The result of trimming the input. The input data type is preserved.
		
		Examples
		--------
		>>> a = np.array((0, 0, 0, 1, 2, 3, 0, 2, 1, 0))
		>>> np.trim_zeros(a)
		array([1, 2, 3, 0, 2, 1])
		
		>>> np.trim_zeros(a, 'b')
		array([0, 0, 0, ..., 0, 2, 1])
		
		The input data type is preserved, list/tuple in means list/tuple out.
		
		>>> np.trim_zeros([0, 1, 2, 0])
		[1, 2]
	**/
	static public function trim_zeros(filt:Dynamic, ?trim:Dynamic):Dynamic;
	/**
		Upper triangle of an array.
		
		Return a copy of an array with the elements below the `k`-th diagonal
		zeroed. For arrays with ``ndim`` exceeding 2, `triu` will apply to the final
		two axes.
		
		Please refer to the documentation for `tril` for further details.
		
		See Also
		--------
		tril : lower triangle of an array
		
		Examples
		--------
		>>> np.triu([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 1,  2,  3],
		       [ 4,  5,  6],
		       [ 0,  8,  9],
		       [ 0,  0, 12]])
		
		>>> np.triu(np.arange(3*4*5).reshape(3, 4, 5))
		array([[[ 0,  1,  2,  3,  4],
		        [ 0,  6,  7,  8,  9],
		        [ 0,  0, 12, 13, 14],
		        [ 0,  0,  0, 18, 19]],
		       [[20, 21, 22, 23, 24],
		        [ 0, 26, 27, 28, 29],
		        [ 0,  0, 32, 33, 34],
		        [ 0,  0,  0, 38, 39]],
		       [[40, 41, 42, 43, 44],
		        [ 0, 46, 47, 48, 49],
		        [ 0,  0, 52, 53, 54],
		        [ 0,  0,  0, 58, 59]]])
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Return the indices for the upper-triangle of an (n, m) array.
		
		Parameters
		----------
		n : int
		    The size of the arrays for which the returned indices will
		    be valid.
		k : int, optional
		    Diagonal offset (see `triu` for details).
		m : int, optional
		    .. versionadded:: 1.9.0
		
		    The column dimension of the arrays for which the returned
		    arrays will be valid.
		    By default `m` is taken equal to `n`.
		
		
		Returns
		-------
		inds : tuple, shape(2) of ndarrays, shape(`n`)
		    The indices for the triangle. The returned tuple contains two arrays,
		    each with the indices along one dimension of the array.  Can be used
		    to slice a ndarray of shape(`n`, `n`).
		
		See also
		--------
		tril_indices : similar function, for lower-triangular.
		mask_indices : generic function accepting an arbitrary mask function.
		triu, tril
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		Compute two different sets of indices to access 4x4 arrays, one for the
		upper triangular part starting at the main diagonal, and one starting two
		diagonals further right:
		
		>>> iu1 = np.triu_indices(4)
		>>> iu2 = np.triu_indices(4, 2)
		
		Here is how they can be used with a sample array:
		
		>>> a = np.arange(16).reshape(4, 4)
		>>> a
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15]])
		
		Both for indexing:
		
		>>> a[iu1]
		array([ 0,  1,  2, ..., 10, 11, 15])
		
		And for assigning values:
		
		>>> a[iu1] = -1
		>>> a
		array([[-1, -1, -1, -1],
		       [ 4, -1, -1, -1],
		       [ 8,  9, -1, -1],
		       [12, 13, 14, -1]])
		
		These cover only a small part of the whole array (two diagonals right
		of the main one):
		
		>>> a[iu2] = -10
		>>> a
		array([[ -1,  -1, -10, -10],
		       [  4,  -1,  -1, -10],
		       [  8,   9,  -1,  -1],
		       [ 12,  13,  14,  -1]])
	**/
	static public function triu_indices(n:Dynamic, ?k:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Return the indices for the upper-triangle of arr.
		
		See `triu_indices` for full details.
		
		Parameters
		----------
		arr : ndarray, shape(N, N)
		    The indices will be valid for square arrays.
		k : int, optional
		    Diagonal offset (see `triu` for details).
		
		Returns
		-------
		triu_indices_from : tuple, shape(2) of ndarray, shape(N)
		    Indices for the upper-triangle of `arr`.
		
		See Also
		--------
		triu_indices, triu
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function triu_indices_from(arr:Dynamic, ?k:Dynamic):Dynamic;
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
	static public function true_divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		trunc(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truncated value of the input, element-wise.
		
		The truncated value of the scalar `x` is the nearest integer `i` which
		is closer to zero than `x` is. In short, the fractional part of the
		signed number `x` is discarded.
		
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
		    The truncated value of each element in `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		ceil, floor, rint, fix
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.trunc(a)
		array([-1., -1., -0.,  0.,  1.,  1.,  2.])
	**/
	static public function trunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var typecodes : Dynamic;
	/**
		Return a description for the given data type code.
		
		Parameters
		----------
		char : str
		    Data type code.
		
		Returns
		-------
		out : str
		    Description of the input data type code.
		
		See Also
		--------
		dtype, typecodes
		
		Examples
		--------
		>>> typechars = ['S1', '?', 'B', 'D', 'G', 'F', 'I', 'H', 'L', 'O', 'Q',
		...              'S', 'U', 'V', 'b', 'd', 'g', 'f', 'i', 'h', 'l', 'q']
		>>> for typechar in typechars:
		...     print(typechar, ' : ', np.typename(typechar))
		...
		S1  :  character
		?  :  bool
		B  :  unsigned char
		D  :  complex double precision
		G  :  complex long double precision
		F  :  complex single precision
		I  :  unsigned integer
		H  :  unsigned short
		L  :  unsigned long integer
		O  :  object
		Q  :  unsigned long long integer
		S  :  string
		U  :  unicode
		V  :  void
		b  :  signed char
		d  :  double precision
		g  :  long precision
		f  :  single precision
		i  :  integer
		h  :  short
		l  :  long integer
		q  :  long long integer
	**/
	static public function typename(char:Dynamic):String;
	/**
		Find the union of two arrays.
		
		Return the unique, sorted array of values that are in either of the two
		input arrays.
		
		Parameters
		----------
		ar1, ar2 : array_like
		    Input arrays. They are flattened if they are not already 1D.
		
		Returns
		-------
		union1d : ndarray
		    Unique, sorted union of the input arrays.
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> np.union1d([-1, 0, 1], [-2, 0, 2])
		array([-2, -1,  0,  1,  2])
		
		To find the union of more than two arrays, use functools.reduce:
		
		>>> from functools import reduce
		>>> reduce(np.union1d, ([1, 3, 4, 3], [3, 1, 2, 1], [6, 3, 4, 2]))
		array([1, 2, 3, 4, 6])
	**/
	static public function union1d(ar1:Dynamic, ar2:Dynamic):numpy.Ndarray;
	/**
		Find the unique elements of an array.
		
		Returns the sorted unique elements of an array. There are three optional
		outputs in addition to the unique elements:
		
		* the indices of the input array that give the unique values
		* the indices of the unique array that reconstruct the input array
		* the number of times each unique value comes up in the input array
		
		Parameters
		----------
		ar : array_like
		    Input array. Unless `axis` is specified, this will be flattened if it
		    is not already 1-D.
		return_index : bool, optional
		    If True, also return the indices of `ar` (along the specified axis,
		    if provided, or in the flattened array) that result in the unique array.
		return_inverse : bool, optional
		    If True, also return the indices of the unique array (for the specified
		    axis, if provided) that can be used to reconstruct `ar`.
		return_counts : bool, optional
		    If True, also return the number of times each unique item appears
		    in `ar`.
		
		    .. versionadded:: 1.9.0
		
		axis : int or None, optional
		    The axis to operate on. If None, `ar` will be flattened. If an integer,
		    the subarrays indexed by the given axis will be flattened and treated
		    as the elements of a 1-D array with the dimension of the given axis,
		    see the notes for more details.  Object arrays or structured arrays
		    that contain objects are not supported if the `axis` kwarg is used. The
		    default is None.
		
		    .. versionadded:: 1.13.0
		
		Returns
		-------
		unique : ndarray
		    The sorted unique values.
		unique_indices : ndarray, optional
		    The indices of the first occurrences of the unique values in the
		    original array. Only provided if `return_index` is True.
		unique_inverse : ndarray, optional
		    The indices to reconstruct the original array from the
		    unique array. Only provided if `return_inverse` is True.
		unique_counts : ndarray, optional
		    The number of times each of the unique values comes up in the
		    original array. Only provided if `return_counts` is True.
		
		    .. versionadded:: 1.9.0
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		repeat : Repeat elements of an array.
		
		Notes
		-----
		When an axis is specified the subarrays indexed by the axis are sorted.
		This is done by making the specified axis the first dimension of the array
		(move the axis to the first dimension to keep the order of the other axes)
		and then flattening the subarrays in C order. The flattened subarrays are
		then viewed as a structured type with each element given a label, with the
		effect that we end up with a 1-D array of structured types that can be
		treated in the same way as any other 1-D array. The result is that the
		flattened subarrays are sorted in lexicographic order starting with the
		first element.
		
		.. versionchanged: NumPy 1.21
		    If nan values are in the input array, a single nan is put
		    to the end of the sorted unique values.
		
		    Also for complex arrays all NaN values are considered equivalent
		    (no matter whether the NaN is in the real or imaginary part).
		    As the representant for the returned array the smallest one in the
		    lexicographical order is chosen - see np.sort for how the lexicographical
		    order is defined for complex arrays.
		
		Examples
		--------
		>>> np.unique([1, 1, 2, 2, 3, 3])
		array([1, 2, 3])
		>>> a = np.array([[1, 1], [2, 3]])
		>>> np.unique(a)
		array([1, 2, 3])
		
		Return the unique rows of a 2D array
		
		>>> a = np.array([[1, 0, 0], [1, 0, 0], [2, 3, 4]])
		>>> np.unique(a, axis=0)
		array([[1, 0, 0], [2, 3, 4]])
		
		Return the indices of the original array that give the unique values:
		
		>>> a = np.array(['a', 'b', 'b', 'c', 'a'])
		>>> u, indices = np.unique(a, return_index=True)
		>>> u
		array(['a', 'b', 'c'], dtype='<U1')
		>>> indices
		array([0, 1, 3])
		>>> a[indices]
		array(['a', 'b', 'c'], dtype='<U1')
		
		Reconstruct the input array from the unique values and inverse:
		
		>>> a = np.array([1, 2, 6, 4, 2, 3, 2])
		>>> u, indices = np.unique(a, return_inverse=True)
		>>> u
		array([1, 2, 3, 4, 6])
		>>> indices
		array([0, 1, 4, 3, 1, 2, 1])
		>>> u[indices]
		array([1, 2, 6, 4, 2, 3, 2])
		
		Reconstruct the input values from the unique values and counts:
		
		>>> a = np.array([1, 2, 6, 4, 2, 3, 2])
		>>> values, counts = np.unique(a, return_counts=True)
		>>> values
		array([1, 2, 3, 4, 6])
		>>> counts
		array([1, 3, 1, 1, 1])
		>>> np.repeat(values, counts)
		array([1, 2, 2, 2, 3, 4, 6])    # original order not preserved
	**/
	static public function unique(ar:Dynamic, ?return_index:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		unpackbits(a, /, axis=None, count=None, bitorder='big')
		
		Unpacks elements of a uint8 array into a binary-valued output array.
		
		Each element of `a` represents a bit-field that should be unpacked
		into a binary-valued output array. The shape of the output array is
		either 1-D (if `axis` is ``None``) or the same shape as the input
		array with unpacking done along the axis specified.
		
		Parameters
		----------
		a : ndarray, uint8 type
		   Input array.
		axis : int, optional
		    The dimension over which bit-unpacking is done.
		    ``None`` implies unpacking the flattened array.
		count : int or None, optional
		    The number of elements to unpack along `axis`, provided as a way
		    of undoing the effect of packing a size that is not a multiple
		    of eight. A non-negative number means to only unpack `count`
		    bits. A negative number means to trim off that many bits from
		    the end. ``None`` means to unpack the entire array (the
		    default). Counts larger than the available number of bits will
		    add zero padding to the output. Negative counts must not
		    exceed the available number of bits.
		
		    .. versionadded:: 1.17.0
		
		bitorder : {'big', 'little'}, optional
		    The order of the returned bits. 'big' will mimic bin(val),
		    ``3 = 0b00000011 => [0, 0, 0, 0, 0, 0, 1, 1]``, 'little' will reverse
		    the order to ``[1, 1, 0, 0, 0, 0, 0, 0]``.
		    Defaults to 'big'.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		unpacked : ndarray, uint8 type
		   The elements are binary-valued (0 or 1).
		
		See Also
		--------
		packbits : Packs the elements of a binary-valued array into bits in
		           a uint8 array.
		
		Examples
		--------
		>>> a = np.array([[2], [7], [23]], dtype=np.uint8)
		>>> a
		array([[ 2],
		       [ 7],
		       [23]], dtype=uint8)
		>>> b = np.unpackbits(a, axis=1)
		>>> b
		array([[0, 0, 0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 1, 1, 1],
		       [0, 0, 0, 1, 0, 1, 1, 1]], dtype=uint8)
		>>> c = np.unpackbits(a, axis=1, count=-3)
		>>> c
		array([[0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0],
		       [0, 0, 0, 1, 0]], dtype=uint8)
		
		>>> p = np.packbits(b, axis=0)
		>>> np.unpackbits(p, axis=0)
		array([[0, 0, 0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 1, 1, 1],
		       [0, 0, 0, 1, 0, 1, 1, 1],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0]], dtype=uint8)
		>>> np.array_equal(b, np.unpackbits(p, axis=0, count=b.shape[0]))
		True
	**/
	static public function unpackbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unravel_index(indices, shape, order='C')
		
		Converts a flat index or array of flat indices into a tuple
		of coordinate arrays.
		
		Parameters
		----------
		indices : array_like
		    An integer array whose elements are indices into the flattened
		    version of an array of dimensions ``shape``. Before version 1.6.0,
		    this function accepted just one index value.
		shape : tuple of ints
		    The shape of the array to use for unraveling ``indices``.
		
		    .. versionchanged:: 1.16.0
		        Renamed from ``dims`` to ``shape``.
		
		order : {'C', 'F'}, optional
		    Determines whether the indices should be viewed as indexing in
		    row-major (C-style) or column-major (Fortran-style) order.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		unraveled_coords : tuple of ndarray
		    Each array in the tuple has the same shape as the ``indices``
		    array.
		
		See Also
		--------
		ravel_multi_index
		
		Examples
		--------
		>>> np.unravel_index([22, 41, 37], (7,6))
		(array([3, 6, 6]), array([4, 5, 1]))
		>>> np.unravel_index([31, 41, 13], (7,6), order='F')
		(array([3, 6, 6]), array([4, 5, 1]))
		
		>>> np.unravel_index(1621, (6,7,8,9))
		(3, 1, 4, 1)
	**/
	static public function unravel_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Unwrap by taking the complement of large deltas with respect to the period.
		
		This unwraps a signal `p` by changing elements which have an absolute
		difference from their predecessor of more than ``max(discont, period/2)``
		to their `period`-complementary values.
		
		For the default case where `period` is :math:`2\pi` and `discont` is
		:math:`\pi`, this unwraps a radian phase `p` such that adjacent differences
		are never greater than :math:`\pi` by adding :math:`2k\pi` for some
		integer :math:`k`.
		
		Parameters
		----------
		p : array_like
		    Input array.
		discont : float, optional
		    Maximum discontinuity between values, default is ``period/2``.
		    Values below ``period/2`` are treated as if they were ``period/2``.
		    To have an effect different from the default, `discont` should be
		    larger than ``period/2``.
		axis : int, optional
		    Axis along which unwrap will operate, default is the last axis.
		period: float, optional
		    Size of the range over which the input wraps. By default, it is
		    ``2 pi``.
		
		    .. versionadded:: 1.21.0
		
		Returns
		-------
		out : ndarray
		    Output array.
		
		See Also
		--------
		rad2deg, deg2rad
		
		Notes
		-----
		If the discontinuity in `p` is smaller than ``period/2``,
		but larger than `discont`, no unwrapping is done because taking
		the complement would only make the discontinuity larger.
		
		Examples
		--------
		>>> phase = np.linspace(0, np.pi, num=5)
		>>> phase[3:] += np.pi
		>>> phase
		array([ 0.        ,  0.78539816,  1.57079633,  5.49778714,  6.28318531]) # may vary
		>>> np.unwrap(phase)
		array([ 0.        ,  0.78539816,  1.57079633, -0.78539816,  0.        ]) # may vary
		>>> np.unwrap([0, 1, 2, -1, 0], period=4)
		array([0, 1, 2, 3, 4])
		>>> np.unwrap([ 1, 2, 3, 4, 5, 6, 1, 2, 3], period=6)
		array([1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.unwrap([2, 3, 4, 5, 2, 3, 4, 5], period=4)
		array([2, 3, 4, 5, 6, 7, 8, 9])
		>>> phase_deg = np.mod(np.linspace(0 ,720, 19), 360) - 180
		>>> np.unwrap(phase_deg, period=360)
		array([-180., -140., -100.,  -60.,  -20.,   20.,   60.,  100.,  140.,
		        180.,  220.,  260.,  300.,  340.,  380.,  420.,  460.,  500.,
		        540.])
	**/
	static public function unwrap(p:Dynamic, ?discont:Dynamic, ?axis:Dynamic, ?period:Dynamic):numpy.Ndarray;
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
		48.000000000000043 # may vary
		>>> (5-3)*(5-2)*(5-1)*(3-2)*(3-1)*(2-1)
		48
	**/
	static public function vander(x:Dynamic, ?N:Dynamic, ?increasing:Dynamic):numpy.Ndarray;
	/**
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
	static public function _var(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		vdot(a, b, /)
		
		Return the dot product of two vectors.
		
		The vdot(`a`, `b`) function handles complex numbers differently than
		dot(`a`, `b`).  If the first argument is complex the complex conjugate
		of the first argument is used for the calculation of the dot product.
		
		Note that `vdot` handles multidimensional arrays differently than `dot`:
		it does *not* perform a matrix product, but flattens input arguments
		to 1-D vectors first. Consequently, it should only be used for vectors.
		
		Parameters
		----------
		a : array_like
		    If `a` is complex the complex conjugate is taken before calculation
		    of the dot product.
		b : array_like
		    Second argument to the dot product.
		
		Returns
		-------
		output : ndarray
		    Dot product of `a` and `b`.  Can be an int, float, or
		    complex depending on the types of `a` and `b`.
		
		See Also
		--------
		dot : Return the dot product without using the complex conjugate of the
		      first argument.
		
		Examples
		--------
		>>> a = np.array([1+2j,3+4j])
		>>> b = np.array([5+6j,7+8j])
		>>> np.vdot(a, b)
		(70-8j)
		>>> np.vdot(b, a)
		(70+8j)
		
		Note that higher-dimensional arrays are flattened!
		
		>>> a = np.array([[1, 4], [5, 6]])
		>>> b = np.array([[4, 1], [2, 2]])
		>>> np.vdot(a, b)
		30
		>>> np.vdot(b, a)
		30
		>>> 1*4 + 4*1 + 5*2 + 6*2
		30
	**/
	static public function vdot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Split an array into multiple sub-arrays vertically (row-wise).
		
		Please refer to the ``split`` documentation.  ``vsplit`` is equivalent
		to ``split`` with `axis=0` (default), the array is always split along the
		first axis regardless of the array dimension.
		
		See Also
		--------
		split : Split an array into multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> x = np.arange(16.0).reshape(4, 4)
		>>> x
		array([[ 0.,   1.,   2.,   3.],
		       [ 4.,   5.,   6.,   7.],
		       [ 8.,   9.,  10.,  11.],
		       [12.,  13.,  14.,  15.]])
		>>> np.vsplit(x, 2)
		[array([[0., 1., 2., 3.],
		       [4., 5., 6., 7.]]), array([[ 8.,  9., 10., 11.],
		       [12., 13., 14., 15.]])]
		>>> np.vsplit(x, np.array([3, 6]))
		[array([[ 0.,  1.,  2.,  3.],
		       [ 4.,  5.,  6.,  7.],
		       [ 8.,  9., 10., 11.]]), array([[12., 13., 14., 15.]]), array([], shape=(0, 4), dtype=float64)]
		
		With a higher dimensional array the split is still along the first axis.
		
		>>> x = np.arange(8.0).reshape(2, 2, 2)
		>>> x
		array([[[0.,  1.],
		        [2.,  3.]],
		       [[4.,  5.],
		        [6.,  7.]]])
		>>> np.vsplit(x, 2)
		[array([[[0., 1.],
		        [2., 3.]]]), array([[[4., 5.],
		        [6., 7.]]])]
	**/
	static public function vsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		Stack arrays in sequence vertically (row wise).
		
		This is equivalent to concatenation along the first axis after 1-D arrays
		of shape `(N,)` have been reshaped to `(1,N)`. Rebuilds arrays divided by
		`vsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    The arrays must have the same shape along all but the first axis.
		    1-D arrays must have the same length.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays, will be at least 2-D.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		block : Assemble an nd-array from nested lists of blocks.
		hstack : Stack arrays in sequence horizontally (column wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		vsplit : Split an array into multiple sub-arrays vertically (row-wise).
		
		Examples
		--------
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([4, 5, 6])
		>>> np.vstack((a,b))
		array([[1, 2, 3],
		       [4, 5, 6]])
		
		>>> a = np.array([[1], [2], [3]])
		>>> b = np.array([[4], [5], [6]])
		>>> np.vstack((a,b))
		array([[1],
		       [2],
		       [3],
		       [4],
		       [5],
		       [6]])
	**/
	static public function vstack(tup:Dynamic):numpy.Ndarray;
	/**
		where(condition, [x, y], /)
		
		Return elements chosen from `x` or `y` depending on `condition`.
		
		.. note::
		    When only `condition` is provided, this function is a shorthand for
		    ``np.asarray(condition).nonzero()``. Using `nonzero` directly should be
		    preferred, as it behaves correctly for subclasses. The rest of this
		    documentation covers only the case where all three arguments are
		    provided.
		
		Parameters
		----------
		condition : array_like, bool
		    Where True, yield `x`, otherwise yield `y`.
		x, y : array_like
		    Values from which to choose. `x`, `y` and `condition` need to be
		    broadcastable to some shape.
		
		Returns
		-------
		out : ndarray
		    An array with elements from `x` where `condition` is True, and elements
		    from `y` elsewhere.
		
		See Also
		--------
		choose
		nonzero : The function that is called when x and y are omitted
		
		Notes
		-----
		If all the arrays are 1-D, `where` is equivalent to::
		
		    [xv if c else yv
		     for c, xv, yv in zip(condition, x, y)]
		
		Examples
		--------
		>>> a = np.arange(10)
		>>> a
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.where(a < 5, a, 10*a)
		array([ 0,  1,  2,  3,  4, 50, 60, 70, 80, 90])
		
		This can be used on multidimensional arrays too:
		
		>>> np.where([[True, False], [True, True]],
		...          [[1, 2], [3, 4]],
		...          [[9, 8], [7, 6]])
		array([[1, 8],
		       [3, 4]])
		
		The shapes of x, y, and the condition are broadcast together:
		
		>>> x, y = np.ogrid[:3, :4]
		>>> np.where(x < y, x, 10 + y)  # both x and 10+y are broadcast
		array([[10,  0,  0,  0],
		       [10, 11,  1,  1],
		       [10, 11, 12,  2]])
		
		>>> a = np.array([[0, 1, 2],
		...               [0, 2, 4],
		...               [0, 3, 6]])
		>>> np.where(a < 4, a, -1)  # -1 is broadcast
		array([[ 0,  1,  2],
		       [ 0,  2, -1],
		       [ 0,  3, -1]])
	**/
	static public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Print the NumPy arrays in the given dictionary.
		
		If there is no dictionary passed in or `vardict` is None then returns
		NumPy arrays in the globals() dictionary (all NumPy arrays in the
		namespace).
		
		Parameters
		----------
		vardict : dict, optional
		    A dictionary possibly containing ndarrays.  Default is globals().
		
		Returns
		-------
		out : None
		    Returns 'None'.
		
		Notes
		-----
		Prints out the name, shape, bytes and type of all of the ndarrays
		present in `vardict`.
		
		Examples
		--------
		>>> a = np.arange(10)
		>>> b = np.ones(20)
		>>> np.who()
		Name            Shape            Bytes            Type
		===========================================================
		a               10               80               int64
		b               20               160              float64
		Upper bound on total bytes  =       240
		
		>>> d = {'x': np.arange(2.0), 'y': np.arange(3.0), 'txt': 'Some str',
		... 'idx':5}
		>>> np.who(d)
		Name            Shape            Bytes            Type
		===========================================================
		x               2                16               float64
		y               3                24               float64
		Upper bound on total bytes  =       40
	**/
	static public function who(?vardict:Dynamic):Dynamic;
	/**
		Return a matrix of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the matrix
		dtype : data-type, optional
		    The desired data-type for the matrix, default is float.
		order : {'C', 'F'}, optional
		    Whether to store the result in C- or Fortran-contiguous order,
		    default is 'C'.
		
		Returns
		-------
		out : matrix
		    Zero matrix of given shape, dtype, and order.
		
		See Also
		--------
		numpy.zeros : Equivalent array function.
		matlib.ones : Return a matrix of ones.
		
		Notes
		-----
		If `shape` has length one i.e. ``(N,)``, or is a scalar ``N``,
		`out` becomes a single row matrix of shape ``(1,N)``.
		
		Examples
		--------
		>>> import numpy.matlib
		>>> np.matlib.zeros((2, 3))
		matrix([[0.,  0.,  0.],
		        [0.,  0.,  0.]])
		
		>>> np.matlib.zeros(2)
		matrix([[0.,  0.]])
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Matrix;
	/**
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
		out : ndarray
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
	static public function zeros_like(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic, ?shape:Dynamic):numpy.Ndarray;
}