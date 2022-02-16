/* This file is generated, do not edit! */
package scipy.signal.signaltools;
@:pythonImport("scipy.signal.signaltools") extern class Signaltools_Module {
	/**
		Reverse the 1-D slices of `a` along axis `axis`.
		
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
		slice(start, stop, step). This implies axis_slice() does not
		handle its arguments the exactly the same as indexing. To select
		a single index k, for example, use
		    axis_slice(a, start=k, stop=k+1)
		In this case, the length of the axis 'axis' in the result will
		be 1; the trivial dimension is not removed. (Use numpy.squeeze()
		to remove trivial axes.)
	**/
	static public function axis_slice(a:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?axis:Dynamic):Dynamic;
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
		
		    For digital filters, `Wn` are in the same units as `fs`. By default,
		    `fs` is 2 half-cycles/sample, so these are normalized from 0 to 1,
		    where 1 is the Nyquist frequency. (`Wn` is thus in
		    half-cycles / sample.)
		
		    For analog filters, `Wn` is an angular frequency (e.g., rad/s).
		btype : {'lowpass', 'highpass', 'bandpass', 'bandstop'}, optional
		    The type of filter.  Default is 'lowpass'.
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		output : {'ba', 'zpk', 'sos'}, optional
		    Type of output:  numerator/denominator ('ba'), pole-zero ('zpk'), or
		    second-order sections ('sos'). Default is 'ba' for backwards
		    compatibility, but 'sos' should be used for general-purpose filtering.
		fs : float, optional
		    The sampling frequency of the digital system.
		
		    .. versionadded:: 1.2.0
		
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
		5th-order filter has 3 maxima and 2 minima). Consequently, the DC gain is
		unity for odd-order filters, or -rp dB for even-order filters.
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Design an analog filter and plot its frequency response, showing the
		critical points:
		
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
		
		Generate a signal made up of 10 Hz and 20 Hz, sampled at 1 kHz
		
		>>> t = np.linspace(0, 1, 1000, False)  # 1 second
		>>> sig = np.sin(2*np.pi*10*t) + np.sin(2*np.pi*20*t)
		>>> fig, (ax1, ax2) = plt.subplots(2, 1, sharex=True)
		>>> ax1.plot(t, sig)
		>>> ax1.set_title('10 Hz and 20 Hz sinusoids')
		>>> ax1.axis([0, 1, -2, 2])
		
		Design a digital high-pass filter at 15 Hz to remove the 10 Hz tone, and
		apply it to the signal. (It's recommended to use second-order sections
		format when filtering, to avoid numerical error with transfer function
		(``ba``) format):
		
		>>> sos = signal.cheby1(10, 1, 15, 'hp', fs=1000, output='sos')
		>>> filtered = signal.sosfilt(sos, sig)
		>>> ax2.plot(t, filtered)
		>>> ax2.set_title('After 15 Hz high-pass filter')
		>>> ax2.axis([0, 1, -2, 2])
		>>> ax2.set_xlabel('Time [seconds]')
		>>> plt.tight_layout()
		>>> plt.show()
	**/
	static public function cheby1(N:Dynamic, rp:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic, ?fs:Dynamic):Dynamic;
	/**
		Find the fastest convolution/correlation method.
		
		This primarily exists to be called during the ``method='auto'`` option in
		`convolve` and `correlate`. It can also be used to determine the value of
		``method`` for many different convolutions of the same dtype/shape.
		In addition, it supports timing the convolution to adapt the value of
		``method`` to a particular set of inputs and/or hardware.
		
		Parameters
		----------
		in1 : array_like
		    The first argument passed into the convolution function.
		in2 : array_like
		    The second argument passed into the convolution function.
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
		measure : bool, optional
		    If True, run and time the convolution of `in1` and `in2` with both
		    methods and return the fastest. If False (default), predict the fastest
		    method using precomputed values.
		
		Returns
		-------
		method : str
		    A string indicating which convolution method is fastest, either
		    'direct' or 'fft'
		times : dict, optional
		    A dictionary containing the times (in seconds) needed for each method.
		    This value is only returned if ``measure=True``.
		
		See Also
		--------
		convolve
		correlate
		
		Notes
		-----
		Generally, this method is 99% accurate for 2D signals and 85% accurate
		for 1D signals for randomly chosen input sizes. For precision, use
		``measure=True`` to find the fastest method by timing the convolution.
		This can be used to avoid the minimal overhead of finding the fastest
		``method`` later, or to adapt the value of ``method`` to a particular set
		of inputs.
		
		Experiments were run on an Amazon EC2 r5a.2xlarge machine to test this
		function. These experiments measured the ratio between the time required
		when using ``method='auto'`` and the time required for the fastest method
		(i.e., ``ratio = time_auto / min(time_fft, time_direct)``). In these
		experiments, we found:
		
		* There is a 95% chance of this ratio being less than 1.5 for 1D signals
		  and a 99% chance of being less than 2.5 for 2D signals.
		* The ratio was always less than 2.5/5 for 1D/2D signals respectively.
		* This function is most inaccurate for 1D convolutions that take between 1
		  and 10 milliseconds with ``method='direct'``. A good proxy for this
		  (at least in our experiments) is ``1e6 <= in1.size * in2.size <= 1e7``.
		
		The 2D results almost certainly generalize to 3D/4D/etc because the
		implementation is the same (the 1D implementation is different).
		
		All the numbers above are specific to the EC2 machine. However, we did find
		that this function generalizes fairly decently across hardware. The speed
		tests were of similar quality (and even slightly better) than the same
		tests performed on the machine to tune this function's numbers (a mid-2014
		15-inch MacBook Pro with 16GB RAM and a 2.5GHz Intel i7 processor).
		
		There are cases when `fftconvolve` supports the inputs but this function
		returns `direct` (e.g., to protect against floating point integer
		precision).
		
		.. versionadded:: 0.19
		
		Examples
		--------
		Estimate the fastest method for a given input:
		
		>>> from scipy import signal
		>>> rng = np.random.default_rng()
		>>> img = rng.random((32, 32))
		>>> filter = rng.random((8, 8))
		>>> method = signal.choose_conv_method(img, filter, mode='same')
		>>> method
		'fft'
		
		This can then be applied to other arrays of the same dtype and shape:
		
		>>> img2 = rng.random((32, 32))
		>>> filter2 = rng.random((8, 8))
		>>> corr2 = signal.correlate(img2, filter2, mode='same', method=method)
		>>> conv2 = signal.convolve(img2, filter2, mode='same', method=method)
		
		The output of this function (``method``) works with `correlate` and
		`convolve`.
	**/
	static public function choose_conv_method(in1:Dynamic, in2:Dynamic, ?mode:Dynamic, ?measure:Dynamic):String;
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
		
		Examples
		--------
		>>> from scipy import signal
		>>> vals = [1, 4, 1+1.j, 3]
		>>> p_sorted, indx = signal.cmplx_sort(vals)
		>>> p_sorted
		array([1.+0.j, 1.+1.j, 3.+0.j, 4.+0.j])
		>>> indx
		array([0, 2, 3, 1])
	**/
	static public function cmplx_sort(p:Dynamic):Dynamic;
	/**
		Constant extension at the boundaries of an array
		
		Generate a new ndarray that is a constant extension of `x` along an axis.
		
		The extension repeats the values at the first and last element of
		the axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend `x` at each end of the axis.
		axis : int, optional
		    The axis along which to extend `x`. Default is -1.
		
		Examples
		--------
		>>> from scipy.signal._arraytools import const_ext
		>>> a = np.array([[1, 2, 3, 4, 5], [0, 1, 4, 9, 16]])
		>>> const_ext(a, 2)
		array([[ 1,  1,  1,  2,  3,  4,  5,  5,  5],
		       [ 0,  0,  0,  1,  4,  9, 16, 16, 16]])
		
		Constant extension continues with the same values as the endpoints of the
		array:
		
		>>> t = np.linspace(0, 1.5, 100)
		>>> a = 0.9 * np.sin(2 * np.pi * t**2)
		>>> b = const_ext(a, 40)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(arange(-40, 140), b, 'b', lw=1, label='constant extension')
		>>> plt.plot(arange(100), a, 'r', lw=2, label='original')
		>>> plt.legend(loc='best')
		>>> plt.show()
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
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear convolution
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding. In 'valid' mode, either `in1` or `in2`
		       must be at least as large as the other in every dimension.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		method : str {'auto', 'direct', 'fft'}, optional
		    A string indicating which method to use to calculate the convolution.
		
		    ``direct``
		       The convolution is determined directly from sums, the definition of
		       convolution.
		    ``fft``
		       The Fourier Transform is used to perform the convolution by calling
		       `fftconvolve`.
		    ``auto``
		       Automatically chooses direct or Fourier method based on an estimate
		       of which is faster (default).  See Notes for more detail.
		
		       .. versionadded:: 0.19.0
		
		Returns
		-------
		convolve : array
		    An N-dimensional array containing a subset of the discrete linear
		    convolution of `in1` with `in2`.
		
		See Also
		--------
		numpy.polymul : performs polynomial multiplication (same operation, but
		                also accepts poly1d objects)
		choose_conv_method : chooses the fastest appropriate convolution method
		fftconvolve : Always uses the FFT method.
		oaconvolve : Uses the overlap-add method to do convolution, which is
		             generally faster when the input arrays are large and
		             significantly different in size.
		
		Notes
		-----
		By default, `convolve` and `correlate` use ``method='auto'``, which calls
		`choose_conv_method` to choose the fastest method using pre-computed
		values (`choose_conv_method` can also measure real-world timing with a
		keyword argument). Because `fftconvolve` relies on floating point numbers,
		there are certain constraints that may force `method=direct` (more detail
		in `choose_conv_method` docstring).
		
		Examples
		--------
		Smooth a square pulse using a Hann window:
		
		>>> from scipy import signal
		>>> sig = np.repeat([0., 1., 0.], 100)
		>>> win = signal.windows.hann(50)
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
	static public function convolve(in1:Dynamic, in2:Dynamic, ?mode:Dynamic, ?method:Dynamic):Array<Dynamic>;
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
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear convolution
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding. In 'valid' mode, either `in1` or `in2`
		       must be at least as large as the other in every dimension.
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
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear cross-correlation
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding. In 'valid' mode, either `in1` or `in2`
		       must be at least as large as the other in every dimension.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		method : str {'auto', 'direct', 'fft'}, optional
		    A string indicating which method to use to calculate the correlation.
		
		    ``direct``
		       The correlation is determined directly from sums, the definition of
		       correlation.
		    ``fft``
		       The Fast Fourier Transform is used to perform the correlation more
		       quickly (only available for numerical arrays.)
		    ``auto``
		       Automatically chooses direct or Fourier method based on an estimate
		       of which is faster (default).  See `convolve` Notes for more detail.
		
		       .. versionadded:: 0.19.0
		
		Returns
		-------
		correlate : array
		    An N-dimensional array containing a subset of the discrete linear
		    cross-correlation of `in1` with `in2`.
		
		See Also
		--------
		choose_conv_method : contains more documentation on `method`.
		correlation_lags : calculates the lag / displacement indices array for 1D
		    cross-correlation.
		
		Notes
		-----
		The correlation z of two d-dimensional arrays x and y is defined as::
		
		    z[...,k,...] = sum[..., i_l, ...] x[..., i_l,...] * conj(y[..., i_l - k,...])
		
		This way, if x and y are 1-D arrays and ``z = correlate(x, y, 'full')``
		then
		
		.. math::
		
		      z[k] = (x * y)(k - N + 1)
		           = \sum_{l=0}^{||x||-1}x_l y_{l-k+N-1}^{*}
		
		for :math:`k = 0, 1, ..., ||x|| + ||y|| - 2`
		
		where :math:`||x||` is the length of ``x``, :math:`N = \max(||x||,||y||)`,
		and :math:`y_m` is 0 when m is outside the range of y.
		
		``method='fft'`` only works for numerical arrays as it relies on
		`fftconvolve`. In certain cases (i.e., arrays of objects or when
		rounding integers can lose precision), ``method='direct'`` is always used.
		
		When using "same" mode with even-length inputs, the outputs of `correlate`
		and `correlate2d` differ: There is a 1-index offset between them.
		
		Examples
		--------
		Implement a matched filter using cross-correlation, to recover a signal
		that has passed through a noisy channel.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.default_rng()
		
		>>> sig = np.repeat([0., 1., 1., 0., 1., 0., 0., 1.], 128)
		>>> sig_noise = sig + rng.standard_normal(len(sig))
		>>> corr = signal.correlate(sig_noise, np.ones(128), mode='same') / 128
		
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
		>>> plt.show()
		
		Compute the cross-correlation of a noisy signal with the original signal.
		
		>>> x = np.arange(128) / 128
		>>> sig = np.sin(2 * np.pi * x)
		>>> sig_noise = sig + rng.standard_normal(len(sig))
		>>> corr = signal.correlate(sig_noise, sig)
		>>> lags = signal.correlation_lags(len(sig), len(sig_noise))
		>>> corr /= np.max(corr)
		
		>>> fig, (ax_orig, ax_noise, ax_corr) = plt.subplots(3, 1, figsize=(4.8, 4.8))
		>>> ax_orig.plot(sig)
		>>> ax_orig.set_title('Original signal')
		>>> ax_orig.set_xlabel('Sample Number')
		>>> ax_noise.plot(sig_noise)
		>>> ax_noise.set_title('Signal with noise')
		>>> ax_noise.set_xlabel('Sample Number')
		>>> ax_corr.plot(lags, corr)
		>>> ax_corr.set_title('Cross-correlated signal')
		>>> ax_corr.set_xlabel('Lag')
		>>> ax_orig.margins(0, 0.1)
		>>> ax_noise.margins(0, 0.1)
		>>> ax_corr.margins(0, 0.1)
		>>> fig.tight_layout()
		>>> plt.show()
	**/
	static public function correlate(in1:Dynamic, in2:Dynamic, ?mode:Dynamic, ?method:Dynamic):Array<Dynamic>;
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
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear cross-correlation
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding. In 'valid' mode, either `in1` or `in2`
		       must be at least as large as the other in every dimension.
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
		
		Notes
		-----
		When using "same" mode with even-length inputs, the outputs of `correlate`
		and `correlate2d` differ: There is a 1-index offset between them.
		
		Examples
		--------
		Use 2D cross-correlation to find the location of a template in a noisy
		image:
		
		>>> from scipy import signal
		>>> from scipy import misc
		>>> rng = np.random.default_rng()
		>>> face = misc.face(gray=True) - misc.face(gray=True).mean()
		>>> template = np.copy(face[300:365, 670:750])  # right eye
		>>> template -= template.mean()
		>>> face = face + rng.standard_normal(face.shape) * 50  # add noise
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
		Calculates the lag / displacement indices array for 1D cross-correlation.
		
		Parameters
		----------
		in1_size : int
		    First input size.
		in2_size : int
		    Second input size.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output.
		    See the documentation `correlate` for more information.
		
		See Also
		--------
		correlate : Compute the N-dimensional cross-correlation.
		
		Returns
		-------
		lags : array
		    Returns an array containing cross-correlation lag/displacement indices.
		    Indices can be indexed with the np.argmax of the correlation to return
		    the lag/displacement.
		
		Notes
		-----
		Cross-correlation for continuous functions :math:`f` and :math:`g` is
		defined as:
		
		.. math::
		
		    \left ( f\star g \right )\left ( \tau \right )
		    \triangleq \int_{t_0}^{t_0 +T}
		    \overline{f\left ( t \right )}g\left ( t+\tau \right )dt
		
		Where :math:`\tau` is defined as the displacement, also known as the lag.
		
		Cross correlation for discrete functions :math:`f` and :math:`g` is
		defined as:
		
		.. math::
		    \left ( f\star g \right )\left [ n \right ]
		    \triangleq \sum_{-\infty}^{\infty}
		    \overline{f\left [ m \right ]}g\left [ m+n \right ]
		
		Where :math:`n` is the lag.
		
		Examples
		--------
		Cross-correlation of a signal with its time-delayed self.
		
		>>> from scipy import signal
		>>> from numpy.random import default_rng
		>>> rng = default_rng()
		>>> x = rng.standard_normal(1000)
		>>> y = np.concatenate([rng.standard_normal(100), x])
		>>> correlation = signal.correlate(x, y, mode="full")
		>>> lags = signal.correlation_lags(x.size, y.size, mode="full")
		>>> lag = lags[np.argmax(correlation)]
	**/
	static public function correlation_lags(in1_len:Dynamic, in2_len:Dynamic, ?mode:Dynamic):Array<Dynamic>;
	/**
		Downsample the signal after applying an anti-aliasing filter.
		
		By default, an order 8 Chebyshev type I filter is used. A 30 point FIR
		filter with Hamming window is used if `ftype` is 'fir'.
		
		Parameters
		----------
		x : array_like
		    The signal to be downsampled, as an N-dimensional array.
		q : int
		    The downsampling factor. When using IIR downsampling, it is recommended
		    to call `decimate` multiple times for downsampling factors higher than
		    13.
		n : int, optional
		    The order of the filter (1 less than the length for 'fir'). Defaults to
		    8 for 'iir' and 20 times the downsampling factor for 'fir'.
		ftype : str {'iir', 'fir'} or ``dlti`` instance, optional
		    If 'iir' or 'fir', specifies the type of lowpass filter. If an instance
		    of an `dlti` object, uses that object to filter before downsampling.
		axis : int, optional
		    The axis along which to decimate.
		zero_phase : bool, optional
		    Prevent phase shift by filtering with `filtfilt` instead of `lfilter`
		    when using an IIR filter, and shifting the outputs back by the filter's
		    group delay when using an FIR filter. The default value of ``True`` is
		    recommended, since a phase shift is generally not desired.
		
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
		
		Examples
		--------
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		Define wave parameters.
		
		>>> wave_duration = 3
		>>> sample_rate = 100
		>>> freq = 2
		>>> q = 5
		
		Calculate number of samples.
		
		>>> samples = wave_duration*sample_rate
		>>> samples_decimated = int(samples/q)
		
		Create cosine wave.
		
		>>> x = np.linspace(0, wave_duration, samples, endpoint=False)
		>>> y = np.cos(x*np.pi*freq*2)
		
		Decimate cosine wave.
		
		>>> ydem = signal.decimate(y, q)
		>>> xnew = np.linspace(0, wave_duration, samples_decimated, endpoint=False)
		
		Plot original and decimated waves.
		
		>>> plt.plot(x, y, '.-', xnew, ydem, 'o-')
		>>> plt.xlabel('Time, Seconds')
		>>> plt.legend(['data', 'decimated'], loc='best')
		>>> plt.show()
	**/
	static public function decimate(x:Dynamic, q:Dynamic, ?n:Dynamic, ?ftype:Dynamic, ?axis:Dynamic, ?zero_phase:Dynamic):Dynamic;
	/**
		Deconvolves ``divisor`` out of ``signal`` using inverse filtering.
		
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
		
		See Also
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
		    Break points are specified as indices into `data`. This parameter
		    only has an effect when ``type == 'linear'``.
		overwrite_data : bool, optional
		    If True, perform in place detrending and avoid a copy. Default is False
		
		Returns
		-------
		ret : ndarray
		    The detrended input data.
		
		Examples
		--------
		>>> from scipy import signal
		>>> from numpy.random import default_rng
		>>> rng = default_rng()
		>>> npoints = 1000
		>>> noise = rng.standard_normal(npoints)
		>>> x = 3 + 2*np.linspace(0, 1, npoints) + noise
		>>> (signal.detrend(x) - noise).max()
		0.06  # random
	**/
	static public function detrend(data:Dynamic, ?axis:Dynamic, ?type:Dynamic, ?bp:Dynamic, ?overwrite_data:Dynamic):Dynamic;
	/**
		Even extension at the boundaries of an array
		
		Generate a new ndarray by making an even extension of `x` along an axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend `x` at each end of the axis.
		axis : int, optional
		    The axis along which to extend `x`. Default is -1.
		
		Examples
		--------
		>>> from scipy.signal._arraytools import even_ext
		>>> a = np.array([[1, 2, 3, 4, 5], [0, 1, 4, 9, 16]])
		>>> even_ext(a, 2)
		array([[ 3,  2,  1,  2,  3,  4,  5,  4,  3],
		       [ 4,  1,  0,  1,  4,  9, 16,  9,  4]])
		
		Even extension is a "mirror image" at the boundaries of the original array:
		
		>>> t = np.linspace(0, 1.5, 100)
		>>> a = 0.9 * np.sin(2 * np.pi * t**2)
		>>> b = even_ext(a, 40)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(arange(-40, 140), b, 'b', lw=1, label='even extension')
		>>> plt.plot(arange(100), a, 'r', lw=2, label='original')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function even_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convolve two N-dimensional arrays using FFT.
		
		Convolve `in1` and `in2` using the fast Fourier transform method, with
		the output size determined by the `mode` argument.
		
		This is generally much faster than `convolve` for large arrays (n > ~500),
		but can be slower when only a few output values are needed, and can only
		output float arrays (int or object array inputs will be cast to float).
		
		As of v0.19, `convolve` automatically chooses this method or the direct
		method based on an estimation of which is faster.
		
		Parameters
		----------
		in1 : array_like
		    First input.
		in2 : array_like
		    Second input. Should have the same number of dimensions as `in1`.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear convolution
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding. In 'valid' mode, either `in1` or `in2`
		       must be at least as large as the other in every dimension.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		axes : int or array_like of ints or None, optional
		    Axes over which to compute the convolution.
		    The default is over all axes.
		
		Returns
		-------
		out : array
		    An N-dimensional array containing a subset of the discrete linear
		    convolution of `in1` with `in2`.
		
		See Also
		--------
		convolve : Uses the direct convolution or FFT convolution algorithm
		           depending on which is faster.
		oaconvolve : Uses the overlap-add method to do convolution, which is
		             generally faster when the input arrays are large and
		             significantly different in size.
		
		Examples
		--------
		Autocorrelation of white noise is an impulse.
		
		>>> from scipy import signal
		>>> rng = np.random.default_rng()
		>>> sig = rng.standard_normal(1000)
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
		>>> kernel = np.outer(signal.windows.gaussian(70, 8),
		...                   signal.windows.gaussian(70, 8))
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
	static public function fftconvolve(in1:Dynamic, in2:Dynamic, ?mode:Dynamic, ?axes:Dynamic):Array<Dynamic>;
	/**
		Apply a digital filter forward and backward to a signal.
		
		This function applies a linear digital filter twice, once forward and
		once backwards.  The combined filter has zero phase and a filter order
		twice that of the original.
		
		The function provides options for handling the edges of the signal.
		
		The function `sosfiltfilt` (and filter design using ``output='sos'``)
		should be preferred over `filtfilt` for most filtering tasks, as
		second-order sections have fewer numerical problems.
		
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
		the Nyquist frequency, or 125 Hz, and apply it to ``x`` with `filtfilt`.
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
		
		`sig` is a random input signal to be filtered.
		
		>>> rng = np.random.default_rng()
		>>> n = 60
		>>> sig = rng.standard_normal(n)**3 + 3*rng.standard_normal(n).cumsum()
		
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
		
		>>> x = rng.standard_normal(5000)
		>>> y1 = signal.filtfilt(b, a, x, method='gust')
		>>> y2 = signal.filtfilt(b, a, x, method='gust', irlen=approx_impulse_len)
		>>> print(np.max(np.abs(y1 - y2)))
		1.80056858312e-10
	**/
	static public function filtfilt(b:Dynamic, a:Dynamic, x:Dynamic, ?axis:Dynamic, ?padtype:Dynamic, ?padlen:Dynamic, ?method:Dynamic, ?irlen:Dynamic):Dynamic;
	/**
		FIR filter design using the window method.
		
		This function computes the coefficients of a finite impulse response
		filter. The filter will have linear phase; it will be Type I if
		`numtaps` is odd and Type II if `numtaps` is even.
		
		Type II filters always have zero response at the Nyquist frequency, so a
		ValueError exception is raised if firwin is called with `numtaps` even and
		having a passband whose right end is at the Nyquist frequency.
		
		Parameters
		----------
		numtaps : int
		    Length of the filter (number of coefficients, i.e. the filter
		    order + 1).  `numtaps` must be odd if a passband includes the
		    Nyquist frequency.
		cutoff : float or 1-D array_like
		    Cutoff frequency of filter (expressed in the same units as `fs`)
		    OR an array of cutoff frequencies (that is, band edges). In the
		    latter case, the frequencies in `cutoff` should be positive and
		    monotonically increasing between 0 and `fs/2`. The values 0 and
		    `fs/2` must not be included in `cutoff`.
		width : float or None, optional
		    If `width` is not None, then assume it is the approximate width
		    of the transition region (expressed in the same units as `fs`)
		    for use in Kaiser FIR filter design. In this case, the `window`
		    argument is ignored.
		window : string or tuple of string and parameter values, optional
		    Desired window to use. See `scipy.signal.get_window` for a list
		    of windows and required parameters.
		pass_zero : {True, False, 'bandpass', 'lowpass', 'highpass', 'bandstop'}, optional
		    If True, the gain at the frequency 0 (i.e., the "DC gain") is 1.
		    If False, the DC gain is 0. Can also be a string argument for the
		    desired filter type (equivalent to ``btype`` in IIR design functions).
		
		    .. versionadded:: 1.3.0
		       Support for string arguments.
		scale : bool, optional
		    Set to True to scale the coefficients so that the frequency
		    response is exactly unity at a certain frequency.
		    That frequency is either:
		
		    - 0 (DC) if the first passband starts at 0 (i.e. pass_zero
		      is True)
		    - `fs/2` (the Nyquist frequency) if the first passband ends at
		      `fs/2` (i.e the filter is a single band highpass filter);
		      center of first passband otherwise
		
		nyq : float, optional
		    *Deprecated. Use `fs` instead.* This is the Nyquist frequency.
		    Each frequency in `cutoff` must be between 0 and `nyq`. Default
		    is 1.
		fs : float, optional
		    The sampling frequency of the signal. Each frequency in `cutoff`
		    must be between 0 and ``fs/2``.  Default is 2.
		
		Returns
		-------
		h : (numtaps,) ndarray
		    Coefficients of length `numtaps` FIR filter.
		
		Raises
		------
		ValueError
		    If any value in `cutoff` is less than or equal to 0 or greater
		    than or equal to ``fs/2``, if the values in `cutoff` are not strictly
		    monotonically increasing, or if `numtaps` is even but a passband
		    includes the Nyquist frequency.
		
		See Also
		--------
		firwin2
		firls
		minimum_phase
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
	static public function firwin(numtaps:Dynamic, cutoff:Dynamic, ?width:Dynamic, ?window:Dynamic, ?pass_zero:Dynamic, ?scale:Dynamic, ?nyq:Dynamic, ?fs:Dynamic):Dynamic;
	/**
		Return a window of a given length and type.
		
		Parameters
		----------
		window : string, float, or tuple
		    The type of window to create. See below for more details.
		Nx : int
		    The number of samples in the window.
		fftbins : bool, optional
		    If True (default), create a "periodic" window, ready to use with
		    `ifftshift` and be multiplied by the result of an FFT (see also
		    :func:`~scipy.fft.fftfreq`).
		    If False, create a "symmetric" window, for use in filter design.
		
		Returns
		-------
		get_window : ndarray
		    Returns a window of length `Nx` and type `window`
		
		Notes
		-----
		Window types:
		
		- `~scipy.signal.windows.boxcar`
		- `~scipy.signal.windows.triang`
		- `~scipy.signal.windows.blackman`
		- `~scipy.signal.windows.hamming`
		- `~scipy.signal.windows.hann`
		- `~scipy.signal.windows.bartlett`
		- `~scipy.signal.windows.flattop`
		- `~scipy.signal.windows.parzen`
		- `~scipy.signal.windows.bohman`
		- `~scipy.signal.windows.blackmanharris`
		- `~scipy.signal.windows.nuttall`
		- `~scipy.signal.windows.barthann`
		- `~scipy.signal.windows.cosine`
		- `~scipy.signal.windows.exponential`
		- `~scipy.signal.windows.tukey`
		- `~scipy.signal.windows.taylor`
		- `~scipy.signal.windows.kaiser` (needs beta)
		- `~scipy.signal.windows.gaussian` (needs standard deviation)
		- `~scipy.signal.windows.general_cosine` (needs weighting coefficients)
		- `~scipy.signal.windows.general_gaussian` (needs power, width)
		- `~scipy.signal.windows.general_hamming` (needs window coefficient)
		- `~scipy.signal.windows.dpss` (needs normalized half-bandwidth)
		- `~scipy.signal.windows.chebwin` (needs attenuation)
		
		
		If the window requires no parameters, then `window` can be a string.
		
		If the window requires parameters, then `window` must be a tuple
		with the first argument the string name of the window, and the next
		arguments the needed parameters.
		
		If `window` is a floating point number, it is interpreted as the beta
		parameter of the `~scipy.signal.windows.kaiser` window.
		
		Each of the window types listed above is also the name of
		a function that can be called directly to create a window of
		that type.
		
		Examples
		--------
		>>> from scipy import signal
		>>> signal.get_window('triang', 7)
		array([ 0.125,  0.375,  0.625,  0.875,  0.875,  0.625,  0.375])
		>>> signal.get_window(('kaiser', 4.0), 9)
		array([ 0.08848053,  0.29425961,  0.56437221,  0.82160913,  0.97885093,
		        0.97885093,  0.82160913,  0.56437221,  0.29425961])
		>>> signal.get_window(('exponential', None, 1.), 9)
		array([ 0.011109  ,  0.03019738,  0.082085  ,  0.22313016,  0.60653066,
		        0.60653066,  0.22313016,  0.082085  ,  0.03019738])
		>>> signal.get_window(4.0, 9)
		array([ 0.08848053,  0.29425961,  0.56437221,  0.82160913,  0.97885093,
		        0.97885093,  0.82160913,  0.56437221,  0.29425961])
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
		--------
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
		instantaneous frequency can be obtained by differentiating the
		instantaneous phase in respect to time. The instantaneous phase corresponds
		to the phase angle of the analytic signal.
		
		>>> analytic_signal = hilbert(signal)
		>>> amplitude_envelope = np.abs(analytic_signal)
		>>> instantaneous_phase = np.unwrap(np.angle(analytic_signal))
		>>> instantaneous_frequency = (np.diff(instantaneous_phase) /
		...                            (2.0*np.pi) * fs)
		
		>>> fig, (ax0, ax1) = plt.subplots(nrows=2)
		>>> ax0.plot(t, signal, label='signal')
		>>> ax0.plot(t, amplitude_envelope, label='envelope')
		>>> ax0.set_xlabel("time in seconds")
		>>> ax0.legend()
		>>> ax1.plot(t[1:], instantaneous_frequency)
		>>> ax1.set_xlabel("time in seconds")
		>>> ax1.set_ylim(0.0, 120.0)
		>>> fig.tight_layout()
		
		References
		----------
		.. [1] Wikipedia, "Analytic signal".
		       https://en.wikipedia.org/wiki/Analytic_signal
		.. [2] Leon Cohen, "Time-Frequency Analysis", 1995. Chapter 2.
		.. [3] Alan V. Oppenheim, Ronald W. Schafer. Discrete-Time Signal
		       Processing, Third Edition, 2009. Chapter 12.
		       ISBN 13: 978-1292-02572-8
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
		    https://en.wikipedia.org/wiki/Analytic_signal
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
		    Residues corresponding to the poles. For repeated poles, the residues
		    must be ordered to correspond to ascending by power fractions.
		p : array_like
		    Poles. Equal poles must be adjacent.
		k : array_like
		    Coefficients of the direct polynomial term.
		tol : float, optional
		    The tolerance for two roots to be considered equal in terms of
		    the distance between them. Default is 1e-3. See `unique_roots`
		    for further details.
		rtype : {'avg', 'min', 'max'}, optional
		    Method for computing a root to represent a group of identical roots.
		    Default is 'avg'. See `unique_roots` for further details.
		
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
		    Residues corresponding to the poles. For repeated poles, the residues
		    must be ordered to correspond to ascending by power fractions.
		p : array_like
		    Poles. Equal poles must be adjacent.
		k : array_like
		    Coefficients of the direct polynomial term.
		tol : float, optional
		    The tolerance for two roots to be considered equal in terms of
		    the distance between them. Default is 1e-3. See `unique_roots`
		    for further details.
		rtype : {'avg', 'min', 'max'}, optional
		    Method for computing a root to represent a group of identical roots.
		    Default is 'avg'. See `unique_roots` for further details.
		
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
		lambertw(z, k=0, tol=1e-8)
		
		Lambert W function.
		
		The Lambert W function `W(z)` is defined as the inverse function
		of ``w * exp(w)``. In other words, the value of ``W(z)`` is
		such that ``z = W(z) * exp(W(z))`` for any complex number
		``z``.
		
		The Lambert W function is a multivalued function with infinitely
		many branches. Each branch gives a separate solution of the
		equation ``z = w exp(w)``. Here, the branches are indexed by the
		integer `k`.
		
		Parameters
		----------
		z : array_like
		    Input argument.
		k : int, optional
		    Branch index.
		tol : float, optional
		    Evaluation tolerance.
		
		Returns
		-------
		w : array
		    `w` will have the same shape as `z`.
		
		Notes
		-----
		All branches are supported by `lambertw`:
		
		* ``lambertw(z)`` gives the principal solution (branch 0)
		* ``lambertw(z, k)`` gives the solution on branch `k`
		
		The Lambert W function has two partially real branches: the
		principal branch (`k = 0`) is real for real ``z > -1/e``, and the
		``k = -1`` branch is real for ``-1/e < z < 0``. All branches except
		``k = 0`` have a logarithmic singularity at ``z = 0``.
		
		**Possible issues**
		
		The evaluation can become inaccurate very close to the branch point
		at ``-1/e``. In some corner cases, `lambertw` might currently
		fail to converge, or can end up on the wrong branch.
		
		**Algorithm**
		
		Halley's iteration is used to invert ``w * exp(w)``, using a first-order
		asymptotic approximation (O(log(w)) or `O(w)`) as the initial estimate.
		
		The definition, implementation and choice of branches is based on [2]_.
		
		See Also
		--------
		wrightomega : the Wright Omega function
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Lambert_W_function
		.. [2] Corless et al, "On the Lambert W function", Adv. Comp. Math. 5
		   (1996) 329-359.
		   https://cs.uwaterloo.ca/research/tr/1993/03/W.pdf
		
		Examples
		--------
		The Lambert W function is the inverse of ``w exp(w)``:
		
		>>> from scipy.special import lambertw
		>>> w = lambertw(1)
		>>> w
		(0.56714329040978384+0j)
		>>> w * np.exp(w)
		(1.0+0j)
		
		Any branch gives a valid inverse:
		
		>>> w = lambertw(1, k=3)
		>>> w
		(-2.8535817554090377+17.113535539412148j)
		>>> w*np.exp(w)
		(1.0000000000000002+1.609823385706477e-15j)
		
		**Applications to equation-solving**
		
		The Lambert W function may be used to solve various kinds of
		equations, such as finding the value of the infinite power
		tower :math:`z^{z^{z^{\ldots}}}`:
		
		>>> def tower(z, n):
		...     if n == 0:
		...         return z
		...     return z ** tower(z, n-1)
		...
		>>> tower(0.5, 100)
		0.641185744504986
		>>> -lambertw(-np.log(0.5)) / np.log(0.5)
		(0.64118574450498589+0j)
	**/
	static public function lambertw(z:Dynamic, ?k:Dynamic, ?tol:Dynamic):Array<Dynamic>;
	/**
		Filter data along one-dimension with an IIR or FIR filter.
		
		Filter a data sequence, `x`, using a digital filter.  This works for many
		fundamental data types (including Object type).  The filter is a direct
		form II transposed implementation of the standard difference equation
		(see Notes).
		
		The function `sosfilt` (and filter design using ``output='sos'``) should be
		preferred over `lfilter` for most filtering tasks, as second-order sections
		have fewer numerical problems.
		
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
		>>> rng = np.random.default_rng()
		>>> t = np.linspace(-1, 1, 201)
		>>> x = (np.sin(2*np.pi*0.75*t*(1-t) + 2.1) +
		...      0.1*np.sin(2*np.pi*1.25*t + 1) +
		...      0.18*np.cos(2*np.pi*3.85*t))
		>>> xn = x + rng.standard_normal(len(t)) * 0.08
		
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
		Construct initial conditions for lfilter for step response steady-state.
		
		Compute an initial state `zi` for the `lfilter` function that corresponds
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
		Construct initial conditions for lfilter given input and output vectors.
		
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
		Perform a median filter on an N-dimensional array.
		
		Apply a median filter to the input array using a local window-size
		given by `kernel_size`. The array will automatically be zero-padded.
		
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
		
		Warns
		-----
		UserWarning
		    If array size is smaller than kernel size along any dimension
		
		See Also
		--------
		scipy.ndimage.median_filter
		scipy.signal.medfilt2d
		
		Notes
		-----
		The more general function `scipy.ndimage.median_filter` has a more
		efficient implementation of a median filter and therefore runs much faster.
		
		For 2-dimensional images with ``uint8``, ``float32`` or ``float64`` dtypes,
		the specialised function `scipy.signal.medfilt2d` may be faster.
	**/
	static public function medfilt(volume:Dynamic, ?kernel_size:Dynamic):Dynamic;
	/**
		Median filter a 2-dimensional array.
		
		Apply a median filter to the `input` array using a local window-size
		given by `kernel_size` (must be odd). The array is zero-padded
		automatically.
		
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
		
		See also
		--------
		scipy.ndimage.median_filter
		
		Notes
		-----
		This is faster than `medfilt` when the input dtype is ``uint8``,
		``float32``, or ``float64``; for other types, this falls back to
		`medfilt`; you should use `scipy.ndimage.median_filter` instead as it is
		much faster.  In some situations, `scipy.ndimage.median_filter` may be
		faster than this function.
	**/
	static public function medfilt2d(input:Dynamic, ?kernel_size:Dynamic):Dynamic;
	/**
		Convolve two N-dimensional arrays using the overlap-add method.
		
		Convolve `in1` and `in2` using the overlap-add method, with
		the output size determined by the `mode` argument.
		
		This is generally much faster than `convolve` for large arrays (n > ~500),
		and generally much faster than `fftconvolve` when one array is much
		larger than the other, but can be slower when only a few output values are
		needed or when the arrays are very similar in shape, and can only
		output float arrays (int or object array inputs will be cast to float).
		
		Parameters
		----------
		in1 : array_like
		    First input.
		in2 : array_like
		    Second input. Should have the same number of dimensions as `in1`.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear convolution
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding. In 'valid' mode, either `in1` or `in2`
		       must be at least as large as the other in every dimension.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		axes : int or array_like of ints or None, optional
		    Axes over which to compute the convolution.
		    The default is over all axes.
		
		Returns
		-------
		out : array
		    An N-dimensional array containing a subset of the discrete linear
		    convolution of `in1` with `in2`.
		
		See Also
		--------
		convolve : Uses the direct convolution or FFT convolution algorithm
		           depending on which is faster.
		fftconvolve : An implementation of convolution using FFT.
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		Convolve a 100,000 sample signal with a 512-sample filter.
		
		>>> from scipy import signal
		>>> rng = np.random.default_rng()
		>>> sig = rng.standard_normal(100000)
		>>> filt = signal.firwin(512, 0.01)
		>>> fsig = signal.oaconvolve(sig, filt)
		
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax_orig, ax_mag) = plt.subplots(2, 1)
		>>> ax_orig.plot(sig)
		>>> ax_orig.set_title('White noise')
		>>> ax_mag.plot(fsig)
		>>> ax_mag.set_title('Filtered noise')
		>>> fig.tight_layout()
		>>> fig.show()
		
		References
		----------
		.. [1] Wikipedia, "Overlap-add_method".
		       https://en.wikipedia.org/wiki/Overlap-add_method
		.. [2] Richard G. Lyons. Understanding Digital Signal Processing,
		       Third Edition, 2011. Chapter 13.10.
		       ISBN 13: 978-0137-02741-5
	**/
	static public function oaconvolve(in1:Dynamic, in2:Dynamic, ?mode:Dynamic, ?axes:Dynamic):Array<Dynamic>;
	/**
		Odd extension at the boundaries of an array
		
		Generate a new ndarray by making an odd extension of `x` along an axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend `x` at each end of the axis.
		axis : int, optional
		    The axis along which to extend `x`. Default is -1.
		
		Examples
		--------
		>>> from scipy.signal._arraytools import odd_ext
		>>> a = np.array([[1, 2, 3, 4, 5], [0, 1, 4, 9, 16]])
		>>> odd_ext(a, 2)
		array([[-1,  0,  1,  2,  3,  4,  5,  6,  7],
		       [-4, -1,  0,  1,  4,  9, 16, 23, 28]])
		
		Odd extension is a "180 degree rotation" at the endpoints of the original
		array:
		
		>>> t = np.linspace(0, 1.5, 100)
		>>> a = 0.9 * np.sin(2 * np.pi * t**2)
		>>> b = odd_ext(a, 40)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(arange(-40, 140), b, 'b', lw=1, label='odd extension')
		>>> plt.plot(arange(100), a, 'r', lw=2, label='original')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function odd_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Perform an order filter on an N-D array.
		
		Perform an order filter on the array in. The domain argument acts as a
		mask centered over each pixel. The non-zero elements of domain are
		used to select elements surrounding each input pixel which are placed
		in a list. The list is sorted, and the output for that pixel is the
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
		    If `t` is given, it is assumed to be the equally spaced sample
		    positions associated with the signal data in `x`.
		axis : int, optional
		    The axis of `x` that is resampled.  Default is 0.
		window : array_like, callable, string, float, or tuple, optional
		    Specifies the window applied to the signal in the Fourier
		    domain.  See below for details.
		domain : string, optional
		    A string indicating the domain of the input `x`:
		    ``time`` Consider the input `x` as time-domain (Default),
		    ``freq`` Consider the input `x` as frequency-domain.
		
		Returns
		-------
		resampled_x or (resampled_x, resampled_t)
		    Either the resampled array, or, if `t` was given, a tuple
		    containing the resampled array and the corresponding resampled
		    positions.
		
		See Also
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
		
		If `t` is not None, then it is used solely to calculate the resampled
		positions `resampled_t`
		
		As noted, `resample` uses FFT transformations, which can be very
		slow if the number of input or output samples is large and prime;
		see `scipy.fft.fft`.
		
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
	static public function resample(x:Dynamic, num:Dynamic, ?t:Dynamic, ?axis:Dynamic, ?window:Dynamic, ?domain:Dynamic):Dynamic;
	/**
		Resample `x` along the given axis using polyphase filtering.
		
		The signal `x` is upsampled by the factor `up`, a zero-phase low-pass
		FIR filter is applied, and then it is downsampled by the factor `down`.
		The resulting sample rate is ``up / down`` times the original sample
		rate. By default, values beyond the boundary of the signal are assumed
		to be zero during the filtering step.
		
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
		padtype : string, optional
		    `constant`, `line`, `mean`, `median`, `maximum`, `minimum` or any of
		    the other signal extension modes supported by `scipy.signal.upfirdn`.
		    Changes assumptions on values beyond the boundary. If `constant`,
		    assumed to be `cval` (default zero). If `line` assumed to continue a
		    linear trend defined by the first and last points. `mean`, `median`,
		    `maximum` and `minimum` work as in `np.pad` and assume that the values
		    beyond the boundary are the mean, median, maximum or minimum
		    respectively of the array along the axis.
		
		    .. versionadded:: 1.4.0
		cval : float, optional
		    Value to use if `padtype='constant'`. Default is zero.
		
		    .. versionadded:: 1.4.0
		
		Returns
		-------
		resampled_x : array
		    The resampled array.
		
		See Also
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
		from ``dx`` to ``dx * down / float(up)``.
		
		Examples
		--------
		By default, the end of the resampled data rises to meet the first
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
		
		This default behaviour can be changed by using the padtype option:
		
		>>> import numpy as np
		>>> from scipy import signal
		
		>>> N = 5
		>>> x = np.linspace(0, 1, N, endpoint=False)
		>>> y = 2 + x**2 - 1.7*np.sin(x) + .2*np.cos(11*x)
		>>> y2 = 1 + x**3 + 0.1*np.sin(x) + .1*np.cos(11*x)
		>>> Y = np.stack([y, y2], axis=-1)
		>>> up = 4
		>>> xr = np.linspace(0, 1, N*up, endpoint=False)
		
		>>> y2 = signal.resample_poly(Y, up, 1, padtype='constant')
		>>> y3 = signal.resample_poly(Y, up, 1, padtype='mean')
		>>> y4 = signal.resample_poly(Y, up, 1, padtype='line')
		
		>>> import matplotlib.pyplot as plt
		>>> for i in [0,1]:
		...     plt.figure()
		...     plt.plot(xr, y4[:,i], 'g.', label='line')
		...     plt.plot(xr, y3[:,i], 'y.', label='mean')
		...     plt.plot(xr, y2[:,i], 'r.', label='constant')
		...     plt.plot(x, Y[:,i], 'k-')
		...     plt.legend()
		>>> plt.show()
	**/
	static public function resample_poly(x:Dynamic, up:Dynamic, down:Dynamic, ?axis:Dynamic, ?window:Dynamic, ?padtype:Dynamic, ?cval:Dynamic):Array<Dynamic>;
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
		
		See Notes for details about the algorithm.
		
		Parameters
		----------
		b : array_like
		    Numerator polynomial coefficients.
		a : array_like
		    Denominator polynomial coefficients.
		tol : float, optional
		    The tolerance for two roots to be considered equal in terms of
		    the distance between them. Default is 1e-3. See `unique_roots`
		    for further details.
		rtype : {'avg', 'min', 'max'}, optional
		    Method for computing a root to represent a group of identical roots.
		    Default is 'avg'. See `unique_roots` for further details.
		
		Returns
		-------
		r : ndarray
		    Residues corresponding to the poles. For repeated poles, the residues
		    are ordered to correspond to ascending by power fractions.
		p : ndarray
		    Poles ordered by magnitude in ascending order.
		k : ndarray
		    Coefficients of the direct polynomial term.
		
		See Also
		--------
		invres, residuez, numpy.poly, unique_roots
		
		Notes
		-----
		The "deflation through subtraction" algorithm is used for
		computations --- method 6 in [1]_.
		
		The form of partial fraction expansion depends on poles multiplicity in
		the exact mathematical sense. However there is no way to exactly
		determine multiplicity of roots of a polynomial in numerical computing.
		Thus you should think of the result of `residue` with given `tol` as
		partial fraction expansion computed for the denominator composed of the
		computed poles with empirically determined multiplicity. The choice of
		`tol` can drastically change the result if there are close poles.
		
		References
		----------
		.. [1] J. F. Mahoney, B. D. Sivazlian, "Partial fractions expansion: a
		       review of computational methodology and efficiency", Journal of
		       Computational and Applied Mathematics, Vol. 9, 1983.
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
		
		See Notes of `residue` for details about the algorithm.
		
		Parameters
		----------
		b : array_like
		    Numerator polynomial coefficients.
		a : array_like
		    Denominator polynomial coefficients.
		tol : float, optional
		    The tolerance for two roots to be considered equal in terms of
		    the distance between them. Default is 1e-3. See `unique_roots`
		    for further details.
		rtype : {'avg', 'min', 'max'}, optional
		    Method for computing a root to represent a group of identical roots.
		    Default is 'avg'. See `unique_roots` for further details.
		
		Returns
		-------
		r : ndarray
		    Residues corresponding to the poles. For repeated poles, the residues
		    are ordered to correspond to ascending by power fractions.
		p : ndarray
		    Poles ordered by magnitude in ascending order.
		k : ndarray
		    Coefficients of the direct polynomial term.
		
		See Also
		--------
		invresz, residue, unique_roots
	**/
	static public function residuez(b:Dynamic, a:Dynamic, ?tol:Dynamic, ?rtype:Dynamic):Dynamic;
	/**
		Filter data along one dimension using cascaded second-order sections.
		
		Filter a data sequence, `x`, using a digital IIR filter defined by
		`sos`.
		
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
		zpk2sos, sos2zpk, sosfilt_zi, sosfiltfilt, sosfreqz
		
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
		>>> x = signal.unit_impulse(700)
		>>> y_tf = signal.lfilter(b, a, x)
		>>> y_sos = signal.sosfilt(sos, x)
		>>> plt.plot(y_tf, 'r', label='TF')
		>>> plt.plot(y_sos, 'k', label='SOS')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function sosfilt(sos:Dynamic, x:Dynamic, ?axis:Dynamic, ?zi:Dynamic):Dynamic;
	/**
		Construct initial conditions for sosfilt for step response steady-state.
		
		Compute an initial state `zi` for the `sosfilt` function that corresponds
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
		A forward-backward digital filter using cascaded second-order sections.
		
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
		filtfilt, sosfilt, sosfilt_zi, sosfreqz
		
		Notes
		-----
		.. versionadded:: 0.18.0
		
		Examples
		--------
		>>> from scipy.signal import sosfiltfilt, butter
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.default_rng()
		
		Create an interesting signal to filter.
		
		>>> n = 201
		>>> t = np.linspace(0, 1, n)
		>>> x = 1 + (t < 0.5) - 0.25*t**2 + 0.05*rng.standard_normal(n)
		
		Create a lowpass Butterworth filter, and use it to filter `x`.
		
		>>> sos = butter(4, 0.125, output='sos')
		>>> y = sosfiltfilt(sos, x)
		
		For comparison, apply an 8th order filter using `sosfilt`.  The filter
		is initialized using the mean of the first four values of `x`.
		
		>>> from scipy.signal import sosfilt, sosfilt_zi
		>>> sos8 = butter(8, 0.125, output='sos')
		>>> zi = x[:4].mean() * sosfilt_zi(sos8)
		>>> y2, zo = sosfilt(sos8, x, zi=zi)
		
		Plot the results.  Note that the phase of `y` matches the input, while
		`y2` has a significant phase delay.
		
		>>> plt.plot(t, x, alpha=0.5, label='x(t)')
		>>> plt.plot(t, y, label='y(t)')
		>>> plt.plot(t, y2, label='y2(t)')
		>>> plt.legend(framealpha=1, shadow=True)
		>>> plt.grid(alpha=0.25)
		>>> plt.xlabel('t')
		>>> plt.show()
	**/
	static public function sosfiltfilt(sos:Dynamic, x:Dynamic, ?axis:Dynamic, ?padtype:Dynamic, ?padlen:Dynamic):Dynamic;
	/**
		Determine unique roots and their multiplicities from a list of roots.
		
		Parameters
		----------
		p : array_like
		    The list of roots.
		tol : float, optional
		    The tolerance for two roots to be considered equal in terms of
		    the distance between them. Default is 1e-3. Refer to Notes about
		    the details on roots grouping.
		rtype : {'max', 'maximum', 'min', 'minimum', 'avg', 'mean'}, optional
		    How to determine the returned root if multiple roots are within
		    `tol` of each other.
		
		      - 'max', 'maximum': pick the maximum of those roots
		      - 'min', 'minimum': pick the minimum of those roots
		      - 'avg', 'mean': take the average of those roots
		
		    When finding minimum or maximum among complex roots they are compared
		    first by the real part and then by the imaginary part.
		
		Returns
		-------
		unique : ndarray
		    The list of unique roots.
		multiplicity : ndarray
		    The multiplicity of each root.
		
		Notes
		-----
		If we have 3 roots ``a``, ``b`` and ``c``, such that ``a`` is close to
		``b`` and ``b`` is close to ``c`` (distance is less than `tol`), then it
		doesn't necessarily mean that ``a`` is close to ``c``. It means that roots
		grouping is not unique. In this function we use "greedy" grouping going
		through the roots in the order they are given in the input `p`.
		
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
		Upsample, FIR filter, and downsample.
		
		Parameters
		----------
		h : array_like
		    1-D FIR (finite-impulse response) filter coefficients.
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
		mode : str, optional
		    The signal extension mode to use. The set
		    ``{"constant", "symmetric", "reflect", "edge", "wrap"}`` correspond to
		    modes provided by `numpy.pad`. ``"smooth"`` implements a smooth
		    extension by extending based on the slope of the last 2 points at each
		    end of the array. ``"antireflect"`` and ``"antisymmetric"`` are
		    anti-symmetric versions of ``"reflect"`` and ``"symmetric"``. The mode
		    `"line"` extends the signal based on a linear trend defined by the
		    first and last points along the ``axis``.
		
		    .. versionadded:: 1.4.0
		cval : float, optional
		    The constant value to use when ``mode == "constant"``.
		
		    .. versionadded:: 1.4.0
		
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
		
		The direct approach of upsampling by factor of P with zero insertion,
		FIR filtering of length ``N``, and downsampling by factor of Q is
		O(N*Q) per output sample. The polyphase implementation used here is
		O(N/P).
		
		.. versionadded:: 0.18
		
		References
		----------
		.. [1] P. P. Vaidyanathan, Multirate Systems and Filter Banks,
		       Prentice Hall, 1993.
		
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
	static public function upfirdn(h:Dynamic, x:Dynamic, ?up:Dynamic, ?down:Dynamic, ?axis:Dynamic, ?mode:Dynamic, ?cval:Dynamic):Dynamic;
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
		    :doi:`10.1063/1.3670512`.
		van Hemmen, JL.  Vector strength after Goldberg, Brown, and von Mises:
		    biological and mathematical perspectives.  Biol Cybern.
		    2013 Aug;107(4):385-96. :doi:`10.1007/s00422-013-0561-7`.
		van Hemmen, JL and Vollmayr, AN.  Resonating vector strength: what happens
		    when we vary the "probing" frequency while keeping the spike times
		    fixed.  Biol Cybern. 2013 Aug;107(4):491-94.
		    :doi:`10.1007/s00422-013-0560-8`.
	**/
	static public function vectorstrength(events:Dynamic, period:Dynamic):Dynamic;
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
		
		Examples
		--------
		
		>>> from scipy.misc import face
		>>> from scipy.signal import wiener
		>>> import matplotlib.pyplot as plt
		>>> import numpy as np
		>>> rng = np.random.default_rng()
		>>> img = rng.random((40, 40))    #Create a random image
		>>> filtered_img = wiener(img, (5, 5))  #Filter the image
		>>> f, (plot1, plot2) = plt.subplots(1, 2)
		>>> plot1.imshow(img)
		>>> plot2.imshow(filtered_img)
		>>> plt.show()
		
		Notes
		-----
		This implementation is similar to wiener2 in Matlab/Octave.
		For more details see [1]_
		
		References
		----------
		.. [1] Lim, Jae S., Two-Dimensional Signal and Image Processing,
		       Englewood Cliffs, NJ, Prentice Hall, 1990, p. 548.
	**/
	static public function wiener(im:Dynamic, ?mysize:Dynamic, ?noise:Dynamic):Dynamic;
}