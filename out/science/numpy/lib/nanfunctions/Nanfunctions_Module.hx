/* This file is generated, do not edit! */
package numpy.lib.nanfunctions;
@:pythonImport("numpy.lib.nanfunctions") extern class Nanfunctions_Module {
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
		Replace values in `a` with NaN where `mask` is True.  This differs from
		copyto in that it will deal with the case where `a` is a numpy scalar.
		
		Parameters
		----------
		a : ndarray or numpy scalar
		    Array or numpy scalar some of whose values are to be replaced
		    by val.
		val : numpy scalar
		    Value used a replacement.
		mask : ndarray, scalar
		    Boolean array. Where True the corresponding element of `a` is
		    replaced by `val`. Broadcasts.
		
		Returns
		-------
		res : ndarray, scalar
		    Array with elements replaced or scalar `val`.
	**/
	static public function _copyto(a:Dynamic, val:Dynamic, mask:Dynamic):Dynamic;
	/**
		Compute a/b ignoring invalid results. If `a` is an array the division
		is done in place. If `a` is a scalar, then its type is preserved in the
		output. If out is None, then then a is used instead so that the
		division is in place. Note that this is only called with `a` an inexact
		type.
		
		Parameters
		----------
		a : {ndarray, numpy scalar}
		    Numerator. Expected to be of inexact type but not checked.
		b : {ndarray, numpy scalar}
		    Denominator.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.
		
		Returns
		-------
		ret : {ndarray, numpy scalar}
		    The return value is a/b. If `a` was an ndarray the division is done
		    in place. If `a` is a numpy scalar, the division preserves its type.
	**/
	static public function _divide_by_count(a:Dynamic, b:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Parameters
		----------
		a : array-like
		    Input array with at least 1 dimension.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output and will prevent the allocation of a new array.
		
		Returns
		-------
		y : bool ndarray or True
		    A bool array where ``np.nan`` positions are marked with ``False``
		    and other positions are marked with ``True``. If the type of ``a``
		    is such that it can't possibly contain ``np.nan``, returns ``True``.
	**/
	static public function _nan_mask(a:Dynamic, ?out:Dynamic):Dynamic;
	static public function _nanargmax_dispatcher(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _nanargmin_dispatcher(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function _nancumprod_dispatcher(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	static public function _nancumsum_dispatcher(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	static public function _nanmax_dispatcher(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
	static public function _nanmean_dispatcher(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Private function that doesn't support extended axis or keepdims.
		These methods are extended to this function using _ureduce
		See nanmedian for parameter usage
	**/
	static public function _nanmedian(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic):Dynamic;
	/**
		Private function for rank 1 arrays. Compute the median ignoring NaNs.
		See nanmedian for parameter usage
	**/
	static public function _nanmedian1d(arr1d:Dynamic, ?overwrite_input:Dynamic):Dynamic;
	static public function _nanmedian_dispatcher(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		sort + indexing median, faster for small medians along multiple
		dimensions due to the high overhead of apply_along_axis
		
		see nanmedian for parameter usage
	**/
	static public function _nanmedian_small(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic):Dynamic;
	static public function _nanmin_dispatcher(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
	static public function _nanpercentile_dispatcher(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	static public function _nanprod_dispatcher(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Private function for rank 1 arrays. Compute quantile ignoring NaNs.
		See nanpercentile for parameter usage
	**/
	static public function _nanquantile_1d(arr1d:Dynamic, q:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic):Dynamic;
	static public function _nanquantile_dispatcher(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Assumes that q is in [0, 1], and is an ndarray
	**/
	static public function _nanquantile_unchecked(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Private function that doesn't support extended axis or keepdims.
		These methods are extended to this function using _ureduce
		See nanpercentile for parameter usage
	**/
	static public function _nanquantile_ureduce_func(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic):Dynamic;
	static public function _nanstd_dispatcher(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	static public function _nansum_dispatcher(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
	static public function _nanvar_dispatcher(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Equivalent to arr1d[~arr1d.isnan()], but in a different order
		
		Presumably faster as it incurs fewer copies
		
		Parameters
		----------
		arr1d : ndarray
		    Array to remove nans from
		overwrite_input : bool
		    True if `arr1d` can be modified in place
		
		Returns
		-------
		res : ndarray
		    Array with nan elements removed
		overwrite_input : bool
		    True if `res` can be modified in place, given the constraint on the
		    input
	**/
	static public function _remove_nan_1d(arr1d:Dynamic, ?overwrite_input:Dynamic):numpy.Ndarray;
	/**
		If `a` is of inexact type, make a copy of `a`, replace NaNs with
		the `val` value, and return the copy together with a boolean mask
		marking the locations where NaNs were present. If `a` is not of
		inexact type, do nothing and return `a` together with a mask of None.
		
		Note that scalars will end up as array scalars, which is important
		for using the result as the value of the out argument in some
		operations.
		
		Parameters
		----------
		a : array-like
		    Input array.
		val : float
		    NaN values are set to val before doing the operation.
		
		Returns
		-------
		y : ndarray
		    If `a` is of inexact type, return a copy of `a` with the NaNs
		    replaced by the fill value, otherwise return `a`.
		mask: {bool, None}
		    If `a` is of inexact type, return a boolean mask marking locations of
		    NaNs, otherwise return None.
	**/
	static public function _replace_nan(a:Dynamic, val:Dynamic):numpy.Ndarray;
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
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
}