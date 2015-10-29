/* This file is generated, do not edit! */
package scipy.signal;
@:pythonImport("scipy.signal.spectral") extern class Spectral {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calculate windowed FFT, for internal use by scipy.signal._spectral_helper
		
		This is a helper function that does the main FFT calculation for
		_spectral helper. All input valdiation is performed there, and the data
		axis is assumed to be the last axis of x. It is not designed to be called
		externally. The windows are not averaged over; the result from each window
		is returned.
		
		Returns
		-------
		result : ndarray
		    Array of FFT data
		
		References
		----------
		stackoverflow: Repeat NumPy array without replicating data?
		<http://stackoverflow.com/a/5568169>
		
		Notes
		-----
		Adapted from matplotlib.mlab
		
		.. versionadded:: 0.16.0
	**/
	static public function _fft_helper(x:Dynamic, win:Dynamic, detrend_func:Dynamic, nperseg:Dynamic, noverlap:Dynamic, nfft:Dynamic):Dynamic;
	/**
		Calculate various forms of windowed FFTs for PSD, CSD, etc.
		
		This is a helper function that implements the commonality between the
		psd, csd, and spectrogram functions. It is not designed to be called
		externally. The windows are not averaged over; the result from each window
		is returned.
		
		Parameters
		---------
		x : array_like
		    Array or sequence containing the data to be analyzed.
		y : array_like
		    Array or sequence containing the data to be analyzed. If this is
		    the same object in memoery as x (i.e. _spectral_helper(x, x, ...)),
		    the extra computations are spared.
		fs : float, optional
		    Sampling frequency of the time series. Defaults to 1.0.
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
		    Selects between computing the cross spectral density ('density')
		    where `Pxy` has units of V**2/Hz and computing the cross spectrum
		    ('spectrum') where `Pxy` has units of V**2, if `x` and `y` are
		    measured in V and fs is measured in Hz.  Defaults to 'density'
		axis : int, optional
		    Axis along which the periodogram is computed; the default is over
		    the last axis (i.e. ``axis=-1``).
		mode : str, optional
		    Defines what kind of return values are expected. Options are ['psd',
		    'complex', 'magnitude', 'angle', 'phase'].
		
		Returns
		-------
		freqs : ndarray
		    Array of sample frequencies.
		result : ndarray
		    Array of output data, contents dependant on *mode* kwarg.
		t : ndarray
		    Array of times corresponding to each data segment
		
		References
		----------
		stackoverflow: Rolling window for 1D arrays in Numpy?
		<http://stackoverflow.com/a/6811241>
		stackoverflow: Using strides for an efficient moving average filter
		<http://stackoverflow.com/a/4947453>
		
		Notes
		-----
		Adapted from matplotlib.mlab
		
		.. versionadded:: 0.16.0
	**/
	static public function _spectral_helper(x:Dynamic, y:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?scaling:Dynamic, ?axis:Dynamic, ?mode:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		Return a window.
		
		Parameters
		----------
		window : string, float, or tuple
		    The type of window to create. See below for more details.
		Nx : int
		    The number of samples in the window.
		fftbins : bool, optional
		    If True, create a "periodic" window ready to use with ifftshift
		    and be multiplied by the result of an fft (SEE ALSO fftfreq).
		
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
		0.0009924865443739191
		
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
	static public var print_function : Dynamic;
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
		...[1] Oppenheim, Alan V., Ronald W. Schafer, John R. Buck "Discrete-Time
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
	static public function spectrogram(x:Dynamic, ?fs:Dynamic, ?window:Dynamic, ?nperseg:Dynamic, ?noverlap:Dynamic, ?nfft:Dynamic, ?detrend:Dynamic, ?return_onesided:Dynamic, ?scaling:Dynamic, ?axis:Dynamic):Dynamic;
	static public var string_types : Dynamic;
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
}