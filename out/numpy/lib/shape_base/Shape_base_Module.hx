/* This file is generated, do not edit! */
package numpy.lib.shape_base;
@:pythonImport("numpy.lib.shape_base") extern class Shape_base_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _replace_zero_by_x_arrays(sub_arys:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
		------
		This function is equivalent to tuple axis arguments to reorderable ufuncs
		with keepdims=True. Tuple axis arguments to ufuncs have been availabe since
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
		Split an array into multiple sub-arrays.
		
		Please refer to the ``split`` documentation.  The only difference
		between these functions is that ``array_split`` allows
		`indices_or_sections` to be an integer that does *not* equally
		divide the axis.
		
		See Also
		--------
		split : Split array into multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> x = np.arange(8.0)
		>>> np.array_split(x, 3)
		    [array([ 0.,  1.,  2.]), array([ 3.,  4.,  5.]), array([ 6.,  7.])]
	**/
	static public function array_split(ary:Dynamic, indices_or_sections:Dynamic, ?axis:Dynamic):Dynamic;
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
		...     print arr, arr.shape
		...
		[[[1]
		  [2]]] (1, 2, 1)
		[[[1]
		  [2]]] (1, 2, 1)
		[[[1 2]]] (1, 1, 2)
	**/
	static public function atleast_3d(?arys:python.VarArgs<Dynamic>):numpy.Ndarray;
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
		hstack, vstack, concatenate
		
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
		concatenate((a1, a2, ...), axis=0)
		
		Join a sequence of arrays along an existing axis.
		
		Parameters
		----------
		a1, a2, ... : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined.  Default is 0.
		
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
		hsplit : Split array into multiple sub-arrays horizontally (column wise)
		vsplit : Split array into multiple sub-arrays vertically (row wise)
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		stack : Stack a sequence of arrays along a new axis.
		hstack : Stack arrays in sequence horizontally (column wise)
		vstack : Stack arrays in sequence vertically (row wise)
		dstack : Stack arrays in sequence depth wise (along third dimension)
		
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
		
		This function will not preserve masking of MaskedArray inputs.
		
		>>> a = np.ma.arange(3)
		>>> a[1] = np.ma.masked
		>>> b = np.arange(2, 5)
		>>> a
		masked_array(data = [0 -- 2],
		             mask = [False  True False],
		       fill_value = 999999)
		>>> b
		array([2, 3, 4])
		>>> np.concatenate([a, b])
		masked_array(data = [0 1 2 2 3 4],
		             mask = False,
		       fill_value = 999999)
		>>> np.ma.concatenate([a, b])
		masked_array(data = [0 -- 2 2 3 4],
		             mask = [False  True False False False False],
		       fill_value = 999999)
	**/
	static public function concatenate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
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
		array([[[  0.,   1.,   2.,   3.],
		        [  4.,   5.,   6.,   7.]],
		       [[  8.,   9.,  10.,  11.],
		        [ 12.,  13.,  14.,  15.]]])
		>>> np.dsplit(x, 2)
		[array([[[  0.,   1.],
		        [  4.,   5.]],
		       [[  8.,   9.],
		        [ 12.,  13.]]]),
		 array([[[  2.,   3.],
		        [  6.,   7.]],
		       [[ 10.,  11.],
		        [ 14.,  15.]]])]
		>>> np.dsplit(x, np.array([3, 6]))
		[array([[[  0.,   1.,   2.],
		        [  4.,   5.,   6.]],
		       [[  8.,   9.,  10.],
		        [ 12.,  13.,  14.]]]),
		 array([[[  3.],
		        [  7.]],
		       [[ 11.],
		        [ 15.]]]),
		 array([], dtype=float64)]
	**/
	static public function dsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
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
	**/
	static public function dstack(tup:Dynamic):numpy.Ndarray;
	/**
		Expand the shape of an array.
		
		Insert a new axis, corresponding to a given position in the array shape.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int
		    Position (amongst axes) where new axis is to be inserted.
		
		Returns
		-------
		res : ndarray
		    Output array. The number of dimensions is one greater than that of
		    the input array.
		
		See Also
		--------
		doc.indexing, atleast_1d, atleast_2d, atleast_3d
		
		Examples
		--------
		>>> x = np.array([1,2])
		>>> x.shape
		(2,)
		
		The following is equivalent to ``x[np.newaxis,:]`` or ``x[np.newaxis]``:
		
		>>> y = np.expand_dims(x, axis=0)
		>>> y
		array([[1, 2]])
		>>> y.shape
		(1, 2)
		
		>>> y = np.expand_dims(x, axis=1)  # Equivalent to x[:,newaxis]
		>>> y
		array([[1],
		       [2]])
		>>> y.shape
		(2, 1)
		
		Note that some examples may use ``None`` instead of ``np.newaxis``.  These
		are the same objects:
		
		>>> np.newaxis is None
		True
	**/
	static public function expand_dims(a:Dynamic, axis:Dynamic):numpy.Ndarray;
	/**
		Find the wrapper for the array with the highest priority.
		
		In case of ties, leftmost wins. If no wrapper is found, return None
	**/
	static public function get_array_prepare(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Find the wrapper for the array with the highest priority.
		
		In case of ties, leftmost wins. If no wrapper is found, return None
	**/
	static public function get_array_wrap(?args:python.VarArgs<Dynamic>):Dynamic;
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
	**/
	static public function hsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
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
		If `a.shape = (r0,r1,..,rN)` and `b.shape = (s0,s1,...,sN)`,
		the Kronecker product has shape `(r0*s0, r1*s1, ..., rN*SN)`.
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
		array([  5,   6,   7,  50,  60,  70, 500, 600, 700])
		>>> np.kron([5,6,7], [1,10,100])
		array([  5,  50, 500,   6,  60, 600,   7,  70, 700])
		
		>>> np.kron(np.eye(2), np.ones((2,2)))
		array([[ 1.,  1.,  0.,  0.],
		       [ 1.,  1.,  0.,  0.],
		       [ 0.,  0.,  1.,  1.],
		       [ 0.,  0.,  1.,  1.]])
		
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
	static public function kron(a:Dynamic, b:Dynamic):Dynamic;
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
	**/
	static public function outer(a:Dynamic, b:Dynamic, ?out:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		See Also
		--------
		prod : equivalent function; see for details.
	**/
	static public function product(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Gives a new shape to an array without changing its data.
		
		Parameters
		----------
		a : array_like
		    Array to be reshaped.
		newshape : int or tuple of ints
		    The new shape should be compatible with the original shape. If
		    an integer, then the result will be a 1-D array of that length.
		    One shape dimension can be -1. In this case, the value is inferred
		    from the length of the array and remaining dimensions.
		order : {'C', 'F', 'A'}, optional
		    Read the elements of `a` using this index order, and place the elements
		    into the reshaped array using this index order.  'C' means to
		    read / write the elements using C-like index order, with the last axis
		    index changing fastest, back to the first axis index changing slowest.
		    'F' means to read / write the elements using Fortran-like index order,
		    with the first index changing fastest, and the last index changing
		    slowest.
		    Note that the 'C' and 'F' options take no account of the memory layout
		    of the underlying array, and only refer to the order of indexing.  'A'
		    means to read / write the elements in Fortran-like index order if `a`
		    is Fortran *contiguous* in memory, C-like order otherwise.
		
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
		copying the data. If you want an error to be raise if the data is copied,
		you should assign the new shape to the shape attribute of the array::
		
		 >>> a = np.zeros((10, 2))
		 # A transpose make the array non-contiguous
		 >>> b = a.T
		 # Taking a view makes it possible to modify the shape without modifying
		 # the initial object.
		 >>> c = b.view()
		 >>> c.shape = (20)
		 AttributeError: incompatible shape for a non-contiguous array
		
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
	**/
	static public function row_stack(tup:Dynamic):numpy.Ndarray;
	/**
		Split an array into multiple sub-arrays.
		
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
		    A list of sub-arrays.
		
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
		[array([ 0.,  1.,  2.]), array([ 3.,  4.,  5.]), array([ 6.,  7.,  8.])]
		
		>>> x = np.arange(8.0)
		>>> np.split(x, [3, 5, 6, 10])
		[array([ 0.,  1.,  2.]),
		 array([ 3.,  4.]),
		 array([ 5.]),
		 array([ 6.,  7.]),
		 array([], dtype=float64)]
	**/
	static public function split(ary:Dynamic, indices_or_sections:Dynamic, ?axis:Dynamic):Dynamic;
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
	**/
	static public function tile(A:Dynamic, reps:Dynamic):numpy.Ndarray;
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
		array([[  0.,   1.,   2.,   3.],
		       [  4.,   5.,   6.,   7.],
		       [  8.,   9.,  10.,  11.],
		       [ 12.,  13.,  14.,  15.]])
		>>> np.vsplit(x, 2)
		[array([[ 0.,  1.,  2.,  3.],
		       [ 4.,  5.,  6.,  7.]]),
		 array([[  8.,   9.,  10.,  11.],
		       [ 12.,  13.,  14.,  15.]])]
		>>> np.vsplit(x, np.array([3, 6]))
		[array([[  0.,   1.,   2.,   3.],
		       [  4.,   5.,   6.,   7.],
		       [  8.,   9.,  10.,  11.]]),
		 array([[ 12.,  13.,  14.,  15.]]),
		 array([], dtype=float64)]
		
		With a higher dimensional array the split is still along the first axis.
		
		>>> x = np.arange(8.0).reshape(2, 2, 2)
		>>> x
		array([[[ 0.,  1.],
		        [ 2.,  3.]],
		       [[ 4.,  5.],
		        [ 6.,  7.]]])
		>>> np.vsplit(x, 2)
		[array([[[ 0.,  1.],
		        [ 2.,  3.]]]),
		 array([[[ 4.,  5.],
		        [ 6.,  7.]]])]
	**/
	static public function vsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
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
	**/
	static public function vstack(tup:Dynamic):numpy.Ndarray;
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