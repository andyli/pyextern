/* This file is generated, do not edit! */
package scipy.signal;
@:pythonImport("scipy.signal._savitzky_golay") extern class _Savitzky_golay {
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
		
		Returns
		-------
		x : (N,) or (N, K) ndarray
		    Least-squares solution.  Return shape matches shape of `b`.
		residues : () or (1,) or (K,) ndarray
		    Sums of residues, squared 2-norm for each column in ``b - a x``.
		    If rank of matrix a is < N or > M this is an empty array.
		    If b was 1-D, this is an (1,) shape array, otherwise the shape is (K,).
		rank : int
		    Effective rank of matrix `a`.
		s : (min(M,N),) ndarray
		    Singular values of `a`. The condition number of a is
		    ``abs(s[0]/s[-1])``.
		
		Raises
		------
		LinAlgError :
		    If computation does not converge.
		
		
		See Also
		--------
		optimize.nnls : linear least squares with non-negativity constraint
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?cond:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
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
		    `window_length` must be a positive odd integer.
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
		>>> np.set_printoptions(precision=2)  # For compact display.
		>>> x = np.array([2, 2, 5, 2, 1, 0, 1, 4, 9])
		
		Filter with a window length of 5 and a degree 2 polynomial.  Use
		the defaults for all other parameters.
		
		>>> y = savgol_filter(x, 5, 2)
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