/* This file is generated, do not edit! */
package scipy.signal._savitzky_golay;
@:pythonImport("scipy.signal._savitzky_golay") extern class _Savitzky_golay_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given an n-d array `x` and the specification of a slice of `x` from
		`window_start` to `window_stop` along `axis`, create an interpolating
		polynomial of each 1-d slice, and evaluate that polynomial in the slice
		from `interp_start` to `interp_stop`.  Put the result into the
		corresponding slice of `y`.
	**/
	static public function _fit_edge(x:Dynamic, window_start:Dynamic, window_stop:Dynamic, interp_start:Dynamic, interp_stop:Dynamic, axis:Dynamic, polyorder:Dynamic, deriv:Dynamic, delta:Dynamic, y:Dynamic):Dynamic;
	/**
		Use polynomial interpolation of x at the low and high ends of the axis
		to fill in the halflen values in y.
		
		This function just calls _fit_edge twice, once for each end of the axis.
	**/
	static public function _fit_edges_polyfit(x:Dynamic, window_length:Dynamic, polyorder:Dynamic, deriv:Dynamic, delta:Dynamic, axis:Dynamic, y:Dynamic):Dynamic;
	/**
		Differentiate polynomials represented with coefficients.
		
		p must be a 1D or 2D array.  In the 2D case, each column gives
		the coefficients of a polynomial; the first row holds the coefficients
		associated with the highest power.  m must be a nonnegative integer.
		(numpy.polyder doesn't handle the 2D case.)
	**/
	static public function _polyder(p:Dynamic, m:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Take a slice along axis 'axis' from 'a'.
		
		Parameters
		----------
		a : numpy.ndarray
		    The array to be sliced.
		start, stop, step : int or None
		    The slice parameters.
		axis : int, optional
		    The axis of `a` to be sliced.
		
		Examples
		--------
		>>> a = array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		>>> axis_slice(a, start=0, stop=1, axis=1)
		array([[1],
		       [4],
		       [7]])
		>>> axis_slice(a, start=1, axis=0)
		array([[4, 5, 6],
		       [7, 8, 9]])
		
		Notes
		-----
		The keyword arguments start, stop and step are used by calling
		slice(start, stop, step).  This implies axis_slice() does not
		handle its arguments the exacty the same as indexing.  To select
		a single index k, for example, use
		    axis_slice(a, start=k, stop=k+1)
		In this case, the length of the axis 'axis' in the result will
		be 1; the trivial dimension is not removed. (Use numpy.squeeze()
		to remove trivial axes.)
	**/
	static public function axis_slice(a:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Calculate a one-dimensional convolution along the given axis.
		
		The lines of the array along the given axis are convolved with the
		given weights.
		
		Parameters
		----------
		input : array_like
		    The input array.
		weights : ndarray
		    One-dimensional sequence of numbers.
		axis : int, optional
		    The axis of `input` along which to calculate. Default is -1.
		output : array or dtype, optional
		    The array in which to place the output, or the dtype of the
		    returned array. By default an array of the same dtype as input
		    will be created.
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
	static public var division : Dynamic;
	/**
		factorial(x) -> Integral
		
		Find x!. Raise a ValueError if x is negative or non-integral.
	**/
	static public function factorial(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute least-squares solution to equation Ax = b.
		
		Compute a vector x such that the 2-norm ``|b - A x|`` is minimized.
		
		Parameters
		----------
		a : (M, N) array_like
		    Left hand side matrix (2-D array).
		b : (M,) or (M, K) array_like
		    Right hand side matrix or vector (1-D or 2-D array).
		cond : float, optional
		    Cutoff for 'small' singular values; used to determine effective
		    rank of a. Singular values smaller than
		    ``rcond * largest_singular_value`` are considered zero.
		overwrite_a : bool, optional
		    Discard data in `a` (may enhance performance). Default is False.
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance). Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		lapack_driver : str, optional
		    Which LAPACK driver is used to solve the least-squares problem.
		    Options are ``'gelsd'``, ``'gelsy'``, ``'gelss'``. Default
		    (``'gelsd'``) is a good choice.  However, ``'gelsy'`` can be slightly
		    faster on many problems.  ``'gelss'`` was used historically.  It is
		    generally slow but uses less memory.
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		x : (N,) or (N, K) ndarray
		    Least-squares solution.  Return shape matches shape of `b`.
		residues : (0,) or () or (K,) ndarray
		    Sums of residues, squared 2-norm for each column in ``b - a x``.
		    If rank of matrix a is ``< N`` or ``N > M``, or ``'gelsy'`` is used,
		    this is a length zero array. If b was 1-D, this is a () shape array
		    (numpy scalar), otherwise the shape is (K,).
		rank : int
		    Effective rank of matrix `a`.
		s : (min(M,N),) ndarray or None
		    Singular values of `a`. The condition number of a is
		    ``abs(s[0] / s[-1])``. None is returned when ``'gelsy'`` is used.
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		ValueError
		    When parameters are wrong.
		
		See Also
		--------
		optimize.nnls : linear least squares with non-negativity constraint
		
		Examples
		--------
		>>> from scipy.linalg import lstsq
		>>> import matplotlib.pyplot as plt
		
		Suppose we have the following data:
		
		>>> x = np.array([1, 2.5, 3.5, 4, 5, 7, 8.5])
		>>> y = np.array([0.3, 1.1, 1.5, 2.0, 3.2, 6.6, 8.6])
		
		We want to fit a quadratic polynomial of the form ``y = a + b*x**2``
		to this data.  We first form the "design matrix" M, with a constant
		column of 1s and a column containing ``x**2``:
		
		>>> M = x[:, np.newaxis]**[0, 2]
		>>> M
		array([[  1.  ,   1.  ],
		       [  1.  ,   6.25],
		       [  1.  ,  12.25],
		       [  1.  ,  16.  ],
		       [  1.  ,  25.  ],
		       [  1.  ,  49.  ],
		       [  1.  ,  72.25]])
		
		We want to find the least-squares solution to ``M.dot(p) = y``,
		where ``p`` is a vector with length 2 that holds the parameters
		``a`` and ``b``.
		
		>>> p, res, rnk, s = lstsq(M, y)
		>>> p
		array([ 0.20925829,  0.12013861])
		
		Plot the data and the fitted curve.
		
		>>> plt.plot(x, y, 'o', label='data')
		>>> xx = np.linspace(0, 9, 101)
		>>> yy = p[0] + p[1]*xx**2
		>>> plt.plot(xx, yy, label='least squares fit, $y = a + bx^2$')
		>>> plt.xlabel('x')
		>>> plt.ylabel('y')
		>>> plt.legend(framealpha=1, shadow=True)
		>>> plt.grid(alpha=0.25)
		>>> plt.show()
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?cond:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic, ?lapack_driver:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the coefficients for a 1-d Savitzky-Golay FIR filter.
		
		Parameters
		----------
		window_length : int
		    The length of the filter window (i.e. the number of coefficients).
		    `window_length` must be an odd positive integer.
		polyorder : int
		    The order of the polynomial used to fit the samples.
		    `polyorder` must be less than `window_length`.
		deriv : int, optional
		    The order of the derivative to compute.  This must be a
		    nonnegative integer.  The default is 0, which means to filter
		    the data without differentiating.
		delta : float, optional
		    The spacing of the samples to which the filter will be applied.
		    This is only used if deriv > 0.
		pos : int or None, optional
		    If pos is not None, it specifies evaluation position within the
		    window.  The default is the middle of the window.
		use : str, optional
		    Either 'conv' or 'dot'.  This argument chooses the order of the
		    coefficients.  The default is 'conv', which means that the
		    coefficients are ordered to be used in a convolution.  With
		    use='dot', the order is reversed, so the filter is applied by
		    dotting the coefficients with the data set.
		
		Returns
		-------
		coeffs : 1-d ndarray
		    The filter coefficients.
		
		References
		----------
		A. Savitzky, M. J. E. Golay, Smoothing and Differentiation of Data by
		Simplified Least Squares Procedures. Analytical Chemistry, 1964, 36 (8),
		pp 1627-1639.
		
		See Also
		--------
		savgol_filter
		
		Notes
		-----
		
		.. versionadded:: 0.14.0
		
		Examples
		--------
		>>> from scipy.signal import savgol_coeffs
		>>> savgol_coeffs(5, 2)
		array([-0.08571429,  0.34285714,  0.48571429,  0.34285714, -0.08571429])
		>>> savgol_coeffs(5, 2, deriv=1)
		array([  2.00000000e-01,   1.00000000e-01,   2.00607895e-16,
		        -1.00000000e-01,  -2.00000000e-01])
		
		Note that use='dot' simply reverses the coefficients.
		
		>>> savgol_coeffs(5, 2, pos=3)
		array([ 0.25714286,  0.37142857,  0.34285714,  0.17142857, -0.14285714])
		>>> savgol_coeffs(5, 2, pos=3, use='dot')
		array([-0.14285714,  0.17142857,  0.34285714,  0.37142857,  0.25714286])
		
		`x` contains data from the parabola x = t**2, sampled at
		t = -1, 0, 1, 2, 3.  `c` holds the coefficients that will compute the
		derivative at the last position.  When dotted with `x` the result should
		be 6.
		
		>>> x = np.array([1, 0, 1, 4, 9])
		>>> c = savgol_coeffs(5, 2, pos=4, deriv=1, use='dot')
		>>> c.dot(x)
		6.0000000000000018
	**/
	static public function savgol_coeffs(window_length:Dynamic, polyorder:Dynamic, ?deriv:Dynamic, ?delta:Dynamic, ?pos:Dynamic, ?use:Dynamic):Dynamic;
	/**
		Apply a Savitzky-Golay filter to an array.
		
		This is a 1-d filter.  If `x`  has dimension greater than 1, `axis`
		determines the axis along which the filter is applied.
		
		Parameters
		----------
		x : array_like
		    The data to be filtered.  If `x` is not a single or double precision
		    floating point array, it will be converted to type `numpy.float64`
		    before filtering.
		window_length : int
		    The length of the filter window (i.e. the number of coefficients).
		    `window_length` must be a positive odd integer. If `mode` is 'interp',
		    `window_length` must be less than or equal to the size of `x`.
		polyorder : int
		    The order of the polynomial used to fit the samples.
		    `polyorder` must be less than `window_length`.
		deriv : int, optional
		    The order of the derivative to compute.  This must be a
		    nonnegative integer.  The default is 0, which means to filter
		    the data without differentiating.
		delta : float, optional
		    The spacing of the samples to which the filter will be applied.
		    This is only used if deriv > 0.  Default is 1.0.
		axis : int, optional
		    The axis of the array `x` along which the filter is to be applied.
		    Default is -1.
		mode : str, optional
		    Must be 'mirror', 'constant', 'nearest', 'wrap' or 'interp'.  This
		    determines the type of extension to use for the padded signal to
		    which the filter is applied.  When `mode` is 'constant', the padding
		    value is given by `cval`.  See the Notes for more details on 'mirror',
		    'constant', 'wrap', and 'nearest'.
		    When the 'interp' mode is selected (the default), no extension
		    is used.  Instead, a degree `polyorder` polynomial is fit to the
		    last `window_length` values of the edges, and this polynomial is
		    used to evaluate the last `window_length // 2` output values.
		cval : scalar, optional
		    Value to fill past the edges of the input if `mode` is 'constant'.
		    Default is 0.0.
		
		Returns
		-------
		y : ndarray, same shape as `x`
		    The filtered data.
		
		See Also
		--------
		savgol_coeffs
		
		Notes
		-----
		Details on the `mode` options:
		
		    'mirror':
		        Repeats the values at the edges in reverse order.  The value
		        closest to the edge is not included.
		    'nearest':
		        The extension contains the nearest input value.
		    'constant':
		        The extension contains the value given by the `cval` argument.
		    'wrap':
		        The extension contains the values from the other end of the array.
		
		For example, if the input is [1, 2, 3, 4, 5, 6, 7, 8], and
		`window_length` is 7, the following shows the extended data for
		the various `mode` options (assuming `cval` is 0)::
		
		    mode       |   Ext   |         Input          |   Ext
		    -----------+---------+------------------------+---------
		    'mirror'   | 4  3  2 | 1  2  3  4  5  6  7  8 | 7  6  5
		    'nearest'  | 1  1  1 | 1  2  3  4  5  6  7  8 | 8  8  8
		    'constant' | 0  0  0 | 1  2  3  4  5  6  7  8 | 0  0  0
		    'wrap'     | 6  7  8 | 1  2  3  4  5  6  7  8 | 1  2  3
		
		.. versionadded:: 0.14.0
		
		Examples
		--------
		>>> from scipy.signal import savgol_filter
		>>> np.set_printoptions(precision=2)  # For compact display.
		>>> x = np.array([2, 2, 5, 2, 1, 0, 1, 4, 9])
		
		Filter with a window length of 5 and a degree 2 polynomial.  Use
		the defaults for all other parameters.
		
		>>> savgol_filter(x, 5, 2)
		array([ 1.66,  3.17,  3.54,  2.86,  0.66,  0.17,  1.  ,  4.  ,  9.  ])
		
		Note that the last five values in x are samples of a parabola, so
		when mode='interp' (the default) is used with polyorder=2, the last
		three values are unchanged.  Compare that to, for example,
		`mode='nearest'`:
		
		>>> savgol_filter(x, 5, 2, mode='nearest')
		array([ 1.74,  3.03,  3.54,  2.86,  0.66,  0.17,  1.  ,  4.6 ,  7.97])
	**/
	static public function savgol_filter(x:Dynamic, window_length:Dynamic, polyorder:Dynamic, ?deriv:Dynamic, ?delta:Dynamic, ?axis:Dynamic, ?mode:Dynamic, ?cval:Dynamic):Dynamic;
}