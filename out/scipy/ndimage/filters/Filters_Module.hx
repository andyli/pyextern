/* This file is generated, do not edit! */
package scipy.ndimage.filters;
@:pythonImport("scipy.ndimage.filters") extern class Filters_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _axis_doc : Dynamic;
	static public function _correlate_or_convolve(input:Dynamic, weights:Dynamic, output:Dynamic, mode:Dynamic, cval:Dynamic, origin:Dynamic, convolution:Dynamic):Dynamic;
	static public var _cval_doc : Dynamic;
	static public var _extra_arguments_doc : Dynamic;
	static public var _extra_keywords_doc : Dynamic;
	static public var _input_doc : Dynamic;
	static public function _min_or_max_filter(input:Dynamic, size:Dynamic, footprint:Dynamic, structure:Dynamic, output:Dynamic, mode:Dynamic, cval:Dynamic, origin:Dynamic, minimum:Dynamic):Dynamic;
	static public var _mode_doc : Dynamic;
	static public var _origin_doc : Dynamic;
	static public var _output_doc : Dynamic;
	static public function _rank_filter(input:Dynamic, rank:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic, ?operation:Dynamic):Dynamic;
	static public var _size_foot_doc : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Multidimensional convolution.
		
		The array is convolved with the given kernel.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		weights : array_like
		    Array of weights, same number of dimensions as input
		output : ndarray, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect','constant','nearest','mirror', 'wrap'}, optional
		    the `mode` parameter determines how the array borders are
		    handled. For 'constant' mode, values beyond borders are set to be
		    `cval`. Default is 'reflect'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : array_like, optional
		    The `origin` parameter controls the placement of the filter, 
		    relative to the centre of the current element of the input.  
		    Default of 0 is equivalent to ``(0,)*input.ndim``.
		
		Returns
		-------
		result : ndarray
		    The result of convolution of `input` with `weights`.
		
		See Also
		--------
		correlate : Correlate an image with a kernel.
		
		Notes
		-----
		Each value in result is :math:`C_i = \sum_j{I_{i+k-j} W_j}`, where
		W is the `weights` kernel,
		j is the n-D spatial index over :math:`W`,
		I is the `input` and k is the coordinate of the center of
		W, specified by `origin` in the input parameters.
		
		Examples
		--------
		Perhaps the simplest case to understand is ``mode='constant', cval=0.0``,
		because in this case borders (i.e. where the `weights` kernel, centered
		on any one value, extends beyond an edge of `input`.
		
		>>> a = np.array([[1, 2, 0, 0],
		...               [5, 3, 0, 4],
		...               [0, 0, 0, 7],
		...               [9, 3, 0, 0]])
		>>> k = np.array([[1,1,1],[1,1,0],[1,0,0]])
		>>> from scipy import ndimage
		>>> ndimage.convolve(a, k, mode='constant', cval=0.0)
		array([[11, 10,  7,  4],
		       [10,  3, 11, 11],
		       [15, 12, 14,  7],
		       [12,  3,  7,  0]])
		
		Setting ``cval=1.0`` is equivalent to padding the outer edge of `input`
		with 1.0's (and then extracting only the original region of the result).
		
		>>> ndimage.convolve(a, k, mode='constant', cval=1.0)
		array([[13, 11,  8,  7],
		       [11,  3, 11, 14],
		       [16, 12, 14, 10],
		       [15,  6, 10,  5]])
		
		With ``mode='reflect'`` (the default), outer values are reflected at the
		edge of `input` to fill in missing values.
		
		>>> b = np.array([[2, 0, 0],
		...               [1, 0, 0],
		...               [0, 0, 0]])
		>>> k = np.array([[0,1,0], [0,1,0], [0,1,0]])
		>>> ndimage.convolve(b, k, mode='reflect')
		array([[5, 0, 0],
		       [3, 0, 0],
		       [1, 0, 0]])
		
		This includes diagonally at the corners.
		
		>>> k = np.array([[1,0,0],[0,1,0],[0,0,1]])
		>>> ndimage.convolve(b, k)
		array([[4, 2, 0],
		       [3, 2, 0],
		       [1, 1, 0]])
		
		With ``mode='nearest'``, the single nearest value in to an edge in
		`input` is repeated as many times as needed to match the overlapping
		`weights`.
		
		>>> c = np.array([[2, 0, 1],
		...               [1, 0, 0],
		...               [0, 0, 0]])
		>>> k = np.array([[0, 1, 0],
		...               [0, 1, 0],
		...               [0, 1, 0],
		...               [0, 1, 0],
		...               [0, 1, 0]])
		>>> ndimage.convolve(c, k, mode='nearest')
		array([[7, 0, 3],
		       [5, 0, 2],
		       [3, 0, 1]])
	**/
	static public function convolve(input:Dynamic, weights:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a one-dimensional convolution along the given axis.
		
		The lines of the array along the given axis are convolved with the
		given weights.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		weights : ndarray
		    One-dimensional sequence of numbers.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
		
		Returns
		-------
		convolve1d : ndarray
		    Convolved array with same shape as input
	**/
	static public function convolve1d(input:Dynamic, weights:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Multi-dimensional correlation.
		
		The array is correlated with the given kernel.
		
		Parameters
		----------
		input : array-like
		    input array to filter
		weights : ndarray
		    array of weights, same number of dimensions as input
		output : array, optional
		    The ``output`` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect','constant','nearest','mirror', 'wrap'}, optional
		    The ``mode`` parameter determines how the array borders are
		    handled, where ``cval`` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if ``mode`` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The ``origin`` parameter controls the placement of the filter.
		    Default 0
		
		See Also
		--------
		convolve : Convolve an image with a kernel.
	**/
	static public function correlate(input:Dynamic, weights:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a one-dimensional correlation along the given axis.
		
		The lines of the array along the given axis are correlated with the
		given weights.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		weights : array
		    One-dimensional sequence of numbers.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
	**/
	static public function correlate1d(input:Dynamic, weights:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var docdict : Dynamic;
	static public function docfiller(f:Dynamic):Dynamic;
	/**
		Multidimensional Gaussian filter.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		sigma : scalar or sequence of scalars
		    Standard deviation for Gaussian kernel. The standard
		    deviations of the Gaussian filter are given for each axis as a
		    sequence, or as a single number, in which case it is equal for
		    all axes.
		order : {0, 1, 2, 3} or sequence from same set, optional
		    The order of the filter along each axis is given as a sequence
		    of integers, or as a single number.  An order of 0 corresponds
		    to convolution with a Gaussian kernel. An order of 1, 2, or 3
		    corresponds to convolution with the first, second or third
		    derivatives of a Gaussian. Higher order derivatives are not
		    implemented
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		truncate : float
		    Truncate the filter at this many standard deviations.
		    Default is 4.0.
		
		Returns
		-------
		gaussian_filter : ndarray
		    Returned array of same shape as `input`.
		
		Notes
		-----
		The multidimensional filter is implemented as a sequence of
		one-dimensional convolution filters. The intermediate arrays are
		stored in the same data type as the output. Therefore, for output
		types with a limited precision, the results may be imprecise
		because intermediate results may be stored with insufficient
		precision.
		
		Examples
		--------
		>>> from scipy.ndimage import gaussian_filter
		>>> a = np.arange(50, step=2).reshape((5,5))
		>>> a
		array([[ 0,  2,  4,  6,  8],
		       [10, 12, 14, 16, 18],
		       [20, 22, 24, 26, 28],
		       [30, 32, 34, 36, 38],
		       [40, 42, 44, 46, 48]])
		>>> gaussian_filter(a, sigma=1)
		array([[ 4,  6,  8,  9, 11],
		       [10, 12, 14, 15, 17],
		       [20, 22, 24, 25, 27],
		       [29, 31, 33, 34, 36],
		       [35, 37, 39, 40, 42]])
	**/
	static public function gaussian_filter(input:Dynamic, sigma:Dynamic, ?order:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?truncate:Dynamic):Dynamic;
	/**
		One-dimensional Gaussian filter.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		sigma : scalar
		    standard deviation for Gaussian kernel
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		order : {0, 1, 2, 3}, optional
		    An order of 0 corresponds to convolution with a Gaussian
		    kernel. An order of 1, 2, or 3 corresponds to convolution with
		    the first, second or third derivatives of a Gaussian. Higher
		    order derivatives are not implemented
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		truncate : float, optional
		    Truncate the filter at this many standard deviations.
		    Default is 4.0.
		
		Returns
		-------
		gaussian_filter1d : ndarray
	**/
	static public function gaussian_filter1d(input:Dynamic, sigma:Dynamic, ?axis:Dynamic, ?order:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?truncate:Dynamic):Dynamic;
	/**
		Multidimensional gradient magnitude using Gaussian derivatives.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		sigma : scalar or sequence of scalars
		    The standard deviations of the Gaussian filter are given for
		    each axis as a sequence, or as a single number, in which case
		    it is equal for all axes..
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		Extra keyword arguments will be passed to gaussian_filter().
	**/
	static public function gaussian_gradient_magnitude(input:Dynamic, sigma:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Multidimensional Laplace filter using gaussian second derivatives.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		sigma : scalar or sequence of scalars
		    The standard deviations of the Gaussian filter are given for
		    each axis as a sequence, or as a single number, in which case
		    it is equal for all axes.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		Extra keyword arguments will be passed to gaussian_filter().
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> ascent = misc.ascent()
		
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		
		>>> result = ndimage.gaussian_laplace(ascent, sigma=1)
		>>> ax1.imshow(result)
		
		>>> result = ndimage.gaussian_laplace(ascent, sigma=3)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function gaussian_laplace(input:Dynamic, sigma:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculates a multi-dimensional filter using the given function.
		
		At each element the provided function is called. The input values
		within the filter footprint at that element are passed to the function
		as a 1D array of double values.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		function : callable
		    Function to apply at each element.
		size : scalar or tuple, optional
		    See footprint, below
		footprint : array, optional
		    Either `size` or `footprint` must be defined.  `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function.  Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2).
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
		extra_arguments : sequence, optional
		    Sequence of extra positional arguments to pass to passed function
		extra_keywords : dict, optional
		    dict of extra keyword arguments to pass to passed function
	**/
	static public function generic_filter(input:Dynamic, _function:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic, ?extra_arguments:Dynamic, ?extra_keywords:Dynamic):Dynamic;
	/**
		Calculate a one-dimensional filter along the given axis.
		
		`generic_filter1d` iterates over the lines of the array, calling the
		given function at each line. The arguments of the line are the
		input line, and the output line. The input and output lines are 1D
		double arrays.  The input line is extended appropriately according
		to the filter size and origin. The output line must be modified
		in-place with the result.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		function : callable
		    Function to apply along given axis.
		filter_size : scalar
		    Length of the filter.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
		extra_arguments : sequence, optional
		    Sequence of extra positional arguments to pass to passed function
		extra_keywords : dict, optional
		    dict of extra keyword arguments to pass to passed function
	**/
	static public function generic_filter1d(input:Dynamic, _function:Dynamic, filter_size:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic, ?extra_arguments:Dynamic, ?extra_keywords:Dynamic):Dynamic;
	/**
		Gradient magnitude using a provided gradient function.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		derivative : callable
		    Callable with the following signature::
		
		        derivative(input, axis, output, mode, cval,
		                   *extra_arguments, **extra_keywords)
		
		    See `extra_arguments`, `extra_keywords` below.
		    `derivative` can assume that `input` and `output` are ndarrays.
		    Note that the output from `derivative` is modified inplace;
		    be careful to copy important inputs before returning them.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		extra_keywords : dict, optional
		    dict of extra keyword arguments to pass to passed function
		extra_arguments : sequence, optional
		    Sequence of extra positional arguments to pass to passed function
	**/
	static public function generic_gradient_magnitude(input:Dynamic, derivative:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?extra_arguments:Dynamic, ?extra_keywords:Dynamic):Dynamic;
	/**
		N-dimensional Laplace filter using a provided second derivative function
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		derivative2 : callable
		    Callable with the following signature::
		
		        derivative2(input, axis, output, mode, cval,
		                    *extra_arguments, **extra_keywords)
		
		    See `extra_arguments`, `extra_keywords` below.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		extra_keywords : dict, optional
		    dict of extra keyword arguments to pass to passed function
		extra_arguments : sequence, optional
		    Sequence of extra positional arguments to pass to passed function
	**/
	static public function generic_laplace(input:Dynamic, derivative2:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?extra_arguments:Dynamic, ?extra_keywords:Dynamic):Dynamic;
	/**
		N-dimensional Laplace filter based on approximate second derivatives.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> ascent = misc.ascent()
		>>> result = ndimage.laplace(ascent)
		>>> plt.gray()  # show the filtered result in grayscale
		>>> plt.imshow(result)
	**/
	static public function laplace(input:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic):Dynamic;
	/**
		Calculates a multi-dimensional maximum filter.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		size : scalar or tuple, optional
		    See footprint, below
		footprint : array, optional
		    Either `size` or `footprint` must be defined.  `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function.  Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2).
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
	**/
	static public function maximum_filter(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a one-dimensional maximum filter along the given axis.
		
		The lines of the array along the given axis are filtered with a
		maximum filter of given size.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		size : int
		    Length along which to calculate the 1-D maximum.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
		
		Returns
		-------
		maximum1d : ndarray, None
		    Maximum-filtered array with same shape as input.
		    None if `output` is not None
		
		Notes
		-----
		This function implements the MAXLIST algorithm [1]_, as described by
		Richard Harter [2]_, and has a guaranteed O(n) performance, `n` being
		the `input` length, regardless of filter size.
		
		References
		----------
		.. [1] http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.42.2777
		.. [2] http://www.richardhartersworld.com/cri/2001/slidingmin.html
	**/
	static public function maximum_filter1d(input:Dynamic, size:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculates a multidimensional median filter.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		size : scalar or tuple, optional
		    See footprint, below
		footprint : array, optional
		    Either `size` or `footprint` must be defined.  `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function.  Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2).
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
		
		Returns
		-------
		median_filter : ndarray
		    Return of same shape as `input`.
	**/
	static public function median_filter(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculates a multi-dimensional minimum filter.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		size : scalar or tuple, optional
		    See footprint, below
		footprint : array, optional
		    Either `size` or `footprint` must be defined.  `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function.  Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2).
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
	**/
	static public function minimum_filter(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a one-dimensional minimum filter along the given axis.
		
		The lines of the array along the given axis are filtered with a
		minimum filter of given size.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		size : int
		    length along which to calculate 1D minimum
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
		
		Notes
		-----
		This function implements the MINLIST algorithm [1]_, as described by
		Richard Harter [2]_, and has a guaranteed O(n) performance, `n` being
		the `input` length, regardless of filter size.
		
		References
		----------
		.. [1] http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.42.2777
		.. [2] http://www.richardhartersworld.com/cri/2001/slidingmin.html
	**/
	static public function minimum_filter1d(input:Dynamic, size:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculates a multi-dimensional percentile filter.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		percentile : scalar
		    The percentile parameter may be less then zero, i.e.,
		    percentile = -20 equals percentile = 80
		size : scalar or tuple, optional
		    See footprint, below
		footprint : array, optional
		    Either `size` or `footprint` must be defined.  `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function.  Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2).
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
	**/
	static public function percentile_filter(input:Dynamic, percentile:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a Prewitt filter.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> ascent = misc.ascent()
		>>> result = ndimage.prewitt(ascent)
		>>> plt.gray()  # show the filtered result in grayscale
		>>> plt.imshow(result)
	**/
	static public function prewitt(input:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Calculates a multi-dimensional rank filter.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		rank : int
		    The rank parameter may be less then zero, i.e., rank = -1
		    indicates the largest element.
		size : scalar or tuple, optional
		    See footprint, below
		footprint : array, optional
		    Either `size` or `footprint` must be defined.  `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function.  Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2).
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
	**/
	static public function rank_filter(input:Dynamic, rank:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a Sobel filter.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> ascent = misc.ascent()
		>>> result = ndimage.sobel(ascent)
		>>> plt.gray()  # show the filtered result in grayscale
		>>> plt.imshow(result)
	**/
	static public function sobel(input:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic):Dynamic;
	/**
		Multi-dimensional uniform filter.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		size : int or sequence of ints, optional
		    The sizes of the uniform filter are given for each axis as a
		    sequence, or as a single number, in which case the size is
		    equal for all axes.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
		
		Notes
		-----
		The multi-dimensional filter is implemented as a sequence of
		one-dimensional uniform filters. The intermediate arrays are stored
		in the same data type as the output. Therefore, for output types
		with a limited precision, the results may be imprecise because
		intermediate results may be stored with insufficient precision.
	**/
	static public function uniform_filter(input:Dynamic, ?size:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a one-dimensional uniform filter along the given axis.
		
		The lines of the array along the given axis are filtered with a
		uniform filter of given size.
		
		Parameters
		----------
		input : array_like
		    Input array to filter.
		size : int
		    length of uniform filter
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array, optional
		    The `output` parameter passes an array in which to store the
		    filter output.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0.0.
	**/
	static public function uniform_filter1d(input:Dynamic, size:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
}