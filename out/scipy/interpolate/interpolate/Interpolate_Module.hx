/* This file is generated, do not edit! */
package scipy.interpolate.interpolate;
@:pythonImport("scipy.interpolate.interpolate") extern class Interpolate_Module {
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
		Similar to numpy.dot, but sum over last axis of a and 1st axis of b
	**/
	static public function _dot0(a:Dynamic, b:Dynamic):Dynamic;
	static public function _find_clamped(xk:Dynamic, yk:Dynamic, order:Dynamic, conds:Dynamic, B:Dynamic):Dynamic;
	static public function _find_fixed(xk:Dynamic, yk:Dynamic, order:Dynamic, conds:Dynamic, B:Dynamic):Dynamic;
	static public function _find_mixed(xk:Dynamic, yk:Dynamic, order:Dynamic, conds:Dynamic, B:Dynamic):Dynamic;
	static public function _find_natural(xk:Dynamic, yk:Dynamic, order:Dynamic, conds:Dynamic, B:Dynamic):Dynamic;
	static public function _find_not_a_knot(xk:Dynamic, yk:Dynamic, order:Dynamic, conds:Dynamic, B:Dynamic):Dynamic;
	static public function _find_periodic(xk:Dynamic, yk:Dynamic, order:Dynamic, conds:Dynamic, B:Dynamic):Dynamic;
	static public function _find_smoothest(xk:Dynamic, yk:Dynamic, order:Dynamic, ?conds:Dynamic, ?B:Dynamic):Dynamic;
	static public function _find_smoothest2(xk:Dynamic, yk:Dynamic):Dynamic;
	static public function _find_symmetric(xk:Dynamic, yk:Dynamic, order:Dynamic, conds:Dynamic, B:Dynamic):Dynamic;
	static public function _find_user(xk:Dynamic, yk:Dynamic, order:Dynamic, conds:Dynamic, B:Dynamic):Dynamic;
	static public function _get_spline2_Bb(xk:Dynamic, yk:Dynamic, kind:Dynamic, conds:Dynamic):Dynamic;
	static public function _get_spline3_Bb(xk:Dynamic, yk:Dynamic, kind:Dynamic, conds:Dynamic):Dynamic;
	/**
		Convert a tuple of coordinate arrays to a (..., ndim)-shaped array.
	**/
	static public function _ndim_coords_from_arrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _setdiag(a:Dynamic, k:Dynamic, v:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
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
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
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
	static public function atleast_2d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		The number of combinations of N things taken k at a time.
		
		This is often expressed as "N choose k".
		
		Parameters
		----------
		N : int, ndarray
		    Number of things.
		k : int, ndarray
		    Number of elements taken.
		exact : bool, optional
		    If `exact` is False, then floating point precision is used, otherwise
		    exact long integer is computed.
		repetition : bool, optional
		    If `repetition` is True, then the number of combinations with
		    repetition is computed.
		
		Returns
		-------
		val : int, ndarray
		    The total number of combinations.
		
		Notes
		-----
		- Array arguments accepted only for exact=False case.
		- If k > N, N < 0, or k < 0, then a 0 is returned.
		
		Examples
		--------
		>>> from scipy.special import comb
		>>> k = np.array([3, 4])
		>>> n = np.array([10, 10])
		>>> comb(n, k, exact=False)
		array([ 120.,  210.])
		>>> comb(10, 3, exact=True)
		120L
		>>> comb(10, 3, exact=True, repetition=True)
		220L
	**/
	static public function comb(N:Dynamic, k:Dynamic, ?exact:Dynamic, ?repetition:Dynamic):Dynamic;
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
	static public var integer_types : Dynamic;
	/**
		Multidimensional interpolation on regular grids.
		
		Parameters
		----------
		points : tuple of ndarray of float, with shapes (m1, ), ..., (mn, )
		    The points defining the regular grid in n dimensions.
		
		values : array_like, shape (m1, ..., mn, ...)
		    The data on the regular grid in n dimensions.
		
		xi : ndarray of shape (..., ndim)
		    The coordinates to sample the gridded data at
		
		method : str, optional
		    The method of interpolation to perform. Supported are "linear" and
		    "nearest", and "splinef2d". "splinef2d" is only supported for
		    2-dimensional data.
		
		bounds_error : bool, optional
		    If True, when interpolated values are requested outside of the
		    domain of the input data, a ValueError is raised.
		    If False, then `fill_value` is used.
		
		fill_value : number, optional
		    If provided, the value to use for points outside of the
		    interpolation domain. If None, values outside
		    the domain are extrapolated.  Extrapolation is not supported by method
		    "splinef2d".
		
		Returns
		-------
		values_x : ndarray, shape xi.shape[:-1] + values.shape[ndim:]
		    Interpolated values at input coordinates.
		
		Notes
		-----
		
		.. versionadded:: 0.14
		
		See also
		--------
		NearestNDInterpolator : Nearest neighbour interpolation on unstructured
		                        data in N dimensions
		
		LinearNDInterpolator : Piecewise linear interpolant on unstructured data
		                       in N dimensions
		
		RegularGridInterpolator : Linear and nearest-neighbor Interpolation on a
		                          regular grid in arbitrary dimensions
		
		RectBivariateSpline : Bivariate spline approximation over a rectangular mesh
	**/
	static public function interpn(points:Dynamic, values:Dynamic, xi:Dynamic, ?method:Dynamic, ?bounds_error:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Return a Lagrange interpolating polynomial.
		
		Given two 1-D arrays `x` and `w,` returns the Lagrange interpolating
		polynomial through the points ``(x, w)``.
		
		Warning: This implementation is numerically unstable. Do not expect to
		be able to use more than about 20 points even if they are chosen optimally.
		
		Parameters
		----------
		x : array_like
		    `x` represents the x-coordinates of a set of datapoints.
		w : array_like
		    `w` represents the y-coordinates of a set of datapoints, i.e. f(`x`).
		
		Returns
		-------
		lagrange : numpy.poly1d instance
		    The Lagrange interpolating polynomial.
	**/
	static public function lagrange(x:Dynamic, w:Dynamic):Dynamic;
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
	static public function logical_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
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
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Product of a list of numbers; ~40x faster vs np.prod for Python tuples
	**/
	static public function prod(x:Dynamic):Dynamic;
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
		>>> print np.ravel(x)
		[1 2 3 4 5 6]
		
		>>> print x.reshape(-1)
		[1 2 3 4 5 6]
		
		>>> print np.ravel(x, order='F')
		[1 4 2 5 3 6]
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> print np.ravel(x.T)
		[1 4 2 5 3 6]
		>>> print np.ravel(x.T, order='A')
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
	static public function ravel(a:Dynamic, ?order:Dynamic):Dynamic;
	static public function reduce_sometrue(a:Dynamic):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted array `a` such that, if the
		corresponding elements in `v` were inserted before the indices, the
		order of `a` would be preserved.
		
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
		indices : array of ints
		    Array of insertion points with the same shape as `v`.
		
		See Also
		--------
		sort : Return a sorted copy of an array.
		histogram : Produce histogram from 1-D data.
		
		Notes
		-----
		Binary search is used to find the required insertion points.
		
		As of Numpy 1.4.0 `searchsorted` works with real/complex arrays containing
		`nan` values. The enhanced sort order is documented in `sort`.
		
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
	static public function shape(a:Dynamic):Dynamic;
	/**
		Check whether some values are true.
		
		Refer to `any` for full documentation.
		
		See Also
		--------
		any : equivalent function
	**/
	static public function sometrue(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Evaluate a fixed spline represented by the given tuple at the new x-values
		
		The `xj` values are the interior knot points.  The approximation
		region is `xj[0]` to `xj[-1]`.  If N+1 is the length of `xj`, then `cvals`
		should have length N+k where `k` is the order of the spline.
		
		Parameters
		----------
		(xj, cvals, k) : tuple
		    Parameters that define the fixed spline
		xj : array_like
		    Interior knot points
		cvals : array_like
		    Curvature
		k : int
		    Order of the spline
		xnew : array_like
		    Locations to calculate spline
		deriv : int
		    Deriv
		
		Returns
		-------
		spleval : ndarray
		    If `cvals` represents more than one curve (`cvals.ndim` > 1) and/or
		    `xnew` is N-d, then the result is `xnew.shape` + `cvals.shape[1:]`
		    providing the interpolation of multiple curves.
		
		Notes
		-----
		Internally, an additional `k`-1 knot points are added on either side of
		the spline.
	**/
	static public function spleval(xck:Dynamic, xnew:Dynamic, ?deriv:Dynamic):Dynamic;
	/**
		Interpolate a curve at new points using a spline fit
		
		Parameters
		----------
		xk, yk : array_like
		    The x and y values that define the curve.
		xnew : array_like
		    The x values where spline should estimate the y values.
		order : int
		    Default is 3.
		kind : string
		    One of {'smoothest'}
		conds : Don't know
		    Don't know
		
		Returns
		-------
		spline : ndarray
		    An array of y values; the spline evaluated at the positions `xnew`.
	**/
	static public function spline(xk:Dynamic, yk:Dynamic, xnew:Dynamic, ?order:Dynamic, ?kind:Dynamic, ?conds:Dynamic):Dynamic;
	/**
		Return a representation of a spline given data-points at internal knots
		
		Parameters
		----------
		xk : array_like
		    The input array of x values of rank 1
		yk : array_like
		    The input array of y values of rank N. `yk` can be an N-d array to
		    represent more than one curve, through the same `xk` points. The first
		    dimension is assumed to be the interpolating dimension and is the same
		    length of `xk`.
		order : int, optional
		    Order of the spline
		kind : str, optional
		    Can be 'smoothest', 'not_a_knot', 'fixed', 'clamped', 'natural',
		    'periodic', 'symmetric', 'user', 'mixed' and it is ignored if order < 2
		conds : optional
		    Conds
		
		Returns
		-------
		splmake : tuple
		    Return a (`xk`, `cvals`, `k`) representation of a spline given
		    data-points where the (internal) knots are at the data-points.
	**/
	static public function splmake(xk:Dynamic, yk:Dynamic, ?order:Dynamic, ?kind:Dynamic, ?conds:Dynamic):Dynamic;
	/**
		Return a piece-wise polynomial object from a fixed-spline tuple.
		    
	**/
	static public function spltopp(xk:Dynamic, cvals:Dynamic, k:Dynamic):Dynamic;
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
		rollaxis
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
	static public function transpose(a:Dynamic, ?axes:Dynamic):Dynamic;
}