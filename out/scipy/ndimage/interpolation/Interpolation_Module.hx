/* This file is generated, do not edit! */
package scipy.ndimage.interpolation;
@:pythonImport("scipy.ndimage.interpolation") extern class Interpolation_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _minmax(coor:Dynamic, minc:Dynamic, maxc:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Apply an affine transformation.
		
		Given an output image pixel index vector ``o``, the pixel value
		is determined from the input image at position
		``np.dot(matrix, o) + offset``.
		
		Parameters
		----------
		input : array_like
		    The input array.
		matrix : ndarray
		    The inverse coordinate transformation matrix, mapping output
		    coordinates to input coordinates. If ``ndim`` is the number of
		    dimensions of ``input``, the given matrix must have one of the
		    following shapes:
		
		        - ``(ndim, ndim)``: the linear transformation matrix for each
		          output coordinate.
		        - ``(ndim,)``: assume that the 2D transformation matrix is
		          diagonal, with the diagonal specified by the given value. A more
		          efficient algorithm is then used that exploits the separability
		          of the problem.
		        - ``(ndim + 1, ndim + 1)``: assume that the transformation is
		          specified using homogeneous coordinates [1]_. In this case, any
		          value passed to ``offset`` is ignored.
		        - ``(ndim, ndim + 1)``: as above, but the bottom row of a
		          homogeneous transformation matrix is always ``[0, 0, ..., 1]``,
		          and may be omitted.
		
		offset : float or sequence, optional
		    The offset into the array where the transform is applied. If a float,
		    `offset` is the same for each axis. If a sequence, `offset` should
		    contain one value for each axis.
		output_shape : tuple of ints, optional
		    Shape tuple.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. Default is 'reflect'. Behavior
		    for each valid value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		prefilter : bool, optional
		    Determines if the input array is prefiltered with `spline_filter`
		    before interpolation. The default is True, which will create a
		    temporary `float64` array of filtered values if `order > 1`. If
		    setting this to False, the output will be slightly blurred if
		    `order > 1`, unless the input is prefiltered, i.e. it is the result
		    of calling `spline_filter` on the original input.
		
		Returns
		-------
		affine_transform : ndarray
		    The transformed input.
		
		Notes
		-----
		The given matrix and offset are used to find for each point in the
		output the corresponding coordinates in the input by an affine
		transformation. The value of the input at those coordinates is
		determined by spline interpolation of the requested order. Points
		outside the boundaries of the input are filled according to the given
		mode.
		
		.. versionchanged:: 0.18.0
		    Previously, the exact interpretation of the affine transformation
		    depended on whether the matrix was supplied as a one-dimensional or
		    two-dimensional array. If a one-dimensional array was supplied
		    to the matrix parameter, the output pixel value at index ``o``
		    was determined from the input image at position
		    ``matrix * (o + offset)``.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Homogeneous_coordinates
	**/
	static public function affine_transform(input:Dynamic, matrix:Dynamic, ?offset:Dynamic, ?output_shape:Dynamic, ?output:Dynamic, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Apply an arbitrary geometric transform.
		
		The given mapping function is used to find, for each point in the
		output, the corresponding coordinates in the input. The value of the
		input at those coordinates is determined by spline interpolation of
		the requested order.
		
		Parameters
		----------
		input : array_like
		    The input array.
		mapping : {callable, scipy.LowLevelCallable}
		    A callable object that accepts a tuple of length equal to the output
		    array rank, and returns the corresponding input coordinates as a tuple
		    of length equal to the input array rank.
		output_shape : tuple of ints, optional
		    Shape tuple.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. Default is 'reflect'. Behavior
		    for each valid value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		prefilter : bool, optional
		    Determines if the input array is prefiltered with `spline_filter`
		    before interpolation. The default is True, which will create a
		    temporary `float64` array of filtered values if `order > 1`. If
		    setting this to False, the output will be slightly blurred if
		    `order > 1`, unless the input is prefiltered, i.e. it is the result
		    of calling `spline_filter` on the original input.
		extra_arguments : tuple, optional
		    Extra arguments passed to `mapping`.
		extra_keywords : dict, optional
		    Extra keywords passed to `mapping`.
		
		Returns
		-------
		output : ndarray
		    The filtered input.
		
		See Also
		--------
		map_coordinates, affine_transform, spline_filter1d
		
		
		Notes
		-----
		This function also accepts low-level callback functions with one
		the following signatures and wrapped in `scipy.LowLevelCallable`:
		
		.. code:: c
		
		   int mapping(npy_intp *output_coordinates, double *input_coordinates,
		               int output_rank, int input_rank, void *user_data)
		   int mapping(intptr_t *output_coordinates, double *input_coordinates,
		               int output_rank, int input_rank, void *user_data)
		
		The calling function iterates over the elements of the output array,
		calling the callback function at each element. The coordinates of the
		current output element are passed through ``output_coordinates``. The
		callback function must return the coordinates at which the input must
		be interpolated in ``input_coordinates``. The rank of the input and
		output arrays are given by ``input_rank`` and ``output_rank``
		respectively.  ``user_data`` is the data pointer provided
		to `scipy.LowLevelCallable` as-is.
		
		The callback function must return an integer error status that is zero
		if something went wrong and one otherwise. If an error occurs, you should
		normally set the python error status with an informative message
		before returning, otherwise a default error message is set by the
		calling function.
		
		In addition, some other low-level function pointer specifications
		are accepted, but these are for backward compatibility only and should
		not be used in new code.
		
		Examples
		--------
		>>> import numpy as np
		>>> from scipy.ndimage import geometric_transform
		>>> a = np.arange(12.).reshape((4, 3))
		>>> def shift_func(output_coords):
		...     return (output_coords[0] - 0.5, output_coords[1] - 0.5)
		...
		>>> geometric_transform(a, shift_func)
		array([[ 0.   ,  0.   ,  0.   ],
		       [ 0.   ,  1.362,  2.738],
		       [ 0.   ,  4.812,  6.187],
		       [ 0.   ,  8.263,  9.637]])
		
		>>> b = [1, 2, 3, 4, 5]
		>>> def shift_func(output_coords):
		...     return (output_coords[0] - 3,)
		...
		>>> geometric_transform(b, shift_func, mode='constant')
		array([0, 0, 0, 1, 2])
		>>> geometric_transform(b, shift_func, mode='nearest')
		array([1, 1, 1, 1, 2])
		>>> geometric_transform(b, shift_func, mode='reflect')
		array([3, 2, 1, 1, 2])
		>>> geometric_transform(b, shift_func, mode='wrap')
		array([2, 3, 4, 1, 2])
	**/
	static public function geometric_transform(input:Dynamic, mapping:Dynamic, ?output_shape:Dynamic, ?output:Dynamic, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic, ?extra_arguments:Dynamic, ?extra_keywords:Dynamic):Dynamic;
	/**
		Map the input array to new coordinates by interpolation.
		
		The array of coordinates is used to find, for each point in the output,
		the corresponding coordinates in the input. The value of the input at
		those coordinates is determined by spline interpolation of the
		requested order.
		
		The shape of the output is derived from that of the coordinate
		array by dropping the first axis. The values of the array along
		the first axis are the coordinates in the input array at which the
		output value is found.
		
		Parameters
		----------
		input : array_like
		    The input array.
		coordinates : array_like
		    The coordinates at which `input` is evaluated.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. Default is 'reflect'. Behavior
		    for each valid value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		prefilter : bool, optional
		    Determines if the input array is prefiltered with `spline_filter`
		    before interpolation. The default is True, which will create a
		    temporary `float64` array of filtered values if `order > 1`. If
		    setting this to False, the output will be slightly blurred if
		    `order > 1`, unless the input is prefiltered, i.e. it is the result
		    of calling `spline_filter` on the original input.
		
		Returns
		-------
		map_coordinates : ndarray
		    The result of transforming the input. The shape of the output is
		    derived from that of `coordinates` by dropping the first axis.
		
		See Also
		--------
		spline_filter, geometric_transform, scipy.interpolate
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.arange(12.).reshape((4, 3))
		>>> a
		array([[  0.,   1.,   2.],
		       [  3.,   4.,   5.],
		       [  6.,   7.,   8.],
		       [  9.,  10.,  11.]])
		>>> ndimage.map_coordinates(a, [[0.5, 2], [0.5, 1]], order=1)
		array([ 2.,  7.])
		
		Above, the interpolated value of a[0.5, 0.5] gives output[0], while
		a[2, 1] is output[1].
		
		>>> inds = np.array([[0.5, 2], [0.5, 4]])
		>>> ndimage.map_coordinates(a, inds, order=1, cval=-33.3)
		array([  2. , -33.3])
		>>> ndimage.map_coordinates(a, inds, order=1, mode='nearest')
		array([ 2.,  8.])
		>>> ndimage.map_coordinates(a, inds, order=1, cval=0, output=bool)
		array([ True, False], dtype=bool)
	**/
	static public function map_coordinates(input:Dynamic, coordinates:Dynamic, ?output:Dynamic, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Rotate an array.
		
		The array is rotated in the plane defined by the two axes given by the
		`axes` parameter using spline interpolation of the requested order.
		
		Parameters
		----------
		%(input)s
		angle : float
		    The rotation angle in degrees.
		axes : tuple of 2 ints, optional
		    The two axes that define the plane of rotation. Default is the first
		    two axes.
		reshape : bool, optional
		    If `reshape` is true, the output shape is adapted so that the input
		    array is contained completely in the output. Default is True.
		%(output)s
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		%(mode)s
		%(cval)s
		%(prefilter)s
		
		Returns
		-------
		rotate : ndarray
		    The rotated input.
	**/
	static public function rotate(input:Dynamic, angle:Dynamic, ?axes:Dynamic, ?reshape:Dynamic, ?output:Dynamic, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic):Dynamic;
	/**
		Shift an array.
		
		The array is shifted using spline interpolation of the requested order.
		Points outside the boundaries of the input are filled according to the
		given mode.
		
		Parameters
		----------
		input : array_like
		    The input array.
		shift : float or sequence
		    The shift along the axes. If a float, `shift` is the same for each
		    axis. If a sequence, `shift` should contain one value for each axis.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. Default is 'reflect'. Behavior
		    for each valid value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		prefilter : bool, optional
		    Determines if the input array is prefiltered with `spline_filter`
		    before interpolation. The default is True, which will create a
		    temporary `float64` array of filtered values if `order > 1`. If
		    setting this to False, the output will be slightly blurred if
		    `order > 1`, unless the input is prefiltered, i.e. it is the result
		    of calling `spline_filter` on the original input.
		
		Returns
		-------
		shift : ndarray
		    The shifted input.
	**/
	static public function shift(input:Dynamic, shift:Dynamic, ?output:Dynamic, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic):Dynamic;
	/**
		Multi-dimensional spline filter.
		
		For more details, see `spline_filter1d`.
		
		See Also
		--------
		spline_filter1d
		
		Notes
		-----
		The multi-dimensional filter is implemented as a sequence of
		one-dimensional spline filters. The intermediate arrays are stored
		in the same data type as the output. Therefore, for output types
		with a limited precision, the results may be imprecise because
		intermediate results may be stored with insufficient precision.
	**/
	static public function spline_filter(input:Dynamic, ?order:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Calculate a one-dimensional spline filter along the given axis.
		
		The lines of the array along the given axis are filtered by a
		spline filter. The order of the spline must be >= 2 and <= 5.
		
		Parameters
		----------
		input : array_like
		    The input array.
		order : int, optional
		    The order of the spline, default is 3.
		axis : int, optional
		    The axis along which the spline filter is applied. Default is the last
		    axis.
		output : ndarray or dtype, optional
		    The array in which to place the output, or the dtype of the returned
		    array. Default is `numpy.float64`.
		
		Returns
		-------
		spline_filter1d : ndarray
		    The filtered input.
	**/
	static public function spline_filter1d(input:Dynamic, ?order:Dynamic, ?axis:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
	/**
		Zoom an array.
		
		The array is zoomed using spline interpolation of the requested order.
		
		Parameters
		----------
		input : array_like
		    The input array.
		zoom : float or sequence
		    The zoom factor along the axes. If a float, `zoom` is the same for each
		    axis. If a sequence, `zoom` should contain one value for each axis.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the input array is extended
		    when the filter overlaps a border. Default is 'reflect'. Behavior
		    for each valid value is as follows:
		
		    'reflect' (`d c b a | a b c d | d c b a`)
		        The input is extended by reflecting about the edge of the last
		        pixel.
		
		    'constant' (`k k k k | a b c d | k k k k`)
		        The input is extended by filling all values beyond the edge with
		        the same constant value, defined by the `cval` parameter.
		
		    'nearest' (`a a a a | a b c d | d d d d`)
		        The input is extended by replicating the last pixel.
		
		    'mirror' (`d c b | a b c d | c b a`)
		        The input is extended by reflecting about the center of the last
		        pixel.
		
		    'wrap' (`a b c d | a b c d | a b c d`)
		        The input is extended by wrapping around to the opposite edge.
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		prefilter : bool, optional
		    Determines if the input array is prefiltered with `spline_filter`
		    before interpolation. The default is True, which will create a
		    temporary `float64` array of filtered values if `order > 1`. If
		    setting this to False, the output will be slightly blurred if
		    `order > 1`, unless the input is prefiltered, i.e. it is the result
		    of calling `spline_filter` on the original input.
		
		Returns
		-------
		zoom : ndarray
		    The zoomed input.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		
		>>> fig = plt.figure()
		>>> ax1 = fig.add_subplot(121)  # left side
		>>> ax2 = fig.add_subplot(122)  # right side
		>>> ascent = misc.ascent()
		>>> result = ndimage.zoom(ascent, 3.0)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result)
		>>> plt.show()
		
		>>> print(ascent.shape)
		(512, 512)
		
		>>> print(result.shape)
		(1536, 1536)
	**/
	static public function zoom(input:Dynamic, zoom:Dynamic, ?output:Dynamic, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic):Dynamic;
}