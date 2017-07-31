/* This file is generated, do not edit! */
package numpy.ma.extras;
@:pythonImport("numpy.ma.extras") extern class Extras_Module {
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
		Private function for the computation of covariance and correlation
		coefficients.
	**/
	static public function _covhelper(x:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?allow_masked:Dynamic):Dynamic;
	/**
		Finds the clumps (groups of data with the same values) for a 1D bool array.
		
		Returns a series of slices.
	**/
	static public function _ezclump(mask:Dynamic):Dynamic;
	static public function _median(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic):Dynamic;
	/**
		Internal Function.
		Call `func` with `a` as first argument swapping the axes to use extended
		axis on functions that don't support it natively.
		
		Returns result and a.shape with axis dims set to 1.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		func : callable
		    Reduction function capable of receiving a single axis argument.
		    It is is called with `a` as first argument followed by `kwargs`.
		kwargs : keyword arguments
		    additional keyword arguments to pass to `func`.
		
		Returns
		-------
		result : tuple
		    Result of func(a, **kwargs) and a.shape with axis dims set to 1
		    which can be used to reshape the result to the same shape a ufunc with
		    keepdims=True would produce.
	**/
	static public function _ureduce(a:Dynamic, func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):python.Tuple<Dynamic>;
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
		kwargs : any
		    Additional named arguments to `func1d`.
		
		    .. versionadded:: 1.9.0
		
		
		Returns
		-------
		apply_along_axis : ndarray
		    The output array. The shape of `outarr` is identical to the shape of
		    `arr`, except along the `axis` dimension. This axis is removed, and
		    replaced with new dimensions equal to the shape of the return value
		    of `func1d`. So if `func1d` returns a scalar `outarr` will have one
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
		array([ 4.,  5.,  6.])
		>>> np.apply_along_axis(my_func, 1, b)
		array([ 2.,  5.,  8.])
		
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
	static public function column_stack(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
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
		Suppress slices from multiple dimensions which contain masked values.
		
		Parameters
		----------
		x : array_like, MaskedArray
		    The array to operate on. If not a MaskedArray instance (or if no array
		    elements are masked, `x` is interpreted as a MaskedArray with `mask`
		    set to `nomask`.
		axis : tuple of ints or int, optional
		    Which dimensions to suppress slices from can be configured with this
		    parameter.
		    - If axis is a tuple of ints, those are the axes to suppress slices from.
		    - If axis is an int, then that is the only axis to suppress slices from.
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
	static public function diagflat(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
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
		
		    This function continues to be supported for backward compatibility, but
		    you should prefer ``np.concatenate`` or ``np.stack``. The ``np.stack``
		    function was added in NumPy 1.10.
		
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
		    Equivalent to ``np.concatenate(tup, axis=2)`` if `tup` contains arrays that
		    are at least 3-dimensional.
		
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
	static public function dstack(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
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
		Flatten a sequence in place.
	**/
	static public function flatten_inplace(seq:Dynamic):Dynamic;
	/**
		Return the youngest subclass of MaskedArray from a list of (masked) arrays.
		
		In case of siblings, the first listed takes over.
	**/
	static public function get_masked_subclass(?arrays:python.VarArgs<Dynamic>):Dynamic;
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
	static public function hsplit(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		hstack(tup)
		
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
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function hstack(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Test whether each element of an array is also present in a second
		array.
		
		The output is always a masked array. See `numpy.in1d` for more details.
		
		We recommend using :func:`isin` instead of `in1d` for new code.
		
		See Also
		--------
		isin       : Version of this function that preserves the shape of ar1.
		numpy.in1d : Equivalent function for ndarrays.
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function in1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic, ?invert:Dynamic):Dynamic;
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
		Calculates `element in test_elements`, broadcasting over
		`element` only.
		
		The output is always a masked array of the same shape as `element`.
		See `numpy.isin` for more details.
		
		See Also
		--------
		in1d       : Flattened version of this function.
		numpy.isin : Equivalent function for ndarrays.
		
		Notes
		-----
		.. versionadded:: 1.13.0
	**/
	static public function isin(element:Dynamic, test_elements:Dynamic, ?assume_unique:Dynamic, ?invert:Dynamic):Dynamic;
	/**
		Is seq a sequence (ndarray, list or tuple)?
	**/
	static public function issequence(seq:Dynamic):Dynamic;
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
		dtype('bool')
	**/
	static public function make_mask_descr(ndtype:Dynamic):Dynamic;
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
	static public var mr_ : Dynamic;
	static public var nomask : Dynamic;
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
	static public function nxarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		p : ndarray, shape (deg + 1,) or (deg + 1, K)
		    Polynomial coefficients, highest power first.  If `y` was 2-D, the
		    coefficients for `k`-th data set are in ``p[:,k]``.
		
		residuals, rank, singular_values, rcond
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
	static public var print_function : Dynamic;
	/**
		vstack(tup)
		
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
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function row_stack(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
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
		    Whether missing values (if any) should be treated as the largest values
		    (True) or the smallest values (False)
		    When the array contains unmasked values at the same extremes of the
		    datatype, the ordering of these values and the masked values is
		    undefined.
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
		vstack(tup)
		
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
		
		    
		Notes
		-----
		The function is applied to both the _data and the _mask, if any.
	**/
	static public function vstack(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
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