/* This file is generated, do not edit! */
package scipy.signal.fir_filter_design;
@:pythonImport("scipy.signal.fir_filter_design") extern class Fir_filter_design_Module {
	/**
		Return the ceiling of x as an Integral.
		
		This is the smallest integer >= x.
	**/
	static public function ceil(x:Dynamic):Dynamic;
	/**
		Compute the one-dimensional discrete Fourier Transform.
		
		This function computes the one-dimensional *n*-point discrete Fourier
		Transform (DFT) with the efficient Fast Fourier Transform (FFT)
		algorithm [CT].
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		n : int, optional
		    Length of the transformed axis of the output.
		    If `n` is smaller than the length of the input, the input is cropped.
		    If it is larger, the input is padded with zeros.  If `n` is not given,
		    the length of the input along the axis specified by `axis` is used.
		axis : int, optional
		    Axis over which to compute the FFT.  If not given, the last axis is
		    used.
		norm : {"backward", "ortho", "forward"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is "backward".
		    Indicates which direction of the forward/backward pair of transforms
		    is scaled and with what normalization factor.
		
		    .. versionadded:: 1.20.0
		
		        The "backward", "forward" values were added.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		
		Raises
		------
		IndexError
		    If `axis` is not a valid axis of `a`.
		
		See Also
		--------
		numpy.fft : for definition of the DFT and conventions used.
		ifft : The inverse of `fft`.
		fft2 : The two-dimensional FFT.
		fftn : The *n*-dimensional FFT.
		rfftn : The *n*-dimensional FFT of real input.
		fftfreq : Frequency bins for given FFT parameters.
		
		Notes
		-----
		FFT (Fast Fourier Transform) refers to a way the discrete Fourier
		Transform (DFT) can be calculated efficiently, by using symmetries in the
		calculated terms.  The symmetry is highest when `n` is a power of 2, and
		the transform is therefore most efficient for these sizes.
		
		The DFT is defined, with the conventions used in this implementation, in
		the documentation for the `numpy.fft` module.
		
		References
		----------
		.. [CT] Cooley, James W., and John W. Tukey, 1965, "An algorithm for the
		        machine calculation of complex Fourier series," *Math. Comput.*
		        19: 297-301.
		
		Examples
		--------
		>>> np.fft.fft(np.exp(2j * np.pi * np.arange(8) / 8))
		array([-2.33486982e-16+1.14423775e-17j,  8.00000000e+00-1.25557246e-15j,
		        2.33486982e-16+2.33486982e-16j,  0.00000000e+00+1.22464680e-16j,
		       -1.14423775e-17+2.33486982e-16j,  0.00000000e+00+5.20784380e-16j,
		        1.14423775e-17+1.14423775e-17j,  0.00000000e+00+1.22464680e-16j])
		
		In this example, real input has an FFT which is Hermitian, i.e., symmetric
		in the real part and anti-symmetric in the imaginary part, as described in
		the `numpy.fft` documentation:
		
		>>> import matplotlib.pyplot as plt
		>>> t = np.arange(256)
		>>> sp = np.fft.fft(np.sin(t))
		>>> freq = np.fft.fftfreq(t.shape[-1])
		>>> plt.plot(freq, sp.real, freq, sp.imag)
		[<matplotlib.lines.Line2D object at 0x...>, <matplotlib.lines.Line2D object at 0x...>]
		>>> plt.show()
	**/
	static public function fft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		FIR filter design using least-squares error minimization.
		
		Calculate the filter coefficients for the linear-phase finite
		impulse response (FIR) filter which has the best approximation
		to the desired frequency response described by `bands` and
		`desired` in the least squares sense (i.e., the integral of the
		weighted mean-squared error within the specified bands is
		minimized).
		
		Parameters
		----------
		numtaps : int
		    The number of taps in the FIR filter. `numtaps` must be odd.
		bands : array_like
		    A monotonic nondecreasing sequence containing the band edges in
		    Hz. All elements must be non-negative and less than or equal to
		    the Nyquist frequency given by `nyq`.
		desired : array_like
		    A sequence the same size as `bands` containing the desired gain
		    at the start and end point of each band.
		weight : array_like, optional
		    A relative weighting to give to each band region when solving
		    the least squares problem. `weight` has to be half the size of
		    `bands`.
		nyq : float, optional
		    *Deprecated. Use `fs` instead.*
		    Nyquist frequency. Each frequency in `bands` must be between 0
		    and `nyq` (inclusive). Default is 1.
		fs : float, optional
		    The sampling frequency of the signal. Each frequency in `bands`
		    must be between 0 and ``fs/2`` (inclusive). Default is 2.
		
		Returns
		-------
		coeffs : ndarray
		    Coefficients of the optimal (in a least squares sense) FIR filter.
		
		See also
		--------
		firwin
		firwin2
		minimum_phase
		remez
		
		Notes
		-----
		This implementation follows the algorithm given in [1]_.
		As noted there, least squares design has multiple advantages:
		
		    1. Optimal in a least-squares sense.
		    2. Simple, non-iterative method.
		    3. The general solution can obtained by solving a linear
		       system of equations.
		    4. Allows the use of a frequency dependent weighting function.
		
		This function constructs a Type I linear phase FIR filter, which
		contains an odd number of `coeffs` satisfying for :math:`n < numtaps`:
		
		.. math:: coeffs(n) = coeffs(numtaps - 1 - n)
		
		The odd number of coefficients and filter symmetry avoid boundary
		conditions that could otherwise occur at the Nyquist and 0 frequencies
		(e.g., for Type II, III, or IV variants).
		
		.. versionadded:: 0.18
		
		References
		----------
		.. [1] Ivan Selesnick, Linear-Phase Fir Filter Design By Least Squares.
		       OpenStax CNX. Aug 9, 2005.
		       http://cnx.org/contents/eb1ecb35-03a9-4610-ba87-41cd771c95f2@7
		
		Examples
		--------
		We want to construct a band-pass filter. Note that the behavior in the
		frequency ranges between our stop bands and pass bands is unspecified,
		and thus may overshoot depending on the parameters of our filter:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> fig, axs = plt.subplots(2)
		>>> fs = 10.0  # Hz
		>>> desired = (0, 0, 1, 1, 0, 0)
		>>> for bi, bands in enumerate(((0, 1, 2, 3, 4, 5), (0, 1, 2, 4, 4.5, 5))):
		...     fir_firls = signal.firls(73, bands, desired, fs=fs)
		...     fir_remez = signal.remez(73, bands, desired[::2], fs=fs)
		...     fir_firwin2 = signal.firwin2(73, bands, desired, fs=fs)
		...     hs = list()
		...     ax = axs[bi]
		...     for fir in (fir_firls, fir_remez, fir_firwin2):
		...         freq, response = signal.freqz(fir)
		...         hs.append(ax.semilogy(0.5*fs*freq/np.pi, np.abs(response))[0])
		...     for band, gains in zip(zip(bands[::2], bands[1::2]),
		...                            zip(desired[::2], desired[1::2])):
		...         ax.semilogy(band, np.maximum(gains, 1e-7), 'k--', linewidth=2)
		...     if bi == 0:
		...         ax.legend(hs, ('firls', 'remez', 'firwin2'),
		...                   loc='lower center', frameon=False)
		...     else:
		...         ax.set_xlabel('Frequency (Hz)')
		...     ax.grid(True)
		...     ax.set(title='Band-pass %d-%d Hz' % bands[2:4], ylabel='Magnitude')
		...
		>>> fig.tight_layout()
		>>> plt.show()
	**/
	static public function firls(numtaps:Dynamic, bands:Dynamic, desired:Dynamic, ?weight:Dynamic, ?nyq:Dynamic, ?fs:Dynamic):Dynamic;
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
		FIR filter design using the window method.
		
		From the given frequencies `freq` and corresponding gains `gain`,
		this function constructs an FIR filter with linear phase and
		(approximately) the given frequency response.
		
		Parameters
		----------
		numtaps : int
		    The number of taps in the FIR filter.  `numtaps` must be less than
		    `nfreqs`.
		freq : array_like, 1-D
		    The frequency sampling points. Typically 0.0 to 1.0 with 1.0 being
		    Nyquist.  The Nyquist frequency is half `fs`.
		    The values in `freq` must be nondecreasing. A value can be repeated
		    once to implement a discontinuity. The first value in `freq` must
		    be 0, and the last value must be ``fs/2``. Values 0 and ``fs/2`` must
		    not be repeated.
		gain : array_like
		    The filter gains at the frequency sampling points. Certain
		    constraints to gain values, depending on the filter type, are applied,
		    see Notes for details.
		nfreqs : int, optional
		    The size of the interpolation mesh used to construct the filter.
		    For most efficient behavior, this should be a power of 2 plus 1
		    (e.g, 129, 257, etc). The default is one more than the smallest
		    power of 2 that is not less than `numtaps`. `nfreqs` must be greater
		    than `numtaps`.
		window : string or (string, float) or float, or None, optional
		    Window function to use. Default is "hamming". See
		    `scipy.signal.get_window` for the complete list of possible values.
		    If None, no window function is applied.
		nyq : float, optional
		    *Deprecated. Use `fs` instead.* This is the Nyquist frequency.
		    Each frequency in `freq` must be between 0 and `nyq`.  Default is 1.
		antisymmetric : bool, optional
		    Whether resulting impulse response is symmetric/antisymmetric.
		    See Notes for more details.
		fs : float, optional
		    The sampling frequency of the signal. Each frequency in `cutoff`
		    must be between 0 and ``fs/2``. Default is 2.
		
		Returns
		-------
		taps : ndarray
		    The filter coefficients of the FIR filter, as a 1-D array of length
		    `numtaps`.
		
		See also
		--------
		firls
		firwin
		minimum_phase
		remez
		
		Notes
		-----
		From the given set of frequencies and gains, the desired response is
		constructed in the frequency domain. The inverse FFT is applied to the
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
	static public function firwin2(numtaps:Dynamic, freq:Dynamic, gain:Dynamic, ?nfreqs:Dynamic, ?window:Dynamic, ?nyq:Dynamic, ?antisymmetric:Dynamic, ?fs:Dynamic):Dynamic;
	/**
		Construct a Hankel matrix.
		
		The Hankel matrix has constant anti-diagonals, with `c` as its
		first column and `r` as its last row. If `r` is not given, then
		`r = zeros_like(c)` is assumed.
		
		Parameters
		----------
		c : array_like
		    First column of the matrix. Whatever the actual shape of `c`, it
		    will be converted to a 1-D array.
		r : array_like, optional
		    Last row of the matrix. If None, ``r = zeros_like(c)`` is assumed.
		    r[0] is ignored; the last row of the returned matrix is
		    ``[c[-1], r[1:]]``. Whatever the actual shape of `r`, it will be
		    converted to a 1-D array.
		
		Returns
		-------
		A : (len(c), len(r)) ndarray
		    The Hankel matrix. Dtype is the same as ``(c[0] + r[0]).dtype``.
		
		See Also
		--------
		toeplitz : Toeplitz matrix
		circulant : circulant matrix
		
		Examples
		--------
		>>> from scipy.linalg import hankel
		>>> hankel([1, 17, 99])
		array([[ 1, 17, 99],
		       [17, 99,  0],
		       [99,  0,  0]])
		>>> hankel([1,2,3,4], [4,7,7,8,9])
		array([[1, 2, 3, 4, 7],
		       [2, 3, 4, 7, 7],
		       [3, 4, 7, 7, 8],
		       [4, 7, 7, 8, 9]])
	**/
	static public function hankel(c:Dynamic, ?r:Dynamic):Dynamic;
	/**
		Compute the one-dimensional inverse discrete Fourier Transform.
		
		This function computes the inverse of the one-dimensional *n*-point
		discrete Fourier transform computed by `fft`.  In other words,
		``ifft(fft(a)) == a`` to within numerical accuracy.
		For a general description of the algorithm and definitions,
		see `numpy.fft`.
		
		The input should be ordered in the same way as is returned by `fft`,
		i.e.,
		
		* ``a[0]`` should contain the zero frequency term,
		* ``a[1:n//2]`` should contain the positive-frequency terms,
		* ``a[n//2 + 1:]`` should contain the negative-frequency terms, in
		  increasing order starting from the most negative frequency.
		
		For an even number of input points, ``A[n//2]`` represents the sum of
		the values at the positive and negative Nyquist frequencies, as the two
		are aliased together. See `numpy.fft` for details.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		n : int, optional
		    Length of the transformed axis of the output.
		    If `n` is smaller than the length of the input, the input is cropped.
		    If it is larger, the input is padded with zeros.  If `n` is not given,
		    the length of the input along the axis specified by `axis` is used.
		    See notes about padding issues.
		axis : int, optional
		    Axis over which to compute the inverse DFT.  If not given, the last
		    axis is used.
		norm : {"backward", "ortho", "forward"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is "backward".
		    Indicates which direction of the forward/backward pair of transforms
		    is scaled and with what normalization factor.
		
		    .. versionadded:: 1.20.0
		
		        The "backward", "forward" values were added.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		
		Raises
		------
		IndexError
		    If `axis` is not a valid axis of `a`.
		
		See Also
		--------
		numpy.fft : An introduction, with definitions and general explanations.
		fft : The one-dimensional (forward) FFT, of which `ifft` is the inverse
		ifft2 : The two-dimensional inverse FFT.
		ifftn : The n-dimensional inverse FFT.
		
		Notes
		-----
		If the input parameter `n` is larger than the size of the input, the input
		is padded by appending zeros at the end.  Even though this is the common
		approach, it might lead to surprising results.  If a different padding is
		desired, it must be performed before calling `ifft`.
		
		Examples
		--------
		>>> np.fft.ifft([0, 4, 0, 0])
		array([ 1.+0.j,  0.+1.j, -1.+0.j,  0.-1.j]) # may vary
		
		Create and plot a band-limited signal with random phases:
		
		>>> import matplotlib.pyplot as plt
		>>> t = np.arange(400)
		>>> n = np.zeros((400,), dtype=complex)
		>>> n[40:60] = np.exp(1j*np.random.uniform(0, 2*np.pi, (20,)))
		>>> s = np.fft.ifft(n)
		>>> plt.plot(t, s.real, label='real')
		[<matplotlib.lines.Line2D object at ...>]
		>>> plt.plot(t, s.imag, '--', label='imaginary')
		[<matplotlib.lines.Line2D object at ...>]
		>>> plt.legend()
		<matplotlib.legend.Legend object at ...>
		>>> plt.show()
	**/
	static public function ifft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Computes the inverse of `rfft`.
		
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
		    it is padded with zeros.  If `n` is not given, it is taken to be
		    ``2*(m-1)`` where ``m`` is the length of the input along the axis
		    specified by `axis`.
		axis : int, optional
		    Axis over which to compute the inverse FFT. If not given, the last
		    axis is used.
		norm : {"backward", "ortho", "forward"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is "backward".
		    Indicates which direction of the forward/backward pair of transforms
		    is scaled and with what normalization factor.
		
		    .. versionadded:: 1.20.0
		
		        The "backward", "forward" values were added.
		
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
		    If `axis` is not a valid axis of `a`.
		
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
		
		The correct interpretation of the hermitian input depends on the length of
		the original data, as given by `n`. This is because each input shape could
		correspond to either an odd or even length signal. By default, `irfft`
		assumes an even output length which puts the last entry at the Nyquist
		frequency; aliasing with its symmetric counterpart. By Hermitian symmetry,
		the value is thus treated as purely real. To avoid losing information, the
		correct length of the real input **must** be given.
		
		Examples
		--------
		>>> np.fft.ifft([1, -1j, -1, 1j])
		array([0.+0.j,  1.+0.j,  0.+0.j,  0.+0.j]) # may vary
		>>> np.fft.irfft([1, -1j, -1])
		array([0.,  1.,  0.,  0.])
		
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
		    stopband (or, in general, at any discontinuity) for the filter,
		    expressed as a fraction of the Nyquist frequency.
		
		Returns
		-------
		a : float
		    The attenuation of the ripple, in dB.
		
		See Also
		--------
		kaiserord, kaiser_beta
		
		Examples
		--------
		Suppose we want to design a FIR filter using the Kaiser window method
		that will have 211 taps and a transition width of 9 Hz for a signal that
		is sampled at 480 Hz. Expressed as a fraction of the Nyquist frequency,
		the width is 9/(0.5*480) = 0.0375. The approximate attenuation (in dB)
		is computed as follows:
		
		>>> from scipy.signal import kaiser_atten
		>>> kaiser_atten(211, 0.0375)
		64.48099630593983
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
		
		Examples
		--------
		Suppose we want to design a lowpass filter, with 65 dB attenuation
		in the stop band.  The Kaiser window parameter to be used in the
		window method is computed by `kaiser_beta(65)`:
		
		>>> from scipy.signal import kaiser_beta
		>>> kaiser_beta(65)
		6.20426
	**/
	static public function kaiser_beta(a:Dynamic):Float;
	/**
		Determine the filter window parameters for the Kaiser window method.
		
		The parameters returned by this function are generally used to create
		a finite impulse response filter using the window method, with either
		`firwin` or `firwin2`.
		
		Parameters
		----------
		ripple : float
		    Upper bound for the deviation (in dB) of the magnitude of the
		    filter's frequency response from that of the desired filter (not
		    including frequencies in any transition intervals). That is, if w
		    is the frequency expressed as a fraction of the Nyquist frequency,
		    A(w) is the actual frequency response of the filter and D(w) is the
		    desired frequency response, the design requirement is that::
		
		        abs(A(w) - D(w))) < 10**(-ripple/20)
		
		    for 0 <= w <= 1 and w not in a transition interval.
		width : float
		    Width of transition region, normalized so that 1 corresponds to pi
		    radians / sample. That is, the frequency is expressed as a fraction
		    of the Nyquist frequency.
		
		Returns
		-------
		numtaps : int
		    The length of the Kaiser window.
		beta : float
		    The beta parameter for the Kaiser window.
		
		See Also
		--------
		kaiser_beta, kaiser_atten
		
		Notes
		-----
		There are several ways to obtain the Kaiser window:
		
		- ``signal.windows.kaiser(numtaps, beta, sym=True)``
		- ``signal.get_window(beta, numtaps)``
		- ``signal.get_window(('kaiser', beta), numtaps)``
		
		The empirical equations discovered by Kaiser are used.
		
		References
		----------
		Oppenheim, Schafer, "Discrete-Time Signal Processing", pp.475-476.
		
		Examples
		--------
		We will use the Kaiser window method to design a lowpass FIR filter
		for a signal that is sampled at 1000 Hz.
		
		We want at least 65 dB rejection in the stop band, and in the pass
		band the gain should vary no more than 0.5%.
		
		We want a cutoff frequency of 175 Hz, with a transition between the
		pass band and the stop band of 24 Hz. That is, in the band [0, 163],
		the gain varies no more than 0.5%, and in the band [187, 500], the
		signal is attenuated by at least 65 dB.
		
		>>> from scipy.signal import kaiserord, firwin, freqz
		>>> import matplotlib.pyplot as plt
		>>> fs = 1000.0
		>>> cutoff = 175
		>>> width = 24
		
		The Kaiser method accepts just a single parameter to control the pass
		band ripple and the stop band rejection, so we use the more restrictive
		of the two. In this case, the pass band ripple is 0.005, or 46.02 dB,
		so we will use 65 dB as the design parameter.
		
		Use `kaiserord` to determine the length of the filter and the
		parameter for the Kaiser window.
		
		>>> numtaps, beta = kaiserord(65, width/(0.5*fs))
		>>> numtaps
		167
		>>> beta
		6.20426
		
		Use `firwin` to create the FIR filter.
		
		>>> taps = firwin(numtaps, cutoff, window=('kaiser', beta),
		...               scale=False, nyq=0.5*fs)
		
		Compute the frequency response of the filter.  ``w`` is the array of
		frequencies, and ``h`` is the corresponding complex array of frequency
		responses.
		
		>>> w, h = freqz(taps, worN=8000)
		>>> w *= 0.5*fs/np.pi  # Convert w to Hz.
		
		Compute the deviation of the magnitude of the filter's response from
		that of the ideal lowpass filter. Values in the transition region are
		set to ``nan``, so they won't appear in the plot.
		
		>>> ideal = w < cutoff  # The "ideal" frequency response.
		>>> deviation = np.abs(np.abs(h) - ideal)
		>>> deviation[(w > cutoff - 0.5*width) & (w < cutoff + 0.5*width)] = np.nan
		
		Plot the deviation. A close look at the left end of the stop band shows
		that the requirement for 65 dB attenuation is violated in the first lobe
		by about 0.125 dB. This is not unusual for the Kaiser window method.
		
		>>> plt.plot(w, 20*np.log10(np.abs(deviation)))
		>>> plt.xlim(0, 0.5*fs)
		>>> plt.ylim(-90, -60)
		>>> plt.grid(alpha=0.25)
		>>> plt.axhline(-65, color='r', ls='--', alpha=0.3)
		>>> plt.xlabel('Frequency (Hz)')
		>>> plt.ylabel('Deviation from ideal (dB)')
		>>> plt.title('Lowpass Filter Frequency Response')
		>>> plt.show()
	**/
	static public function kaiserord(ripple:Dynamic, width:Dynamic):Int;
	/**
		log(x, [base=math.e])
		Return the logarithm of x to the given base.
		
		If the base not specified, returns the natural logarithm (base e) of x.
	**/
	static public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute least-squares solution to equation Ax = b.
		
		Compute a vector x such that the 2-norm ``|b - A x|`` is minimized.
		
		Parameters
		----------
		a : (M, N) array_like
		    Left-hand side array
		b : (M,) or (M, K) array_like
		    Right hand side array
		cond : float, optional
		    Cutoff for 'small' singular values; used to determine effective
		    rank of a. Singular values smaller than
		    ``cond * largest_singular_value`` are considered zero.
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
		    Least-squares solution.
		residues : (K,) ndarray or float
		    Square of the 2-norm for each column in ``b - a x``, if ``M > N`` and
		    ``ndim(A) == n`` (returns a scalar if ``b`` is 1-D). Otherwise a
		    (0,)-shaped array is returned.
		rank : int
		    Effective rank of `a`.
		s : (min(M, N),) ndarray or None
		    Singular values of `a`. The condition number of ``a`` is
		    ``s[0] / s[-1]``.
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		ValueError
		    When parameters are not compatible.
		
		See Also
		--------
		scipy.optimize.nnls : linear least squares with non-negativity constraint
		
		Notes
		-----
		When ``'gelsy'`` is used as a driver, `residues` is set to a (0,)-shaped
		array and `s` is always ``None``.
		
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
	/**
		Convert a linear-phase FIR filter to minimum phase
		
		Parameters
		----------
		h : array
		    Linear-phase FIR filter coefficients.
		method : {'hilbert', 'homomorphic'}
		    The method to use:
		
		        'homomorphic' (default)
		            This method [4]_ [5]_ works best with filters with an
		            odd number of taps, and the resulting minimum phase filter
		            will have a magnitude response that approximates the square
		            root of the the original filter's magnitude response.
		
		        'hilbert'
		            This method [1]_ is designed to be used with equiripple
		            filters (e.g., from `remez`) with unity or zero gain
		            regions.
		
		n_fft : int
		    The number of points to use for the FFT. Should be at least a
		    few times larger than the signal length (see Notes).
		
		Returns
		-------
		h_minimum : array
		    The minimum-phase version of the filter, with length
		    ``(length(h) + 1) // 2``.
		
		See Also
		--------
		firwin
		firwin2
		remez
		
		Notes
		-----
		Both the Hilbert [1]_ or homomorphic [4]_ [5]_ methods require selection
		of an FFT length to estimate the complex cepstrum of the filter.
		
		In the case of the Hilbert method, the deviation from the ideal
		spectrum ``epsilon`` is related to the number of stopband zeros
		``n_stop`` and FFT length ``n_fft`` as::
		
		    epsilon = 2. * n_stop / n_fft
		
		For example, with 100 stopband zeros and a FFT length of 2048,
		``epsilon = 0.0976``. If we conservatively assume that the number of
		stopband zeros is one less than the filter length, we can take the FFT
		length to be the next power of 2 that satisfies ``epsilon=0.01`` as::
		
		    n_fft = 2 ** int(np.ceil(np.log2(2 * (len(h) - 1) / 0.01)))
		
		This gives reasonable results for both the Hilbert and homomorphic
		methods, and gives the value used when ``n_fft=None``.
		
		Alternative implementations exist for creating minimum-phase filters,
		including zero inversion [2]_ and spectral factorization [3]_ [4]_.
		For more information, see:
		
		    http://dspguru.com/dsp/howtos/how-to-design-minimum-phase-fir-filters
		
		Examples
		--------
		Create an optimal linear-phase filter, then convert it to minimum phase:
		
		>>> from scipy.signal import remez, minimum_phase, freqz, group_delay
		>>> import matplotlib.pyplot as plt
		>>> freq = [0, 0.2, 0.3, 1.0]
		>>> desired = [1, 0]
		>>> h_linear = remez(151, freq, desired, Hz=2.)
		
		Convert it to minimum phase:
		
		>>> h_min_hom = minimum_phase(h_linear, method='homomorphic')
		>>> h_min_hil = minimum_phase(h_linear, method='hilbert')
		
		Compare the three filters:
		
		>>> fig, axs = plt.subplots(4, figsize=(4, 8))
		>>> for h, style, color in zip((h_linear, h_min_hom, h_min_hil),
		...                            ('-', '-', '--'), ('k', 'r', 'c')):
		...     w, H = freqz(h)
		...     w, gd = group_delay((h, 1))
		...     w /= np.pi
		...     axs[0].plot(h, color=color, linestyle=style)
		...     axs[1].plot(w, np.abs(H), color=color, linestyle=style)
		...     axs[2].plot(w, 20 * np.log10(np.abs(H)), color=color, linestyle=style)
		...     axs[3].plot(w, gd, color=color, linestyle=style)
		>>> for ax in axs:
		...     ax.grid(True, color='0.5')
		...     ax.fill_between(freq[1:3], *ax.get_ylim(), color='#ffeeaa', zorder=1)
		>>> axs[0].set(xlim=[0, len(h_linear) - 1], ylabel='Amplitude', xlabel='Samples')
		>>> axs[1].legend(['Linear', 'Min-Hom', 'Min-Hil'], title='Phase')
		>>> for ax, ylim in zip(axs[1:], ([0, 1.1], [-150, 10], [-60, 60])):
		...     ax.set(xlim=[0, 1], ylim=ylim, xlabel='Frequency')
		>>> axs[1].set(ylabel='Magnitude')
		>>> axs[2].set(ylabel='Magnitude (dB)')
		>>> axs[3].set(ylabel='Group delay')
		>>> plt.tight_layout()
		
		References
		----------
		.. [1] N. Damera-Venkata and B. L. Evans, "Optimal design of real and
		       complex minimum phase digital FIR filters," Acoustics, Speech,
		       and Signal Processing, 1999. Proceedings., 1999 IEEE International
		       Conference on, Phoenix, AZ, 1999, pp. 1145-1148 vol.3.
		       :doi:`10.1109/ICASSP.1999.756179`
		.. [2] X. Chen and T. W. Parks, "Design of optimal minimum phase FIR
		       filters by direct factorization," Signal Processing,
		       vol. 10, no. 4, pp. 369-383, Jun. 1986.
		.. [3] T. Saramaki, "Finite Impulse Response Filter Design," in
		       Handbook for Digital Signal Processing, chapter 4,
		       New York: Wiley-Interscience, 1993.
		.. [4] J. S. Lim, Advanced Topics in Signal Processing.
		       Englewood Cliffs, N.J.: Prentice Hall, 1988.
		.. [5] A. V. Oppenheim, R. W. Schafer, and J. R. Buck,
		       "Discrete-Time Signal Processing," 2nd edition.
		       Upper Saddle River, N.J.: Prentice Hall, 1999.
	**/
	static public function minimum_phase(h:Dynamic, ?method:Dynamic, ?n_fft:Dynamic):Array<Dynamic>;
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
		    A monotonic sequence containing the band edges.
		    All elements must be non-negative and less than half the sampling
		    frequency as given by `fs`.
		desired : array_like
		    A sequence half the size of bands containing the desired gain
		    in each of the specified bands.
		weight : array_like, optional
		    A relative weighting to give to each band region. The length of
		    `weight` has to be half the length of `bands`.
		Hz : scalar, optional
		    *Deprecated.  Use `fs` instead.*
		    The sampling frequency in Hz. Default is 1.
		type : {'bandpass', 'differentiator', 'hilbert'}, optional
		    The type of filter:
		
		      * 'bandpass' : flat response in bands. This is the default.
		
		      * 'differentiator' : frequency proportional response in bands.
		
		      * 'hilbert' : filter with odd symmetry, that is, type III
		                    (for even order) or type IV (for odd order)
		                    linear phase filters.
		
		maxiter : int, optional
		    Maximum number of iterations of the algorithm. Default is 25.
		grid_density : int, optional
		    Grid density. The dense grid used in `remez` is of size
		    ``(numtaps + 1) * grid_density``. Default is 16.
		fs : float, optional
		    The sampling frequency of the signal.  Default is 1.
		
		Returns
		-------
		out : ndarray
		    A rank-1 array containing the coefficients of the optimal
		    (in a minimax sense) filter.
		
		See Also
		--------
		firls
		firwin
		firwin2
		minimum_phase
		
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
		In these examples `remez` gets used creating a bandpass, bandstop, lowpass
		and highpass filter. The used parameters are the filter order, an array
		with according frequency boundaries, the desired attenuation values and the
		sampling frequency. Using `freqz` the corresponding frequency response
		gets calculated and plotted.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> def plot_response(fs, w, h, title):
		...     "Utility function to plot response functions"
		...     fig = plt.figure()
		...     ax = fig.add_subplot(111)
		...     ax.plot(0.5*fs*w/np.pi, 20*np.log10(np.abs(h)))
		...     ax.set_ylim(-40, 5)
		...     ax.set_xlim(0, 0.5*fs)
		...     ax.grid(True)
		...     ax.set_xlabel('Frequency (Hz)')
		...     ax.set_ylabel('Gain (dB)')
		...     ax.set_title(title)
		
		This example shows a steep low pass transition according to the small
		transition width and high filter order:
		
		>>> fs = 22050.0       # Sample rate, Hz
		>>> cutoff = 8000.0    # Desired cutoff frequency, Hz
		>>> trans_width = 100  # Width of transition from pass band to stop band, Hz
		>>> numtaps = 400      # Size of the FIR filter.
		>>> taps = signal.remez(numtaps, [0, cutoff, cutoff + trans_width, 0.5*fs], [1, 0], Hz=fs)
		>>> w, h = signal.freqz(taps, [1], worN=2000)
		>>> plot_response(fs, w, h, "Low-pass Filter")
		
		This example shows a high pass filter:
		
		>>> fs = 22050.0       # Sample rate, Hz
		>>> cutoff = 2000.0    # Desired cutoff frequency, Hz
		>>> trans_width = 250  # Width of transition from pass band to stop band, Hz
		>>> numtaps = 125      # Size of the FIR filter.
		>>> taps = signal.remez(numtaps, [0, cutoff - trans_width, cutoff, 0.5*fs],
		...                     [0, 1], Hz=fs)
		>>> w, h = signal.freqz(taps, [1], worN=2000)
		>>> plot_response(fs, w, h, "High-pass Filter")
		
		For a signal sampled with 22 kHz a bandpass filter with a pass band of 2-5
		kHz gets calculated using the Remez algorithm. The transition width is 260
		Hz and the filter order 10:
		
		>>> fs = 22000.0         # Sample rate, Hz
		>>> band = [2000, 5000]  # Desired pass band, Hz
		>>> trans_width = 260    # Width of transition from pass band to stop band, Hz
		>>> numtaps = 10        # Size of the FIR filter.
		>>> edges = [0, band[0] - trans_width, band[0], band[1],
		...          band[1] + trans_width, 0.5*fs]
		>>> taps = signal.remez(numtaps, edges, [0, 1, 0], Hz=fs)
		>>> w, h = signal.freqz(taps, [1], worN=2000)
		>>> plot_response(fs, w, h, "Band-pass Filter")
		
		It can be seen that for this bandpass filter, the low order leads to higher
		ripple and less steep transitions. There is very low attenuation in the
		stop band and little overshoot in the pass band.  Of course the desired
		gain can be better approximated with a higher filter order.
		
		The next example shows a bandstop filter. Because of the high filter order
		the transition is quite steep:
		
		>>> fs = 20000.0         # Sample rate, Hz
		>>> band = [6000, 8000]  # Desired stop band, Hz
		>>> trans_width = 200    # Width of transition from pass band to stop band, Hz
		>>> numtaps = 175        # Size of the FIR filter.
		>>> edges = [0, band[0] - trans_width, band[0], band[1], band[1] + trans_width, 0.5*fs]
		>>> taps = signal.remez(numtaps, edges, [1, 0, 1], Hz=fs)
		>>> w, h = signal.freqz(taps, [1], worN=2000)
		>>> plot_response(fs, w, h, "Band-stop Filter")
		
		>>> plt.show()
	**/
	static public function remez(numtaps:Dynamic, bands:Dynamic, desired:Dynamic, ?weight:Dynamic, ?Hz:Dynamic, ?type:Dynamic, ?maxiter:Dynamic, ?grid_density:Dynamic, ?fs:Dynamic):Dynamic;
	/**
		Return the normalized sinc function.
		
		The sinc function is :math:`\sin(\pi x)/(\pi x)`.
		
		.. note::
		
		    Note the normalization factor of ``pi`` used in the definition.
		    This is the most commonly used definition in signal processing.
		    Use ``sinc(x / np.pi)`` to obtain the unnormalized sinc function
		    :math:`\sin(x)/(x)` that is more common in mathematics.
		
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
		       https://en.wikipedia.org/wiki/Sinc_function
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-4, 4, 41)
		>>> np.sinc(x)
		 array([-3.89804309e-17,  -4.92362781e-02,  -8.40918587e-02, # may vary
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
		Text(0.5, 1.0, 'Sinc Function')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("X")
		Text(0.5, 0, 'X')
		>>> plt.show()
	**/
	static public function sinc(x:Dynamic):Dynamic;
	/**
		Solves the linear equation set ``a * x = b`` for the unknown ``x``
		for square ``a`` matrix.
		
		If the data matrix is known to be a particular type then supplying the
		corresponding string to ``assume_a`` key chooses the dedicated solver.
		The available options are
		
		===================  ========
		 generic matrix       'gen'
		 symmetric            'sym'
		 hermitian            'her'
		 positive definite    'pos'
		===================  ========
		
		If omitted, ``'gen'`` is the default structure.
		
		The datatype of the arrays define which solver is called regardless
		of the values. In other words, even when the complex array entries have
		precisely zero imaginary parts, the complex solver will be called based
		on the data type of the array.
		
		Parameters
		----------
		a : (N, N) array_like
		    Square input data
		b : (N, NRHS) array_like
		    Input data for the right hand side.
		sym_pos : bool, optional
		    Assume `a` is symmetric and positive definite. This key is deprecated
		    and assume_a = 'pos' keyword is recommended instead. The functionality
		    is the same. It will be removed in the future.
		lower : bool, optional
		    If True, only the data contained in the lower triangle of `a`. Default
		    is to use upper triangle. (ignored for ``'gen'``)
		overwrite_a : bool, optional
		    Allow overwriting data in `a` (may enhance performance).
		    Default is False.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance).
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		assume_a : str, optional
		    Valid entries are explained above.
		transposed: bool, optional
		    If True, ``a^T x = b`` for real matrices, raises `NotImplementedError`
		    for complex matrices (only for True).
		
		Returns
		-------
		x : (N, NRHS) ndarray
		    The solution array.
		
		Raises
		------
		ValueError
		    If size mismatches detected or input a is not square.
		LinAlgError
		    If the matrix is singular.
		LinAlgWarning
		    If an ill-conditioned input a is detected.
		NotImplementedError
		    If transposed is True and input a is a complex matrix.
		
		Examples
		--------
		Given `a` and `b`, solve for `x`:
		
		>>> a = np.array([[3, 2, 0], [1, -1, 0], [0, 5, 1]])
		>>> b = np.array([2, 4, -1])
		>>> from scipy import linalg
		>>> x = linalg.solve(a, b)
		>>> x
		array([ 2., -2.,  9.])
		>>> np.dot(a, x) == b
		array([ True,  True,  True], dtype=bool)
		
		Notes
		-----
		If the input b matrix is a 1-D array with N elements, when supplied
		together with an NxN input a, it is assumed as a valid column vector
		despite the apparent size mismatch. This is compatible with the
		numpy.dot() behavior and the returned result is still 1-D array.
		
		The generic, symmetric, Hermitian and positive definite solutions are
		obtained via calling ?GESV, ?SYSV, ?HESV, and ?POSV routines of
		LAPACK respectively.
	**/
	static public function solve(a:Dynamic, b:Dynamic, ?sym_pos:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic, ?assume_a:Dynamic, ?transposed:Dynamic):Dynamic;
	/**
		Construct a Toeplitz matrix.
		
		The Toeplitz matrix has constant diagonals, with c as its first column
		and r as its first row. If r is not given, ``r == conjugate(c)`` is
		assumed.
		
		Parameters
		----------
		c : array_like
		    First column of the matrix.  Whatever the actual shape of `c`, it
		    will be converted to a 1-D array.
		r : array_like, optional
		    First row of the matrix. If None, ``r = conjugate(c)`` is assumed;
		    in this case, if c[0] is real, the result is a Hermitian matrix.
		    r[0] is ignored; the first row of the returned matrix is
		    ``[c[0], r[1:]]``.  Whatever the actual shape of `r`, it will be
		    converted to a 1-D array.
		
		Returns
		-------
		A : (len(c), len(r)) ndarray
		    The Toeplitz matrix. Dtype is the same as ``(c[0] + r[0]).dtype``.
		
		See Also
		--------
		circulant : circulant matrix
		hankel : Hankel matrix
		solve_toeplitz : Solve a Toeplitz system.
		
		Notes
		-----
		The behavior when `c` or `r` is a scalar, or when `c` is complex and
		`r` is None, was changed in version 0.8.0. The behavior in previous
		versions was undocumented and is no longer supported.
		
		Examples
		--------
		>>> from scipy.linalg import toeplitz
		>>> toeplitz([1,2,3], [1,4,5,6])
		array([[1, 4, 5, 6],
		       [2, 1, 4, 5],
		       [3, 2, 1, 4]])
		>>> toeplitz([1.0, 2+3j, 4-1j])
		array([[ 1.+0.j,  2.-3.j,  4.+1.j],
		       [ 2.+3.j,  1.+0.j,  2.-3.j],
		       [ 4.-1.j,  2.+3.j,  1.+0.j]])
	**/
	static public function toeplitz(c:Dynamic, ?r:Dynamic):Dynamic;
}