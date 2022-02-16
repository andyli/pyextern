/* This file is generated, do not edit! */
package scipy.ndimage.filters;
@:pythonImport("scipy.ndimage.filters") extern class Filters_Module {
	/**
		Multidimensional convolution.
		
		The array is convolved with the given kernel.
		
		Parameters
		----------
		input : array_like
		    The input array.
		weights : array_like
		    Array of weights, same number of dimensions as input
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0
		origin : int or sequence, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right. By passing a sequence of origins with length equal to
		    the number of dimensions of the input array, different shifts can
		    be specified along each axis.
		
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
		j is the N-D spatial index over :math:`W`,
		I is the `input` and k is the coordinate of the center of
		W, specified by `origin` in the input parameters.
		
		Examples
		--------
		Perhaps the simplest case to understand is ``mode='constant', cval=0.0``,
		because in this case borders (i.e., where the `weights` kernel, centered
		on any one value, extends beyond an edge of `input`) are treated as zeros.
		
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
		Calculate a 1-D convolution along the given axis.
		
		The lines of the array along the given axis are convolved with the
		given weights.
		
		Parameters
		----------
		input : array_like
		    The input array.
		weights : ndarray
		    1-D sequence of numbers.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right.
		
		Returns
		-------
		convolve1d : ndarray
		    Convolved array with same shape as input
		
		Examples
		--------
		>>> from scipy.ndimage import convolve1d
		>>> convolve1d([2, 8, 0, 4, 1, 9, 9, 0], weights=[1, 3])
		array([14, 24,  4, 13, 12, 36, 27,  0])
	**/
	static public function convolve1d(input:Dynamic, weights:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Multidimensional correlation.
		
		The array is correlated with the given kernel.
		
		Parameters
		----------
		input : array_like
		    The input array.
		weights : ndarray
		    array of weights, same number of dimensions as input
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int or sequence, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right. By passing a sequence of origins with length equal to
		    the number of dimensions of the input array, different shifts can
		    be specified along each axis.
		
		Returns
		-------
		result : ndarray
		    The result of correlation of `input` with `weights`.
		
		See Also
		--------
		convolve : Convolve an image with a kernel.
		
		Examples
		--------
		Correlation is the process of moving a filter mask often referred to
		as kernel over the image and computing the sum of products at each location.
		
		>>> from scipy.ndimage import correlate
		>>> input_img = np.arange(25).reshape(5,5)
		>>> print(input_img)
		[[ 0  1  2  3  4]
		[ 5  6  7  8  9]
		[10 11 12 13 14]
		[15 16 17 18 19]
		[20 21 22 23 24]]
		
		Define a kernel (weights) for correlation. In this example, it is for sum of
		center and up, down, left and right next elements.
		
		>>> weights = [[0, 1, 0],
		...            [1, 1, 1],
		...            [0, 1, 0]]
		
		We can calculate a correlation result:
		For example, element ``[2,2]`` is ``7 + 11 + 12 + 13 + 17 = 60``.
		
		>>> correlate(input_img, weights)
		array([[  6,  10,  15,  20,  24],
		    [ 26,  30,  35,  40,  44],
		    [ 51,  55,  60,  65,  69],
		    [ 76,  80,  85,  90,  94],
		    [ 96, 100, 105, 110, 114]])
	**/
	static public function correlate(input:Dynamic, weights:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a 1-D correlation along the given axis.
		
		The lines of the array along the given axis are correlated with the
		given weights.
		
		Parameters
		----------
		input : array_like
		    The input array.
		weights : array
		    1-D sequence of numbers.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right.
		
		Examples
		--------
		>>> from scipy.ndimage import correlate1d
		>>> correlate1d([2, 8, 0, 4, 1, 9, 9, 0], weights=[1, 3])
		array([ 8, 26,  8, 12,  7, 28, 36,  9])
	**/
	static public function correlate1d(input:Dynamic, weights:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Multidimensional Gaussian filter.
		
		Parameters
		----------
		input : array_like
		    The input array.
		sigma : scalar or sequence of scalars
		    Standard deviation for Gaussian kernel. The standard
		    deviations of the Gaussian filter are given for each axis as a
		    sequence, or as a single number, in which case it is equal for
		    all axes.
		order : int or sequence of ints, optional
		    The order of the filter along each axis is given as a sequence
		    of integers, or as a single number. An order of 0 corresponds
		    to convolution with a Gaussian kernel. A positive order
		    corresponds to convolution with that derivative of a Gaussian.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
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
		1-D convolution filters. The intermediate arrays are
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
		
		>>> from scipy import misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = gaussian_filter(ascent, sigma=5)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function gaussian_filter(input:Dynamic, sigma:Dynamic, ?order:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?truncate:Dynamic):Dynamic;
	/**
		1-D Gaussian filter.
		
		Parameters
		----------
		input : array_like
		    The input array.
		sigma : scalar
		    standard deviation for Gaussian kernel
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		order : int, optional
		    An order of 0 corresponds to convolution with a Gaussian
		    kernel. A positive order corresponds to convolution with
		    that derivative of a Gaussian.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		truncate : float, optional
		    Truncate the filter at this many standard deviations.
		    Default is 4.0.
		
		Returns
		-------
		gaussian_filter1d : ndarray
		
		Examples
		--------
		>>> from scipy.ndimage import gaussian_filter1d
		>>> gaussian_filter1d([1.0, 2.0, 3.0, 4.0, 5.0], 1)
		array([ 1.42704095,  2.06782203,  3.        ,  3.93217797,  4.57295905])
		>>> gaussian_filter1d([1.0, 2.0, 3.0, 4.0, 5.0], 4)
		array([ 2.91948343,  2.95023502,  3.        ,  3.04976498,  3.08051657])
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.default_rng()
		>>> x = rng.standard_normal(101).cumsum()
		>>> y3 = gaussian_filter1d(x, 3)
		>>> y6 = gaussian_filter1d(x, 6)
		>>> plt.plot(x, 'k', label='original data')
		>>> plt.plot(y3, '--', label='filtered, sigma=3')
		>>> plt.plot(y6, ':', label='filtered, sigma=6')
		>>> plt.legend()
		>>> plt.grid()
		>>> plt.show()
	**/
	static public function gaussian_filter1d(input:Dynamic, sigma:Dynamic, ?axis:Dynamic, ?order:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?truncate:Dynamic):Dynamic;
	/**
		Multidimensional gradient magnitude using Gaussian derivatives.
		
		Parameters
		----------
		input : array_like
		    The input array.
		sigma : scalar or sequence of scalars
		    The standard deviations of the Gaussian filter are given for
		    each axis as a sequence, or as a single number, in which case
		    it is equal for all axes.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		Extra keyword arguments will be passed to gaussian_filter().
		
		Returns
		-------
		gaussian_gradient_magnitude : ndarray
		    Filtered array. Has the same shape as `input`.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.gaussian_gradient_magnitude(ascent, sigma=5)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function gaussian_gradient_magnitude(input:Dynamic, sigma:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Multidimensional Laplace filter using Gaussian second derivatives.
		
		Parameters
		----------
		input : array_like
		    The input array.
		sigma : scalar or sequence of scalars
		    The standard deviations of the Gaussian filter are given for
		    each axis as a sequence, or as a single number, in which case
		    it is equal for all axes.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
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
		Calculate a multidimensional filter using the given function.
		
		At each element the provided function is called. The input values
		within the filter footprint at that element are passed to the function
		as a 1-D array of double values.
		
		Parameters
		----------
		input : array_like
		    The input array.
		function : {callable, scipy.LowLevelCallable}
		    Function to apply at each element.
		size : scalar or tuple, optional
		    See footprint, below. Ignored if footprint is given.
		footprint : array, optional
		    Either `size` or `footprint` must be defined. `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function. Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2). When `footprint` is given, `size` is ignored.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int or sequence, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right. By passing a sequence of origins with length equal to
		    the number of dimensions of the input array, different shifts can
		    be specified along each axis.
		extra_arguments : sequence, optional
		    Sequence of extra positional arguments to pass to passed function.
		extra_keywords : dict, optional
		    dict of extra keyword arguments to pass to passed function.
		
		Notes
		-----
		This function also accepts low-level callback functions with one of
		the following signatures and wrapped in `scipy.LowLevelCallable`:
		
		.. code:: c
		
		   int callback(double *buffer, npy_intp filter_size,
		                double *return_value, void *user_data)
		   int callback(double *buffer, intptr_t filter_size,
		                double *return_value, void *user_data)
		
		The calling function iterates over the elements of the input and
		output arrays, calling the callback function at each element. The
		elements within the footprint of the filter at the current element are
		passed through the ``buffer`` parameter, and the number of elements
		within the footprint through ``filter_size``. The calculated value is
		returned in ``return_value``. ``user_data`` is the data pointer provided
		to `scipy.LowLevelCallable` as-is.
		
		The callback function must return an integer error status that is zero
		if something went wrong and one otherwise. If an error occurs, you should
		normally set the python error status with an informative message
		before returning, otherwise a default error message is set by the
		calling function.
		
		In addition, some other low-level function pointer specifications
		are accepted, but these are for backward compatibility only and should
		not be used in new code.
	**/
	static public function generic_filter(input:Dynamic, _function:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic, ?extra_arguments:Dynamic, ?extra_keywords:Dynamic):Dynamic;
	/**
		Calculate a 1-D filter along the given axis.
		
		`generic_filter1d` iterates over the lines of the array, calling the
		given function at each line. The arguments of the line are the
		input line, and the output line. The input and output lines are 1-D
		double arrays. The input line is extended appropriately according
		to the filter size and origin. The output line must be modified
		in-place with the result.
		
		Parameters
		----------
		input : array_like
		    The input array.
		function : {callable, scipy.LowLevelCallable}
		    Function to apply along given axis.
		filter_size : scalar
		    Length of the filter.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right.
		extra_arguments : sequence, optional
		    Sequence of extra positional arguments to pass to passed function.
		extra_keywords : dict, optional
		    dict of extra keyword arguments to pass to passed function.
		
		Notes
		-----
		This function also accepts low-level callback functions with one of
		the following signatures and wrapped in `scipy.LowLevelCallable`:
		
		.. code:: c
		
		   int function(double *input_line, npy_intp input_length,
		                double *output_line, npy_intp output_length,
		                void *user_data)
		   int function(double *input_line, intptr_t input_length,
		                double *output_line, intptr_t output_length,
		                void *user_data)
		
		The calling function iterates over the lines of the input and output
		arrays, calling the callback function at each line. The current line
		is extended according to the border conditions set by the calling
		function, and the result is copied into the array that is passed
		through ``input_line``. The length of the input line (after extension)
		is passed through ``input_length``. The callback function should apply
		the filter and store the result in the array passed through
		``output_line``. The length of the output line is passed through
		``output_length``. ``user_data`` is the data pointer provided
		to `scipy.LowLevelCallable` as-is.
		
		The callback function must return an integer error status that is zero
		if something went wrong and one otherwise. If an error occurs, you should
		normally set the python error status with an informative message
		before returning, otherwise a default error message is set by the
		calling function.
		
		In addition, some other low-level function pointer specifications
		are accepted, but these are for backward compatibility only and should
		not be used in new code.
	**/
	static public function generic_filter1d(input:Dynamic, _function:Dynamic, filter_size:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic, ?extra_arguments:Dynamic, ?extra_keywords:Dynamic):Dynamic;
	/**
		Gradient magnitude using a provided gradient function.
		
		Parameters
		----------
		input : array_like
		    The input array.
		derivative : callable
		    Callable with the following signature::
		
		        derivative(input, axis, output, mode, cval,
		                   *extra_arguments, **extra_keywords)
		
		    See `extra_arguments`, `extra_keywords` below.
		    `derivative` can assume that `input` and `output` are ndarrays.
		    Note that the output from `derivative` is modified inplace;
		    be careful to copy important inputs before returning them.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		extra_keywords : dict, optional
		    dict of extra keyword arguments to pass to passed function.
		extra_arguments : sequence, optional
		    Sequence of extra positional arguments to pass to passed function.
	**/
	static public function generic_gradient_magnitude(input:Dynamic, derivative:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?extra_arguments:Dynamic, ?extra_keywords:Dynamic):Dynamic;
	/**
		N-D Laplace filter using a provided second derivative function.
		
		Parameters
		----------
		input : array_like
		    The input array.
		derivative2 : callable
		    Callable with the following signature::
		
		        derivative2(input, axis, output, mode, cval,
		                    *extra_arguments, **extra_keywords)
		
		    See `extra_arguments`, `extra_keywords` below.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		extra_keywords : dict, optional
		    dict of extra keyword arguments to pass to passed function.
		extra_arguments : sequence, optional
		    Sequence of extra positional arguments to pass to passed function.
	**/
	static public function generic_laplace(input:Dynamic, derivative2:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?extra_arguments:Dynamic, ?extra_keywords:Dynamic):Dynamic;
	/**
		N-D Laplace filter based on approximate second derivatives.
		
		Parameters
		----------
		input : array_like
		    The input array.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.laplace(ascent)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function laplace(input:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic):Dynamic;
	/**
		Calculate a multidimensional maximum filter.
		
		Parameters
		----------
		input : array_like
		    The input array.
		size : scalar or tuple, optional
		    See footprint, below. Ignored if footprint is given.
		footprint : array, optional
		    Either `size` or `footprint` must be defined. `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function. Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2). When `footprint` is given, `size` is ignored.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int or sequence, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right. By passing a sequence of origins with length equal to
		    the number of dimensions of the input array, different shifts can
		    be specified along each axis.
		
		Returns
		-------
		maximum_filter : ndarray
		    Filtered array. Has the same shape as `input`.
		
		Notes
		-----
		A sequence of modes (one per axis) is only supported when the footprint is
		separable. Otherwise, a single mode string must be provided.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.maximum_filter(ascent, size=20)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function maximum_filter(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a 1-D maximum filter along the given axis.
		
		The lines of the array along the given axis are filtered with a
		maximum filter of given size.
		
		Parameters
		----------
		input : array_like
		    The input array.
		size : int
		    Length along which to calculate the 1-D maximum.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right.
		
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
		
		Examples
		--------
		>>> from scipy.ndimage import maximum_filter1d
		>>> maximum_filter1d([2, 8, 0, 4, 1, 9, 9, 0], size=3)
		array([8, 8, 8, 4, 9, 9, 9, 9])
	**/
	static public function maximum_filter1d(input:Dynamic, size:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a multidimensional median filter.
		
		Parameters
		----------
		input : array_like
		    The input array.
		size : scalar or tuple, optional
		    See footprint, below. Ignored if footprint is given.
		footprint : array, optional
		    Either `size` or `footprint` must be defined. `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function. Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2). When `footprint` is given, `size` is ignored.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int or sequence, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right. By passing a sequence of origins with length equal to
		    the number of dimensions of the input array, different shifts can
		    be specified along each axis.
		
		Returns
		-------
		median_filter : ndarray
		    Filtered array. Has the same shape as `input`.
		
		See also
		--------
		scipy.signal.medfilt2d
		
		Notes
		-----
		For 2-dimensional images with ``uint8``, ``float32`` or ``float64`` dtypes
		the specialised function `scipy.signal.medfilt2d` may be faster. It is
		however limited to constant mode with ``cval=0``.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.median_filter(ascent, size=20)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function median_filter(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a multidimensional minimum filter.
		
		Parameters
		----------
		input : array_like
		    The input array.
		size : scalar or tuple, optional
		    See footprint, below. Ignored if footprint is given.
		footprint : array, optional
		    Either `size` or `footprint` must be defined. `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function. Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2). When `footprint` is given, `size` is ignored.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int or sequence, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right. By passing a sequence of origins with length equal to
		    the number of dimensions of the input array, different shifts can
		    be specified along each axis.
		
		Returns
		-------
		minimum_filter : ndarray
		    Filtered array. Has the same shape as `input`.
		
		Notes
		-----
		A sequence of modes (one per axis) is only supported when the footprint is
		separable. Otherwise, a single mode string must be provided.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.minimum_filter(ascent, size=20)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function minimum_filter(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a 1-D minimum filter along the given axis.
		
		The lines of the array along the given axis are filtered with a
		minimum filter of given size.
		
		Parameters
		----------
		input : array_like
		    The input array.
		size : int
		    length along which to calculate 1D minimum
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right.
		
		Notes
		-----
		This function implements the MINLIST algorithm [1]_, as described by
		Richard Harter [2]_, and has a guaranteed O(n) performance, `n` being
		the `input` length, regardless of filter size.
		
		References
		----------
		.. [1] http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.42.2777
		.. [2] http://www.richardhartersworld.com/cri/2001/slidingmin.html
		
		
		Examples
		--------
		>>> from scipy.ndimage import minimum_filter1d
		>>> minimum_filter1d([2, 8, 0, 4, 1, 9, 9, 0], size=3)
		array([2, 0, 0, 0, 1, 1, 0, 0])
	**/
	static public function minimum_filter1d(input:Dynamic, size:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
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
		Calculate a multidimensional percentile filter.
		
		Parameters
		----------
		input : array_like
		    The input array.
		percentile : scalar
		    The percentile parameter may be less then zero, i.e.,
		    percentile = -20 equals percentile = 80
		size : scalar or tuple, optional
		    See footprint, below. Ignored if footprint is given.
		footprint : array, optional
		    Either `size` or `footprint` must be defined. `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function. Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2). When `footprint` is given, `size` is ignored.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int or sequence, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right. By passing a sequence of origins with length equal to
		    the number of dimensions of the input array, different shifts can
		    be specified along each axis.
		
		Returns
		-------
		percentile_filter : ndarray
		    Filtered array. Has the same shape as `input`.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.percentile_filter(ascent, percentile=20, size=20)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function percentile_filter(input:Dynamic, percentile:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a Prewitt filter.
		
		Parameters
		----------
		input : array_like
		    The input array.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.prewitt(ascent)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function prewitt(input:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic):Dynamic;
	/**
		Calculate a multidimensional rank filter.
		
		Parameters
		----------
		input : array_like
		    The input array.
		rank : int
		    The rank parameter may be less then zero, i.e., rank = -1
		    indicates the largest element.
		size : scalar or tuple, optional
		    See footprint, below. Ignored if footprint is given.
		footprint : array, optional
		    Either `size` or `footprint` must be defined. `size` gives
		    the shape that is taken from the input array, at every element
		    position, to define the input to the filter function.
		    `footprint` is a boolean array that specifies (implicitly) a
		    shape, but also which of the elements within this shape will get
		    passed to the filter function. Thus ``size=(n,m)`` is equivalent
		    to ``footprint=np.ones((n,m))``.  We adjust `size` to the number
		    of dimensions of the input array, so that, if the input array is
		    shape (10,10,10), and `size` is 2, then the actual size used is
		    (2,2,2). When `footprint` is given, `size` is ignored.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int or sequence, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right. By passing a sequence of origins with length equal to
		    the number of dimensions of the input array, different shifts can
		    be specified along each axis.
		
		Returns
		-------
		rank_filter : ndarray
		    Filtered array. Has the same shape as `input`.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.rank_filter(ascent, rank=42, size=20)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function rank_filter(input:Dynamic, rank:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a Sobel filter.
		
		Parameters
		----------
		input : array_like
		    The input array.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.sobel(ascent)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function sobel(input:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic):Dynamic;
	/**
		Multidimensional uniform filter.
		
		Parameters
		----------
		input : array_like
		    The input array.
		size : int or sequence of ints, optional
		    The sizes of the uniform filter are given for each axis as a
		    sequence, or as a single number, in which case the size is
		    equal for all axes.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : str or sequence, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. By passing a sequence of modes
		    with length equal to the number of dimensions of the input array,
		    different modes can be specified along each axis. Default value is
		    'reflect'. The valid values and their behavior is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int or sequence, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right. By passing a sequence of origins with length equal to
		    the number of dimensions of the input array, different shifts can
		    be specified along each axis.
		
		Returns
		-------
		uniform_filter : ndarray
		    Filtered array. Has the same shape as `input`.
		
		Notes
		-----
		The multidimensional filter is implemented as a sequence of
		1-D uniform filters. The intermediate arrays are stored
		in the same data type as the output. Therefore, for output types
		with a limited precision, the results may be imprecise because
		intermediate results may be stored with insufficient precision.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.uniform_filter(ascent, size=20)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
	**/
	static public function uniform_filter(input:Dynamic, ?size:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a 1-D uniform filter along the given axis.
		
		The lines of the array along the given axis are filtered with a
		uniform filter of given size.
		
		Parameters
		----------
		input : array_like
		    The input array.
		size : int
		    length of uniform filter
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    beyond its boundaries. Default is 'reflect'. Behavior for each valid
		    value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel. This mode is also sometimes referred to as half-sample
		        symmetric.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel. This mode is also sometimes referred to as whole-sample
		        symmetric.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		
		    For consistency with the interpolation functions, the following mode
		    names can also be used:
		
		    'grid-mirror'
		        This is a synonym for 'reflect'.
		
		    'grid-constant'
		        This is a synonym for 'constant'.
		
		    'grid-wrap'
		        This is a synonym for 'wrap'.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : int, optional
		    Controls the placement of the filter on the input array's pixels.
		    A value of 0 (the default) centers the filter over the pixel, with
		    positive values shifting the filter to the left, and negative ones
		    to the right.
		
		Examples
		--------
		>>> from scipy.ndimage import uniform_filter1d
		>>> uniform_filter1d([2, 8, 0, 4, 1, 9, 9, 0], size=3)
		array([4, 3, 4, 1, 4, 6, 6, 3])
	**/
	static public function uniform_filter1d(input:Dynamic, size:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
}