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
	static public function _assertSquareness(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _commonType(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _complexType(t:Dynamic, ?_default:Dynamic):Dynamic;
	static public var _complex_types_map : Dynamic;
	static public function _convertarray(a:Dynamic):Dynamic;
	static public function _determine_error_states():Dynamic;
	/**
		_fastCopyAndTranspose(a)
	**/
	static public function _fastCT(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _fastCopyAndTranspose(type:Dynamic, ?arrays:python.VarArgs<Dynamic>):Dynamic;
	/**
		Cast the type t to either double or cdouble.
	**/
	static public function _linalgRealType(t:Dynamic):Dynamic;
	static public var _linalg_error_extobj : Dynamic;
	static public function _makearray(a:Dynamic):Dynamic;
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
	static public function _raise_linalgerror_eigenvalues_nonconvergence(err:Dynamic, flag:Dynamic):Dynamic;
	static public function _raise_linalgerror_nonposdef(err:Dynamic, flag:Dynamic):Dynamic;
	static public function _raise_linalgerror_singular(err:Dynamic, flag:Dynamic):Dynamic;
	static public function _raise_linalgerror_svd_nonconvergence(err:Dynamic, flag:Dynamic):Dynamic;
	static public function _realType(t:Dynamic, ?_default:Dynamic):Dynamic;
	static public var _real_types_map : Dynamic;
	static public function _to_native_byte_order(?arrays:python.VarArgs<Dynamic>):Dynamic;
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
	static public function abs(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		    the result will broadcast correctly against the original `arr`.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `all` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-classes `sum` method does not implement `keepdims` any
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
		array([ True, False], dtype=bool)
		
		>>> np.all([-1, 4, 5])
		True
		
		>>> np.all([1.0, np.nan])
		True
		
		>>> o=np.array([False])
		>>> z=np.all([-1, 4, 5], out=o)
		>>> id(z), id(o), z                             # doctest: +SKIP
		(28293632, 28293632, array([ True], dtype=bool))
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
		array(object, dtype=None, copy=True, order=None, subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an
		    object whose __array__ method returns an array, or any
		    (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then
		    the type will be determined as the minimum type required
		    to hold the objects in the sequence.  This argument can only
		    be used to 'upcast' the array.  For downcasting, use the
		    .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy
		    will only be made if __array__ returns a copy, if obj is a
		    nested sequence, or if a copy is needed to satisfy any of the other
		    requirements (`dtype`, `order`, etc.).
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C', then the array
		    will be in C-contiguous order (last-index varies the fastest).
		    If order is 'F', then the returned array will be in
		    Fortran-contiguous order (first-index varies the fastest).
		    If order is 'A' (default), then the returned array may be
		    in any order (either C-, Fortran-contiguous, or even discontiguous),
		    unless a copy is required, in which case it will be C-contiguous.
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
		empty, empty_like, zeros, zeros_like, ones, ones_like, fill
		
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
		
		>>> a = np.matrix([1, 2])
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
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
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
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	static public function asbytes(s:Dynamic):Dynamic;
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
		array([ 2.,  3.])
		>>> np.asfarray([2, 3], dtype='float')
		array([ 2.,  3.])
		>>> np.asfarray([2, 3], dtype='int8')
		array([ 2.,  3.])
	**/
	static public function asfarray(a:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
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
		slogdet : Another way to representing the determinant, more suitable
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
	static public var division : Dynamic;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays.
		
		For 2-D arrays it is equivalent to matrix multiplication, and for 1-D
		arrays to inner product of vectors (without complex conjugation). For
		N dimensions it is a sum product over the last axis of `a` and
		the second-to-last of `b`::
		
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
		
		eigh : eigenvalues and eigenvectors of a symmetric or Hermitian
		       (conjugate symmetric) array.
		
		eigvalsh : eigenvalues of a symmetric or Hermitian (conjugate symmetric)
		           array.
		
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
		Return the eigenvalues and eigenvectors of a Hermitian or symmetric matrix.
		
		Returns two objects, a 1-D array containing the eigenvalues of `a`, and
		a 2-D square array or matrix (depending on the input type) of the
		corresponding eigenvectors (in columns).
		
		Parameters
		----------
		a : (..., M, M) array
		    Hermitian/Symmetric matrices whose eigenvalues and
		    eigenvectors are to be computed.
		UPLO : {'L', 'U'}, optional
		    Specifies whether the calculation is done with the lower triangular
		    part of `a` ('L', default) or the upper triangular part ('U').
		
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
		eigvalsh : eigenvalues of symmetric or Hermitian arrays.
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
		eigvalsh : eigenvalues of symmetric or Hermitian arrays.
		eigh : eigenvalues and eigenvectors of symmetric/Hermitian arrays.
		
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
		Compute the eigenvalues of a Hermitian or real symmetric matrix.
		
		Main difference from eigh: the eigenvectors are not computed.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    A complex- or real-valued matrix whose eigenvalues are to be
		    computed.
		UPLO : {'L', 'U'}, optional
		    Same as `lower`, with 'L' for lower and 'U' for upper triangular.
		    Deprecated.
		
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
		eigh : eigenvalues and eigenvectors of symmetric/Hermitian arrays.
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
	**/
	static public function eigvalsh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
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
	static public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function empty_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_fastCopyAndTranspose(a)
	**/
	static public function fastCopyAndTranspose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_linalg_error_extobj(callback:Dynamic):Dynamic;
	/**
		geterrobj()
		
		Return the current object that defines floating-point error handling.
		
		The error object contains all information that defines the error handling
		behavior in Numpy. `geterrobj` is used internally by the other
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
		isfinite(x[, out])
		
		Test element-wise for finiteness (not infinity or not Not a Number).
		
		The result is returned as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See `doc.ufuncs`.
		
		Returns
		-------
		y : ndarray, bool
		    For scalar input, the result is a new boolean with value True
		    if the input is finite; otherwise the value is False (input is
		    either positive infinity, negative infinity or Not a Number).
		
		    For array input, the result is a boolean array with the same
		    dimensions as the input and the values are True if the
		    corresponding element of the input is finite; otherwise the values
		    are False (element is either positive infinity, negative infinity
		    or Not a Number).
		
		See Also
		--------
		isinf, isneginf, isposinf, isnan
		
		Notes
		-----
		Not a Number, positive infinity and negative infinity are considered
		to be non-finite.
		
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
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
		array([False,  True, False], dtype=bool)
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isfinite(x, y)
		array([0, 1, 0])
		>>> y
		array([0, 1, 0])
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True if the type of `num` is a scalar type.
		
		Parameters
		----------
		num : any
		    Input argument, can be of any type and shape.
		
		Returns
		-------
		val : bool
		    True if `num` is a scalar type, False if it is not.
		
		Examples
		--------
		>>> np.isscalar(3.1)
		True
		>>> np.isscalar([3.1])
		False
		>>> np.isscalar(False)
		True
	**/
	static public function isscalar(num:Dynamic):Bool;
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
		    Singular values are set to zero if they are smaller than `rcond`
		    times the largest singular value of `a`.
		
		Returns
		-------
		x : {(N,), (N, K)} ndarray
		    Least-squares solution. If `b` is two-dimensional,
		    the solutions are in the `K` columns of `x`.
		residuals : {(), (1,), (K,)} ndarray
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
		
		>>> m, c = np.linalg.lstsq(A, y)[0]
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
		Raise a square matrix to the (integer) power `n`.
		
		For positive integers `n`, the power is computed by repeated matrix
		squarings and matrix multiplications. If ``n == 0``, the identity matrix
		of the same shape as M is returned. If ``n < 0``, the inverse
		is computed and then raised to the ``abs(n)``.
		
		Parameters
		----------
		M : ndarray or matrix object
		    Matrix to be "powered."  Must be square, i.e. ``M.shape == (m, m)``,
		    with `m` a positive integer.
		n : int
		    The exponent can be any integer or long integer, positive,
		    negative, or zero.
		
		Returns
		-------
		M**n : ndarray or matrix object
		    The return value is the same shape and type as `M`;
		    if the exponent is positive or zero then the type of the
		    elements is the same as those of `M`. If the exponent is
		    negative the elements are floating-point.
		
		Raises
		------
		LinAlgError
		    If the matrix is not numerically invertible.
		
		See Also
		--------
		matrix
		    Provides an equivalent function as the exponentiation operator
		    (``**``, not ``^``).
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> i = np.array([[0, 1], [-1, 0]]) # matrix equiv. of the imaginary unit
		>>> LA.matrix_power(i, 3) # should = -i
		array([[ 0, -1],
		       [ 1,  0]])
		>>> LA.matrix_power(np.matrix(i), 3) # matrix arg returns matrix
		matrix([[ 0, -1],
		        [ 1,  0]])
		>>> LA.matrix_power(i, 0)
		array([[1, 0],
		       [0, 1]])
		>>> LA.matrix_power(i, -3) # should = 1/(-i) = i, but w/ f.p. elements
		array([[ 0.,  1.],
		       [-1.,  0.]])
		
		Somewhat more sophisticated example
		
		>>> q = np.zeros((4, 4))
		>>> q[0:2, 0:2] = -i
		>>> q[2:4, 2:4] = i
		>>> q # one of the three quarternion units not equal to 1
		array([[ 0., -1.,  0.,  0.],
		       [ 1.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  1.],
		       [ 0.,  0., -1.,  0.]])
		>>> LA.matrix_power(q, 2) # = -np.eye(4)
		array([[-1.,  0.,  0.,  0.],
		       [ 0., -1.,  0.,  0.],
		       [ 0.,  0., -1.,  0.],
		       [ 0.,  0.,  0., -1.]])
	**/
	static public function matrix_power(M:Dynamic, n:Dynamic):Dynamic;
	/**
		Return matrix rank of array using SVD method
		
		Rank of the array is the number of SVD singular values of the array that are
		greater than `tol`.
		
		Parameters
		----------
		M : {(M,), (M, N)} array_like
		    array of <=2 dimensions
		tol : {None, float}, optional
		   threshold below which SVD values are considered zero. If `tol` is
		   None, and ``S`` is an array with singular values for `M`, and
		   ``eps`` is the epsilon value for datatype of ``S``, then `tol` is
		   set to ``S.max() * max(M.shape) * eps``.
		
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
		       http://www.mathworks.com/help/techdoc/ref/rank.html
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
	static public function matrix_rank(M:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		maximum(x1, x2[, out])
		
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
		    The arrays holding the elements to be compared. They must have
		    the same shape, or shapes that can be broadcast to a single shape.
		
		Returns
		-------
		y : ndarray or scalar
		    The maximum of `x1` and `x2`, element-wise.  Returns scalar if
		    both  `x1` and `x2` are scalars.
		
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
		array([ NaN,  NaN,  NaN])
		>>> np.maximum(np.Inf, 1)
		inf
	**/
	static public function maximum(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		.. [2] http://en.wikipedia.org/wiki/Matrix_chain_multiplication
		
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
		
		
		Example: multiplication costs of different parenthesizations
		------------------------------------------------------------
		
		The cost for a matrix multiplication can be calculated with the
		following function::
		
		    def cost(A, B): return A.shape[0] * A.shape[1] * B.shape[1]
		
		Let's assume we have three matrices
		:math:`A_{10x100}, B_{100x5}, C_{5x50}$`.
		
		The costs for the two different parenthesizations are as follows::
		
		    cost((AB)C) = 10*100*5 + 10*5*50   = 5000 + 2500   = 7500
		    cost(A(BC)) = 10*100*50 + 100*5*50 = 50000 + 25000 = 75000
	**/
	static public function multi_dot(arrays:Dynamic):numpy.Ndarray;
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
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate the generalized inverse of a matrix using its
		singular-value decomposition (SVD) and including all
		*large* singular values.
		
		Parameters
		----------
		a : (M, N) array_like
		  Matrix to be pseudo-inverted.
		rcond : float
		  Cutoff for small singular values.
		  Singular values smaller (in modulus) than
		  `rcond` * largest_singular_value (again, in modulus)
		  are set to zero.
		
		Returns
		-------
		B : (N, M) ndarray
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
	static public function product(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		
		    'reduced'  : returns q, r with dimensions (M, K), (K, N) (default)
		    'complete' : returns q, r with dimensions (M, M), (M, N)
		    'r'        : returns r only with dimensions (K, N)
		    'raw'      : returns h, tau with dimensions (N, M), (K,)
		    'full'     : alias of 'reduced', deprecated
		    'economic' : returns h from 'raw', deprecated.
		
		    The options 'reduced', 'complete, and 'raw' are new in numpy 1.8,
		    see the notes for more information. The default is 'reduced' and to
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
		http://en.wikipedia.org/wiki/QR_factorization
		
		Subclasses of `ndarray` are preserved except for the 'raw' mode. So if
		`a` is of type `matrix`, all the return values will be matrices too.
		
		New 'reduced', 'complete', and 'raw' options for mode were added in
		Numpy 1.8 and the old option 'full' was made an alias of 'reduced'.  In
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
		    If `a` is a matrix, y is a 1-D ndarray, otherwise y is an array of
		    the same subtype as `a`. The shape of the returned array is
		    ``(a.size,)``. Matrices are special cased for backward
		    compatibility.
		
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
		>>> print(np.ravel(x))
		[1 2 3 4 5 6]
		
		>>> print(x.reshape(-1))
		[1 2 3 4 5 6]
		
		>>> print(np.ravel(x, order='F'))
		[1 4 2 5 3 6]
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> print(np.ravel(x.T))
		[1 4 2 5 3 6]
		>>> print(np.ravel(x.T, order='A'))
		[1 2 3 4 5 6]
		
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
		Roll the specified axis backwards, until it lies in a given position.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		axis : int
		    The axis to roll backwards.  The positions of the other axes do not
		    change relative to one another.
		start : int, optional
		    The axis is rolled until it lies before this position.  The default,
		    0, results in a "complete" roll.
		
		Returns
		-------
		res : ndarray
		    For Numpy >= 1.10 a view of `a` is always returned. For earlier
		    Numpy versions a view of `a` is returned only if the order of the
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
		
		.. versionadded:: 1.6.0.
		
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
		    the result will broadcast correctly against the original `arr`.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `sum` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-classes `sum` method does not implement `keepdims` any
		    exceptions will be raised.
		
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
	**/
	static public function sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Singular Value Decomposition.
		
		Factors the matrix `a` as ``u * np.diag(s) * v``, where `u` and `v`
		are unitary and `s` is a 1-d array of `a`'s singular values.
		
		Parameters
		----------
		a : (..., M, N) array_like
		    A real or complex matrix of shape (`M`, `N`) .
		full_matrices : bool, optional
		    If True (default), `u` and `v` have the shapes (`M`, `M`) and
		    (`N`, `N`), respectively.  Otherwise, the shapes are (`M`, `K`)
		    and (`K`, `N`), respectively, where `K` = min(`M`, `N`).
		compute_uv : bool, optional
		    Whether or not to compute `u` and `v` in addition to `s`.  True
		    by default.
		
		Returns
		-------
		u : { (..., M, M), (..., M, K) } array
		    Unitary matrices. The actual shape depends on the value of
		    ``full_matrices``. Only returned when ``compute_uv`` is True.
		s : (..., K) array
		    The singular values for every matrix, sorted in descending order.
		v : { (..., N, N), (..., K, N) } array
		    Unitary matrices. The actual shape depends on the value of
		    ``full_matrices``. Only returned when ``compute_uv`` is True.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The decomposition is performed using LAPACK routine _gesdd
		
		The SVD is commonly written as ``a = U S V.H``.  The `v` returned
		by this function is ``V.H`` and ``u = U``.
		
		If ``U`` is a unitary matrix, it means that it
		satisfies ``U.H = inv(U)``.
		
		The rows of `v` are the eigenvectors of ``a.H a``. The columns
		of `u` are the eigenvectors of ``a a.H``.  For row ``i`` in
		`v` and column ``i`` in `u`, the corresponding eigenvalue is
		``s[i]**2``.
		
		If `a` is a `matrix` object (as opposed to an `ndarray`), then so
		are all the return values.
		
		Examples
		--------
		>>> a = np.random.randn(9, 6) + 1j*np.random.randn(9, 6)
		
		Reconstruction based on full SVD:
		
		>>> U, s, V = np.linalg.svd(a, full_matrices=True)
		>>> U.shape, V.shape, s.shape
		((9, 9), (6, 6), (6,))
		>>> S = np.zeros((9, 6), dtype=complex)
		>>> S[:6, :6] = np.diag(s)
		>>> np.allclose(a, np.dot(U, np.dot(S, V)))
		True
		
		Reconstruction based on reduced SVD:
		
		>>> U, s, V = np.linalg.svd(a, full_matrices=False)
		>>> U.shape, V.shape, s.shape
		((9, 6), (6, 6), (6,))
		>>> S = np.diag(s)
		>>> np.allclose(a, np.dot(U, np.dot(S, V)))
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic):Dynamic;
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
		tensordot, tensorsolve
		
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
		``tensordot(a, x, axes=len(b.shape))``.
		
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
		tensordot, tensorinv, einsum
		
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
		Permute the dimensions of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axes : list of ints, optional
		    By default, reverse the dimensions, otherwise permute the axes
		    according to the values given.
		
		Returns
		-------
		p : ndarray
		    `a` with its axes permuted.  A view is returned whenever
		    possible.
		
		See Also
		--------
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
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):numpy.Ndarray;
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
	static public function zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
}