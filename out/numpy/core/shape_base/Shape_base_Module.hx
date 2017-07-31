/* This file is generated, do not edit! */
package numpy.core.shape_base;
@:pythonImport("numpy.core.shape_base") extern class Shape_base_Module {
	static public var __all__ : Dynamic;
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
		empty, empty_like, zeros, zeros_like, ones, ones_like, full, full_like
		
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
		array([[[ 3.]]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_3d(x).shape
		(1, 3, 1)
		
		>>> x = np.arange(12.0).reshape(4,3)
		>>> np.atleast_3d(x).shape
		(4, 3, 1)
		>>> np.atleast_3d(x).base is x.base  # x is a reshape, so not base itself
		True
		
		>>> for arr in np.atleast_3d([1, 2], [[1, 2]], [[[1, 2]]]):
		...     print(arr, arr.shape)
		...
		[[[1]
		  [2]]] (1, 2, 1)
		[[[1]
		  [2]]] (1, 2, 1)
		[[[1 2]]] (1, 1, 2)
	**/
	static public function atleast_3d(?arys:python.VarArgs<Dynamic>):numpy.Ndarray;
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
		concatenate : Join a sequence of arrays together.
		stack : Stack arrays in sequence along a new dimension.
		hstack : Stack arrays in sequence horizontally (column wise).
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third dimension).
		vsplit : Split array into a list of multiple sub-arrays vertically.
		
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
		array([[ 2.,  0.,  0.,  0.,  0.],
		       [ 0.,  2.,  0.,  0.,  0.],
		       [ 1.,  1.,  3.,  0.,  0.],
		       [ 1.,  1.,  0.,  3.,  0.],
		       [ 1.,  1.,  0.,  0.,  3.]])
		
		With a list of depth 1, `block` can be used as `hstack`
		
		>>> np.block([1, 2, 3])              # hstack([1, 2, 3])
		array([1, 2, 3])
		
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([2, 3, 4])
		>>> np.block([a, b, 10])             # hstack([a, b, 10])
		array([1, 2, 3, 2, 3, 4, 10])
		
		>>> A = np.ones((2, 2), int)
		>>> B = 2 * A
		>>> np.block([A, B])                 # hstack([A, B])
		array([[1, 1, 2, 2],
		       [1, 1, 2, 2]])
		
		With a list of depth 2, `block` can be used in place of `vstack`:
		
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([2, 3, 4])
		>>> np.block([[a], [b]])             # vstack([a, b])
		array([[1, 2, 3],
		       [2, 3, 4]])
		
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
	static public var division : Dynamic;
	/**
		Stack arrays in sequence horizontally (column wise).
		
		Take a sequence of arrays and stack them horizontally to make
		a single array. Rebuild arrays divided by `hsplit`.
		
		This function continues to be supported for backward compatibility, but
		you should prefer ``np.concatenate`` or ``np.stack``. The ``np.stack``
		function was added in NumPy 1.10.
		
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
		block : Assemble arrays from blocks.
		
		Notes
		-----
		Equivalent to ``np.concatenate(tup, axis=1)`` if `tup` contains arrays that
		are at least 2-dimensional.
		
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
	**/
	static public function hstack(tup:Dynamic):numpy.Ndarray;
	static public var newaxis : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Join a sequence of arrays along a new axis.
		
		The `axis` parameter specifies the index of the new axis in the dimensions
		of the result. For example, if ``axis=0`` it will be the first dimension
		and if ``axis=-1`` it will be the last dimension.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		arrays : sequence of array_like
		    Each array must have the same shape.
		axis : int, optional
		    The axis in the result array along which the input arrays are stacked.
		
		Returns
		-------
		stacked : ndarray
		    The stacked array has one more dimension than the input arrays.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		split : Split array into a list of multiple sub-arrays of equal size.
		block : Assemble arrays from blocks.
		
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
		>>> b = np.array([2, 3, 4])
		>>> np.stack((a, b))
		array([[1, 2, 3],
		       [2, 3, 4]])
		
		>>> np.stack((a, b), axis=-1)
		array([[1, 2],
		       [2, 3],
		       [3, 4]])
	**/
	static public function stack(arrays:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Stack arrays in sequence vertically (row wise).
		
		Take a sequence of arrays and stack them vertically to make a single
		array. Rebuild arrays divided by `vsplit`.
		
		This function continues to be supported for backward compatibility, but
		you should prefer ``np.concatenate`` or ``np.stack``. The ``np.stack``
		function was added in NumPy 1.10.
		
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
		block : Assemble arrays from blocks.
		
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
	**/
	static public function vstack(tup:Dynamic):numpy.Ndarray;
}