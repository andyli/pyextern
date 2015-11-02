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
	/**
		sort + indexing median, faster for small medians along multiple dimensions
		due to the high overhead of apply_along_axis
		see nanmedian for parameter usage
	**/
	static public function _nanmedian_small(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic):Dynamic;
	/**
		Private function that doesn't support extended axis or keepdims.
		These methods are extended to this function using _ureduce
		See nanpercentile for parameter usage
	**/
	static public function _nanpercentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Private function for rank 1 arrays. Compute percentile ignoring NaNs.
		See nanpercentile for parameter usage
	**/
	static public function _nanpercentile1d(arr1d:Dynamic, q:Dynamic, ?overwrite_input:Dynamic, ?interpolation:Dynamic):Dynamic;
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
	static public function _replace_nan(a:Dynamic, val:Dynamic):Dynamic;
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
		    Reduction function Kapable of receiving an axis argument.
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
	static public function _ureduce(a:Dynamic, func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public function nanargmax(a:Dynamic, ?axis:Dynamic):Dynamic;
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
	static public function nanargmin(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the maximum of an array or maximum along an axis, ignoring any
		NaNs.  When all-NaN slices are encountered a ``RuntimeWarning`` is
		raised and NaN is returned for that slice.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose maximum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : int, optional
		    Axis along which the maximum is computed. The default is to compute
		    the maximum of the flattened array.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.  See
		    `doc.ufuncs` for details.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original `a`.
		
		    .. versionadded:: 1.8.0
		
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
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
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
		array([ 3.,  2.])
		>>> np.nanmax(a, axis=1)
		array([ 2.,  3.])
		
		When positive infinity and negative infinity are present:
		
		>>> np.nanmax([1, 2, np.nan, np.NINF])
		2.0
		>>> np.nanmax([1, 2, np.nan, np.inf])
		inf
	**/
	static public function nanmax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		axis : int, optional
		    Axis along which the means are computed. The default is to compute
		    the mean of the flattened array.
		dtype : data-type, optional
		    Type to use in computing the mean.  For integer inputs, the default
		    is `float64`; for inexact inputs, it is the same as the input
		    dtype.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.  See
		    `doc.ufuncs` for details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original `arr`.
		
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
		array([ 2.,  4.])
		>>> np.nanmean(a, axis=1)
		array([ 1.,  3.5])
	**/
	static public function nanmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the median along the specified axis, while ignoring NaNs.
		
		Returns the median of the array elements.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : int, optional
		    Axis along which the medians are computed. The default (axis=None)
		    is to compute the median along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape and buffer length as the expected output, but the
		    type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		   If True, then allow use of memory of input array (a) for
		   calculations. The input array will be modified by the call to
		   median. This will save memory when you do not need to preserve
		   the contents of the input array. Treat the input as undefined,
		   but it will probably be fully or partially sorted. Default is
		   False. Note that, if `overwrite_input` is True and the input
		   is not already an ndarray, an error will be raised.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		
		
		Returns
		-------
		median : ndarray
		    A new array holding the result. If the input contains integers, or
		    floats of smaller precision than 64, then the output data-type is
		    float64.  Otherwise, the output data-type is the same as that of the
		    input.
		
		See Also
		--------
		mean, median, percentile
		
		Notes
		-----
		Given a vector V of length N, the median of V is the middle value of
		a sorted copy of V, ``V_sorted`` - i.e., ``V_sorted[(N-1)/2]``, when N is
		odd.  When N is even, it is the average of the two middle values of
		``V_sorted``.
		
		Examples
		--------
		>>> a = np.array([[10.0, 7, 4], [3, 2, 1]])
		>>> a[0, 1] = np.nan
		>>> a
		array([[ 10.,  nan,   4.],
		   [  3.,   2.,   1.]])
		>>> np.median(a)
		nan
		>>> np.nanmedian(a)
		3.0
		>>> np.nanmedian(a, axis=0)
		array([ 6.5,  2.,  2.5])
		>>> np.median(a, axis=1)
		array([ 7.,  2.])
		>>> b = a.copy()
		>>> np.nanmedian(b, axis=1, overwrite_input=True)
		array([ 7.,  2.])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.nanmedian(b, axis=None, overwrite_input=True)
		3.0
		>>> assert not np.all(a==b)
	**/
	static public function nanmedian(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return minimum of an array or minimum along an axis, ignoring any NaNs.
		When all-NaN slices are encountered a ``RuntimeWarning`` is raised and
		Nan is returned for that slice.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose minimum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : int, optional
		    Axis along which the minimum is computed. The default is to compute
		    the minimum of the flattened array.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.  See
		    `doc.ufuncs` for details.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original `a`.
		
		    .. versionadded:: 1.8.0
		
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
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
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
		array([ 1.,  2.])
		>>> np.nanmin(a, axis=1)
		array([ 1.,  3.])
		
		When positive infinity and negative infinity are present:
		
		>>> np.nanmin([1, 2, np.nan, np.inf])
		1.0
		>>> np.nanmin([1, 2, np.nan, np.NINF])
		-inf
	**/
	static public function nanmin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the qth percentile of the data along the specified axis, while
		ignoring nan values.
		
		Returns the qth percentile of the array elements.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		q : float in range of [0,100] (or sequence of floats)
		    Percentile to compute which must be between 0 and 100 inclusive.
		axis : int or sequence of int, optional
		    Axis along which the percentiles are computed. The default (None)
		    is to compute the percentiles along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow use of memory of input array `a` for
		    calculations. The input array will be modified by the call to
		    percentile. This will save memory when you do not need to preserve
		    the contents of the input array. In this case you should not make
		    any assumptions about the content of the passed in array `a` after
		    this function completes -- treat it as undefined. Default is False.
		    Note that, if the `a` input is not already an array this parameter
		    will have no effect, `a` will be converted to an array internally
		    regardless of the value of this parameter.
		interpolation : {'linear', 'lower', 'higher', 'midpoint', 'nearest'}
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`:
		        * linear: `i + (j - i) * fraction`, where `fraction` is the
		          fractional part of the index surrounded by `i` and `j`.
		        * lower: `i`.
		        * higher: `j`.
		        * nearest: `i` or `j` whichever is nearest.
		        * midpoint: (`i` + `j`) / 2.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		
		Returns
		-------
		nanpercentile : scalar or ndarray
		    If a single percentile `q` is given and axis=None a scalar is
		    returned.  If multiple percentiles `q` are given an array holding
		    the result is returned. The results are listed in the first axis.
		    (If `out` is specified, in which case that array is returned
		    instead).  If the input contains integers, or floats of smaller
		    precision than 64, then the output data-type is float64. Otherwise,
		    the output data-type is the same as that of the input.
		
		See Also
		--------
		nanmean, nanmedian, percentile, median, mean
		
		Notes
		-----
		Given a vector V of length N, the q-th percentile of V is the q-th ranked
		value in a sorted copy of V.  The values and distances of the two
		nearest neighbors as well as the `interpolation` parameter will
		determine the percentile if the normalized ranking does not match q
		exactly. This function is the same as the median if ``q=50``, the same
		as the minimum if ``q=0``and the same as the maximum if ``q=100``.
		
		Examples
		--------
		>>> a = np.array([[10., 7., 4.], [3., 2., 1.]])
		>>> a[0][1] = np.nan
		>>> a
		array([[ 10.,  nan,   4.],
		   [  3.,   2.,   1.]])
		>>> np.percentile(a, 50)
		nan
		>>> np.nanpercentile(a, 50)
		3.5
		>>> np.nanpercentile(a, 50, axis=0)
		array([[ 6.5,  4.5,  2.5]])
		>>> np.nanpercentile(a, 50, axis=1)
		array([[ 7.],
		       [ 2.]])
		>>> m = np.nanpercentile(a, 50, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.nanpercentile(a, 50, axis=0, out=m)
		array([[ 6.5,  4.5,  2.5]])
		>>> m
		array([[ 6.5,  4.5,  2.5]])
		>>> b = a.copy()
		>>> np.nanpercentile(b, 50, axis=1, overwrite_input=True)
		array([[ 7.],
		       [ 2.]])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.nanpercentile(b, 50, axis=None, overwrite_input=True)
		array([ 3.5])
	**/
	static public function nanpercentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the product of array elements over a given axis treating Not a
		Numbers (NaNs) as zero.
		
		One is returned for slices that are all-NaN or empty.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose sum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : int, optional
		    Axis along which the product is computed. The default is to compute
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
		    expected output, but the type will be cast if necessary.  See
		    `doc.ufuncs` for details. The casting of NaN to integer can yield
		    unexpected results.
		keepdims : bool, optional
		    If True, the axes which are reduced are left in the result as
		    dimensions with size one. With this option, the result will
		    broadcast correctly against the original `arr`.
		
		Returns
		-------
		y : ndarray or numpy scalar
		
		See Also
		--------
		numpy.prod : Product across array propagating NaNs.
		isnan : Show which elements are NaN.
		
		Notes
		-----
		Numpy integer arithmetic is modular. If the size of a product exceeds
		the size of an integer accumulator, its value will wrap around and the
		result will be incorrect. Specifying ``dtype=double`` can alleviate
		that problem.
		
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
		array([ 3.,  2.])
	**/
	static public function nanprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		axis : int, optional
		    Axis along which the standard deviation is computed. The default is
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
		    the result will broadcast correctly against the original `arr`.
		
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
		numpy.doc.ufuncs : Section "Output arguments"
		
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
		array([ 1.,  0.])
		>>> np.nanstd(a, axis=1)
		array([ 0.,  0.5])
	**/
	static public function nanstd(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the sum of array elements over a given axis treating Not a
		Numbers (NaNs) as zero.
		
		In Numpy versions <= 1.8 Nan is returned for slices that are all-NaN or
		empty. In later versions zero is returned.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose sum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : int, optional
		    Axis along which the sum is computed. The default is to compute the
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
		    `doc.ufuncs` for details. The casting of NaN to integer can yield
		    unexpected results.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If True, the axes which are reduced are left in the result as
		    dimensions with size one. With this option, the result will
		    broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.8.0
		
		Returns
		-------
		y : ndarray or numpy scalar
		
		See Also
		--------
		numpy.sum : Sum across array propagating NaNs.
		isnan : Show which elements are NaN.
		isfinite: Show which elements are not NaN or +/-inf.
		
		Notes
		-----
		If both positive and negative infinity are present, the sum will be Not
		A Number (NaN).
		
		Numpy integer arithmetic is modular. If the size of a sum exceeds the
		size of an integer accumulator, its value will wrap around and the
		result will be incorrect. Specifying ``dtype=double`` can alleviate
		that problem.
		
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
		array([ 2.,  1.])
		>>> np.nansum([1, np.nan, np.inf])
		inf
		>>> np.nansum([1, np.nan, np.NINF])
		-inf
		>>> np.nansum([1, np.nan, np.inf, -np.inf]) # both +/- infinity present
		nan
	**/
	static public function nansum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		axis : int, optional
		    Axis along which the variance is computed.  The default is to compute
		    the variance of the flattened array.
		dtype : data-type, optional
		    Type to use in computing the variance.  For arrays of integer type
		    the default is `float32`; for arrays of float types it is the same as
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
		    the result will broadcast correctly against the original `arr`.
		
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
		numpy.doc.ufuncs : Section "Output arguments"
		
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
		
		Examples
		--------
		>>> a = np.array([[1, np.nan], [3, 4]])
		>>> np.var(a)
		1.5555555555555554
		>>> np.nanvar(a, axis=0)
		array([ 1.,  0.])
		>>> np.nanvar(a, axis=1)
		array([ 0.,  0.25])
	**/
	static public function nanvar(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}