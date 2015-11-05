/* This file is generated, do not edit! */
package scipy.signal.fir_filter_design;
@:pythonImport("scipy.signal.fir_filter_design") extern class Fir_filter_design_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		ceil(x)
		
		Return the ceiling of x as an int.
		This is the smallest integral value >= x.
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
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
		Low-pass from 0 to f::
		
		>>> from scipy import signal
		>>> signal.firwin(numtaps, f)
		
		Use a specific window function::
		
		>>> signal.firwin(numtaps, f, window='nuttall')
		
		High-pass ('stop' from 0 to f)::
		
		>>> signal.firwin(numtaps, f, pass_zero=False)
		
		Band-pass::
		
		>>> signal.firwin(numtaps, [f1, f2], pass_zero=False)
		
		Band-stop::
		
		>>> signal.firwin(numtaps, [f1, f2])
		
		Multi-band (passbands are [0, f1], [f2, f3] and [f4, 1])::
		
		>>> signal.firwin(numtaps, [f1, f2, f3, f4])
		
		Multi-band (passbands are [f1, f2] and [f3,f4])::
		
		>>> signal.firwin(numtaps, [f1, f2, f3, f4], pass_zero=False)
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
		Compute the inverse of the n-point DFT for real input.
		
		This function computes the inverse of the one-dimensional *n*-point
		discrete Fourier Transform of real input computed by `rfft`.
		In other words, ``irfft(rfft(a), len(a)) == a`` to within numerical
		accuracy. (See Notes below for why ``len(a)`` is necessary here.)
		
		The input is expected to be in the form returned by `rfft`, i.e. the
		real zero-frequency term followed by the complex positive frequency terms
		in order of increasing frequency.  Since the discrete Fourier Transform of
		real input is Hermitian-symmetric, the negative frequency terms are taken
		to be the complex conjugates of the corresponding positive frequency terms.
		
		Parameters
		----------
		a : array_like
		    The input array.
		n : int, optional
		    Length of the transformed axis of the output.
		    For `n` output points, ``n//2+1`` input points are necessary.  If the
		    input is longer than this, it is cropped.  If it is shorter than this,
		    it is padded with zeros.  If `n` is not given, it is determined from
		    the length of the input along the axis specified by `axis`.
		axis : int, optional
		    Axis over which to compute the inverse FFT. If not given, the last
		    axis is used.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		    The length of the transformed axis is `n`, or, if `n` is not given,
		    ``2*(m-1)`` where ``m`` is the length of the transformed axis of the
		    input. To get an odd number of output points, `n` must be specified.
		
		Raises
		------
		IndexError
		    If `axis` is larger than the last axis of `a`.
		
		See Also
		--------
		numpy.fft : For definition of the DFT and conventions used.
		rfft : The one-dimensional FFT of real input, of which `irfft` is inverse.
		fft : The one-dimensional FFT.
		irfft2 : The inverse of the two-dimensional FFT of real input.
		irfftn : The inverse of the *n*-dimensional FFT of real input.
		
		Notes
		-----
		Returns the real valued `n`-point inverse discrete Fourier transform
		of `a`, where `a` contains the non-negative frequency terms of a
		Hermitian-symmetric sequence. `n` is the length of the result, not the
		input.
		
		If you specify an `n` such that `a` must be zero-padded or truncated, the
		extra/removed values will be added/removed at high frequencies. One can
		thus resample a series to `m` points via Fourier interpolation by:
		``a_resamp = irfft(rfft(a), m)``.
		
		Examples
		--------
		>>> np.fft.ifft([1, -1j, -1, 1j])
		array([ 0.+0.j,  1.+0.j,  0.+0.j,  0.+0.j])
		>>> np.fft.irfft([1, -1j, -1])
		array([ 0.,  1.,  0.,  0.])
		
		Notice how the last term in the input to the ordinary `ifft` is the
		complex conjugate of the second term, and the output has zero imaginary
		part everywhere.  When calling `irfft`, the negative frequencies are not
		specified, and the output array is purely real.
	**/
	static public function irfft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
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
		log(x[, base])
		
		Return the logarithm of x to the given base.
		If the base not specified, returns the natural logarithm (base e) of x.
	**/
	static public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
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
		Return the sinc function.
		
		The sinc function is :math:`\sin(\pi x)/(\pi x)`.
		
		Parameters
		----------
		x : ndarray
		    Array (possibly multi-dimensional) of values for which to to
		    calculate ``sinc(x)``.
		
		Returns
		-------
		out : ndarray
		    ``sinc(x)``, which has the same shape as the input.
		
		Notes
		-----
		``sinc(0)`` is the limit value 1.
		
		The name sinc is short for "sine cardinal" or "sinus cardinalis".
		
		The sinc function is used in various signal processing applications,
		including in anti-aliasing, in the construction of a Lanczos resampling
		filter, and in interpolation.
		
		For bandlimited interpolation of discrete-time signals, the ideal
		interpolation kernel is proportional to the sinc function.
		
		References
		----------
		.. [1] Weisstein, Eric W. "Sinc Function." From MathWorld--A Wolfram Web
		       Resource. http://mathworld.wolfram.com/SincFunction.html
		.. [2] Wikipedia, "Sinc function",
		       http://en.wikipedia.org/wiki/Sinc_function
		
		Examples
		--------
		>>> x = np.linspace(-4, 4, 41)
		>>> np.sinc(x)
		array([ -3.89804309e-17,  -4.92362781e-02,  -8.40918587e-02,
		        -8.90384387e-02,  -5.84680802e-02,   3.89804309e-17,
		         6.68206631e-02,   1.16434881e-01,   1.26137788e-01,
		         8.50444803e-02,  -3.89804309e-17,  -1.03943254e-01,
		        -1.89206682e-01,  -2.16236208e-01,  -1.55914881e-01,
		         3.89804309e-17,   2.33872321e-01,   5.04551152e-01,
		         7.56826729e-01,   9.35489284e-01,   1.00000000e+00,
		         9.35489284e-01,   7.56826729e-01,   5.04551152e-01,
		         2.33872321e-01,   3.89804309e-17,  -1.55914881e-01,
		        -2.16236208e-01,  -1.89206682e-01,  -1.03943254e-01,
		        -3.89804309e-17,   8.50444803e-02,   1.26137788e-01,
		         1.16434881e-01,   6.68206631e-02,   3.89804309e-17,
		        -5.84680802e-02,  -8.90384387e-02,  -8.40918587e-02,
		        -4.92362781e-02,  -3.89804309e-17])
		
		>>> plt.plot(x, np.sinc(x))
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Sinc Function")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("X")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		It works in 2-D as well:
		
		>>> x = np.linspace(-4, 4, 401)
		>>> xx = np.outer(x, x)
		>>> plt.imshow(np.sinc(xx))
		<matplotlib.image.AxesImage object at 0x...>
	**/
	static public function sinc(x:Dynamic):Dynamic;
}