/* This file is generated, do not edit! */
package scipy.signal;
@:pythonImport("scipy.signal") extern class Signal_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check state-space matrices and ensure they are two-dimensional.
		
		If enough information on the system is provided, that is, enough
		properly-shaped arrays are passed to the function, the missing ones
		are built from this information, ensuring the correct number of
		rows and columns. Otherwise a ValueError is raised.
		
		Parameters
		----------
		A, B, C, D : array_like, optional
		    State-space matrices. All of them are None (missing) by default.
		    See `ss2tf` for format.
		
		Returns
		-------
		A, B, C, D : array
		    Properly shaped state-space matrices.
		
		Raises
		------
		ValueError
		    If not enough information on the system was provided.
	**/
	static public function abcd_normalize(?A:Dynamic, ?B:Dynamic, ?C:Dynamic, ?D:Dynamic):Array<Dynamic>;
	static public var absolute_import : Dynamic;
	/**
		Calculate the relative extrema of `data`.
		
		Parameters
		----------
		data : ndarray
		    Array in which to find the relative extrema.
		comparator : callable
		    Function to use to compare two data points.
		    Should take 2 numbers as arguments.
		axis : int, optional
		    Axis over which to select from `data`.  Default is 0.
		order : int, optional
		    How many points on each side to use for the comparison
		    to consider ``comparator(n, n+x)`` to be True.
		mode : str, optional
		    How the edges of the vector are treated.  'wrap' (wrap around) or
		    'clip' (treat overflow as the same as the last (or first) element).
		    Default is 'clip'.  See `numpy.take`.
		
		Returns
		-------
		extrema : tuple of ndarrays
		    Indices of the maxima in arrays of integers.  ``extrema[k]`` is
		    the array of indices of axis `k` of `data`.  Note that the
		    return value is a tuple even when `data` is one-dimensional.
		
		See Also
		--------
		argrelmin, argrelmax
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy.signal import argrelextrema
		>>> x = np.array([2, 1, 2, 3, 2, 0, 1, 0])
		>>> argrelextrema(x, np.greater)
		(array([3, 6]),)
		>>> y = np.array([[1, 2, 1, 2],
		...               [2, 2, 0, 0],
		...               [5, 3, 4, 4]])
		...
		>>> argrelextrema(y, np.less, axis=1)
		(array([0, 2]), array([2, 1]))
	**/
	static public function argrelextrema(data:Dynamic, comparator:Dynamic, ?axis:Dynamic, ?order:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Calculate the relative maxima of `data`.
		
		Parameters
		----------
		data : ndarray
		    Array in which to find the relative maxima.
		axis : int, optional
		    Axis over which to select from `data`.  Default is 0.
		order : int, optional
		    How many points on each side to use for the comparison
		    to consider ``comparator(n, n+x)`` to be True.
		mode : str, optional
		    How the edges of the vector are treated.
		    Available options are 'wrap' (wrap around) or 'clip' (treat overflow
		    as the same as the last (or first) element).
		    Default 'clip'.  See `numpy.take`.
		
		Returns
		-------
		extrema : tuple of ndarrays
		    Indices of the maxima in arrays of integers.  ``extrema[k]`` is
		    the array of indices of axis `k` of `data`.  Note that the
		    return value is a tuple even when `data` is one-dimensional.
		
		See Also
		--------
		argrelextrema, argrelmin
		
		Notes
		-----
		This function uses `argrelextrema` with np.greater as comparator.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy.signal import argrelmax
		>>> x = np.array([2, 1, 2, 3, 2, 0, 1, 0])
		>>> argrelmax(x)
		(array([3, 6]),)
		>>> y = np.array([[1, 2, 1, 2],
		...               [2, 2, 0, 0],
		...               [5, 3, 4, 4]])
		...
		>>> argrelmax(y, axis=1)
		(array([0]), array([1]))
	**/
	static public function argrelmax(data:Dynamic, ?axis:Dynamic, ?order:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Calculate the relative minima of `data`.
		
		Parameters
		----------
		data : ndarray
		    Array in which to find the relative minima.
		axis : int, optional
		    Axis over which to select from `data`.  Default is 0.
		order : int, optional
		    How many points on each side to use for the comparison
		    to consider ``comparator(n, n+x)`` to be True.
		mode : str, optional
		    How the edges of the vector are treated.
		    Available options are 'wrap' (wrap around) or 'clip' (treat overflow
		    as the same as the last (or first) element).
		    Default 'clip'. See numpy.take
		
		Returns
		-------
		extrema : tuple of ndarrays
		    Indices of the minima in arrays of integers.  ``extrema[k]`` is
		    the array of indices of axis `k` of `data`.  Note that the
		    return value is a tuple even when `data` is one-dimensional.
		
		See Also
		--------
		argrelextrema, argrelmax
		
		Notes
		-----
		This function uses `argrelextrema` with np.less as comparator.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy.signal import argrelmin
		>>> x = np.array([2, 1, 2, 3, 2, 0, 1, 0])
		>>> argrelmin(x)
		(array([1, 5]),)
		>>> y = np.array([[1, 2, 1, 2],
		...               [2, 2, 0, 0],
		...               [5, 3, 4, 4]])
		...
		>>> argrelmin(y, axis=1)
		(array([0, 2]), array([2, 1]))
	**/
	static public function argrelmin(data:Dynamic, ?axis:Dynamic, ?order:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Band Stop Objective Function for order minimization.
		
		Returns the non-integer order for an analog band stop filter.
		
		Parameters
		----------
		wp : scalar
		    Edge of passband `passb`.
		ind : int, {0, 1}
		    Index specifying which `passb` edge to vary (0 or 1).
		passb : ndarray
		    Two element sequence of fixed passband edges.
		stopb : ndarray
		    Two element sequence of fixed stopband edges.
		gstop : float
		    Amount of attenuation in stopband in dB.
		gpass : float
		    Amount of ripple in the passband in dB.
		type : {'butter', 'cheby', 'ellip'}
		    Type of filter.
		
		Returns
		-------
		n : scalar
		    Filter order (possibly non-integer).
	**/
	static public function band_stop_obj(wp:Dynamic, ind:Dynamic, passb:Dynamic, stopb:Dynamic, gpass:Dynamic, gstop:Dynamic, type:Dynamic):Dynamic;
	/**
		Return a modified Bartlett-Hann window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.barthann(51)
		>>> plt.plot(window)
		>>> plt.title("Bartlett-Hann window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Bartlett-Hann window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function barthann(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Bartlett window.
		
		The Bartlett window is very similar to a triangular window, except
		that the end points are at zero.  It is often used in signal
		processing for tapering a signal, without generating too much
		ripple in the frequency domain.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The triangular window, with the first and last samples equal to zero
		    and the maximum value normalized to 1 (though the value 1 does not
		    appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Bartlett window is defined as
		
		.. math:: w(n) = \frac{2}{M-1} \left(
		          \frac{M-1}{2} - \left|n - \frac{M-1}{2}\right|
		          \right)
		
		Most references to the Bartlett window come from the signal
		processing literature, where it is used as one of many windowing
		functions for smoothing values.  Note that convolution with this
		window produces linear interpolation.  It is also known as an
		apodization (which means"removing the foot", i.e. smoothing
		discontinuities at the beginning and end of the sampled signal) or
		tapering function. The Fourier transform of the Bartlett is the product
		of two sinc functions.
		Note the excellent discussion in Kanasewich.
		
		References
		----------
		.. [1] M.S. Bartlett, "Periodogram Analysis and Continuous Spectra",
		       Biometrika 37, 1-16, 1950.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
		       The University of Alberta Press, 1975, pp. 109-110.
		.. [3] A.V. Oppenheim and R.W. Schafer, "Discrete-Time Signal
		       Processing", Prentice-Hall, 1999, pp. 468-471.
		.. [4] Wikipedia, "Window function",
		       http://en.wikipedia.org/wiki/Window_function
		.. [5] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 429.
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.bartlett(51)
		>>> plt.plot(window)
		>>> plt.title("Bartlett window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Bartlett window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function bartlett(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Run benchmarks for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the benchmarks to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow benchmarks as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for benchmark outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		
		Returns
		-------
		success : bool
		    Returns True if running the benchmarks works, False if an error
		    occurred.
		
		Notes
		-----
		Benchmarks are like tests, but have names starting with "bench" instead
		of "test", and can be found under the "benchmarks" sub-directory of the
		module.
		
		Each NumPy module exposes `bench` in its namespace to run all benchmarks
		for it.
		
		Examples
		--------
		>>> success = np.lib.bench() #doctest: +SKIP
		Running benchmarks for numpy.lib
		...
		using 562341 items:
		unique:
		0.11
		unique1d:
		0.11
		ratio: 1.0
		nUnique: 56230 == 56230
		...
		OK
		
		>>> success #doctest: +SKIP
		True
	**/
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Bool;
	/**
		Bessel/Thomson digital and analog filter design.
		
		Design an Nth order digital or analog Bessel filter and return the
		filter coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For a Bessel filter, this is defined as the point at which the
		    asymptotes of the response are the same as a Butterworth filter of
		    the same order.
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
		
		Notes
		-----
		Also known as a Thomson filter, the analog Bessel filter has maximally
		flat group delay and maximally linear phase response, with very little
		ringing in the step response.
		
		As order increases, the Bessel filter approaches a Gaussian filter.
		
		The digital Bessel filter is generated using the bilinear
		transform, which does not preserve the phase response of the analog
		filter. As such, it is only approximately correct at frequencies
		below about fs/4.  To get maximally flat group delay at higher
		frequencies, the analog Bessel filter must be transformed using
		phase-preserving techniques.
		
		For a given `Wn`, the lowpass and highpass filter have the same phase vs
		frequency curves; they are "phase-matched".
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Plot the filter's frequency response, showing the flat group delay and
		the relationship to the Butterworth's cutoff frequency:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.butter(4, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.plot(w, 20 * np.log10(np.abs(h)), color='silver', ls='dashed')
		>>> b, a = signal.bessel(4, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(np.abs(h)))
		>>> plt.title('Bessel filter frequency response (with Butterworth)')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.axvline(100, color='green') # cutoff frequency
		>>> plt.show()
		
		>>> plt.figure()
		>>> plt.semilogx(w[1:], -np.diff(np.unwrap(np.angle(h)))/np.diff(w))
		>>> plt.title('Bessel filter group delay')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Group delay [seconds]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.show()
	**/
	static public function bessel(N:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Return (z,p,k) for analog prototype of an Nth order Bessel filter.
		
		The filter is normalized such that the filter asymptotes are the same as
		a Butterworth filter of the same order with an angular (e.g. rad/s)
		cutoff frequency of 1.
		
		Parameters
		----------
		N : int
		    The order of the Bessel filter to return zeros, poles and gain for.
		    Values in the range 0-25 are supported.
		
		Returns
		-------
		z : ndarray
		    Zeros. Is always an empty array.
		p : ndarray
		    Poles.
		k : scalar
		    Gain. Always 1.
	**/
	static public function besselap(N:Dynamic):Dynamic;
	/**
		Return a digital filter from an analog one using a bilinear transform.
		
		The bilinear transform substitutes ``(z-1) / (z+1)`` for ``s``.
	**/
	static public function bilinear(b:Dynamic, a:Dynamic, ?fs:Dynamic):Dynamic;
	/**
		Return a Blackman window.
		
		The Blackman window is a taper formed by using the first three terms of
		a summation of cosines. It was designed to have close to the minimal
		leakage possible.  It is close to optimal, only slightly worse than a
		Kaiser window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Blackman window is defined as
		
		.. math::  w(n) = 0.42 - 0.5 \cos(2\pi n/M) + 0.08 \cos(4\pi n/M)
		
		Most references to the Blackman window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function. It is known as a
		"near optimal" tapering function, almost as good (by some measures)
		as the Kaiser window.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] Oppenheim, A.V., and R.W. Schafer. Discrete-Time Signal Processing.
		       Upper Saddle River, NJ: Prentice-Hall, 1999, pp. 468-471.
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.blackman(51)
		>>> plt.plot(window)
		>>> plt.title("Blackman window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Blackman window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function blackman(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a minimum 4-term Blackman-Harris window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.blackmanharris(51)
		>>> plt.plot(window)
		>>> plt.title("Blackman-Harris window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Blackman-Harris window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function blackmanharris(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Calculate Bode magnitude and phase data of a continuous-time system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		w : array_like, optional
		    Array of frequencies (in rad/s). Magnitude and phase data is calculated
		    for every value in this array. If not given a reasonable set will be
		    calculated.
		n : int, optional
		    Number of frequency points to compute if `w` is not given. The `n`
		    frequencies are logarithmically spaced in an interval chosen to
		    include the influence of the poles and zeros of the system.
		
		Returns
		-------
		w : 1D ndarray
		    Frequency array [rad/s]
		mag : 1D ndarray
		    Magnitude array [dB]
		phase : 1D ndarray
		    Phase array [deg]
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> s1 = signal.lti([1], [1, 1])
		>>> w, mag, phase = signal.bode(s1)
		
		>>> plt.figure()
		>>> plt.semilogx(w, mag)    # Bode magnitude plot
		>>> plt.figure()
		>>> plt.semilogx(w, phase)  # Bode phase plot
		>>> plt.show()
	**/
	static public function bode(system:Dynamic, ?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Return a Bohman window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.bohman(51)
		>>> plt.plot(window)
		>>> plt.title("Bohman window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Bohman window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function bohman(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a boxcar or rectangular window.
		
		Included for completeness, this is equivalent to no window at all.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    Whether the window is symmetric. (Has no effect for boxcar.)
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1.
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.boxcar(51)
		>>> plt.plot(window)
		>>> plt.title("Boxcar window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the boxcar window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function boxcar(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		B-spline basis function of order n.
		
		Notes
		-----
		Uses numpy.piecewise and automatic function-generator.
	**/
	static public function bspline(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Return (z,p,k) for analog prototype of Nth order Butterworth filter.
		
		The filter will have an angular (e.g. rad/s) cutoff frequency of 1.
	**/
	static public function buttap(N:Dynamic):Dynamic;
	/**
		Butterworth digital and analog filter design.
		
		Design an Nth order digital or analog Butterworth filter and return
		the filter coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For a Butterworth filter, this is the point at which the gain
		    drops to 1/sqrt(2) that of the passband (the "-3 dB point").
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
		buttord
		
		Notes
		-----
		The Butterworth filter has maximally flat frequency response in the
		passband.
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Plot the filter's frequency response, showing the critical points:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.butter(4, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Butterworth filter frequency response')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.axvline(100, color='green') # cutoff frequency
		>>> plt.show()
	**/
	static public function butter(N:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Butterworth filter order selection.
		
		Return the order of the lowest order digital or analog Butterworth filter
		that loses no more than `gpass` dB in the passband and has at least
		`gstop` dB attenuation in the stopband.
		
		Parameters
		----------
		wp, ws : float
		    Passband and stopband edge frequencies.
		    For digital filters, these are normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`wp` and `ws` are thus in
		    half-cycles / sample.)  For example:
		
		        - Lowpass:   wp = 0.2,          ws = 0.3
		        - Highpass:  wp = 0.3,          ws = 0.2
		        - Bandpass:  wp = [0.2, 0.5],   ws = [0.1, 0.6]
		        - Bandstop:  wp = [0.1, 0.6],   ws = [0.2, 0.5]
		
		    For analog filters, `wp` and `ws` are angular frequencies (e.g. rad/s).
		
		gpass : float
		    The maximum loss in the passband (dB).
		gstop : float
		    The minimum attenuation in the stopband (dB).
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		
		Returns
		-------
		ord : int
		    The lowest order for a Butterworth filter which meets specs.
		wn : ndarray or float
		    The Butterworth natural frequency (i.e. the "3dB frequency").  Should
		    be used with `butter` to give filter results.
		
		See Also
		--------
		butter : Filter design using order and critical points
		cheb1ord : Find order and critical points from passband and stopband spec
		cheb2ord, ellipord
		iirfilter : General filter design using order and critical frequencies
		iirdesign : General filter design using passband and stopband spec
		
		Examples
		--------
		Design an analog bandpass filter with passband within 3 dB from 20 to
		50 rad/s, while rejecting at least -40 dB below 14 and above 60 rad/s.
		Plot its frequency response, showing the passband and stopband
		constraints in gray.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> N, Wn = signal.buttord([20, 50], [14, 60], 3, 40, True)
		>>> b, a = signal.butter(N, Wn, 'band', True)
		>>> w, h = signal.freqs(b, a, np.logspace(1, 2, 500))
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Butterworth bandpass filter fit to constraints')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.grid(which='both', axis='both')
		>>> plt.fill([1,  14,  14,   1], [-40, -40, 99, 99], '0.9', lw=0) # stop
		>>> plt.fill([20, 20,  50,  50], [-99, -3, -3, -99], '0.9', lw=0) # pass
		>>> plt.fill([60, 60, 1e9, 1e9], [99, -40, -40, 99], '0.9', lw=0) # stop
		>>> plt.axis([10, 100, -60, 3])
		>>> plt.show()
	**/
	static public function buttord(wp:Dynamic, ws:Dynamic, gpass:Dynamic, gstop:Dynamic, ?analog:Dynamic):Int;
	/**
		Return (x, phi, psi) at dyadic points ``K/2**J`` from filter coefficients.
		
		Parameters
		----------
		hk : array_like
		    Coefficients of low-pass filter.
		J : int, optional
		    Values will be computed at grid points ``K/2**J``. Default is 7.
		
		Returns
		-------
		x : ndarray
		    The dyadic points ``K/2**J`` for ``K=0...N * (2**J)-1`` where
		    ``len(hk) = len(gk) = N+1``.
		phi : ndarray
		    The scaling function ``phi(x)`` at `x`:
		    ``phi(x) = sum(hk * phi(2x-k))``, where k is from 0 to N.
		psi : ndarray, optional
		    The wavelet function ``psi(x)`` at `x`:
		    ``phi(x) = sum(gk * phi(2x-k))``, where k is from 0 to N.
		    `psi` is only returned if `gk` is not None.
		
		Notes
		-----
		The algorithm uses the vector cascade algorithm described by Strang and
		Nguyen in "Wavelets and Filter Banks".  It builds a dictionary of values
		and slices for quick reuse.  Then inserts vectors into final vector at the
		end.
	**/
	static public function cascade(hk:Dynamic, ?J:Dynamic):Dynamic;
	/**
		Return (z,p,k) for Nth order Chebyshev type I analog lowpass filter.
		
		The returned filter prototype has `rp` decibels of ripple in the passband.
		
		The filter's angular (e.g. rad/s) cutoff frequency is normalized to 1,
		defined as the point at which the gain first drops below ``-rp``.
	**/
	static public function cheb1ap(N:Dynamic, rp:Dynamic):Dynamic;
	/**
		Chebyshev type I filter order selection.
		
		Return the order of the lowest order digital or analog Chebyshev Type I
		filter that loses no more than `gpass` dB in the passband and has at
		least `gstop` dB attenuation in the stopband.
		
		Parameters
		----------
		wp, ws : float
		    Passband and stopband edge frequencies.
		    For digital filters, these are normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`wp` and `ws` are thus in
		    half-cycles / sample.)  For example:
		
		        - Lowpass:   wp = 0.2,          ws = 0.3
		        - Highpass:  wp = 0.3,          ws = 0.2
		        - Bandpass:  wp = [0.2, 0.5],   ws = [0.1, 0.6]
		        - Bandstop:  wp = [0.1, 0.6],   ws = [0.2, 0.5]
		
		    For analog filters, `wp` and `ws` are angular frequencies (e.g. rad/s).
		
		gpass : float
		    The maximum loss in the passband (dB).
		gstop : float
		    The minimum attenuation in the stopband (dB).
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		
		Returns
		-------
		ord : int
		    The lowest order for a Chebyshev type I filter that meets specs.
		wn : ndarray or float
		    The Chebyshev natural frequency (the "3dB frequency") for use with
		    `cheby1` to give filter results.
		
		See Also
		--------
		cheby1 : Filter design using order and critical points
		buttord : Find order and critical points from passband and stopband spec
		cheb2ord, ellipord
		iirfilter : General filter design using order and critical frequencies
		iirdesign : General filter design using passband and stopband spec
		
		Examples
		--------
		Design a digital lowpass filter such that the passband is within 3 dB up
		to 0.2*(fs/2), while rejecting at least -40 dB above 0.3*(fs/2).  Plot its
		frequency response, showing the passband and stopband constraints in gray.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> N, Wn = signal.cheb1ord(0.2, 0.3, 3, 40)
		>>> b, a = signal.cheby1(N, 3, Wn, 'low')
		>>> w, h = signal.freqz(b, a)
		>>> plt.semilogx(w / np.pi, 20 * np.log10(abs(h)))
		>>> plt.title('Chebyshev I lowpass filter fit to constraints')
		>>> plt.xlabel('Normalized frequency')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.grid(which='both', axis='both')
		>>> plt.fill([.01, 0.2, 0.2, .01], [-3, -3, -99, -99], '0.9', lw=0) # stop
		>>> plt.fill([0.3, 0.3,   2,   2], [ 9, -40, -40,  9], '0.9', lw=0) # pass
		>>> plt.axis([0.08, 1, -60, 3])
		>>> plt.show()
	**/
	static public function cheb1ord(wp:Dynamic, ws:Dynamic, gpass:Dynamic, gstop:Dynamic, ?analog:Dynamic):Int;
	/**
		Return (z,p,k) for Nth order Chebyshev type I analog lowpass filter.
		
		The returned filter prototype has `rs` decibels of ripple in the stopband.
		
		The filter's angular (e.g. rad/s) cutoff frequency is normalized to 1,
		defined as the point at which the gain first reaches ``-rs``.
	**/
	static public function cheb2ap(N:Dynamic, rs:Dynamic):Dynamic;
	/**
		Chebyshev type II filter order selection.
		
		Return the order of the lowest order digital or analog Chebyshev Type II
		filter that loses no more than `gpass` dB in the passband and has at least
		`gstop` dB attenuation in the stopband.
		
		Parameters
		----------
		wp, ws : float
		    Passband and stopband edge frequencies.
		    For digital filters, these are normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`wp` and `ws` are thus in
		    half-cycles / sample.)  For example:
		
		        - Lowpass:   wp = 0.2,          ws = 0.3
		        - Highpass:  wp = 0.3,          ws = 0.2
		        - Bandpass:  wp = [0.2, 0.5],   ws = [0.1, 0.6]
		        - Bandstop:  wp = [0.1, 0.6],   ws = [0.2, 0.5]
		
		    For analog filters, `wp` and `ws` are angular frequencies (e.g. rad/s).
		
		gpass : float
		    The maximum loss in the passband (dB).
		gstop : float
		    The minimum attenuation in the stopband (dB).
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		
		Returns
		-------
		ord : int
		    The lowest order for a Chebyshev type II filter that meets specs.
		wn : ndarray or float
		    The Chebyshev natural frequency (the "3dB frequency") for use with
		    `cheby2` to give filter results.
		
		See Also
		--------
		cheby2 : Filter design using order and critical points
		buttord : Find order and critical points from passband and stopband spec
		cheb1ord, ellipord
		iirfilter : General filter design using order and critical frequencies
		iirdesign : General filter design using passband and stopband spec
		
		Examples
		--------
		Design a digital bandstop filter which rejects -60 dB from 0.2*(fs/2) to
		0.5*(fs/2), while staying within 3 dB below 0.1*(fs/2) or above
		0.6*(fs/2).  Plot its frequency response, showing the passband and
		stopband constraints in gray.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> N, Wn = signal.cheb2ord([0.1, 0.6], [0.2, 0.5], 3, 60)
		>>> b, a = signal.cheby2(N, 60, Wn, 'stop')
		>>> w, h = signal.freqz(b, a)
		>>> plt.semilogx(w / np.pi, 20 * np.log10(abs(h)))
		>>> plt.title('Chebyshev II bandstop filter fit to constraints')
		>>> plt.xlabel('Normalized frequency')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.grid(which='both', axis='both')
		>>> plt.fill([.01, .1, .1, .01], [-3,  -3, -99, -99], '0.9', lw=0) # stop
		>>> plt.fill([.2,  .2, .5,  .5], [ 9, -60, -60,   9], '0.9', lw=0) # pass
		>>> plt.fill([.6,  .6,  2,   2], [-99, -3,  -3, -99], '0.9', lw=0) # stop
		>>> plt.axis([0.06, 1, -80, 3])
		>>> plt.show()
	**/
	static public function cheb2ord(wp:Dynamic, ws:Dynamic, gpass:Dynamic, gstop:Dynamic, ?analog:Dynamic):Int;
	/**
		Return a Dolph-Chebyshev window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		at : float
		    Attenuation (in dB).
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value always normalized to 1
		
		Notes
		-----
		This window optimizes for the narrowest main lobe width for a given order
		`M` and sidelobe equiripple attenuation `at`, using Chebyshev
		polynomials.  It was originally developed by Dolph to optimize the
		directionality of radio antenna arrays.
		
		Unlike most windows, the Dolph-Chebyshev is defined in terms of its
		frequency response:
		
		.. math:: W(k) = \frac
		          {\cos\{M \cos^{-1}[\beta \cos(\frac{\pi k}{M})]\}}
		          {\cosh[M \cosh^{-1}(\beta)]}
		
		where
		
		.. math:: \beta = \cosh \left [\frac{1}{M}
		          \cosh^{-1}(10^\frac{A}{20}) \right ]
		
		and 0 <= abs(k) <= M-1. A is the attenuation in decibels (`at`).
		
		The time domain window is then generated using the IFFT, so
		power-of-two `M` are the fastest to generate, and prime number `M` are
		the slowest.
		
		The equiripple condition in the frequency domain creates impulses in the
		time domain, which appear at the ends of the window.
		
		References
		----------
		.. [1] C. Dolph, "A current distribution for broadside arrays which
		       optimizes the relationship between beam width and side-lobe level",
		       Proceedings of the IEEE, Vol. 34, Issue 6
		.. [2] Peter Lynch, "The Dolph-Chebyshev Window: A Simple Optimal Filter",
		       American Meteorological Society (April 1997)
		       http://mathsci.ucd.ie/~plynch/Publications/Dolph.pdf
		.. [3] F. J. Harris, "On the use of windows for harmonic analysis with the
		       discrete Fourier transforms", Proceedings of the IEEE, Vol. 66,
		       No. 1, January 1978
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.chebwin(51, at=100)
		>>> plt.plot(window)
		>>> plt.title("Dolph-Chebyshev window (100 dB)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Dolph-Chebyshev window (100 dB)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function chebwin(M:Dynamic, at:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Chebyshev type I digital and analog filter design.
		
		Design an Nth order digital or analog Chebyshev type I filter and
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
		cheb1ord
		
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
		Chebyshev type II digital and analog filter design.
		
		Design an Nth order digital or analog Chebyshev type II filter and
		return the filter coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		rs : float
		    The minimum attenuation required in the stop band.
		    Specified in decibels, as a positive number.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For Type II filters, this is the point in the transition band at which
		    the gain first reaches -`rs`.
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
		cheb2ord
		
		Notes
		-----
		The Chebyshev type II filter maximizes the rate of cutoff between the
		frequency response's passband and stopband, at the expense of ripple in
		the stopband and increased ringing in the step response.
		
		Type II filters do not roll off as fast as Type I (`cheby1`).
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Plot the filter's frequency response, showing the critical points:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.cheby2(4, 40, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Chebyshev Type II frequency response (rs=40)')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.axvline(100, color='green') # cutoff frequency
		>>> plt.axhline(-40, color='green') # rs
		>>> plt.show()
	**/
	static public function cheby2(N:Dynamic, rs:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Frequency-swept cosine generator.
		
		In the following, 'Hz' should be interpreted as 'cycles per unit';
		there is no requirement here that the unit is one second.  The
		important distinction is that the units of rotation are cycles, not
		radians. Likewise, `t` could be a measurement of space instead of time.
		
		Parameters
		----------
		t : array_like
		    Times at which to evaluate the waveform.
		f0 : float
		    Frequency (e.g. Hz) at time t=0.
		t1 : float
		    Time at which `f1` is specified.
		f1 : float
		    Frequency (e.g. Hz) of the waveform at time `t1`.
		method : {'linear', 'quadratic', 'logarithmic', 'hyperbolic'}, optional
		    Kind of frequency sweep.  If not given, `linear` is assumed.  See
		    Notes below for more details.
		phi : float, optional
		    Phase offset, in degrees. Default is 0.
		vertex_zero : bool, optional
		    This parameter is only used when `method` is 'quadratic'.
		    It determines whether the vertex of the parabola that is the graph
		    of the frequency is at t=0 or t=t1.
		
		Returns
		-------
		y : ndarray
		    A numpy array containing the signal evaluated at `t` with the
		    requested time-varying frequency.  More precisely, the function
		    returns ``cos(phase + (pi/180)*phi)`` where `phase` is the integral
		    (from 0 to `t`) of ``2*pi*f(t)``. ``f(t)`` is defined below.
		
		See Also
		--------
		sweep_poly
		
		Notes
		-----
		There are four options for the `method`.  The following formulas give
		the instantaneous frequency (in Hz) of the signal generated by
		`chirp()`.  For convenience, the shorter names shown below may also be
		used.
		
		linear, lin, li:
		
		    ``f(t) = f0 + (f1 - f0) * t / t1``
		
		quadratic, quad, q:
		
		    The graph of the frequency f(t) is a parabola through (0, f0) and
		    (t1, f1).  By default, the vertex of the parabola is at (0, f0).
		    If `vertex_zero` is False, then the vertex is at (t1, f1).  The
		    formula is:
		
		    if vertex_zero is True:
		
		        ``f(t) = f0 + (f1 - f0) * t**2 / t1**2``
		
		    else:
		
		        ``f(t) = f1 - (f1 - f0) * (t1 - t)**2 / t1**2``
		
		    To use a more general quadratic function, or an arbitrary
		    polynomial, use the function `scipy.signal.waveforms.sweep_poly`.
		
		logarithmic, log, lo:
		
		    ``f(t) = f0 * (f1/f0)**(t/t1)``
		
		    f0 and f1 must be nonzero and have the same sign.
		
		    This signal is also known as a geometric or exponential chirp.
		
		hyperbolic, hyp:
		
		    ``f(t) = f0*f1*t1 / ((f0 - f1)*t + f1*t1)``
		
		    f0 and f1 must be nonzero.
	**/
	static public function chirp(t:Dynamic, f0:Dynamic, t1:Dynamic, f1:Dynamic, ?method:Dynamic, ?phi:Dynamic, ?vertex_zero:Dynamic):Dynamic;
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
		Estimate the magnitude squared coherence estimate, Cxy, of discrete-time
		signals X and Y using Welch's method.
		
		Cxy = abs(Pxy)**2/(Pxx*Pyy), where Pxx and Pyy are power spectral density
		estimates of X and Y, and Pxy is the cross spectral density estimate of X
		and Y.
		
		Parameters
		----------
		x : array_like
		    Time series of measurement values
		y : array_like
		    Time series of measurement values
		fs : float, optional
		    Sampling frequency of the `x` and `y` time series. Defaults to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length will be used for nperseg.
		    Defaults to 'hanning'.
		nperseg : int, optional
		    Length of each segment.  Defaults to 256.
		noverlap: int, optional
		    Number of points to overlap between segments. If None,
		    ``noverlap = nperseg // 2``.  Defaults to None.
		nfft : int, optional
		    Length of the FFT used, if a zero padded FFT is desired.  If None,
		    the FFT length is `nperseg`. Defaults to None.
		detrend : str or function or False, optional
		    Specifies how to detrend each segment. If `detrend` is a string,
		    it is passed as the ``type`` argument to `detrend`.  If it is a
		    function, it takes a segment and returns a detrended segment.
		    If `detrend` is False, no detrending is done.  Defaults to 'constant'.
		axis : int, optional
		    Axis along which the coherence is computed for both inputs; the default is
		    over the last axis (i.e. ``axis=-1``).
		
		Returns
		-------
		f : ndarray
		    Array of sample frequencies.
		Cxy : ndarray
		    Magnitude squared coherence of x and y.
		
		See Also
		--------
		periodogram: Simple, optionally modified periodogram
		lombscargle: Lomb-Scargle periodogram for unevenly sampled data
		welch: Power spectral density by Welch's method.
		csd: Cross spectral density by Welch's method.
		
		Notes
		--------
		An appropriate amount of overlap will depend on the choice of window
		and on your requirements.  For the default 'hanning' window an
		overlap of 50\% is a reasonable trade off between accurately estimating
		the signal power, while not over counting any of the data.  Narrower
		windows may require a larger overlap.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] P. Welch, "The use of the fast Fourier transform for the
		       estimation of power spectra: A method based on time averaging
		       over short, modified periodograms", IEEE Trans. Audio
		       Electroacoust. vol. 15, pp. 70-73, 1967.
		.. [2] Stoica, Petre, and Randolph Moses, "Spectral Analysis of Signals"
		       Prentice Hall, 2005
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		Generate two test signals with some common features.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 20
		>>> freq = 1234.0
		>>> noise_power = 0.001 * fs / 2
		>>> time = np.arange(N) / fs
		>>> b, a = signal.butter(2, 0.25, 'low')
		>>> x = np.random.normal(scale=np.sqrt(noise_power), size=time.shape)
		>>> y = signal.lfilter(b, a, x)
		>>> x += amp*np.sin(2*np.pi*freq*time)
		>>> y += np.random.normal(scale=0.1*np.sqrt(noise_power), size=time.shape)
		
		Compute and plot the coherence.
		
		>>> f, Cxy = signal.coherence(x, y, fs, nperseg=1024)
		>>> plt.semilogy(f, Cxy)
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('Coherence')
		>>> plt.show()
	**/
	static public function coherence(x:Dynamic, y:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Transform a continuous to a discrete state-space system.
		
		Parameters
		----------
		sys : a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		       * 2: (num, den)
		       * 3: (zeros, poles, gain)
		       * 4: (A, B, C, D)
		
		dt : float
		    The discretization time step.
		method : {"gbt", "bilinear", "euler", "backward_diff", "zoh"}, optional
		    Which method to use:
		
		       * gbt: generalized bilinear transformation
		       * bilinear: Tustin's approximation ("gbt" with alpha=0.5)
		       * euler: Euler (or forward differencing) method ("gbt" with alpha=0)
		       * backward_diff: Backwards differencing ("gbt" with alpha=1.0)
		       * zoh: zero-order hold (default)
		
		alpha : float within [0, 1], optional
		    The generalized bilinear transformation weighting parameter, which
		    should only be specified with method="gbt", and is ignored otherwise
		
		Returns
		-------
		sysd : tuple containing the discrete system
		    Based on the input type, the output will be of the form
		
		    * (num, den, dt)   for transfer function input
		    * (zeros, poles, gain, dt)   for zeros-poles-gain input
		    * (A, B, C, D, dt) for state-space system input
		
		Notes
		-----
		By default, the routine uses a Zero-Order Hold (zoh) method to perform
		the transformation.  Alternatively, a generalized bilinear transformation
		may be used, which includes the common Tustin's bilinear approximation,
		an Euler's method technique, or a backwards differencing technique.
		
		The Zero-Order Hold (zoh) method is based on [1]_, the generalized bilinear
		approximation is based on [2]_ and [3]_.
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/Discretization#Discretization_of_linear_state_space_models
		
		.. [2] http://techteach.no/publications/discretetime_signals_systems/discrete.pdf
		
		.. [3] G. Zhang, X. Chen, and T. Chen, Digital redesign via the generalized
		    bilinear transformation, Int. J. Control, vol. 82, no. 4, pp. 741-754,
		    2009.
		    (http://www.ece.ualberta.ca/~gfzhang/research/ZCC07_preprint.pdf)
	**/
	static public function cont2discrete(sys:Dynamic, dt:Dynamic, ?method:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Convolve two N-dimensional arrays.
		
		Convolve `in1` and `in2`, with the output size determined by the
		`mode` argument.
		
		Parameters
		----------
		in1 : array_like
		    First input.
		in2 : array_like
		    Second input. Should have the same number of dimensions as `in1`;
		    if sizes of `in1` and `in2` are not equal then `in1` has to be the
		    larger array.
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
		in1, in2 : array_like
		    Two-dimensional input arrays to be convolved.
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
		>>> face = misc.face(gray=True)
		>>> scharr = np.array([[ -3-3j, 0-10j,  +3 -3j],
		...                    [-10+0j, 0+ 0j, +10 +0j],
		...                    [ -3+3j, 0+10j,  +3 +3j]]) # Gx + j*Gy
		>>> grad = signal.convolve2d(face, scharr, boundary='symm', mode='same')
		
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax_orig, ax_mag, ax_ang) = plt.subplots(1, 3)
		>>> ax_orig.imshow(face, cmap='gray')
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
		    Second input. Should have the same number of dimensions as `in1`;
		    if sizes of `in1` and `in2` are not equal then `in1` has to be the
		    larger array.
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
		in1, in2 : array_like
		    Two-dimensional input arrays to be convolved.
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
		>>> fig, (ax_orig, ax_template, ax_corr) = plt.subplots(1, 3)
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
		Return a window with a simple cosine shape.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.cosine(51)
		>>> plt.plot(window)
		>>> plt.title("Cosine window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the cosine window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		>>> plt.show()
	**/
	static public function cosine(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Estimate the cross power spectral density, Pxy, using Welch's method.
		
		Parameters
		----------
		x : array_like
		    Time series of measurement values
		y : array_like
		    Time series of measurement values
		fs : float, optional
		    Sampling frequency of the `x` and `y` time series. Defaults to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length will be used for nperseg.
		    Defaults to 'hanning'.
		nperseg : int, optional
		    Length of each segment.  Defaults to 256.
		noverlap: int, optional
		    Number of points to overlap between segments. If None,
		    ``noverlap = nperseg // 2``.  Defaults to None.
		nfft : int, optional
		    Length of the FFT used, if a zero padded FFT is desired.  If None,
		    the FFT length is `nperseg`. Defaults to None.
		detrend : str or function or False, optional
		    Specifies how to detrend each segment. If `detrend` is a string,
		    it is passed as the ``type`` argument to `detrend`.  If it is a
		    function, it takes a segment and returns a detrended segment.
		    If `detrend` is False, no detrending is done.  Defaults to 'constant'.
		return_onesided : bool, optional
		    If True, return a one-sided spectrum for real data. If False return
		    a two-sided spectrum. Note that for complex data, a two-sided
		    spectrum is always returned.
		scaling : { 'density', 'spectrum' }, optional
		    Selects between computing the cross spectral density ('density')
		    where `Pxy` has units of V**2/Hz and computing the cross spectrum
		    ('spectrum') where `Pxy` has units of V**2, if `x` and `y` are
		    measured in V and fs is measured in Hz.  Defaults to 'density'
		axis : int, optional
		    Axis along which the CSD is computed for both inputs; the default is
		    over the last axis (i.e. ``axis=-1``).
		
		Returns
		-------
		f : ndarray
		    Array of sample frequencies.
		Pxy : ndarray
		    Cross spectral density or cross power spectrum of x,y.
		
		See Also
		--------
		periodogram: Simple, optionally modified periodogram
		lombscargle: Lomb-Scargle periodogram for unevenly sampled data
		welch: Power spectral density by Welch's method. [Equivalent to csd(x,x)]
		coherence: Magnitude squared coherence by Welch's method.
		
		Notes
		--------
		By convention, Pxy is computed with the conjugate FFT of X multiplied by
		the FFT of Y.
		
		If the input series differ in length, the shorter series will be
		zero-padded to match.
		
		An appropriate amount of overlap will depend on the choice of window
		and on your requirements.  For the default 'hanning' window an
		overlap of 50\% is a reasonable trade off between accurately estimating
		the signal power, while not over counting any of the data.  Narrower
		windows may require a larger overlap.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] P. Welch, "The use of the fast Fourier transform for the
		       estimation of power spectra: A method based on time averaging
		       over short, modified periodograms", IEEE Trans. Audio
		       Electroacoust. vol. 15, pp. 70-73, 1967.
		.. [2] Rabiner, Lawrence R., and B. Gold. "Theory and Application of
		       Digital Signal Processing" Prentice-Hall, pp. 414-419, 1975
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		Generate two test signals with some common features.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 20
		>>> freq = 1234.0
		>>> noise_power = 0.001 * fs / 2
		>>> time = np.arange(N) / fs
		>>> b, a = signal.butter(2, 0.25, 'low')
		>>> x = np.random.normal(scale=np.sqrt(noise_power), size=time.shape)
		>>> y = signal.lfilter(b, a, x)
		>>> x += amp*np.sin(2*np.pi*freq*time)
		>>> y += np.random.normal(scale=0.1*np.sqrt(noise_power), size=time.shape)
		
		Compute and plot the magnitude of the cross spectral density.
		
		>>> f, Pxy = signal.csd(x, y, fs, nperseg=1024)
		>>> plt.semilogy(f, np.abs(Pxy))
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('CSD [V**2/Hz]')
		>>> plt.show()
	**/
	static public function csd(x:Dynamic, y:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?scaling:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute cubic spline coefficients for rank-1 array.
		
		Find the cubic spline coefficients for a 1-D signal assuming
		mirror-symmetric boundary conditions.   To obtain the signal back from the
		spline representation mirror-symmetric-convolve these coefficients with a
		length 3 FIR window [1.0, 4.0, 1.0]/ 6.0 .
		
		Parameters
		----------
		signal : ndarray
		    A rank-1 array representing samples of a signal.
		lamb : float, optional
		    Smoothing coefficient, default is 0.0.
		
		Returns
		-------
		c : ndarray
		    Cubic spline coefficients.
	**/
	static public function cspline1d(signal:Dynamic, ?lamb:Dynamic):Dynamic;
	/**
		Evaluate a spline at the new set of points.
		
		`dx` is the old sample-spacing while `x0` was the old origin.  In
		other-words the old-sample points (knot-points) for which the `cj`
		represent spline coefficients were at equally-spaced points of:
		
		  oldx = x0 + j*dx  j=0...N-1, with N=len(cj)
		
		Edges are handled using mirror-symmetric boundary conditions.
	**/
	static public function cspline1d_eval(cj:Dynamic, newx:Dynamic, ?dx:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		cspline2d(input {, lambda, precision}) -> ck
		
		Description:
		
		  Return the third-order B-spline coefficients over a regularly spacedi
		  input grid for the two-dimensional input image.  The lambda argument
		  specifies the amount of smoothing.  The precision argument allows specifying
		  the precision used when computing the infinite sum needed to apply mirror-
		  symmetric boundary conditions.
	**/
	static public function cspline2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A cubic B-spline.
		
		This is a special case of `bspline`, and equivalent to ``bspline(x, 3)``.
	**/
	static public function cubic(x:Dynamic):Dynamic;
	/**
		Continuous wavelet transform.
		
		Performs a continuous wavelet transform on `data`,
		using the `wavelet` function. A CWT performs a convolution
		with `data` using the `wavelet` function, which is characterized
		by a width parameter and length parameter.
		
		Parameters
		----------
		data : (N,) ndarray
		    data on which to perform the transform.
		wavelet : function
		    Wavelet function, which should take 2 arguments.
		    The first argument is the number of points that the returned vector
		    will have (len(wavelet(length,width)) == length).
		    The second is a width parameter, defining the size of the wavelet
		    (e.g. standard deviation of a gaussian). See `ricker`, which
		    satisfies these requirements.
		widths : (M,) sequence
		    Widths to use for transform.
		
		Returns
		-------
		cwt: (M, N) ndarray
		    Will have shape of (len(widths), len(data)).
		
		Notes
		-----
		::
		
		    length = min(10 * width[ii], len(data))
		    cwt[ii,:] = signal.convolve(data, wavelet(length,
		                                width[ii]), mode='same')
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t = np.linspace(-1, 1, 200, endpoint=False)
		>>> sig  = np.cos(2 * np.pi * 7 * t) + signal.gausspulse(t - 0.4, fc=2)
		>>> widths = np.arange(1, 31)
		>>> cwtmatr = signal.cwt(sig, signal.ricker, widths)
		>>> plt.imshow(cwtmatr, extent=[-1, 1, 31, 1], cmap='PRGn', aspect='auto',
		...            vmax=abs(cwtmatr).max(), vmin=-abs(cwtmatr).max())
		>>> plt.show()
	**/
	static public function cwt(data:Dynamic, wavelet:Dynamic, widths:Dynamic):Dynamic;
	/**
		The coefficients for the FIR low-pass filter producing Daubechies wavelets.
		
		p>=1 gives the order of the zero at f=1/2.
		There are 2p filter coefficients.
		
		Parameters
		----------
		p : int
		    Order of the zero at f=1/2, can have values from 1 to 34.
		
		Returns
		-------
		daub : ndarray
		    Return
	**/
	static public function daub(p:Dynamic):Dynamic;
	/**
		Downsample the signal by using a filter.
		
		By default, an order 8 Chebyshev type I filter is used.  A 30 point FIR
		filter with hamming window is used if `ftype` is 'fir'.
		
		Parameters
		----------
		x : ndarray
		    The signal to be downsampled, as an N-dimensional array.
		q : int
		    The downsampling factor.
		n : int, optional
		    The order of the filter (1 less than the length for 'fir').
		ftype : str {'iir', 'fir'}, optional
		    The type of the lowpass filter.
		axis : int, optional
		    The axis along which to decimate.
		
		Returns
		-------
		y : ndarray
		    The down-sampled signal.
		
		See also
		--------
		resample
	**/
	static public function decimate(x:Dynamic, q:Dynamic, ?n:Dynamic, ?ftype:Dynamic, ?axis:Dynamic):Dynamic;
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
	/**
		Impulse response of discrete-time system.
		
		Parameters
		----------
		system : tuple of array_like
		    A tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		      * 3: (num, den, dt)
		      * 4: (zeros, poles, gain, dt)
		      * 5: (A, B, C, D, dt)
		
		x0 : array_like, optional
		    Initial state-vector.  Defaults to zero.
		t : array_like, optional
		    Time points.  Computed if not given.
		n : int, optional
		    The number of time points to compute (if `t` is not given).
		
		Returns
		-------
		tout : ndarray
		    Time values for the output, as a 1-D array.
		yout : ndarray
		    Impulse response of system.  Each element of the tuple represents
		    the output of the system based on an impulse in each input.
		
		See Also
		--------
		impulse, dstep, dlsim, cont2discrete
	**/
	static public function dimpulse(system:Dynamic, ?x0:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Simulate output of a discrete-time linear system.
		
		Parameters
		----------
		system : tuple of array_like
		    A tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		      - 3: (num, den, dt)
		      - 4: (zeros, poles, gain, dt)
		      - 5: (A, B, C, D, dt)
		
		u : array_like
		    An input array describing the input at each time `t` (interpolation is
		    assumed between given times).  If there are multiple inputs, then each
		    column of the rank-2 array represents an input.
		t : array_like, optional
		    The time steps at which the input is defined.  If `t` is given, it
		    must be the same length as `u`, and the final value in `t` determines
		    the number of steps returned in the output.
		x0 : array_like, optional
		    The initial conditions on the state vector (zero by default).
		
		Returns
		-------
		tout : ndarray
		    Time values for the output, as a 1-D array.
		yout : ndarray
		    System response, as a 1-D array.
		xout : ndarray, optional
		    Time-evolution of the state-vector.  Only generated if the input is a
		    state-space systems.
		
		See Also
		--------
		lsim, dstep, dimpulse, cont2discrete
		
		Examples
		--------
		A simple integrator transfer function with a discrete time step of 1.0
		could be implemented as:
		
		>>> from scipy import signal
		>>> tf = ([1.0,], [1.0, -1.0], 1.0)
		>>> t_in = [0.0, 1.0, 2.0, 3.0]
		>>> u = np.asarray([0.0, 0.0, 1.0, 1.0])
		>>> t_out, y = signal.dlsim(tf, u, t=t_in)
		>>> y.T
		array([[ 0.,  0.,  0.,  1.]])
	**/
	static public function dlsim(system:Dynamic, u:Dynamic, ?t:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		Step response of discrete-time system.
		
		Parameters
		----------
		system : tuple of array_like
		    A tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		      * 3: (num, den, dt)
		      * 4: (zeros, poles, gain, dt)
		      * 5: (A, B, C, D, dt)
		
		x0 : array_like, optional
		    Initial state-vector.  Defaults to zero.
		t : array_like, optional
		    Time points.  Computed if not given.
		n : int, optional
		    The number of time points to compute (if `t` is not given).
		
		Returns
		-------
		tout : ndarray
		    Output time points, as a 1-D array.
		yout : ndarray
		    Step response of system.  Each element of the tuple represents
		    the output of the system based on a step response to each input.
		
		See Also
		--------
		step, dimpulse, dlsim, cont2discrete
	**/
	static public function dstep(system:Dynamic, ?x0:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Elliptic (Cauer) digital and analog filter design.
		
		Design an Nth order digital or analog elliptic filter and return
		the filter coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		rp : float
		    The maximum ripple allowed below unity gain in the passband.
		    Specified in decibels, as a positive number.
		rs : float
		    The minimum attenuation required in the stop band.
		    Specified in decibels, as a positive number.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For elliptic filters, this is the point in the transition band at
		    which the gain first drops below -`rp`.
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
		ellipord
		
		Notes
		-----
		Also known as Cauer or Zolotarev filters, the elliptical filter maximizes
		the rate of transition between the frequency response's passband and
		stopband, at the expense of ripple in both, and increased ringing in the
		step response.
		
		As `rp` approaches 0, the elliptical filter becomes a Chebyshev
		type II filter (`cheby2`).  As `rs` approaches 0, it becomes a Chebyshev
		type I filter (`cheby1`).  As both approach 0, it becomes a Butterworth
		filter (`butter`).
		
		The equiripple passband has N maxima or minima (for example, a
		5th-order filter has 3 maxima and 2 minima).  Consequently, the DC gain is
		unity for odd-order filters, or -rp dB for even-order filters.
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Plot the filter's frequency response, showing the critical points:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.ellip(4, 5, 40, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Elliptic filter frequency response (rp=5, rs=40)')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.axvline(100, color='green') # cutoff frequency
		>>> plt.axhline(-40, color='green') # rs
		>>> plt.axhline(-5, color='green') # rp
		>>> plt.show()
	**/
	static public function ellip(N:Dynamic, rp:Dynamic, rs:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Return (z,p,k) of Nth order elliptic analog lowpass filter.
		
		The filter is a normalized prototype that has `rp` decibels of ripple
		in the passband and a stopband `rs` decibels down.
		
		The filter's angular (e.g. rad/s) cutoff frequency is normalized to 1,
		defined as the point at which the gain first drops below ``-rp``.
		
		References
		----------
		Lutova, Tosic, and Evans, "Filter Design for Signal Processing", Chapters 5
		and 12.
	**/
	static public function ellipap(N:Dynamic, rp:Dynamic, rs:Dynamic):Dynamic;
	/**
		Elliptic (Cauer) filter order selection.
		
		Return the order of the lowest order digital or analog elliptic filter
		that loses no more than `gpass` dB in the passband and has at least
		`gstop` dB attenuation in the stopband.
		
		Parameters
		----------
		wp, ws : float
		    Passband and stopband edge frequencies.
		    For digital filters, these are normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`wp` and `ws` are thus in
		    half-cycles / sample.)  For example:
		
		        - Lowpass:   wp = 0.2,          ws = 0.3
		        - Highpass:  wp = 0.3,          ws = 0.2
		        - Bandpass:  wp = [0.2, 0.5],   ws = [0.1, 0.6]
		        - Bandstop:  wp = [0.1, 0.6],   ws = [0.2, 0.5]
		
		    For analog filters, `wp` and `ws` are angular frequencies (e.g. rad/s).
		
		gpass : float
		    The maximum loss in the passband (dB).
		gstop : float
		    The minimum attenuation in the stopband (dB).
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		
		Returns
		-------
		ord : int
		    The lowest order for an Elliptic (Cauer) filter that meets specs.
		wn : ndarray or float
		    The Chebyshev natural frequency (the "3dB frequency") for use with
		    `ellip` to give filter results.
		
		See Also
		--------
		ellip : Filter design using order and critical points
		buttord : Find order and critical points from passband and stopband spec
		cheb1ord, cheb2ord
		iirfilter : General filter design using order and critical frequencies
		iirdesign : General filter design using passband and stopband spec
		
		Examples
		--------
		Design an analog highpass filter such that the passband is within 3 dB
		above 30 rad/s, while rejecting -60 dB at 10 rad/s.  Plot its
		frequency response, showing the passband and stopband constraints in gray.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> N, Wn = signal.ellipord(30, 10, 3, 60, True)
		>>> b, a = signal.ellip(N, 3, 60, Wn, 'high', True)
		>>> w, h = signal.freqs(b, a, np.logspace(0, 3, 500))
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Elliptical highpass filter fit to constraints')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.grid(which='both', axis='both')
		>>> plt.fill([.1, 10,  10,  .1], [1e4, 1e4, -60, -60], '0.9', lw=0) # stop
		>>> plt.fill([30, 30, 1e9, 1e9], [-99,  -3,  -3, -99], '0.9', lw=0) # pass
		>>> plt.axis([1, 300, -80, 3])
		>>> plt.show()
	**/
	static public function ellipord(wp:Dynamic, ws:Dynamic, gpass:Dynamic, gstop:Dynamic, ?analog:Dynamic):Int;
	/**
		Return an exponential (or Poisson) window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		center : float, optional
		    Parameter defining the center location of the window function.
		    The default value if not given is ``center = (M-1) / 2``.  This
		    parameter must take its default value for symmetric windows.
		tau : float, optional
		    Parameter defining the decay.  For ``center = 0`` use
		    ``tau = -(M-1) / ln(x)`` if ``x`` is the fraction of the window
		    remaining at the end.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Exponential window is defined as
		
		.. math::  w(n) = e^{-|n-center| / \tau}
		
		References
		----------
		S. Gade and H. Herlufsen, "Windows to FFT analysis (Part I)",
		Technical Review 3, Bruel & Kjaer, 1987.
		
		Examples
		--------
		Plot the symmetric window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> M = 51
		>>> tau = 3.0
		>>> window = signal.exponential(M, tau=tau)
		>>> plt.plot(window)
		>>> plt.title("Exponential Window (tau=3.0)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -35, 0])
		>>> plt.title("Frequency response of the Exponential window (tau=3.0)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		
		This function can also generate non-symmetric windows:
		
		>>> tau2 = -(M-1) / np.log(0.01)
		>>> window2 = signal.exponential(M, 0, tau2, False)
		>>> plt.figure()
		>>> plt.plot(window2)
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
	**/
	static public function exponential(M:Dynamic, ?center:Dynamic, ?tau:Dynamic, ?sym:Dynamic):Dynamic;
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
		    Second input. Should have the same number of dimensions as `in1`;
		    if sizes of `in1` and `in2` are not equal then `in1` has to be the
		    larger array.
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
		
		>>> fig, (ax_orig, ax_kernel, ax_blurred) = plt.subplots(1, 3)
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
		    The filtered output, an array of type numpy.float64 with the same
		    shape as `x`.
		
		See Also
		--------
		lfilter_zi, lfilter
		
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
		Attempt to find the peaks in a 1-D array.
		
		The general approach is to smooth `vector` by convolving it with
		`wavelet(width)` for each width in `widths`. Relative maxima which
		appear at enough length scales, and with sufficiently high SNR, are
		accepted.
		
		Parameters
		----------
		vector : ndarray
		    1-D array in which to find the peaks.
		widths : sequence
		    1-D array of widths to use for calculating the CWT matrix. In general,
		    this range should cover the expected width of peaks of interest.
		wavelet : callable, optional
		    Should take two parameters and return a 1-D array to convolve
		    with `vector`. The first parameter determines the number of points 
		    of the returned wavelet array, the second parameter is the scale 
		    (`width`) of the wavelet. Should be normalized and symmetric.
		    Default is the ricker wavelet.
		max_distances : ndarray, optional
		    At each row, a ridge line is only connected if the relative max at
		    row[n] is within ``max_distances[n]`` from the relative max at
		    ``row[n+1]``.  Default value is ``widths/4``.
		gap_thresh : float, optional
		    If a relative maximum is not found within `max_distances`,
		    there will be a gap. A ridge line is discontinued if there are more
		    than `gap_thresh` points without connecting a new relative maximum.
		    Default is 2.
		min_length : int, optional
		    Minimum length a ridge line needs to be acceptable.
		    Default is ``cwt.shape[0] / 4``, ie 1/4-th the number of widths.
		min_snr : float, optional
		    Minimum SNR ratio. Default 1. The signal is the value of
		    the cwt matrix at the shortest length scale (``cwt[0, loc]``), the
		    noise is the `noise_perc`th percentile of datapoints contained within a
		    window of `window_size` around ``cwt[0, loc]``.
		noise_perc : float, optional
		    When calculating the noise floor, percentile of data points
		    examined below which to consider noise. Calculated using
		    `stats.scoreatpercentile`.  Default is 10.
		
		Returns
		-------
		peaks_indices : list
		    Indices of the locations in the `vector` where peaks were found.
		    The list is sorted.
		
		See Also
		--------
		cwt
		
		Notes
		-----
		This approach was designed for finding sharp peaks among noisy data,
		however with proper parameter selection it should function well for
		different peak shapes.
		
		The algorithm is as follows:
		 1. Perform a continuous wavelet transform on `vector`, for the supplied
		    `widths`. This is a convolution of `vector` with `wavelet(width)` for
		    each width in `widths`. See `cwt`
		 2. Identify "ridge lines" in the cwt matrix. These are relative maxima
		    at each row, connected across adjacent rows. See identify_ridge_lines
		 3. Filter the ridge_lines using filter_ridge_lines.
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] Bioinformatics (2006) 22 (17): 2059-2065.
		    doi: 10.1093/bioinformatics/btl355
		    http://bioinformatics.oxfordjournals.org/content/22/17/2059.long
		
		Examples
		--------
		>>> from scipy import signal
		>>> xs = np.arange(0, np.pi, 0.05)
		>>> data = np.sin(xs)
		>>> peakind = signal.find_peaks_cwt(data, np.arange(1,10))
		>>> peakind, xs[peakind], data[peakind]
		([32], array([ 1.6]), array([ 0.9995736]))
	**/
	static public function find_peaks_cwt(vector:Dynamic, widths:Dynamic, ?wavelet:Dynamic, ?max_distances:Dynamic, ?gap_thresh:Dynamic, ?min_length:Dynamic, ?min_snr:Dynamic, ?noise_perc:Dynamic):Dynamic;
	/**
		Find an array of frequencies for computing the response of a filter.
		
		Parameters
		----------
		num, den : array_like, 1-D
		    The polynomial coefficients of the numerator and denominator of the
		    transfer function of the filter or LTI system.  The coefficients are
		    ordered from highest to lowest degree.
		N : int
		    The length of the array to be computed.
		
		Returns
		-------
		w : (N,) ndarray
		    A 1-D array of frequencies, logarithmically spaced.
		
		Examples
		--------
		Find a set of nine frequencies that span the "interesting part" of the
		frequency response for the filter with the transfer function
		
		    H(s) = s / (s^2 + 8s + 25)
		
		>>> from scipy import signal
		>>> signal.findfreqs([1, 0], [1, 8, 25], N=9)
		array([  1.00000000e-02,   3.16227766e-02,   1.00000000e-01,
		         3.16227766e-01,   1.00000000e+00,   3.16227766e+00,
		         1.00000000e+01,   3.16227766e+01,   1.00000000e+02])
	**/
	static public function findfreqs(num:Dynamic, den:Dynamic, N:Dynamic):Dynamic;
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
		scipy.signal.firwin2
		
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
		FIR filter design using the window method.
		
		From the given frequencies `freq` and corresponding gains `gain`,
		this function constructs an FIR filter with linear phase and
		(approximately) the given frequency response.
		
		Parameters
		----------
		numtaps : int
		    The number of taps in the FIR filter.  `numtaps` must be less than
		    `nfreqs`.
		freq : array_like, 1D
		    The frequency sampling points. Typically 0.0 to 1.0 with 1.0 being
		    Nyquist.  The Nyquist frequency can be redefined with the argument
		    `nyq`.
		    The values in `freq` must be nondecreasing.  A value can be repeated
		    once to implement a discontinuity.  The first value in `freq` must
		    be 0, and the last value must be `nyq`.
		gain : array_like
		    The filter gains at the frequency sampling points. Certain
		    constraints to gain values, depending on the filter type, are applied,
		    see Notes for details.
		nfreqs : int, optional
		    The size of the interpolation mesh used to construct the filter.
		    For most efficient behavior, this should be a power of 2 plus 1
		    (e.g, 129, 257, etc).  The default is one more than the smallest
		    power of 2 that is not less than `numtaps`.  `nfreqs` must be greater
		    than `numtaps`.
		window : string or (string, float) or float, or None, optional
		    Window function to use. Default is "hamming".  See
		    `scipy.signal.get_window` for the complete list of possible values.
		    If None, no window function is applied.
		nyq : float, optional
		    Nyquist frequency.  Each frequency in `freq` must be between 0 and
		    `nyq` (inclusive).
		antisymmetric : bool, optional
		    Whether resulting impulse response is symmetric/antisymmetric.
		    See Notes for more details.
		
		Returns
		-------
		taps : ndarray
		    The filter coefficients of the FIR filter, as a 1-D array of length
		    `numtaps`.
		
		See also
		--------
		scipy.signal.firwin
		
		Notes
		-----
		From the given set of frequencies and gains, the desired response is
		constructed in the frequency domain.  The inverse FFT is applied to the
		desired response to create the associated convolution kernel, and the
		first `numtaps` coefficients of this kernel, scaled by `window`, are
		returned.
		
		The FIR filter will have linear phase. The type of filter is determined by
		the value of 'numtaps` and `antisymmetric` flag.
		There are four possible combinations:
		
		   - odd  `numtaps`, `antisymmetric` is False, type I filter is produced
		   - even `numtaps`, `antisymmetric` is False, type II filter is produced
		   - odd  `numtaps`, `antisymmetric` is True, type III filter is produced
		   - even `numtaps`, `antisymmetric` is True, type IV filter is produced
		
		Magnitude response of all but type I filters are subjects to following
		constraints:
		
		   - type II  -- zero at the Nyquist frequency
		   - type III -- zero at zero and Nyquist frequencies
		   - type IV  -- zero at zero frequency
		
		.. versionadded:: 0.9.0
		
		References
		----------
		.. [1] Oppenheim, A. V. and Schafer, R. W., "Discrete-Time Signal
		   Processing", Prentice-Hall, Englewood Cliffs, New Jersey (1989).
		   (See, for example, Section 7.4.)
		
		.. [2] Smith, Steven W., "The Scientist and Engineer's Guide to Digital
		   Signal Processing", Ch. 17. http://www.dspguide.com/ch17/1.htm
		
		Examples
		--------
		A lowpass FIR filter with a response that is 1 on [0.0, 0.5], and
		that decreases linearly on [0.5, 1.0] from 1 to 0:
		
		>>> from scipy import signal
		>>> taps = signal.firwin2(150, [0.0, 0.5, 1.0], [1.0, 1.0, 0.0])
		>>> print(taps[72:78])
		[-0.02286961 -0.06362756  0.57310236  0.57310236 -0.06362756 -0.02286961]
	**/
	static public function firwin2(numtaps:Dynamic, freq:Dynamic, gain:Dynamic, ?nfreqs:Dynamic, ?window:Dynamic, ?nyq:Dynamic, ?antisymmetric:Dynamic):Dynamic;
	/**
		Return a flat top window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.flattop(51)
		>>> plt.plot(window)
		>>> plt.title("Flat top window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the flat top window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function flattop(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Calculate the frequency response of a continuous-time system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		w : array_like, optional
		    Array of frequencies (in rad/s). Magnitude and phase data is
		    calculated for every value in this array. If not given a reasonable
		    set will be calculated.
		n : int, optional
		    Number of frequency points to compute if `w` is not given. The `n`
		    frequencies are logarithmically spaced in an interval chosen to
		    include the influence of the poles and zeros of the system.
		
		Returns
		-------
		w : 1D ndarray
		    Frequency array [rad/s]
		H : 1D ndarray
		    Array of complex magnitude values
		
		Examples
		--------
		# Generating the Nyquist plot of a transfer function
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> s1 = signal.lti([], [1, 1, 1], [5])
		# transfer function: H(s) = 5 / (s-1)^3
		
		>>> w, H = signal.freqresp(s1)
		
		>>> plt.figure()
		>>> plt.plot(H.real, H.imag, "b")
		>>> plt.plot(H.real, -H.imag, "r")
		>>> plt.show()
	**/
	static public function freqresp(system:Dynamic, ?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Compute frequency response of analog filter.
		
		Given the numerator `b` and denominator `a` of a filter, compute its
		frequency response::
		
		         b[0]*(jw)**(nb-1) + b[1]*(jw)**(nb-2) + ... + b[nb-1]
		 H(w) = -------------------------------------------------------
		         a[0]*(jw)**(na-1) + a[1]*(jw)**(na-2) + ... + a[na-1]
		
		Parameters
		----------
		b : ndarray
		    Numerator of a linear filter.
		a : ndarray
		    Denominator of a linear filter.
		worN : {None, int}, optional
		    If None, then compute at 200 frequencies around the interesting parts
		    of the response curve (determined by pole-zero locations).  If a single
		    integer, then compute at that many frequencies.  Otherwise, compute the
		    response at the angular frequencies (e.g. rad/s) given in `worN`.
		plot : callable, optional
		    A callable that takes two arguments. If given, the return parameters
		    `w` and `h` are passed to plot. Useful for plotting the frequency
		    response inside `freqs`.
		
		Returns
		-------
		w : ndarray
		    The angular frequencies at which h was computed.
		h : ndarray
		    The frequency response.
		
		See Also
		--------
		freqz : Compute the frequency response of a digital filter.
		
		Notes
		-----
		Using Matplotlib's "plot" function as the callable for `plot` produces
		unexpected results,  this plots the real part of the complex transfer
		function, not the magnitude.  Try ``lambda w, h: plot(w, abs(h))``.
		
		Examples
		--------
		>>> from scipy.signal import freqs, iirfilter
		
		>>> b, a = iirfilter(4, [1, 10], 1, 60, analog=True, ftype='cheby1')
		
		>>> w, h = freqs(b, a, worN=np.logspace(-1, 2, 1000))
		
		>>> import matplotlib.pyplot as plt
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.xlabel('Frequency')
		>>> plt.ylabel('Amplitude response [dB]')
		>>> plt.grid()
		>>> plt.show()
	**/
	static public function freqs(b:Dynamic, a:Dynamic, ?worN:Dynamic, ?plot:Dynamic):Dynamic;
	/**
		Compute the frequency response of a digital filter.
		
		Given the numerator `b` and denominator `a` of a digital filter,
		compute its frequency response::
		
		           jw               -jw            -jmw
		    jw  B(e)    b[0] + b[1]e + .... + b[m]e
		 H(e) = ---- = ------------------------------------
		           jw               -jw            -jnw
		        A(e)    a[0] + a[1]e + .... + a[n]e
		
		Parameters
		----------
		b : ndarray
		    numerator of a linear filter
		a : ndarray
		    denominator of a linear filter
		worN : {None, int, array_like}, optional
		    If None (default), then compute at 512 frequencies equally spaced
		    around the unit circle.
		    If a single integer, then compute at that many frequencies.
		    If an array_like, compute the response at the frequencies given (in
		    radians/sample).
		whole : bool, optional
		    Normally, frequencies are computed from 0 to the Nyquist frequency,
		    pi radians/sample (upper-half of unit-circle).  If `whole` is True,
		    compute frequencies from 0 to 2*pi radians/sample.
		plot : callable
		    A callable that takes two arguments. If given, the return parameters
		    `w` and `h` are passed to plot. Useful for plotting the frequency
		    response inside `freqz`.
		
		Returns
		-------
		w : ndarray
		    The normalized frequencies at which h was computed, in radians/sample.
		h : ndarray
		    The frequency response.
		
		Notes
		-----
		Using Matplotlib's "plot" function as the callable for `plot` produces
		unexpected results,  this plots the real part of the complex transfer
		function, not the magnitude.  Try ``lambda w, h: plot(w, abs(h))``.
		
		Examples
		--------
		>>> from scipy import signal
		>>> b = signal.firwin(80, 0.5, window=('kaiser', 8))
		>>> w, h = signal.freqz(b)
		
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.title('Digital filter frequency response')
		>>> ax1 = fig.add_subplot(111)
		
		>>> plt.plot(w, 20 * np.log10(abs(h)), 'b')
		>>> plt.ylabel('Amplitude [dB]', color='b')
		>>> plt.xlabel('Frequency [rad/sample]')
		
		>>> ax2 = ax1.twinx()
		>>> angles = np.unwrap(np.angle(h))
		>>> plt.plot(w, angles, 'g')
		>>> plt.ylabel('Angle (radians)', color='g')
		>>> plt.grid()
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function freqz(b:Dynamic, ?a:Dynamic, ?worN:Dynamic, ?whole:Dynamic, ?plot:Dynamic):Dynamic;
	/**
		Gaussian approximation to B-spline basis function of order n.
		    
	**/
	static public function gauss_spline(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Return a Gaussian window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		std : float
		    The standard deviation, sigma.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Gaussian window is defined as
		
		.. math::  w(n) = e^{ -\frac{1}{2}\left(\frac{n}{\sigma}\right)^2 }
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.gaussian(51, std=7)
		>>> plt.plot(window)
		>>> plt.title(r"Gaussian window ($\sigma$=7)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title(r"Frequency response of the Gaussian window ($\sigma$=7)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function gaussian(M:Dynamic, std:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Gaussian modulated sinusoid:
		
		    ``exp(-a t^2) exp(1j*2*pi*fc*t).``
		
		If `retquad` is True, then return the real and imaginary parts
		(in-phase and quadrature).
		If `retenv` is True, then return the envelope (unmodulated signal).
		Otherwise, return the real part of the modulated sinusoid.
		
		Parameters
		----------
		t : ndarray or the string 'cutoff'
		    Input array.
		fc : int, optional
		    Center frequency (e.g. Hz).  Default is 1000.
		bw : float, optional
		    Fractional bandwidth in frequency domain of pulse (e.g. Hz).
		    Default is 0.5.
		bwr : float, optional
		    Reference level at which fractional bandwidth is calculated (dB).
		    Default is -6.
		tpr : float, optional
		    If `t` is 'cutoff', then the function returns the cutoff
		    time for when the pulse amplitude falls below `tpr` (in dB).
		    Default is -60.
		retquad : bool, optional
		    If True, return the quadrature (imaginary) as well as the real part
		    of the signal.  Default is False.
		retenv : bool, optional
		    If True, return the envelope of the signal.  Default is False.
		
		Returns
		-------
		yI : ndarray
		    Real part of signal.  Always returned.
		yQ : ndarray
		    Imaginary part of signal.  Only returned if `retquad` is True.
		yenv : ndarray
		    Envelope of signal.  Only returned if `retenv` is True.
		
		See Also
		--------
		scipy.signal.morlet
		
		Examples
		--------
		Plot real component, imaginary component, and envelope for a 5 Hz pulse,
		sampled at 100 Hz for 2 seconds:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t = np.linspace(-1, 1, 2 * 100, endpoint=False)
		>>> i, q, e = signal.gausspulse(t, fc=5, retquad=True, retenv=True)
		>>> plt.plot(t, i, t, q, t, e, '--')
	**/
	static public function gausspulse(t:Dynamic, ?fc:Dynamic, ?bw:Dynamic, ?bwr:Dynamic, ?tpr:Dynamic, ?retquad:Dynamic, ?retenv:Dynamic):Dynamic;
	/**
		Return a window with a generalized Gaussian shape.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		p : float
		    Shape parameter.  p = 1 is identical to `gaussian`, p = 0.5 is
		    the same shape as the Laplace distribution.
		sig : float
		    The standard deviation, sigma.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The generalized Gaussian window is defined as
		
		.. math::  w(n) = e^{ -\frac{1}{2}\left|\frac{n}{\sigma}\right|^{2p} }
		
		the half-power point is at
		
		.. math::  (2 \log(2))^{1/(2 p)} \sigma
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.general_gaussian(51, p=1.5, sig=7)
		>>> plt.plot(window)
		>>> plt.title(r"Generalized Gaussian window (p=1.5, $\sigma$=7)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title(r"Freq. resp. of the gen. Gaussian window (p=1.5, $\sigma$=7)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function general_gaussian(M:Dynamic, p:Dynamic, sig:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a window.
		
		Parameters
		----------
		window : string, float, or tuple
		    The type of window to create. See below for more details.
		Nx : int
		    The number of samples in the window.
		fftbins : bool, optional
		    If True, create a "periodic" window ready to use with `ifftshift`
		    and be multiplied by the result of an fft (SEE ALSO `fftfreq`).
		
		Returns
		-------
		get_window : ndarray
		    Returns a window of length `Nx` and type `window`
		
		Notes
		-----
		Window types:
		
		    boxcar, triang, blackman, hamming, hann, bartlett, flattop, parzen,
		    bohman, blackmanharris, nuttall, barthann, kaiser (needs beta),
		    gaussian (needs std), general_gaussian (needs power, width),
		    slepian (needs width), chebwin (needs attenuation)
		    exponential (needs decay scale), tukey (needs taper fraction)
		
		If the window requires no parameters, then `window` can be a string.
		
		If the window requires parameters, then `window` must be a tuple
		with the first argument the string name of the window, and the next
		arguments the needed parameters.
		
		If `window` is a floating point number, it is interpreted as the beta
		parameter of the kaiser window.
		
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
		Compute the group delay of a digital filter.
		
		The group delay measures by how many samples amplitude envelopes of
		various spectral components of a signal are delayed by a filter.
		It is formally defined as the derivative of continuous (unwrapped) phase::
		
		           d        jw
		 D(w) = - -- arg H(e)
		          dw
		
		Parameters
		----------
		system : tuple of array_like (b, a)
		    Numerator and denominator coefficients of a filter transfer function.
		w : {None, int, array-like}, optional
		    If None (default), then compute at 512 frequencies equally spaced
		    around the unit circle.
		    If a single integer, then compute at that many frequencies.
		    If array, compute the delay at the frequencies given
		    (in radians/sample).
		whole : bool, optional
		    Normally, frequencies are computed from 0 to the Nyquist frequency,
		    pi radians/sample (upper-half of unit-circle).  If `whole` is True,
		    compute frequencies from 0 to ``2*pi`` radians/sample.
		
		Returns
		-------
		w : ndarray
		    The normalized frequencies at which the group delay was computed,
		    in radians/sample.
		gd : ndarray
		    The group delay.
		
		Notes
		-----
		The similar function in MATLAB is called `grpdelay`.
		
		If the transfer function :math:`H(z)` has zeros or poles on the unit
		circle, the group delay at corresponding frequencies is undefined.
		When such a case arises the warning is raised and the group delay
		is set to 0 at those frequencies.
		
		For the details of numerical computation of the group delay refer to [1]_.
		
		.. versionadded: 0.16.0
		
		See Also
		--------
		freqz : Frequency response of a digital filter
		
		References
		----------
		.. [1] Richard G. Lyons, "Understanding Digital Signal Processing,
		       3rd edition", p. 830.
		
		Examples
		--------
		>>> from scipy import signal
		>>> b, a = signal.iirdesign(0.1, 0.3, 5, 50, ftype='cheby1')
		>>> w, gd = signal.group_delay((b, a))
		
		>>> import matplotlib.pyplot as plt
		>>> plt.title('Digital filter group delay')
		>>> plt.plot(w, gd)
		>>> plt.ylabel('Group delay [samples]')
		>>> plt.xlabel('Frequency [rad/sample]')
		>>> plt.show()
	**/
	static public function group_delay(system:Dynamic, ?w:Dynamic, ?whole:Dynamic):Dynamic;
	/**
		Return a Hamming window.
		
		The Hamming window is a taper formed by using a raised cosine with
		non-zero endpoints, optimized to minimize the nearest side lobe.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Hamming window is defined as
		
		.. math::  w(n) = 0.54 - 0.46 \cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The Hamming was named for R. W. Hamming, an associate of J. W. Tukey and
		is described in Blackman and Tukey. It was recommended for smoothing the
		truncated autocovariance function in the time domain.
		Most references to the Hamming window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics", The
		       University of Alberta Press, 1975, pp. 109-110.
		.. [3] Wikipedia, "Window function",
		       http://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.hamming(51)
		>>> plt.plot(window)
		>>> plt.title("Hamming window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Hamming window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function hamming(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Hann window.
		
		The Hann window is a taper formed by using a raised cosine or sine-squared
		with ends that touch zero.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Hann window is defined as
		
		.. math::  w(n) = 0.5 - 0.5 \cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The window was named for Julius von Hann, an Austrian meteorologist. It is
		also known as the Cosine Bell. It is sometimes erroneously referred to as
		the "Hanning" window, from the use of "hann" as a verb in the original
		paper and confusion with the very similar Hamming window.
		
		Most references to the Hann window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
		       The University of Alberta Press, 1975, pp. 106-108.
		.. [3] Wikipedia, "Window function",
		       http://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.hann(51)
		>>> plt.plot(window)
		>>> plt.title("Hann window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Hann window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function hann(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Hann window.
		
		The Hann window is a taper formed by using a raised cosine or sine-squared
		with ends that touch zero.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Hann window is defined as
		
		.. math::  w(n) = 0.5 - 0.5 \cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The window was named for Julius von Hann, an Austrian meteorologist. It is
		also known as the Cosine Bell. It is sometimes erroneously referred to as
		the "Hanning" window, from the use of "hann" as a verb in the original
		paper and confusion with the very similar Hamming window.
		
		Most references to the Hann window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
		       The University of Alberta Press, 1975, pp. 106-108.
		.. [3] Wikipedia, "Window function",
		       http://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.hann(51)
		>>> plt.plot(window)
		>>> plt.title("Hann window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Hann window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function hanning(M:Dynamic, ?sym:Dynamic):Dynamic;
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
		Complete IIR digital and analog filter design.
		
		Given passband and stopband frequencies and gains, construct an analog or
		digital IIR filter of minimum order for a given basic type.  Return the
		output in numerator, denominator ('ba'), pole-zero ('zpk') or second order
		sections ('sos') form.
		
		Parameters
		----------
		wp, ws : float
		    Passband and stopband edge frequencies.
		    For digital filters, these are normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`wp` and `ws` are thus in
		    half-cycles / sample.)  For example:
		
		        - Lowpass:   wp = 0.2,          ws = 0.3
		        - Highpass:  wp = 0.3,          ws = 0.2
		        - Bandpass:  wp = [0.2, 0.5],   ws = [0.1, 0.6]
		        - Bandstop:  wp = [0.1, 0.6],   ws = [0.2, 0.5]
		
		    For analog filters, `wp` and `ws` are angular frequencies (e.g. rad/s).
		
		gpass : float
		    The maximum loss in the passband (dB).
		gstop : float
		    The minimum attenuation in the stopband (dB).
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		ftype : str, optional
		    The type of IIR filter to design:
		
		        - Butterworth   : 'butter'
		        - Chebyshev I   : 'cheby1'
		        - Chebyshev II  : 'cheby2'
		        - Cauer/elliptic: 'ellip'
		        - Bessel/Thomson: 'bessel'
		
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
		butter : Filter design using order and critical points
		cheby1, cheby2, ellip, bessel
		buttord : Find order and critical points from passband and stopband spec
		cheb1ord, cheb2ord, ellipord
		iirfilter : General filter design using order and critical frequencies
		
		Notes
		-----
		The ``'sos'`` output parameter was added in 0.16.0.
	**/
	static public function iirdesign(wp:Dynamic, ws:Dynamic, gpass:Dynamic, gstop:Dynamic, ?analog:Dynamic, ?ftype:Dynamic, ?output:Dynamic):Dynamic;
	/**
		IIR digital and analog filter design given order and critical points.
		
		Design an Nth order digital or analog filter and return the filter
		coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For digital filters, `Wn` is normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`Wn` is thus in
		    half-cycles / sample.)
		    For analog filters, `Wn` is an angular frequency (e.g. rad/s).
		rp : float, optional
		    For Chebyshev and elliptic filters, provides the maximum ripple
		    in the passband. (dB)
		rs : float, optional
		    For Chebyshev and elliptic filters, provides the minimum attenuation
		    in the stop band. (dB)
		btype : {'bandpass', 'lowpass', 'highpass', 'bandstop'}, optional
		    The type of filter.  Default is 'bandpass'.
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		ftype : str, optional
		    The type of IIR filter to design:
		
		        - Butterworth   : 'butter'
		        - Chebyshev I   : 'cheby1'
		        - Chebyshev II  : 'cheby2'
		        - Cauer/elliptic: 'ellip'
		        - Bessel/Thomson: 'bessel'
		
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
		butter : Filter design using order and critical points
		cheby1, cheby2, ellip, bessel
		buttord : Find order and critical points from passband and stopband spec
		cheb1ord, cheb2ord, ellipord
		iirdesign : General filter design using passband and stopband spec
		
		Notes
		-----
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Generate a 17th-order Chebyshev II bandpass filter and plot the frequency
		response:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.iirfilter(17, [50, 200], rs=60, btype='band',
		...                         analog=True, ftype='cheby2')
		>>> w, h = signal.freqs(b, a, 1000)
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.semilogx(w, 20 * np.log10(abs(h)))
		>>> ax.set_title('Chebyshev Type II bandpass frequency response')
		>>> ax.set_xlabel('Frequency [radians / second]')
		>>> ax.set_ylabel('Amplitude [dB]')
		>>> ax.axis((10, 1000, -100, 10))
		>>> ax.grid(which='both', axis='both')
		>>> plt.show()
	**/
	static public function iirfilter(N:Dynamic, Wn:Dynamic, ?rp:Dynamic, ?rs:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?ftype:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Impulse response of continuous-time system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple of array_like
		    describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		X0 : array_like, optional
		    Initial state-vector.  Defaults to zero.
		T : array_like, optional
		    Time points.  Computed if not given.
		N : int, optional
		    The number of time points to compute (if `T` is not given).
		
		Returns
		-------
		T : ndarray
		    A 1-D array of time points.
		yout : ndarray
		    A 1-D array containing the impulse response of the system (except for
		    singularities at zero).
	**/
	static public function impulse(system:Dynamic, ?X0:Dynamic, ?T:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Impulse response of a single-input, continuous-time linear system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple of array_like
		    describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		X0 : 1-D array_like, optional
		    The initial condition of the state vector.  Default: 0 (the
		    zero vector).
		T : 1-D array_like, optional
		    The time steps at which the input is defined and at which the
		    output is desired.  If `T` is not given, the function will
		    generate a set of time samples automatically.
		N : int, optional
		    Number of time points to compute.  Default: 100.
		kwargs : various types
		    Additional keyword arguments are passed on to the function
		    `scipy.signal.lsim2`, which in turn passes them on to
		    `scipy.integrate.odeint`; see the latter's documentation for
		    information about these arguments.
		
		Returns
		-------
		T : ndarray
		    The time values for the output.
		yout : ndarray
		    The output response of the system.
		
		See Also
		--------
		impulse, lsim2, integrate.odeint
		
		Notes
		-----
		The solution is generated by calling `scipy.signal.lsim2`, which uses
		the differential equation solver `scipy.integrate.odeint`.
		
		.. versionadded:: 0.8.0
		
		Examples
		--------
		Second order system with a repeated root: x''(t) + 2*x(t) + x(t) = u(t)
		
		>>> from scipy import signal
		>>> system = ([1.0], [1.0, 2.0, 1.0])
		>>> t, y = signal.impulse2(system)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(t, y)
	**/
	static public function impulse2(system:Dynamic, ?X0:Dynamic, ?T:Dynamic, ?N:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute b(s) and a(s) from partial fraction expansion.
		
		If ``M = len(b)`` and ``N = len(a)``::
		
		            b(s)     b[0] x**(M-1) + b[1] x**(M-2) + ... + b[M-1]
		    H(s) = ------ = ----------------------------------------------
		            a(s)     a[0] x**(N-1) + a[1] x**(N-2) + ... + a[N-1]
		
		             r[0]       r[1]             r[-1]
		         = -------- + -------- + ... + --------- + k(s)
		           (s-p[0])   (s-p[1])         (s-p[-1])
		
		If there are any repeated roots (closer than tol), then the partial
		fraction expansion has terms like::
		
		      r[i]      r[i+1]              r[i+n-1]
		    -------- + ----------- + ... + -----------
		    (s-p[i])  (s-p[i])**2          (s-p[i])**n
		
		Parameters
		----------
		r : ndarray
		    Residues.
		p : ndarray
		    Poles.
		k : ndarray
		    Coefficients of the direct polynomial term.
		tol : float, optional
		    The tolerance for two roots to be considered equal. Default is 1e-3.
		rtype : {'max', 'min, 'avg'}, optional
		    How to determine the returned root if multiple roots are within
		    `tol` of each other.
		
		      'max': pick the maximum of those roots.
		
		      'min': pick the minimum of those roots.
		
		      'avg': take the average of those roots.
		
		See Also
		--------
		residue, unique_roots
	**/
	static public function invres(r:Dynamic, p:Dynamic, k:Dynamic, ?tol:Dynamic, ?rtype:Dynamic):Dynamic;
	/**
		Compute b(z) and a(z) from partial fraction expansion.
		
		If ``M = len(b)`` and ``N = len(a)``::
		
		            b(z)     b[0] + b[1] z**(-1) + ... + b[M-1] z**(-M+1)
		    H(z) = ------ = ----------------------------------------------
		            a(z)     a[0] + a[1] z**(-1) + ... + a[N-1] z**(-N+1)
		
		                 r[0]                   r[-1]
		         = --------------- + ... + ---------------- + k[0] + k[1]z**(-1)...
		           (1-p[0]z**(-1))         (1-p[-1]z**(-1))
		
		If there are any repeated roots (closer than tol), then the partial
		fraction expansion has terms like::
		
		         r[i]              r[i+1]                    r[i+n-1]
		    -------------- + ------------------ + ... + ------------------
		    (1-p[i]z**(-1))  (1-p[i]z**(-1))**2         (1-p[i]z**(-1))**n
		
		See Also
		--------
		residuez, unique_roots, invres
	**/
	static public function invresz(r:Dynamic, p:Dynamic, k:Dynamic, ?tol:Dynamic, ?rtype:Dynamic):Dynamic;
	/**
		Return a Kaiser window.
		
		The Kaiser window is a taper formed by using a Bessel function.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		beta : float
		    Shape parameter, determines trade-off between main-lobe width and
		    side lobe level. As beta gets large, the window narrows.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Kaiser window is defined as
		
		.. math::  w(n) = I_0\left( \beta \sqrt{1-\frac{4n^2}{(M-1)^2}}
		           \right)/I_0(\beta)
		
		with
		
		.. math:: \quad -\frac{M-1}{2} \leq n \leq \frac{M-1}{2},
		
		where :math:`I_0` is the modified zeroth-order Bessel function.
		
		The Kaiser was named for Jim Kaiser, who discovered a simple approximation
		to the DPSS window based on Bessel functions.
		The Kaiser window is a very good approximation to the Digital Prolate
		Spheroidal Sequence, or Slepian window, which is the transform which
		maximizes the energy in the main lobe of the window relative to total
		energy.
		
		The Kaiser can approximate many other windows by varying the beta
		parameter.
		
		====  =======================
		beta  Window shape
		====  =======================
		0     Rectangular
		5     Similar to a Hamming
		6     Similar to a Hann
		8.6   Similar to a Blackman
		====  =======================
		
		A beta value of 14 is probably a good starting point. Note that as beta
		gets large, the window narrows, and so the number of samples needs to be
		large enough to sample the increasingly narrow spike, otherwise NaNs will
		get returned.
		
		Most references to the Kaiser window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] J. F. Kaiser, "Digital Filters" - Ch 7 in "Systems analysis by
		       digital computer", Editors: F.F. Kuo and J.F. Kaiser, p 218-285.
		       John Wiley and Sons, New York, (1966).
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics", The
		       University of Alberta Press, 1975, pp. 177-178.
		.. [3] Wikipedia, "Window function",
		       http://en.wikipedia.org/wiki/Window_function
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.kaiser(51, beta=14)
		>>> plt.plot(window)
		>>> plt.title(r"Kaiser window ($\beta$=14)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title(r"Frequency response of the Kaiser window ($\beta$=14)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function kaiser(M:Dynamic, beta:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Compute the attenuation of a Kaiser FIR filter.
		
		Given the number of taps `N` and the transition width `width`, compute the
		attenuation `a` in dB, given by Kaiser's formula:
		
		    a = 2.285 * (N - 1) * pi * width + 7.95
		
		Parameters
		----------
		numtaps : int
		    The number of taps in the FIR filter.
		width : float
		    The desired width of the transition region between passband and
		    stopband (or, in general, at any discontinuity) for the filter.
		
		Returns
		-------
		a : float
		    The attenuation of the ripple, in dB.
		
		See Also
		--------
		kaiserord, kaiser_beta
	**/
	static public function kaiser_atten(numtaps:Dynamic, width:Dynamic):Float;
	/**
		Compute the Kaiser parameter `beta`, given the attenuation `a`.
		
		Parameters
		----------
		a : float
		    The desired attenuation in the stopband and maximum ripple in
		    the passband, in dB.  This should be a *positive* number.
		
		Returns
		-------
		beta : float
		    The `beta` parameter to be used in the formula for a Kaiser window.
		
		References
		----------
		Oppenheim, Schafer, "Discrete-Time Signal Processing", p.475-476.
	**/
	static public function kaiser_beta(a:Dynamic):Float;
	/**
		Design a Kaiser window to limit ripple and width of transition region.
		
		Parameters
		----------
		ripple : float
		    Positive number specifying maximum ripple in passband (dB) and minimum
		    ripple in stopband.
		width : float
		    Width of transition region (normalized so that 1 corresponds to pi
		    radians / sample).
		
		Returns
		-------
		numtaps : int
		    The length of the kaiser window.
		beta : float
		    The beta parameter for the kaiser window.
		
		See Also
		--------
		kaiser_beta, kaiser_atten
		
		Notes
		-----
		There are several ways to obtain the Kaiser window:
		
		- ``signal.kaiser(numtaps, beta, sym=0)``
		- ``signal.get_window(beta, numtaps)``
		- ``signal.get_window(('kaiser', beta), numtaps)``
		
		The empirical equations discovered by Kaiser are used.
		
		References
		----------
		Oppenheim, Schafer, "Discrete-Time Signal Processing", p.475-476.
	**/
	static public function kaiserord(ripple:Dynamic, width:Dynamic):Int;
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
		    ``max(len(a),len(b))-1``.  If `zi` is None or is not given then
		    initial rest is assumed.  See `lfiltic` for more information.
		
		Returns
		-------
		y : array
		    The output of the digital filter.
		zf : array, optional
		    If `zi` is None, this is not returned, otherwise, `zf` holds the
		    final filter delay values.
		
		Notes
		-----
		The filter function is implemented as a direct II transposed structure.
		This means that the filter implements::
		
		   a[0]*y[n] = b[0]*x[n] + b[1]*x[n-1] + ... + b[nb]*x[n-nb]
		                           - a[1]*y[n-1] - ... - a[na]*y[n-na]
		
		using the following difference equations::
		
		     y[m] = b[0]*x[m] + z[0,m-1]
		     z[0,m] = b[1]*x[m] + z[1,m-1] - a[1]*y[m]
		     ...
		     z[n-3,m] = b[n-2]*x[m] + z[n-2,m-1] - a[n-2]*y[m]
		     z[n-2,m] = b[n-1]*x[m] - a[n-1]*y[m]
		
		where m is the output sample number and n=max(len(a),len(b)) is the
		model order.
		
		The rational transfer function describing this filter in the
		z-transform domain is::
		
		                         -1               -nb
		             b[0] + b[1]z  + ... + b[nb] z
		     Y(z) = ---------------------------------- X(z)
		                         -1               -na
		             a[0] + a[1]z  + ... + a[na] z
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
		
		    If ``N=len(a) - 1``, then ``y = {y[-1], y[-2], ..., y[-N]}``.
		
		    If `y` is too short, it is padded with zeros.
		x : array_like, optional
		    Initial conditions.
		
		    If ``M=len(b) - 1``, then ``x = {x[-1], x[-2], ..., x[-M]}``.
		
		    If `x` is not given, its initial conditions are assumed zero.
		
		    If `x` is too short, it is padded with zeros.
		
		Returns
		-------
		zi : ndarray
		    The state vector ``zi``.
		    ``zi = {z_0[-1], z_1[-1], ..., z_K-1[-1]}``, where ``K = max(M,N)``.
		
		See Also
		--------
		lfilter
	**/
	static public function lfiltic(b:Dynamic, a:Dynamic, y:Dynamic, ?x:Dynamic):Dynamic;
	/**
		lombscargle(x, y, freqs)
		
		Computes the Lomb-Scargle periodogram.
		
		The Lomb-Scargle periodogram was developed by Lomb [1]_ and further
		extended by Scargle [2]_ to find, and test the significance of weak
		periodic signals with uneven temporal sampling.
		
		The computed periodogram is unnormalized, it takes the value
		``(A**2) * N/4`` for a harmonic signal with amplitude A for sufficiently
		large N.
		
		Parameters
		----------
		x : array_like
		    Sample times.
		y : array_like
		    Measurement values.
		freqs : array_like
		    Angular frequencies for output periodogram.
		
		Returns
		-------
		pgram : array_like
		    Lomb-Scargle periodogram.
		
		Raises
		------
		ValueError
		    If the input arrays `x` and `y` do not have the same shape.
		
		Notes
		-----
		This subroutine calculates the periodogram using a slightly
		modified algorithm due to Townsend [3]_ which allows the
		periodogram to be calculated using only a single pass through
		the input arrays for each frequency.
		
		The algorithm running time scales roughly as O(x * freqs) or O(N^2)
		for a large number of samples and frequencies.
		
		References
		----------
		.. [1] N.R. Lomb "Least-squares frequency analysis of unequally spaced
		       data", Astrophysics and Space Science, vol 39, pp. 447-462, 1976
		
		.. [2] J.D. Scargle "Studies in astronomical time series analysis. II - 
		       Statistical aspects of spectral analysis of unevenly spaced data",
		       The Astrophysical Journal, vol 263, pp. 835-853, 1982
		
		.. [3] R.H.D. Townsend, "Fast calculation of the Lomb-Scargle
		       periodogram using graphics processing units.", The Astrophysical
		       Journal Supplement Series, vol 191, pp. 247-253, 2010
		
		Examples
		--------
		>>> import scipy.signal
		>>> import matplotlib.pyplot as plt
		
		First define some input parameters for the signal:
		
		>>> A = 2.
		>>> w = 1.
		>>> phi = 0.5 * np.pi
		>>> nin = 1000
		>>> nout = 100000
		>>> frac_points = 0.9 # Fraction of points to select
		 
		Randomly select a fraction of an array with timesteps:
		
		>>> r = np.random.rand(nin)
		>>> x = np.linspace(0.01, 10*np.pi, nin)
		>>> x = x[r >= frac_points]
		>>> normval = x.shape[0] # For normalization of the periodogram
		 
		Plot a sine wave for the selected times:
		
		>>> y = A * np.sin(w*x+phi)
		
		Define the array of frequencies for which to compute the periodogram:
		
		>>> f = np.linspace(0.01, 10, nout)
		 
		Calculate Lomb-Scargle periodogram:
		
		>>> import scipy.signal as signal
		>>> pgram = signal.lombscargle(x, y, f)
		
		Now make a plot of the input data:
		
		>>> plt.subplot(2, 1, 1)
		<matplotlib.axes.AxesSubplot object at 0x102154f50>
		>>> plt.plot(x, y, 'b+')
		[<matplotlib.lines.Line2D object at 0x102154a10>]
		
		Then plot the normalized periodogram:
		
		>>> plt.subplot(2, 1, 2)
		<matplotlib.axes.AxesSubplot object at 0x104b0a990>
		>>> plt.plot(f, np.sqrt(4*(pgram/normval)))
		[<matplotlib.lines.Line2D object at 0x104b2f910>]
		>>> plt.show()
	**/
	static public function lombscargle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Transform a lowpass filter prototype to a bandpass filter.
		
		Return an analog band-pass filter with center frequency `wo` and
		bandwidth `bw` from an analog low-pass filter prototype with unity
		cutoff frequency, in transfer function ('ba') representation.
	**/
	static public function lp2bp(b:Dynamic, a:Dynamic, ?wo:Dynamic, ?bw:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a bandstop filter.
		
		Return an analog band-stop filter with center frequency `wo` and
		bandwidth `bw` from an analog low-pass filter prototype with unity
		cutoff frequency, in transfer function ('ba') representation.
	**/
	static public function lp2bs(b:Dynamic, a:Dynamic, ?wo:Dynamic, ?bw:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a highpass filter.
		
		Return an analog high-pass filter with cutoff frequency `wo`
		from an analog low-pass filter prototype with unity cutoff frequency, in
		transfer function ('ba') representation.
	**/
	static public function lp2hp(b:Dynamic, a:Dynamic, ?wo:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a different frequency.
		
		Return an analog low-pass filter with cutoff frequency `wo`
		from an analog low-pass filter prototype with unity cutoff frequency, in
		transfer function ('ba') representation.
	**/
	static public function lp2lp(b:Dynamic, a:Dynamic, ?wo:Dynamic):Dynamic;
	/**
		Simulate output of a continuous-time linear system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		    * 2: (num, den)
		    * 3: (zeros, poles, gain)
		    * 4: (A, B, C, D)
		
		U : array_like
		    An input array describing the input at each time `T`
		    (interpolation is assumed between given times).  If there are
		    multiple inputs, then each column of the rank-2 array
		    represents an input.  If U = 0 or None, a zero input is used.
		T : array_like
		    The time steps at which the input is defined and at which the
		    output is desired.  Must be nonnegative, increasing, and equally spaced.
		X0 : array_like, optional
		    The initial conditions on the state vector (zero by default).
		interp : bool, optional
		    Whether to use linear (True, the default) or zero-order-hold (False)
		    interpolation for the input array.
		
		Returns
		-------
		T : 1D ndarray
		    Time values for the output.
		yout : 1D ndarray
		    System response.
		xout : ndarray
		    Time evolution of the state vector.
		
		Examples
		--------
		Simulate a double integrator y'' = u, with a constant input u = 1
		
		>>> from scipy import signal
		>>> system = signal.lti([[0., 1.], [0., 0.]], [[0.], [1.]], [[1., 0.]], 0.)
		>>> t = np.linspace(0, 5)
		>>> u = np.ones_like(t)
		>>> tout, y, x = signal.lsim(system, u, t)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(t, y)
	**/
	static public function lsim(system:Dynamic, U:Dynamic, T:Dynamic, ?X0:Dynamic, ?interp:Dynamic):Dynamic;
	/**
		Simulate output of a continuous-time linear system, by using
		the ODE solver `scipy.integrate.odeint`.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		    * 2: (num, den)
		    * 3: (zeros, poles, gain)
		    * 4: (A, B, C, D)
		
		U : array_like (1D or 2D), optional
		    An input array describing the input at each time T.  Linear
		    interpolation is used between given times.  If there are
		    multiple inputs, then each column of the rank-2 array
		    represents an input.  If U is not given, the input is assumed
		    to be zero.
		T : array_like (1D or 2D), optional
		    The time steps at which the input is defined and at which the
		    output is desired.  The default is 101 evenly spaced points on
		    the interval [0,10.0].
		X0 : array_like (1D), optional
		    The initial condition of the state vector.  If `X0` is not
		    given, the initial conditions are assumed to be 0.
		kwargs : dict
		    Additional keyword arguments are passed on to the function
		    `odeint`.  See the notes below for more details.
		
		Returns
		-------
		T : 1D ndarray
		    The time values for the output.
		yout : ndarray
		    The response of the system.
		xout : ndarray
		    The time-evolution of the state-vector.
		
		Notes
		-----
		This function uses `scipy.integrate.odeint` to solve the
		system's differential equations.  Additional keyword arguments
		given to `lsim2` are passed on to `odeint`.  See the documentation
		for `scipy.integrate.odeint` for the full list of arguments.
	**/
	static public function lsim2(system:Dynamic, ?U:Dynamic, ?T:Dynamic, ?X0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Maximum length sequence (MLS) generator.
		
		Parameters
		----------
		nbits : int
		    Number of bits to use. Length of the resulting sequence will
		    be ``(2**nbits) - 1``. Note that generating long sequences
		    (e.g., greater than ``nbits == 16``) can take a long time.
		state : array_like, optional
		    If array, must be of length ``nbits``, and will be cast to binary
		    (bool) representation. If None, a seed of ones will be used,
		    producing a repeatable representation. If ``state`` is all
		    zeros, an error is raised as this is invalid. Default: None.
		length : int | None, optional
		    Number of samples to compute. If None, the entire length
		    ``(2**nbits) - 1`` is computed.
		taps : array_like, optional
		    Polynomial taps to use (e.g., ``[7, 6, 1]`` for an 8-bit sequence).
		    If None, taps will be automatically selected (for up to
		    ``nbits == 32``).
		
		Returns
		-------
		seq : array
		    Resulting MLS sequence of 0's and 1's.
		state : array
		    The final state of the shift register.
		
		Notes
		-----
		The algorithm for MLS generation is generically described in:
		
		    https://en.wikipedia.org/wiki/Maximum_length_sequence
		
		The default values for taps are specifically taken from the first
		option listed for each value of ``nbits`` in:
		
		    http://www.newwaveinstruments.com/resources/articles/
		        m_sequence_linear_feedback_shift_register_lfsr.htm
		
		.. versionadded:: 0.15.0
	**/
	static public function max_len_seq(nbits:Dynamic, ?state:Dynamic, ?length:Dynamic, ?taps:Dynamic):Dynamic;
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
	/**
		Complex Morlet wavelet.
		
		Parameters
		----------
		M : int
		    Length of the wavelet.
		w : float, optional
		    Omega0. Default is 5
		s : float, optional
		    Scaling factor, windowed from ``-s*2*pi`` to ``+s*2*pi``. Default is 1.
		complete : bool, optional
		    Whether to use the complete or the standard version.
		
		Returns
		-------
		morlet : (M,) ndarray
		
		See Also
		--------
		scipy.signal.gausspulse
		
		Notes
		-----
		The standard version::
		
		    pi**-0.25 * exp(1j*w*x) * exp(-0.5*(x**2))
		
		This commonly used wavelet is often referred to simply as the
		Morlet wavelet.  Note that this simplified version can cause
		admissibility problems at low values of w.
		
		The complete version::
		
		    pi**-0.25 * (exp(1j*w*x) - exp(-0.5*(w**2))) * exp(-0.5*(x**2))
		
		The complete version of the Morlet wavelet, with a correction
		term to improve admissibility. For w greater than 5, the
		correction term is negligible.
		
		Note that the energy of the return wavelet is not normalised
		according to s.
		
		The fundamental frequency of this wavelet in Hz is given
		by ``f = 2*s*w*r / M`` where r is the sampling rate.
	**/
	static public function morlet(M:Dynamic, ?w:Dynamic, ?s:Dynamic, ?complete:Dynamic):Dynamic;
	/**
		Normalize polynomial representation of a transfer function.
		
		If values of `b` are too close to 0, they are removed. In that case, a
		BadCoefficients warning is emitted.
	**/
	static public function normalize(b:Dynamic, a:Dynamic):Dynamic;
	/**
		Return a minimum 4-term Blackman-Harris window according to Nuttall.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.nuttall(51)
		>>> plt.plot(window)
		>>> plt.title("Nuttall window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Nuttall window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function nuttall(M:Dynamic, ?sym:Dynamic):Dynamic;
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
		    A mask array with the same number of dimensions as `in`.
		    Each dimension should have an odd number of elements.
		rank : int
		    A non-negative integer which selects the element from the
		    sorted list (0 corresponds to the smallest element, 1 is the
		    next smallest element, etc.).
		
		Returns
		-------
		out : ndarray
		    The results of the order filter in an array with the same
		    shape as `in`.
		
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
		Return a Parzen window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.parzen(51)
		>>> plt.plot(window)
		>>> plt.title("Parzen window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Parzen window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function parzen(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Estimate power spectral density using a periodogram.
		
		Parameters
		----------
		x : array_like
		    Time series of measurement values
		fs : float, optional
		    Sampling frequency of the `x` time series. Defaults to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. See `get_window` for a list of windows and
		    required parameters. If `window` is an array it will be used
		    directly as the window. Defaults to None; equivalent to 'boxcar'.
		nfft : int, optional
		    Length of the FFT used. If None the length of `x` will be used.
		detrend : str or function or False, optional
		    Specifies how to detrend `x` prior to computing the spectrum. If
		    `detrend` is a string, it is passed as the ``type`` argument to
		    `detrend`.  If it is a function, it should return a detrended array.
		    If `detrend` is False, no detrending is done.  Defaults to 'constant'.
		return_onesided : bool, optional
		    If True, return a one-sided spectrum for real data. If False return
		    a two-sided spectrum. Note that for complex data, a two-sided
		    spectrum is always returned.
		scaling : { 'density', 'spectrum' }, optional
		    Selects between computing the power spectral density ('density')
		    where `Pxx` has units of V**2/Hz and computing the power spectrum
		    ('spectrum') where `Pxx` has units of V**2, if `x` is measured in V
		    and fs is measured in Hz.  Defaults to 'density'
		axis : int, optional
		    Axis along which the periodogram is computed; the default is over
		    the last axis (i.e. ``axis=-1``).
		
		Returns
		-------
		f : ndarray
		    Array of sample frequencies.
		Pxx : ndarray
		    Power spectral density or power spectrum of `x`.
		
		Notes
		-----
		.. versionadded:: 0.12.0
		
		See Also
		--------
		welch: Estimate power spectral density using Welch's method
		lombscargle: Lomb-Scargle periodogram for unevenly sampled data
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> np.random.seed(1234)
		
		Generate a test signal, a 2 Vrms sine wave at 1234 Hz, corrupted by
		0.001 V**2/Hz of white noise sampled at 10 kHz.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 2*np.sqrt(2)
		>>> freq = 1234.0
		>>> noise_power = 0.001 * fs / 2
		>>> time = np.arange(N) / fs
		>>> x = amp*np.sin(2*np.pi*freq*time)
		>>> x += np.random.normal(scale=np.sqrt(noise_power), size=time.shape)
		
		Compute and plot the power spectral density.
		
		>>> f, Pxx_den = signal.periodogram(x, fs)
		>>> plt.semilogy(f, Pxx_den)
		>>> plt.ylim([1e-7, 1e2])
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('PSD [V**2/Hz]')
		>>> plt.show()
		
		If we average the last half of the spectral density, to exclude the
		peak, we can recover the noise power on the signal.
		
		>>> np.mean(Pxx_den[256:])
		0.0018156616014838548
		
		Now compute and plot the power spectrum.
		
		>>> f, Pxx_spec = signal.periodogram(x, fs, 'flattop', scaling='spectrum')
		>>> plt.figure()
		>>> plt.semilogy(f, np.sqrt(Pxx_spec))
		>>> plt.ylim([1e-4, 1e1])
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('Linear spectrum [V RMS]')
		>>> plt.show()
		
		The peak height in the power spectrum is an estimate of the RMS amplitude.
		
		>>> np.sqrt(Pxx_spec.max())
		2.0077340678640727
	**/
	static public function periodogram(x:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?scaling:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute K such that eigenvalues (A - dot(B, K))=poles.
		
		K is the gain matrix such as the plant described by the linear system
		``AX+BU`` will have its closed-loop poles, i.e the eigenvalues ``A - B*K``,
		as close as possible to those asked for in poles.
		
		SISO, MISO and MIMO systems are supported.
		
		Parameters
		----------
		A, B : ndarray
		    State-space representation of linear system ``AX + BU``.
		poles : array_like
		    Desired real poles and/or complex conjugates poles.
		    Complex poles are only supported with ``method="YT"`` (default).
		method: {'YT', 'KNV0'}, optional
		    Which method to choose to find the gain matrix K. One of:
		
		        - 'YT': Yang Tits
		        - 'KNV0': Kautsky, Nichols, Van Dooren update method 0
		
		    See References and Notes for details on the algorithms.
		rtol: float, optional
		    After each iteration the determinant of the eigenvectors of
		    ``A - B*K`` is compared to its previous value, when the relative
		    error between these two values becomes lower than `rtol` the algorithm
		    stops.  Default is 1e-3.
		maxiter: int, optional
		    Maximum number of iterations to compute the gain matrix.
		    Default is 30.
		
		Returns
		-------
		full_state_feedback : Bunch object
		    full_state_feedback is composed of:
		        gain_matrix : 1-D ndarray
		            The closed loop matrix K such as the eigenvalues of ``A-BK``
		            are as close as possible to the requested poles.
		        computed_poles : 1-D ndarray
		            The poles corresponding to ``A-BK`` sorted as first the real
		            poles in increasing order, then the complex congugates in
		            lexicographic order.
		        requested_poles : 1-D ndarray
		            The poles the algorithm was asked to place sorted as above,
		            they may differ from what was achieved.
		        X : 2-D ndarray
		            The transfer matrix such as ``X * diag(poles) = (A - B*K)*X``
		            (see Notes)
		        rtol : float
		            The relative tolerance achieved on ``det(X)`` (see Notes).
		            `rtol` will be NaN if it is possible to solve the system
		            ``diag(poles) = (A - B*K)``, or 0 when the optimization
		            algorithms can't do anything i.e when ``B.shape[1] == 1``.
		        nb_iter : int
		            The number of iterations performed before converging.
		            `nb_iter` will be NaN if it is possible to solve the system
		            ``diag(poles) = (A - B*K)``, or 0 when the optimization
		            algorithms can't do anything i.e when ``B.shape[1] == 1``.
		
		Notes
		-----
		The Tits and Yang (YT), [2]_ paper is an update of the original Kautsky et
		al. (KNV) paper [1]_.  KNV relies on rank-1 updates to find the transfer
		matrix X such that ``X * diag(poles) = (A - B*K)*X``, whereas YT uses
		rank-2 updates. This yields on average more robust solutions (see [2]_
		pp 21-22), furthermore the YT algorithm supports complex poles whereas KNV
		does not in its original version.  Only update method 0 proposed by KNV has
		been implemented here, hence the name ``'KNV0'``.
		
		KNV extended to complex poles is used in Matlab's ``place`` function, YT is
		distributed under a non-free licence by Slicot under the name ``robpole``.
		It is unclear and undocumented how KNV0 has been extended to complex poles
		(Tits and Yang claim on page 14 of their paper that their method can not be
		used to extend KNV to complex poles), therefore only YT supports them in
		this implementation.
		
		As the solution to the problem of pole placement is not unique for MIMO
		systems, both methods start with a tentative transfer matrix which is
		altered in various way to increase its determinant.  Both methods have been
		proven to converge to a stable solution, however depending on the way the
		initial transfer matrix is chosen they will converge to different
		solutions and therefore there is absolutely no guarantee that using
		``'KNV0'`` will yield results similar to Matlab's or any other
		implementation of these algorithms.
		
		Using the default method ``'YT'`` should be fine in most cases; ``'KNV0'``
		is only provided because it is needed by ``'YT'`` in some specific cases.
		Furthermore ``'YT'`` gives on average more robust results than ``'KNV0'``
		when ``abs(det(X))`` is used as a robustness indicator.
		
		[2]_ is available as a technical report on the following URL:
		http://drum.lib.umd.edu/handle/1903/5598
		
		References
		----------
		.. [1] J. Kautsky, N.K. Nichols and P. van Dooren, "Robust pole assignment
		       in linear state feedback", International Journal of Control, Vol. 41
		       pp. 1129-1155, 1985.
		.. [2] A.L. Tits and Y. Yang, "Globally convergent algorithms for robust
		       pole assignment by state feedback, IEEE Transactions on Automatic
		       Control, Vol. 41, pp. 1432-1452, 1996.
		
		Examples
		--------
		A simple example demonstrating real pole placement using both KNV and YT
		algorithms.  This is example number 1 from section 4 of the reference KNV
		publication ([1]_):
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> A = np.array([[ 1.380,  -0.2077,  6.715, -5.676  ],
		...               [-0.5814, -4.290,   0,      0.6750 ],
		...               [ 1.067,   4.273,  -6.654,  5.893  ],
		...               [ 0.0480,  4.273,   1.343, -2.104  ]])
		>>> B = np.array([[ 0,      5.679 ],
		...               [ 1.136,  1.136 ],
		...               [ 0,      0,    ],
		...               [-3.146,  0     ]])
		>>> P = np.array([-0.2, -0.5, -5.0566, -8.6659])
		
		Now compute K with KNV method 0, with the default YT method and with the YT
		method while forcing 100 iterations of the algorithm and print some results
		after each call.
		
		>>> fsf1 = signal.place_poles(A, B, P, method='KNV0')
		>>> fsf1.gain_matrix
		array([[ 0.20071427, -0.96665799,  0.24066128, -0.10279785],
		       [ 0.50587268,  0.57779091,  0.51795763, -0.41991442]])
		
		>>> fsf2 = signal.place_poles(A, B, P)  # uses YT method
		>>> fsf2.computed_poles
		array([-8.6659, -5.0566, -0.5   , -0.2   ])
		
		>>> fsf3 = signal.place_poles(A, B, P, rtol=-1, maxiter=100)
		>>> fsf3.X
		array([[ 0.52072442+0.j, -0.08409372+0.j, -0.56847937+0.j,  0.74823657+0.j],
		       [-0.04977751+0.j, -0.80872954+0.j,  0.13566234+0.j, -0.29322906+0.j],
		       [-0.82266932+0.j, -0.19168026+0.j, -0.56348322+0.j, -0.43815060+0.j],
		       [ 0.22267347+0.j,  0.54967577+0.j, -0.58387806+0.j, -0.40271926+0.j]])
		
		The absolute value of the determinant of X is a good indicator to check the
		robustness of the results, both ``'KNV0'`` and ``'YT'`` aim at maximizing
		it.  Below a comparison of the robustness of the results above:
		
		>>> abs(np.linalg.det(fsf1.X)) < abs(np.linalg.det(fsf2.X))
		True
		>>> abs(np.linalg.det(fsf2.X)) < abs(np.linalg.det(fsf3.X))
		True
		
		Now a simple example for complex poles:
		
		>>> A = np.array([[ 0,  7/3.,  0,   0   ],
		...               [ 0,   0,    0,  7/9. ],
		...               [ 0,   0,    0,   0   ],
		...               [ 0,   0,    0,   0   ]])
		>>> B = np.array([[ 0,  0 ],
		...               [ 0,  0 ],
		...               [ 1,  0 ],
		...               [ 0,  1 ]])
		>>> P = np.array([-3, -1, -2-1j, -2+1j]) / 3.
		>>> fsf = signal.place_poles(A, B, P, method='YT')
		
		We can plot the desired and computed poles in the complex plane:
		
		>>> t = np.linspace(0, 2*np.pi, 401)
		>>> plt.plot(np.cos(t), np.sin(t), 'k--')  # unit circle
		>>> plt.plot(fsf.requested_poles.real, fsf.requested_poles.imag,
		...          'wo', label='Desired')
		>>> plt.plot(fsf.computed_poles.real, fsf.computed_poles.imag, 'bx',
		...          label='Placed')
		>>> plt.grid()
		>>> plt.axis('image')
		>>> plt.axis([-1.1, 1.1, -1.1, 1.1])
		>>> plt.legend(bbox_to_anchor=(1.05, 1), loc=2, numpoints=1)
	**/
	static public function place_poles(A:Dynamic, B:Dynamic, poles:Dynamic, ?method:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return high-pass qmf filter from low-pass
		
		Parameters
		----------
		hk : array_like
		    Coefficients of high-pass filter.
	**/
	static public function qmf(hk:Dynamic):Dynamic;
	/**
		Compute quadratic spline coefficients for rank-1 array.
		
		Find the quadratic spline coefficients for a 1-D signal assuming
		mirror-symmetric boundary conditions.   To obtain the signal back from the
		spline representation mirror-symmetric-convolve these coefficients with a
		length 3 FIR window [1.0, 6.0, 1.0]/ 8.0 .
		
		Parameters
		----------
		signal : ndarray
		    A rank-1 array representing samples of a signal.
		lamb : float, optional
		    Smoothing coefficient (must be zero for now).
		
		Returns
		-------
		c : ndarray
		    Cubic spline coefficients.
	**/
	static public function qspline1d(signal:Dynamic, ?lamb:Dynamic):Dynamic;
	/**
		Evaluate a quadratic spline at the new set of points.
		
		`dx` is the old sample-spacing while `x0` was the old origin.  In
		other-words the old-sample points (knot-points) for which the `cj`
		represent spline coefficients were at equally-spaced points of::
		
		  oldx = x0 + j*dx  j=0...N-1, with N=len(cj)
		
		Edges are handled using mirror-symmetric boundary conditions.
	**/
	static public function qspline1d_eval(cj:Dynamic, newx:Dynamic, ?dx:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		qspline2d(input {, lambda, precision}) -> qk
		
		Description:
		
		  Return the second-order B-spline coefficients over a regularly spaced
		  input grid for the two-dimensional input image.  The lambda argument
		  specifies the amount of smoothing.  The precision argument allows specifying
		  the precision used when computing the infinite sum needed to apply mirror-
		  symmetric boundary conditions.
	**/
	static public function qspline2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A quadratic B-spline.
		
		This is a special case of `bspline`, and equivalent to ``bspline(x, 2)``.
	**/
	static public function quadratic(x:Dynamic):Dynamic;
	/**
		Calculate the minimax optimal filter using the Remez exchange algorithm.
		
		Calculate the filter-coefficients for the finite impulse response
		(FIR) filter whose transfer function minimizes the maximum error
		between the desired gain and the realized gain in the specified
		frequency bands using the Remez exchange algorithm.
		
		Parameters
		----------
		numtaps : int
		    The desired number of taps in the filter. The number of taps is
		    the number of terms in the filter, or the filter order plus one.
		bands : array_like
		    A monotonic sequence containing the band edges in Hz.
		    All elements must be non-negative and less than half the sampling
		    frequency as given by `Hz`.
		desired : array_like
		    A sequence half the size of bands containing the desired gain
		    in each of the specified bands.
		weight : array_like, optional
		    A relative weighting to give to each band region. The length of
		    `weight` has to be half the length of `bands`.
		Hz : scalar, optional
		    The sampling frequency in Hz. Default is 1.
		type : {'bandpass', 'differentiator', 'hilbert'}, optional
		    The type of filter:
		
		      'bandpass' : flat response in bands. This is the default.
		
		      'differentiator' : frequency proportional response in bands.
		
		      'hilbert' : filter with odd symmetry, that is, type III
		                  (for even order) or type IV (for odd order)
		                  linear phase filters.
		
		maxiter : int, optional
		    Maximum number of iterations of the algorithm. Default is 25.
		grid_density : int, optional
		    Grid density. The dense grid used in `remez` is of size
		    ``(numtaps + 1) * grid_density``. Default is 16.
		
		Returns
		-------
		out : ndarray
		    A rank-1 array containing the coefficients of the optimal
		    (in a minimax sense) filter.
		
		See Also
		--------
		freqz : Compute the frequency response of a digital filter.
		
		References
		----------
		.. [1] J. H. McClellan and T. W. Parks, "A unified approach to the
		       design of optimum FIR linear phase digital filters",
		       IEEE Trans. Circuit Theory, vol. CT-20, pp. 697-701, 1973.
		.. [2] J. H. McClellan, T. W. Parks and L. R. Rabiner, "A Computer
		       Program for Designing Optimum FIR Linear Phase Digital
		       Filters", IEEE Trans. Audio Electroacoust., vol. AU-21,
		       pp. 506-525, 1973.
		
		Examples
		--------
		We want to construct a filter with a passband at 0.2-0.4 Hz, and
		stop bands at 0-0.1 Hz and 0.45-0.5 Hz. Note that this means that the
		behavior in the frequency ranges between those bands is unspecified and
		may overshoot.
		
		>>> from scipy import signal
		>>> bpass = signal.remez(72, [0, 0.1, 0.2, 0.4, 0.45, 0.5], [0, 1, 0])
		>>> freq, response = signal.freqz(bpass)
		>>> ampl = np.abs(response)
		
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> ax1 = fig.add_subplot(111)
		>>> ax1.semilogy(freq/(2*np.pi), ampl, 'b-')  # freq in Hz
		>>> plt.show()
	**/
	static public function remez(numtaps:Dynamic, bands:Dynamic, desired:Dynamic, ?weight:Dynamic, ?Hz:Dynamic, ?type:Dynamic, ?maxiter:Dynamic, ?grid_density:Dynamic):Dynamic;
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
		Compute partial-fraction expansion of b(s) / a(s).
		
		If ``M = len(b)`` and ``N = len(a)``, then the partial-fraction
		expansion H(s) is defined as::
		
		          b(s)     b[0] s**(M-1) + b[1] s**(M-2) + ... + b[M-1]
		  H(s) = ------ = ----------------------------------------------
		          a(s)     a[0] s**(N-1) + a[1] s**(N-2) + ... + a[N-1]
		
		           r[0]       r[1]             r[-1]
		       = -------- + -------- + ... + --------- + k(s)
		         (s-p[0])   (s-p[1])         (s-p[-1])
		
		If there are any repeated roots (closer together than `tol`), then H(s)
		has terms like::
		
		        r[i]      r[i+1]              r[i+n-1]
		      -------- + ----------- + ... + -----------
		      (s-p[i])  (s-p[i])**2          (s-p[i])**n
		
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
		invres, numpy.poly, unique_roots
	**/
	static public function residue(b:Dynamic, a:Dynamic, ?tol:Dynamic, ?rtype:Dynamic):Dynamic;
	/**
		Compute partial-fraction expansion of b(z) / a(z).
		
		If ``M = len(b)`` and ``N = len(a)``::
		
		            b(z)     b[0] + b[1] z**(-1) + ... + b[M-1] z**(-M+1)
		    H(z) = ------ = ----------------------------------------------
		            a(z)     a[0] + a[1] z**(-1) + ... + a[N-1] z**(-N+1)
		
		             r[0]                   r[-1]
		     = --------------- + ... + ---------------- + k[0] + k[1]z**(-1) ...
		       (1-p[0]z**(-1))         (1-p[-1]z**(-1))
		
		If there are any repeated roots (closer than tol), then the partial
		fraction expansion has terms like::
		
		         r[i]              r[i+1]                    r[i+n-1]
		    -------------- + ------------------ + ... + ------------------
		    (1-p[i]z**(-1))  (1-p[i]z**(-1))**2         (1-p[i]z**(-1))**n
		
		See also
		--------
		invresz, unique_roots
	**/
	static public function residuez(b:Dynamic, a:Dynamic, ?tol:Dynamic, ?rtype:Dynamic):Dynamic;
	/**
		Return a Ricker wavelet, also known as the "Mexican hat wavelet".
		
		It models the function:
		
		    ``A (1 - x^2/a^2) exp(-x^2/2 a^2)``,
		
		where ``A = 2/sqrt(3a)pi^1/4``.
		
		Parameters
		----------
		points : int
		    Number of points in `vector`.
		    Will be centered around 0.
		a : scalar
		    Width parameter of the wavelet.
		
		Returns
		-------
		vector : (N,) ndarray
		    Array of length `points` in shape of ricker curve.
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> points = 100
		>>> a = 4.0
		>>> vec2 = signal.ricker(points, a)
		>>> print(len(vec2))
		100
		>>> plt.plot(vec2)
		>>> plt.show()
	**/
	static public function ricker(points:Dynamic, a:Dynamic):Dynamic;
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
	/**
		Return a periodic sawtooth or triangle waveform.
		
		The sawtooth waveform has a period ``2*pi``, rises from -1 to 1 on the
		interval 0 to ``width*2*pi``, then drops from 1 to -1 on the interval
		``width*2*pi`` to ``2*pi``. `width` must be in the interval [0, 1].
		
		Note that this is not band-limited.  It produces an infinite number
		of harmonics, which are aliased back and forth across the frequency
		spectrum.
		
		Parameters
		----------
		t : array_like
		    Time.
		width : array_like, optional
		    Width of the rising ramp as a proportion of the total cycle.
		    Default is 1, producing a rising ramp, while 0 produces a falling
		    ramp.  `width` = 0.5 produces a triangle wave.
		    If an array, causes wave shape to change over time, and must be the
		    same length as t.
		
		Returns
		-------
		y : ndarray
		    Output array containing the sawtooth waveform.
		
		Examples
		--------
		A 5 Hz waveform sampled at 500 Hz for 1 second:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t = np.linspace(0, 1, 500)
		>>> plt.plot(t, signal.sawtooth(2 * np.pi * 5 * t))
	**/
	static public function sawtooth(t:Dynamic, ?width:Dynamic):Dynamic;
	/**
		sepfir2d(input, hrow, hcol) -> output
		
		Description:
		
		  Convolve the rank-2 input array with the separable filter defined by the
		  rank-1 arrays hrow, and hcol. Mirror symmetric boundary conditions are
		  assumed.  This function can be used to find an image given its B-spline
		  representation.
	**/
	static public function sepfir2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a digital Slepian (DPSS) window.
		
		Used to maximize the energy concentration in the main lobe.  Also called
		the digital prolate spheroidal sequence (DPSS).
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		width : float
		    Bandwidth
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value always normalized to 1
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.slepian(51, width=0.3)
		>>> plt.plot(window)
		>>> plt.title("Slepian (DPSS) window (BW=0.3)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Slepian window (BW=0.3)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function slepian(M:Dynamic, width:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a single transfer function from a series of second-order sections
		
		Parameters
		----------
		sos : array_like
		    Array of second-order filter coefficients, must have shape
		    ``(n_sections, 6)``. See `sosfilt` for the SOS filter format
		    specification.
		
		Returns
		-------
		b : ndarray
		    Numerator polynomial coefficients.
		a : ndarray
		    Denominator polynomial coefficients.
		
		Notes
		-----
		.. versionadded:: 0.16.0
	**/
	static public function sos2tf(sos:Dynamic):Dynamic;
	/**
		Return zeros, poles, and gain of a series of second-order sections
		
		Parameters
		----------
		sos : array_like
		    Array of second-order filter coefficients, must have shape
		    ``(n_sections, 6)``. See `sosfilt` for the SOS filter format
		    specification.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transfer function.
		p : ndarray
		    Poles of the transfer function.
		k : float
		    System gain.
		
		Notes
		-----
		.. versionadded:: 0.16.0
	**/
	static public function sos2zpk(sos:Dynamic):Dynamic;
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
		zpk2sos, sos2zpk, sosfilt_zi
		
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
		Compute a spectrogram with consecutive Fourier transforms.
		
		Spectrograms can be used as a way of visualizing the change of a
		nonstationary signal's frequency content over time.
		
		Parameters
		----------
		x : array_like
		    Time series of measurement values
		fs : float, optional
		    Sampling frequency of the `x` time series. Defaults to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length will be used for nperseg.
		    Defaults to a Tukey window with shape parameter of 0.25.
		nperseg : int, optional
		    Length of each segment.  Defaults to 256.
		noverlap : int, optional
		    Number of points to overlap between segments. If None,
		    ``noverlap = nperseg // 8``.  Defaults to None.
		nfft : int, optional
		    Length of the FFT used, if a zero padded FFT is desired.  If None,
		    the FFT length is `nperseg`. Defaults to None.
		detrend : str or function or False, optional
		    Specifies how to detrend each segment. If `detrend` is a string,
		    it is passed as the ``type`` argument to `detrend`.  If it is a
		    function, it takes a segment and returns a detrended segment.
		    If `detrend` is False, no detrending is done.  Defaults to 'constant'.
		return_onesided : bool, optional
		    If True, return a one-sided spectrum for real data. If False return
		    a two-sided spectrum. Note that for complex data, a two-sided
		    spectrum is always returned.
		scaling : { 'density', 'spectrum' }, optional
		    Selects between computing the power spectral density ('density')
		    where `Pxx` has units of V**2/Hz and computing the power spectrum
		    ('spectrum') where `Pxx` has units of V**2, if `x` is measured in V
		    and fs is measured in Hz.  Defaults to 'density'
		axis : int, optional
		    Axis along which the spectrogram is computed; the default is over
		    the last axis (i.e. ``axis=-1``).
		mode : str, optional
		    Defines what kind of return values are expected. Options are ['psd',
		    'complex', 'magnitude', 'angle', 'phase'].
		
		Returns
		-------
		f : ndarray
		    Array of sample frequencies.
		t : ndarray
		    Array of segment times.
		Sxx : ndarray
		    Spectrogram of x. By default, the last axis of Sxx corresponds to the
		    segment times.
		
		See Also
		--------
		periodogram: Simple, optionally modified periodogram
		lombscargle: Lomb-Scargle periodogram for unevenly sampled data
		welch: Power spectral density by Welch's method.
		csd: Cross spectral density by Welch's method.
		
		Notes
		-----
		An appropriate amount of overlap will depend on the choice of window
		and on your requirements. In contrast to welch's method, where the entire
		data stream is averaged over, one may wish to use a smaller overlap (or
		perhaps none at all) when computing a spectrogram, to maintain some
		statistical independence between individual segments.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] Oppenheim, Alan V., Ronald W. Schafer, John R. Buck "Discrete-Time
		       Signal Processing", Prentice Hall, 1999.
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		Generate a test signal, a 2 Vrms sine wave whose frequency linearly changes
		with time from 1kHz to 2kHz, corrupted by 0.001 V**2/Hz of white noise
		sampled at 10 kHz.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 2 * np.sqrt(2)
		>>> noise_power = 0.001 * fs / 2
		>>> time = np.arange(N) / fs
		>>> freq = np.linspace(1e3, 2e3, N)
		>>> x = amp * np.sin(2*np.pi*freq*time)
		>>> x += np.random.normal(scale=np.sqrt(noise_power), size=time.shape)
		
		Compute and plot the spectrogram.
		
		>>> f, t, Sxx = signal.spectrogram(x, fs)
		>>> plt.pcolormesh(t, f, Sxx)
		>>> plt.ylabel('Frequency [Hz]')
		>>> plt.xlabel('Time [sec]')
		>>> plt.show()
	**/
	static public function spectrogram(x:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?scaling:Dynamic, ?axis:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Smoothing spline (cubic) filtering of a rank-2 array.
		
		Filter an input data set, `Iin`, using a (cubic) smoothing spline of
		fall-off `lmbda`.
	**/
	static public function spline_filter(Iin:Dynamic, ?lmbda:Dynamic):Dynamic;
	/**
		Return a periodic square-wave waveform.
		
		The square wave has a period ``2*pi``, has value +1 from 0 to
		``2*pi*duty`` and -1 from ``2*pi*duty`` to ``2*pi``. `duty` must be in
		the interval [0,1].
		
		Note that this is not band-limited.  It produces an infinite number
		of harmonics, which are aliased back and forth across the frequency
		spectrum.
		
		Parameters
		----------
		t : array_like
		    The input time array.
		duty : array_like, optional
		    Duty cycle.  Default is 0.5 (50% duty cycle).
		    If an array, causes wave shape to change over time, and must be the
		    same length as t.
		
		Returns
		-------
		y : ndarray
		    Output array containing the square waveform.
		
		Examples
		--------
		A 5 Hz waveform sampled at 500 Hz for 1 second:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t = np.linspace(0, 1, 500, endpoint=False)
		>>> plt.plot(t, signal.square(2 * np.pi * 5 * t))
		>>> plt.ylim(-2, 2)
		
		A pulse-width modulated sine wave:
		
		>>> plt.figure()
		>>> sig = np.sin(2 * np.pi * t)
		>>> pwm = signal.square(2 * np.pi * 30 * t, duty=(sig + 1)/2)
		>>> plt.subplot(2, 1, 1)
		>>> plt.plot(t, sig)
		>>> plt.subplot(2, 1, 2)
		>>> plt.plot(t, pwm)
		>>> plt.ylim(-1.5, 1.5)
	**/
	static public function square(t:Dynamic, ?duty:Dynamic):Dynamic;
	/**
		State-space to transfer function.
		
		A, B, C, D defines a linear state-space system with `p` inputs,
		`q` outputs, and `n` state variables.
		
		Parameters
		----------
		A : array_like
		    State (or system) matrix of shape ``(n, n)``
		B : array_like
		    Input matrix of shape ``(n, p)``
		C : array_like
		    Output matrix of shape ``(q, n)``
		D : array_like
		    Feedthrough (or feedforward) matrix of shape ``(q, p)``
		input : int, optional
		    For multiple-input systems, the index of the input to use.
		
		Returns
		-------
		num : 2-D ndarray
		    Numerator(s) of the resulting transfer function(s).  `num` has one row
		    for each of the system's outputs. Each row is a sequence representation
		    of the numerator polynomial.
		den : 1-D ndarray
		    Denominator of the resulting transfer function(s).  `den` is a sequence
		    representation of the denominator polynomial.
		
		Examples
		--------
		Convert the state-space representation:
		
		.. math::
		
		    \dot{\textbf{x}}(t) =
		    \begin{bmatrix} -2 & -1 \\ 1 & 0 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \\ 0 \end{bmatrix} \textbf{u}(t) \\
		
		    \textbf{y}(t) = \begin{bmatrix} 1 & 2 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \end{bmatrix} \textbf{u}(t)
		
		>>> A = [[-2, -1], [1, 0]]
		>>> B = [[1], [0]]  # 2-dimensional column vector
		>>> C = [[1, 2]]    # 2-dimensional row vector
		>>> D = 1
		
		to the transfer function:
		
		.. math:: H(s) = \frac{s^2 + 3s + 3}{s^2 + 2s + 1}
		
		>>> from scipy.signal import ss2tf
		>>> ss2tf(A, B, C, D)
		(array([[1, 3, 3]]), array([ 1.,  2.,  1.]))
	**/
	static public function ss2tf(A:Dynamic, B:Dynamic, C:Dynamic, D:Dynamic, ?input:Dynamic):Dynamic;
	/**
		State-space representation to zero-pole-gain representation.
		
		A, B, C, D defines a linear state-space system with `p` inputs,
		`q` outputs, and `n` state variables.
		
		Parameters
		----------
		A : array_like
		    State (or system) matrix of shape ``(n, n)``
		B : array_like
		    Input matrix of shape ``(n, p)``
		C : array_like
		    Output matrix of shape ``(q, n)``
		D : array_like
		    Feedthrough (or feedforward) matrix of shape ``(q, p)``
		input : int, optional
		    For multiple-input systems, the index of the input to use.
		
		Returns
		-------
		z, p : sequence
		    Zeros and poles.
		k : float
		    System gain.
	**/
	static public function ss2zpk(A:Dynamic, B:Dynamic, C:Dynamic, D:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Step response of continuous-time system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple of array_like
		    describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		X0 : array_like, optional
		    Initial state-vector (default is zero).
		T : array_like, optional
		    Time points (computed if not given).
		N : int, optional
		    Number of time points to compute if `T` is not given.
		
		Returns
		-------
		T : 1D ndarray
		    Output time points.
		yout : 1D ndarray
		    Step response of system.
		
		See also
		--------
		scipy.signal.step2
	**/
	static public function step(system:Dynamic, ?X0:Dynamic, ?T:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Step response of continuous-time system.
		
		This function is functionally the same as `scipy.signal.step`, but
		it uses the function `scipy.signal.lsim2` to compute the step
		response.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple of array_like
		    describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		X0 : array_like, optional
		    Initial state-vector (default is zero).
		T : array_like, optional
		    Time points (computed if not given).
		N : int, optional
		    Number of time points to compute if `T` is not given.
		kwargs : various types
		    Additional keyword arguments are passed on the function
		    `scipy.signal.lsim2`, which in turn passes them on to
		    `scipy.integrate.odeint`.  See the documentation for
		    `scipy.integrate.odeint` for information about these arguments.
		
		Returns
		-------
		T : 1D ndarray
		    Output time points.
		yout : 1D ndarray
		    Step response of system.
		
		See also
		--------
		scipy.signal.step
		
		Notes
		-----
		.. versionadded:: 0.8.0
	**/
	static public function step2(system:Dynamic, ?X0:Dynamic, ?T:Dynamic, ?N:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Frequency-swept cosine generator, with a time-dependent frequency.
		
		This function generates a sinusoidal function whose instantaneous
		frequency varies with time.  The frequency at time `t` is given by
		the polynomial `poly`.
		
		Parameters
		----------
		t : ndarray
		    Times at which to evaluate the waveform.
		poly : 1-D array_like or instance of numpy.poly1d
		    The desired frequency expressed as a polynomial.  If `poly` is
		    a list or ndarray of length n, then the elements of `poly` are
		    the coefficients of the polynomial, and the instantaneous
		    frequency is
		
		      ``f(t) = poly[0]*t**(n-1) + poly[1]*t**(n-2) + ... + poly[n-1]``
		
		    If `poly` is an instance of numpy.poly1d, then the
		    instantaneous frequency is
		
		      ``f(t) = poly(t)``
		
		phi : float, optional
		    Phase offset, in degrees, Default: 0.
		
		Returns
		-------
		sweep_poly : ndarray
		    A numpy array containing the signal evaluated at `t` with the
		    requested time-varying frequency.  More precisely, the function
		    returns ``cos(phase + (pi/180)*phi)``, where `phase` is the integral
		    (from 0 to t) of ``2 * pi * f(t)``; ``f(t)`` is defined above.
		
		See Also
		--------
		chirp
		
		Notes
		-----
		.. versionadded:: 0.8.0
		
		If `poly` is a list or ndarray of length `n`, then the elements of
		`poly` are the coefficients of the polynomial, and the instantaneous
		frequency is:
		
		    ``f(t) = poly[0]*t**(n-1) + poly[1]*t**(n-2) + ... + poly[n-1]``
		
		If `poly` is an instance of `numpy.poly1d`, then the instantaneous
		frequency is:
		
		      ``f(t) = poly(t)``
		
		Finally, the output `s` is:
		
		    ``cos(phase + (pi/180)*phi)``
		
		where `phase` is the integral from 0 to `t` of ``2 * pi * f(t)``,
		``f(t)`` as defined above.
	**/
	static public function sweep_poly(t:Dynamic, poly:Dynamic, ?phi:Dynamic):Dynamic;
	/**
		symiirorder1(input, c0, z1 {, precision}) -> output
		
		Implement a smoothing IIR filter with mirror-symmetric boundary conditions
		using a cascade of first-order sections.  The second section uses a
		reversed sequence.  This implements a system with the following
		transfer function and mirror-symmetric boundary conditions::
		
		                       c0              
		       H(z) = ---------------------    
		               (1-z1/z) (1 - z1 z)     
		
		The resulting signal will have mirror symmetric boundary conditions as well.
		
		Parameters
		----------
		input : ndarray
		    The input signal.
		c0, z1 : scalar
		    Parameters in the transfer function.
		precision :
		    Specifies the precision for calculating initial conditions
		    of the recursive filter based on mirror-symmetric input.
		
		Returns
		-------
		output : ndarray
		    The filtered signal.
	**/
	static public function symiirorder1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		symiirorder2(input, r, omega {, precision}) -> output
		
		Implement a smoothing IIR filter with mirror-symmetric boundary conditions
		using a cascade of second-order sections.  The second section uses a
		reversed sequence.  This implements the following transfer function::
		
		                              cs^2
		     H(z) = ---------------------------------------
		            (1 - a2/z - a3/z^2) (1 - a2 z - a3 z^2 )
		
		where::
		
		      a2 = (2 r cos omega)
		      a3 = - r^2
		      cs = 1 - 2 r cos omega + r^2
		
		Parameters
		----------
		input : ndarray
		    The input signal.
		r, omega : scalar
		    Parameters in the transfer function.
		precision :
		    Specifies the precision for calculating initial conditions
		    of the recursive filter based on mirror-symmetric input.
		
		Returns
		-------
		output : ndarray
		    The filtered signal.
	**/
	static public function symiirorder2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
	/**
		Return second-order sections from transfer function representation
		
		Parameters
		----------
		b : array_like
		    Numerator polynomial coefficients.
		a : array_like
		    Denominator polynomial coefficients.
		pairing : {'nearest', 'keep_odd'}, optional
		    The method to use to combine pairs of poles and zeros into sections.
		    See `zpk2sos`.
		
		Returns
		-------
		sos : ndarray
		    Array of second-order filter coefficients, with shape
		    ``(n_sections, 6)``. See `sosfilt` for the SOS filter format
		    specification.
		
		See Also
		--------
		zpk2sos, sosfilt
		
		Notes
		-----
		It is generally discouraged to convert from TF to SOS format, since doing
		so usually will not improve numerical precision errors. Instead, consider
		designing filters in ZPK format and converting directly to SOS. TF is
		converted to SOS by first converting to ZPK format, then converting
		ZPK to SOS.
		
		.. versionadded:: 0.16.0
	**/
	static public function tf2sos(b:Dynamic, a:Dynamic, ?pairing:Dynamic):Dynamic;
	/**
		Transfer function to state-space representation.
		
		Parameters
		----------
		num, den : array_like
		    Sequences representing the numerator and denominator polynomials.
		    The denominator needs to be at least as long as the numerator.
		
		Returns
		-------
		A, B, C, D : ndarray
		    State space representation of the system, in controller canonical
		    form.
		
		Examples
		--------
		Convert the transfer function:
		
		.. math:: H(s) = \frac{s^2 + 3s + 3}{s^2 + 2s + 1}
		
		>>> num = [1, 3, 3]
		>>> den = [1, 2, 1]
		
		to the state-space representation:
		
		.. math::
		
		    \dot{\textbf{x}}(t) =
		    \begin{bmatrix} -2 & -1 \\ 1 & 0 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \\ 0 \end{bmatrix} \textbf{u}(t) \\
		
		    \textbf{y}(t) = \begin{bmatrix} 1 & 2 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \end{bmatrix} \textbf{u}(t)
		
		>>> from scipy.signal import tf2ss
		>>> A, B, C, D = tf2ss(num, den)
		>>> A
		array([[-2., -1.],
		       [ 1.,  0.]])
		>>> B
		array([[ 1.],
		       [ 0.]])
		>>> C
		array([[ 1.,  2.]])
		>>> D
		array([ 1.])
	**/
	static public function tf2ss(num:Dynamic, den:Dynamic):Dynamic;
	/**
		Return zero, pole, gain (z, p, k) representation from a numerator,
		denominator representation of a linear filter.
		
		Parameters
		----------
		b : array_like
		    Numerator polynomial coefficients.
		a : array_like
		    Denominator polynomial coefficients.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transfer function.
		p : ndarray
		    Poles of the transfer function.
		k : float
		    System gain.
		
		Notes
		-----
		If some values of `b` are too close to 0, they are removed. In that case,
		a BadCoefficients warning is emitted.
		
		The `b` and `a` arrays are interpreted as coefficients for positive,
		descending powers of the transfer function variable.  So the inputs
		:math:`b = [b_0, b_1, ..., b_M]` and :math:`a =[a_0, a_1, ..., a_N]`
		can represent an analog filter of the form:
		
		.. math::
		
		    H(s) = \frac
		    {b_0 s^M + b_1 s^{(M-1)} + \cdots + b_M}
		    {a_0 s^N + a_1 s^{(N-1)} + \cdots + a_N}
		
		or a discrete-time filter of the form:
		
		.. math::
		
		    H(z) = \frac
		    {b_0 z^M + b_1 z^{(M-1)} + \cdots + b_M}
		    {a_0 z^N + a_1 z^{(N-1)} + \cdots + a_N}
		
		This "positive powers" form is found more commonly in controls
		engineering.  If `M` and `N` are equal (which is true for all filters
		generated by the bilinear transform), then this happens to be equivalent
		to the "negative powers" discrete-time form preferred in DSP:
		
		.. math::
		
		    H(z) = \frac
		    {b_0 + b_1 z^{-1} + \cdots + b_M z^{-M}}
		    {a_0 + a_1 z^{-1} + \cdots + a_N z^{-N}}
		
		Although this is true for common filters, remember that this is not true
		in the general case.  If `M` and `N` are not equal, the discrete-time
		transfer function coefficients must first be converted to the "positive
		powers" form before finding the poles and zeros.
	**/
	static public function tf2zpk(b:Dynamic, a:Dynamic):Dynamic;
	/**
		Return a triangular window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.triang(51)
		>>> plt.plot(window)
		>>> plt.title("Triangular window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the triangular window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function triang(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Tukey window, also known as a tapered cosine window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		alpha : float, optional
		    Shape parameter of the Tukey window, representing the faction of the
		    window inside the cosine tapered region.
		    If zero, the Tukey window is equivalent to a rectangular window.
		    If one, the Tukey window is equivalent to a Hann window.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		References
		----------
		.. [1] Harris, Fredric J. (Jan 1978). "On the use of Windows for Harmonic
		       Analysis with the Discrete Fourier Transform". Proceedings of the
		       IEEE 66 (1): 51-83. doi:10.1109/PROC.1978.10837
		.. [2] Wikipedia, "Window function",
		       http://en.wikipedia.org/wiki/Window_function#Tukey_window
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fftpack import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.tukey(51)
		>>> plt.plot(window)
		>>> plt.title("Tukey window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		>>> plt.ylim([0, 1.1])
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Tukey window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function tukey(M:Dynamic, ?alpha:Dynamic, ?sym:Dynamic):Dynamic;
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
		Estimate power spectral density using Welch's method.
		
		Welch's method [1]_ computes an estimate of the power spectral density
		by dividing the data into overlapping segments, computing a modified
		periodogram for each segment and averaging the periodograms.
		
		Parameters
		----------
		x : array_like
		    Time series of measurement values
		fs : float, optional
		    Sampling frequency of the `x` time series. Defaults to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length will be used for nperseg.
		    Defaults to 'hanning'.
		nperseg : int, optional
		    Length of each segment.  Defaults to 256.
		noverlap : int, optional
		    Number of points to overlap between segments. If None,
		    ``noverlap = nperseg // 2``.  Defaults to None.
		nfft : int, optional
		    Length of the FFT used, if a zero padded FFT is desired.  If None,
		    the FFT length is `nperseg`. Defaults to None.
		detrend : str or function or False, optional
		    Specifies how to detrend each segment. If `detrend` is a string,
		    it is passed as the ``type`` argument to `detrend`.  If it is a
		    function, it takes a segment and returns a detrended segment.
		    If `detrend` is False, no detrending is done.  Defaults to 'constant'.
		return_onesided : bool, optional
		    If True, return a one-sided spectrum for real data. If False return
		    a two-sided spectrum. Note that for complex data, a two-sided
		    spectrum is always returned.
		scaling : { 'density', 'spectrum' }, optional
		    Selects between computing the power spectral density ('density')
		    where `Pxx` has units of V**2/Hz and computing the power spectrum
		    ('spectrum') where `Pxx` has units of V**2, if `x` is measured in V
		    and fs is measured in Hz.  Defaults to 'density'
		axis : int, optional
		    Axis along which the periodogram is computed; the default is over
		    the last axis (i.e. ``axis=-1``).
		
		Returns
		-------
		f : ndarray
		    Array of sample frequencies.
		Pxx : ndarray
		    Power spectral density or power spectrum of x.
		
		See Also
		--------
		periodogram: Simple, optionally modified periodogram
		lombscargle: Lomb-Scargle periodogram for unevenly sampled data
		
		Notes
		-----
		An appropriate amount of overlap will depend on the choice of window
		and on your requirements.  For the default 'hanning' window an
		overlap of 50% is a reasonable trade off between accurately estimating
		the signal power, while not over counting any of the data.  Narrower
		windows may require a larger overlap.
		
		If `noverlap` is 0, this method is equivalent to Bartlett's method [2]_.
		
		.. versionadded:: 0.12.0
		
		References
		----------
		.. [1] P. Welch, "The use of the fast Fourier transform for the
		       estimation of power spectra: A method based on time averaging
		       over short, modified periodograms", IEEE Trans. Audio
		       Electroacoust. vol. 15, pp. 70-73, 1967.
		.. [2] M.S. Bartlett, "Periodogram Analysis and Continuous Spectra",
		       Biometrika, vol. 37, pp. 1-16, 1950.
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> np.random.seed(1234)
		
		Generate a test signal, a 2 Vrms sine wave at 1234 Hz, corrupted by
		0.001 V**2/Hz of white noise sampled at 10 kHz.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 2*np.sqrt(2)
		>>> freq = 1234.0
		>>> noise_power = 0.001 * fs / 2
		>>> time = np.arange(N) / fs
		>>> x = amp*np.sin(2*np.pi*freq*time)
		>>> x += np.random.normal(scale=np.sqrt(noise_power), size=time.shape)
		
		Compute and plot the power spectral density.
		
		>>> f, Pxx_den = signal.welch(x, fs, nperseg=1024)
		>>> plt.semilogy(f, Pxx_den)
		>>> plt.ylim([0.5e-3, 1])
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('PSD [V**2/Hz]')
		>>> plt.show()
		
		If we average the last half of the spectral density, to exclude the
		peak, we can recover the noise power on the signal.
		
		>>> np.mean(Pxx_den[256:])
		0.0009924865443739191
		
		Now compute and plot the power spectrum.
		
		>>> f, Pxx_spec = signal.welch(x, fs, 'flattop', 1024, scaling='spectrum')
		>>> plt.figure()
		>>> plt.semilogy(f, np.sqrt(Pxx_spec))
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('Linear spectrum [V RMS]')
		>>> plt.show()
		
		The peak height in the power spectrum is an estimate of the RMS amplitude.
		
		>>> np.sqrt(Pxx_spec.max())
		2.0077340678640727
	**/
	static public function welch(x:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?scaling:Dynamic, ?axis:Dynamic):Dynamic;
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
		Return second-order sections from zeros, poles, and gain of a system
		
		Parameters
		----------
		z : array_like
		    Zeros of the transfer function.
		p : array_like
		    Poles of the transfer function.
		k : float
		    System gain.
		pairing : {'nearest', 'keep_odd'}, optional
		    The method to use to combine pairs of poles and zeros into sections.
		    See Notes below.
		
		Returns
		-------
		sos : ndarray
		    Array of second-order filter coefficients, with shape
		    ``(n_sections, 6)``. See `sosfilt` for the SOS filter format
		    specification.
		
		See Also
		--------
		sosfilt
		
		Notes
		-----
		The algorithm used to convert ZPK to SOS format is designed to
		minimize errors due to numerical precision issues. The pairing
		algorithm attempts to minimize the peak gain of each biquadratic
		section. This is done by pairing poles with the nearest zeros, starting
		with the poles closest to the unit circle.
		
		*Algorithms*
		
		The current algorithms are designed specifically for use with digital
		filters. Although they can operate on analog filters, the results may
		be sub-optimal.
		
		The steps in the ``pairing='nearest'`` and ``pairing='keep_odd'``
		algorithms are mostly shared. The ``nearest`` algorithm attempts to
		minimize the peak gain, while ``'keep_odd'`` minimizes peak gain under
		the constraint that odd-order systems should retain one section
		as first order. The algorithm steps and are as follows:
		
		As a pre-processing step, add poles or zeros to the origin as
		necessary to obtain the same number of poles and zeros for pairing.
		If ``pairing == 'nearest'`` and there are an odd number of poles,
		add an additional pole and a zero at the origin.
		
		The following steps are then iterated over until no more poles or
		zeros remain:
		
		1. Take the (next remaining) pole (complex or real) closest to the
		   unit circle to begin a new filter section.
		
		2. If the pole is real and there are no other remaining real poles [#]_,
		   add the closest real zero to the section and leave it as a first
		   order section. Note that after this step we are guaranteed to be
		   left with an even number of real poles, complex poles, real zeros,
		   and complex zeros for subsequent pairing iterations.
		
		3. Else:
		
		    1. If the pole is complex and the zero is the only remaining real
		       zero*, then pair the pole with the *next* closest zero
		       (guaranteed to be complex). This is necessary to ensure that
		       there will be a real zero remaining to eventually create a
		       first-order section (thus keeping the odd order).
		
		    2. Else pair the pole with the closest remaining zero (complex or
		       real).
		
		    3. Proceed to complete the second-order section by adding another
		       pole and zero to the current pole and zero in the section:
		
		        1. If the current pole and zero are both complex, add their
		           conjugates.
		
		        2. Else if the pole is complex and the zero is real, add the
		           conjugate pole and the next closest real zero.
		
		        3. Else if the pole is real and the zero is complex, add the
		           conjugate zero and the real pole closest to those zeros.
		
		        4. Else (we must have a real pole and real zero) add the next
		           real pole closest to the unit circle, and then add the real
		           zero closest to that pole.
		
		.. [#] This conditional can only be met for specific odd-order inputs
		       with the ``pairing == 'keep_odd'`` method.
		
		.. versionadded:: 0.16.0
		
		Examples
		--------
		
		Design a 6th order low-pass elliptic digital filter for a system with a
		sampling rate of 8000 Hz that has a pass-band corner frequency of
		1000 Hz.  The ripple in the pass-band should not exceed 0.087 dB, and
		the attenuation in the stop-band should be at least 90 dB.
		
		In the following call to `signal.ellip`, we could use ``output='sos'``,
		but for this example, we'll use ``output='zpk'``, and then convert to SOS
		format with `zpk2sos`:
		
		>>> from scipy import signal
		>>> z, p, k = signal.ellip(6, 0.087, 90, 1000/(0.5*8000), output='zpk')
		
		Now convert to SOS format.
		
		>>> sos = signal.zpk2sos(z, p, k)
		
		The coefficents of the numerators of the sections:
		
		>>> sos[:, :3]
		array([[ 0.0014154 ,  0.00248707,  0.0014154 ],
		       [ 1.        ,  0.72965193,  1.        ],
		       [ 1.        ,  0.17594966,  1.        ]])
		
		The symmetry in the coefficients occurs because all the zeros are on the
		unit circle.
		
		The coefficients of the denominators of the sections:
		
		>>> sos[:, 3:]
		array([[ 1.        , -1.32543251,  0.46989499],
		       [ 1.        , -1.26117915,  0.6262586 ],
		       [ 1.        , -1.25707217,  0.86199667]])
		
		The next example shows the effect of the `pairing` option.  We have a
		system with three poles and three zeros, so the SOS array will have
		shape (2, 6).  The means there is, in effect, an extra pole and an extra
		zero at the origin in the SOS representation.
		
		>>> z1 = np.array([-1, -0.5-0.5j, -0.5+0.5j])
		>>> p1 = np.array([0.75, 0.8+0.1j, 0.8-0.1j])
		
		With ``pairing='nearest'`` (the default), we obtain
		
		>>> signal.zpk2sos(z1, p1, 1)
		array([[ 1.  ,  1.  ,  0.5 ,  1.  , -0.75,  0.  ],
		       [ 1.  ,  1.  ,  0.  ,  1.  , -1.6 ,  0.65]])
		
		The first section has the zeros {-0.5-0.05j, -0.5+0.5j} and the poles
		{0, 0.75}, and the second section has the zeros {-1, 0} and poles
		{0.8+0.1j, 0.8-0.1j}.  Note that the extra pole and zero at the origin
		have been assigned to different sections.
		
		With ``pairing='keep_odd'``, we obtain:
		
		>>> signal.zpk2sos(z1, p1, 1, pairing='keep_odd')
		array([[ 1.  ,  1.  ,  0.  ,  1.  , -0.75,  0.  ],
		       [ 1.  ,  1.  ,  0.5 ,  1.  , -1.6 ,  0.65]])
		
		The extra pole and zero at the origin are in the same section.
		The first section is, in effect, a first-order section.
	**/
	static public function zpk2sos(z:Dynamic, p:Dynamic, k:Dynamic, ?pairing:Dynamic):Dynamic;
	/**
		Zero-pole-gain representation to state-space representation
		
		Parameters
		----------
		z, p : sequence
		    Zeros and poles.
		k : float
		    System gain.
		
		Returns
		-------
		A, B, C, D : ndarray
		    State space representation of the system, in controller canonical
		    form.
	**/
	static public function zpk2ss(z:Dynamic, p:Dynamic, k:Dynamic):Dynamic;
	/**
		Return polynomial transfer function representation from zeros and poles
		
		Parameters
		----------
		z : array_like
		    Zeros of the transfer function.
		p : array_like
		    Poles of the transfer function.
		k : float
		    System gain.
		
		Returns
		-------
		b : ndarray
		    Numerator polynomial coefficients.
		a : ndarray
		    Denominator polynomial coefficients.
	**/
	static public function zpk2tf(z:Dynamic, p:Dynamic, k:Dynamic):Dynamic;
}