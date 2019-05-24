/* This file is generated, do not edit! */
package numpy.linalg.linalg;
@:pythonImport("numpy.linalg.linalg") extern class Linalg_Module {
	static public var Inf : Dynamic;
	static public var _A : Dynamic;
	static public var _L : Dynamic;
	static public var _N : Dynamic;
	static public var _S : Dynamic;
	static public var _V : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _assertFinite(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _assertNdSquareness(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _assertNoEmpty2d(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _assertRank2(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _assertRankAtLeast2(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _commonType(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _complexType(t:Dynamic, ?_default:Dynamic):Dynamic;
	static public var _complex_types_map : Dynamic;
	static public function _cond_dispatcher(x:Dynamic, ?p:Dynamic):Dynamic;
	static public function _convertarray(a:Dynamic):Dynamic;
	static public function _eigvalsh_dispatcher(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	/**
		_fastCopyAndTranspose(a)
	**/
	static public function _fastCT(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _fastCopyAndTranspose(type:Dynamic, ?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _isEmpty2d(arr:Dynamic):Dynamic;
	/**
		Cast the type t to either double or cdouble.
	**/
	static public function _linalgRealType(t:Dynamic):Dynamic;
	static public var _linalg_error_extobj : Dynamic;
	static public function _lstsq_dispatcher(a:Dynamic, b:Dynamic, ?rcond:Dynamic):Dynamic;
	static public function _makearray(a:Dynamic):Dynamic;
	static public function _matrix_power_dispatcher(a:Dynamic, n:Dynamic):Dynamic;
	static public function _matrix_rank_dispatcher(M:Dynamic, ?tol:Dynamic, ?hermitian:Dynamic):Dynamic;
	/**
		Actually do the multiplication with the given order.
	**/
	static public function _multi_dot(arrays:Dynamic, order:Dynamic, i:Dynamic, j:Dynamic):Dynamic;
	/**
		Return a np.array that encodes the optimal order of mutiplications.
		
		The optimal order array is then used by `_multi_dot()` to do the
		multiplication.
		
		Also return the cost matrix if `return_costs` is `True`
		
		The implementation CLOSELY follows Cormen, "Introduction to Algorithms",
		Chapter 15.2, p. 370-378.  Note that Cormen uses 1-based indices.
		
		    cost[i, j] = min([
		        cost[prefix] + cost[suffix] + cost_mult(prefix, suffix)
		        for k in range(i, j)])
	**/
	static public function _multi_dot_matrix_chain_order(arrays:Dynamic, ?return_costs:Dynamic):Dynamic;
	/**
		Find the best order for three arrays and do the multiplication.
		
		For three arguments `_multi_dot_three` is approximately 15 times faster
		than `_multi_dot_matrix_chain_order`
	**/
	static public function _multi_dot_three(A:Dynamic, B:Dynamic, C:Dynamic):Dynamic;
	/**
		Compute a function of the singular values of the 2-D matrices in `x`.
		
		This is a private utility function used by numpy.linalg.norm().
		
		Parameters
		----------
		x : ndarray
		row_axis, col_axis : int
		    The axes of `x` that hold the 2-D matrices.
		op : callable
		    This should be either numpy.amin or numpy.amax or numpy.sum.
		
		Returns
		-------
		result : float or ndarray
		    If `x` is 2-D, the return values is a float.
		    Otherwise, it is an array with ``x.ndim - 2`` dimensions.
		    The return values are either the minimum or maximum or sum of the
		    singular values of the matrices, depending on whether `op`
		    is `numpy.amin` or `numpy.amax` or `numpy.sum`.
	**/
	static public function _multi_svd_norm(x:Dynamic, row_axis:Dynamic, col_axis:Dynamic, op:Dynamic):Dynamic;
	static public function _multidot_dispatcher(arrays:Dynamic):Dynamic;
	static public function _norm_dispatcher(x:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _pinv_dispatcher(a:Dynamic, ?rcond:Dynamic):Dynamic;
	static public function _qr_dispatcher(a:Dynamic, ?mode:Dynamic):Dynamic;
	static public function _raise_linalgerror_eigenvalues_nonconvergence(err:Dynamic, flag:Dynamic):Dynamic;
	static public function _raise_linalgerror_lstsq(err:Dynamic, flag:Dynamic):Dynamic;
	static public function _raise_linalgerror_nonposdef(err:Dynamic, flag:Dynamic):Dynamic;
	static public function _raise_linalgerror_singular(err:Dynamic, flag:Dynamic):Dynamic;
	static public function _raise_linalgerror_svd_nonconvergence(err:Dynamic, flag:Dynamic):Dynamic;
	static public function _realType(t:Dynamic, ?_default:Dynamic):Dynamic;
	static public var _real_types_map : Dynamic;
	static public function _solve_dispatcher(a:Dynamic, b:Dynamic):Dynamic;
	static public function _svd_dispatcher(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic):Dynamic;
	static public function _tensorinv_dispatcher(a:Dynamic, ?ind:Dynamic):Dynamic;
	static public function _tensorsolve_dispatcher(a:Dynamic, b:Dynamic, ?axes:Dynamic):Dynamic;
	static public function _to_native_byte_order(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _unary_dispatcher(a:Dynamic):Dynamic;
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
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
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
	**/
	static public function abs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		add(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Add arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be added.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
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
	**/
	static public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Test whether all array elements along a given axis evaluate to True.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical AND reduction is performed.
		    The default (`axis` = `None`) is to perform a logical AND over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.
		    It must have the same shape as the expected output and its
		    type is preserved (e.g., if ``dtype(out)`` is float, the result
		    will consist of 0.0's and 1.0's).  See `doc.ufuncs` (Section
		    "Output arguments") for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `all` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
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
		
		>>> o=np.array([False])
		>>> z=np.all([-1, 4, 5], out=o)
		>>> id(z), id(o), z                             # doctest: +SKIP
		(28293632, 28293632, array([ True]))
	**/
	static public function all(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		
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
		
		>>> b = np.arange(5, dtype=float)
		>>> b[2] = np.NaN
		>>> np.amax(b)
		nan
		>>> np.nanmax(b)
		4.0
		
		You can use an initial value to compute the maximum of an empty slice, or
		to initialize it to a different value:
		
		>>> np.max([[-50], [10]], axis=-1, initial=0)
		array([ 0, 10])
		
		Notice that the initial value is used as one of the elements for which the
		maximum is determined, unlike for the default argument Python's max
		function, which is only used for empty iterables.
		
		>>> np.max([5], initial=6)
		6
		>>> max([5], default=6)
		5
	**/
	static public function amax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):Dynamic;
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
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		
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
		
		>>> b = np.arange(5, dtype=float)
		>>> b[2] = np.NaN
		>>> np.amin(b)
		nan
		>>> np.nanmin(b)
		0.0
		
		>>> np.min([[-50], [10]], axis=-1, initial=0)
		array([-50,   0])
		
		Notice that the initial value is used as one of the elements for which the
		minimum is determined, unlike for the default argument Python's max
		function, which is only used for empty iterables.
		
		Notice that this isn't the same as Python's ``default`` argument.
		
		>>> np.min([6], initial=5)
		5
		>>> min([6], default=5)
		6
	**/
	static public function amin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):Dynamic;
	/**
		array(object, dtype=None, copy=True, order='K', subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.  This argument can only be used to 'upcast' the array.  For
		    downcasting, use the .astype(t) method.
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
		    the same as if ``copy=True``, with some exceptions for `A`, see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
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
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	/**
		Convert the input to an ndarray, but pass ndarray subclasses through.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes scalars, lists, lists of tuples, tuples, tuples of tuples,
		    tuples of lists, and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or column-major
		    (Fortran-style) memory representation.  Defaults to 'C'.
		
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
	static public function asanyarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
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
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
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
		array([[ 3.]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_2d(x)
		array([[ 0.,  1.,  2.]])
		>>> np.atleast_2d(x).base is x
		True
		
		>>> np.atleast_2d(1, [1, 2], [[1, 2]])
		[array([[1]]), array([[1, 2]]), array([[1, 2]])]
	**/
	static public function atleast_2d(?arys:python.VarArgs<Dynamic>):numpy.Ndarray;
	/**
		Cholesky decomposition.
		
		Return the Cholesky decomposition, `L * L.H`, of the square matrix `a`,
		where `L` is lower-triangular and .H is the conjugate transpose operator
		(which is the ordinary transpose if `a` is real-valued).  `a` must be
		Hermitian (symmetric if real-valued) and positive-definite.  Only `L` is
		actually returned.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Hermitian (symmetric if all elements are real), positive-definite
		    input matrix.
		
		Returns
		-------
		L : (..., M, M) array_like
		    Upper or lower-triangular Cholesky factor of `a`.  Returns a
		    matrix object if `a` is a matrix object.
		
		Raises
		------
		LinAlgError
		   If the decomposition fails, for example, if `a` is not
		   positive-definite.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The Cholesky decomposition is often used as a fast way of solving
		
		.. math:: A \mathbf{x} = \mathbf{b}
		
		(when `A` is both Hermitian/symmetric and positive-definite).
		
		First, we solve for :math:`\mathbf{y}` in
		
		.. math:: L \mathbf{y} = \mathbf{b},
		
		and then for :math:`\mathbf{x}` in
		
		.. math:: L.H \mathbf{x} = \mathbf{y}.
		
		Examples
		--------
		>>> A = np.array([[1,-2j],[2j,5]])
		>>> A
		array([[ 1.+0.j,  0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
		>>> L = np.linalg.cholesky(A)
		>>> L
		array([[ 1.+0.j,  0.+0.j],
		       [ 0.+2.j,  1.+0.j]])
		>>> np.dot(L, L.T.conj()) # verify that L * L.H = A
		array([[ 1.+0.j,  0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
		>>> A = [[1,-2j],[2j,5]] # what happens if A is only array_like?
		>>> np.linalg.cholesky(A) # an ndarray object is returned
		array([[ 1.+0.j,  0.+0.j],
		       [ 0.+2.j,  1.+0.j]])
		>>> # But a matrix object is returned if A is a matrix object
		>>> LA.cholesky(np.matrix(A))
		matrix([[ 1.+0.j,  0.+0.j],
		        [ 0.+2.j,  1.+0.j]])
	**/
	static public function cholesky(a:Dynamic):Dynamic;
	/**
		Compute the condition number of a matrix.
		
		This function is capable of returning the condition number using
		one of seven different norms, depending on the value of `p` (see
		Parameters below).
		
		Parameters
		----------
		x : (..., M, N) array_like
		    The matrix whose condition number is sought.
		p : {None, 1, -1, 2, -2, inf, -inf, 'fro'}, optional
		    Order of the norm:
		
		    =====  ============================
		    p      norm for matrices
		    =====  ============================
		    None   2-norm, computed directly using the ``SVD``
		    'fro'  Frobenius norm
		    inf    max(sum(abs(x), axis=1))
		    -inf   min(sum(abs(x), axis=1))
		    1      max(sum(abs(x), axis=0))
		    -1     min(sum(abs(x), axis=0))
		    2      2-norm (largest sing. value)
		    -2     smallest singular value
		    =====  ============================
		
		    inf means the numpy.inf object, and the Frobenius norm is
		    the root-of-sum-of-squares norm.
		
		Returns
		-------
		c : {float, inf}
		    The condition number of the matrix. May be infinite.
		
		See Also
		--------
		numpy.linalg.norm
		
		Notes
		-----
		The condition number of `x` is defined as the norm of `x` times the
		norm of the inverse of `x` [1]_; the norm can be the usual L2-norm
		(root-of-sum-of-squares) or one of a number of other matrix norms.
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, Orlando, FL,
		       Academic Press, Inc., 1980, pg. 285.
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.array([[1, 0, -1], [0, 1, 0], [1, 0, 1]])
		>>> a
		array([[ 1,  0, -1],
		       [ 0,  1,  0],
		       [ 1,  0,  1]])
		>>> LA.cond(a)
		1.4142135623730951
		>>> LA.cond(a, 'fro')
		3.1622776601683795
		>>> LA.cond(a, np.inf)
		2.0
		>>> LA.cond(a, -np.inf)
		1.0
		>>> LA.cond(a, 1)
		2.0
		>>> LA.cond(a, -1)
		1.0
		>>> LA.cond(a, 2)
		1.4142135623730951
		>>> LA.cond(a, -2)
		0.70710678118654746
		>>> min(LA.svd(a, compute_uv=0))*min(LA.svd(LA.inv(a), compute_uv=0))
		0.70710678118654746
	**/
	static public function cond(x:Dynamic, ?p:Dynamic):Dynamic;
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
		>>> np.count_nonzero([[0,1,7,0,0],[3,0,0,2,19]])
		5
		>>> np.count_nonzero([[0,1,7,0,0],[3,0,0,2,19]], axis=0)
		array([1, 1, 1, 1, 1])
		>>> np.count_nonzero([[0,1,7,0,0],[3,0,0,2,19]], axis=1)
		array([2, 3])
	**/
	static public function count_nonzero(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the determinant of an array.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Input array to compute determinants for.
		
		Returns
		-------
		det : (...) array_like
		    Determinant of `a`.
		
		See Also
		--------
		slogdet : Another way to represent the determinant, more suitable
		  for large matrices where underflow/overflow may occur.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The determinant is computed via LU factorization using the LAPACK
		routine z/dgetrf.
		
		Examples
		--------
		The determinant of a 2-D array [[a, b], [c, d]] is ad - bc:
		
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.linalg.det(a)
		-2.0
		
		Computing determinants for a stack of matrices:
		
		>>> a = np.array([ [[1, 2], [3, 4]], [[1, 2], [2, 1]], [[1, 3], [3, 1]] ])
		>>> a.shape
		(3, 2, 2)
		>>> np.linalg.det(a)
		array([-2., -3., -8.])
	**/
	static public function det(a:Dynamic):Dynamic;
	/**
		true_divide(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
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
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    This is a scalar if both `x1` and `x2` are scalars.
		
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
	static public function divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
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
		Compute the eigenvalues and right eigenvectors of a square array.
		
		Parameters
		----------
		a : (..., M, M) array
		    Matrices for which the eigenvalues and right eigenvectors will
		    be computed
		
		Returns
		-------
		w : (..., M) array
		    The eigenvalues, each repeated according to its multiplicity.
		    The eigenvalues are not necessarily ordered. The resulting
		    array will be of complex type, unless the imaginary part is
		    zero in which case it will be cast to a real type. When `a`
		    is real the resulting eigenvalues will be real (0 imaginary
		    part) or occur in conjugate pairs
		
		v : (..., M, M) array
		    The normalized (unit "length") eigenvectors, such that the
		    column ``v[:,i]`` is the eigenvector corresponding to the
		    eigenvalue ``w[i]``.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eigvals : eigenvalues of a non-symmetric array.
		
		eigh : eigenvalues and eigenvectors of a real symmetric or complex 
		       Hermitian (conjugate symmetric) array.
		
		eigvalsh : eigenvalues of a real symmetric or complex Hermitian
		           (conjugate symmetric) array.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		This is implemented using the _geev LAPACK routines which compute
		the eigenvalues and eigenvectors of general square arrays.
		
		The number `w` is an eigenvalue of `a` if there exists a vector
		`v` such that ``dot(a,v) = w * v``. Thus, the arrays `a`, `w`, and
		`v` satisfy the equations ``dot(a[:,:], v[:,i]) = w[i] * v[:,i]``
		for :math:`i \in \{0,...,M-1\}`.
		
		The array `v` of eigenvectors may not be of maximum rank, that is, some
		of the columns may be linearly dependent, although round-off error may
		obscure that fact. If the eigenvalues are all different, then theoretically
		the eigenvectors are linearly independent. Likewise, the (complex-valued)
		matrix of eigenvectors `v` is unitary if the matrix `a` is normal, i.e.,
		if ``dot(a, a.H) = dot(a.H, a)``, where `a.H` denotes the conjugate
		transpose of `a`.
		
		Finally, it is emphasized that `v` consists of the *right* (as in
		right-hand side) eigenvectors of `a`.  A vector `y` satisfying
		``dot(y.T, a) = z * y.T`` for some number `z` is called a *left*
		eigenvector of `a`, and, in general, the left and right eigenvectors
		of a matrix are not necessarily the (perhaps conjugate) transposes
		of each other.
		
		References
		----------
		G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando, FL,
		Academic Press, Inc., 1980, Various pp.
		
		Examples
		--------
		>>> from numpy import linalg as LA
		
		(Almost) trivial example with real e-values and e-vectors.
		
		>>> w, v = LA.eig(np.diag((1, 2, 3)))
		>>> w; v
		array([ 1.,  2.,  3.])
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		
		Real matrix possessing complex e-values and e-vectors; note that the
		e-values are complex conjugates of each other.
		
		>>> w, v = LA.eig(np.array([[1, -1], [1, 1]]))
		>>> w; v
		array([ 1. + 1.j,  1. - 1.j])
		array([[ 0.70710678+0.j        ,  0.70710678+0.j        ],
		       [ 0.00000000-0.70710678j,  0.00000000+0.70710678j]])
		
		Complex-valued matrix with real e-values (but complex-valued e-vectors);
		note that a.conj().T = a, i.e., a is Hermitian.
		
		>>> a = np.array([[1, 1j], [-1j, 1]])
		>>> w, v = LA.eig(a)
		>>> w; v
		array([  2.00000000e+00+0.j,   5.98651912e-36+0.j]) # i.e., {2, 0}
		array([[ 0.00000000+0.70710678j,  0.70710678+0.j        ],
		       [ 0.70710678+0.j        ,  0.00000000+0.70710678j]])
		
		Be careful about round-off error!
		
		>>> a = np.array([[1 + 1e-9, 0], [0, 1 - 1e-9]])
		>>> # Theor. e-values are 1 +/- 1e-9
		>>> w, v = LA.eig(a)
		>>> w; v
		array([ 1.,  1.])
		array([[ 1.,  0.],
		       [ 0.,  1.]])
	**/
	static public function eig(a:Dynamic):Dynamic;
	/**
		Return the eigenvalues and eigenvectors of a complex Hermitian
		(conjugate symmetric) or a real symmetric matrix.
		
		Returns two objects, a 1-D array containing the eigenvalues of `a`, and
		a 2-D square array or matrix (depending on the input type) of the
		corresponding eigenvectors (in columns).
		
		Parameters
		----------
		a : (..., M, M) array
		    Hermitian or real symmetric matrices whose eigenvalues and
		    eigenvectors are to be computed.
		UPLO : {'L', 'U'}, optional
		    Specifies whether the calculation is done with the lower triangular
		    part of `a` ('L', default) or the upper triangular part ('U').
		    Irrespective of this value only the real parts of the diagonal will
		    be considered in the computation to preserve the notion of a Hermitian
		    matrix. It therefore follows that the imaginary part of the diagonal
		    will always be treated as zero.
		
		Returns
		-------
		w : (..., M) ndarray
		    The eigenvalues in ascending order, each repeated according to
		    its multiplicity.
		v : {(..., M, M) ndarray, (..., M, M) matrix}
		    The column ``v[:, i]`` is the normalized eigenvector corresponding
		    to the eigenvalue ``w[i]``.  Will return a matrix object if `a` is
		    a matrix object.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eigvalsh : eigenvalues of real symmetric or complex Hermitian
		           (conjugate symmetric) arrays.
		eig : eigenvalues and right eigenvectors for non-symmetric arrays.
		eigvals : eigenvalues of non-symmetric arrays.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The eigenvalues/eigenvectors are computed using LAPACK routines _syevd,
		_heevd
		
		The eigenvalues of real symmetric or complex Hermitian matrices are
		always real. [1]_ The array `v` of (column) eigenvectors is unitary
		and `a`, `w`, and `v` satisfy the equations
		``dot(a, v[:, i]) = w[i] * v[:, i]``.
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando,
		       FL, Academic Press, Inc., 1980, pg. 222.
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.array([[1, -2j], [2j, 5]])
		>>> a
		array([[ 1.+0.j,  0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
		>>> w, v = LA.eigh(a)
		>>> w; v
		array([ 0.17157288,  5.82842712])
		array([[-0.92387953+0.j        , -0.38268343+0.j        ],
		       [ 0.00000000+0.38268343j,  0.00000000-0.92387953j]])
		
		>>> np.dot(a, v[:, 0]) - w[0] * v[:, 0] # verify 1st e-val/vec pair
		array([2.77555756e-17 + 0.j, 0. + 1.38777878e-16j])
		>>> np.dot(a, v[:, 1]) - w[1] * v[:, 1] # verify 2nd e-val/vec pair
		array([ 0.+0.j,  0.+0.j])
		
		>>> A = np.matrix(a) # what happens if input is a matrix object
		>>> A
		matrix([[ 1.+0.j,  0.-2.j],
		        [ 0.+2.j,  5.+0.j]])
		>>> w, v = LA.eigh(A)
		>>> w; v
		array([ 0.17157288,  5.82842712])
		matrix([[-0.92387953+0.j        , -0.38268343+0.j        ],
		        [ 0.00000000+0.38268343j,  0.00000000-0.92387953j]])
		
		>>> # demonstrate the treatment of the imaginary part of the diagonal
		>>> a = np.array([[5+2j, 9-2j], [0+2j, 2-1j]])
		>>> a
		array([[ 5.+2.j,  9.-2.j],
		       [ 0.+2.j,  2.-1.j]])
		>>> # with UPLO='L' this is numerically equivalent to using LA.eig() with:
		>>> b = np.array([[5.+0.j, 0.-2.j], [0.+2.j, 2.-0.j]])
		>>> b
		array([[ 5.+0.j,  0.-2.j],
		       [ 0.+2.j,  2.+0.j]])
		>>> wa, va = LA.eigh(a)
		>>> wb, vb = LA.eig(b)
		>>> wa; wb
		array([ 1.,  6.])
		array([ 6.+0.j,  1.+0.j])
		>>> va; vb
		array([[-0.44721360-0.j        , -0.89442719+0.j        ],
		       [ 0.00000000+0.89442719j,  0.00000000-0.4472136j ]])
		array([[ 0.89442719+0.j       ,  0.00000000-0.4472136j],
		       [ 0.00000000-0.4472136j,  0.89442719+0.j       ]])
	**/
	static public function eigh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	/**
		Compute the eigenvalues of a general matrix.
		
		Main difference between `eigvals` and `eig`: the eigenvectors aren't
		returned.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    A complex- or real-valued matrix whose eigenvalues will be computed.
		
		Returns
		-------
		w : (..., M,) ndarray
		    The eigenvalues, each repeated according to its multiplicity.
		    They are not necessarily ordered, nor are they necessarily
		    real for real matrices.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eig : eigenvalues and right eigenvectors of general arrays
		eigvalsh : eigenvalues of real symmetric or complex Hermitian 
		           (conjugate symmetric) arrays.
		eigh : eigenvalues and eigenvectors of real symmetric or complex
		       Hermitian (conjugate symmetric) arrays.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		This is implemented using the _geev LAPACK routines which compute
		the eigenvalues and eigenvectors of general square arrays.
		
		Examples
		--------
		Illustration, using the fact that the eigenvalues of a diagonal matrix
		are its diagonal elements, that multiplying a matrix on the left
		by an orthogonal matrix, `Q`, and on the right by `Q.T` (the transpose
		of `Q`), preserves the eigenvalues of the "middle" matrix.  In other words,
		if `Q` is orthogonal, then ``Q * A * Q.T`` has the same eigenvalues as
		``A``:
		
		>>> from numpy import linalg as LA
		>>> x = np.random.random()
		>>> Q = np.array([[np.cos(x), -np.sin(x)], [np.sin(x), np.cos(x)]])
		>>> LA.norm(Q[0, :]), LA.norm(Q[1, :]), np.dot(Q[0, :],Q[1, :])
		(1.0, 1.0, 0.0)
		
		Now multiply a diagonal matrix by Q on one side and by Q.T on the other:
		
		>>> D = np.diag((-1,1))
		>>> LA.eigvals(D)
		array([-1.,  1.])
		>>> A = np.dot(Q, D)
		>>> A = np.dot(A, Q.T)
		>>> LA.eigvals(A)
		array([ 1., -1.])
	**/
	static public function eigvals(a:Dynamic):Dynamic;
	/**
		Compute the eigenvalues of a complex Hermitian or real symmetric matrix.
		
		Main difference from eigh: the eigenvectors are not computed.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    A complex- or real-valued matrix whose eigenvalues are to be
		    computed.
		UPLO : {'L', 'U'}, optional
		    Specifies whether the calculation is done with the lower triangular
		    part of `a` ('L', default) or the upper triangular part ('U').
		    Irrespective of this value only the real parts of the diagonal will
		    be considered in the computation to preserve the notion of a Hermitian
		    matrix. It therefore follows that the imaginary part of the diagonal
		    will always be treated as zero.
		
		Returns
		-------
		w : (..., M,) ndarray
		    The eigenvalues in ascending order, each repeated according to
		    its multiplicity.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eigh : eigenvalues and eigenvectors of real symmetric or complex Hermitian
		       (conjugate symmetric) arrays.
		eigvals : eigenvalues of general real or complex arrays.
		eig : eigenvalues and right eigenvectors of general real or complex
		      arrays.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The eigenvalues are computed using LAPACK routines _syevd, _heevd
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.array([[1, -2j], [2j, 5]])
		>>> LA.eigvalsh(a)
		array([ 0.17157288,  5.82842712])
		
		>>> # demonstrate the treatment of the imaginary part of the diagonal
		>>> a = np.array([[5+2j, 9-2j], [0+2j, 2-1j]])
		>>> a
		array([[ 5.+2.j,  9.-2.j],
		       [ 0.+2.j,  2.-1.j]])
		>>> # with UPLO='L' this is numerically equivalent to using LA.eigvals()
		>>> # with:
		>>> b = np.array([[5.+0.j, 0.-2.j], [0.+2.j, 2.-0.j]])
		>>> b
		array([[ 5.+0.j,  0.-2.j],
		       [ 0.+2.j,  2.+0.j]])
		>>> wa = LA.eigvalsh(a)
		>>> wb = LA.eigvals(b)
		>>> wa; wb
		array([ 1.,  6.])
		array([ 6.+0.j,  1.+0.j])
	**/
	static public function eigvalsh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	/**
		empty(shape, dtype=float, order='C')
		
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
		       [  2.13182611e-314,   3.06959433e-309]])         #random
		
		>>> np.empty([2, 2], dtype=int)
		array([[-1073741821, -1067949133],
		       [  496041986,    19249760]])                     #random
	**/
	static public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		empty_like(prototype, dtype=None, order='K', subok=True)
		
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
		    'F' means F-order, 'A' means 'F' if ``prototype`` is Fortran
		    contiguous, 'C' otherwise. 'K' means match the layout of ``prototype``
		    as closely as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
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
		array([[-1073741821, -1073741821,           3],    #random
		       [          0,           0, -1073741821]])
		>>> a = np.array([[1., 2., 3.],[4.,5.,6.]])
		>>> np.empty_like(a)
		array([[ -2.00000715e+000,   1.48219694e-323,  -2.00000572e+000],#random
		       [  4.38791518e-305,  -2.00000715e+000,   4.17269252e-309]])
	**/
	static public function empty_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a 2-D array with ones on the diagonal and zeros elsewhere.
		
		Parameters
		----------
		N : int
		  Number of rows in the output.
		M : int, optional
		  Number of columns in the output. If None, defaults to `N`.
		k : int, optional
		  Index of the diagonal: 0 (the default) refers to the main diagonal,
		  a positive value refers to an upper diagonal, and a negative value
		  to a lower diagonal.
		dtype : data-type, optional
		  Data-type of the returned array.
		order : {'C', 'F'}, optional
		    Whether the output should be stored in row-major (C-style) or
		    column-major (Fortran-style) order in memory.
		
		    .. versionadded:: 1.14.0
		
		Returns
		-------
		I : ndarray of shape (N,M)
		  An array where all elements are equal to zero, except for the `k`-th
		  diagonal, whose values are equal to one.
		
		See Also
		--------
		identity : (almost) equivalent function
		diag : diagonal 2-D array from a 1-D array specified by the user.
		
		Examples
		--------
		>>> np.eye(2, dtype=int)
		array([[1, 0],
		       [0, 1]])
		>>> np.eye(3, k=1)
		array([[ 0.,  1.,  0.],
		       [ 0.,  0.,  1.],
		       [ 0.,  0.,  0.]])
	**/
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		_fastCopyAndTranspose(a)
	**/
	static public function fastCopyAndTranspose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_linalg_error_extobj(callback:Dynamic):Dynamic;
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
		[10000, 0, None]
		
		>>> def err_handler(type, flag):
		...     print("Floating point error (%s), with flag %s" % (type, flag))
		...
		>>> old_bufsize = np.setbufsize(20000)
		>>> old_err = np.seterr(divide='raise')
		>>> old_handler = np.seterrcall(err_handler)
		>>> np.geterrobj()
		[20000, 2, <function err_handler at 0x91dcaac>]
		
		>>> old_err = np.seterr(all='ignore')
		>>> np.base_repr(np.geterrobj()[1], 8)
		'0'
		>>> old_err = np.seterr(divide='warn', over='log', under='call',
		                        invalid='print')
		>>> np.base_repr(np.geterrobj()[1], 8)
		'4351'
	**/
	static public function geterrobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the (multiplicative) inverse of a matrix.
		
		Given a square matrix `a`, return the matrix `ainv` satisfying
		``dot(a, ainv) = dot(ainv, a) = eye(a.shape[0])``.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Matrix to be inverted.
		
		Returns
		-------
		ainv : (..., M, M) ndarray or matrix
		    (Multiplicative) inverse of the matrix `a`.
		
		Raises
		------
		LinAlgError
		    If `a` is not square or inversion fails.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		Examples
		--------
		>>> from numpy.linalg import inv
		>>> a = np.array([[1., 2.], [3., 4.]])
		>>> ainv = inv(a)
		>>> np.allclose(np.dot(a, ainv), np.eye(2))
		True
		>>> np.allclose(np.dot(ainv, a), np.eye(2))
		True
		
		If a is a matrix object, then the return value is a matrix as well:
		
		>>> ainv = inv(np.matrix(a))
		>>> ainv
		matrix([[-2. ,  1. ],
		        [ 1.5, -0.5]])
		
		Inverses of several matrices can be computed at once:
		
		>>> a = np.array([[[1., 2.], [3., 4.]], [[1, 3], [3, 5]]])
		>>> inv(a)
		array([[[-2. ,  1. ],
		        [ 1.5, -0.5]],
		       [[-5. ,  2. ],
		        [ 3. , -1. ]]])
	**/
	static public function inv(a:Dynamic):Dynamic;
	static public function isComplexType(t:Dynamic):Dynamic;
	/**
		isfinite(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for finiteness (not infinity or not Not a Number).
		
		The result is returned as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
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
		isnan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for NaN and return result as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
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
		Return the least-squares solution to a linear matrix equation.
		
		Solves the equation `a x = b` by computing a vector `x` that
		minimizes the Euclidean 2-norm `|| b - a x ||^2`.  The equation may
		be under-, well-, or over- determined (i.e., the number of
		linearly independent rows of `a` can be less than, equal to, or
		greater than its number of linearly independent columns).  If `a`
		is square and of full rank, then `x` (but for round-off error) is
		the "exact" solution of the equation.
		
		Parameters
		----------
		a : (M, N) array_like
		    "Coefficient" matrix.
		b : {(M,), (M, K)} array_like
		    Ordinate or "dependent variable" values. If `b` is two-dimensional,
		    the least-squares solution is calculated for each of the `K` columns
		    of `b`.
		rcond : float, optional
		    Cut-off ratio for small singular values of `a`.
		    For the purposes of rank determination, singular values are treated
		    as zero if they are smaller than `rcond` times the largest singular
		    value of `a`.
		
		    .. versionchanged:: 1.14.0
		       If not set, a FutureWarning is given. The previous default
		       of ``-1`` will use the machine precision as `rcond` parameter,
		       the new default will use the machine precision times `max(M, N)`.
		       To silence the warning and use the new default, use ``rcond=None``,
		       to keep using the old behavior, use ``rcond=-1``.
		
		Returns
		-------
		x : {(N,), (N, K)} ndarray
		    Least-squares solution. If `b` is two-dimensional,
		    the solutions are in the `K` columns of `x`.
		residuals : {(1,), (K,), (0,)} ndarray
		    Sums of residuals; squared Euclidean 2-norm for each column in
		    ``b - a*x``.
		    If the rank of `a` is < N or M <= N, this is an empty array.
		    If `b` is 1-dimensional, this is a (1,) shape array.
		    Otherwise the shape is (K,).
		rank : int
		    Rank of matrix `a`.
		s : (min(M, N),) ndarray
		    Singular values of `a`.
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		Notes
		-----
		If `b` is a matrix, then all array results are returned as matrices.
		
		Examples
		--------
		Fit a line, ``y = mx + c``, through some noisy data-points:
		
		>>> x = np.array([0, 1, 2, 3])
		>>> y = np.array([-1, 0.2, 0.9, 2.1])
		
		By examining the coefficients, we see that the line should have a
		gradient of roughly 1 and cut the y-axis at, more or less, -1.
		
		We can rewrite the line equation as ``y = Ap``, where ``A = [[x 1]]``
		and ``p = [[m], [c]]``.  Now use `lstsq` to solve for `p`:
		
		>>> A = np.vstack([x, np.ones(len(x))]).T
		>>> A
		array([[ 0.,  1.],
		       [ 1.,  1.],
		       [ 2.,  1.],
		       [ 3.,  1.]])
		
		>>> m, c = np.linalg.lstsq(A, y, rcond=None)[0]
		>>> print(m, c)
		1.0 -0.95
		
		Plot the data along with the fitted line:
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'o', label='Original data', markersize=10)
		>>> plt.plot(x, m*x + c, 'r', label='Fitted line')
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?rcond:Dynamic):Dynamic;
	/**
		matmul(x1, x2, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Matrix product of two arrays.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays, scalars not allowed.
		out : ndarray, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that matches the signature `(n,k),(k,m)->(n,m)`. If not
		    provided or `None`, a freshly-allocated array is returned.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		    ..versionadded:: 1.16
		      Now handles ufunc kwargs
		
		Returns
		-------
		y : ndarray
		    The matrix product of the inputs.
		    This is a scalar only when both x1, x2 are 1-d vectors.
		
		Raises
		------
		ValueError
		    If the last dimension of `a` is not the same size as
		    the second-to-last dimension of `b`.
		
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
		
		The matmul function implements the semantics of the `@` operator introduced
		in Python 3.5 following PEP465.
		
		Examples
		--------
		For 2-D arrays it is the matrix product:
		
		>>> a = np.array([[1, 0],
		...               [0, 1]])
		>>> b = np.array([[4, 1],
		...               [2, 2]]
		>>> np.matmul(a, b)
		array([[4, 1],
		       [2, 2]])
		
		For 2-D mixed with 1-D, the result is the usual.
		
		>>> a = np.array([[1, 0],
		...               [0, 1]]
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
		
		.. versionadded:: 1.10.0
	**/
	static public function matmul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Raise a square matrix to the (integer) power `n`.
		
		For positive integers `n`, the power is computed by repeated matrix
		squarings and matrix multiplications. If ``n == 0``, the identity matrix
		of the same shape as M is returned. If ``n < 0``, the inverse
		is computed and then raised to the ``abs(n)``.
		
		.. note:: Stacks of object matrices are not currently supported.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Matrix to be "powered."
		n : int
		    The exponent can be any integer or long integer, positive,
		    negative, or zero.
		
		Returns
		-------
		a**n : (..., M, M) ndarray or matrix object
		    The return value is the same shape and type as `M`;
		    if the exponent is positive or zero then the type of the
		    elements is the same as those of `M`. If the exponent is
		    negative the elements are floating-point.
		
		Raises
		------
		LinAlgError
		    For matrices that are not square or that (for negative powers) cannot
		    be inverted numerically.
		
		Examples
		--------
		>>> from numpy.linalg import matrix_power
		>>> i = np.array([[0, 1], [-1, 0]]) # matrix equiv. of the imaginary unit
		>>> matrix_power(i, 3) # should = -i
		array([[ 0, -1],
		       [ 1,  0]])
		>>> matrix_power(i, 0)
		array([[1, 0],
		       [0, 1]])
		>>> matrix_power(i, -3) # should = 1/(-i) = i, but w/ f.p. elements
		array([[ 0.,  1.],
		       [-1.,  0.]])
		
		Somewhat more sophisticated example
		
		>>> q = np.zeros((4, 4))
		>>> q[0:2, 0:2] = -i
		>>> q[2:4, 2:4] = i
		>>> q # one of the three quaternion units not equal to 1
		array([[ 0., -1.,  0.,  0.],
		       [ 1.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  1.],
		       [ 0.,  0., -1.,  0.]])
		>>> matrix_power(q, 2) # = -np.eye(4)
		array([[-1.,  0.,  0.,  0.],
		       [ 0., -1.,  0.,  0.],
		       [ 0.,  0., -1.,  0.],
		       [ 0.,  0.,  0., -1.]])
	**/
	static public function matrix_power(a:Dynamic, n:Dynamic):Dynamic;
	/**
		Return matrix rank of array using SVD method
		
		Rank of the array is the number of singular values of the array that are
		greater than `tol`.
		
		.. versionchanged:: 1.14
		   Can now operate on stacks of matrices
		
		Parameters
		----------
		M : {(M,), (..., M, N)} array_like
		    input vector or stack of matrices
		tol : (...) array_like, float, optional
		    threshold below which SVD values are considered zero. If `tol` is
		    None, and ``S`` is an array with singular values for `M`, and
		    ``eps`` is the epsilon value for datatype of ``S``, then `tol` is
		    set to ``S.max() * max(M.shape) * eps``.
		
		    .. versionchanged:: 1.14
		       Broadcasted against the stack of matrices
		hermitian : bool, optional
		    If True, `M` is assumed to be Hermitian (symmetric if real-valued),
		    enabling a more efficient method for finding singular values.
		    Defaults to False.
		
		    .. versionadded:: 1.14
		
		Notes
		-----
		The default threshold to detect rank deficiency is a test on the magnitude
		of the singular values of `M`.  By default, we identify singular values less
		than ``S.max() * max(M.shape) * eps`` as indicating rank deficiency (with
		the symbols defined above). This is the algorithm MATLAB uses [1].  It also
		appears in *Numerical recipes* in the discussion of SVD solutions for linear
		least squares [2].
		
		This default threshold is designed to detect rank deficiency accounting for
		the numerical errors of the SVD computation.  Imagine that there is a column
		in `M` that is an exact (in floating point) linear combination of other
		columns in `M`. Computing the SVD on `M` will not produce a singular value
		exactly equal to 0 in general: any difference of the smallest SVD value from
		0 will be caused by numerical imprecision in the calculation of the SVD.
		Our threshold for small SVD values takes this numerical imprecision into
		account, and the default threshold will detect such numerical rank
		deficiency.  The threshold may declare a matrix `M` rank deficient even if
		the linear combination of some columns of `M` is not exactly equal to
		another column of `M` but only numerically very close to another column of
		`M`.
		
		We chose our default threshold because it is in wide use.  Other thresholds
		are possible.  For example, elsewhere in the 2007 edition of *Numerical
		recipes* there is an alternative threshold of ``S.max() *
		np.finfo(M.dtype).eps / 2. * np.sqrt(m + n + 1.)``. The authors describe
		this threshold as being based on "expected roundoff error" (p 71).
		
		The thresholds above deal with floating point roundoff error in the
		calculation of the SVD.  However, you may have more information about the
		sources of error in `M` that would make you consider other tolerance values
		to detect *effective* rank deficiency.  The most useful measure of the
		tolerance depends on the operations you intend to use on your matrix.  For
		example, if your data come from uncertain measurements with uncertainties
		greater than floating point epsilon, choosing a tolerance near that
		uncertainty may be preferable.  The tolerance may be absolute if the
		uncertainties are absolute rather than relative.
		
		References
		----------
		.. [1] MATLAB reference documention, "Rank"
		       https://www.mathworks.com/help/techdoc/ref/rank.html
		.. [2] W. H. Press, S. A. Teukolsky, W. T. Vetterling and B. P. Flannery,
		       "Numerical Recipes (3rd edition)", Cambridge University Press, 2007,
		       page 795.
		
		Examples
		--------
		>>> from numpy.linalg import matrix_rank
		>>> matrix_rank(np.eye(4)) # Full rank matrix
		4
		>>> I=np.eye(4); I[-1,-1] = 0. # rank deficient matrix
		>>> matrix_rank(I)
		3
		>>> matrix_rank(np.ones((4,))) # 1 dimension - rank 1 unless all 0
		1
		>>> matrix_rank(np.zeros((4,)))
		0
	**/
	static public function matrix_rank(M:Dynamic, ?tol:Dynamic, ?hermitian:Dynamic):Dynamic;
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
		transpose: Permute the dimensions of an array.
		swapaxes: Interchange two axes of an array.
		
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
		Compute the dot product of two or more arrays in a single function call,
		while automatically selecting the fastest evaluation order.
		
		`multi_dot` chains `numpy.dot` and uses optimal parenthesization
		of the matrices [1]_ [2]_. Depending on the shapes of the matrices,
		this can speed up the multiplication a lot.
		
		If the first argument is 1-D it is treated as a row vector.
		If the last argument is 1-D it is treated as a column vector.
		The other arguments must be 2-D.
		
		Think of `multi_dot` as::
		
		    def multi_dot(arrays): return functools.reduce(np.dot, arrays)
		
		
		Parameters
		----------
		arrays : sequence of array_like
		    If the first argument is 1-D it is treated as row vector.
		    If the last argument is 1-D it is treated as column vector.
		    The other arguments must be 2-D.
		
		Returns
		-------
		output : ndarray
		    Returns the dot product of the supplied arrays.
		
		See Also
		--------
		dot : dot multiplication with two arguments.
		
		References
		----------
		
		.. [1] Cormen, "Introduction to Algorithms", Chapter 15.2, p. 370-378
		.. [2] https://en.wikipedia.org/wiki/Matrix_chain_multiplication
		
		Examples
		--------
		`multi_dot` allows you to write::
		
		>>> from numpy.linalg import multi_dot
		>>> # Prepare some data
		>>> A = np.random.random(10000, 100)
		>>> B = np.random.random(100, 1000)
		>>> C = np.random.random(1000, 5)
		>>> D = np.random.random(5, 333)
		>>> # the actual dot multiplication
		>>> multi_dot([A, B, C, D])
		
		instead of::
		
		>>> np.dot(np.dot(np.dot(A, B), C), D)
		>>> # or
		>>> A.dot(B).dot(C).dot(D)
		
		Notes
		-----
		The cost for a matrix multiplication can be calculated with the
		following function::
		
		    def cost(A, B):
		        return A.shape[0] * A.shape[1] * B.shape[1]
		
		Let's assume we have three matrices
		:math:`A_{10x100}, B_{100x5}, C_{5x50}`.
		
		The costs for the two different parenthesizations are as follows::
		
		    cost((AB)C) = 10*100*5 + 10*5*50   = 5000 + 2500   = 7500
		    cost(A(BC)) = 10*100*50 + 100*5*50 = 50000 + 25000 = 75000
	**/
	static public function multi_dot(arrays:Dynamic):numpy.Ndarray;
	/**
		multiply(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Multiply arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays to be multiplied.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
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
	**/
	static public function multiply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var newaxis : Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of eight different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		x : array_like
		    Input array.  If `axis` is None, `x` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro', 'nuc'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object.
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `x` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `x`
		    is 1-D) or a matrix norm (when `x` is 2-D) is returned.
		
		    .. versionadded:: 1.8.0
		
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `x`.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		n : float or ndarray
		    Norm of the matrix or vector(s).
		
		Notes
		-----
		For values of ``ord <= 0``, the result is, strictly speaking, not a
		mathematical 'norm', but it may still be useful for various numerical
		purposes.
		
		The following norms can be calculated:
		
		=====  ============================  ==========================
		ord    norm for matrices             norm for vectors
		=====  ============================  ==========================
		None   Frobenius norm                2-norm
		'fro'  Frobenius norm                --
		'nuc'  nuclear norm                  --
		inf    max(sum(abs(x), axis=1))      max(abs(x))
		-inf   min(sum(abs(x), axis=1))      min(abs(x))
		0      --                            sum(x != 0)
		1      max(sum(abs(x), axis=0))      as below
		-1     min(sum(abs(x), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(x)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The nuclear norm is the sum of the singular values.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.arange(9) - 4
		>>> a
		array([-4, -3, -2, -1,  0,  1,  2,  3,  4])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4, -3, -2],
		       [-1,  0,  1],
		       [ 2,  3,  4]])
		
		>>> LA.norm(a)
		7.745966692414834
		>>> LA.norm(b)
		7.745966692414834
		>>> LA.norm(b, 'fro')
		7.745966692414834
		>>> LA.norm(a, np.inf)
		4.0
		>>> LA.norm(b, np.inf)
		9.0
		>>> LA.norm(a, -np.inf)
		0.0
		>>> LA.norm(b, -np.inf)
		2.0
		
		>>> LA.norm(a, 1)
		20.0
		>>> LA.norm(b, 1)
		7.0
		>>> LA.norm(a, -1)
		-4.6566128774142013e-010
		>>> LA.norm(b, -1)
		6.0
		>>> LA.norm(a, 2)
		7.745966692414834
		>>> LA.norm(b, 2)
		7.3484692283495345
		
		>>> LA.norm(a, -2)
		nan
		>>> LA.norm(b, -2)
		1.8570331885190563e-016
		>>> LA.norm(a, 3)
		5.8480354764257312
		>>> LA.norm(a, -3)
		nan
		
		Using the `axis` argument to compute vector norms:
		
		>>> c = np.array([[ 1, 2, 3],
		...               [-1, 1, 4]])
		>>> LA.norm(c, axis=0)
		array([ 1.41421356,  2.23606798,  5.        ])
		>>> LA.norm(c, axis=1)
		array([ 3.74165739,  4.24264069])
		>>> LA.norm(c, ord=1, axis=1)
		array([ 6.,  6.])
		
		Using the `axis` argument to compute matrix norms:
		
		>>> m = np.arange(8).reshape(2,2,2)
		>>> LA.norm(m, axis=(1,2))
		array([  3.74165739,  11.22497216])
		>>> LA.norm(m[0, :, :]), LA.norm(m[1, :, :])
		(3.7416573867739413, 11.224972160321824)
	**/
	static public function norm(x:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate the generalized inverse of a matrix using its
		singular-value decomposition (SVD) and including all
		*large* singular values.
		
		.. versionchanged:: 1.14
		   Can now operate on stacks of matrices
		
		Parameters
		----------
		a : (..., M, N) array_like
		    Matrix or stack of matrices to be pseudo-inverted.
		rcond : (...) array_like of float
		    Cutoff for small singular values.
		    Singular values smaller (in modulus) than
		    `rcond` * largest_singular_value (again, in modulus)
		    are set to zero. Broadcasts against the stack of matrices
		
		Returns
		-------
		B : (..., N, M) ndarray
		    The pseudo-inverse of `a`. If `a` is a `matrix` instance, then so
		    is `B`.
		
		Raises
		------
		LinAlgError
		    If the SVD computation does not converge.
		
		Notes
		-----
		The pseudo-inverse of a matrix A, denoted :math:`A^+`, is
		defined as: "the matrix that 'solves' [the least-squares problem]
		:math:`Ax = b`," i.e., if :math:`\bar{x}` is said solution, then
		:math:`A^+` is that matrix such that :math:`\bar{x} = A^+b`.
		
		It can be shown that if :math:`Q_1 \Sigma Q_2^T = A` is the singular
		value decomposition of A, then
		:math:`A^+ = Q_2 \Sigma^+ Q_1^T`, where :math:`Q_{1,2}` are
		orthogonal matrices, :math:`\Sigma` is a diagonal matrix consisting
		of A's so-called singular values, (followed, typically, by
		zeros), and then :math:`\Sigma^+` is simply the diagonal matrix
		consisting of the reciprocals of A's singular values
		(again, followed by zeros). [1]_
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando,
		       FL, Academic Press, Inc., 1980, pp. 139-142.
		
		Examples
		--------
		The following example checks that ``a * a+ * a == a`` and
		``a+ * a * a+ == a+``:
		
		>>> a = np.random.randn(9, 6)
		>>> B = np.linalg.pinv(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinv(a:Dynamic, ?rcond:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		See Also
		--------
		prod : equivalent function; see for details.
	**/
	static public function product(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the qr factorization of a matrix.
		
		Factor the matrix `a` as *qr*, where `q` is orthonormal and `r` is
		upper-triangular.
		
		Parameters
		----------
		a : array_like, shape (M, N)
		    Matrix to be factored.
		mode : {'reduced', 'complete', 'r', 'raw', 'full', 'economic'}, optional
		    If K = min(M, N), then
		
		    * 'reduced'  : returns q, r with dimensions (M, K), (K, N) (default)
		    * 'complete' : returns q, r with dimensions (M, M), (M, N)
		    * 'r'        : returns r only with dimensions (K, N)
		    * 'raw'      : returns h, tau with dimensions (N, M), (K,)
		    * 'full'     : alias of 'reduced', deprecated
		    * 'economic' : returns h from 'raw', deprecated.
		
		    The options 'reduced', 'complete, and 'raw' are new in numpy 1.8,
		    see the notes for more information. The default is 'reduced', and to
		    maintain backward compatibility with earlier versions of numpy both
		    it and the old default 'full' can be omitted. Note that array h
		    returned in 'raw' mode is transposed for calling Fortran. The
		    'economic' mode is deprecated.  The modes 'full' and 'economic' may
		    be passed using only the first letter for backwards compatibility,
		    but all others must be spelled out. See the Notes for more
		    explanation.
		
		
		Returns
		-------
		q : ndarray of float or complex, optional
		    A matrix with orthonormal columns. When mode = 'complete' the
		    result is an orthogonal/unitary matrix depending on whether or not
		    a is real/complex. The determinant may be either +/- 1 in that
		    case.
		r : ndarray of float or complex, optional
		    The upper-triangular matrix.
		(h, tau) : ndarrays of np.double or np.cdouble, optional
		    The array h contains the Householder reflectors that generate q
		    along with r. The tau array contains scaling factors for the
		    reflectors. In the deprecated  'economic' mode only h is returned.
		
		Raises
		------
		LinAlgError
		    If factoring fails.
		
		Notes
		-----
		This is an interface to the LAPACK routines dgeqrf, zgeqrf,
		dorgqr, and zungqr.
		
		For more information on the qr factorization, see for example:
		https://en.wikipedia.org/wiki/QR_factorization
		
		Subclasses of `ndarray` are preserved except for the 'raw' mode. So if
		`a` is of type `matrix`, all the return values will be matrices too.
		
		New 'reduced', 'complete', and 'raw' options for mode were added in
		NumPy 1.8.0 and the old option 'full' was made an alias of 'reduced'.  In
		addition the options 'full' and 'economic' were deprecated.  Because
		'full' was the previous default and 'reduced' is the new default,
		backward compatibility can be maintained by letting `mode` default.
		The 'raw' option was added so that LAPACK routines that can multiply
		arrays by q using the Householder reflectors can be used. Note that in
		this case the returned arrays are of type np.double or np.cdouble and
		the h array is transposed to be FORTRAN compatible.  No routines using
		the 'raw' return are currently exposed by numpy, but some are available
		in lapack_lite and just await the necessary work.
		
		Examples
		--------
		>>> a = np.random.randn(9, 6)
		>>> q, r = np.linalg.qr(a)
		>>> np.allclose(a, np.dot(q, r))  # a does equal qr
		True
		>>> r2 = np.linalg.qr(a, mode='r')
		>>> r3 = np.linalg.qr(a, mode='economic')
		>>> np.allclose(r, r2)  # mode='r' returns the same r as mode='full'
		True
		>>> # But only triu parts are guaranteed equal when mode='economic'
		>>> np.allclose(r, np.triu(r3[:6,:6], k=0))
		True
		
		Example illustrating a common use of `qr`: solving of least squares
		problems
		
		What are the least-squares-best `m` and `y0` in ``y = y0 + mx`` for
		the following data: {(0,1), (1,0), (1,2), (2,1)}. (Graph the points
		and you'll see that it should be y0 = 0, m = 1.)  The answer is provided
		by solving the over-determined matrix equation ``Ax = b``, where::
		
		  A = array([[0, 1], [1, 1], [1, 1], [2, 1]])
		  x = array([[y0], [m]])
		  b = array([[1], [0], [2], [1]])
		
		If A = qr such that q is orthonormal (which is always possible via
		Gram-Schmidt), then ``x = inv(r) * (q.T) * b``.  (In numpy practice,
		however, we simply use `lstsq`.)
		
		>>> A = np.array([[0, 1], [1, 1], [1, 1], [2, 1]])
		>>> A
		array([[0, 1],
		       [1, 1],
		       [1, 1],
		       [2, 1]])
		>>> b = np.array([1, 0, 2, 1])
		>>> q, r = LA.qr(A)
		>>> p = np.dot(q.T, b)
		>>> np.dot(LA.inv(r), p)
		array([  1.1e-16,   1.0e+00])
	**/
	static public function qr(a:Dynamic, ?mode:Dynamic):Dynamic;
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
		Compute the sign and (natural) logarithm of the determinant of an array.
		
		If an array has a very small or very large determinant, then a call to
		`det` may overflow or underflow. This routine is more robust against such
		issues, because it computes the logarithm of the determinant rather than
		the determinant itself.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Input array, has to be a square 2-D array.
		
		Returns
		-------
		sign : (...) array_like
		    A number representing the sign of the determinant. For a real matrix,
		    this is 1, 0, or -1. For a complex matrix, this is a complex number
		    with absolute value 1 (i.e., it is on the unit circle), or else 0.
		logdet : (...) array_like
		    The natural log of the absolute value of the determinant.
		
		If the determinant is zero, then `sign` will be 0 and `logdet` will be
		-Inf. In all cases, the determinant is equal to ``sign * np.exp(logdet)``.
		
		See Also
		--------
		det
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		.. versionadded:: 1.6.0
		
		The determinant is computed via LU factorization using the LAPACK
		routine z/dgetrf.
		
		
		Examples
		--------
		The determinant of a 2-D array ``[[a, b], [c, d]]`` is ``ad - bc``:
		
		>>> a = np.array([[1, 2], [3, 4]])
		>>> (sign, logdet) = np.linalg.slogdet(a)
		>>> (sign, logdet)
		(-1, 0.69314718055994529)
		>>> sign * np.exp(logdet)
		-2.0
		
		Computing log-determinants for a stack of matrices:
		
		>>> a = np.array([ [[1, 2], [3, 4]], [[1, 2], [2, 1]], [[1, 3], [3, 1]] ])
		>>> a.shape
		(3, 2, 2)
		>>> sign, logdet = np.linalg.slogdet(a)
		>>> (sign, logdet)
		(array([-1., -1., -1.]), array([ 0.69314718,  1.09861229,  2.07944154]))
		>>> sign * np.exp(logdet)
		array([-2., -3., -8.])
		
		This routine succeeds where ordinary `det` does not:
		
		>>> np.linalg.det(np.eye(500) * 0.1)
		0.0
		>>> np.linalg.slogdet(np.eye(500) * 0.1)
		(1, -1151.2925464970228)
	**/
	static public function slogdet(a:Dynamic):Dynamic;
	/**
		Solve a linear matrix equation, or system of linear scalar equations.
		
		Computes the "exact" solution, `x`, of the well-determined, i.e., full
		rank, linear matrix equation `ax = b`.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Coefficient matrix.
		b : {(..., M,), (..., M, K)}, array_like
		    Ordinate or "dependent variable" values.
		
		Returns
		-------
		x : {(..., M,), (..., M, K)} ndarray
		    Solution to the system a x = b.  Returned shape is identical to `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular or not square.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The solutions are computed using LAPACK routine _gesv
		
		`a` must be square and of full-rank, i.e., all rows (or, equivalently,
		columns) must be linearly independent; if either is not true, use
		`lstsq` for the least-squares best "solution" of the
		system/equation.
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando,
		       FL, Academic Press, Inc., 1980, pg. 22.
		
		Examples
		--------
		Solve the system of equations ``3 * x0 + x1 = 9`` and ``x0 + 2 * x1 = 8``:
		
		>>> a = np.array([[3,1], [1,2]])
		>>> b = np.array([9,8])
		>>> x = np.linalg.solve(a, b)
		>>> x
		array([ 2.,  3.])
		
		Check that the solution is correct:
		
		>>> np.allclose(np.dot(a, x), b)
		True
	**/
	static public function solve(a:Dynamic, b:Dynamic):Dynamic;
	/**
		sqrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the non-negative square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
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
		
		>>> np.sqrt([4, -1, numpy.inf])
		array([  2.,  NaN,  Inf])
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		If the accumulator is too small, overflow occurs:
		
		>>> np.ones(128, dtype=np.int8).sum(dtype=np.int8)
		-128
		
		You can also start the sum with a value other than zero:
		
		>>> np.sum([10], initial=5)
		15
	**/
	static public function sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):numpy.Ndarray;
	/**
		Singular Value Decomposition.
		
		When `a` is a 2D array, it is factorized as ``u @ np.diag(s) @ vh
		= (u * s) @ vh``, where `u` and `vh` are 2D unitary arrays and `s` is a 1D
		array of `a`'s singular values. When `a` is higher-dimensional, SVD is
		applied in stacked mode as explained below.
		
		Parameters
		----------
		a : (..., M, N) array_like
		    A real or complex array with ``a.ndim >= 2``.
		full_matrices : bool, optional
		    If True (default), `u` and `vh` have the shapes ``(..., M, M)`` and
		    ``(..., N, N)``, respectively.  Otherwise, the shapes are
		    ``(..., M, K)`` and ``(..., K, N)``, respectively, where
		    ``K = min(M, N)``.
		compute_uv : bool, optional
		    Whether or not to compute `u` and `vh` in addition to `s`.  True
		    by default.
		
		Returns
		-------
		u : { (..., M, M), (..., M, K) } array
		    Unitary array(s). The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`. The size of the last two dimensions
		    depends on the value of `full_matrices`. Only returned when
		    `compute_uv` is True.
		s : (..., K) array
		    Vector(s) with the singular values, within each vector sorted in
		    descending order. The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`.
		vh : { (..., N, N), (..., K, N) } array
		    Unitary array(s). The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`. The size of the last two dimensions
		    depends on the value of `full_matrices`. Only returned when
		    `compute_uv` is True.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		Notes
		-----
		
		.. versionchanged:: 1.8.0
		   Broadcasting rules apply, see the `numpy.linalg` documentation for
		   details.
		
		The decomposition is performed using LAPACK routine ``_gesdd``.
		
		SVD is usually described for the factorization of a 2D matrix :math:`A`.
		The higher-dimensional case will be discussed below. In the 2D case, SVD is
		written as :math:`A = U S V^H`, where :math:`A = a`, :math:`U= u`,
		:math:`S= \mathtt{np.diag}(s)` and :math:`V^H = vh`. The 1D array `s`
		contains the singular values of `a` and `u` and `vh` are unitary. The rows
		of `vh` are the eigenvectors of :math:`A^H A` and the columns of `u` are
		the eigenvectors of :math:`A A^H`. In both cases the corresponding
		(possibly non-zero) eigenvalues are given by ``s**2``.
		
		If `a` has more than two dimensions, then broadcasting rules apply, as
		explained in :ref:`routines.linalg-broadcasting`. This means that SVD is
		working in "stacked" mode: it iterates over all indices of the first
		``a.ndim - 2`` dimensions and for each combination SVD is applied to the
		last two indices. The matrix `a` can be reconstructed from the
		decomposition with either ``(u * s[..., None, :]) @ vh`` or
		``u @ (s[..., None] * vh)``. (The ``@`` operator can be replaced by the
		function ``np.matmul`` for python versions below 3.5.)
		
		If `a` is a ``matrix`` object (as opposed to an ``ndarray``), then so are
		all the return values.
		
		Examples
		--------
		>>> a = np.random.randn(9, 6) + 1j*np.random.randn(9, 6)
		>>> b = np.random.randn(2, 7, 8, 3) + 1j*np.random.randn(2, 7, 8, 3)
		
		Reconstruction based on full SVD, 2D case:
		
		>>> u, s, vh = np.linalg.svd(a, full_matrices=True)
		>>> u.shape, s.shape, vh.shape
		((9, 9), (6,), (6, 6))
		>>> np.allclose(a, np.dot(u[:, :6] * s, vh))
		True
		>>> smat = np.zeros((9, 6), dtype=complex)
		>>> smat[:6, :6] = np.diag(s)
		>>> np.allclose(a, np.dot(u, np.dot(smat, vh)))
		True
		
		Reconstruction based on reduced SVD, 2D case:
		
		>>> u, s, vh = np.linalg.svd(a, full_matrices=False)
		>>> u.shape, s.shape, vh.shape
		((9, 6), (6,), (6, 6))
		>>> np.allclose(a, np.dot(u * s, vh))
		True
		>>> smat = np.diag(s)
		>>> np.allclose(a, np.dot(u, np.dot(smat, vh)))
		True
		
		Reconstruction based on full SVD, 4D case:
		
		>>> u, s, vh = np.linalg.svd(b, full_matrices=True)
		>>> u.shape, s.shape, vh.shape
		((2, 7, 8, 8), (2, 7, 3), (2, 7, 3, 3))
		>>> np.allclose(b, np.matmul(u[..., :3] * s[..., None, :], vh))
		True
		>>> np.allclose(b, np.matmul(u[..., :3], s[..., None] * vh))
		True
		
		Reconstruction based on reduced SVD, 4D case:
		
		>>> u, s, vh = np.linalg.svd(b, full_matrices=False)
		>>> u.shape, s.shape, vh.shape
		((2, 7, 8, 3), (2, 7, 3), (2, 7, 3, 3))
		>>> np.allclose(b, np.matmul(u * s[..., None, :], vh))
		True
		>>> np.allclose(b, np.matmul(u, s[..., None] * vh))
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic):Dynamic;
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
		Compute the 'inverse' of an N-dimensional array.
		
		The result is an inverse for `a` relative to the tensordot operation
		``tensordot(a, b, ind)``, i. e., up to floating-point accuracy,
		``tensordot(tensorinv(a), a, ind)`` is the "identity" tensor for the
		tensordot operation.
		
		Parameters
		----------
		a : array_like
		    Tensor to 'invert'. Its shape must be 'square', i. e.,
		    ``prod(a.shape[:ind]) == prod(a.shape[ind:])``.
		ind : int, optional
		    Number of first indices that are involved in the inverse sum.
		    Must be a positive integer, default is 2.
		
		Returns
		-------
		b : ndarray
		    `a`'s tensordot inverse, shape ``a.shape[ind:] + a.shape[:ind]``.
		
		Raises
		------
		LinAlgError
		    If `a` is singular or not 'square' (in the above sense).
		
		See Also
		--------
		numpy.tensordot, tensorsolve
		
		Examples
		--------
		>>> a = np.eye(4*6)
		>>> a.shape = (4, 6, 8, 3)
		>>> ainv = np.linalg.tensorinv(a, ind=2)
		>>> ainv.shape
		(8, 3, 4, 6)
		>>> b = np.random.randn(4, 6)
		>>> np.allclose(np.tensordot(ainv, b), np.linalg.tensorsolve(a, b))
		True
		
		>>> a = np.eye(4*6)
		>>> a.shape = (24, 8, 3)
		>>> ainv = np.linalg.tensorinv(a, ind=1)
		>>> ainv.shape
		(8, 3, 24)
		>>> b = np.random.randn(24)
		>>> np.allclose(np.tensordot(ainv, b, 1), np.linalg.tensorsolve(a, b))
		True
	**/
	static public function tensorinv(a:Dynamic, ?ind:Dynamic):numpy.Ndarray;
	/**
		Solve the tensor equation ``a x = b`` for x.
		
		It is assumed that all indices of `x` are summed over in the product,
		together with the rightmost indices of `a`, as is done in, for example,
		``tensordot(a, x, axes=b.ndim)``.
		
		Parameters
		----------
		a : array_like
		    Coefficient tensor, of shape ``b.shape + Q``. `Q`, a tuple, equals
		    the shape of that sub-tensor of `a` consisting of the appropriate
		    number of its rightmost indices, and must be such that
		    ``prod(Q) == prod(b.shape)`` (in which sense `a` is said to be
		    'square').
		b : array_like
		    Right-hand tensor, which can be of any shape.
		axes : tuple of ints, optional
		    Axes in `a` to reorder to the right, before inversion.
		    If None (default), no reordering is done.
		
		Returns
		-------
		x : ndarray, shape Q
		
		Raises
		------
		LinAlgError
		    If `a` is singular or not 'square' (in the above sense).
		
		See Also
		--------
		numpy.tensordot, tensorinv, numpy.einsum
		
		Examples
		--------
		>>> a = np.eye(2*3*4)
		>>> a.shape = (2*3, 4, 2, 3, 4)
		>>> b = np.random.randn(2*3, 4)
		>>> x = np.linalg.tensorsolve(a, b)
		>>> x.shape
		(2, 3, 4)
		>>> np.allclose(np.tensordot(a, x, axes=3), b)
		True
	**/
	static public function tensorsolve(a:Dynamic, b:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Transpose each matrix in a stack of matrices.
		
		Unlike np.transpose, this only swaps the last two axes, rather than all of
		them
		
		Parameters
		----------
		a : (...,M,N) array_like
		
		Returns
		-------
		aT : (...,N,M) ndarray
	**/
	static public function transpose(a:Dynamic):Dynamic;
	/**
		Upper triangle of an array.
		
		Return a copy of a matrix with the elements below the `k`-th diagonal
		zeroed.
		
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
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		zeros(shape, dtype=float, order='C')
		
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
}