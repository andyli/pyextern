/* This file is generated, do not edit! */
package scipy.signal;
@:pythonImport("scipy.signal._peak_finding") extern class _Peak_finding {
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
		Calculate the relative extrema of `data`.
		
		Relative extrema are calculated by finding locations where
		``comparator(data[n], data[n+1:n+order+1])`` is True.
		
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
		    to consider ``comparator(n,n+x)`` to be True.
		mode : str, optional
		    How the edges of the vector are treated.  'wrap' (wrap around) or
		    'clip' (treat overflow as the same as the last (or first) element).
		    Default 'clip'.  See numpy.take
		
		Returns
		-------
		extrema : ndarray
		    Boolean array of the same shape as `data` that is True at an extrema,
		    False otherwise.
		
		See also
		--------
		argrelmax, argrelmin
		
		Examples
		--------
		>>> testdata = np.array([1,2,3,2,1])
		>>> _boolrelextrema(testdata, np.greater, axis=0)
		array([False, False,  True, False, False], dtype=bool)
	**/
	static public function _boolrelextrema(data:Dynamic, comparator:Dynamic, ?axis:Dynamic, ?order:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Filter ridge lines according to prescribed criteria. Intended
		to be used for finding relative maxima.
		
		Parameters
		----------
		cwt : 2-D ndarray
		    Continuous wavelet transform from which the `ridge_lines` were defined.
		ridge_lines : 1-D sequence
		    Each element should contain 2 sequences, the rows and columns
		    of the ridge line (respectively).
		window_size : int, optional
		    Size of window to use to calculate noise floor.
		    Default is ``cwt.shape[1] / 20``.
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
		    scipy.stats.scoreatpercentile.
		
		References
		----------
		Bioinformatics (2006) 22 (17): 2059-2065. doi: 10.1093/bioinformatics/btl355
		http://bioinformatics.oxfordjournals.org/content/22/17/2059.long
	**/
	static public function _filter_ridge_lines(cwt:Dynamic, ridge_lines:Dynamic, ?window_size:Dynamic, ?min_length:Dynamic, ?min_snr:Dynamic, ?noise_perc:Dynamic):Dynamic;
	/**
		Identify ridges in the 2-D matrix.
		
		Expect that the width of the wavelet feature increases with increasing row
		number.
		
		Parameters
		----------
		matr : 2-D ndarray
		    Matrix in which to identify ridge lines.
		max_distances : 1-D sequence
		    At each row, a ridge line is only connected
		    if the relative max at row[n] is within
		    `max_distances`[n] from the relative max at row[n+1].
		gap_thresh : int
		    If a relative maximum is not found within `max_distances`,
		    there will be a gap. A ridge line is discontinued if
		    there are more than `gap_thresh` points without connecting
		    a new relative maximum.
		
		Returns
		-------
		ridge_lines : tuple
		    Tuple of 2 1-D sequences. `ridge_lines`[ii][0] are the rows of the
		    ii-th ridge-line, `ridge_lines`[ii][1] are the columns. Empty if none
		    found.  Each ridge-line will be sorted by row (increasing), but the
		    order of the ridge lines is not specified.
		
		References
		----------
		Bioinformatics (2006) 22 (17): 2059-2065.
		doi: 10.1093/bioinformatics/btl355
		http://bioinformatics.oxfordjournals.org/content/22/17/2059.long
		
		Examples
		--------
		>>> data = np.random.rand(5,5)
		>>> ridge_lines = _identify_ridge_lines(data, 1, 1)
		
		Notes
		-----
		This function is intended to be used in conjunction with `cwt`
		as part of `find_peaks_cwt`.
	**/
	static public function _identify_ridge_lines(matr:Dynamic, max_distances:Dynamic, gap_thresh:Dynamic):Dynamic;
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
		    will have (len(wavelet(width,length)) == length).
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
		>>> length = min(10 * width[ii], len(data))
		>>> cwt[ii,:] = scipy.signal.convolve(data, wavelet(length,
		...                                       width[ii]), mode='same')
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t = np.linspace(-1, 1, 200, endpoint=False)
		>>> sig  = np.cos(2 * np.pi * 7 * t) + signal.gausspulse(t - 0.4, fc=2)
		>>> widths = np.arange(1, 31)
		>>> cwtmatr = signal.cwt(sig, signal.ricker, widths)
		>>> plt.imshow(cwtmatr, extent=[-1, 1, 1, 31], cmap='PRGn', aspect='auto',
		...            vmax=abs(cwtmatr).max(), vmin=-abs(cwtmatr).max())
		>>> plt.show()
	**/
	static public function cwt(data:Dynamic, wavelet:Dynamic, widths:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		    Should take a single variable and return a 1-D array to convolve
		    with `vector`.  Should be normalized to unit area.
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
	static public var print_function : Dynamic;
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
		Calculate the score at a given percentile of the input sequence.
		
		For example, the score at `per=50` is the median. If the desired quantile
		lies between two data points, we interpolate between them, according to
		the value of `interpolation`. If the parameter `limit` is provided, it
		should be a tuple (lower, upper) of two values.
		
		Parameters
		----------
		a : array_like
		    A 1-D array of values from which to extract score.
		per : array_like
		    Percentile(s) at which to extract score.  Values should be in range
		    [0,100].
		limit : tuple, optional
		    Tuple of two scalars, the lower and upper limits within which to
		    compute the percentile. Values of `a` outside
		    this (closed) interval will be ignored.
		interpolation_method : {'fraction', 'lower', 'higher'}, optional
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`
		
		      - fraction: ``i + (j - i) * fraction`` where ``fraction`` is the
		        fractional part of the index surrounded by ``i`` and ``j``.
		      - lower: ``i``.
		      - higher: ``j``.
		
		axis : int, optional
		    Axis along which the percentiles are computed. Default is None. If
		    None, compute over the whole array `a`.
		
		Returns
		-------
		score : float or ndarray
		    Score at percentile(s).
		
		See Also
		--------
		percentileofscore, numpy.percentile
		
		Notes
		-----
		This function will become obsolete in the future.
		For Numpy 1.9 and higher, `numpy.percentile` provides all the functionality
		that `scoreatpercentile` provides.  And it's significantly faster.
		Therefore it's recommended to use `numpy.percentile` for users that have
		numpy >= 1.9.
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(100)
		>>> stats.scoreatpercentile(a, 50)
		49.5
	**/
	static public function scoreatpercentile(a:Dynamic, per:Dynamic, ?limit:Dynamic, ?interpolation_method:Dynamic, ?axis:Dynamic):Dynamic;
}