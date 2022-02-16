/* This file is generated, do not edit! */
package numpy.core.numeric;
@:pythonImport("numpy.core.numeric") extern class Numeric_Module {
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
	static public function _allclose_dispatcher(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Dynamic;
	static public function _argwhere_dispatcher(a:Dynamic):Dynamic;
	static public function _array_equal_dispatcher(a1:Dynamic, a2:Dynamic, ?equal_nan:Dynamic):Dynamic;
	static public function _array_equiv_dispatcher(a1:Dynamic, a2:Dynamic):Dynamic;
	static public function _convolve_dispatcher(a:Dynamic, v:Dynamic, ?mode:Dynamic):Dynamic;
	static public function _correlate_dispatcher(a:Dynamic, v:Dynamic, ?mode:Dynamic):Dynamic;
	static public function _count_nonzero_dispatcher(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _cross_dispatcher(a:Dynamic, b:Dynamic, ?axisa:Dynamic, ?axisb:Dynamic, ?axisc:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _flatnonzero_dispatcher(a:Dynamic):Dynamic;
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
	static public function _frombuffer(buf:Dynamic, dtype:Dynamic, shape:Dynamic, order:Dynamic):Dynamic;
	static public function _fromfunction_dispatcher(_function:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?like:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _fromfunction_with_like(_function:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?like:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _full_dispatcher(shape:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?like:Dynamic):Dynamic;
	static public function _full_like_dispatcher(a:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic, ?shape:Dynamic):Dynamic;
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
	static public function _full_with_like(shape:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?like:Dynamic):numpy.Ndarray;
	static public function _identity_dispatcher(n:Dynamic, ?dtype:Dynamic, ?like:Dynamic):Dynamic;
	/**
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
		out : ndarray
		    `n` x `n` array with its main diagonal set to one,
		    and all other elements 0.
		
		Examples
		--------
		>>> np.identity(3)
		array([[1.,  0.,  0.],
		       [0.,  1.,  0.],
		       [0.,  0.,  1.]])
	**/
	static public function _identity_with_like(n:Dynamic, ?dtype:Dynamic, ?like:Dynamic):numpy.Ndarray;
	static public function _isclose_dispatcher(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Dynamic;
	static public function _maketup(descr:Dynamic, val:Dynamic):Dynamic;
	static public function _moveaxis_dispatcher(a:Dynamic, source:Dynamic, destination:Dynamic):Dynamic;
	static public function _ones_dispatcher(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?like:Dynamic):Dynamic;
	static public function _ones_like_dispatcher(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic, ?shape:Dynamic):Dynamic;
	/**
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
		out : ndarray
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
	static public function _ones_with_like(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?like:Dynamic):numpy.Ndarray;
	static public function _outer_dispatcher(a:Dynamic, b:Dynamic, ?out:Dynamic):Dynamic;
	static public function _roll_dispatcher(a:Dynamic, shift:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _rollaxis_dispatcher(a:Dynamic, axis:Dynamic, ?start:Dynamic):Dynamic;
	static public function _tensordot_dispatcher(a:Dynamic, b:Dynamic, ?axes:Dynamic):Dynamic;
	static public function _zeros_like_dispatcher(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic, ?shape:Dynamic):Dynamic;
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
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
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
	static public var e : Dynamic;
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
		out : ndarray
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
	static public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function extend_all(module:Dynamic):Dynamic;
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
		out : ndarray
		    `n` x `n` array with its main diagonal set to one,
		    and all other elements 0.
		
		Examples
		--------
		>>> np.identity(3)
		array([[1.,  0.,  0.],
		       [0.,  1.,  0.],
		       [0.,  0.,  1.]])
	**/
	static public function identity(n:Dynamic, ?dtype:Dynamic, ?like:Dynamic):numpy.Ndarray;
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
	static public var little_endian : Dynamic;
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
		normalize_axis_index(axis, ndim, msg_prefix=None)
		
		Normalizes an axis index, `axis`, such that is a valid positive index into
		the shape of array with `ndim` dimensions. Raises an AxisError with an
		appropriate message if this is not possible.
		
		Used internally by all axis-checking logic.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		axis : int
		    The un-normalized index of the axis. Can be negative
		ndim : int
		    The number of dimensions of the array that `axis` should be normalized
		    against
		msg_prefix : str
		    A prefix to put before the message, typically the name of the argument
		
		Returns
		-------
		normalized_axis : int
		    The normalized axis index, such that `0 <= normalized_axis < ndim`
		
		Raises
		------
		AxisError
		    If the axis index is invalid, when `-ndim <= axis < ndim` is false.
		
		Examples
		--------
		>>> normalize_axis_index(0, ndim=3)
		0
		>>> normalize_axis_index(1, ndim=3)
		1
		>>> normalize_axis_index(-1, ndim=3)
		2
		
		>>> normalize_axis_index(3, ndim=3)
		Traceback (most recent call last):
		...
		AxisError: axis 3 is out of bounds for array of dimension 3
		>>> normalize_axis_index(-4, ndim=3, msg_prefix='axes_arg')
		Traceback (most recent call last):
		...
		AxisError: axes_arg: axis -4 is out of bounds for array of dimension 3
	**/
	static public function normalize_axis_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
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
		out : ndarray
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
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?like:Dynamic):numpy.Ndarray;
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
	static public var pi : Dynamic;
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
		Round an array to the given number of decimals.
		
		See Also
		--------
		around : equivalent function; see for details.
	**/
	static public function round_(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
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
	static public function set_array_function_like_doc(public_api:Dynamic):Dynamic;
	/**
		Decorator for overriding __module__ on a function or class.
		
		Example usage::
		
		    @set_module('numpy')
		    def example():
		        pass
		
		    assert example.__module__ == 'numpy'
	**/
	static public function set_module(module:Dynamic):Dynamic;
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
		out : ndarray
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
	static public function zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
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