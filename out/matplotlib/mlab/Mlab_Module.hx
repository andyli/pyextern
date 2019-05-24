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
	static public var _coh_error : Dynamic;
	/**
		Load data from comma/space/tab delimited file in *fname* into a
		numpy record array and return the record array.
		
		If *names* is *None*, a header row is required to automatically
		assign the recarray names.  The headers will be lower cased,
		spaces will be converted to underscores, and illegal attribute
		name characters removed.  If *names* is not *None*, it is a
		sequence of names to use for the column names.  In this case, it
		is assumed there is no header row.
		
		
		- *fname*: can be a filename or a file handle.  Support for gzipped
		  files is automatic, if the filename ends in '.gz'
		
		- *comments*: the character used to indicate the start of a comment
		  in the file, or *None* to switch off the removal of comments
		
		- *skiprows*: is the number of rows from the top to skip
		
		- *checkrows*: is the number of rows to check to validate the column
		  data type.  When set to zero all rows are validated.
		
		- *converterd*: if not *None*, is a dictionary mapping column number or
		  munged column name to a converter function.
		
		- *names*: if not None, is a list of header names.  In this case, no
		  header will be read from the file
		
		- *missingd* is a dictionary mapping munged column names to field values
		  which signify that the field does not contain actual data and should
		  be masked, e.g., '0000-00-00' or 'unused'
		
		- *missing*: a string whose value signals a missing field regardless of
		  the column it appears in
		
		- *use_mrecords*: if True, return an mrecords.fromrecords record array if
		  any of the data are missing
		
		- *dayfirst*: default is False so that MM-DD-YY has precedence over
		  DD-MM-YY.  See
		  http://labix.org/python-dateutil#head-b95ce2094d189a89f80f5ae52a05b4ab7b41af47
		  for further information.
		
		- *yearfirst*: default is False so that MM-DD-YY has precedence over
		  YY-MM-DD. See
		  http://labix.org/python-dateutil#head-b95ce2094d189a89f80f5ae52a05b4ab7b41af47
		  for further information.
		
		  If no rows are found, *None* is returned
	**/
	static public function _csv2rec(fname:Dynamic, ?comments:Dynamic, ?skiprows:Dynamic, ?checkrows:Dynamic, ?delimiter:Dynamic, ?converterd:Dynamic, ?names:Dynamic, ?missing:Dynamic, ?missingd:Dynamic, ?use_mrecords:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic):Dynamic;
	/**
		This is a helper function that implements the commonality between the
		complex, magnitude, angle, and phase spectrums.
		It is *NOT* meant to be used outside of mlab and may change at any time.
	**/
	static public function _single_spectrum_helper(x:Dynamic, mode:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		This is a helper function that implements the commonality between the
		psd, csd, spectrogram and complex, magnitude, angle, and phase spectrums.
		It is *NOT* meant to be used outside of mlab and may change at any time.
	**/
	static public function _spectral_helper(x:Dynamic, ?y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?detrend_func:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Compute the angle of the frequency spectrum (wrapped phase spectrum) of
		*x*.  Data is padded to a length of *pad_to* and the windowing function
		*window* is applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  While not increasing the actual resolution of
		    the spectrum (the minimum distance between resolvable peaks),
		    this can give more points in the plot, allowing for more
		    detail. This corresponds to the *n* parameter in the call to fft().
		    The default is None, which sets *pad_to* equal to the length of the
		    input signal (i.e. no padding).
		
		Returns
		-------
		spectrum : 1-D array
		    The values for the angle spectrum in radians (real valued)
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*
		
		See Also
		--------
		complex_spectrum
		    This function returns the angle value of `complex_spectrum`.
		magnitude_spectrum
		    Returns the magnitudes of the corresponding frequencies.
		phase_spectrum
		    Returns the phase (unwrapped angle) of the corresponding frequencies.
		specgram
		    Can return the complex spectrum of segments within the signal.
	**/
	static public function angle_spectrum(x:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		Apply the given window to the given 1D or 2D array along the given axis.
		
		Parameters
		----------
		x : 1D or 2D array or sequence
		    Array or sequence containing the data.
		
		window : function or array.
		    Either a function to generate a window or an array with length
		    *x*.shape[*axis*]
		
		axis : integer
		    The axis over which to do the repetition.
		    Must be 0 or 1.  The default is 0
		
		return_window : bool
		    If true, also return the 1D values of the window that was applied
	**/
	static public function apply_window(x:Dynamic, window:Dynamic, ?axis:Dynamic, ?return_window:Dynamic):Dynamic;
	/**
		The coherence between *x* and *y*.  Coherence is the normalized
		cross spectral density:
		
		.. math::
		
		    C_{xy} = \frac{|P_{xy}|^2}{P_{xx}P_{yy}}
		
		Parameters
		----------
		x, y
		    Array or sequence containing the data
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : int
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default 'none'
		    The function applied to each segment before fft-ing, designed to
		    remove the mean or linear trend.  Unlike in MATLAB, where the
		    *detrend* parameter is a vector, in Matplotlib is it a function.
		    The :mod:`~matplotlib.mlab` module defines `.detrend_none`,
		    `.detrend_mean`, and `.detrend_linear`, but you can use a custom
		    function as well.  You can also use a string to choose one of the
		    functions: 'none' calls `.detrend_none`. 'mean' calls `.detrend_mean`.
		    'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, optional
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		noverlap : integer
		    The number of points of overlap between blocks.  The default value
		    is 0 (no overlap).
		
		Returns
		-------
		The return value is the tuple (*Cxy*, *f*), where *f* are the
		frequencies of the coherence vector. For cohere, scaling the
		individual densities by the sampling frequency has no effect,
		since the factors cancel out.
		
		See Also
		--------
		:func:`psd`, :func:`csd` :
		    For information about the methods used to compute :math:`P_{xy}`,
		    :math:`P_{xx}` and :math:`P_{yy}`.
	**/
	static public function cohere(x:Dynamic, y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic):Dynamic;
	/**
		Compute the complex-valued frequency spectrum of *x*.  Data is padded to a
		length of *pad_to* and the windowing function *window* is applied to the
		signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  While not increasing the actual resolution of
		    the spectrum (the minimum distance between resolvable peaks),
		    this can give more points in the plot, allowing for more
		    detail. This corresponds to the *n* parameter in the call to fft().
		    The default is None, which sets *pad_to* equal to the length of the
		    input signal (i.e. no padding).
		
		Returns
		-------
		spectrum : 1-D array
		    The values for the complex spectrum (complex valued)
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*
		
		See Also
		--------
		magnitude_spectrum
		    Returns the absolute value of this function.
		angle_spectrum
		    Returns the angle of this function.
		phase_spectrum
		    Returns the phase (unwrapped angle) of this function.
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
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : int
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default 'none'
		    The function applied to each segment before fft-ing, designed to
		    remove the mean or linear trend.  Unlike in MATLAB, where the
		    *detrend* parameter is a vector, in Matplotlib is it a function.
		    The :mod:`~matplotlib.mlab` module defines `.detrend_none`,
		    `.detrend_mean`, and `.detrend_linear`, but you can use a custom
		    function as well.  You can also use a string to choose one of the
		    functions: 'none' calls `.detrend_none`. 'mean' calls `.detrend_mean`.
		    'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, optional
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		noverlap : integer
		    The number of points of overlap between segments.
		    The default value is 0 (no overlap).
		
		Returns
		-------
		Pxy : 1-D array
		    The values for the cross spectrum `P_{xy}` before scaling (real valued)
		
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
		[*Deprecated*] Return x minus its mean along the specified axis.
		
		Parameters
		----------
		x : array or sequence
		    Array or sequence containing the data
		    Can have any dimensionality
		
		axis : integer
		    The axis along which to take the mean.  See numpy.mean for a
		    description of this argument.
		
		See Also
		--------
		detrend_mean : Same as `demean` except for the default *axis*.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function demean(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return x with its trend removed.
		
		Parameters
		----------
		x : array or sequence
		    Array or sequence containing the data.
		
		key : [ 'default' | 'constant' | 'mean' | 'linear' | 'none'] or function
		    Specifies the detrend algorithm to use. 'default' is 'mean', which is
		    the same as `detrend_mean`. 'constant' is the same. 'linear' is
		    the same as `detrend_linear`. 'none' is the same as
		    `detrend_none`. The default is 'mean'. See the corresponding
		    functions for more details regarding the algorithms. Can also be a
		    function that carries out the detrend operation.
		
		axis : integer
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
		
		axis : integer
		    The axis along which to take the mean.  See numpy.mean for a
		    description of this argument.
		
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
		
		axis : integer
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
		
		axis : integer
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
		Compute the magnitude (absolute value) of the frequency spectrum of
		*x*.  Data is padded to a length of *pad_to* and the windowing function
		*window* is applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  While not increasing the actual resolution of
		    the spectrum (the minimum distance between resolvable peaks),
		    this can give more points in the plot, allowing for more
		    detail. This corresponds to the *n* parameter in the call to fft().
		    The default is None, which sets *pad_to* equal to the length of the
		    input signal (i.e. no padding).
		
		Returns
		-------
		spectrum : 1-D array
		    The values for the magnitude spectrum (real valued)
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*
		
		See Also
		--------
		psd
		    Returns the power spectral density.
		complex_spectrum
		    This function returns the absolute value of `complex_spectrum`.
		angle_spectrum
		    Returns the angles of the corresponding frequencies.
		phase_spectrum
		    Returns the phase (unwrapped angle) of the corresponding frequencies.
		specgram
		    Can return the complex spectrum of segments within the signal.
	**/
	static public function magnitude_spectrum(x:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		Compute the phase of the frequency spectrum (unwrapped angle spectrum) of
		*x*.  Data is padded to a length of *pad_to* and the windowing function
		*window* is applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  While not increasing the actual resolution of
		    the spectrum (the minimum distance between resolvable peaks),
		    this can give more points in the plot, allowing for more
		    detail. This corresponds to the *n* parameter in the call to fft().
		    The default is None, which sets *pad_to* equal to the length of the
		    input signal (i.e. no padding).
		
		Returns
		-------
		spectrum : 1-D array
		    The values for the phase spectrum in radians (real valued)
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*
		
		See Also
		--------
		complex_spectrum
		    This function returns the phase value of `complex_spectrum`.
		magnitude_spectrum
		    Returns the magnitudes of the corresponding frequencies.
		angle_spectrum
		    Returns the angle (wrapped phase) of the corresponding frequencies.
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
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : int
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default 'none'
		    The function applied to each segment before fft-ing, designed to
		    remove the mean or linear trend.  Unlike in MATLAB, where the
		    *detrend* parameter is a vector, in Matplotlib is it a function.
		    The :mod:`~matplotlib.mlab` module defines `.detrend_none`,
		    `.detrend_mean`, and `.detrend_linear`, but you can use a custom
		    function as well.  You can also use a string to choose one of the
		    functions: 'none' calls `.detrend_none`. 'mean' calls `.detrend_mean`.
		    'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, optional
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		noverlap : integer
		    The number of points of overlap between segments.
		    The default value is 0 (no overlap).
		
		Returns
		-------
		Pxx : 1-D array
		    The values for the power spectrum `P_{xx}` (real valued)
		
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
		x : array_like
		    1-D array or sequence.
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : int
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default 'none'
		    The function applied to each segment before fft-ing, designed to
		    remove the mean or linear trend.  Unlike in MATLAB, where the
		    *detrend* parameter is a vector, in Matplotlib is it a function.
		    The :mod:`~matplotlib.mlab` module defines `.detrend_none`,
		    `.detrend_mean`, and `.detrend_linear`, but you can use a custom
		    function as well.  You can also use a string to choose one of the
		    functions: 'none' calls `.detrend_none`. 'mean' calls `.detrend_mean`.
		    'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, optional
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		noverlap : int, optional
		    The number of points of overlap between blocks.  The default
		    value is 128.
		mode : str, optional
		    What sort of spectrum to use, default is 'psd'.
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
		spectrum : array_like
		    2-D array, columns are the periodograms of successive segments.
		
		freqs : array_like
		    1-D array, frequencies corresponding to the rows in *spectrum*.
		
		t : array_like
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
		Repeat the values in an array in a memory-efficient manner.  Array x is
		stacked vertically n times.
		
		.. warning::
		
		    It is not safe to write to the output array.  Multiple
		    elements may point to the same piece of memory, so
		    modifying one value may change others.
		
		Parameters
		----------
		x : 1D array or sequence
		    Array or sequence containing the data.
		
		n : integer
		    The number of time to repeat the array.
		
		axis : integer
		    The axis along which the data will run.
		
		References
		----------
		`stackoverflow: Repeat NumPy array without replicating data?
		<http://stackoverflow.com/a/5568169>`_
	**/
	static public function stride_repeat(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
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
		
		n : integer
		    The number of data points in each window.
		
		noverlap : integer
		    The overlap between adjacent windows.
		    Default is 0 (no overlap)
		
		axis : integer
		    The axis along which the windows will run.
		
		References
		----------
		`stackoverflow: Rolling window for 1D arrays in Numpy?
		<http://stackoverflow.com/a/6811241>`_
		`stackoverflow: Using strides for an efficient moving average filter
		<http://stackoverflow.com/a/4947453>`_
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