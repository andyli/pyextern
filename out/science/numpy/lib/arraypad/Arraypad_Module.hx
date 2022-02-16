/* This file is generated, do not edit! */
package numpy.lib.arraypad;
@:pythonImport("numpy.lib.arraypad") extern class Arraypad_Module {
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
		Broadcast `x` to an array with the shape (`ndim`, 2).
		
		A helper function for `pad` that prepares and validates arguments like
		`pad_width` for iteration in pairs.
		
		Parameters
		----------
		x : {None, scalar, array-like}
		    The object to broadcast to the shape (`ndim`, 2).
		ndim : int
		    Number of pairs the broadcasted `x` will have.
		as_index : bool, optional
		    If `x` is not None, try to round each element of `x` to an integer
		    (dtype `np.intp`) and ensure every element is positive.
		
		Returns
		-------
		pairs : nested iterables, shape (`ndim`, 2)
		    The broadcasted version of `x`.
		
		Raises
		------
		ValueError
		    If `as_index` is True and `x` contains negative elements.
		    Or if `x` is not broadcastable to the shape (`ndim`, 2).
	**/
	static public function _as_pairs(x:Dynamic, ndim:Dynamic, ?as_index:Dynamic):Dynamic;
	/**
		Retrieve edge values from empty-padded array in given dimension.
		
		Parameters
		----------
		padded : ndarray
		    Empty-padded array.
		axis : int
		    Dimension in which the edges are considered.
		width_pair : (int, int)
		    Pair of widths that mark the pad area on both sides in the given
		    dimension.
		
		Returns
		-------
		left_edge, right_edge : ndarray
		    Edge values of the valid area in `padded` in the given dimension. Its
		    shape will always match `padded` except for the dimension given by
		    `axis` which will have a length of 1.
	**/
	static public function _get_edges(padded:Dynamic, axis:Dynamic, width_pair:Dynamic):numpy.Ndarray;
	/**
		Construct linear ramps for empty-padded array in given dimension.
		
		Parameters
		----------
		padded : ndarray
		    Empty-padded array.
		axis : int
		    Dimension in which the ramps are constructed.
		width_pair : (int, int)
		    Pair of widths that mark the pad area on both sides in the given
		    dimension.
		end_value_pair : (scalar, scalar)
		    End values for the linear ramps which form the edge of the fully padded
		    array. These values are included in the linear ramps.
		
		Returns
		-------
		left_ramp, right_ramp : ndarray
		    Linear ramps to set on both sides of `padded`.
	**/
	static public function _get_linear_ramps(padded:Dynamic, axis:Dynamic, width_pair:Dynamic, end_value_pair:Dynamic):numpy.Ndarray;
	/**
		Calculate statistic for the empty-padded array in given dimension.
		
		Parameters
		----------
		padded : ndarray
		    Empty-padded array.
		axis : int
		    Dimension in which the statistic is calculated.
		width_pair : (int, int)
		    Pair of widths that mark the pad area on both sides in the given
		    dimension.
		length_pair : 2-element sequence of None or int
		    Gives the number of values in valid area from each side that is
		    taken into account when calculating the statistic. If None the entire
		    valid area in `padded` is considered.
		stat_func : function
		    Function to compute statistic. The expected signature is
		    ``stat_func(x: ndarray, axis: int, keepdims: bool) -> ndarray``.
		
		Returns
		-------
		left_stat, right_stat : ndarray
		    Calculated statistic for both sides of `padded`.
	**/
	static public function _get_stats(padded:Dynamic, axis:Dynamic, width_pair:Dynamic, length_pair:Dynamic, stat_func:Dynamic):numpy.Ndarray;
	static public function _pad_dispatcher(array:Dynamic, pad_width:Dynamic, ?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pad array on all sides with either a single value or undefined values.
		
		Parameters
		----------
		array : ndarray
		    Array to grow.
		pad_width : sequence of tuple[int, int]
		    Pad width on both sides for each dimension in `arr`.
		fill_value : scalar, optional
		    If provided the padded area is filled with this value, otherwise
		    the pad area left undefined.
		
		Returns
		-------
		padded : ndarray
		    The padded array with the same dtype as`array`. Its order will default
		    to C-style if `array` is not F-contiguous.
		original_area_slice : tuple
		    A tuple of slices pointing to the area of the original array.
	**/
	static public function _pad_simple(array:Dynamic, pad_width:Dynamic, ?fill_value:Dynamic):numpy.Ndarray;
	/**
		Rounds arr inplace if destination dtype is integer.
		
		Parameters
		----------
		arr : ndarray
		    Input array.
		dtype : dtype
		    The dtype of the destination array.
	**/
	static public function _round_if_needed(arr:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Set empty-padded area in given dimension.
		
		Parameters
		----------
		padded : ndarray
		    Array with the pad area which is modified inplace.
		axis : int
		    Dimension with the pad area to set.
		width_pair : (int, int)
		    Pair of widths that mark the pad area on both sides in the given
		    dimension.
		value_pair : tuple of scalars or ndarrays
		    Values inserted into the pad area on each side. It must match or be
		    broadcastable to the shape of `arr`.
	**/
	static public function _set_pad_area(padded:Dynamic, axis:Dynamic, width_pair:Dynamic, value_pair:Dynamic):Dynamic;
	/**
		Pad `axis` of `arr` with reflection.
		
		Parameters
		----------
		padded : ndarray
		    Input array of arbitrary shape.
		axis : int
		    Axis along which to pad `arr`.
		width_pair : (int, int)
		    Pair of widths that mark the pad area on both sides in the given
		    dimension.
		method : str
		    Controls method of reflection; options are 'even' or 'odd'.
		include_edge : bool
		    If true, edge value is included in reflection, otherwise the edge
		    value forms the symmetric axis to the reflection.
		
		Returns
		-------
		pad_amt : tuple of ints, length 2
		    New index positions of padding to do along the `axis`. If these are
		    both 0, padding is done in this dimension.
	**/
	static public function _set_reflect_both(padded:Dynamic, axis:Dynamic, width_pair:Dynamic, method:Dynamic, ?include_edge:Dynamic):Dynamic;
	/**
		Pad `axis` of `arr` with wrapped values.
		
		Parameters
		----------
		padded : ndarray
		    Input array of arbitrary shape.
		axis : int
		    Axis along which to pad `arr`.
		width_pair : (int, int)
		    Pair of widths that mark the pad area on both sides in the given
		    dimension.
		
		Returns
		-------
		pad_amt : tuple of ints, length 2
		    New index positions of padding to do along the `axis`. If these are
		    both 0, padding is done in this dimension.
	**/
	static public function _set_wrap_both(padded:Dynamic, axis:Dynamic, width_pair:Dynamic):Dynamic;
	/**
		Construct tuple of slices to slice an array in the given dimension.
		
		Parameters
		----------
		sl : slice
		    The slice for the given dimension.
		axis : int
		    The axis to which `sl` is applied. All other dimensions are left
		    "unsliced".
		
		Returns
		-------
		sl : tuple of slices
		    A tuple with slices matching `shape` in length.
		
		Examples
		--------
		>>> _slice_at_axis(slice(None, 3, -1), 1)
		(slice(None, None, None), slice(None, 3, -1), (...,))
	**/
	static public function _slice_at_axis(sl:Dynamic, axis:Dynamic):Dynamic;
	/**
		Get a view of the current region of interest during iterative padding.
		
		When padding multiple dimensions iteratively corner values are
		unnecessarily overwritten multiple times. This function reduces the
		working area for the first dimensions so that corners are excluded.
		
		Parameters
		----------
		array : ndarray
		    The array with the region of interest.
		original_area_slice : tuple of slices
		    Denotes the area with original values of the unpadded array.
		axis : int
		    The currently padded dimension assuming that `axis` is padded before
		    `axis` + 1.
		
		Returns
		-------
		roi : ndarray
		    The region of interest of the original `array`.
	**/
	static public function _view_roi(array:Dynamic, original_area_slice:Dynamic, axis:Dynamic):numpy.Ndarray;
	/**
		Decorator for adding dispatch with the __array_function__ protocol.
		
		See NEP-18 for example usage.
		
		Parameters
		----------
		dispatcher : callable
		    Function that when called like ``dispatcher(*args, **kwargs)`` with
		    arguments from the NumPy function call returns an iterable of
		    array-like arguments to check for ``__array_function__``.
		module : str, optional
		    __module__ attribute to set on new function, e.g., ``module='numpy'``.
		    By default, module is copied from the decorated function.
		verify : bool, optional
		    If True, verify the that the signature of the dispatcher and decorated
		    function signatures match exactly: all required and optional arguments
		    should appear in order with the same names, but the default values for
		    all optional arguments should be ``None``. Only disable verification
		    if the dispatcher's signature needs to deviate for some particular
		    reason, e.g., because the function has a signature like
		    ``func(*args, **kwargs)``.
		docs_from_dispatcher : bool, optional
		    If True, copy docs from the dispatcher function onto the dispatched
		    function, rather than from the implementation. This is useful for
		    functions defined in C, which otherwise don't have docstrings.
		
		Returns
		-------
		Function suitable for decorating the implementation of a NumPy function.
	**/
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
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
}