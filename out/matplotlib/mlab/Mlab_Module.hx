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
		Return sqrt(x dot x).
	**/
	static public function _norm(x:Dynamic):Dynamic;
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
	static public var absolute_import : Dynamic;
	/**
		amap(function, sequence[, sequence, ...]) -> array.
		
		Works like :func:`map`, but it returns an array.  This is just a
		convenient shorthand for ``numpy.array(map(...))``.
	**/
	static public function amap(fn:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
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
		    A function or a vector of length *NFFT*. To create window
		    vectors see :func:`window_hanning`, :func:`window_none`,
		    :func:`numpy.blackman`, :func:`numpy.hamming`,
		    :func:`numpy.bartlett`, :func:`scipy.signal`,
		    :func:`scipy.signal.get_window`, etc. The default is
		    :func:`window_hanning`.  If a function is passed as the
		    argument, it must take a data segment as an argument and
		    return the windowed version of the segment.
		
		sides : [ 'default' | 'onesided' | 'twosided' ]
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : integer
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
		:func:`complex_spectrum`
		    This function returns the angle value of :func:`complex_spectrum`.
		
		:func:`magnitude_spectrum`
		    :func:`angle_spectrum` returns the magnitudes of the corresponding
		    frequencies.
		
		:func:`phase_spectrum`
		    :func:`phase_spectrum` returns the unwrapped version of this function.
		
		:func:`specgram`
		    :func:`specgram` can return the angle spectrum of segments within the
		    signal.
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
		Return the representation of a *number* in any given *base*.
	**/
	static public function base_repr(number:Dynamic, ?base:Dynamic, ?padding:Dynamic):Dynamic;
	/**
		Return the binary representation of the input *number* as a
		string.
		
		This is more efficient than using :func:`base_repr` with base 2.
		
		Increase the value of max_length for very large numbers. Note that
		on 32-bit machines, 2**1023 is the largest integer power of 2
		which can be converted to a Python float.
	**/
	static public function binary_repr(number:Dynamic, ?max_length:Dynamic):Dynamic;
	/**
		Bivariate Gaussian distribution for equal shape *X*, *Y*.
		
		See `bivariate normal
		<http://mathworld.wolfram.com/BivariateNormalDistribution.html>`_
		at mathworld.
	**/
	static public function bivariate_normal(X:Dynamic, Y:Dynamic, ?sigmax:Dynamic, ?sigmay:Dynamic, ?mux:Dynamic, ?muy:Dynamic, ?sigmaxy:Dynamic):Dynamic;
	/**
		Return the matrix *M* with each row having zero mean and unit std.
		
		If *dim* = 1 operate on columns instead of rows.  (*dim* is
		opposite to the numpy axis kwarg.)
	**/
	static public function center_matrix(M:Dynamic, ?dim:Dynamic):Dynamic;
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
		    A function or a vector of length *NFFT*. To create window
		    vectors see :func:`window_hanning`, :func:`window_none`,
		    :func:`numpy.blackman`, :func:`numpy.hamming`,
		    :func:`numpy.bartlett`, :func:`scipy.signal`,
		    :func:`scipy.signal.get_window`, etc. The default is
		    :func:`window_hanning`.  If a function is passed as the
		    argument, it must take a data segment as an argument and
		    return the windowed version of the segment.
		
		sides : [ 'default' | 'onesided' | 'twosided' ]
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : integer
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'default', 'constant', 'mean', 'linear', 'none'} or callable
		    The function applied to each segment before fft-ing,
		    designed to remove the mean or linear trend.  Unlike in
		    MATLAB, where the *detrend* parameter is a vector, in
		    matplotlib is it a function.  The :mod:`~matplotlib.pylab`
		    module defines :func:`~matplotlib.pylab.detrend_none`,
		    :func:`~matplotlib.pylab.detrend_mean`, and
		    :func:`~matplotlib.pylab.detrend_linear`, but you can use
		    a custom function as well.  You can also use a string to choose
		    one of the functions.  'default', 'constant', and 'mean' call
		    :func:`~matplotlib.pylab.detrend_mean`.  'linear' calls
		    :func:`~matplotlib.pylab.detrend_linear`.  'none' calls
		    :func:`~matplotlib.pylab.detrend_none`.
		
		scale_by_freq : boolean, optional
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
		Compute the coherence and phase for all pairs *ij*, in *X*.
		
		*X* is a *numSamples* * *numCols* array
		
		*ij* is a list of tuples.  Each tuple is a pair of indexes into
		the columns of X for which you want to compute coherence.  For
		example, if *X* has 64 columns, and you want to compute all
		nonredundant pairs, define *ij* as::
		
		  ij = []
		  for i in range(64):
		      for j in range(i+1,64):
		          ij.append( (i,j) )
		
		*preferSpeedOverMemory* is an optional bool. Defaults to true. If
		False, limits the caching by only making one, rather than two,
		complex cache arrays. This is useful if memory becomes critical.
		Even when *preferSpeedOverMemory* is False, :func:`cohere_pairs`
		will still give significant performace gains over calling
		:func:`cohere` for each pair, and will use subtantially less
		memory than if *preferSpeedOverMemory* is True.  In my tests with
		a 43000,64 array over all nonredundant pairs,
		*preferSpeedOverMemory* = True delivered a 33% performance boost
		on a 1.7GHZ Athlon with 512MB RAM compared with
		*preferSpeedOverMemory* = False.  But both solutions were more
		than 10x faster than naively crunching all possible pairs through
		:func:`cohere`.
		
		Returns
		-------
		Cxy : dictionary of (*i*, *j*) tuples -> coherence vector for
		    that pair.  i.e., ``Cxy[(i,j) = cohere(X[:,i], X[:,j])``.
		    Number of dictionary keys is ``len(ij)``.
		
		Phase : dictionary of phases of the cross spectral density at
		    each frequency for each pair.  Keys are (*i*, *j*).
		
		freqs : vector of frequencies, equal in length to either the
		     coherence or phase vectors for any (*i*, *j*) key.
		
		e.g., to make a coherence Bode plot::
		
		      subplot(211)
		      plot( freqs, Cxy[(12,19)])
		      subplot(212)
		      plot( freqs, Phase[(12,19)])
		
		For a large number of pairs, :func:`cohere_pairs` can be much more
		efficient than just calling :func:`cohere` for each pair, because
		it caches most of the intensive computations.  If :math:`N` is the
		number of pairs, this function is :math:`O(N)` for most of the
		heavy lifting, whereas calling cohere for each pair is
		:math:`O(N^2)`.  However, because of the caching, it is also more
		memory intensive, making 2 additional complex arrays with
		approximately the same number of elements as *X*.
		
		See :file:`test/cohere_pairs_test.py` in the src tree for an
		example script that shows that this :func:`cohere_pairs` and
		:func:`cohere` give the same results for a given pair.
		
		See Also
		--------
		:func:`psd`
		    For information about the methods used to compute :math:`P_{xy}`,
		    :math:`P_{xx}` and :math:`P_{yy}`.
	**/
	static public function cohere_pairs(X:Dynamic, ij:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?preferSpeedOverMemory:Dynamic, ?progressCallback:Dynamic, ?returnPxx:Dynamic):Dynamic;
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
		    A function or a vector of length *NFFT*. To create window
		    vectors see :func:`window_hanning`, :func:`window_none`,
		    :func:`numpy.blackman`, :func:`numpy.hamming`,
		    :func:`numpy.bartlett`, :func:`scipy.signal`,
		    :func:`scipy.signal.get_window`, etc. The default is
		    :func:`window_hanning`.  If a function is passed as the
		    argument, it must take a data segment as an argument and
		    return the windowed version of the segment.
		
		sides : [ 'default' | 'onesided' | 'twosided' ]
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : integer
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
		:func:`magnitude_spectrum`
		    :func:`magnitude_spectrum` returns the absolute value of this function.
		
		:func:`angle_spectrum`
		    :func:`angle_spectrum` returns the angle of this function.
		
		:func:`phase_spectrum`
		    :func:`phase_spectrum` returns the phase (unwrapped angle) of this
		    function.
		
		:func:`specgram`
		    :func:`specgram` can return the complex spectrum of segments within the
		    signal.
	**/
	static public function complex_spectrum(x:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		return a list of (ind0, ind1) such that mask[ind0:ind1].all() is
		True and we cover all such regions
	**/
	static public function contiguous_regions(mask:Dynamic):Dynamic;
	/**
		return the indices into *x* where *x* crosses some threshold from
		below, e.g., the i's where::
		
		  x[i-1]>threshold and x[i]<=threshold
		
		See Also
		--------
		:func:`cross_from_below` and :func:`contiguous_regions`
	**/
	static public function cross_from_above(x:Dynamic, threshold:Dynamic):Dynamic;
	/**
		return the indices into *x* where *x* crosses some threshold from
		below, e.g., the i's where::
		
		  x[i-1]<threshold and x[i]>=threshold
		
		Example code::
		
		    import matplotlib.pyplot as plt
		
		    t = np.arange(0.0, 2.0, 0.1)
		    s = np.sin(2*np.pi*t)
		
		    fig = plt.figure()
		    ax = fig.add_subplot(111)
		    ax.plot(t, s, '-o')
		    ax.axhline(0.5)
		    ax.axhline(-0.5)
		
		    ind = cross_from_below(s, 0.5)
		    ax.vlines(t[ind], -1, 1)
		
		    ind = cross_from_above(s, -0.5)
		    ax.vlines(t[ind], -1, 1)
		
		    plt.show()
		
		See Also
		--------
		:func:`cross_from_above` and :func:`contiguous_regions`
	**/
	static public function cross_from_below(x:Dynamic, threshold:Dynamic):Dynamic;
	/**
		Compute the cross-spectral density.
		
		Call signature::
		
		    csd(x, y, NFFT=256, Fs=2, detrend=mlab.detrend_none,
		        window=mlab.window_hanning, noverlap=0, pad_to=None,
		        sides='default', scale_by_freq=None)
		
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
		    A function or a vector of length *NFFT*. To create window
		    vectors see :func:`window_hanning`, :func:`window_none`,
		    :func:`numpy.blackman`, :func:`numpy.hamming`,
		    :func:`numpy.bartlett`, :func:`scipy.signal`,
		    :func:`scipy.signal.get_window`, etc. The default is
		    :func:`window_hanning`.  If a function is passed as the
		    argument, it must take a data segment as an argument and
		    return the windowed version of the segment.
		
		sides : [ 'default' | 'onesided' | 'twosided' ]
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : integer
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'default', 'constant', 'mean', 'linear', 'none'} or callable
		    The function applied to each segment before fft-ing,
		    designed to remove the mean or linear trend.  Unlike in
		    MATLAB, where the *detrend* parameter is a vector, in
		    matplotlib is it a function.  The :mod:`~matplotlib.pylab`
		    module defines :func:`~matplotlib.pylab.detrend_none`,
		    :func:`~matplotlib.pylab.detrend_mean`, and
		    :func:`~matplotlib.pylab.detrend_linear`, but you can use
		    a custom function as well.  You can also use a string to choose
		    one of the functions.  'default', 'constant', and 'mean' call
		    :func:`~matplotlib.pylab.detrend_mean`.  'linear' calls
		    :func:`~matplotlib.pylab.detrend_linear`.  'none' calls
		    :func:`~matplotlib.pylab.detrend_none`.
		
		scale_by_freq : boolean, optional
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
		:func:`psd`
		    :func:`psd` is the equivalent to setting y=x.
	**/
	static public function csd(x:Dynamic, y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic):Dynamic;
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
		
		  If no rows are found, *None* is returned -- see
		  :file:`examples/loadrec.py`
	**/
	static public function csv2rec(fname:Dynamic, ?comments:Dynamic, ?skiprows:Dynamic, ?checkrows:Dynamic, ?delimiter:Dynamic, ?converterd:Dynamic, ?names:Dynamic, ?missing:Dynamic, ?missingd:Dynamic, ?use_mrecords:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic):Dynamic;
	static public function csvformat_factory(format:Dynamic):Dynamic;
	static public var defaultformatd : Dynamic;
	/**
		Return x minus its mean along the specified axis.
		
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
		:func:`delinear`
		
		:func:`denone`
		    :func:`delinear` and :func:`denone` are other detrend algorithms.
		
		:func:`detrend_mean`
		    This function is the same as :func:`detrend_mean` except for the
		    default *axis*.
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
		    the same as :func:`detrend_mean`. 'constant' is the same. 'linear' is
		    the same as :func:`detrend_linear`. 'none' is the same as
		    :func:`detrend_none`. The default is 'mean'. See the corresponding
		    functions for more details regarding the algorithms. Can also be a
		    function that carries out the detrend operation.
		
		axis : integer
		    The axis along which to do the detrending.
		
		See Also
		--------
		:func:`detrend_mean`
		    :func:`detrend_mean` implements the 'mean' algorithm.
		
		:func:`detrend_linear`
		    :func:`detrend_linear` implements the 'linear' algorithm.
		
		:func:`detrend_none`
		    :func:`detrend_none` implements the 'none' algorithm.
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
		:func:`delinear`
		    This function is the same as :func:`delinear` except for the default
		    *axis*.
		
		:func:`detrend_mean`
		
		:func:`detrend_none`
		    :func:`detrend_mean` and :func:`detrend_none` are other detrend
		    algorithms.
		
		:func:`detrend`
		    :func:`detrend` is a wrapper around all the detrend algorithms.
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
		:func:`demean`
		    This function is the same as :func:`demean` except for the default
		    *axis*.
		
		:func:`detrend_linear`
		
		:func:`detrend_none`
		    :func:`detrend_linear` and :func:`detrend_none` are other detrend
		    algorithms.
		
		:func:`detrend`
		    :func:`detrend` is a wrapper around all the detrend algorithms.
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
		:func:`denone`
		    This function is the same as :func:`denone` except for the default
		    *axis*, which has no effect.
		
		:func:`detrend_mean`
		
		:func:`detrend_linear`
		    :func:`detrend_mean` and :func:`detrend_linear` are other detrend
		    algorithms.
		
		:func:`detrend`
		    :func:`detrend` is a wrapper around all the detrend algorithms.
	**/
	static public function detrend_none(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the distance between two points.
	**/
	static public function dist(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Get the distance of a point to a segment.
		
		  *p*, *s0*, *s1* are *xy* sequences
		
		This algorithm from
		http://geomalgorithms.com/a02-_lines.html
	**/
	static public function dist_point_to_segment(p:Dynamic, s0:Dynamic, s1:Dynamic):Dynamic;
	/**
		Computes the distance between a set of successive points in *N* dimensions.
		
		Where *X* is an *M* x *N* array or matrix.  The distances between
		successive rows is computed.  Distance is the standard Euclidean
		distance.
	**/
	static public function distances_along_curve(X:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function donothing_callback(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return the entropy of the data in *y* in units of nat.
		
		.. math::
		
		  -\sum p_i \ln(p_i)
		
		where :math:`p_i` is the probability of observing *y* in the
		:math:`i^{th}` bin of *bins*.  *bins* can be a number of bins or a
		range of bins; see :func:`numpy.histogram`.
		
		Compare *S* with analytic calculation for a Gaussian::
		
		  x = mu + sigma * randn(200000)
		  Sanalytic = 0.5 * ( 1.0 + log(2*pi*sigma**2.0) )
	**/
	static public function entropy(y:Dynamic, bins:Dynamic):Dynamic;
	/**
		Compute exponentials which safely underflow to zero.
		
		Slow, but convenient to use. Note that numpy provides proper
		floating point exception handling with access to the underlying
		hardware.
	**/
	static public function exp_safe(x:Dynamic):Dynamic;
	static public var exp_safe_MAX : Dynamic;
	static public var exp_safe_MIN : Dynamic;
	/**
		Compute an FFT phase randomized surrogate of *x*.
	**/
	static public function fftsurr(x:Dynamic, ?detrend:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Return the indices where ravel(condition) is true
	**/
	static public function find(condition:Dynamic):Dynamic;
	/**
		frange([start,] stop[, step, keywords]) -> array of floats
		
		Return a numpy ndarray containing a progression of floats. Similar to
		:func:`numpy.arange`, but defaults to a closed interval.
		
		``frange(x0, x1)`` returns ``[x0, x0+1, x0+2, ..., x1]``; *start*
		defaults to 0, and the endpoint *is included*. This behavior is
		different from that of :func:`range` and
		:func:`numpy.arange`. This is deliberate, since :func:`frange`
		will probably be more useful for generating lists of points for
		function evaluation, and endpoints are often desired in this
		use. The usual behavior of :func:`range` can be obtained by
		setting the keyword *closed* = 0, in this case, :func:`frange`
		basically becomes :func:numpy.arange`.
		
		When *step* is given, it specifies the increment (or
		decrement). All arguments can be floating point numbers.
		
		``frange(x0,x1,d)`` returns ``[x0,x0+d,x0+2d,...,xfin]`` where
		*xfin* <= *x1*.
		
		:func:`frange` can also be called with the keyword *npts*. This
		sets the number of points the list should contain (and overrides
		the value *step* might have been given). :func:`numpy.arange`
		doesn't offer this option.
		
		Examples::
		
		  >>> frange(3)
		  array([ 0.,  1.,  2.,  3.])
		  >>> frange(3,closed=0)
		  array([ 0.,  1.,  2.])
		  >>> frange(1,6,2)
		  array([1, 3, 5])   or 1,3,5,7, depending on floating point vagueries
		  >>> frange(1,6.5,npts=5)
		  array([ 1.   ,  2.375,  3.75 ,  5.125,  6.5  ])
	**/
	static public function frange(xini:Dynamic, ?xfin:Dynamic, ?delta:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		build a formatd guaranteed to have a key for every dtype name
	**/
	static public function get_formatd(r:Dynamic, ?formatd:Dynamic):Dynamic;
	/**
		Return a *M* x *N* sparse matrix with *frac* elements randomly
		filled.
	**/
	static public function get_sparse_matrix(M:Dynamic, N:Dynamic, ?frac:Dynamic):Dynamic;
	/**
		*Z* and *Cond* are *M* x *N* matrices.  *Z* are data and *Cond* is
		a boolean matrix where some condition is satisfied.  Return value
		is (*x*, *y*, *z*) where *x* and *y* are the indices into *Z* and
		*z* are the values of *Z* at those indices.  *x*, *y*, and *z* are
		1D arrays.
	**/
	static public function get_xyz_where(Z:Dynamic, Cond:Dynamic):Dynamic;
	/**
		Interpolates from a nonuniformly spaced grid to some other
		grid.
		
		Fits a surface of the form z = f(`x`, `y`) to the data in the
		(usually) nonuniformly spaced vectors (`x`, `y`, `z`), then
		interpolates this surface at the points specified by
		(`xi`, `yi`) to produce `zi`.
		
		Parameters
		----------
		x, y, z : 1d array_like
		    Coordinates of grid points to interpolate from.
		xi, yi : 1d or 2d array_like
		    Coordinates of grid points to interpolate to.
		interp : string key from {'nn', 'linear'}
		    Interpolation algorithm, either 'nn' for natural neighbor, or
		    'linear' for linear interpolation.
		
		Returns
		-------
		2d float array
		    Array of values interpolated at (`xi`, `yi`) points.  Array
		    will be masked is any of (`xi`, `yi`) are outside the convex
		    hull of (`x`, `y`).
		
		Notes
		-----
		If `interp` is 'nn' (the default), uses natural neighbor
		interpolation based on Delaunay triangulation.  This option is
		only available if the mpl_toolkits.natgrid module is installed.
		This can be downloaded from https://github.com/matplotlib/natgrid.
		The (`xi`, `yi`) grid must be regular and monotonically increasing
		in this case.
		
		If `interp` is 'linear', linear interpolation is used via
		matplotlib.tri.LinearTriInterpolator.
		
		Instead of using `griddata`, more flexible functionality and other
		interpolation options are available using a
		matplotlib.tri.Triangulation and a matplotlib.tri.TriInterpolator.
	**/
	static public function griddata(x:Dynamic, y:Dynamic, z:Dynamic, xi:Dynamic, yi:Dynamic, ?interp:Dynamic):Dynamic;
	/**
		Returns the identity matrix of shape (*n*, *n*, ..., *n*) (rank *r*).
		
		For ranks higher than 2, this object is simply a multi-index Kronecker
		delta::
		
		                        /  1  if i0=i1=...=iR,
		    id[i0,i1,...,iR] = -|
		                        \  0  otherwise.
		
		Optionally a *dtype* (or typecode) may be given (it defaults to 'l').
		
		Since rank defaults to 2, this function behaves in the default case (when
		only *n* is given) like ``numpy.identity(n)`` -- but surprisingly, it is
		much faster.
	**/
	static public function identity(n:Dynamic, ?rank:Dynamic, ?dtype:Dynamic, ?typecode:Dynamic):Dynamic;
	/**
		*points* is a sequence of *x*, *y* points.
		*verts* is a sequence of *x*, *y* vertices of a polygon.
		
		Return value is a sequence of indices into points for the points
		that are inside the polygon.
	**/
	static public function inside_poly(points:Dynamic, verts:Dynamic):Dynamic;
	/**
		Tests whether first and last object in a sequence are the same.  These are
		presumably coordinates on a polygonal curve, in which case this function
		tests if that curve is closed.
	**/
	static public function is_closed_polygon(X:Dynamic):Dynamic;
	/**
		Returns the log base 2 of *n* if *n* is a power of 2, zero otherwise.
		
		Note the potential ambiguity if *n* == 1: 2**0 == 1, interpret accordingly.
	**/
	static public function ispower2(n:Dynamic):Dynamic;
	/**
		Like the MATLAB function with the same name, returns *True*
		if the supplied numpy array or matrix *X* looks like a vector,
		meaning it has a one non-singleton axis (i.e., it can have
		multiple axes, but all must have length 1, except for one of
		them).
		
		If you just want to see if the array has 1 axis, use X.ndim == 1.
	**/
	static public function isvector(X:Dynamic):Dynamic;
	/**
		Return the *l1* norm of *a*, flattened out.
		
		Implemented as a separate function (not a call to :func:`norm` for speed).
	**/
	static public function l1norm(a:Dynamic):Dynamic;
	/**
		Return the *l2* norm of *a*, flattened out.
		
		Implemented as a separate function (not a call to :func:`norm` for speed).
	**/
	static public function l2norm(a:Dynamic):Dynamic;
	/**
		This function provides simple (but somewhat less so than
		:func:`cbook.simple_linear_interpolation`) linear interpolation.
		:func:`simple_linear_interpolation` will give a list of point
		between a start and an end, while this does true linear
		interpolation at an arbitrary set of points.
		
		This is very inefficient linear interpolation meant to be used
		only for a small number of points in relatively non-intensive use
		cases.  For real linear interpolation, use scipy.
	**/
	static public function less_simple_linear_interpolation(x:Dynamic, y:Dynamic, xi:Dynamic, ?extrap:Dynamic):Dynamic;
	/**
		Return the log(*x*) in base 2.
		
		This is a _slow_ function but which is guaranteed to return the correct
		integer value if the input is an integer exact power of 2.
	**/
	static public function log2(x:Dynamic, ?ln2:Dynamic):Dynamic;
	/**
		Return N values logarithmically spaced between xmin and xmax.
	**/
	static public function logspace(xmin:Dynamic, xmax:Dynamic, N:Dynamic):Dynamic;
	/**
		Return the indices of the longest stretch of contiguous ones in *x*,
		assuming *x* is a vector of zeros and ones.  If there are two
		equally long stretches, pick the first.
	**/
	static public function longest_contiguous_ones(x:Dynamic):Dynamic;
	/**
		alias for longest_contiguous_ones
	**/
	static public function longest_ones(x:Dynamic):Dynamic;
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
		    A function or a vector of length *NFFT*. To create window
		    vectors see :func:`window_hanning`, :func:`window_none`,
		    :func:`numpy.blackman`, :func:`numpy.hamming`,
		    :func:`numpy.bartlett`, :func:`scipy.signal`,
		    :func:`scipy.signal.get_window`, etc. The default is
		    :func:`window_hanning`.  If a function is passed as the
		    argument, it must take a data segment as an argument and
		    return the windowed version of the segment.
		
		sides : [ 'default' | 'onesided' | 'twosided' ]
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : integer
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
		:func:`psd`
		    :func:`psd` returns the power spectral density.
		
		:func:`complex_spectrum`
		    This function returns the absolute value of :func:`complex_spectrum`.
		
		:func:`angle_spectrum`
		    :func:`angle_spectrum` returns the angles of the corresponding
		    frequencies.
		
		:func:`phase_spectrum`
		    :func:`phase_spectrum` returns the phase (unwrapped angle) of the
		    corresponding frequencies.
		
		:func:`specgram`
		    :func:`specgram` can return the magnitude spectrum of segments within
		    the signal.
	**/
	static public function magnitude_spectrum(x:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		Compute the len(*n*) moving average of *x*.
	**/
	static public function movavg(x:Dynamic, n:Dynamic):Dynamic;
	/**
		norm(a,p=2) -> l-p norm of a.flat
		
		Return the l-p norm of *a*, considered as a flat array.  This is NOT a true
		matrix norm, since arrays of arbitrary rank are always flattened.
		
		*p* can be a number or the string 'Infinity' to get the L-infinity norm.
	**/
	static public function norm_flat(a:Dynamic, ?p:Dynamic):Dynamic;
	/**
		Return the normal pdf evaluated at *x*; args provides *mu*, *sigma*
	**/
	static public function normpdf(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Offsets an array *y* by +/- an error and returns a tuple
		(y - err, y + err).
		
		The error term can be:
		
		* A scalar. In this case, the returned tuple is obvious.
		* A vector of the same length as *y*. The quantities y +/- err are computed
		  component-wise.
		* A tuple of length 2. In this case, yerr[0] is the error below *y* and
		  yerr[1] is error above *y*. For example::
		
		    from pylab import *
		    x = linspace(0, 2*pi, num=100, endpoint=True)
		    y = sin(x)
		    y_minus, y_plus = mlab.offset_line(y, 0.1)
		    plot(x, y)
		    fill_between(x, ym, y2=yp)
		    show()
	**/
	static public function offset_line(y:Dynamic, yerr:Dynamic):Dynamic;
	/**
		Computes the distance travelled along a polygonal curve in *N* dimensions.
		
		Where *X* is an *M* x *N* array or matrix.  Returns an array of
		length *M* consisting of the distance along the curve at each point
		(i.e., the rows of *X*).
	**/
	static public function path_length(X:Dynamic):Dynamic;
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
		    A function or a vector of length *NFFT*. To create window
		    vectors see :func:`window_hanning`, :func:`window_none`,
		    :func:`numpy.blackman`, :func:`numpy.hamming`,
		    :func:`numpy.bartlett`, :func:`scipy.signal`,
		    :func:`scipy.signal.get_window`, etc. The default is
		    :func:`window_hanning`.  If a function is passed as the
		    argument, it must take a data segment as an argument and
		    return the windowed version of the segment.
		
		sides : [ 'default' | 'onesided' | 'twosided' ]
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : integer
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
		:func:`complex_spectrum`
		    This function returns the angle value of :func:`complex_spectrum`.
		
		:func:`magnitude_spectrum`
		    :func:`magnitude_spectrum` returns the magnitudes of the corresponding
		    frequencies.
		
		:func:`angle_spectrum`
		    :func:`angle_spectrum` returns the wrapped version of this function.
		
		:func:`specgram`
		    :func:`specgram` can return the phase spectrum of segments within the
		    signal.
	**/
	static public function phase_spectrum(x:Dynamic, ?Fs:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic):Dynamic;
	/**
		Given a sequence of *xs* and *ys*, return the vertices of a
		polygon that has a horizontal base at *xmin* and an upper bound at
		the *ys*.  *xmin* is a scalar.
		
		Intended for use with :meth:`matplotlib.axes.Axes.fill`, e.g.,::
		
		  xv, yv = poly_below(0, x, y)
		  ax.fill(xv, yv)
	**/
	static public function poly_below(xmin:Dynamic, xs:Dynamic, ys:Dynamic):Dynamic;
	/**
		Given a sequence of *x*, *ylower* and *yupper*, return the polygon
		that fills the regions between them.  *ylower* or *yupper* can be
		scalar or iterable.  If they are iterable, they must be equal in
		length to *x*.
		
		Return value is *x*, *y* arrays for use with
		:meth:`matplotlib.axes.Axes.fill`.
	**/
	static public function poly_between(x:Dynamic, ylower:Dynamic, yupper:Dynamic):Dynamic;
	/**
		Return the percentiles of *x*.  *p* can either be a sequence of
		percentile values or a scalar.  If *p* is a sequence, the ith
		element of the return sequence is the *p*(i)-th percentile of *x*.
		If *p* is a scalar, the largest value of *x* less than or equal to
		the *p* percentage point in the sequence is returned.
	**/
	static public function prctile(x:Dynamic, ?p:Dynamic):Dynamic;
	/**
		Return the rank for each element in *x*, return the rank
		0..len(*p*).  e.g., if *p* = (25, 50, 75), the return value will be a
		len(*x*) array with values in [0,1,2,3] where 0 indicates the
		value is less than the 25th percentile, 1 indicates the value is
		>= the 25th and < 50th percentile, ... and 3 indicates the value
		is above the 75th percentile cutoff.
		
		*p* is either an array of percentiles in [0..100] or a scalar which
		indicates how many quantiles of data you want ranked.
	**/
	static public function prctile_rank(x:Dynamic, p:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the power spectral density.
		
		Call signature::
		
		    psd(x, NFFT=256, Fs=2, detrend=mlab.detrend_none,
		        window=mlab.window_hanning, noverlap=0, pad_to=None,
		        sides='default', scale_by_freq=None)
		
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
		    A function or a vector of length *NFFT*. To create window
		    vectors see :func:`window_hanning`, :func:`window_none`,
		    :func:`numpy.blackman`, :func:`numpy.hamming`,
		    :func:`numpy.bartlett`, :func:`scipy.signal`,
		    :func:`scipy.signal.get_window`, etc. The default is
		    :func:`window_hanning`.  If a function is passed as the
		    argument, it must take a data segment as an argument and
		    return the windowed version of the segment.
		
		sides : [ 'default' | 'onesided' | 'twosided' ]
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : integer
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'default', 'constant', 'mean', 'linear', 'none'} or callable
		    The function applied to each segment before fft-ing,
		    designed to remove the mean or linear trend.  Unlike in
		    MATLAB, where the *detrend* parameter is a vector, in
		    matplotlib is it a function.  The :mod:`~matplotlib.pylab`
		    module defines :func:`~matplotlib.pylab.detrend_none`,
		    :func:`~matplotlib.pylab.detrend_mean`, and
		    :func:`~matplotlib.pylab.detrend_linear`, but you can use
		    a custom function as well.  You can also use a string to choose
		    one of the functions.  'default', 'constant', and 'mean' call
		    :func:`~matplotlib.pylab.detrend_mean`.  'linear' calls
		    :func:`~matplotlib.pylab.detrend_linear`.  'none' calls
		    :func:`~matplotlib.pylab.detrend_none`.
		
		scale_by_freq : boolean, optional
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
		:func:`specgram`
		    :func:`specgram` differs in the default overlap; in not returning the
		    mean of the segment periodograms; and in returning the times of the
		    segments.
		
		:func:`magnitude_spectrum`
		    :func:`magnitude_spectrum` returns the magnitude spectrum.
		
		:func:`csd`
		    :func:`csd` returns the spectral density between two signals.
	**/
	static public function psd(x:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic):Dynamic;
	/**
		Converts a quadratic Bezier curve to a cubic approximation.
		
		The inputs are the *x* and *y* coordinates of the three control
		points of a quadratic curve, and the output is a tuple of *x* and
		*y* coordinates of the four control points of the cubic curve.
	**/
	static public function quad2cubic(q0x:Dynamic, q0y:Dynamic, q1x:Dynamic, q1y:Dynamic, q2x:Dynamic, q2y:Dynamic):Dynamic;
	/**
		Save the data from numpy recarray *r* into a
		comma-/space-/tab-delimited file.  The record array dtype names
		will be used for column headers.
		
		*fname*: can be a filename or a file handle.  Support for gzipped
		  files is automatic, if the filename ends in '.gz'
		
		*withheader*: if withheader is False, do not write the attribute
		  names in the first row
		
		for formatd type FormatFloat, we override the precision to store
		full precision floats in the CSV file
		
		See Also
		--------
		:func:`csv2rec`
		    For information about *missing* and *missingd*, which can be used to
		    fill in masked values into your CSV file.
	**/
	static public function rec2csv(r:Dynamic, fname:Dynamic, ?delimiter:Dynamic, ?formatd:Dynamic, ?missing:Dynamic, ?missingd:Dynamic, ?withheader:Dynamic):Dynamic;
	/**
		Returns a textual representation of a record array.
		
		Parameters
		----------
		r: numpy recarray
		
		header: list
		    column headers
		
		padding:
		    space between each column
		
		precision: number of decimal places to use for floats.
		    Set to an integer to apply to all floats.  Set to a
		    list of integers to apply precision individually.
		    Precision for non-floats is simply ignored.
		
		fields : list
		    If not None, a list of field names to print.  fields
		    can be a list of strings like ['field1', 'field2'] or a single
		    comma separated string like 'field1,field2'
		
		Examples
		--------
		
		For ``precision=[0,2,3]``, the output is ::
		
		  ID    Price   Return
		  ABC   12.54    0.234
		  XYZ    6.32   -0.076
	**/
	static public function rec2txt(r:Dynamic, ?header:Dynamic, ?padding:Dynamic, ?precision:Dynamic, ?fields:Dynamic):Dynamic;
	/**
		Return a new record array with field names populated with data
		from arrays in *arrs*.  If appending a single field, then *names*,
		*arrs* and *dtypes* do not have to be lists. They can just be the
		values themselves.
	**/
	static public function rec_append_fields(rec:Dynamic, names:Dynamic, arrs:Dynamic, ?dtypes:Dynamic):Dynamic;
	/**
		Return a new numpy record array with fields in *names* dropped.
	**/
	static public function rec_drop_fields(rec:Dynamic, names:Dynamic):Dynamic;
	/**
		*r* is a numpy record array
		
		*groupby* is a sequence of record array attribute names that
		together form the grouping key.  e.g., ('date', 'productcode')
		
		*stats* is a sequence of (*attr*, *func*, *outname*) tuples which
		will call ``x = func(attr)`` and assign *x* to the record array
		output with attribute *outname*.  For example::
		
		  stats = ( ('sales', len, 'numsales'), ('sales', np.mean, 'avgsale') )
		
		Return record array has *dtype* names for each attribute name in
		the *groupby* argument, with the associated group values, and
		for each outname name in the *stats* argument, with the associated
		stat summary output.
	**/
	static public function rec_groupby(r:Dynamic, groupby:Dynamic, stats:Dynamic):Dynamic;
	/**
		Join record arrays *r1* and *r2* on *key*; *key* is a tuple of
		field names -- if *key* is a string it is assumed to be a single
		attribute name. If *r1* and *r2* have equal values on all the keys
		in the *key* tuple, then their fields will be merged into a new
		record array containing the intersection of the fields of *r1* and
		*r2*.
		
		*r1* (also *r2*) must not have any duplicate keys.
		
		The *jointype* keyword can be 'inner', 'outer', 'leftouter'.  To
		do a rightouter join just reverse *r1* and *r2*.
		
		The *defaults* keyword is a dictionary filled with
		``{column_name:default_value}`` pairs.
		
		The keywords *r1postfix* and *r2postfix* are postfixed to column names
		(other than keys) that are both in *r1* and *r2*.
	**/
	static public function rec_join(key:Dynamic, r1:Dynamic, r2:Dynamic, ?jointype:Dynamic, ?defaults:Dynamic, ?r1postfix:Dynamic, ?r2postfix:Dynamic):Dynamic;
	/**
		Return a new numpy record array with only fields listed in names
	**/
	static public function rec_keep_fields(rec:Dynamic, names:Dynamic):Dynamic;
	/**
		*r* is a numpy record array
		
		*summaryfuncs* is a list of (*attr*, *func*, *outname*) tuples
		which will apply *func* to the array *r*[attr] and assign the
		output to a new attribute name *outname*.  The returned record
		array is identical to *r*, with extra arrays for each element in
		*summaryfuncs*.
	**/
	static public function rec_summarize(r:Dynamic, summaryfuncs:Dynamic):Dynamic;
	/**
		Join a sequence of record arrays on single column key.
		
		This function only joins a single column of the multiple record arrays
		
		*key*
		  is the column name that acts as a key
		
		*name*
		  is the name of the column that we want to join
		
		*recs*
		  is a list of record arrays to join
		
		*jointype*
		  is a string 'inner' or 'outer'
		
		*missing*
		  is what any missing field is replaced by
		
		*postfixes*
		  if not None, a len recs sequence of postfixes
		
		returns a record array with columns [rowkey, name0, name1, ... namen-1].
		or if postfixes [PF0, PF1, ..., PFN-1] are supplied,
		[rowkey, namePF0, namePF1, ... namePFN-1].
		
		Example::
		
		  r = recs_join("date", "close", recs=[r0, r1], missing=0.)
	**/
	static public function recs_join(key:Dynamic, name:Dynamic, recs:Dynamic, ?jointype:Dynamic, ?missing:Dynamic, ?postfixes:Dynamic):Dynamic;
	/**
		Integrate 1D or ND system of ODEs using 4-th order Runge-Kutta.
		This is a toy implementation which may be useful if you find
		yourself stranded on a system w/o scipy.  Otherwise use
		:func:`scipy.integrate`.
		
		Parameters
		----------
		y0
		    initial state vector
		
		t
		    sample times
		
		derivs
		    returns the derivative of the system and has the
		    signature ``dy = derivs(yi, ti)``
		
		Examples
		--------
		
		A 2D system::
		
		    def derivs6(x,t):
		        d1 =  x[0] + 2*x[1]
		        d2 =  -3*x[0] + 4*x[1]
		        return (d1, d2)
		    dt = 0.0005
		    t = arange(0.0, 2.0, dt)
		    y0 = (1,2)
		    yout = rk4(derivs6, y0, t)
		
		A 1D system::
		
		    alpha = 2
		    def derivs(x,t):
		        return -alpha*x + exp(-t)
		
		    y0 = 1
		    yout = rk4(derivs, y0, t)
		
		If you have access to scipy, you should probably be using the
		scipy.integrate tools rather than this function.
	**/
	static public function rk4(derivs:Dynamic, y0:Dynamic, t:Dynamic):Dynamic;
	/**
		Return the root mean square of all the elements of *a*, flattened out.
	**/
	static public function rms_flat(a:Dynamic):Dynamic;
	/**
		:func:`numpy.isinf` for arbitrary types
	**/
	static public function safe_isinf(x:Dynamic):Dynamic;
	/**
		:func:`numpy.isnan` for arbitrary types
	**/
	static public function safe_isnan(x:Dynamic):Dynamic;
	/**
		Return *True* if *s1* and *s2* intersect.
		*s1* and *s2* are defined as::
		
		  s1: (x1, y1), (x2, y2)
		  s2: (x3, y3), (x4, y4)
	**/
	static public function segments_intersect(s1:Dynamic, s2:Dynamic):Dynamic;
	/**
		:func:`slopes` calculates the slope *y*'(*x*)
		
		The slope is estimated using the slope obtained from that of a
		parabola through any three consecutive points.
		
		This method should be superior to that described in the appendix
		of A CONSISTENTLY WELL BEHAVED METHOD OF INTERPOLATION by Russel
		W. Stineman (Creative Computing July 1980) in at least one aspect:
		
		  Circles for interpolation demand a known aspect ratio between
		  *x*- and *y*-values.  For many functions, however, the abscissa
		  are given in different dimensions, so an aspect ratio is
		  completely arbitrary.
		
		The parabola method gives very similar results to the circle
		method for most regular cases but behaves much better in special
		cases.
		
		Norbert Nemec, Institute of Theoretical Physics, University or
		Regensburg, April 2006 Norbert.Nemec at physik.uni-regensburg.de
		
		(inspired by a original implementation by Halldor Bjornsson,
		Icelandic Meteorological Office, March 2006 halldor at vedur.is)
	**/
	static public function slopes(x:Dynamic, y:Dynamic):Dynamic;
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
		    A function or a vector of length *NFFT*. To create window
		    vectors see :func:`window_hanning`, :func:`window_none`,
		    :func:`numpy.blackman`, :func:`numpy.hamming`,
		    :func:`numpy.bartlett`, :func:`scipy.signal`,
		    :func:`scipy.signal.get_window`, etc. The default is
		    :func:`window_hanning`.  If a function is passed as the
		    argument, it must take a data segment as an argument and
		    return the windowed version of the segment.
		
		sides : [ 'default' | 'onesided' | 'twosided' ]
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : integer
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'default', 'constant', 'mean', 'linear', 'none'} or callable
		    The function applied to each segment before fft-ing,
		    designed to remove the mean or linear trend.  Unlike in
		    MATLAB, where the *detrend* parameter is a vector, in
		    matplotlib is it a function.  The :mod:`~matplotlib.pylab`
		    module defines :func:`~matplotlib.pylab.detrend_none`,
		    :func:`~matplotlib.pylab.detrend_mean`, and
		    :func:`~matplotlib.pylab.detrend_linear`, but you can use
		    a custom function as well.  You can also use a string to choose
		    one of the functions.  'default', 'constant', and 'mean' call
		    :func:`~matplotlib.pylab.detrend_mean`.  'linear' calls
		    :func:`~matplotlib.pylab.detrend_linear`.  'none' calls
		    :func:`~matplotlib.pylab.detrend_none`.
		
		scale_by_freq : boolean, optional
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
		Given data vectors *x* and *y*, the slope vector *yp* and a new
		abscissa vector *xi*, the function :func:`stineman_interp` uses
		Stineman interpolation to calculate a vector *yi* corresponding to
		*xi*.
		
		Here's an example that generates a coarse sine curve, then
		interpolates over a finer abscissa::
		
		  x = linspace(0,2*pi,20);  y = sin(x); yp = cos(x)
		  xi = linspace(0,2*pi,40);
		  yi = stineman_interp(xi,x,y,yp);
		  plot(x,y,'o',xi,yi)
		
		The interpolation method is described in the article A
		CONSISTENTLY WELL BEHAVED METHOD OF INTERPOLATION by Russell
		W. Stineman. The article appeared in the July 1980 issue of
		Creative Computing with a note from the editor stating that while
		they were:
		
		  not an academic journal but once in a while something serious
		  and original comes in adding that this was
		  "apparently a real solution" to a well known problem.
		
		For *yp* = *None*, the routine automatically determines the slopes
		using the :func:`slopes` routine.
		
		*x* is assumed to be sorted in increasing order.
		
		For values ``xi[j] < x[0]`` or ``xi[j] > x[-1]``, the routine
		tries an extrapolation.  The relevance of the data obtained from
		this, of course, is questionable...
		
		Original implementation by Halldor Bjornsson, Icelandic
		Meteorolocial Office, March 2006 halldor at vedur.is
		
		Completely reworked and optimized for Python by Norbert Nemec,
		Institute of Theoretical Physics, University or Regensburg, April
		2006 Norbert.Nemec at physik.uni-regensburg.de
	**/
	static public function stineman_interp(xi:Dynamic, x:Dynamic, y:Dynamic, ?yp:Dynamic):Dynamic;
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
	static public var unicode_literals : Dynamic;
	/**
		Finds the length of a set of vectors in *n* dimensions.  This is
		like the :func:`numpy.norm` function for vectors, but has the ability to
		work over a particular axis of the supplied array or matrix.
		
		Computes ``(sum((x_i)^P))^(1/P)`` for each ``{x_i}`` being the
		elements of *X* along the given axis.  If *axis* is *None*,
		compute over all elements of *X*.
	**/
	static public function vector_lengths(X:Dynamic, ?P:Dynamic, ?axis:Dynamic):Dynamic;
	static public var verbose : Dynamic;
	/**
		Return x times the hanning window of len(x).
		
		See Also
		--------
		:func:`window_none`
		    :func:`window_none` is another window algorithm.
	**/
	static public function window_hanning(x:Dynamic):Dynamic;
	/**
		No window function; simply return x.
		
		See Also
		--------
		:func:`window_hanning`
		    :func:`window_hanning` is another window algorithm.
	**/
	static public function window_none(x:Dynamic):Dynamic;
}