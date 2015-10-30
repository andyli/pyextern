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
	static public function _extend_mode_to_code(mode:Dynamic):Dynamic;
	/**
		Wrapper around _nd_image.geometric_transform to work around
		endianness issues
	**/
	static public function _geometric_transform(input:Dynamic, mapping:Dynamic, coordinates:Dynamic, matrix:Dynamic, offset:Dynamic, output:Dynamic, order:Dynamic, mode:Dynamic, cval:Dynamic, extra_arguments:Dynamic, extra_keywords:Dynamic):Dynamic;
	static public function _minmax(coor:Dynamic, minc:Dynamic, maxc:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Apply an affine transformation.
		
		The given matrix and offset are used to find for each point in the
		output the corresponding coordinates in the input by an affine
		transformation. The value of the input at those coordinates is
		determined by spline interpolation of the requested order. Points
		outside the boundaries of the input are filled according to the given
		mode.
		
		Parameters
		----------
		input : ndarray
		    The input array.
		matrix : ndarray
		    The matrix must be two-dimensional or can also be given as a
		    one-dimensional sequence or array. In the latter case, it is assumed
		    that the matrix is diagonal. A more efficient algorithms is then
		    applied that exploits the separability of the problem.
		offset : float or sequence, optional
		    The offset into the array where the transform is applied. If a float,
		    `offset` is the same for each axis. If a sequence, `offset` should
		    contain one value for each axis.
		output_shape : tuple of ints, optional
		    Shape tuple.
		output : ndarray or dtype, optional
		    The array in which to place the output, or the dtype of the returned
		    array.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : str, optional
		    Points outside the boundaries of the input are filled according
		    to the given mode ('constant', 'nearest', 'reflect' or 'wrap').
		    Default is 'constant'.
		cval : scalar, optional
		    Value used for points outside the boundaries of the input if
		    ``mode='constant'``. Default is 0.0
		prefilter : bool, optional
		    The parameter prefilter determines if the input is pre-filtered with
		    `spline_filter` before interpolation (necessary for spline
		    interpolation of order > 1).  If False, it is assumed that the input is
		    already filtered. Default is True.
		
		Returns
		-------
		affine_transform : ndarray or None
		    The transformed input. If `output` is given as a parameter, None is
		    returned.
	**/
	static public function affine_transform(input:Dynamic, matrix:Dynamic, ?offset:Dynamic, ?output_shape:Dynamic, ?output:Dynamic, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Apply an arbritrary geometric transform.
		
		The given mapping function is used to find, for each point in the
		output, the corresponding coordinates in the input. The value of the
		input at those coordinates is determined by spline interpolation of
		the requested order.
		
		Parameters
		----------
		input : array_like
		    The input array.
		mapping : callable
		    A callable object that accepts a tuple of length equal to the output
		    array rank, and returns the corresponding input coordinates as a tuple
		    of length equal to the input array rank.
		output_shape : tuple of ints, optional
		    Shape tuple.
		output : ndarray or dtype, optional
		    The array in which to place the output, or the dtype of the returned
		    array.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : str, optional
		    Points outside the boundaries of the input are filled according
		    to the given mode ('constant', 'nearest', 'reflect' or 'wrap').
		    Default is 'constant'.
		cval : scalar, optional
		    Value used for points outside the boundaries of the input if
		    ``mode='constant'``. Default is 0.0
		prefilter : bool, optional
		    The parameter prefilter determines if the input is pre-filtered with
		    `spline_filter` before interpolation (necessary for spline
		    interpolation of order > 1).  If False, it is assumed that the input is
		    already filtered. Default is True.
		extra_arguments : tuple, optional
		    Extra arguments passed to `mapping`.
		extra_keywords : dict, optional
		    Extra keywords passed to `mapping`.
		
		Returns
		-------
		return_value : ndarray or None
		    The filtered input. If `output` is given as a parameter, None is
		    returned.
		
		See Also
		--------
		map_coordinates, affine_transform, spline_filter1d
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.arange(12.).reshape((4, 3))
		>>> def shift_func(output_coords):
		...     return (output_coords[0] - 0.5, output_coords[1] - 0.5)
		...
		>>> ndimage.geometric_transform(a, shift_func)
		array([[ 0.   ,  0.   ,  0.   ],
		       [ 0.   ,  1.362,  2.738],
		       [ 0.   ,  4.812,  6.187],
		       [ 0.   ,  8.263,  9.637]])
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
		input : ndarray
		    The input array.
		coordinates : array_like
		    The coordinates at which `input` is evaluated.
		output : ndarray or dtype, optional
		    The array in which to place the output, or the dtype of the returned
		    array.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : str, optional
		    Points outside the boundaries of the input are filled according
		    to the given mode ('constant', 'nearest', 'reflect' or 'wrap').
		    Default is 'constant'.
		cval : scalar, optional
		    Value used for points outside the boundaries of the input if
		    ``mode='constant'``. Default is 0.0
		prefilter : bool, optional
		    The parameter prefilter determines if the input is pre-filtered with
		    `spline_filter` before interpolation (necessary for spline
		    interpolation of order > 1).  If False, it is assumed that the input is
		    already filtered. Default is True.
		
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
		[ 2.  7.]
		
		Above, the interpolated value of a[0.5, 0.5] gives output[0], while
		a[2, 1] is output[1].
		
		>>> inds = np.array([[0.5, 2], [0.5, 4]])
		>>> ndimage.map_coordinates(a, inds, order=1, cval=-33.3)
		array([  2. , -33.3])
		>>> ndimage.map_coordinates(a, inds, order=1, mode='nearest')
		array([ 2.,  8.])
		>>> ndimage.map_coordinates(a, inds, order=1, cval=0, output=bool)
		array([ True, False], dtype=bool
	**/
	static public function map_coordinates(input:Dynamic, coordinates:Dynamic, ?output:Dynamic, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Rotate an array.
		
		The array is rotated in the plane defined by the two axes given by the
		`axes` parameter using spline interpolation of the requested order.
		
		Parameters
		----------
		input : ndarray
		    The input array.
		angle : float
		    The rotation angle in degrees.
		axes : tuple of 2 ints, optional
		    The two axes that define the plane of rotation. Default is the first
		    two axes.
		reshape : bool, optional
		    If `reshape` is true, the output shape is adapted so that the input
		    array is contained completely in the output. Default is True.
		output : ndarray or dtype, optional
		    The array in which to place the output, or the dtype of the returned
		    array.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : str, optional
		    Points outside the boundaries of the input are filled according
		    to the given mode ('constant', 'nearest', 'reflect' or 'wrap').
		    Default is 'constant'.
		cval : scalar, optional
		    Value used for points outside the boundaries of the input if
		    ``mode='constant'``. Default is 0.0
		prefilter : bool, optional
		    The parameter prefilter determines if the input is pre-filtered with
		    `spline_filter` before interpolation (necessary for spline
		    interpolation of order > 1).  If False, it is assumed that the input is
		    already filtered. Default is True.
		
		Returns
		-------
		rotate : ndarray or None
		    The rotated input. If `output` is given as a parameter, None is
		    returned.
	**/
	static public function rotate(input:Dynamic, angle:Dynamic, ?axes:Dynamic, ?reshape:Dynamic, ?output:Dynamic, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic):Dynamic;
	/**
		Shift an array.
		
		The array is shifted using spline interpolation of the requested order.
		Points outside the boundaries of the input are filled according to the
		given mode.
		
		Parameters
		----------
		input : ndarray
		    The input array.
		shift : float or sequence, optional
		    The shift along the axes. If a float, `shift` is the same for each
		    axis. If a sequence, `shift` should contain one value for each axis.
		output : ndarray or dtype, optional
		    The array in which to place the output, or the dtype of the returned
		    array.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : str, optional
		    Points outside the boundaries of the input are filled according
		    to the given mode ('constant', 'nearest', 'reflect' or 'wrap').
		    Default is 'constant'.
		cval : scalar, optional
		    Value used for points outside the boundaries of the input if
		    ``mode='constant'``. Default is 0.0
		prefilter : bool, optional
		    The parameter prefilter determines if the input is pre-filtered with
		    `spline_filter` before interpolation (necessary for spline
		    interpolation of order > 1).  If False, it is assumed that the input is
		    already filtered. Default is True.
		
		Returns
		-------
		shift : ndarray or None
		    The shifted input. If `output` is given as a parameter, None is
		    returned.
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
		Calculates a one-dimensional spline filter along the given axis.
		
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
		spline_filter1d : ndarray or None
		    The filtered input. If `output` is given as a parameter, None is
		    returned.
	**/
	static public function spline_filter1d(input:Dynamic, ?order:Dynamic, ?axis:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Zoom an array.
		
		The array is zoomed using spline interpolation of the requested order.
		
		Parameters
		----------
		input : ndarray
		    The input array.
		zoom : float or sequence, optional
		    The zoom factor along the axes. If a float, `zoom` is the same for each
		    axis. If a sequence, `zoom` should contain one value for each axis.
		output : ndarray or dtype, optional
		    The array in which to place the output, or the dtype of the returned
		    array.
		order : int, optional
		    The order of the spline interpolation, default is 3.
		    The order has to be in the range 0-5.
		mode : str, optional
		    Points outside the boundaries of the input are filled according
		    to the given mode ('constant', 'nearest', 'reflect' or 'wrap').
		    Default is 'constant'.
		cval : scalar, optional
		    Value used for points outside the boundaries of the input if
		    ``mode='constant'``. Default is 0.0
		prefilter : bool, optional
		    The parameter prefilter determines if the input is pre-filtered with
		    `spline_filter` before interpolation (necessary for spline
		    interpolation of order > 1).  If False, it is assumed that the input is
		    already filtered. Default is True.
		
		Returns
		-------
		zoom : ndarray or None
		    The zoomed input. If `output` is given as a parameter, None is
		    returned.
	**/
	static public function zoom(input:Dynamic, zoom:Dynamic, ?output:Dynamic, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic):Dynamic;
}