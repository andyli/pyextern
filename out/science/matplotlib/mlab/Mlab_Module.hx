/* This file is generated, do not edit! */
package matplotlib.mlab;
@:pythonImport("matplotlib.mlab") extern class Mlab_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _single_spectrum_docs : Dynamic;
	/**
		Private helper implementing the commonality between the complex, magnitude,
		angle, and phase spectrums.
	**/
	static public function _single_spectrum_helper(mode:Dynamic, x:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		Private helper implementing the common parts between the psd, csd,
		spectrogram and complex, magnitude, angle, and phase spectrums.
	**/
	static public function _spectral_helper(x:Dynamic, ?y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?detrend_func:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Compute the angle of the frequency spectrum (wrapped phase spectrum) of *x*.
		Data is padded to a length of *pad_to* and the windowing function *window* is
		applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  While not increasing the actual resolution of the spectrum (the
		    minimum distance between resolvable peaks), this can give more points in
		    the plot, allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft().  The default is None, which sets *pad_to* equal to
		    the length of the input signal (i.e. no padding).
		
		Returns
		-------
		spectrum : 1-D array
		    The angle of the frequency spectrum (wrapped phase spectrum).
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*.
		
		See Also
		--------
		psd
		    Returns the power spectral density.
		complex_spectrum
		    Returns the complex-valued frequency spectrum.
		magnitude_spectrum
		    Returns the absolute value of the `complex_spectrum`.
		angle_spectrum
		    Returns the angle of the `complex_spectrum`.
		phase_spectrum
		    Returns the phase (unwrapped angle) of the `complex_spectrum`.
		specgram
		    Can return the complex spectrum of segments within the signal.
	**/
	static public function angle_spectrum(x:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		The coherence between *x* and *y*.  Coherence is the normalized
		cross spectral density:
		
		.. math::
		
		    C_{xy} = \frac{|P_{xy}|^2}{P_{xx}P_{yy}}
		
		Parameters
		----------
		x, y
		    Array or sequence containing the data
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  This can be different from *NFFT*, which specifies the number
		    of data points used.  While not increasing the actual resolution of the
		    spectrum (the minimum distance between resolvable peaks), this can give
		    more points in the plot, allowing for more detail. This corresponds to
		    the *n* parameter in the call to fft(). The default is None, which sets
		    *pad_to* equal to *NFFT*
		
		NFFT : int, default: 256
		    The number of data points used in each block for the FFT.  A power 2 is
		    most efficient.  This should *NOT* be used to get zero padding, or the
		    scaling of the result will be incorrect; use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
		    The function applied to each segment before fft-ing, designed to remove
		    the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
		    is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
		    module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
		    but you can use a custom function as well.  You can also use a string to
		    choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
		    `.detrend_mean`. 'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, default: True
		    Whether the resulting density values should be scaled by the scaling
		    frequency, which gives density in units of Hz^-1.  This allows for
		    integration over the returned frequency values.  The default is True for
		    MATLAB compatibility.
		
		noverlap : int, default: 0 (no overlap)
		    The number of points of overlap between segments.
		
		Returns
		-------
		Cxy : 1-D array
		    The coherence vector.
		freqs : 1-D array
		        The frequencies for the elements in *Cxy*.
		
		See Also
		--------
		:func:`psd`, :func:`csd` :
		    For information about the methods used to compute :math:`P_{xy}`,
		    :math:`P_{xx}` and :math:`P_{yy}`.
	**/
	static public function cohere(x:Dynamic, y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic):Dynamic;
	/**
		Compute the complex-valued frequency spectrum of *x*.
		Data is padded to a length of *pad_to* and the windowing function *window* is
		applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  While not increasing the actual resolution of the spectrum (the
		    minimum distance between resolvable peaks), this can give more points in
		    the plot, allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft().  The default is None, which sets *pad_to* equal to
		    the length of the input signal (i.e. no padding).
		
		Returns
		-------
		spectrum : 1-D array
		    The complex-valued frequency spectrum.
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*.
		
		See Also
		--------
		psd
		    Returns the power spectral density.
		complex_spectrum
		    Returns the complex-valued frequency spectrum.
		magnitude_spectrum
		    Returns the absolute value of the `complex_spectrum`.
		angle_spectrum
		    Returns the angle of the `complex_spectrum`.
		phase_spectrum
		    Returns the phase (unwrapped angle) of the `complex_spectrum`.
		specgram
		    Can return the complex spectrum of segments within the signal.
	**/
	static public function complex_spectrum(x:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		Compute the cross-spectral density.
		
		The cross spectral density :math:`P_{xy}` by Welch's average
		periodogram method.  The vectors *x* and *y* are divided into
		*NFFT* length segments.  Each segment is detrended by function
		*detrend* and windowed by function *window*.  *noverlap* gives
		the length of the overlap between segments.  The product of
		the direct FFTs of *x* and *y* are averaged over each segment
		to compute :math:`P_{xy}`, with a scaling to correct for power
		loss due to windowing.
		
		If len(*x*) < *NFFT* or len(*y*) < *NFFT*, they will be zero
		padded to *NFFT*.
		
		Parameters
		----------
		x, y : 1-D arrays or sequences
		    Arrays or sequences containing the data
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  This can be different from *NFFT*, which specifies the number
		    of data points used.  While not increasing the actual resolution of the
		    spectrum (the minimum distance between resolvable peaks), this can give
		    more points in the plot, allowing for more detail. This corresponds to
		    the *n* parameter in the call to fft(). The default is None, which sets
		    *pad_to* equal to *NFFT*
		
		NFFT : int, default: 256
		    The number of data points used in each block for the FFT.  A power 2 is
		    most efficient.  This should *NOT* be used to get zero padding, or the
		    scaling of the result will be incorrect; use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
		    The function applied to each segment before fft-ing, designed to remove
		    the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
		    is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
		    module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
		    but you can use a custom function as well.  You can also use a string to
		    choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
		    `.detrend_mean`. 'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, default: True
		    Whether the resulting density values should be scaled by the scaling
		    frequency, which gives density in units of Hz^-1.  This allows for
		    integration over the returned frequency values.  The default is True for
		    MATLAB compatibility.
		
		noverlap : int, default: 0 (no overlap)
		    The number of points of overlap between segments.
		
		Returns
		-------
		Pxy : 1-D array
		    The values for the cross spectrum :math:`P_{xy}` before scaling (real
		    valued)
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *Pxy*
		
		References
		----------
		Bendat & Piersol -- Random Data: Analysis and Measurement Procedures, John
		Wiley & Sons (1986)
		
		See Also
		--------
		psd : equivalent to setting ``y = x``.
	**/
	static public function csd(x:Dynamic, y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic):Dynamic;
	/**
		Return x with its trend removed.
		
		Parameters
		----------
		x : array or sequence
		    Array or sequence containing the data.
		
		key : {'default', 'constant', 'mean', 'linear', 'none'} or function
		    The detrending algorithm to use. 'default', 'mean', and 'constant' are
		    the same as `detrend_mean`. 'linear' is the same as `detrend_linear`.
		    'none' is the same as `detrend_none`. The default is 'mean'. See the
		    corresponding functions for more details regarding the algorithms. Can
		    also be a function that carries out the detrend operation.
		
		axis : int
		    The axis along which to do the detrending.
		
		See Also
		--------
		detrend_mean : Implementation of the 'mean' algorithm.
		detrend_linear : Implementation of the 'linear' algorithm.
		detrend_none : Implementation of the 'none' algorithm.
	**/
	static public function detrend(x:Dynamic, ?key:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return x minus best fit line; 'linear' detrending.
		
		Parameters
		----------
		y : 0-D or 1-D array or sequence
		    Array or sequence containing the data
		
		See Also
		--------
		detrend_mean : Another detrend algorithm.
		detrend_none : Another detrend algorithm.
		detrend : A wrapper around all the detrend algorithms.
	**/
	static public function detrend_linear(y:Dynamic):Dynamic;
	/**
		Return x minus the mean(x).
		
		Parameters
		----------
		x : array or sequence
		    Array or sequence containing the data
		    Can have any dimensionality
		
		axis : int
		    The axis along which to take the mean.  See numpy.mean for a
		    description of this argument.
		
		See Also
		--------
		detrend_linear : Another detrend algorithm.
		detrend_none : Another detrend algorithm.
		detrend : A wrapper around all the detrend algorithms.
	**/
	static public function detrend_mean(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return x: no detrending.
		
		Parameters
		----------
		x : any object
		    An object containing the data
		
		axis : int
		    This parameter is ignored.
		    It is included for compatibility with detrend_mean
		
		See Also
		--------
		detrend_mean : Another detrend algorithm.
		detrend_linear : Another detrend algorithm.
		detrend : A wrapper around all the detrend algorithms.
	**/
	static public function detrend_none(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the magnitude (absolute value) of the frequency spectrum of *x*.
		Data is padded to a length of *pad_to* and the windowing function *window* is
		applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  While not increasing the actual resolution of the spectrum (the
		    minimum distance between resolvable peaks), this can give more points in
		    the plot, allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft().  The default is None, which sets *pad_to* equal to
		    the length of the input signal (i.e. no padding).
		
		Returns
		-------
		spectrum : 1-D array
		    The magnitude (absolute value) of the frequency spectrum.
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*.
		
		See Also
		--------
		psd
		    Returns the power spectral density.
		complex_spectrum
		    Returns the complex-valued frequency spectrum.
		magnitude_spectrum
		    Returns the absolute value of the `complex_spectrum`.
		angle_spectrum
		    Returns the angle of the `complex_spectrum`.
		phase_spectrum
		    Returns the phase (unwrapped angle) of the `complex_spectrum`.
		specgram
		    Can return the complex spectrum of segments within the signal.
	**/
	static public function magnitude_spectrum(x:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		Compute the phase of the frequency spectrum (unwrapped phase spectrum) of *x*.
		Data is padded to a length of *pad_to* and the windowing function *window* is
		applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  While not increasing the actual resolution of the spectrum (the
		    minimum distance between resolvable peaks), this can give more points in
		    the plot, allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft().  The default is None, which sets *pad_to* equal to
		    the length of the input signal (i.e. no padding).
		
		Returns
		-------
		spectrum : 1-D array
		    The phase of the frequency spectrum (unwrapped phase spectrum).
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*.
		
		See Also
		--------
		psd
		    Returns the power spectral density.
		complex_spectrum
		    Returns the complex-valued frequency spectrum.
		magnitude_spectrum
		    Returns the absolute value of the `complex_spectrum`.
		angle_spectrum
		    Returns the angle of the `complex_spectrum`.
		phase_spectrum
		    Returns the phase (unwrapped angle) of the `complex_spectrum`.
		specgram
		    Can return the complex spectrum of segments within the signal.
	**/
	static public function phase_spectrum(x:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		Compute the power spectral density.
		
		The power spectral density :math:`P_{xx}` by Welch's average
		periodogram method.  The vector *x* is divided into *NFFT* length
		segments.  Each segment is detrended by function *detrend* and
		windowed by function *window*.  *noverlap* gives the length of
		the overlap between segments.  The :math:`|\mathrm{fft}(i)|^2`
		of each segment :math:`i` are averaged to compute :math:`P_{xx}`.
		
		If len(*x*) < *NFFT*, it will be zero padded to *NFFT*.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  This can be different from *NFFT*, which specifies the number
		    of data points used.  While not increasing the actual resolution of the
		    spectrum (the minimum distance between resolvable peaks), this can give
		    more points in the plot, allowing for more detail. This corresponds to
		    the *n* parameter in the call to fft(). The default is None, which sets
		    *pad_to* equal to *NFFT*
		
		NFFT : int, default: 256
		    The number of data points used in each block for the FFT.  A power 2 is
		    most efficient.  This should *NOT* be used to get zero padding, or the
		    scaling of the result will be incorrect; use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
		    The function applied to each segment before fft-ing, designed to remove
		    the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
		    is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
		    module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
		    but you can use a custom function as well.  You can also use a string to
		    choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
		    `.detrend_mean`. 'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, default: True
		    Whether the resulting density values should be scaled by the scaling
		    frequency, which gives density in units of Hz^-1.  This allows for
		    integration over the returned frequency values.  The default is True for
		    MATLAB compatibility.
		
		noverlap : int, default: 0 (no overlap)
		    The number of points of overlap between segments.
		
		Returns
		-------
		Pxx : 1-D array
		    The values for the power spectrum :math:`P_{xx}` (real valued)
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *Pxx*
		
		References
		----------
		Bendat & Piersol -- Random Data: Analysis and Measurement Procedures, John
		Wiley & Sons (1986)
		
		See Also
		--------
		specgram
		    `specgram` differs in the default overlap; in not returning the mean of
		    the segment periodograms; and in returning the times of the segments.
		
		magnitude_spectrum : returns the magnitude spectrum.
		
		csd : returns the spectral density between two signals.
	**/
	static public function psd(x:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic):Dynamic;
	/**
		Compute a spectrogram.
		
		Compute and plot a spectrogram of data in x.  Data are split into
		NFFT length segments and the spectrum of each section is
		computed.  The windowing function window is applied to each
		segment, and the amount of overlap of each segment is
		specified with noverlap.
		
		Parameters
		----------
		x : array-like
		    1-D array or sequence.
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  This can be different from *NFFT*, which specifies the number
		    of data points used.  While not increasing the actual resolution of the
		    spectrum (the minimum distance between resolvable peaks), this can give
		    more points in the plot, allowing for more detail. This corresponds to
		    the *n* parameter in the call to fft(). The default is None, which sets
		    *pad_to* equal to *NFFT*
		
		NFFT : int, default: 256
		    The number of data points used in each block for the FFT.  A power 2 is
		    most efficient.  This should *NOT* be used to get zero padding, or the
		    scaling of the result will be incorrect; use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
		    The function applied to each segment before fft-ing, designed to remove
		    the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
		    is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
		    module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
		    but you can use a custom function as well.  You can also use a string to
		    choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
		    `.detrend_mean`. 'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, default: True
		    Whether the resulting density values should be scaled by the scaling
		    frequency, which gives density in units of Hz^-1.  This allows for
		    integration over the returned frequency values.  The default is True for
		    MATLAB compatibility.
		
		noverlap : int, default: 128
		    The number of points of overlap between blocks.
		mode : str, default: 'psd'
		    What sort of spectrum to use:
		        'psd'
		            Returns the power spectral density.
		        'complex'
		            Returns the complex-valued frequency spectrum.
		        'magnitude'
		            Returns the magnitude spectrum.
		        'angle'
		            Returns the phase spectrum without unwrapping.
		        'phase'
		            Returns the phase spectrum with unwrapping.
		
		Returns
		-------
		spectrum : array-like
		    2D array, columns are the periodograms of successive segments.
		
		freqs : array-like
		    1-D array, frequencies corresponding to the rows in *spectrum*.
		
		t : array-like
		    1-D array, the times corresponding to midpoints of segments
		    (i.e the columns in *spectrum*).
		
		See Also
		--------
		psd : differs in the overlap and in the return values.
		complex_spectrum : similar, but with complex valued frequencies.
		magnitude_spectrum : similar single segment when mode is 'magnitude'.
		angle_spectrum : similar to single segment when mode is 'angle'.
		phase_spectrum : similar to single segment when mode is 'phase'.
		
		Notes
		-----
		detrend and scale_by_freq only apply when *mode* is set to 'psd'.
	**/
	static public function specgram(x:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Get all windows of x with length n as a single array,
		using strides to avoid data duplication.
		
		.. warning::
		
		    It is not safe to write to the output array.  Multiple
		    elements may point to the same piece of memory,
		    so modifying one value may change others.
		
		Parameters
		----------
		x : 1D array or sequence
		    Array or sequence containing the data.
		n : int
		    The number of data points in each window.
		noverlap : int, default: 0 (no overlap)
		    The overlap between adjacent windows.
		axis : int
		    The axis along which the windows will run.
		
		References
		----------
		`stackoverflow: Rolling window for 1D arrays in Numpy?
		<https://stackoverflow.com/a/6811241>`_
		`stackoverflow: Using strides for an efficient moving average filter
		<https://stackoverflow.com/a/4947453>`_
	**/
	static public function stride_windows(x:Dynamic, n:Dynamic, ?noverlap:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return x times the hanning window of len(x).
		
		See Also
		--------
		window_none : Another window algorithm.
	**/
	static public function window_hanning(x:Dynamic):Dynamic;
	/**
		No window function; simply return x.
		
		See Also
		--------
		window_hanning : Another window algorithm.
	**/
	static public function window_none(x:Dynamic):Dynamic;
}