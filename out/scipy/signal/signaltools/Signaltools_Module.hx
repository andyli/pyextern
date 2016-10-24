/* This file is generated, do not edit! */
package scipy.signal.signaltools;
@:pythonImport("scipy.signal.signaltools") extern class Signaltools_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _boundarydict : Dynamic;
	static public function _bvalfromboundary(boundary:Dynamic):Dynamic;
	static public function _centered(arr:Dynamic, newshape:Dynamic):Dynamic;
	/**
		Forward-backward IIR filter that uses Gustafsson's method.
		
		Apply the IIR filter defined by `(b,a)` to `x` twice, first forward
		then backward, using Gustafsson's initial conditions [1]_.
		
		Let ``y_fb`` be the result of filtering first forward and then backward,
		and let ``y_bf`` be the result of filtering first backward then forward.
		Gustafsson's method is to compute initial conditions for the forward
		pass and the backward pass such that ``y_fb == y_bf``.
		
		Parameters
		----------
		b : scalar or 1-D ndarray
		    Numerator coefficients of the filter.
		a : scalar or 1-D ndarray
		    Denominator coefficients of the filter.
		x : ndarray
		    Data to be filtered.
		axis : int, optional
		    Axis of `x` to be filtered.  Default is -1.
		irlen : int or None, optional
		    The length of the nonnegligible part of the impulse response.
		    If `irlen` is None, or if the length of the signal is less than
		    ``2 * irlen``, then no part of the impulse response is ignored.
		
		Returns
		-------
		y : ndarray
		    The filtered data.
		x0 : ndarray
		    Initial condition for the forward filter.
		x1 : ndarray
		    Initial condition for the backward filter.
		
		Notes
		-----
		Typically the return values `x0` and `x1` are not needed by the
		caller.  The intended use of these return values is in unit tests.
		
		References
		----------
		.. [1] F. Gustaffson. Determining the initial states in forward-backward
		       filtering. Transactions on Signal Processing, 46(4):988-992, 1996.
	**/
	static public function _filtfilt_gust(b:Dynamic, a:Dynamic, x:Dynamic, ?axis:Dynamic, ?irlen:Dynamic):Dynamic;
	/**
		If in 'valid' mode, checks whether or not one of the array shapes
		is at least as large as the other in every dimension. Returns whether
		or not the input arrays need to be swapped depending on whether shape2
		is larger than shape1. This is important for some of the correlation and
		convolution implementations in this module, where the larger array input
		needs to come before the smaller array input when operating in this mode.
		Note that if the mode provided is not 'valid', False is immediately
		returned.
	**/
	static public function _inputs_swap_needed(mode:Dynamic, shape1:Dynamic, shape2:Dynamic):Dynamic;
	static public var _modedict : Dynamic;
	/**
		The output length that results from a given input
	**/
	static public function _output_len(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _rfft_lock : Dynamic;
	static public var _rfft_mt_safe : Dynamic;
	static public function _valfrommode(mode:Dynamic):Dynamic;
	/**
		Helper to validate padding for filtfilt
	**/
	static public function _validate_pad(padtype:Dynamic, padlen:Dynamic, x:Dynamic, axis:Dynamic, ntaps:Dynamic):Dynamic;
	/**
		Helper to validate a SOS input
	**/
	static public function _validate_sos(sos:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns True if two arrays are element-wise equal within a tolerance.
		
		The tolerance values are positive, typically very small numbers.  The
		relative difference (`rtol` * abs(`b`)) and the absolute difference
		`atol` are added together to compare against the absolute difference
		between `a` and `b`.
		
		If either array contains one or more NaNs, False is returned.
		Infs are treated as equal if they are in the same place and of the same
		sign in both arrays.
		
		Parameters
		----------
		a, b : array_like
		    Input arrays to compare.
		rtol : float
		    The relative tolerance parameter (see Notes).
		atol : float
		    The absolute tolerance parameter (see Notes).
		equal_nan : bool
		    Whether to compare NaN's as equal.  If True, NaN's in `a` will be
		    considered equal to NaN's in `b` in the output array.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		allclose : bool
		    Returns True if the two arrays are equal within the given
		    tolerance; False otherwise.
		
		See Also
		--------
		isclose, all, any
		
		Notes
		-----
		If the following equation is element-wise True, then allclose returns
		True.
		
		 absolute(`a` - `b`) <= (`atol` + `rtol` * absolute(`b`))
		
		The above equation is not symmetric in `a` and `b`, so that
		`allclose(a, b)` might be different from `allclose(b, a)` in
		some rare cases.
		
		Examples
		--------
		>>> np.allclose([1e10,1e-7], [1.00001e10,1e-8])
		False
		>>> np.allclose([1e10,1e-8], [1.00001e10,1e-9])
		True
		>>> np.allclose([1e10,1e-8], [1.0001e10,1e-9])
		False
		>>> np.allclose([1.0, np.nan], [1.0, np.nan])
		False
		>>> np.allclose([1.0, np.nan], [1.0, np.nan], equal_nan=True)
		True
	**/
	static public function allclose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Bool;
	/**
		Return the angle of the complex argument.
		
		Parameters
		----------
		z : array_like
		    A complex number or sequence of complex numbers.
		deg : bool, optional
		    Return angle in degrees if True, radians if False (default).
		
		Returns
		-------
		angle : ndarray or scalar
		    The counterclockwise angle from the positive real axis on
		    the complex plane, with dtype as numpy.float64.
		
		See Also
		--------
		arctan2
		absolute
		
		
		
		Examples
		--------
		>>> np.angle([1.0, 1.0j, 1+1j])               # in radians
		array([ 0.        ,  1.57079633,  0.78539816])
		>>> np.angle(1+1j, deg=True)                  # in degrees
		45.0
	**/
	static public function angle(z:Dynamic, ?deg:Dynamic):Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range <http://docs.python.org/lib/built-in-funcs.html>`_ function,
		but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use ``linspace`` for these cases.
		
		Parameters
		----------
		start : number, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : number
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : number, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified, `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		See Also
		--------
		linspace : Evenly spaced numbers with careful handling of endpoints.
		ogrid: Arrays of evenly spaced numbers in N-dimensions.
		mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
		Examples
		--------
		>>> np.arange(3)
		array([0, 1, 2])
		>>> np.arange(3.0)
		array([ 0.,  1.,  2.])
		>>> np.arange(3,7)
		array([3, 4, 5, 6])
		>>> np.arange(3,7,2)
		array([3, 5])
	**/
	static public function arange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the indices that would sort an array.
		
		Perform an indirect sort along the given axis using the algorithm specified
		by the `kind` keyword. It returns an array of indices of the same shape as
		`a` that index data along the given axis in sorted order.
		
		Parameters
		----------
		a : array_like
		    Array to sort.
		axis : int or None, optional
		    Axis along which to sort.  The default is -1 (the last axis). If None,
		    the flattened array is used.
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    Sorting algorithm.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
		Returns
		-------
		index_array : ndarray, int
		    Array of indices that sort `a` along the specified axis.
		    If `a` is one-dimensional, ``a[index_array]`` yields a sorted `a`.
		
		See Also
		--------
		sort : Describes sorting algorithms used.
		lexsort : Indirect stable sort with multiple keys.
		ndarray.sort : Inplace sort.
		argpartition : Indirect partial sort.
		
		Notes
		-----
		See `sort` for notes on the different sorting algorithms.
		
		As of NumPy 1.4.0 `argsort` works with real/complex arrays containing
		nan values. The enhanced sort order is documented in `sort`.
		
		Examples
		--------
		One dimensional array:
		
		>>> x = np.array([3, 1, 2])
		>>> np.argsort(x)
		array([1, 2, 0])
		
		Two-dimensional array:
		
		>>> x = np.array([[0, 3], [2, 2]])
		>>> x
		array([[0, 3],
		       [2, 2]])
		
		>>> np.argsort(x, axis=0)
		array([[0, 1],
		       [1, 0]])
		
		>>> np.argsort(x, axis=1)
		array([[0, 1],
		       [0, 1]])
		
		Sorting with keys:
		
		>>> x = np.array([(1, 0), (0, 1)], dtype=[('x', '<i4'), ('y', '<i4')])
		>>> x
		array([(1, 0), (0, 1)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
		
		>>> np.argsort(x, order=('x','y'))
		array([1, 0])
		
		>>> np.argsort(x, order=('y','x'))
		array([0, 1])
	**/
	static public function argsort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		array(object, dtype=None, copy=True, order=None, subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an
		    object whose __array__ method returns an array, or any
		    (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then
		    the type will be determined as the minimum type required
		    to hold the objects in the sequence.  This argument can only
		    be used to 'upcast' the array.  For downcasting, use the
		    .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy
		    will only be made if __array__ returns a copy, if obj is a
		    nested sequence, or if a copy is needed to satisfy any of the other
		    requirements (`dtype`, `order`, etc.).
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C', then the array
		    will be in C-contiguous order (last-index varies the fastest).
		    If order is 'F', then the returned array will be in
		    Fortran-contiguous order (first-index varies the fastest).
		    If order is 'A' (default), then the returned array may be
		    in any order (either C-, Fortran-contiguous, or even discontiguous),
		    unless a copy is required, in which case it will be C-contiguous.
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
		empty, empty_like, zeros, zeros_like, ones, ones_like, fill
		
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
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
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
		    An array, or sequence of arrays, each with ``a.ndim >= 1``.
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
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
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
		    An array, or tuple of arrays, each with ``a.ndim >= 2``.
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
	**/
	static public function atleast_2d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		Reverse the 1-d slices of `a` along axis `axis`.
		
		Returns axis_slice(a, step=-1, axis=axis).
	**/
	static public function axis_reverse(a:Dynamic, ?axis:Dynamic):Dynamic;
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
	static public function callable(obj:Dynamic):Dynamic;
	@:native("cast")
	static public var _cast : Dynamic;
	/**
		Chebyshev type I digital and analog filter design.
		
		Design an Nth-order digital or analog Chebyshev type I filter and
		return the filter coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		rp : float
		    The maximum ripple allowed below unity gain in the passband.
		    Specified in decibels, as a positive number.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For Type I filters, this is the point in the transition band at which
		    the gain first drops below -`rp`.
		    For digital filters, `Wn` is normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`Wn` is thus in
		    half-cycles / sample.)
		    For analog filters, `Wn` is an angular frequency (e.g. rad/s).
		btype : {'lowpass', 'highpass', 'bandpass', 'bandstop'}, optional
		    The type of filter.  Default is 'lowpass'.
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		output : {'ba', 'zpk', 'sos'}, optional
		    Type of output:  numerator/denominator ('ba'), pole-zero ('zpk'), or
		    second-order sections ('sos'). Default is 'ba'.
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (`b`) and denominator (`a`) polynomials of the IIR filter.
		    Only returned if ``output='ba'``.
		z, p, k : ndarray, ndarray, float
		    Zeros, poles, and system gain of the IIR filter transfer
		    function.  Only returned if ``output='zpk'``.
		sos : ndarray
		    Second-order sections representation of the IIR filter.
		    Only returned if ``output=='sos'``.
		
		See Also
		--------
		cheb1ord, cheb1ap
		
		Notes
		-----
		The Chebyshev type I filter maximizes the rate of cutoff between the
		frequency response's passband and stopband, at the expense of ripple in
		the passband and increased ringing in the step response.
		
		Type I filters roll off faster than Type II (`cheby2`), but Type II
		filters do not have any ripple in the passband.
		
		The equiripple passband has N maxima or minima (for example, a
		5th-order filter has 3 maxima and 2 minima).  Consequently, the DC gain is
		unity for odd-order filters, or -rp dB for even-order filters.
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Plot the filter's frequency response, showing the critical points:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.cheby1(4, 5, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Chebyshev Type I frequency response (rp=5)')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.axvline(100, color='green') # cutoff frequency
		>>> plt.axhline(-5, color='green') # rp
		>>> plt.show()
	**/
	static public function cheby1(N:Dynamic, rp:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Sort roots based on magnitude.
		
		Parameters
		----------
		p : array_like
		    The roots to sort, as a 1-D array.
		
		Returns
		-------
		p_sorted : ndarray
		    Sorted roots.
		indx : ndarray
		    Array of indices needed to sort the input `p`.
	**/
	static public function cmplx_sort(p:Dynamic):Dynamic;
	/**
		Create an ndarray that is a constant extension of x along an axis.
		
		The extension repeats the values at the first and last element of
		the axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend x at each end of the axis.
		axis : int, optional
		    The axis along which to extend x.  Default is -1.
		
		Examples
		--------
		>>> a = array([[1.0,2.0,3.0,4.0,5.0], [0.0, 1.0, 4.0, 9.0, 16.0]])
		>>> _const_ext(a, 2)
		array([[  1.,   1.,   1.,   2.,   3.,   4.,   5.,   5.,   5.],
		       [  0.,   0.,   0.,   1.,   4.,   9.,  16.,  16.,  16.]])
	**/
	static public function const_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convolve two N-dimensional arrays.
		
		Convolve `in1` and `in2`, with the output size determined by the
		`mode` argument.
		
		Parameters
		----------
		in1 : array_like
		    First input.
		in2 : array_like
		    Second input. Should have the same number of dimensions as `in1`.
		    If operating in 'valid' mode, either `in1` or `in2` must be
		    at least as large as the other in every dimension.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear convolution
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		
		Returns
		-------
		convolve : array
		    An N-dimensional array containing a subset of the discrete linear
		    convolution of `in1` with `in2`.
		
		See also
		--------
		numpy.polymul : performs polynomial multiplication (same operation, but
		                also accepts poly1d objects)
		
		Examples
		--------
		Smooth a square pulse using a Hann window:
		
		>>> from scipy import signal
		>>> sig = np.repeat([0., 1., 0.], 100)
		>>> win = signal.hann(50)
		>>> filtered = signal.convolve(sig, win, mode='same') / sum(win)
		
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax_orig, ax_win, ax_filt) = plt.subplots(3, 1, sharex=True)
		>>> ax_orig.plot(sig)
		>>> ax_orig.set_title('Original pulse')
		>>> ax_orig.margins(0, 0.1)
		>>> ax_win.plot(win)
		>>> ax_win.set_title('Filter impulse response')
		>>> ax_win.margins(0, 0.1)
		>>> ax_filt.plot(filtered)
		>>> ax_filt.set_title('Filtered signal')
		>>> ax_filt.margins(0, 0.1)
		>>> fig.tight_layout()
		>>> fig.show()
	**/
	static public function convolve(in1:Dynamic, in2:Dynamic, ?mode:Dynamic):Array<Dynamic>;
	/**
		Convolve two 2-dimensional arrays.
		
		Convolve `in1` and `in2` with output size determined by `mode`, and
		boundary conditions determined by `boundary` and `fillvalue`.
		
		Parameters
		----------
		in1 : array_like
		    First input.
		in2 : array_like
		    Second input. Should have the same number of dimensions as `in1`.
		    If operating in 'valid' mode, either `in1` or `in2` must be
		    at least as large as the other in every dimension.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear convolution
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		
		boundary : str {'fill', 'wrap', 'symm'}, optional
		    A flag indicating how to handle boundaries:
		
		    ``fill``
		       pad input arrays with fillvalue. (default)
		    ``wrap``
		       circular boundary conditions.
		    ``symm``
		       symmetrical boundary conditions.
		
		fillvalue : scalar, optional
		    Value to fill pad input arrays with. Default is 0.
		
		Returns
		-------
		out : ndarray
		    A 2-dimensional array containing a subset of the discrete linear
		    convolution of `in1` with `in2`.
		
		Examples
		--------
		Compute the gradient of an image by 2D convolution with a complex Scharr
		operator.  (Horizontal operator is real, vertical is imaginary.)  Use
		symmetric boundary condition to avoid creating edges at the image
		boundaries.
		
		>>> from scipy import signal
		>>> from scipy import misc
		>>> ascent = misc.ascent()
		>>> scharr = np.array([[ -3-3j, 0-10j,  +3 -3j],
		...                    [-10+0j, 0+ 0j, +10 +0j],
		...                    [ -3+3j, 0+10j,  +3 +3j]]) # Gx + j*Gy
		>>> grad = signal.convolve2d(ascent, scharr, boundary='symm', mode='same')
		
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax_orig, ax_mag, ax_ang) = plt.subplots(3, 1, figsize=(6, 15))
		>>> ax_orig.imshow(ascent, cmap='gray')
		>>> ax_orig.set_title('Original')
		>>> ax_orig.set_axis_off()
		>>> ax_mag.imshow(np.absolute(grad), cmap='gray')
		>>> ax_mag.set_title('Gradient magnitude')
		>>> ax_mag.set_axis_off()
		>>> ax_ang.imshow(np.angle(grad), cmap='hsv') # hsv is cyclic, like angles
		>>> ax_ang.set_title('Gradient orientation')
		>>> ax_ang.set_axis_off()
		>>> fig.show()
	**/
	static public function convolve2d(in1:Dynamic, in2:Dynamic, ?mode:Dynamic, ?boundary:Dynamic, ?fillvalue:Dynamic):Dynamic;
	/**
		Cross-correlate two N-dimensional arrays.
		
		Cross-correlate `in1` and `in2`, with the output size determined by the
		`mode` argument.
		
		Parameters
		----------
		in1 : array_like
		    First input.
		in2 : array_like
		    Second input. Should have the same number of dimensions as `in1`.
		    If operating in 'valid' mode, either `in1` or `in2` must be
		    at least as large as the other in every dimension.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear cross-correlation
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		
		Returns
		-------
		correlate : array
		    An N-dimensional array containing a subset of the discrete linear
		    cross-correlation of `in1` with `in2`.
		
		Notes
		-----
		The correlation z of two d-dimensional arrays x and y is defined as:
		
		  z[...,k,...] = sum[..., i_l, ...]
		                     x[..., i_l,...] * conj(y[..., i_l + k,...])
		
		Examples
		--------
		Implement a matched filter using cross-correlation, to recover a signal
		that has passed through a noisy channel.
		
		>>> from scipy import signal
		>>> sig = np.repeat([0., 1., 1., 0., 1., 0., 0., 1.], 128)
		>>> sig_noise = sig + np.random.randn(len(sig))
		>>> corr = signal.correlate(sig_noise, np.ones(128), mode='same') / 128
		
		>>> import matplotlib.pyplot as plt
		>>> clock = np.arange(64, len(sig), 128)
		>>> fig, (ax_orig, ax_noise, ax_corr) = plt.subplots(3, 1, sharex=True)
		>>> ax_orig.plot(sig)
		>>> ax_orig.plot(clock, sig[clock], 'ro')
		>>> ax_orig.set_title('Original signal')
		>>> ax_noise.plot(sig_noise)
		>>> ax_noise.set_title('Signal with noise')
		>>> ax_corr.plot(corr)
		>>> ax_corr.plot(clock, corr[clock], 'ro')
		>>> ax_corr.axhline(0.5, ls=':')
		>>> ax_corr.set_title('Cross-correlated with rectangular pulse')
		>>> ax_orig.margins(0, 0.1)
		>>> fig.tight_layout()
		>>> fig.show()
	**/
	static public function correlate(in1:Dynamic, in2:Dynamic, ?mode:Dynamic):Array<Dynamic>;
	/**
		Cross-correlate two 2-dimensional arrays.
		
		Cross correlate `in1` and `in2` with output size determined by `mode`, and
		boundary conditions determined by `boundary` and `fillvalue`.
		
		Parameters
		----------
		in1 : array_like
		    First input.
		in2 : array_like
		    Second input. Should have the same number of dimensions as `in1`.
		    If operating in 'valid' mode, either `in1` or `in2` must be
		    at least as large as the other in every dimension.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear cross-correlation
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		
		boundary : str {'fill', 'wrap', 'symm'}, optional
		    A flag indicating how to handle boundaries:
		
		    ``fill``
		       pad input arrays with fillvalue. (default)
		    ``wrap``
		       circular boundary conditions.
		    ``symm``
		       symmetrical boundary conditions.
		
		fillvalue : scalar, optional
		    Value to fill pad input arrays with. Default is 0.
		
		Returns
		-------
		correlate2d : ndarray
		    A 2-dimensional array containing a subset of the discrete linear
		    cross-correlation of `in1` with `in2`.
		
		Examples
		--------
		Use 2D cross-correlation to find the location of a template in a noisy
		image:
		
		>>> from scipy import signal
		>>> from scipy import misc
		>>> face = misc.face(gray=True) - misc.face(gray=True).mean()
		>>> template = np.copy(face[300:365, 670:750])  # right eye
		>>> template -= template.mean()
		>>> face = face + np.random.randn(*face.shape) * 50  # add noise
		>>> corr = signal.correlate2d(face, template, boundary='symm', mode='same')
		>>> y, x = np.unravel_index(np.argmax(corr), corr.shape)  # find the match
		
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax_orig, ax_template, ax_corr) = plt.subplots(3, 1,
		...                                                     figsize=(6, 15))
		>>> ax_orig.imshow(face, cmap='gray')
		>>> ax_orig.set_title('Original')
		>>> ax_orig.set_axis_off()
		>>> ax_template.imshow(template, cmap='gray')
		>>> ax_template.set_title('Template')
		>>> ax_template.set_axis_off()
		>>> ax_corr.imshow(corr, cmap='gray')
		>>> ax_corr.set_title('Cross-correlation')
		>>> ax_corr.set_axis_off()
		>>> ax_orig.plot(x, y, 'ro')
		>>> fig.show()
	**/
	static public function correlate2d(in1:Dynamic, in2:Dynamic, ?mode:Dynamic, ?boundary:Dynamic, ?fillvalue:Dynamic):Dynamic;
	/**
		Downsample the signal after applying an anti-aliasing filter.
		
		By default, an order 8 Chebyshev type I filter is used. A 30 point FIR
		filter with Hamming window is used if `ftype` is 'fir'.
		
		Parameters
		----------
		x : ndarray
		    The signal to be downsampled, as an N-dimensional array.
		q : int
		    The downsampling factor. For downsampling factors higher than 13, it is
		    recommended to call `decimate` multiple times.
		n : int, optional
		    The order of the filter (1 less than the length for 'fir'). Defaults to
		    8 for 'iir' and 30 for 'fir'.
		ftype : str {'iir', 'fir'} or ``dlti`` instance, optional
		    If 'iir' or 'fir', specifies the type of lowpass filter. If an instance
		    of an `dlti` object, uses that object to filter before downsampling.
		axis : int, optional
		    The axis along which to decimate.
		zero_phase : bool, optional
		    Prevent phase shift by filtering with `filtfilt` instead of `lfilter`
		    when using an IIR filter, and shifting the outputs back by the filter's
		    group delay when using an FIR filter. A value of ``True`` is
		    recommended, since a phase shift is generally not desired. Using
		    ``None`` defaults to ``False`` for backwards compatibility. This
		    default will change to ``True`` in a future release, so it is best to
		    set this argument explicitly.
		
		    .. versionadded:: 0.18.0
		
		Returns
		-------
		y : ndarray
		    The down-sampled signal.
		
		See Also
		--------
		resample : Resample up or down using the FFT method.
		resample_poly : Resample using polyphase filtering and an FIR filter.
		
		Notes
		-----
		The ``zero_phase`` keyword was added in 0.18.0.
		The possibility to use instances of ``dlti`` as ``ftype`` was added in
		0.18.0.
	**/
	static public function decimate(x:Dynamic, q:Dynamic, ?n:Dynamic, ?ftype:Dynamic, ?axis:Dynamic, ?zero_phase:Dynamic):Dynamic;
	/**
		Deconvolves ``divisor`` out of ``signal``.
		
		Returns the quotient and remainder such that
		``signal = convolve(divisor, quotient) + remainder``
		
		Parameters
		----------
		signal : array_like
		    Signal data, typically a recorded signal
		divisor : array_like
		    Divisor data, typically an impulse response or filter that was
		    applied to the original signal
		
		Returns
		-------
		quotient : ndarray
		    Quotient, typically the recovered original signal
		remainder : ndarray
		    Remainder
		
		Examples
		--------
		Deconvolve a signal that's been filtered:
		
		>>> from scipy import signal
		>>> original = [0, 1, 0, 0, 1, 1, 0, 0]
		>>> impulse_response = [2, 1]
		>>> recorded = signal.convolve(impulse_response, original)
		>>> recorded
		array([0, 2, 1, 0, 2, 3, 1, 0, 0])
		>>> recovered, remainder = signal.deconvolve(recorded, impulse_response)
		>>> recovered
		array([ 0.,  1.,  0.,  0.,  1.,  1.,  0.,  0.])
		
		See also
		--------
		numpy.polydiv : performs polynomial division (same operation, but
		                also accepts poly1d objects)
	**/
	static public function deconvolve(signal:Dynamic, divisor:Dynamic):Dynamic;
	/**
		Remove linear trend along axis from data.
		
		Parameters
		----------
		data : array_like
		    The input data.
		axis : int, optional
		    The axis along which to detrend the data. By default this is the
		    last axis (-1).
		type : {'linear', 'constant'}, optional
		    The type of detrending. If ``type == 'linear'`` (default),
		    the result of a linear least-squares fit to `data` is subtracted
		    from `data`.
		    If ``type == 'constant'``, only the mean of `data` is subtracted.
		bp : array_like of ints, optional
		    A sequence of break points. If given, an individual linear fit is
		    performed for each part of `data` between two break points.
		    Break points are specified as indices into `data`.
		
		Returns
		-------
		ret : ndarray
		    The detrended input data.
		
		Examples
		--------
		>>> from scipy import signal
		>>> randgen = np.random.RandomState(9)
		>>> npoints = 1000
		>>> noise = randgen.randn(npoints)
		>>> x = 3 + 2*np.linspace(0, 1, npoints) + noise
		>>> (signal.detrend(x) - noise).max() < 0.01
		True
	**/
	static public function detrend(data:Dynamic, ?axis:Dynamic, ?type:Dynamic, ?bp:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays.
		
		For 2-D arrays it is equivalent to matrix multiplication, and for 1-D
		arrays to inner product of vectors (without complex conjugation). For
		N dimensions it is a sum product over the last axis of `a` and
		the second-to-last of `b`::
		
		    dot(a, b)[i,j,k,m] = sum(a[i,j,:] * b[k,:,m])
		
		Parameters
		----------
		a : array_like
		    First argument.
		b : array_like
		    Second argument.
		out : ndarray, optional
		    Output argument. This must have the exact kind that would be returned
		    if it was not used. In particular, it must have the right type, must be
		    C-contiguous, and its dtype must be the dtype that would be returned
		    for `dot(a,b)`. This is a performance feature. Therefore, if these
		    conditions are not met, an exception is raised, instead of attempting
		    to be flexible.
		
		Returns
		-------
		output : ndarray
		    Returns the dot product of `a` and `b`.  If `a` and `b` are both
		    scalars or both 1-D arrays then a scalar is returned; otherwise
		    an array is returned.
		    If `out` is given, then it is returned.
		
		Raises
		------
		ValueError
		    If the last dimension of `a` is not the same size as
		    the second-to-last dimension of `b`.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		matmul : '@' operator as method with out parameter.
		
		Examples
		--------
		>>> np.dot(3, 4)
		12
		
		Neither argument is complex-conjugated:
		
		>>> np.dot([2j, 3j], [2j, 3j])
		(-13+0j)
		
		For 2-D arrays it is the matrix product:
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [[4, 1], [2, 2]]
		>>> np.dot(a, b)
		array([[4, 1],
		       [2, 2]])
		
		>>> a = np.arange(3*4*5*6).reshape((3,4,5,6))
		>>> b = np.arange(3*4*5*6)[::-1].reshape((5,4,6,3))
		>>> np.dot(a, b)[2,3,2,1,2,2]
		499128
		>>> sum(a[2,3,2,:] * b[1,2,:,2])
		499128
	**/
	static public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create an ndarray that is an even extension of x along an axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend x at each end of the axis.
		axis : int, optional
		    The axis along which to extend x.  Default is -1.
		
		Examples
		--------
		>>> a = array([[1.0,2.0,3.0,4.0,5.0], [0.0, 1.0, 4.0, 9.0, 16.0]])
		>>> _even_ext(a, 2)
		array([[  3.,   2.,   1.,   2.,   3.,   4.,   5.,   4.,   3.],
		       [  4.,   1.,   0.,   1.,   4.,   9.,  16.,   9.,   4.]])
	**/
	static public function even_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		exp(x[, out])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		out : ndarray
		    Output array, element-wise exponential of `x`.
		
		See Also
		--------
		expm1 : Calculate ``exp(x) - 1`` for all elements in the array.
		exp2  : Calculate ``2**x`` for all elements in the array.
		
		Notes
		-----
		The irrational number ``e`` is also known as Euler's number.  It is
		approximately 2.718281, and is the base of the natural logarithm,
		``ln`` (this means that, if :math:`x = \ln y = \log_e y`,
		then :math:`e^x = y`. For real input, ``exp(x)`` is always positive.
		
		For complex arguments, ``x = a + ib``, we can write
		:math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
		known (it is the real argument, described above).  The second term,
		:math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
		magnitude 1 and a periodic phase.
		
		References
		----------
		.. [1] Wikipedia, "Exponential function",
		       http://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       http://www.math.sfu.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Expand the shape of an array.
		
		Insert a new axis, corresponding to a given position in the array shape.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int
		    Position (amongst axes) where new axis is to be inserted.
		
		Returns
		-------
		res : ndarray
		    Output array. The number of dimensions is one greater than that of
		    the input array.
		
		See Also
		--------
		doc.indexing, atleast_1d, atleast_2d, atleast_3d
		
		Examples
		--------
		>>> x = np.array([1,2])
		>>> x.shape
		(2,)
		
		The following is equivalent to ``x[np.newaxis,:]`` or ``x[np.newaxis]``:
		
		>>> y = np.expand_dims(x, axis=0)
		>>> y
		array([[1, 2]])
		>>> y.shape
		(1, 2)
		
		>>> y = np.expand_dims(x, axis=1)  # Equivalent to x[:,newaxis]
		>>> y
		array([[1],
		       [2]])
		>>> y.shape
		(2, 1)
		
		Note that some examples may use ``None`` instead of ``np.newaxis``.  These
		are the same objects:
		
		>>> np.newaxis is None
		True
	**/
	static public function expand_dims(a:Dynamic, axis:Dynamic):Dynamic;
	/**
		The factorial of a number or array of numbers.
		
		The factorial of non-negative integer `n` is the product of all
		positive integers less than or equal to `n`::
		
		    n! = n * (n - 1) * (n - 2) * ... * 1
		
		Parameters
		----------
		n : int or array_like of ints
		    Input values.  If ``n < 0``, the return value is 0.
		exact : bool, optional
		    If True, calculate the answer exactly using long integer arithmetic.
		    If False, result is approximated in floating point rapidly using the
		    `gamma` function.
		    Default is False.
		
		Returns
		-------
		nf : float or int or ndarray
		    Factorial of `n`, as integer or float depending on `exact`.
		
		Notes
		-----
		For arrays with ``exact=True``, the factorial is computed only once, for
		the largest input, with each other result computed in the process.
		The output dtype is increased to ``int64`` or ``object`` if necessary.
		
		With ``exact=False`` the factorial is approximated using the gamma
		function:
		
		.. math:: n! = \Gamma(n+1)
		
		Examples
		--------
		>>> from scipy.special import factorial
		>>> arr = np.array([3, 4, 5])
		>>> factorial(arr, exact=False)
		array([   6.,   24.,  120.])
		>>> factorial(arr, exact=True)
		array([  6,  24, 120])
		>>> factorial(5, exact=True)
		120L
	**/
	static public function factorial(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Convolve two N-dimensional arrays using FFT.
		
		Convolve `in1` and `in2` using the fast Fourier transform method, with
		the output size determined by the `mode` argument.
		
		This is generally much faster than `convolve` for large arrays (n > ~500),
		but can be slower when only a few output values are needed, and can only
		output float arrays (int or object array inputs will be cast to float).
		
		Parameters
		----------
		in1 : array_like
		    First input.
		in2 : array_like
		    Second input. Should have the same number of dimensions as `in1`.
		    If operating in 'valid' mode, either `in1` or `in2` must be
		    at least as large as the other in every dimension.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear convolution
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		
		Returns
		-------
		out : array
		    An N-dimensional array containing a subset of the discrete linear
		    convolution of `in1` with `in2`.
		
		Examples
		--------
		Autocorrelation of white noise is an impulse.  (This is at least 100 times
		as fast as `convolve`.)
		
		>>> from scipy import signal
		>>> sig = np.random.randn(1000)
		>>> autocorr = signal.fftconvolve(sig, sig[::-1], mode='full')
		
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax_orig, ax_mag) = plt.subplots(2, 1)
		>>> ax_orig.plot(sig)
		>>> ax_orig.set_title('White noise')
		>>> ax_mag.plot(np.arange(-len(sig)+1,len(sig)), autocorr)
		>>> ax_mag.set_title('Autocorrelation')
		>>> fig.tight_layout()
		>>> fig.show()
		
		Gaussian blur implemented using FFT convolution.  Notice the dark borders
		around the image, due to the zero-padding beyond its boundaries.
		The `convolve2d` function allows for other types of image boundaries,
		but is far slower.
		
		>>> from scipy import misc
		>>> face = misc.face(gray=True)
		>>> kernel = np.outer(signal.gaussian(70, 8), signal.gaussian(70, 8))
		>>> blurred = signal.fftconvolve(face, kernel, mode='same')
		
		>>> fig, (ax_orig, ax_kernel, ax_blurred) = plt.subplots(3, 1,
		...                                                      figsize=(6, 15))
		>>> ax_orig.imshow(face, cmap='gray')
		>>> ax_orig.set_title('Original')
		>>> ax_orig.set_axis_off()
		>>> ax_kernel.imshow(kernel, cmap='gray')
		>>> ax_kernel.set_title('Gaussian kernel')
		>>> ax_kernel.set_axis_off()
		>>> ax_blurred.imshow(blurred, cmap='gray')
		>>> ax_blurred.set_title('Blurred')
		>>> ax_blurred.set_axis_off()
		>>> fig.show()
	**/
	static public function fftconvolve(in1:Dynamic, in2:Dynamic, ?mode:Dynamic):Array<Dynamic>;
	/**
		A forward-backward filter.
		
		This function applies a linear filter twice, once forward and once
		backwards.  The combined filter has linear phase.
		
		The function provides options for handling the edges of the signal.
		
		When `method` is "pad", the function pads the data along the given axis
		in one of three ways: odd, even or constant.  The odd and even extensions
		have the corresponding symmetry about the end point of the data.  The
		constant extension extends the data with the values at the end points. On
		both the forward and backward passes, the initial condition of the
		filter is found by using `lfilter_zi` and scaling it by the end point of
		the extended data.
		
		When `method` is "gust", Gustafsson's method [1]_ is used.  Initial
		conditions are chosen for the forward and backward passes so that the
		forward-backward filter gives the same result as the backward-forward
		filter.
		
		Parameters
		----------
		b : (N,) array_like
		    The numerator coefficient vector of the filter.
		a : (N,) array_like
		    The denominator coefficient vector of the filter.  If ``a[0]``
		    is not 1, then both `a` and `b` are normalized by ``a[0]``.
		x : array_like
		    The array of data to be filtered.
		axis : int, optional
		    The axis of `x` to which the filter is applied.
		    Default is -1.
		padtype : str or None, optional
		    Must be 'odd', 'even', 'constant', or None.  This determines the
		    type of extension to use for the padded signal to which the filter
		    is applied.  If `padtype` is None, no padding is used.  The default
		    is 'odd'.
		padlen : int or None, optional
		    The number of elements by which to extend `x` at both ends of
		    `axis` before applying the filter.  This value must be less than
		    ``x.shape[axis] - 1``.  ``padlen=0`` implies no padding.
		    The default value is ``3 * max(len(a), len(b))``.
		method : str, optional
		    Determines the method for handling the edges of the signal, either
		    "pad" or "gust".  When `method` is "pad", the signal is padded; the
		    type of padding is determined by `padtype` and `padlen`, and `irlen`
		    is ignored.  When `method` is "gust", Gustafsson's method is used,
		    and `padtype` and `padlen` are ignored.
		irlen : int or None, optional
		    When `method` is "gust", `irlen` specifies the length of the
		    impulse response of the filter.  If `irlen` is None, no part
		    of the impulse response is ignored.  For a long signal, specifying
		    `irlen` can significantly improve the performance of the filter.
		
		Returns
		-------
		y : ndarray
		    The filtered output with the same shape as `x`.
		
		See Also
		--------
		sosfiltfilt, lfilter_zi, lfilter, lfiltic, savgol_filter, sosfilt
		
		Notes
		-----
		The option to use Gustaffson's method was added in scipy version 0.16.0.
		
		References
		----------
		.. [1] F. Gustaffson, "Determining the initial states in forward-backward
		       filtering", Transactions on Signal Processing, Vol. 46, pp. 988-992,
		       1996.
		
		Examples
		--------
		The examples will use several functions from `scipy.signal`.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		First we create a one second signal that is the sum of two pure sine
		waves, with frequencies 5 Hz and 250 Hz, sampled at 2000 Hz.
		
		>>> t = np.linspace(0, 1.0, 2001)
		>>> xlow = np.sin(2 * np.pi * 5 * t)
		>>> xhigh = np.sin(2 * np.pi * 250 * t)
		>>> x = xlow + xhigh
		
		Now create a lowpass Butterworth filter with a cutoff of 0.125 times
		the Nyquist rate, or 125 Hz, and apply it to ``x`` with `filtfilt`.
		The result should be approximately ``xlow``, with no phase shift.
		
		>>> b, a = signal.butter(8, 0.125)
		>>> y = signal.filtfilt(b, a, x, padlen=150)
		>>> np.abs(y - xlow).max()
		9.1086182074789912e-06
		
		We get a fairly clean result for this artificial example because
		the odd extension is exact, and with the moderately long padding,
		the filter's transients have dissipated by the time the actual data
		is reached.  In general, transient effects at the edges are
		unavoidable.
		
		The following example demonstrates the option ``method="gust"``.
		
		First, create a filter.
		
		>>> b, a = signal.ellip(4, 0.01, 120, 0.125)  # Filter to be applied.
		>>> np.random.seed(123456)
		
		`sig` is a random input signal to be filtered.
		
		>>> n = 60
		>>> sig = np.random.randn(n)**3 + 3*np.random.randn(n).cumsum()
		
		Apply `filtfilt` to `sig`, once using the Gustafsson method, and
		once using padding, and plot the results for comparison.
		
		>>> fgust = signal.filtfilt(b, a, sig, method="gust")
		>>> fpad = signal.filtfilt(b, a, sig, padlen=50)
		>>> plt.plot(sig, 'k-', label='input')
		>>> plt.plot(fgust, 'b-', linewidth=4, label='gust')
		>>> plt.plot(fpad, 'c-', linewidth=1.5, label='pad')
		>>> plt.legend(loc='best')
		>>> plt.show()
		
		The `irlen` argument can be used to improve the performance
		of Gustafsson's method.
		
		Estimate the impulse response length of the filter.
		
		>>> z, p, k = signal.tf2zpk(b, a)
		>>> eps = 1e-9
		>>> r = np.max(np.abs(p))
		>>> approx_impulse_len = int(np.ceil(np.log(eps) / np.log(r)))
		>>> approx_impulse_len
		137
		
		Apply the filter to a longer signal, with and without the `irlen`
		argument.  The difference between `y1` and `y2` is small.  For long
		signals, using `irlen` gives a significant performance improvement.
		
		>>> x = np.random.randn(5000)
		>>> y1 = signal.filtfilt(b, a, x, method='gust')
		>>> y2 = signal.filtfilt(b, a, x, method='gust', irlen=approx_impulse_len)
		>>> print(np.max(np.abs(y1 - y2)))
		1.80056858312e-10
	**/
	static public function filtfilt(b:Dynamic, a:Dynamic, x:Dynamic, ?axis:Dynamic, ?padtype:Dynamic, ?padlen:Dynamic, ?method:Dynamic, ?irlen:Dynamic):Dynamic;
	/**
		FIR filter design using the window method.
		
		This function computes the coefficients of a finite impulse response
		filter.  The filter will have linear phase; it will be Type I if
		`numtaps` is odd and Type II if `numtaps` is even.
		
		Type II filters always have zero response at the Nyquist rate, so a
		ValueError exception is raised if firwin is called with `numtaps` even and
		having a passband whose right end is at the Nyquist rate.
		
		Parameters
		----------
		numtaps : int
		    Length of the filter (number of coefficients, i.e. the filter
		    order + 1).  `numtaps` must be even if a passband includes the
		    Nyquist frequency.
		cutoff : float or 1D array_like
		    Cutoff frequency of filter (expressed in the same units as `nyq`)
		    OR an array of cutoff frequencies (that is, band edges). In the
		    latter case, the frequencies in `cutoff` should be positive and
		    monotonically increasing between 0 and `nyq`.  The values 0 and
		    `nyq` must not be included in `cutoff`.
		width : float or None, optional
		    If `width` is not None, then assume it is the approximate width
		    of the transition region (expressed in the same units as `nyq`)
		    for use in Kaiser FIR filter design.  In this case, the `window`
		    argument is ignored.
		window : string or tuple of string and parameter values, optional
		    Desired window to use. See `scipy.signal.get_window` for a list
		    of windows and required parameters.
		pass_zero : bool, optional
		    If True, the gain at the frequency 0 (i.e. the "DC gain") is 1.
		    Otherwise the DC gain is 0.
		scale : bool, optional
		    Set to True to scale the coefficients so that the frequency
		    response is exactly unity at a certain frequency.
		    That frequency is either:
		
		    - 0 (DC) if the first passband starts at 0 (i.e. pass_zero
		      is True)
		    - `nyq` (the Nyquist rate) if the first passband ends at
		      `nyq` (i.e the filter is a single band highpass filter);
		      center of first passband otherwise
		
		nyq : float, optional
		    Nyquist frequency.  Each frequency in `cutoff` must be between 0
		    and `nyq`.
		
		Returns
		-------
		h : (numtaps,) ndarray
		    Coefficients of length `numtaps` FIR filter.
		
		Raises
		------
		ValueError
		    If any value in `cutoff` is less than or equal to 0 or greater
		    than or equal to `nyq`, if the values in `cutoff` are not strictly
		    monotonically increasing, or if `numtaps` is even but a passband
		    includes the Nyquist frequency.
		
		See also
		--------
		firwin2
		firls
		remez
		
		Examples
		--------
		Low-pass from 0 to f:
		
		>>> from scipy import signal
		>>> numtaps = 3
		>>> f = 0.1
		>>> signal.firwin(numtaps, f)
		array([ 0.06799017,  0.86401967,  0.06799017])
		
		Use a specific window function:
		
		>>> signal.firwin(numtaps, f, window='nuttall')
		array([  3.56607041e-04,   9.99286786e-01,   3.56607041e-04])
		
		High-pass ('stop' from 0 to f):
		
		>>> signal.firwin(numtaps, f, pass_zero=False)
		array([-0.00859313,  0.98281375, -0.00859313])
		
		Band-pass:
		
		>>> f1, f2 = 0.1, 0.2
		>>> signal.firwin(numtaps, [f1, f2], pass_zero=False)
		array([ 0.06301614,  0.88770441,  0.06301614])
		
		Band-stop:
		
		>>> signal.firwin(numtaps, [f1, f2])
		array([-0.00801395,  1.0160279 , -0.00801395])
		
		Multi-band (passbands are [0, f1], [f2, f3] and [f4, 1]):
		
		>>> f3, f4 = 0.3, 0.4
		>>> signal.firwin(numtaps, [f1, f2, f3, f4])
		array([-0.01376344,  1.02752689, -0.01376344])
		
		Multi-band (passbands are [f1, f2] and [f3,f4]):
		
		>>> signal.firwin(numtaps, [f1, f2, f3, f4], pass_zero=False)
		array([ 0.04890915,  0.91284326,  0.04890915])
	**/
	static public function firwin(numtaps:Dynamic, cutoff:Dynamic, ?width:Dynamic, ?window:Dynamic, ?pass_zero:Dynamic, ?scale:Dynamic, ?nyq:Dynamic):Dynamic;
	/**
		gcd(x, y) -> int
		greatest common divisor of x and y
	**/
	static public function gcd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a window.
		
		Parameters
		----------
		window : string, float, or tuple
		    The type of window to create. See below for more details.
		Nx : int
		    The number of samples in the window.
		fftbins : bool, optional
		    If True (default), create a "periodic" window, ready to use with
		    `ifftshift` and be multiplied by the result of an FFT (see also
		    `fftpack.fftfreq`).
		    If False, create a "symmetric" window, for use in filter design.
		
		Returns
		-------
		get_window : ndarray
		    Returns a window of length `Nx` and type `window`
		
		Notes
		-----
		Window types:
		
		    `boxcar`, `triang`, `blackman`, `hamming`, `hann`, `bartlett`,
		    `flattop`, `parzen`, `bohman`, `blackmanharris`, `nuttall`,
		    `barthann`, `kaiser` (needs beta), `gaussian` (needs standard
		    deviation), `general_gaussian` (needs power, width), `slepian`
		    (needs width), `chebwin` (needs attenuation), `exponential`
		    (needs decay scale), `tukey` (needs taper fraction)
		
		If the window requires no parameters, then `window` can be a string.
		
		If the window requires parameters, then `window` must be a tuple
		with the first argument the string name of the window, and the next
		arguments the needed parameters.
		
		If `window` is a floating point number, it is interpreted as the beta
		parameter of the `kaiser` window.
		
		Each of the window types listed above is also the name of
		a function that can be called directly to create a window of
		that type.
		
		Examples
		--------
		>>> from scipy import signal
		>>> signal.get_window('triang', 7)
		array([ 0.25,  0.5 ,  0.75,  1.  ,  0.75,  0.5 ,  0.25])
		>>> signal.get_window(('kaiser', 4.0), 9)
		array([ 0.08848053,  0.32578323,  0.63343178,  0.89640418,  1.        ,
		        0.89640418,  0.63343178,  0.32578323,  0.08848053])
		>>> signal.get_window(4.0, 9)
		array([ 0.08848053,  0.32578323,  0.63343178,  0.89640418,  1.        ,
		        0.89640418,  0.63343178,  0.32578323,  0.08848053])
	**/
	static public function get_window(window:Dynamic, Nx:Dynamic, ?fftbins:Dynamic):Dynamic;
	/**
		Compute the analytic signal, using the Hilbert transform.
		
		The transformation is done along the last axis by default.
		
		Parameters
		----------
		x : array_like
		    Signal data.  Must be real.
		N : int, optional
		    Number of Fourier components.  Default: ``x.shape[axis]``
		axis : int, optional
		    Axis along which to do the transformation.  Default: -1.
		
		Returns
		-------
		xa : ndarray
		    Analytic signal of `x`, of each 1-D array along `axis`
		
		Notes
		-----
		The analytic signal ``x_a(t)`` of signal ``x(t)`` is:
		
		.. math:: x_a = F^{-1}(F(x) 2U) = x + i y
		
		where `F` is the Fourier transform, `U` the unit step function,
		and `y` the Hilbert transform of `x`. [1]_
		
		In other words, the negative half of the frequency spectrum is zeroed
		out, turning the real-valued signal into a complex signal.  The Hilbert
		transformed signal can be obtained from ``np.imag(hilbert(x))``, and the
		original signal from ``np.real(hilbert(x))``.
		
		Examples
		---------
		In this example we use the Hilbert transform to determine the amplitude
		envelope and instantaneous frequency of an amplitude-modulated signal.
		
		>>> import numpy as np
		>>> import matplotlib.pyplot as plt
		>>> from scipy.signal import hilbert, chirp
		
		>>> duration = 1.0
		>>> fs = 400.0
		>>> samples = int(fs*duration)
		>>> t = np.arange(samples) / fs
		
		We create a chirp of which the frequency increases from 20 Hz to 100 Hz and
		apply an amplitude modulation.
		
		>>> signal = chirp(t, 20.0, t[-1], 100.0)
		>>> signal *= (1.0 + 0.5 * np.sin(2.0*np.pi*3.0*t) )
		
		The amplitude envelope is given by magnitude of the analytic signal. The
		instantaneous frequency can be obtained by differentiating the instantaneous
		phase in respect to time. The instantaneous phase corresponds to the phase
		angle of the analytic signal.
		
		>>> analytic_signal = hilbert(signal)
		>>> amplitude_envelope = np.abs(analytic_signal)
		>>> instantaneous_phase = np.unwrap(np.angle(analytic_signal))
		>>> instantaneous_frequency = np.diff(instantaneous_phase) / (2.0*np.pi) * fs
		
		>>> fig = plt.figure()
		>>> ax0 = fig.add_subplot(211)
		>>> ax0.plot(t, signal, label='signal')
		>>> ax0.plot(t, amplitude_envelope, label='envelope')
		>>> ax0.set_xlabel("time in seconds")
		>>> ax0.legend()
		>>> ax1 = fig.add_subplot(212)
		>>> ax1.plot(t[1:], instantaneous_frequency)
		>>> ax1.set_xlabel("time in seconds")
		>>> ax1.set_ylim(0.0, 120.0)
		
		References
		----------
		.. [1] Wikipedia, "Analytic signal".
		       http://en.wikipedia.org/wiki/Analytic_signal
		.. [2] Leon Cohen, "Time-Frequency Analysis", 1995. Chapter 2.
		.. [3] Alan V. Oppenheim, Ronald W. Schafer. Discrete-Time Signal Processing,
		       Third Edition, 2009. Chapter 12. ISBN 13: 978-1292-02572-8
	**/
	static public function hilbert(x:Dynamic, ?N:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the '2-D' analytic signal of `x`
		
		Parameters
		----------
		x : array_like
		    2-D signal data.
		N : int or tuple of two ints, optional
		    Number of Fourier components. Default is ``x.shape``
		
		Returns
		-------
		xa : ndarray
		    Analytic signal of `x` taken along axes (0,1).
		
		References
		----------
		.. [1] Wikipedia, "Analytic signal",
		    http://en.wikipedia.org/wiki/Analytic_signal
	**/
	static public function hilbert2(x:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Compute b(s) and a(s) from partial fraction expansion.
		
		If `M` is the degree of numerator `b` and `N` the degree of denominator
		`a`::
		
		          b(s)     b[0] s**(M) + b[1] s**(M-1) + ... + b[M]
		  H(s) = ------ = ------------------------------------------
		          a(s)     a[0] s**(N) + a[1] s**(N-1) + ... + a[N]
		
		then the partial-fraction expansion H(s) is defined as::
		
		           r[0]       r[1]             r[-1]
		       = -------- + -------- + ... + --------- + k(s)
		         (s-p[0])   (s-p[1])         (s-p[-1])
		
		If there are any repeated roots (closer together than `tol`), then H(s)
		has terms like::
		
		      r[i]      r[i+1]              r[i+n-1]
		    -------- + ----------- + ... + -----------
		    (s-p[i])  (s-p[i])**2          (s-p[i])**n
		
		This function is used for polynomials in positive powers of s or z,
		such as analog filters or digital filters in controls engineering.  For
		negative powers of z (typical for digital filters in DSP), use `invresz`.
		
		Parameters
		----------
		r : array_like
		    Residues.
		p : array_like
		    Poles.
		k : array_like
		    Coefficients of the direct polynomial term.
		tol : float, optional
		    The tolerance for two roots to be considered equal. Default is 1e-3.
		rtype : {'max', 'min, 'avg'}, optional
		    How to determine the returned root if multiple roots are within
		    `tol` of each other.
		
		      - 'max': pick the maximum of those roots.
		      - 'min': pick the minimum of those roots.
		      - 'avg': take the average of those roots.
		
		Returns
		-------
		b : ndarray
		    Numerator polynomial coefficients.
		a : ndarray
		    Denominator polynomial coefficients.
		
		See Also
		--------
		residue, invresz, unique_roots
	**/
	static public function invres(r:Dynamic, p:Dynamic, k:Dynamic, ?tol:Dynamic, ?rtype:Dynamic):Dynamic;
	/**
		Compute b(z) and a(z) from partial fraction expansion.
		
		If `M` is the degree of numerator `b` and `N` the degree of denominator
		`a`::
		
		            b(z)     b[0] + b[1] z**(-1) + ... + b[M] z**(-M)
		    H(z) = ------ = ------------------------------------------
		            a(z)     a[0] + a[1] z**(-1) + ... + a[N] z**(-N)
		
		then the partial-fraction expansion H(z) is defined as::
		
		             r[0]                   r[-1]
		     = --------------- + ... + ---------------- + k[0] + k[1]z**(-1) ...
		       (1-p[0]z**(-1))         (1-p[-1]z**(-1))
		
		If there are any repeated roots (closer than `tol`), then the partial
		fraction expansion has terms like::
		
		         r[i]              r[i+1]                    r[i+n-1]
		    -------------- + ------------------ + ... + ------------------
		    (1-p[i]z**(-1))  (1-p[i]z**(-1))**2         (1-p[i]z**(-1))**n
		
		This function is used for polynomials in negative powers of z,
		such as digital filters in DSP.  For positive powers, use `invres`.
		
		Parameters
		----------
		r : array_like
		    Residues.
		p : array_like
		    Poles.
		k : array_like
		    Coefficients of the direct polynomial term.
		tol : float, optional
		    The tolerance for two roots to be considered equal. Default is 1e-3.
		rtype : {'max', 'min, 'avg'}, optional
		    How to determine the returned root if multiple roots are within
		    `tol` of each other.
		
		      - 'max': pick the maximum of those roots.
		      - 'min': pick the minimum of those roots.
		      - 'avg': take the average of those roots.
		
		Returns
		-------
		b : ndarray
		    Numerator polynomial coefficients.
		a : ndarray
		    Denominator polynomial coefficients.
		
		See Also
		--------
		residuez, unique_roots, invres
	**/
	static public function invresz(r:Dynamic, p:Dynamic, k:Dynamic, ?tol:Dynamic, ?rtype:Dynamic):Dynamic;
	/**
		Check for a complex type or an array of complex numbers.
		
		The type of the input is checked, not the value. Even if the input
		has an imaginary part equal to zero, `iscomplexobj` evaluates to True.
		
		Parameters
		----------
		x : any
		    The input can be of any type and shape.
		
		Returns
		-------
		iscomplexobj : bool
		    The return value, True if `x` is of a complex type or has at least
		    one complex element.
		
		See Also
		--------
		isrealobj, iscomplex
		
		Examples
		--------
		>>> np.iscomplexobj(1)
		False
		>>> np.iscomplexobj(1+0j)
		True
		>>> np.iscomplexobj([3, 1+0j, True])
		True
	**/
	static public function iscomplexobj(x:Dynamic):Bool;
	/**
		Filter data along one-dimension with an IIR or FIR filter.
		
		Filter a data sequence, `x`, using a digital filter.  This works for many
		fundamental data types (including Object type).  The filter is a direct
		form II transposed implementation of the standard difference equation
		(see Notes).
		
		Parameters
		----------
		b : array_like
		    The numerator coefficient vector in a 1-D sequence.
		a : array_like
		    The denominator coefficient vector in a 1-D sequence.  If ``a[0]``
		    is not 1, then both `a` and `b` are normalized by ``a[0]``.
		x : array_like
		    An N-dimensional input array.
		axis : int, optional
		    The axis of the input data array along which to apply the
		    linear filter. The filter is applied to each subarray along
		    this axis.  Default is -1.
		zi : array_like, optional
		    Initial conditions for the filter delays.  It is a vector
		    (or array of vectors for an N-dimensional input) of length
		    ``max(len(a), len(b)) - 1``.  If `zi` is None or is not given then
		    initial rest is assumed.  See `lfiltic` for more information.
		
		Returns
		-------
		y : array
		    The output of the digital filter.
		zf : array, optional
		    If `zi` is None, this is not returned, otherwise, `zf` holds the
		    final filter delay values.
		
		See Also
		--------
		lfiltic : Construct initial conditions for `lfilter`.
		lfilter_zi : Compute initial state (steady state of step response) for
		             `lfilter`.
		filtfilt : A forward-backward filter, to obtain a filter with linear phase.
		savgol_filter : A Savitzky-Golay filter.
		sosfilt: Filter data using cascaded second-order sections.
		sosfiltfilt: A forward-backward filter using second-order sections.
		
		Notes
		-----
		The filter function is implemented as a direct II transposed structure.
		This means that the filter implements::
		
		   a[0]*y[n] = b[0]*x[n] + b[1]*x[n-1] + ... + b[M]*x[n-M]
		                         - a[1]*y[n-1] - ... - a[N]*y[n-N]
		
		where `M` is the degree of the numerator, `N` is the degree of the
		denominator, and `n` is the sample number.  It is implemented using
		the following difference equations (assuming M = N)::
		
		     a[0]*y[n] = b[0] * x[n]               + d[0][n-1]
		       d[0][n] = b[1] * x[n] - a[1] * y[n] + d[1][n-1]
		       d[1][n] = b[2] * x[n] - a[2] * y[n] + d[2][n-1]
		     ...
		     d[N-2][n] = b[N-1]*x[n] - a[N-1]*y[n] + d[N-1][n-1]
		     d[N-1][n] = b[N] * x[n] - a[N] * y[n]
		
		where `d` are the state variables.
		
		The rational transfer function describing this filter in the
		z-transform domain is::
		
		                         -1              -M
		             b[0] + b[1]z  + ... + b[M] z
		     Y(z) = -------------------------------- X(z)
		                         -1              -N
		             a[0] + a[1]z  + ... + a[N] z
		
		Examples
		--------
		Generate a noisy signal to be filtered:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t = np.linspace(-1, 1, 201)
		>>> x = (np.sin(2*np.pi*0.75*t*(1-t) + 2.1) + 0.1*np.sin(2*np.pi*1.25*t + 1)
		...      + 0.18*np.cos(2*np.pi*3.85*t))
		>>> xn = x + np.random.randn(len(t)) * 0.08
		
		Create an order 3 lowpass butterworth filter:
		
		>>> b, a = signal.butter(3, 0.05)
		
		Apply the filter to xn.  Use lfilter_zi to choose the initial condition of
		the filter:
		
		>>> zi = signal.lfilter_zi(b, a)
		>>> z, _ = signal.lfilter(b, a, xn, zi=zi*xn[0])
		
		Apply the filter again, to have a result filtered at an order the same as
		filtfilt:
		
		>>> z2, _ = signal.lfilter(b, a, z, zi=zi*z[0])
		
		Use filtfilt to apply the filter:
		
		>>> y = signal.filtfilt(b, a, xn)
		
		Plot the original signal and the various filtered versions:
		
		>>> plt.figure
		>>> plt.plot(t, xn, 'b', alpha=0.75)
		>>> plt.plot(t, z, 'r--', t, z2, 'r', t, y, 'k')
		>>> plt.legend(('noisy signal', 'lfilter, once', 'lfilter, twice',
		...             'filtfilt'), loc='best')
		>>> plt.grid(True)
		>>> plt.show()
	**/
	static public function lfilter(b:Dynamic, a:Dynamic, x:Dynamic, ?axis:Dynamic, ?zi:Dynamic):Array<Dynamic>;
	/**
		Compute an initial state `zi` for the lfilter function that corresponds
		to the steady state of the step response.
		
		A typical use of this function is to set the initial state so that the
		output of the filter starts at the same value as the first element of
		the signal to be filtered.
		
		Parameters
		----------
		b, a : array_like (1-D)
		    The IIR filter coefficients. See `lfilter` for more
		    information.
		
		Returns
		-------
		zi : 1-D ndarray
		    The initial state for the filter.
		
		See Also
		--------
		lfilter, lfiltic, filtfilt
		
		Notes
		-----
		A linear filter with order m has a state space representation (A, B, C, D),
		for which the output y of the filter can be expressed as::
		
		    z(n+1) = A*z(n) + B*x(n)
		    y(n)   = C*z(n) + D*x(n)
		
		where z(n) is a vector of length m, A has shape (m, m), B has shape
		(m, 1), C has shape (1, m) and D has shape (1, 1) (assuming x(n) is
		a scalar).  lfilter_zi solves::
		
		    zi = A*zi + B
		
		In other words, it finds the initial condition for which the response
		to an input of all ones is a constant.
		
		Given the filter coefficients `a` and `b`, the state space matrices
		for the transposed direct form II implementation of the linear filter,
		which is the implementation used by scipy.signal.lfilter, are::
		
		    A = scipy.linalg.companion(a).T
		    B = b[1:] - a[1:]*b[0]
		
		assuming `a[0]` is 1.0; if `a[0]` is not 1, `a` and `b` are first
		divided by a[0].
		
		Examples
		--------
		The following code creates a lowpass Butterworth filter. Then it
		applies that filter to an array whose values are all 1.0; the
		output is also all 1.0, as expected for a lowpass filter.  If the
		`zi` argument of `lfilter` had not been given, the output would have
		shown the transient signal.
		
		>>> from numpy import array, ones
		>>> from scipy.signal import lfilter, lfilter_zi, butter
		>>> b, a = butter(5, 0.25)
		>>> zi = lfilter_zi(b, a)
		>>> y, zo = lfilter(b, a, ones(10), zi=zi)
		>>> y
		array([1.,  1.,  1.,  1.,  1.,  1.,  1.,  1.,  1.,  1.])
		
		Another example:
		
		>>> x = array([0.5, 0.5, 0.5, 0.0, 0.0, 0.0, 0.0])
		>>> y, zf = lfilter(b, a, x, zi=zi*x[0])
		>>> y
		array([ 0.5       ,  0.5       ,  0.5       ,  0.49836039,  0.48610528,
		    0.44399389,  0.35505241])
		
		Note that the `zi` argument to `lfilter` was computed using
		`lfilter_zi` and scaled by `x[0]`.  Then the output `y` has no
		transient until the input drops from 0.5 to 0.0.
	**/
	static public function lfilter_zi(b:Dynamic, a:Dynamic):Dynamic;
	/**
		Construct initial conditions for lfilter.
		
		Given a linear filter (b, a) and initial conditions on the output `y`
		and the input `x`, return the initial conditions on the state vector zi
		which is used by `lfilter` to generate the output given the input.
		
		Parameters
		----------
		b : array_like
		    Linear filter term.
		a : array_like
		    Linear filter term.
		y : array_like
		    Initial conditions.
		
		    If ``N = len(a) - 1``, then ``y = {y[-1], y[-2], ..., y[-N]}``.
		
		    If `y` is too short, it is padded with zeros.
		x : array_like, optional
		    Initial conditions.
		
		    If ``M = len(b) - 1``, then ``x = {x[-1], x[-2], ..., x[-M]}``.
		
		    If `x` is not given, its initial conditions are assumed zero.
		
		    If `x` is too short, it is padded with zeros.
		
		Returns
		-------
		zi : ndarray
		    The state vector ``zi = {z_0[-1], z_1[-1], ..., z_K-1[-1]}``,
		    where ``K = max(M, N)``.
		
		See Also
		--------
		lfilter, lfilter_zi
	**/
	static public function lfiltic(b:Dynamic, a:Dynamic, y:Dynamic, ?x:Dynamic):Dynamic;
	/**
		Compute the arithmetic mean along the specified axis.
		
		Returns the average of the array elements.  The average is taken over
		the flattened array by default, otherwise over the specified axis.
		`float64` intermediate and return values are used for integer inputs.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose mean is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the means are computed. The default is to
		    compute the mean of the flattened array.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, a mean is performed over multiple axes,
		    instead of a single axis or all the axes as before.
		dtype : data-type, optional
		    Type to use in computing the mean.  For integer inputs, the default
		    is `float64`; for floating point inputs, it is the same as the
		    input dtype.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.
		    See `doc.ufuncs` for details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `mean` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-classes `sum` method does not implement `keepdims` any
		    exceptions will be raised.
		
		Returns
		-------
		m : ndarray, see dtype parameter above
		    If `out=None`, returns a new array containing the mean values,
		    otherwise a reference to the output array is returned.
		
		See Also
		--------
		average : Weighted average
		std, var, nanmean, nanstd, nanvar
		
		Notes
		-----
		The arithmetic mean is the sum of the elements along the axis divided
		by the number of elements.
		
		Note that for floating-point input, the mean is computed using the
		same precision the input has.  Depending on the input data, this can
		cause the results to be inaccurate, especially for `float32` (see
		example below).  Specifying a higher-precision accumulator using the
		`dtype` keyword can alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.mean(a)
		2.5
		>>> np.mean(a, axis=0)
		array([ 2.,  3.])
		>>> np.mean(a, axis=1)
		array([ 1.5,  3.5])
		
		In single precision, `mean` can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.mean(a)
		0.546875
		
		Computing the mean in float64 is more accurate:
		
		>>> np.mean(a, dtype=np.float64)
		0.55000000074505806
	**/
	static public function mean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Perform a median filter on an N-dimensional array.
		
		Apply a median filter to the input array using a local window-size
		given by `kernel_size`.
		
		Parameters
		----------
		volume : array_like
		    An N-dimensional input array.
		kernel_size : array_like, optional
		    A scalar or an N-length list giving the size of the median filter
		    window in each dimension.  Elements of `kernel_size` should be odd.
		    If `kernel_size` is a scalar, then this scalar is used as the size in
		    each dimension. Default size is 3 for each dimension.
		
		Returns
		-------
		out : ndarray
		    An array the same size as input containing the median filtered
		    result.
	**/
	static public function medfilt(volume:Dynamic, ?kernel_size:Dynamic):Dynamic;
	/**
		Median filter a 2-dimensional array.
		
		Apply a median filter to the `input` array using a local window-size
		given by `kernel_size` (must be odd).
		
		Parameters
		----------
		input : array_like
		    A 2-dimensional input array.
		kernel_size : array_like, optional
		    A scalar or a list of length 2, giving the size of the
		    median filter window in each dimension.  Elements of
		    `kernel_size` should be odd.  If `kernel_size` is a scalar,
		    then this scalar is used as the size in each dimension.
		    Default is a kernel of size (3, 3).
		
		Returns
		-------
		out : ndarray
		    An array the same size as input containing the median filtered
		    result.
	**/
	static public function medfilt2d(input:Dynamic, ?kernel_size:Dynamic):Dynamic;
	static public var newaxis : Dynamic;
	/**
		Generate a new ndarray by making an odd extension of x along an axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend x at each end of the axis.
		axis : int, optional
		    The axis along which to extend x.  Default is -1.
		
		Examples
		--------
		>>> a = array([[1.0,2.0,3.0,4.0,5.0], [0.0, 1.0, 4.0, 9.0, 16.0]])
		>>> _odd_ext(a, 2)
		array([[-1.,  0.,  1.,  2.,  3.,  4.,  5.,  6.,  7.],
		       [-4., -1,   0.,  1.,  4.,  9., 16., 23., 28.]])
	**/
	static public function odd_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
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
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Perform an order filter on an N-dimensional array.
		
		Perform an order filter on the array in.  The domain argument acts as a
		mask centered over each pixel.  The non-zero elements of domain are
		used to select elements surrounding each input pixel which are placed
		in a list.   The list is sorted, and the output for that pixel is the
		element corresponding to rank in the sorted list.
		
		Parameters
		----------
		a : ndarray
		    The N-dimensional input array.
		domain : array_like
		    A mask array with the same number of dimensions as `a`.
		    Each dimension should have an odd number of elements.
		rank : int
		    A non-negative integer which selects the element from the
		    sorted list (0 corresponds to the smallest element, 1 is the
		    next smallest element, etc.).
		
		Returns
		-------
		out : ndarray
		    The results of the order filter in an array with the same
		    shape as `a`.
		
		Examples
		--------
		>>> from scipy import signal
		>>> x = np.arange(25).reshape(5, 5)
		>>> domain = np.identity(3)
		>>> x
		array([[ 0,  1,  2,  3,  4],
		       [ 5,  6,  7,  8,  9],
		       [10, 11, 12, 13, 14],
		       [15, 16, 17, 18, 19],
		       [20, 21, 22, 23, 24]])
		>>> signal.order_filter(x, domain, 0)
		array([[  0.,   0.,   0.,   0.,   0.],
		       [  0.,   0.,   1.,   2.,   0.],
		       [  0.,   5.,   6.,   7.,   0.],
		       [  0.,  10.,  11.,  12.,   0.],
		       [  0.,   0.,   0.,   0.,   0.]])
		>>> signal.order_filter(x, domain, 2)
		array([[  6.,   7.,   8.,   9.,   4.],
		       [ 11.,  12.,  13.,  14.,   9.],
		       [ 16.,  17.,  18.,  19.,  14.],
		       [ 21.,  22.,  23.,  24.,  19.],
		       [ 20.,  21.,  22.,  23.,  24.]])
	**/
	static public function order_filter(a:Dynamic, domain:Dynamic, rank:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		Find the coefficients of a polynomial with the given sequence of roots.
		
		Returns the coefficients of the polynomial whose leading coefficient
		is one for the given sequence of zeros (multiple roots must be included
		in the sequence as many times as their multiplicity; see Examples).
		A square matrix (or array, which will be treated as a matrix) can also
		be given, in which case the coefficients of the characteristic polynomial
		of the matrix are returned.
		
		Parameters
		----------
		seq_of_zeros : array_like, shape (N,) or (N, N)
		    A sequence of polynomial roots, or a square array or matrix object.
		
		Returns
		-------
		c : ndarray
		    1D array of polynomial coefficients from highest to lowest degree:
		
		    ``c[0] * x**(N) + c[1] * x**(N-1) + ... + c[N-1] * x + c[N]``
		    where c[0] always equals 1.
		
		Raises
		------
		ValueError
		    If input is the wrong shape (the input must be a 1-D or square
		    2-D array).
		
		See Also
		--------
		polyval : Compute polynomial values.
		roots : Return the roots of a polynomial.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		Specifying the roots of a polynomial still leaves one degree of
		freedom, typically represented by an undetermined leading
		coefficient. [1]_ In the case of this function, that coefficient -
		the first one in the returned array - is always taken as one. (If
		for some reason you have one other point, the only automatic way
		presently to leverage that information is to use ``polyfit``.)
		
		The characteristic polynomial, :math:`p_a(t)`, of an `n`-by-`n`
		matrix **A** is given by
		
		    :math:`p_a(t) = \mathrm{det}(t\, \mathbf{I} - \mathbf{A})`,
		
		where **I** is the `n`-by-`n` identity matrix. [2]_
		
		References
		----------
		.. [1] M. Sullivan and M. Sullivan, III, "Algebra and Trignometry,
		   Enhanced With Graphing Utilities," Prentice-Hall, pg. 318, 1996.
		
		.. [2] G. Strang, "Linear Algebra and Its Applications, 2nd Edition,"
		   Academic Press, pg. 182, 1980.
		
		Examples
		--------
		Given a sequence of a polynomial's zeros:
		
		>>> np.poly((0, 0, 0)) # Multiple root example
		array([1, 0, 0, 0])
		
		The line above represents z**3 + 0*z**2 + 0*z + 0.
		
		>>> np.poly((-1./2, 0, 1./2))
		array([ 1.  ,  0.  , -0.25,  0.  ])
		
		The line above represents z**3 - z/4
		
		>>> np.poly((np.random.random(1.)[0], 0, np.random.random(1.)[0]))
		array([ 1.        , -0.77086955,  0.08618131,  0.        ]) #random
		
		Given a square array object:
		
		>>> P = np.array([[0, 1./3], [-1./2, 0]])
		>>> np.poly(P)
		array([ 1.        ,  0.        ,  0.16666667])
		
		Or a square matrix object:
		
		>>> np.poly(np.matrix(P))
		array([ 1.        ,  0.        ,  0.16666667])
		
		Note how in all cases the leading coefficient is always 1.
	**/
	static public function poly(seq_of_zeros:Dynamic):Dynamic;
	/**
		Find the sum of two polynomials.
		
		Returns the polynomial resulting from the sum of two input polynomials.
		Each input must be either a poly1d object or a 1D sequence of polynomial
		coefficients, from highest to lowest degree.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d object
		    Input polynomials.
		
		Returns
		-------
		out : ndarray or poly1d object
		    The sum of the inputs. If either input is a poly1d object, then the
		    output is also a poly1d object. Otherwise, it is a 1D array of
		    polynomial coefficients from highest to lowest degree.
		
		See Also
		--------
		poly1d : A one-dimensional polynomial class.
		poly, polyadd, polyder, polydiv, polyfit, polyint, polysub, polyval
		
		Examples
		--------
		>>> np.polyadd([1, 2], [9, 5, 4])
		array([9, 6, 6])
		
		Using poly1d objects:
		
		>>> p1 = np.poly1d([1, 2])
		>>> p2 = np.poly1d([9, 5, 4])
		>>> print(p1)
		1 x + 2
		>>> print(p2)
		   2
		9 x + 5 x + 4
		>>> print(np.polyadd(p1, p2))
		   2
		9 x + 6 x + 6
	**/
	static public function polyadd(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Return the derivative of the specified order of a polynomial.
		
		Parameters
		----------
		p : poly1d or sequence
		    Polynomial to differentiate.
		    A sequence is interpreted as polynomial coefficients, see `poly1d`.
		m : int, optional
		    Order of differentiation (default: 1)
		
		Returns
		-------
		der : poly1d
		    A new polynomial representing the derivative.
		
		See Also
		--------
		polyint : Anti-derivative of a polynomial.
		poly1d : Class for one-dimensional polynomials.
		
		Examples
		--------
		The derivative of the polynomial :math:`x^3 + x^2 + x^1 + 1` is:
		
		>>> p = np.poly1d([1,1,1,1])
		>>> p2 = np.polyder(p)
		>>> p2
		poly1d([3, 2, 1])
		
		which evaluates to:
		
		>>> p2(2.)
		17.0
		
		We can verify this, approximating the derivative with
		``(f(x + h) - f(x))/h``:
		
		>>> (p(2. + 0.001) - p(2.)) / 0.001
		17.007000999997857
		
		The fourth-order derivative of a 3rd-order polynomial is zero:
		
		>>> np.polyder(p, 2)
		poly1d([6, 2])
		>>> np.polyder(p, 3)
		poly1d([6])
		>>> np.polyder(p, 4)
		poly1d([ 0.])
	**/
	static public function polyder(p:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Returns the quotient and remainder of polynomial division.
		
		The input arrays are the coefficients (including any coefficients
		equal to zero) of the "numerator" (dividend) and "denominator"
		(divisor) polynomials, respectively.
		
		Parameters
		----------
		u : array_like or poly1d
		    Dividend polynomial's coefficients.
		
		v : array_like or poly1d
		    Divisor polynomial's coefficients.
		
		Returns
		-------
		q : ndarray
		    Coefficients, including those equal to zero, of the quotient.
		r : ndarray
		    Coefficients, including those equal to zero, of the remainder.
		
		See Also
		--------
		poly, polyadd, polyder, polydiv, polyfit, polyint, polymul, polysub,
		polyval
		
		Notes
		-----
		Both `u` and `v` must be 0-d or 1-d (ndim = 0 or 1), but `u.ndim` need
		not equal `v.ndim`. In other words, all four possible combinations -
		``u.ndim = v.ndim = 0``, ``u.ndim = v.ndim = 1``,
		``u.ndim = 1, v.ndim = 0``, and ``u.ndim = 0, v.ndim = 1`` - work.
		
		Examples
		--------
		.. math:: \frac{3x^2 + 5x + 2}{2x + 1} = 1.5x + 1.75, remainder 0.25
		
		>>> x = np.array([3.0, 5.0, 2.0])
		>>> y = np.array([2.0, 1.0])
		>>> np.polydiv(x, y)
		(array([ 1.5 ,  1.75]), array([ 0.25]))
	**/
	static public function polydiv(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Find the product of two polynomials.
		
		Finds the polynomial resulting from the multiplication of the two input
		polynomials. Each input must be either a poly1d object or a 1D sequence
		of polynomial coefficients, from highest to lowest degree.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d object
		    Input polynomials.
		
		Returns
		-------
		out : ndarray or poly1d object
		    The polynomial resulting from the multiplication of the inputs. If
		    either inputs is a poly1d object, then the output is also a poly1d
		    object. Otherwise, it is a 1D array of polynomial coefficients from
		    highest to lowest degree.
		
		See Also
		--------
		poly1d : A one-dimensional polynomial class.
		poly, polyadd, polyder, polydiv, polyfit, polyint, polysub,
		polyval
		convolve : Array convolution. Same output as polymul, but has parameter
		           for overlap mode.
		
		Examples
		--------
		>>> np.polymul([1, 2, 3], [9, 5, 1])
		array([ 9, 23, 38, 17,  3])
		
		Using poly1d objects:
		
		>>> p1 = np.poly1d([1, 2, 3])
		>>> p2 = np.poly1d([9, 5, 1])
		>>> print(p1)
		   2
		1 x + 2 x + 3
		>>> print(p2)
		   2
		9 x + 5 x + 1
		>>> print(np.polymul(p1, p2))
		   4      3      2
		9 x + 23 x + 38 x + 17 x + 3
	**/
	static public function polymul(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Difference (subtraction) of two polynomials.
		
		Given two polynomials `a1` and `a2`, returns ``a1 - a2``.
		`a1` and `a2` can be either array_like sequences of the polynomials'
		coefficients (including coefficients equal to zero), or `poly1d` objects.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d
		    Minuend and subtrahend polynomials, respectively.
		
		Returns
		-------
		out : ndarray or poly1d
		    Array or `poly1d` object of the difference polynomial's coefficients.
		
		See Also
		--------
		polyval, polydiv, polymul, polyadd
		
		Examples
		--------
		.. math:: (2 x^2 + 10 x - 2) - (3 x^2 + 10 x -4) = (-x^2 + 2)
		
		>>> np.polysub([2, 10, -2], [3, 10, -4])
		array([-1,  0,  2])
	**/
	static public function polysub(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Evaluate a polynomial at specific values.
		
		If `p` is of length N, this function returns the value:
		
		    ``p[0]*x**(N-1) + p[1]*x**(N-2) + ... + p[N-2]*x + p[N-1]``
		
		If `x` is a sequence, then `p(x)` is returned for each element of `x`.
		If `x` is another polynomial then the composite polynomial `p(x(t))`
		is returned.
		
		Parameters
		----------
		p : array_like or poly1d object
		   1D array of polynomial coefficients (including coefficients equal
		   to zero) from highest degree to the constant term, or an
		   instance of poly1d.
		x : array_like or poly1d object
		   A number, an array of numbers, or an instance of poly1d, at
		   which to evaluate `p`.
		
		Returns
		-------
		values : ndarray or poly1d
		   If `x` is a poly1d instance, the result is the composition of the two
		   polynomials, i.e., `x` is "substituted" in `p` and the simplified
		   result is returned. In addition, the type of `x` - array_like or
		   poly1d - governs the type of the output: `x` array_like => `values`
		   array_like, `x` a poly1d object => `values` is also.
		
		See Also
		--------
		poly1d: A polynomial class.
		
		Notes
		-----
		Horner's scheme [1]_ is used to evaluate the polynomial. Even so,
		for polynomials of high degree the values may be inaccurate due to
		rounding errors. Use carefully.
		
		References
		----------
		.. [1] I. N. Bronshtein, K. A. Semendyayev, and K. A. Hirsch (Eng.
		   trans. Ed.), *Handbook of Mathematics*, New York, Van Nostrand
		   Reinhold Co., 1985, pg. 720.
		
		Examples
		--------
		>>> np.polyval([3,0,1], 5)  # 3 * 5**2 + 0 * 5**1 + 1
		76
		>>> np.polyval([3,0,1], np.poly1d(5))
		poly1d([ 76.])
		>>> np.polyval(np.poly1d([3,0,1]), 5)
		76
		>>> np.polyval(np.poly1d([3,0,1]), np.poly1d(5))
		poly1d([ 76.])
	**/
	static public function polyval(p:Dynamic, x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a product is performed.  The default,
		    axis=None, will calculate the product of all the elements in the
		    input array. If axis is negative it counts from the last to the
		    first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, a product is performed on all of the
		    axes specified in the tuple instead of a single axis or all the
		    axes as before.
		dtype : dtype, optional
		    The type of the returned array, as well as of the accumulator in
		    which the elements are multiplied.  The dtype of `a` is used by
		    default unless `a` has an integer dtype of less precision than the
		    default platform integer.  In that case, if `a` is signed then the
		    platform integer is used while if `a` is unsigned then an unsigned
		    integer of the same precision as the platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `prod` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-classes `sum` method does not implement `keepdims` any
		    exceptions will be raised.
		
		Returns
		-------
		product_along_axis : ndarray, see `dtype` parameter above.
		    An array shaped as `a` but with the specified axis removed.
		    Returns a reference to `out` if specified.
		
		See Also
		--------
		ndarray.prod : equivalent method
		numpy.doc.ufuncs : Section "Output arguments"
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.  That means that, on a 32-bit platform:
		
		>>> x = np.array([536870910, 536870910, 536870910, 536870910])
		>>> np.prod(x) #random
		16
		
		The product of an empty array is the neutral element 1:
		
		>>> np.prod([])
		1.0
		
		Examples
		--------
		By default, calculate the product of all elements:
		
		>>> np.prod([1.,2.])
		2.0
		
		Even when the input array is two-dimensional:
		
		>>> np.prod([[1.,2.],[3.,4.]])
		24.0
		
		But we can also specify the axis over which to multiply:
		
		>>> np.prod([[1.,2.],[3.,4.]], axis=1)
		array([  2.,  12.])
		
		If the type of `x` is unsigned, then the output type is
		the unsigned platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.uint8)
		>>> np.prod(x).dtype == np.uint
		True
		
		If `x` is of a signed integer type, then the output type
		is the default platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.int8)
		>>> np.prod(x).dtype == np.int
		True
	**/
	static public function prod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		See Also
		--------
		prod : equivalent function; see for details.
	**/
	static public function product(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var r_ : Dynamic;
	/**
		Return a contiguous flattened array.
		
		A 1-D array, containing the elements of the input, is returned.  A copy is
		made only if needed.
		
		As of NumPy 1.10, the returned array will have the same type as the input
		array. (for example, a masked array will be returned for a masked array
		input)
		
		Parameters
		----------
		a : array_like
		    Input array.  The elements in `a` are read in the order specified by
		    `order`, and packed as a 1-D array.
		order : {'C','F', 'A', 'K'}, optional
		
		    The elements of `a` are read using this index order. 'C' means
		    to index the elements in row-major, C-style order,
		    with the last axis index changing fastest, back to the first
		    axis index changing slowest.  'F' means to index the elements
		    in column-major, Fortran-style order, with the
		    first index changing fastest, and the last index changing
		    slowest. Note that the 'C' and 'F' options take no account of
		    the memory layout of the underlying array, and only refer to
		    the order of axis indexing.  'A' means to read the elements in
		    Fortran-like index order if `a` is Fortran *contiguous* in
		    memory, C-like order otherwise.  'K' means to read the
		    elements in the order they occur in memory, except for
		    reversing the data when strides are negative.  By default, 'C'
		    index order is used.
		
		Returns
		-------
		y : array_like
		    If `a` is a matrix, y is a 1-D ndarray, otherwise y is an array of
		    the same subtype as `a`. The shape of the returned array is
		    ``(a.size,)``. Matrices are special cased for backward
		    compatibility.
		
		See Also
		--------
		ndarray.flat : 1-D iterator over an array.
		ndarray.flatten : 1-D array copy of the elements of an array
		                  in row-major order.
		ndarray.reshape : Change the shape of an array without changing its data.
		
		Notes
		-----
		In row-major, C-style order, in two dimensions, the row index
		varies the slowest, and the column index the quickest.  This can
		be generalized to multiple dimensions, where row-major order
		implies that the index along the first axis varies slowest, and
		the index along the last quickest.  The opposite holds for
		column-major, Fortran-style index ordering.
		
		When a view is desired in as many cases as possible, ``arr.reshape(-1)``
		may be preferable.
		
		Examples
		--------
		It is equivalent to ``reshape(-1, order=order)``.
		
		>>> x = np.array([[1, 2, 3], [4, 5, 6]])
		>>> print(np.ravel(x))
		[1 2 3 4 5 6]
		
		>>> print(x.reshape(-1))
		[1 2 3 4 5 6]
		
		>>> print(np.ravel(x, order='F'))
		[1 4 2 5 3 6]
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> print(np.ravel(x.T))
		[1 4 2 5 3 6]
		>>> print(np.ravel(x.T, order='A'))
		[1 2 3 4 5 6]
		
		When ``order`` is 'K', it will preserve orderings that are neither 'C'
		nor 'F', but won't reverse axes:
		
		>>> a = np.arange(3)[::-1]; a
		array([2, 1, 0])
		>>> a.ravel(order='C')
		array([2, 1, 0])
		>>> a.ravel(order='K')
		array([2, 1, 0])
		
		>>> a = np.arange(12).reshape(2,3,2).swapaxes(1,2); a
		array([[[ 0,  2,  4],
		        [ 1,  3,  5]],
		       [[ 6,  8, 10],
		        [ 7,  9, 11]]])
		>>> a.ravel(order='C')
		array([ 0,  2,  4,  1,  3,  5,  6,  8, 10,  7,  9, 11])
		>>> a.ravel(order='K')
		array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11])
	**/
	static public function ravel(a:Dynamic, ?order:Dynamic):Dynamic;
	/**
		If complex input returns a real array if complex parts are close to zero.
		
		"Close to zero" is defined as `tol` * (machine epsilon of the type for
		`a`).
		
		Parameters
		----------
		a : array_like
		    Input array.
		tol : float
		    Tolerance in machine epsilons for the complex part of the elements
		    in the array.
		
		Returns
		-------
		out : ndarray
		    If `a` is real, the type of `a` is used for the output.  If `a`
		    has complex elements, the returned type is float.
		
		See Also
		--------
		real, imag, angle
		
		Notes
		-----
		Machine epsilon varies from machine to machine and between data types
		but Python floats on most platforms have a machine epsilon equal to
		2.2204460492503131e-16.  You can use 'np.finfo(np.float).eps' to print
		out the machine epsilon for floats.
		
		Examples
		--------
		>>> np.finfo(np.float).eps
		2.2204460492503131e-16
		
		>>> np.real_if_close([2.1 + 4e-14j], tol=1000)
		array([ 2.1])
		>>> np.real_if_close([2.1 + 4e-13j], tol=1000)
		array([ 2.1 +4.00000000e-13j])
	**/
	static public function real_if_close(a:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		Resample `x` to `num` samples using Fourier method along the given axis.
		
		The resampled signal starts at the same value as `x` but is sampled
		with a spacing of ``len(x) / num * (spacing of x)``.  Because a
		Fourier method is used, the signal is assumed to be periodic.
		
		Parameters
		----------
		x : array_like
		    The data to be resampled.
		num : int
		    The number of samples in the resampled signal.
		t : array_like, optional
		    If `t` is given, it is assumed to be the sample positions
		    associated with the signal data in `x`.
		axis : int, optional
		    The axis of `x` that is resampled.  Default is 0.
		window : array_like, callable, string, float, or tuple, optional
		    Specifies the window applied to the signal in the Fourier
		    domain.  See below for details.
		
		Returns
		-------
		resampled_x or (resampled_x, resampled_t)
		    Either the resampled array, or, if `t` was given, a tuple
		    containing the resampled array and the corresponding resampled
		    positions.
		
		See also
		--------
		decimate : Downsample the signal after applying an FIR or IIR filter.
		resample_poly : Resample using polyphase filtering and an FIR filter.
		
		Notes
		-----
		The argument `window` controls a Fourier-domain window that tapers
		the Fourier spectrum before zero-padding to alleviate ringing in
		the resampled values for sampled signals you didn't intend to be
		interpreted as band-limited.
		
		If `window` is a function, then it is called with a vector of inputs
		indicating the frequency bins (i.e. fftfreq(x.shape[axis]) ).
		
		If `window` is an array of the same length as `x.shape[axis]` it is
		assumed to be the window to be applied directly in the Fourier
		domain (with dc and low-frequency first).
		
		For any other type of `window`, the function `scipy.signal.get_window`
		is called to generate the window.
		
		The first sample of the returned vector is the same as the first
		sample of the input vector.  The spacing between samples is changed
		from ``dx`` to ``dx * len(x) / num``.
		
		If `t` is not None, then it represents the old sample positions,
		and the new sample positions will be returned as well as the new
		samples.
		
		As noted, `resample` uses FFT transformations, which can be very
		slow if the number of input or output samples is large and prime;
		see `scipy.fftpack.fft`.
		
		Examples
		--------
		Note that the end of the resampled data rises to meet the first
		sample of the next cycle:
		
		>>> from scipy import signal
		
		>>> x = np.linspace(0, 10, 20, endpoint=False)
		>>> y = np.cos(-x**2/6.0)
		>>> f = signal.resample(y, 100)
		>>> xnew = np.linspace(0, 10, 100, endpoint=False)
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'go-', xnew, f, '.-', 10, y[0], 'ro')
		>>> plt.legend(['data', 'resampled'], loc='best')
		>>> plt.show()
	**/
	static public function resample(x:Dynamic, num:Dynamic, ?t:Dynamic, ?axis:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Resample `x` along the given axis using polyphase filtering.
		
		The signal `x` is upsampled by the factor `up`, a zero-phase low-pass
		FIR filter is applied, and then it is downsampled by the factor `down`.
		The resulting sample rate is ``up / down`` times the original sample
		rate. Values beyond the boundary of the signal are assumed to be zero
		during the filtering step.
		
		Parameters
		----------
		x : array_like
		    The data to be resampled.
		up : int
		    The upsampling factor.
		down : int
		    The downsampling factor.
		axis : int, optional
		    The axis of `x` that is resampled. Default is 0.
		window : string, tuple, or array_like, optional
		    Desired window to use to design the low-pass filter, or the FIR filter
		    coefficients to employ. See below for details.
		
		Returns
		-------
		resampled_x : array
		    The resampled array.
		
		See also
		--------
		decimate : Downsample the signal after applying an FIR or IIR filter.
		resample : Resample up or down using the FFT method.
		
		Notes
		-----
		This polyphase method will likely be faster than the Fourier method
		in `scipy.signal.resample` when the number of samples is large and
		prime, or when the number of samples is large and `up` and `down`
		share a large greatest common denominator. The length of the FIR
		filter used will depend on ``max(up, down) // gcd(up, down)``, and
		the number of operations during polyphase filtering will depend on
		the filter length and `down` (see `scipy.signal.upfirdn` for details).
		
		The argument `window` specifies the FIR low-pass filter design.
		
		If `window` is an array_like it is assumed to be the FIR filter
		coefficients. Note that the FIR filter is applied after the upsampling
		step, so it should be designed to operate on a signal at a sampling
		frequency higher than the original by a factor of `up//gcd(up, down)`.
		This function's output will be centered with respect to this array, so it
		is best to pass a symmetric filter with an odd number of samples if, as
		is usually the case, a zero-phase filter is desired.
		
		For any other type of `window`, the functions `scipy.signal.get_window`
		and `scipy.signal.firwin` are called to generate the appropriate filter
		coefficients.
		
		The first sample of the returned vector is the same as the first
		sample of the input vector. The spacing between samples is changed
		from ``dx`` to ``dx * up / float(down)``.
		
		Examples
		--------
		Note that the end of the resampled data rises to meet the first
		sample of the next cycle for the FFT method, and gets closer to zero
		for the polyphase method:
		
		>>> from scipy import signal
		
		>>> x = np.linspace(0, 10, 20, endpoint=False)
		>>> y = np.cos(-x**2/6.0)
		>>> f_fft = signal.resample(y, 100)
		>>> f_poly = signal.resample_poly(y, 100, 20)
		>>> xnew = np.linspace(0, 10, 100, endpoint=False)
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(xnew, f_fft, 'b.-', xnew, f_poly, 'r.-')
		>>> plt.plot(x, y, 'ko-')
		>>> plt.plot(10, y[0], 'bo', 10, 0., 'ro')  # boundaries
		>>> plt.legend(['resample', 'resamp_poly', 'data'], loc='best')
		>>> plt.show()
	**/
	static public function resample_poly(x:Dynamic, up:Dynamic, down:Dynamic, ?axis:Dynamic, ?window:Dynamic):Array<Dynamic>;
	/**
		Gives a new shape to an array without changing its data.
		
		Parameters
		----------
		a : array_like
		    Array to be reshaped.
		newshape : int or tuple of ints
		    The new shape should be compatible with the original shape. If
		    an integer, then the result will be a 1-D array of that length.
		    One shape dimension can be -1. In this case, the value is inferred
		    from the length of the array and remaining dimensions.
		order : {'C', 'F', 'A'}, optional
		    Read the elements of `a` using this index order, and place the elements
		    into the reshaped array using this index order.  'C' means to
		    read / write the elements using C-like index order, with the last axis
		    index changing fastest, back to the first axis index changing slowest.
		    'F' means to read / write the elements using Fortran-like index order,
		    with the first index changing fastest, and the last index changing
		    slowest.
		    Note that the 'C' and 'F' options take no account of the memory layout
		    of the underlying array, and only refer to the order of indexing.  'A'
		    means to read / write the elements in Fortran-like index order if `a`
		    is Fortran *contiguous* in memory, C-like order otherwise.
		
		Returns
		-------
		reshaped_array : ndarray
		    This will be a new view object if possible; otherwise, it will
		    be a copy.  Note there is no guarantee of the *memory layout* (C- or
		    Fortran- contiguous) of the returned array.
		
		See Also
		--------
		ndarray.reshape : Equivalent method.
		
		Notes
		-----
		It is not always possible to change the shape of an array without
		copying the data. If you want an error to be raise if the data is copied,
		you should assign the new shape to the shape attribute of the array::
		
		 >>> a = np.zeros((10, 2))
		 # A transpose make the array non-contiguous
		 >>> b = a.T
		 # Taking a view makes it possible to modify the shape without modifying
		 # the initial object.
		 >>> c = b.view()
		 >>> c.shape = (20)
		 AttributeError: incompatible shape for a non-contiguous array
		
		The `order` keyword gives the index ordering both for *fetching* the values
		from `a`, and then *placing* the values into the output array.
		For example, let's say you have an array:
		
		>>> a = np.arange(6).reshape((3, 2))
		>>> a
		array([[0, 1],
		       [2, 3],
		       [4, 5]])
		
		You can think of reshaping as first raveling the array (using the given
		index order), then inserting the elements from the raveled array into the
		new array using the same kind of index ordering as was used for the
		raveling.
		
		>>> np.reshape(a, (2, 3)) # C-like index ordering
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.reshape(np.ravel(a), (2, 3)) # equivalent to C ravel then C reshape
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.reshape(a, (2, 3), order='F') # Fortran-like index ordering
		array([[0, 4, 3],
		       [2, 1, 5]])
		>>> np.reshape(np.ravel(a, order='F'), (2, 3), order='F')
		array([[0, 4, 3],
		       [2, 1, 5]])
		
		Examples
		--------
		>>> a = np.array([[1,2,3], [4,5,6]])
		>>> np.reshape(a, 6)
		array([1, 2, 3, 4, 5, 6])
		>>> np.reshape(a, 6, order='F')
		array([1, 4, 2, 5, 3, 6])
		
		>>> np.reshape(a, (3,-1))       # the unspecified value is inferred to be 2
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
	**/
	static public function reshape(a:Dynamic, newshape:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Compute partial-fraction expansion of b(s) / a(s).
		
		If `M` is the degree of numerator `b` and `N` the degree of denominator
		`a`::
		
		          b(s)     b[0] s**(M) + b[1] s**(M-1) + ... + b[M]
		  H(s) = ------ = ------------------------------------------
		          a(s)     a[0] s**(N) + a[1] s**(N-1) + ... + a[N]
		
		then the partial-fraction expansion H(s) is defined as::
		
		           r[0]       r[1]             r[-1]
		       = -------- + -------- + ... + --------- + k(s)
		         (s-p[0])   (s-p[1])         (s-p[-1])
		
		If there are any repeated roots (closer together than `tol`), then H(s)
		has terms like::
		
		      r[i]      r[i+1]              r[i+n-1]
		    -------- + ----------- + ... + -----------
		    (s-p[i])  (s-p[i])**2          (s-p[i])**n
		
		This function is used for polynomials in positive powers of s or z,
		such as analog filters or digital filters in controls engineering.  For
		negative powers of z (typical for digital filters in DSP), use `residuez`.
		
		Parameters
		----------
		b : array_like
		    Numerator polynomial coefficients.
		a : array_like
		    Denominator polynomial coefficients.
		
		Returns
		-------
		r : ndarray
		    Residues.
		p : ndarray
		    Poles.
		k : ndarray
		    Coefficients of the direct polynomial term.
		
		See Also
		--------
		invres, residuez, numpy.poly, unique_roots
	**/
	static public function residue(b:Dynamic, a:Dynamic, ?tol:Dynamic, ?rtype:Dynamic):Dynamic;
	/**
		Compute partial-fraction expansion of b(z) / a(z).
		
		If `M` is the degree of numerator `b` and `N` the degree of denominator
		`a`::
		
		            b(z)     b[0] + b[1] z**(-1) + ... + b[M] z**(-M)
		    H(z) = ------ = ------------------------------------------
		            a(z)     a[0] + a[1] z**(-1) + ... + a[N] z**(-N)
		
		then the partial-fraction expansion H(z) is defined as::
		
		             r[0]                   r[-1]
		     = --------------- + ... + ---------------- + k[0] + k[1]z**(-1) ...
		       (1-p[0]z**(-1))         (1-p[-1]z**(-1))
		
		If there are any repeated roots (closer than `tol`), then the partial
		fraction expansion has terms like::
		
		         r[i]              r[i+1]                    r[i+n-1]
		    -------------- + ------------------ + ... + ------------------
		    (1-p[i]z**(-1))  (1-p[i]z**(-1))**2         (1-p[i]z**(-1))**n
		
		This function is used for polynomials in negative powers of z,
		such as digital filters in DSP.  For positive powers, use `residue`.
		
		Parameters
		----------
		b : array_like
		    Numerator polynomial coefficients.
		a : array_like
		    Denominator polynomial coefficients.
		
		Returns
		-------
		r : ndarray
		    Residues.
		p : ndarray
		    Poles.
		k : ndarray
		    Coefficients of the direct polynomial term.
		
		See also
		--------
		invresz, residue, unique_roots
	**/
	static public function residuez(b:Dynamic, a:Dynamic, ?tol:Dynamic, ?rtype:Dynamic):Dynamic;
	/**
		Return the roots of a polynomial with coefficients given in p.
		
		The values in the rank-1 array `p` are coefficients of a polynomial.
		If the length of `p` is n+1 then the polynomial is described by::
		
		  p[0] * x**n + p[1] * x**(n-1) + ... + p[n-1]*x + p[n]
		
		Parameters
		----------
		p : array_like
		    Rank-1 array of polynomial coefficients.
		
		Returns
		-------
		out : ndarray
		    An array containing the complex roots of the polynomial.
		
		Raises
		------
		ValueError
		    When `p` cannot be converted to a rank-1 array.
		
		See also
		--------
		poly : Find the coefficients of a polynomial with a given sequence
		       of roots.
		polyval : Compute polynomial values.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		The algorithm relies on computing the eigenvalues of the
		companion matrix [1]_.
		
		References
		----------
		.. [1] R. A. Horn & C. R. Johnson, *Matrix Analysis*.  Cambridge, UK:
		    Cambridge University Press, 1999, pp. 146-7.
		
		Examples
		--------
		>>> coeff = [3.2, 2, 1]
		>>> np.roots(coeff)
		array([-0.3125+0.46351241j, -0.3125-0.46351241j])
	**/
	static public function roots(p:Dynamic):Dynamic;
	/**
		Return a sorted copy of an array.
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		axis : int or None, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    Sorting algorithm. Default is 'quicksort'.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
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
		partition : Partial sort.
		
		Notes
		-----
		The various sorting algorithms are characterized by their average speed,
		worst case performance, work space size, and whether they are stable. A
		stable sort keeps items with the same key in the same relative
		order. The three available algorithms have the following
		properties:
		
		=========== ======= ============= ============ =======
		   kind      speed   worst case    work space  stable
		=========== ======= ============= ============ =======
		'quicksort'    1     O(n^2)            0          no
		'mergesort'    2     O(n*log(n))      ~n/2        yes
		'heapsort'     3     O(n*log(n))       0          no
		=========== ======= ============= ============ =======
		
		All the sort algorithms make temporary copies of the data when
		sorting along any but the last axis.  Consequently, sorting along
		the last axis is faster and uses less space than sorting along
		any other axis.
		
		The sort order for complex numbers is lexicographic. If both the real
		and imaginary parts are non-nan then the order is determined by the
		real parts except when they are equal, in which case the order is
		determined by the imaginary parts.
		
		Previous to numpy 1.4.0 sorting real and complex arrays containing nan
		values led to undefined behaviour. In numpy versions >= 1.4.0 nan
		values are sorted to the end. The extended sort order is:
		
		  * Real: [R, nan]
		  * Complex: [R + Rj, R + nanj, nan + Rj, nan + nanj]
		
		where R is a non-nan real value. Complex values with the same nan
		placements are sorted according to the non-nan part if it exists.
		Non-nan values are sorted as before.
		
		Examples
		--------
		>>> a = np.array([[1,4],[3,1]])
		>>> np.sort(a)                # sort along the last axis
		array([[1, 4],
		       [1, 3]])
		>>> np.sort(a, axis=None)     # sort the flattened array
		array([1, 1, 3, 4])
		>>> np.sort(a, axis=0)        # sort along the first axis
		array([[1, 1],
		       [3, 4]])
		
		Use the `order` keyword to specify a field to use when sorting a
		structured array:
		
		>>> dtype = [('name', 'S10'), ('height', float), ('age', int)]
		>>> values = [('Arthur', 1.8, 41), ('Lancelot', 1.9, 38),
		...           ('Galahad', 1.7, 38)]
		>>> a = np.array(values, dtype=dtype)       # create a structured array
		>>> np.sort(a, order='height')                        # doctest: +SKIP
		array([('Galahad', 1.7, 38), ('Arthur', 1.8, 41),
		       ('Lancelot', 1.8999999999999999, 38)],
		      dtype=[('name', '|S10'), ('height', '<f8'), ('age', '<i4')])
		
		Sort by age, then height if ages are equal:
		
		>>> np.sort(a, order=['age', 'height'])               # doctest: +SKIP
		array([('Galahad', 1.7, 38), ('Lancelot', 1.8999999999999999, 38),
		       ('Arthur', 1.8, 41)],
		      dtype=[('name', '|S10'), ('height', '<f8'), ('age', '<i4')])
	**/
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Filter data along one dimension using cascaded second-order sections
		
		Filter a data sequence, `x`, using a digital IIR filter defined by
		`sos`. This is implemented by performing `lfilter` for each
		second-order section.  See `lfilter` for details.
		
		Parameters
		----------
		sos : array_like
		    Array of second-order filter coefficients, must have shape
		    ``(n_sections, 6)``. Each row corresponds to a second-order
		    section, with the first three columns providing the numerator
		    coefficients and the last three providing the denominator
		    coefficients.
		x : array_like
		    An N-dimensional input array.
		axis : int, optional
		    The axis of the input data array along which to apply the
		    linear filter. The filter is applied to each subarray along
		    this axis.  Default is -1.
		zi : array_like, optional
		    Initial conditions for the cascaded filter delays.  It is a (at
		    least 2D) vector of shape ``(n_sections, ..., 2, ...)``, where
		    ``..., 2, ...`` denotes the shape of `x`, but with ``x.shape[axis]``
		    replaced by 2.  If `zi` is None or is not given then initial rest
		    (i.e. all zeros) is assumed.
		    Note that these initial conditions are *not* the same as the initial
		    conditions given by `lfiltic` or `lfilter_zi`.
		
		Returns
		-------
		y : ndarray
		    The output of the digital filter.
		zf : ndarray, optional
		    If `zi` is None, this is not returned, otherwise, `zf` holds the
		    final filter delay values.
		
		See Also
		--------
		zpk2sos, sos2zpk, sosfilt_zi, sosfiltfilt
		
		Notes
		-----
		The filter function is implemented as a series of second-order filters
		with direct-form II transposed structure. It is designed to minimize
		numerical precision errors for high-order filters.
		
		.. versionadded:: 0.16.0
		
		Examples
		--------
		Plot a 13th-order filter's impulse response using both `lfilter` and
		`sosfilt`, showing the instability that results from trying to do a
		13th-order filter in a single stage (the numerical error pushes some poles
		outside of the unit circle):
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy import signal
		>>> b, a = signal.ellip(13, 0.009, 80, 0.05, output='ba')
		>>> sos = signal.ellip(13, 0.009, 80, 0.05, output='sos')
		>>> x = np.zeros(700)
		>>> x[0] = 1.
		>>> y_tf = signal.lfilter(b, a, x)
		>>> y_sos = signal.sosfilt(sos, x)
		>>> plt.plot(y_tf, 'r', label='TF')
		>>> plt.plot(y_sos, 'k', label='SOS')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function sosfilt(sos:Dynamic, x:Dynamic, ?axis:Dynamic, ?zi:Dynamic):Dynamic;
	/**
		Compute an initial state `zi` for the sosfilt function that corresponds
		to the steady state of the step response.
		
		A typical use of this function is to set the initial state so that the
		output of the filter starts at the same value as the first element of
		the signal to be filtered.
		
		Parameters
		----------
		sos : array_like
		    Array of second-order filter coefficients, must have shape
		    ``(n_sections, 6)``. See `sosfilt` for the SOS filter format
		    specification.
		
		Returns
		-------
		zi : ndarray
		    Initial conditions suitable for use with ``sosfilt``, shape
		    ``(n_sections, 2)``.
		
		See Also
		--------
		sosfilt, zpk2sos
		
		Notes
		-----
		.. versionadded:: 0.16.0
		
		Examples
		--------
		Filter a rectangular pulse that begins at time 0, with and without
		the use of the `zi` argument of `scipy.signal.sosfilt`.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> sos = signal.butter(9, 0.125, output='sos')
		>>> zi = signal.sosfilt_zi(sos)
		>>> x = (np.arange(250) < 100).astype(int)
		>>> f1 = signal.sosfilt(sos, x)
		>>> f2, zo = signal.sosfilt(sos, x, zi=zi)
		
		>>> plt.plot(x, 'k--', label='x')
		>>> plt.plot(f1, 'b', alpha=0.5, linewidth=2, label='filtered')
		>>> plt.plot(f2, 'g', alpha=0.25, linewidth=4, label='filtered with zi')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function sosfilt_zi(sos:Dynamic):Dynamic;
	/**
		A forward-backward filter using cascaded second-order sections.
		
		See `filtfilt` for more complete information about this method.
		
		Parameters
		----------
		sos : array_like
		    Array of second-order filter coefficients, must have shape
		    ``(n_sections, 6)``. Each row corresponds to a second-order
		    section, with the first three columns providing the numerator
		    coefficients and the last three providing the denominator
		    coefficients.
		x : array_like
		    The array of data to be filtered.
		axis : int, optional
		    The axis of `x` to which the filter is applied.
		    Default is -1.
		padtype : str or None, optional
		    Must be 'odd', 'even', 'constant', or None.  This determines the
		    type of extension to use for the padded signal to which the filter
		    is applied.  If `padtype` is None, no padding is used.  The default
		    is 'odd'.
		padlen : int or None, optional
		    The number of elements by which to extend `x` at both ends of
		    `axis` before applying the filter.  This value must be less than
		    ``x.shape[axis] - 1``.  ``padlen=0`` implies no padding.
		    The default value is::
		
		        3 * (2 * len(sos) + 1 - min((sos[:, 2] == 0).sum(),
		                                    (sos[:, 5] == 0).sum()))
		
		    The extra subtraction at the end attempts to compensate for poles
		    and zeros at the origin (e.g. for odd-order filters) to yield
		    equivalent estimates of `padlen` to those of `filtfilt` for
		    second-order section filters built with `scipy.signal` functions.
		
		Returns
		-------
		y : ndarray
		    The filtered output with the same shape as `x`.
		
		See Also
		--------
		filtfilt, sosfilt, sosfilt_zi
		
		Notes
		-----
		.. versionadded:: 0.18.0
	**/
	static public function sosfiltfilt(sos:Dynamic, x:Dynamic, ?axis:Dynamic, ?padtype:Dynamic, ?padlen:Dynamic):Dynamic;
	/**
		Sum of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Elements to sum.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a sum is performed.  The default,
		    axis=None, will sum all of the elements of the input array.  If
		    axis is negative it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, a sum is performed on all of the axes
		    specified in the tuple instead of a single axis or all the axes as
		    before.
		dtype : dtype, optional
		    The type of the returned array and of the accumulator in which the
		    elements are summed.  The dtype of `a` is used by default unless `a`
		    has an integer dtype of less precision than the default platform
		    integer.  In that case, if `a` is signed then the platform integer
		    is used while if `a` is unsigned then an unsigned integer of the
		    same precision as the platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `sum` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-classes `sum` method does not implement `keepdims` any
		    exceptions will be raised.
		
		Returns
		-------
		sum_along_axis : ndarray
		    An array with the same shape as `a`, with the specified
		    axis removed.   If `a` is a 0-d array, or if `axis` is None, a scalar
		    is returned.  If an output array is specified, a reference to
		    `out` is returned.
		
		See Also
		--------
		ndarray.sum : Equivalent method.
		
		cumsum : Cumulative sum of array elements.
		
		trapz : Integration of array values using the composite trapezoidal rule.
		
		mean, average
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		The sum of an empty array is the neutral element 0:
		
		>>> np.sum([])
		0.0
		
		Examples
		--------
		>>> np.sum([0.5, 1.5])
		2.0
		>>> np.sum([0.5, 0.7, 0.2, 1.5], dtype=np.int32)
		1
		>>> np.sum([[0, 1], [0, 5]])
		6
		>>> np.sum([[0, 1], [0, 5]], axis=0)
		array([0, 6])
		>>> np.sum([[0, 1], [0, 5]], axis=1)
		array([1, 5])
		
		If the accumulator is too small, overflow occurs:
		
		>>> np.ones(128, dtype=np.int8).sum(dtype=np.int8)
		-128
	**/
	static public function sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Take elements from an array along an axis.
		
		This function does the same thing as "fancy" indexing (indexing arrays
		using arrays); however, it can be easier to use if you need elements
		along a given axis.
		
		Parameters
		----------
		a : array_like
		    The source array.
		indices : array_like
		    The indices of the values to extract.
		
		    .. versionadded:: 1.8.0
		
		    Also allow scalars for indices.
		axis : int, optional
		    The axis over which to select values. By default, the flattened
		    input array is used.
		out : ndarray, optional
		    If provided, the result will be placed in this array. It should
		    be of the appropriate shape and dtype.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    'clip' mode means that all indices that are too large are replaced
		    by the index that addresses the last element along that axis. Note
		    that this disables indexing with negative numbers.
		
		Returns
		-------
		subarray : ndarray
		    The returned array has the same type as `a`.
		
		See Also
		--------
		compress : Take elements using a boolean mask
		ndarray.take : equivalent method
		
		Examples
		--------
		>>> a = [4, 3, 5, 7, 6, 8]
		>>> indices = [0, 1, 4]
		>>> np.take(a, indices)
		array([4, 3, 6])
		
		In this example if `a` is an ndarray, "fancy" indexing can be used.
		
		>>> a = np.array(a)
		>>> a[indices]
		array([4, 3, 6])
		
		If `indices` is not one dimensional, the output also has these dimensions.
		
		>>> np.take(a, [[0, 1], [2, 3]])
		array([[4, 3],
		       [5, 7]])
	**/
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Permute the dimensions of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axes : list of ints, optional
		    By default, reverse the dimensions, otherwise permute the axes
		    according to the values given.
		
		Returns
		-------
		p : ndarray
		    `a` with its axes permuted.  A view is returned whenever
		    possible.
		
		See Also
		--------
		moveaxis
		argsort
		
		Notes
		-----
		Use `transpose(a, argsort(axes))` to invert the transposition of tensors
		when using the `axes` keyword argument.
		
		Transposing a 1-D array returns an unchanged view of the original array.
		
		Examples
		--------
		>>> x = np.arange(4).reshape((2,2))
		>>> x
		array([[0, 1],
		       [2, 3]])
		
		>>> np.transpose(x)
		array([[0, 2],
		       [1, 3]])
		
		>>> x = np.ones((1, 2, 3))
		>>> np.transpose(x, (1, 0, 2)).shape
		(2, 1, 3)
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Find the unique elements of an array.
		
		Returns the sorted unique elements of an array. There are three optional
		outputs in addition to the unique elements: the indices of the input array
		that give the unique values, the indices of the unique array that
		reconstruct the input array, and the number of times each unique value
		comes up in the input array.
		
		Parameters
		----------
		ar : array_like
		    Input array. This will be flattened if it is not already 1-D.
		return_index : bool, optional
		    If True, also return the indices of `ar` that result in the unique
		    array.
		return_inverse : bool, optional
		    If True, also return the indices of the unique array that can be used
		    to reconstruct `ar`.
		return_counts : bool, optional
		    If True, also return the number of times each unique value comes up
		    in `ar`.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		unique : ndarray
		    The sorted unique values.
		unique_indices : ndarray, optional
		    The indices of the first occurrences of the unique values in the
		    (flattened) original array. Only provided if `return_index` is True.
		unique_inverse : ndarray, optional
		    The indices to reconstruct the (flattened) original array from the
		    unique array. Only provided if `return_inverse` is True.
		unique_counts : ndarray, optional
		    The number of times each of the unique values comes up in the
		    original array. Only provided if `return_counts` is True.
		
		    .. versionadded:: 1.9.0
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> np.unique([1, 1, 2, 2, 3, 3])
		array([1, 2, 3])
		>>> a = np.array([[1, 1], [2, 3]])
		>>> np.unique(a)
		array([1, 2, 3])
		
		Return the indices of the original array that give the unique values:
		
		>>> a = np.array(['a', 'b', 'b', 'c', 'a'])
		>>> u, indices = np.unique(a, return_index=True)
		>>> u
		array(['a', 'b', 'c'],
		       dtype='|S1')
		>>> indices
		array([0, 1, 3])
		>>> a[indices]
		array(['a', 'b', 'c'],
		       dtype='|S1')
		
		Reconstruct the input array from the unique values:
		
		>>> a = np.array([1, 2, 6, 4, 2, 3, 2])
		>>> u, indices = np.unique(a, return_inverse=True)
		>>> u
		array([1, 2, 3, 4, 6])
		>>> indices
		array([0, 1, 4, 3, 1, 2, 1])
		>>> u[indices]
		array([1, 2, 6, 4, 2, 3, 2])
	**/
	static public function unique(ar:Dynamic, ?return_index:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic):Dynamic;
	/**
		Determine unique roots and their multiplicities from a list of roots.
		
		Parameters
		----------
		p : array_like
		    The list of roots.
		tol : float, optional
		    The tolerance for two roots to be considered equal. Default is 1e-3.
		rtype : {'max', 'min, 'avg'}, optional
		    How to determine the returned root if multiple roots are within
		    `tol` of each other.
		
		      - 'max': pick the maximum of those roots.
		      - 'min': pick the minimum of those roots.
		      - 'avg': take the average of those roots.
		
		Returns
		-------
		pout : ndarray
		    The list of unique roots, sorted from low to high.
		mult : ndarray
		    The multiplicity of each root.
		
		Notes
		-----
		This utility function is not specific to roots but can be used for any
		sequence of values for which uniqueness and multiplicity has to be
		determined. For a more general routine, see `numpy.unique`.
		
		Examples
		--------
		>>> from scipy import signal
		>>> vals = [0, 1.3, 1.31, 2.8, 1.25, 2.2, 10.3]
		>>> uniq, mult = signal.unique_roots(vals, tol=2e-2, rtype='avg')
		
		Check which roots have multiplicity larger than 1:
		
		>>> uniq[mult > 1]
		array([ 1.305])
	**/
	static public function unique_roots(p:Dynamic, ?tol:Dynamic, ?rtype:Dynamic):Dynamic;
	/**
		Upsample, FIR filter, and downsample
		
		Parameters
		----------
		h : array_like
		    1-dimensional FIR (finite-impulse response) filter coefficients.
		x : array_like
		    Input signal array.
		up : int, optional
		    Upsampling rate. Default is 1.
		down : int, optional
		    Downsampling rate. Default is 1.
		axis : int, optional
		    The axis of the input data array along which to apply the
		    linear filter. The filter is applied to each subarray along
		    this axis. Default is -1.
		
		Returns
		-------
		y : ndarray
		    The output signal array. Dimensions will be the same as `x` except
		    for along `axis`, which will change size according to the `h`,
		    `up`,  and `down` parameters.
		
		Notes
		-----
		The algorithm is an implementation of the block diagram shown on page 129
		of the Vaidyanathan text [1]_ (Figure 4.3-8d).
		
		.. [1] P. P. Vaidyanathan, Multirate Systems and Filter Banks,
		   Prentice Hall, 1993.
		
		The direct approach of upsampling by factor of P with zero insertion,
		FIR filtering of length ``N``, and downsampling by factor of Q is
		O(N*Q) per output sample. The polyphase implementation used here is
		O(N/P).
		
		.. versionadded:: 0.18
		
		Examples
		--------
		Simple operations:
		
		>>> from scipy.signal import upfirdn
		>>> upfirdn([1, 1, 1], [1, 1, 1])   # FIR filter
		array([ 1.,  2.,  3.,  2.,  1.])
		>>> upfirdn([1], [1, 2, 3], 3)  # upsampling with zeros insertion
		array([ 1.,  0.,  0.,  2.,  0.,  0.,  3.,  0.,  0.])
		>>> upfirdn([1, 1, 1], [1, 2, 3], 3)  # upsampling with sample-and-hold
		array([ 1.,  1.,  1.,  2.,  2.,  2.,  3.,  3.,  3.])
		>>> upfirdn([.5, 1, .5], [1, 1, 1], 2)  # linear interpolation
		array([ 0.5,  1. ,  1. ,  1. ,  1. ,  1. ,  0.5,  0. ])
		>>> upfirdn([1], np.arange(10), 1, 3)  # decimation by 3
		array([ 0.,  3.,  6.,  9.])
		>>> upfirdn([.5, 1, .5], np.arange(10), 2, 3)  # linear interp, rate 2/3
		array([ 0. ,  1. ,  2.5,  4. ,  5.5,  7. ,  8.5,  0. ])
		
		Apply a single filter to multiple signals:
		
		>>> x = np.reshape(np.arange(8), (4, 2))
		>>> x
		array([[0, 1],
		       [2, 3],
		       [4, 5],
		       [6, 7]])
		
		Apply along the last dimension of ``x``:
		
		>>> h = [1, 1]
		>>> upfirdn(h, x, 2)
		array([[ 0.,  0.,  1.,  1.],
		       [ 2.,  2.,  3.,  3.],
		       [ 4.,  4.,  5.,  5.],
		       [ 6.,  6.,  7.,  7.]])
		
		Apply along the 0th dimension of ``x``:
		
		>>> upfirdn(h, x, 2, axis=0)
		array([[ 0.,  1.],
		       [ 0.,  1.],
		       [ 2.,  3.],
		       [ 2.,  3.],
		       [ 4.,  5.],
		       [ 4.,  5.],
		       [ 6.,  7.],
		       [ 6.,  7.]])
	**/
	static public function upfirdn(h:Dynamic, x:Dynamic, ?up:Dynamic, ?down:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Determine the vector strength of the events corresponding to the given
		period.
		
		The vector strength is a measure of phase synchrony, how well the
		timing of the events is synchronized to a single period of a periodic
		signal.
		
		If multiple periods are used, calculate the vector strength of each.
		This is called the "resonating vector strength".
		
		Parameters
		----------
		events : 1D array_like
		    An array of time points containing the timing of the events.
		period : float or array_like
		    The period of the signal that the events should synchronize to.
		    The period is in the same units as `events`.  It can also be an array
		    of periods, in which case the outputs are arrays of the same length.
		
		Returns
		-------
		strength : float or 1D array
		    The strength of the synchronization.  1.0 is perfect synchronization
		    and 0.0 is no synchronization.  If `period` is an array, this is also
		    an array with each element containing the vector strength at the
		    corresponding period.
		phase : float or array
		    The phase that the events are most strongly synchronized to in radians.
		    If `period` is an array, this is also an array with each element
		    containing the phase for the corresponding period.
		
		References
		----------
		van Hemmen, JL, Longtin, A, and Vollmayr, AN. Testing resonating vector
		    strength: Auditory system, electric fish, and noise.
		    Chaos 21, 047508 (2011);
		    doi: 10.1063/1.3670512
		van Hemmen, JL.  Vector strength after Goldberg, Brown, and von Mises:
		    biological and mathematical perspectives.  Biol Cybern.
		    2013 Aug;107(4):385-96. doi: 10.1007/s00422-013-0561-7.
		van Hemmen, JL and Vollmayr, AN.  Resonating vector strength: what happens
		    when we vary the "probing" frequency while keeping the spike times
		    fixed.  Biol Cybern. 2013 Aug;107(4):491-94.
		    doi: 10.1007/s00422-013-0560-8
	**/
	static public function vectorstrength(events:Dynamic, period:Dynamic):Dynamic;
	/**
		where(condition, [x, y])
		
		Return elements, either from `x` or `y`, depending on `condition`.
		
		If only `condition` is given, return ``condition.nonzero()``.
		
		Parameters
		----------
		condition : array_like, bool
		    When True, yield `x`, otherwise yield `y`.
		x, y : array_like, optional
		    Values from which to choose. `x` and `y` need to have the same
		    shape as `condition`.
		
		Returns
		-------
		out : ndarray or tuple of ndarrays
		    If both `x` and `y` are specified, the output array contains
		    elements of `x` where `condition` is True, and elements from
		    `y` elsewhere.
		
		    If only `condition` is given, return the tuple
		    ``condition.nonzero()``, the indices where `condition` is True.
		
		See Also
		--------
		nonzero, choose
		
		Notes
		-----
		If `x` and `y` are given and input arrays are 1-D, `where` is
		equivalent to::
		
		    [xv if c else yv for (c,xv,yv) in zip(condition,x,y)]
		
		Examples
		--------
		>>> np.where([[True, False], [True, True]],
		...          [[1, 2], [3, 4]],
		...          [[9, 8], [7, 6]])
		array([[1, 8],
		       [3, 4]])
		
		>>> np.where([[0, 1], [1, 0]])
		(array([0, 1]), array([1, 0]))
		
		>>> x = np.arange(9.).reshape(3, 3)
		>>> np.where( x > 5 )
		(array([2, 2, 2]), array([0, 1, 2]))
		>>> x[np.where( x > 3.0 )]               # Note: result is 1D.
		array([ 4.,  5.,  6.,  7.,  8.])
		>>> np.where(x < 5, x, -1)               # Note: broadcasting.
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -1.],
		       [-1., -1., -1.]])
		
		Find the indices of elements of `x` that are in `goodvalues`.
		
		>>> goodvalues = [3, 4, 7]
		>>> ix = np.in1d(x.ravel(), goodvalues).reshape(x.shape)
		>>> ix
		array([[False, False, False],
		       [ True,  True, False],
		       [False,  True, False]], dtype=bool)
		>>> np.where(ix)
		(array([1, 1, 2]), array([0, 1, 1]))
	**/
	static public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Perform a Wiener filter on an N-dimensional array.
		
		Apply a Wiener filter to the N-dimensional array `im`.
		
		Parameters
		----------
		im : ndarray
		    An N-dimensional array.
		mysize : int or array_like, optional
		    A scalar or an N-length list giving the size of the Wiener filter
		    window in each dimension.  Elements of mysize should be odd.
		    If mysize is a scalar, then this scalar is used as the size
		    in each dimension.
		noise : float, optional
		    The noise-power to use. If None, then noise is estimated as the
		    average of the local variance of the input.
		
		Returns
		-------
		out : ndarray
		    Wiener filtered result with the same shape as `im`.
	**/
	static public function wiener(im:Dynamic, ?mysize:Dynamic, ?noise:Dynamic):Dynamic;
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
	static public function zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an array of zeros with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of
		    the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the same shape and type as `a`.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		zeros : Return a new array setting values to zero.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> x = x.reshape((2, 3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.zeros_like(x)
		array([[0, 0, 0],
		       [0, 0, 0]])
		
		>>> y = np.arange(3, dtype=np.float)
		>>> y
		array([ 0.,  1.,  2.])
		>>> np.zeros_like(y)
		array([ 0.,  0.,  0.])
	**/
	static public function zeros_like(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic):Dynamic;
}