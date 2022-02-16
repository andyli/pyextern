/* This file is generated, do not edit! */
package scipy.signal.spectral;
@:pythonImport("scipy.signal.spectral") extern class Spectral_Module {
	/**
		Check whether the Constant OverLap Add (COLA) constraint is met.
		
		Parameters
		----------
		window : str or tuple or array_like
		    Desired window to use. If `window` is a string or tuple, it is
		    passed to `get_window` to generate the window values, which are
		    DFT-even by default. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length must be nperseg.
		nperseg : int
		    Length of each segment.
		noverlap : int
		    Number of points to overlap between segments.
		tol : float, optional
		    The allowed variance of a bin's weighted sum from the median bin
		    sum.
		
		Returns
		-------
		verdict : bool
		    `True` if chosen combination satisfies COLA within `tol`,
		    `False` otherwise
		
		See Also
		--------
		check_NOLA: Check whether the Nonzero Overlap Add (NOLA) constraint is met
		stft: Short Time Fourier Transform
		istft: Inverse Short Time Fourier Transform
		
		Notes
		-----
		In order to enable inversion of an STFT via the inverse STFT in
		`istft`, it is sufficient that the signal windowing obeys the constraint of
		"Constant OverLap Add" (COLA). This ensures that every point in the input
		data is equally weighted, thereby avoiding aliasing and allowing full
		reconstruction.
		
		Some examples of windows that satisfy COLA:
		    - Rectangular window at overlap of 0, 1/2, 2/3, 3/4, ...
		    - Bartlett window at overlap of 1/2, 3/4, 5/6, ...
		    - Hann window at 1/2, 2/3, 3/4, ...
		    - Any Blackman family window at 2/3 overlap
		    - Any window with ``noverlap = nperseg-1``
		
		A very comprehensive list of other windows may be found in [2]_,
		wherein the COLA condition is satisfied when the "Amplitude
		Flatness" is unity.
		
		.. versionadded:: 0.19.0
		
		References
		----------
		.. [1] Julius O. Smith III, "Spectral Audio Signal Processing", W3K
		       Publishing, 2011,ISBN 978-0-9745607-3-1.
		.. [2] G. Heinzel, A. Ruediger and R. Schilling, "Spectrum and
		       spectral density estimation by the Discrete Fourier transform
		       (DFT), including a comprehensive list of window functions and
		       some new at-top windows", 2002,
		       http://hdl.handle.net/11858/00-001M-0000-0013-557A-5
		
		Examples
		--------
		>>> from scipy import signal
		
		Confirm COLA condition for rectangular window of 75% (3/4) overlap:
		
		>>> signal.check_COLA(signal.windows.boxcar(100), 100, 75)
		True
		
		COLA is not true for 25% (1/4) overlap, though:
		
		>>> signal.check_COLA(signal.windows.boxcar(100), 100, 25)
		False
		
		"Symmetrical" Hann window (for filter design) is not COLA:
		
		>>> signal.check_COLA(signal.windows.hann(120, sym=True), 120, 60)
		False
		
		"Periodic" or "DFT-even" Hann window (for FFT analysis) is COLA for
		overlap of 1/2, 2/3, 3/4, etc.:
		
		>>> signal.check_COLA(signal.windows.hann(120, sym=False), 120, 60)
		True
		
		>>> signal.check_COLA(signal.windows.hann(120, sym=False), 120, 80)
		True
		
		>>> signal.check_COLA(signal.windows.hann(120, sym=False), 120, 90)
		True
	**/
	static public function check_COLA(window:Dynamic, nperseg:Dynamic, noverlap:Dynamic, ?tol:Dynamic):Bool;
	/**
		Check whether the Nonzero Overlap Add (NOLA) constraint is met.
		
		Parameters
		----------
		window : str or tuple or array_like
		    Desired window to use. If `window` is a string or tuple, it is
		    passed to `get_window` to generate the window values, which are
		    DFT-even by default. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length must be nperseg.
		nperseg : int
		    Length of each segment.
		noverlap : int
		    Number of points to overlap between segments.
		tol : float, optional
		    The allowed variance of a bin's weighted sum from the median bin
		    sum.
		
		Returns
		-------
		verdict : bool
		    `True` if chosen combination satisfies the NOLA constraint within
		    `tol`, `False` otherwise
		
		See Also
		--------
		check_COLA: Check whether the Constant OverLap Add (COLA) constraint is met
		stft: Short Time Fourier Transform
		istft: Inverse Short Time Fourier Transform
		
		Notes
		-----
		In order to enable inversion of an STFT via the inverse STFT in
		`istft`, the signal windowing must obey the constraint of "nonzero
		overlap add" (NOLA):
		
		.. math:: \sum_{t}w^{2}[n-tH] \ne 0
		
		for all :math:`n`, where :math:`w` is the window function, :math:`t` is the
		frame index, and :math:`H` is the hop size (:math:`H` = `nperseg` -
		`noverlap`).
		
		This ensures that the normalization factors in the denominator of the
		overlap-add inversion equation are not zero. Only very pathological windows
		will fail the NOLA constraint.
		
		.. versionadded:: 1.2.0
		
		References
		----------
		.. [1] Julius O. Smith III, "Spectral Audio Signal Processing", W3K
		       Publishing, 2011,ISBN 978-0-9745607-3-1.
		.. [2] G. Heinzel, A. Ruediger and R. Schilling, "Spectrum and
		       spectral density estimation by the Discrete Fourier transform
		       (DFT), including a comprehensive list of window functions and
		       some new at-top windows", 2002,
		       http://hdl.handle.net/11858/00-001M-0000-0013-557A-5
		
		Examples
		--------
		>>> from scipy import signal
		
		Confirm NOLA condition for rectangular window of 75% (3/4) overlap:
		
		>>> signal.check_NOLA(signal.windows.boxcar(100), 100, 75)
		True
		
		NOLA is also true for 25% (1/4) overlap:
		
		>>> signal.check_NOLA(signal.windows.boxcar(100), 100, 25)
		True
		
		"Symmetrical" Hann window (for filter design) is also NOLA:
		
		>>> signal.check_NOLA(signal.windows.hann(120, sym=True), 120, 60)
		True
		
		As long as there is overlap, it takes quite a pathological window to fail
		NOLA:
		
		>>> w = np.ones(64, dtype="float")
		>>> w[::2] = 0
		>>> signal.check_NOLA(w, 64, 32)
		False
		
		If there is not enough overlap, a window with zeros at the ends will not
		work:
		
		>>> signal.check_NOLA(signal.windows.hann(64), 64, 0)
		False
		>>> signal.check_NOLA(signal.windows.hann(64), 64, 1)
		False
		>>> signal.check_NOLA(signal.windows.hann(64), 64, 2)
		True
	**/
	static public function check_NOLA(window:Dynamic, nperseg:Dynamic, noverlap:Dynamic, ?tol:Dynamic):Bool;
	/**
		Estimate the magnitude squared coherence estimate, Cxy, of
		discrete-time signals X and Y using Welch's method.
		
		``Cxy = abs(Pxy)**2/(Pxx*Pyy)``, where `Pxx` and `Pyy` are power
		spectral density estimates of X and Y, and `Pxy` is the cross
		spectral density estimate of X and Y.
		
		Parameters
		----------
		x : array_like
		    Time series of measurement values
		y : array_like
		    Time series of measurement values
		fs : float, optional
		    Sampling frequency of the `x` and `y` time series. Defaults
		    to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. If `window` is a string or tuple, it is
		    passed to `get_window` to generate the window values, which are
		    DFT-even by default. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length must be nperseg. Defaults
		    to a Hann window.
		nperseg : int, optional
		    Length of each segment. Defaults to None, but if window is str or
		    tuple, is set to 256, and if window is array_like, is set to the
		    length of the window.
		noverlap: int, optional
		    Number of points to overlap between segments. If `None`,
		    ``noverlap = nperseg // 2``. Defaults to `None`.
		nfft : int, optional
		    Length of the FFT used, if a zero padded FFT is desired. If
		    `None`, the FFT length is `nperseg`. Defaults to `None`.
		detrend : str or function or `False`, optional
		    Specifies how to detrend each segment. If `detrend` is a
		    string, it is passed as the `type` argument to the `detrend`
		    function. If it is a function, it takes a segment and returns a
		    detrended segment. If `detrend` is `False`, no detrending is
		    done. Defaults to 'constant'.
		axis : int, optional
		    Axis along which the coherence is computed for both inputs; the
		    default is over the last axis (i.e. ``axis=-1``).
		
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
		-----
		An appropriate amount of overlap will depend on the choice of window
		and on your requirements. For the default Hann window an overlap of
		50% is a reasonable trade off between accurately estimating the
		signal power, while not over counting any of the data. Narrower
		windows may require a larger overlap.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] P. Welch, "The use of the fast Fourier transform for the
		       estimation of power spectra: A method based on time averaging
		       over short, modified periodograms", IEEE Trans. Audio
		       Electroacoust. vol. 15, pp. 70-73, 1967.
		.. [2] Stoica, Petre, and Randolph Moses, "Spectral Analysis of
		       Signals" Prentice Hall, 2005
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.default_rng()
		
		Generate two test signals with some common features.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 20
		>>> freq = 1234.0
		>>> noise_power = 0.001 * fs / 2
		>>> time = np.arange(N) / fs
		>>> b, a = signal.butter(2, 0.25, 'low')
		>>> x = rng.normal(scale=np.sqrt(noise_power), size=time.shape)
		>>> y = signal.lfilter(b, a, x)
		>>> x += amp*np.sin(2*np.pi*freq*time)
		>>> y += rng.normal(scale=0.1*np.sqrt(noise_power), size=time.shape)
		
		Compute and plot the coherence.
		
		>>> f, Cxy = signal.coherence(x, y, fs, nperseg=1024)
		>>> plt.semilogy(f, Cxy)
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('Coherence')
		>>> plt.show()
	**/
	static public function coherence(x:Dynamic, y:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?axis:Dynamic):Dynamic;
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
		Estimate the cross power spectral density, Pxy, using Welch's method.
		
		Parameters
		----------
		x : array_like
		    Time series of measurement values
		y : array_like
		    Time series of measurement values
		fs : float, optional
		    Sampling frequency of the `x` and `y` time series. Defaults
		    to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. If `window` is a string or tuple, it is
		    passed to `get_window` to generate the window values, which are
		    DFT-even by default. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length must be nperseg. Defaults
		    to a Hann window.
		nperseg : int, optional
		    Length of each segment. Defaults to None, but if window is str or
		    tuple, is set to 256, and if window is array_like, is set to the
		    length of the window.
		noverlap: int, optional
		    Number of points to overlap between segments. If `None`,
		    ``noverlap = nperseg // 2``. Defaults to `None`.
		nfft : int, optional
		    Length of the FFT used, if a zero padded FFT is desired. If
		    `None`, the FFT length is `nperseg`. Defaults to `None`.
		detrend : str or function or `False`, optional
		    Specifies how to detrend each segment. If `detrend` is a
		    string, it is passed as the `type` argument to the `detrend`
		    function. If it is a function, it takes a segment and returns a
		    detrended segment. If `detrend` is `False`, no detrending is
		    done. Defaults to 'constant'.
		return_onesided : bool, optional
		    If `True`, return a one-sided spectrum for real data. If
		    `False` return a two-sided spectrum. Defaults to `True`, but for
		    complex data, a two-sided spectrum is always returned.
		scaling : { 'density', 'spectrum' }, optional
		    Selects between computing the cross spectral density ('density')
		    where `Pxy` has units of V**2/Hz and computing the cross spectrum
		    ('spectrum') where `Pxy` has units of V**2, if `x` and `y` are
		    measured in V and `fs` is measured in Hz. Defaults to 'density'
		axis : int, optional
		    Axis along which the CSD is computed for both inputs; the
		    default is over the last axis (i.e. ``axis=-1``).
		average : { 'mean', 'median' }, optional
		    Method to use when averaging periodograms. If the spectrum is
		    complex, the average is computed separately for the real and
		    imaginary parts. Defaults to 'mean'.
		
		    .. versionadded:: 1.2.0
		
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
		welch: Power spectral density by Welch's method. [Equivalent to
		       csd(x,x)]
		coherence: Magnitude squared coherence by Welch's method.
		
		Notes
		-----
		By convention, Pxy is computed with the conjugate FFT of X
		multiplied by the FFT of Y.
		
		If the input series differ in length, the shorter series will be
		zero-padded to match.
		
		An appropriate amount of overlap will depend on the choice of window
		and on your requirements. For the default Hann window an overlap of
		50% is a reasonable trade off between accurately estimating the
		signal power, while not over counting any of the data. Narrower
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
		>>> rng = np.random.default_rng()
		
		Generate two test signals with some common features.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 20
		>>> freq = 1234.0
		>>> noise_power = 0.001 * fs / 2
		>>> time = np.arange(N) / fs
		>>> b, a = signal.butter(2, 0.25, 'low')
		>>> x = rng.normal(scale=np.sqrt(noise_power), size=time.shape)
		>>> y = signal.lfilter(b, a, x)
		>>> x += amp*np.sin(2*np.pi*freq*time)
		>>> y += rng.normal(scale=0.1*np.sqrt(noise_power), size=time.shape)
		
		Compute and plot the magnitude of the cross spectral density.
		
		>>> f, Pxy = signal.csd(x, y, fs, nperseg=1024)
		>>> plt.semilogy(f, np.abs(Pxy))
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('CSD [V**2/Hz]')
		>>> plt.show()
	**/
	static public function csd(x:Dynamic, y:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?scaling:Dynamic, ?axis:Dynamic, ?average:Dynamic):Dynamic;
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
		Perform the inverse Short Time Fourier transform (iSTFT).
		
		Parameters
		----------
		Zxx : array_like
		    STFT of the signal to be reconstructed. If a purely real array
		    is passed, it will be cast to a complex data type.
		fs : float, optional
		    Sampling frequency of the time series. Defaults to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. If `window` is a string or tuple, it is
		    passed to `get_window` to generate the window values, which are
		    DFT-even by default. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length must be nperseg. Defaults
		    to a Hann window. Must match the window used to generate the
		    STFT for faithful inversion.
		nperseg : int, optional
		    Number of data points corresponding to each STFT segment. This
		    parameter must be specified if the number of data points per
		    segment is odd, or if the STFT was padded via ``nfft >
		    nperseg``. If `None`, the value depends on the shape of
		    `Zxx` and `input_onesided`. If `input_onesided` is `True`,
		    ``nperseg=2*(Zxx.shape[freq_axis] - 1)``. Otherwise,
		    ``nperseg=Zxx.shape[freq_axis]``. Defaults to `None`.
		noverlap : int, optional
		    Number of points to overlap between segments. If `None`, half
		    of the segment length. Defaults to `None`. When specified, the
		    COLA constraint must be met (see Notes below), and should match
		    the parameter used to generate the STFT. Defaults to `None`.
		nfft : int, optional
		    Number of FFT points corresponding to each STFT segment. This
		    parameter must be specified if the STFT was padded via ``nfft >
		    nperseg``. If `None`, the default values are the same as for
		    `nperseg`, detailed above, with one exception: if
		    `input_onesided` is True and
		    ``nperseg==2*Zxx.shape[freq_axis] - 1``, `nfft` also takes on
		    that value. This case allows the proper inversion of an
		    odd-length unpadded STFT using ``nfft=None``. Defaults to
		    `None`.
		input_onesided : bool, optional
		    If `True`, interpret the input array as one-sided FFTs, such
		    as is returned by `stft` with ``return_onesided=True`` and
		    `numpy.fft.rfft`. If `False`, interpret the input as a a
		    two-sided FFT. Defaults to `True`.
		boundary : bool, optional
		    Specifies whether the input signal was extended at its
		    boundaries by supplying a non-`None` ``boundary`` argument to
		    `stft`. Defaults to `True`.
		time_axis : int, optional
		    Where the time segments of the STFT is located; the default is
		    the last axis (i.e. ``axis=-1``).
		freq_axis : int, optional
		    Where the frequency axis of the STFT is located; the default is
		    the penultimate axis (i.e. ``axis=-2``).
		
		Returns
		-------
		t : ndarray
		    Array of output data times.
		x : ndarray
		    iSTFT of `Zxx`.
		
		See Also
		--------
		stft: Short Time Fourier Transform
		check_COLA: Check whether the Constant OverLap Add (COLA) constraint
		            is met
		check_NOLA: Check whether the Nonzero Overlap Add (NOLA) constraint is met
		
		Notes
		-----
		In order to enable inversion of an STFT via the inverse STFT with
		`istft`, the signal windowing must obey the constraint of "nonzero
		overlap add" (NOLA):
		
		.. math:: \sum_{t}w^{2}[n-tH] \ne 0
		
		This ensures that the normalization factors that appear in the denominator
		of the overlap-add reconstruction equation
		
		.. math:: x[n]=\frac{\sum_{t}x_{t}[n]w[n-tH]}{\sum_{t}w^{2}[n-tH]}
		
		are not zero. The NOLA constraint can be checked with the `check_NOLA`
		function.
		
		An STFT which has been modified (via masking or otherwise) is not
		guaranteed to correspond to a exactly realizible signal. This
		function implements the iSTFT via the least-squares estimation
		algorithm detailed in [2]_, which produces a signal that minimizes
		the mean squared error between the STFT of the returned signal and
		the modified STFT.
		
		.. versionadded:: 0.19.0
		
		References
		----------
		.. [1] Oppenheim, Alan V., Ronald W. Schafer, John R. Buck
		       "Discrete-Time Signal Processing", Prentice Hall, 1999.
		.. [2] Daniel W. Griffin, Jae S. Lim "Signal Estimation from
		       Modified Short-Time Fourier Transform", IEEE 1984,
		       10.1109/TASSP.1984.1164317
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.default_rng()
		
		Generate a test signal, a 2 Vrms sine wave at 50Hz corrupted by
		0.001 V**2/Hz of white noise sampled at 1024 Hz.
		
		>>> fs = 1024
		>>> N = 10*fs
		>>> nperseg = 512
		>>> amp = 2 * np.sqrt(2)
		>>> noise_power = 0.001 * fs / 2
		>>> time = np.arange(N) / float(fs)
		>>> carrier = amp * np.sin(2*np.pi*50*time)
		>>> noise = rng.normal(scale=np.sqrt(noise_power),
		...                    size=time.shape)
		>>> x = carrier + noise
		
		Compute the STFT, and plot its magnitude
		
		>>> f, t, Zxx = signal.stft(x, fs=fs, nperseg=nperseg)
		>>> plt.figure()
		>>> plt.pcolormesh(t, f, np.abs(Zxx), vmin=0, vmax=amp, shading='gouraud')
		>>> plt.ylim([f[1], f[-1]])
		>>> plt.title('STFT Magnitude')
		>>> plt.ylabel('Frequency [Hz]')
		>>> plt.xlabel('Time [sec]')
		>>> plt.yscale('log')
		>>> plt.show()
		
		Zero the components that are 10% or less of the carrier magnitude,
		then convert back to a time series via inverse STFT
		
		>>> Zxx = np.where(np.abs(Zxx) >= amp/10, Zxx, 0)
		>>> _, xrec = signal.istft(Zxx, fs)
		
		Compare the cleaned signal with the original and true carrier signals.
		
		>>> plt.figure()
		>>> plt.plot(time, x, time, xrec, time, carrier)
		>>> plt.xlim([2, 2.1])
		>>> plt.xlabel('Time [sec]')
		>>> plt.ylabel('Signal')
		>>> plt.legend(['Carrier + Noise', 'Filtered via STFT', 'True Carrier'])
		>>> plt.show()
		
		Note that the cleaned signal does not start as abruptly as the original,
		since some of the coefficients of the transient were also removed:
		
		>>> plt.figure()
		>>> plt.plot(time, x, time, xrec, time, carrier)
		>>> plt.xlim([0, 0.1])
		>>> plt.xlabel('Time [sec]')
		>>> plt.ylabel('Signal')
		>>> plt.legend(['Carrier + Noise', 'Filtered via STFT', 'True Carrier'])
		>>> plt.show()
	**/
	static public function istft(Zxx:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?input_onesided:Dynamic, ?boundary:Dynamic, ?time_axis:Dynamic, ?freq_axis:Dynamic):Dynamic;
	/**
		lombscargle(x, y, freqs)
		
		Computes the Lomb-Scargle periodogram.
		
		The Lomb-Scargle periodogram was developed by Lomb [1]_ and further
		extended by Scargle [2]_ to find, and test the significance of weak
		periodic signals with uneven temporal sampling.
		
		When *normalize* is False (default) the computed periodogram
		is unnormalized, it takes the value ``(A**2) * N/4`` for a harmonic
		signal with amplitude A for sufficiently large N.
		
		When *normalize* is True the computed periodogram is normalized by
		the residuals of the data around a constant reference model (at zero).
		
		Input arrays should be 1-D and will be cast to float64.
		
		Parameters
		----------
		x : array_like
		    Sample times.
		y : array_like
		    Measurement values.
		freqs : array_like
		    Angular frequencies for output periodogram.
		precenter : bool, optional
		    Pre-center measurement values by subtracting the mean.
		normalize : bool, optional
		    Compute normalized periodogram.
		
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
		
		See Also
		--------
		istft: Inverse Short Time Fourier Transform
		check_COLA: Check whether the Constant OverLap Add (COLA) constraint is met
		welch: Power spectral density by Welch's method
		spectrogram: Spectrogram by Welch's method
		csd: Cross spectral density by Welch's method
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.default_rng()
		
		First define some input parameters for the signal:
		
		>>> A = 2.
		>>> w0 = 1.  # rad/sec
		>>> nin = 150
		>>> nout = 100000
		
		Randomly generate sample times:
		
		>>> x = rng.uniform(0, 10*np.pi, nin)
		
		Plot a sine wave for the selected times:
		
		>>> y = A * np.cos(w0*x)
		
		Define the array of frequencies for which to compute the periodogram:
		
		>>> w = np.linspace(0.01, 10, nout)
		
		Calculate Lomb-Scargle periodogram:
		
		>>> import scipy.signal as signal
		>>> pgram = signal.lombscargle(x, y, w, normalize=True)
		
		Now make a plot of the input data:
		
		>>> fig, (ax_t, ax_w) = plt.subplots(2, 1, constrained_layout=True)
		>>> ax_t.plot(x, y, 'b+')
		>>> ax_t.set_xlabel('Time [s]')
		
		Then plot the normalized periodogram:
		
		>>> ax_w.plot(w, pgram)
		>>> ax_w.set_xlabel('Angular frequency [rad/s]')
		>>> ax_w.set_ylabel('Normalized amplitude')
		>>> plt.show()
	**/
	static public function lombscargle(x:Dynamic, y:Dynamic, freqs:Dynamic, ?precenter:Dynamic, ?normalize:Dynamic):Dynamic;
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
		Estimate power spectral density using a periodogram.
		
		Parameters
		----------
		x : array_like
		    Time series of measurement values
		fs : float, optional
		    Sampling frequency of the `x` time series. Defaults to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. If `window` is a string or tuple, it is
		    passed to `get_window` to generate the window values, which are
		    DFT-even by default. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length must be nperseg. Defaults
		    to 'boxcar'.
		nfft : int, optional
		    Length of the FFT used. If `None` the length of `x` will be
		    used.
		detrend : str or function or `False`, optional
		    Specifies how to detrend each segment. If `detrend` is a
		    string, it is passed as the `type` argument to the `detrend`
		    function. If it is a function, it takes a segment and returns a
		    detrended segment. If `detrend` is `False`, no detrending is
		    done. Defaults to 'constant'.
		return_onesided : bool, optional
		    If `True`, return a one-sided spectrum for real data. If
		    `False` return a two-sided spectrum. Defaults to `True`, but for
		    complex data, a two-sided spectrum is always returned.
		scaling : { 'density', 'spectrum' }, optional
		    Selects between computing the power spectral density ('density')
		    where `Pxx` has units of V**2/Hz and computing the power
		    spectrum ('spectrum') where `Pxx` has units of V**2, if `x`
		    is measured in V and `fs` is measured in Hz. Defaults to
		    'density'
		axis : int, optional
		    Axis along which the periodogram is computed; the default is
		    over the last axis (i.e. ``axis=-1``).
		
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
		>>> rng = np.random.default_rng()
		
		Generate a test signal, a 2 Vrms sine wave at 1234 Hz, corrupted by
		0.001 V**2/Hz of white noise sampled at 10 kHz.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 2*np.sqrt(2)
		>>> freq = 1234.0
		>>> noise_power = 0.001 * fs / 2
		>>> time = np.arange(N) / fs
		>>> x = amp*np.sin(2*np.pi*freq*time)
		>>> x += rng.normal(scale=np.sqrt(noise_power), size=time.shape)
		
		Compute and plot the power spectral density.
		
		>>> f, Pxx_den = signal.periodogram(x, fs)
		>>> plt.semilogy(f, Pxx_den)
		>>> plt.ylim([1e-7, 1e2])
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('PSD [V**2/Hz]')
		>>> plt.show()
		
		If we average the last half of the spectral density, to exclude the
		peak, we can recover the noise power on the signal.
		
		>>> np.mean(Pxx_den[25000:])
		0.000985320699252543
		
		Now compute and plot the power spectrum.
		
		>>> f, Pxx_spec = signal.periodogram(x, fs, 'flattop', scaling='spectrum')
		>>> plt.figure()
		>>> plt.semilogy(f, np.sqrt(Pxx_spec))
		>>> plt.ylim([1e-4, 1e1])
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('Linear spectrum [V RMS]')
		>>> plt.show()
		
		The peak height in the power spectrum is an estimate of the RMS
		amplitude.
		
		>>> np.sqrt(Pxx_spec.max())
		2.0077340678640727
	**/
	static public function periodogram(x:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?scaling:Dynamic, ?axis:Dynamic):Dynamic;
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
		    Desired window to use. If `window` is a string or tuple, it is
		    passed to `get_window` to generate the window values, which are
		    DFT-even by default. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length must be nperseg.
		    Defaults to a Tukey window with shape parameter of 0.25.
		nperseg : int, optional
		    Length of each segment. Defaults to None, but if window is str or
		    tuple, is set to 256, and if window is array_like, is set to the
		    length of the window.
		noverlap : int, optional
		    Number of points to overlap between segments. If `None`,
		    ``noverlap = nperseg // 8``. Defaults to `None`.
		nfft : int, optional
		    Length of the FFT used, if a zero padded FFT is desired. If
		    `None`, the FFT length is `nperseg`. Defaults to `None`.
		detrend : str or function or `False`, optional
		    Specifies how to detrend each segment. If `detrend` is a
		    string, it is passed as the `type` argument to the `detrend`
		    function. If it is a function, it takes a segment and returns a
		    detrended segment. If `detrend` is `False`, no detrending is
		    done. Defaults to 'constant'.
		return_onesided : bool, optional
		    If `True`, return a one-sided spectrum for real data. If
		    `False` return a two-sided spectrum. Defaults to `True`, but for
		    complex data, a two-sided spectrum is always returned.
		scaling : { 'density', 'spectrum' }, optional
		    Selects between computing the power spectral density ('density')
		    where `Sxx` has units of V**2/Hz and computing the power
		    spectrum ('spectrum') where `Sxx` has units of V**2, if `x`
		    is measured in V and `fs` is measured in Hz. Defaults to
		    'density'.
		axis : int, optional
		    Axis along which the spectrogram is computed; the default is over
		    the last axis (i.e. ``axis=-1``).
		mode : str, optional
		    Defines what kind of return values are expected. Options are
		    ['psd', 'complex', 'magnitude', 'angle', 'phase']. 'complex' is
		    equivalent to the output of `stft` with no padding or boundary
		    extension. 'magnitude' returns the absolute magnitude of the
		    STFT. 'angle' and 'phase' return the complex angle of the STFT,
		    with and without unwrapping, respectively.
		
		Returns
		-------
		f : ndarray
		    Array of sample frequencies.
		t : ndarray
		    Array of segment times.
		Sxx : ndarray
		    Spectrogram of x. By default, the last axis of Sxx corresponds
		    to the segment times.
		
		See Also
		--------
		periodogram: Simple, optionally modified periodogram
		lombscargle: Lomb-Scargle periodogram for unevenly sampled data
		welch: Power spectral density by Welch's method.
		csd: Cross spectral density by Welch's method.
		
		Notes
		-----
		An appropriate amount of overlap will depend on the choice of window
		and on your requirements. In contrast to welch's method, where the
		entire data stream is averaged over, one may wish to use a smaller
		overlap (or perhaps none at all) when computing a spectrogram, to
		maintain some statistical independence between individual segments.
		It is for this reason that the default window is a Tukey window with
		1/8th of a window's length overlap at each end.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] Oppenheim, Alan V., Ronald W. Schafer, John R. Buck
		       "Discrete-Time Signal Processing", Prentice Hall, 1999.
		
		Examples
		--------
		>>> from scipy import signal
		>>> from scipy.fft import fftshift
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.default_rng()
		
		Generate a test signal, a 2 Vrms sine wave whose frequency is slowly
		modulated around 3kHz, corrupted by white noise of exponentially
		decreasing magnitude sampled at 10 kHz.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 2 * np.sqrt(2)
		>>> noise_power = 0.01 * fs / 2
		>>> time = np.arange(N) / float(fs)
		>>> mod = 500*np.cos(2*np.pi*0.25*time)
		>>> carrier = amp * np.sin(2*np.pi*3e3*time + mod)
		>>> noise = rng.normal(scale=np.sqrt(noise_power), size=time.shape)
		>>> noise *= np.exp(-time/5)
		>>> x = carrier + noise
		
		Compute and plot the spectrogram.
		
		>>> f, t, Sxx = signal.spectrogram(x, fs)
		>>> plt.pcolormesh(t, f, Sxx, shading='gouraud')
		>>> plt.ylabel('Frequency [Hz]')
		>>> plt.xlabel('Time [sec]')
		>>> plt.show()
		
		Note, if using output that is not one sided, then use the following:
		
		>>> f, t, Sxx = signal.spectrogram(x, fs, return_onesided=False)
		>>> plt.pcolormesh(t, fftshift(f), fftshift(Sxx, axes=0), shading='gouraud')
		>>> plt.ylabel('Frequency [Hz]')
		>>> plt.xlabel('Time [sec]')
		>>> plt.show()
	**/
	static public function spectrogram(x:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?scaling:Dynamic, ?axis:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Compute the Short Time Fourier Transform (STFT).
		
		STFTs can be used as a way of quantifying the change of a
		nonstationary signal's frequency and phase content over time.
		
		Parameters
		----------
		x : array_like
		    Time series of measurement values
		fs : float, optional
		    Sampling frequency of the `x` time series. Defaults to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. If `window` is a string or tuple, it is
		    passed to `get_window` to generate the window values, which are
		    DFT-even by default. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length must be nperseg. Defaults
		    to a Hann window.
		nperseg : int, optional
		    Length of each segment. Defaults to 256.
		noverlap : int, optional
		    Number of points to overlap between segments. If `None`,
		    ``noverlap = nperseg // 2``. Defaults to `None`. When
		    specified, the COLA constraint must be met (see Notes below).
		nfft : int, optional
		    Length of the FFT used, if a zero padded FFT is desired. If
		    `None`, the FFT length is `nperseg`. Defaults to `None`.
		detrend : str or function or `False`, optional
		    Specifies how to detrend each segment. If `detrend` is a
		    string, it is passed as the `type` argument to the `detrend`
		    function. If it is a function, it takes a segment and returns a
		    detrended segment. If `detrend` is `False`, no detrending is
		    done. Defaults to `False`.
		return_onesided : bool, optional
		    If `True`, return a one-sided spectrum for real data. If
		    `False` return a two-sided spectrum. Defaults to `True`, but for
		    complex data, a two-sided spectrum is always returned.
		boundary : str or None, optional
		    Specifies whether the input signal is extended at both ends, and
		    how to generate the new values, in order to center the first
		    windowed segment on the first input point. This has the benefit
		    of enabling reconstruction of the first input point when the
		    employed window function starts at zero. Valid options are
		    ``['even', 'odd', 'constant', 'zeros', None]``. Defaults to
		    'zeros', for zero padding extension. I.e. ``[1, 2, 3, 4]`` is
		    extended to ``[0, 1, 2, 3, 4, 0]`` for ``nperseg=3``.
		padded : bool, optional
		    Specifies whether the input signal is zero-padded at the end to
		    make the signal fit exactly into an integer number of window
		    segments, so that all of the signal is included in the output.
		    Defaults to `True`. Padding occurs after boundary extension, if
		    `boundary` is not `None`, and `padded` is `True`, as is the
		    default.
		axis : int, optional
		    Axis along which the STFT is computed; the default is over the
		    last axis (i.e. ``axis=-1``).
		
		Returns
		-------
		f : ndarray
		    Array of sample frequencies.
		t : ndarray
		    Array of segment times.
		Zxx : ndarray
		    STFT of `x`. By default, the last axis of `Zxx` corresponds
		    to the segment times.
		
		See Also
		--------
		istft: Inverse Short Time Fourier Transform
		check_COLA: Check whether the Constant OverLap Add (COLA) constraint
		            is met
		check_NOLA: Check whether the Nonzero Overlap Add (NOLA) constraint is met
		welch: Power spectral density by Welch's method.
		spectrogram: Spectrogram by Welch's method.
		csd: Cross spectral density by Welch's method.
		lombscargle: Lomb-Scargle periodogram for unevenly sampled data
		
		Notes
		-----
		In order to enable inversion of an STFT via the inverse STFT in
		`istft`, the signal windowing must obey the constraint of "Nonzero
		OverLap Add" (NOLA), and the input signal must have complete
		windowing coverage (i.e. ``(x.shape[axis] - nperseg) %
		(nperseg-noverlap) == 0``). The `padded` argument may be used to
		accomplish this.
		
		Given a time-domain signal :math:`x[n]`, a window :math:`w[n]`, and a hop
		size :math:`H` = `nperseg - noverlap`, the windowed frame at time index
		:math:`t` is given by
		
		.. math:: x_{t}[n]=x[n]w[n-tH]
		
		The overlap-add (OLA) reconstruction equation is given by
		
		.. math:: x[n]=\frac{\sum_{t}x_{t}[n]w[n-tH]}{\sum_{t}w^{2}[n-tH]}
		
		The NOLA constraint ensures that every normalization term that appears
		in the denomimator of the OLA reconstruction equation is nonzero. Whether a
		choice of `window`, `nperseg`, and `noverlap` satisfy this constraint can
		be tested with `check_NOLA`.
		
		.. versionadded:: 0.19.0
		
		References
		----------
		.. [1] Oppenheim, Alan V., Ronald W. Schafer, John R. Buck
		       "Discrete-Time Signal Processing", Prentice Hall, 1999.
		.. [2] Daniel W. Griffin, Jae S. Lim "Signal Estimation from
		       Modified Short-Time Fourier Transform", IEEE 1984,
		       10.1109/TASSP.1984.1164317
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.default_rng()
		
		Generate a test signal, a 2 Vrms sine wave whose frequency is slowly
		modulated around 3kHz, corrupted by white noise of exponentially
		decreasing magnitude sampled at 10 kHz.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 2 * np.sqrt(2)
		>>> noise_power = 0.01 * fs / 2
		>>> time = np.arange(N) / float(fs)
		>>> mod = 500*np.cos(2*np.pi*0.25*time)
		>>> carrier = amp * np.sin(2*np.pi*3e3*time + mod)
		>>> noise = rng.normal(scale=np.sqrt(noise_power),
		...                    size=time.shape)
		>>> noise *= np.exp(-time/5)
		>>> x = carrier + noise
		
		Compute and plot the STFT's magnitude.
		
		>>> f, t, Zxx = signal.stft(x, fs, nperseg=1000)
		>>> plt.pcolormesh(t, f, np.abs(Zxx), vmin=0, vmax=amp, shading='gouraud')
		>>> plt.title('STFT Magnitude')
		>>> plt.ylabel('Frequency [Hz]')
		>>> plt.xlabel('Time [sec]')
		>>> plt.show()
	**/
	static public function stft(x:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?boundary:Dynamic, ?padded:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Estimate power spectral density using Welch's method.
		
		Welch's method [1]_ computes an estimate of the power spectral
		density by dividing the data into overlapping segments, computing a
		modified periodogram for each segment and averaging the
		periodograms.
		
		Parameters
		----------
		x : array_like
		    Time series of measurement values
		fs : float, optional
		    Sampling frequency of the `x` time series. Defaults to 1.0.
		window : str or tuple or array_like, optional
		    Desired window to use. If `window` is a string or tuple, it is
		    passed to `get_window` to generate the window values, which are
		    DFT-even by default. See `get_window` for a list of windows and
		    required parameters. If `window` is array_like it will be used
		    directly as the window and its length must be nperseg. Defaults
		    to a Hann window.
		nperseg : int, optional
		    Length of each segment. Defaults to None, but if window is str or
		    tuple, is set to 256, and if window is array_like, is set to the
		    length of the window.
		noverlap : int, optional
		    Number of points to overlap between segments. If `None`,
		    ``noverlap = nperseg // 2``. Defaults to `None`.
		nfft : int, optional
		    Length of the FFT used, if a zero padded FFT is desired. If
		    `None`, the FFT length is `nperseg`. Defaults to `None`.
		detrend : str or function or `False`, optional
		    Specifies how to detrend each segment. If `detrend` is a
		    string, it is passed as the `type` argument to the `detrend`
		    function. If it is a function, it takes a segment and returns a
		    detrended segment. If `detrend` is `False`, no detrending is
		    done. Defaults to 'constant'.
		return_onesided : bool, optional
		    If `True`, return a one-sided spectrum for real data. If
		    `False` return a two-sided spectrum. Defaults to `True`, but for
		    complex data, a two-sided spectrum is always returned.
		scaling : { 'density', 'spectrum' }, optional
		    Selects between computing the power spectral density ('density')
		    where `Pxx` has units of V**2/Hz and computing the power
		    spectrum ('spectrum') where `Pxx` has units of V**2, if `x`
		    is measured in V and `fs` is measured in Hz. Defaults to
		    'density'
		axis : int, optional
		    Axis along which the periodogram is computed; the default is
		    over the last axis (i.e. ``axis=-1``).
		average : { 'mean', 'median' }, optional
		    Method to use when averaging periodograms. Defaults to 'mean'.
		
		    .. versionadded:: 1.2.0
		
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
		and on your requirements. For the default Hann window an overlap of
		50% is a reasonable trade off between accurately estimating the
		signal power, while not over counting any of the data. Narrower
		windows may require a larger overlap.
		
		If `noverlap` is 0, this method is equivalent to Bartlett's method
		[2]_.
		
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
		>>> rng = np.random.default_rng()
		
		Generate a test signal, a 2 Vrms sine wave at 1234 Hz, corrupted by
		0.001 V**2/Hz of white noise sampled at 10 kHz.
		
		>>> fs = 10e3
		>>> N = 1e5
		>>> amp = 2*np.sqrt(2)
		>>> freq = 1234.0
		>>> noise_power = 0.001 * fs / 2
		>>> time = np.arange(N) / fs
		>>> x = amp*np.sin(2*np.pi*freq*time)
		>>> x += rng.normal(scale=np.sqrt(noise_power), size=time.shape)
		
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
		
		The peak height in the power spectrum is an estimate of the RMS
		amplitude.
		
		>>> np.sqrt(Pxx_spec.max())
		2.0077340678640727
		
		If we now introduce a discontinuity in the signal, by increasing the
		amplitude of a small portion of the signal by 50, we can see the
		corruption of the mean average power spectral density, but using a
		median average better estimates the normal behaviour.
		
		>>> x[int(N//2):int(N//2)+10] *= 50.
		>>> f, Pxx_den = signal.welch(x, fs, nperseg=1024)
		>>> f_med, Pxx_den_med = signal.welch(x, fs, nperseg=1024, average='median')
		>>> plt.semilogy(f, Pxx_den, label='mean')
		>>> plt.semilogy(f_med, Pxx_den_med, label='median')
		>>> plt.ylim([0.5e-3, 1])
		>>> plt.xlabel('frequency [Hz]')
		>>> plt.ylabel('PSD [V**2/Hz]')
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function welch(x:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?scaling:Dynamic, ?axis:Dynamic, ?average:Dynamic):Dynamic;
	/**
		Zero padding at the boundaries of an array
		
		Generate a new ndarray that is a zero-padded extension of `x` along
		an axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend `x` at each end of the
		    axis.
		axis : int, optional
		    The axis along which to extend `x`. Default is -1.
		
		Examples
		--------
		>>> from scipy.signal._arraytools import zero_ext
		>>> a = np.array([[1, 2, 3, 4, 5], [0, 1, 4, 9, 16]])
		>>> zero_ext(a, 2)
		array([[ 0,  0,  1,  2,  3,  4,  5,  0,  0],
		       [ 0,  0,  0,  1,  4,  9, 16,  0,  0]])
	**/
	static public function zero_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
}