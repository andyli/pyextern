/* This file is generated, do not edit! */
package numpy.lib.histograms;
@:pythonImport("numpy.lib.histograms") extern class Histograms_Module {
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
		Computes the bins used internally by `histogram`.
		
		Parameters
		==========
		a : ndarray
		    Ravelled data array
		bins, range
		    Forwarded arguments from `histogram`.
		weights : ndarray, optional
		    Ravelled weights array, or None
		
		Returns
		=======
		bin_edges : ndarray
		    Array of bin edges
		uniform_bins : (Number, Number, int):
		    The upper bound, lowerbound, and number of bins, used in the optimized
		    implementation of `histogram` that works on uniform bins.
	**/
	static public function _get_bin_edges(a:Dynamic, bins:Dynamic, range:Dynamic, weights:Dynamic):numpy.Ndarray;
	/**
		Determine the outer bin edges to use, from either the data or the range
		argument
	**/
	static public function _get_outer_edges(a:Dynamic, range:Dynamic):Dynamic;
	/**
		Histogram bin estimator that uses the minimum width of the
		Freedman-Diaconis and Sturges estimators if the FD bin width is non-zero.
		If the bin width from the FD estimator is 0, the Sturges estimator is used.
		
		The FD estimator is usually the most robust method, but its width
		estimate tends to be too large for small `x` and bad for data with limited
		variance. The Sturges estimator is quite good for small (<1000) datasets
		and is the default in the R language. This method gives good off-the-shelf
		behaviour.
		
		.. versionchanged:: 1.15.0
		If there is limited variance the IQR can be 0, which results in the
		FD bin width being 0 too. This is not a valid bin width, so
		``np.histogram_bin_edges`` chooses 1 bin instead, which may not be optimal.
		If the IQR is 0, it's unlikely any variance-based estimators will be of
		use, so we revert to the Sturges estimator, which only uses the size of the
		dataset in its calculation.
		
		Parameters
		----------
		x : array_like
		    Input data that is to be histogrammed, trimmed to range. May not
		    be empty.
		
		Returns
		-------
		h : An estimate of the optimal bin width for the given data.
		
		See Also
		--------
		_hist_bin_fd, _hist_bin_sturges
	**/
	static public function _hist_bin_auto(x:Dynamic, range:Dynamic):Dynamic;
	/**
		Doane's histogram bin estimator.
		
		Improved version of Sturges' formula which works better for
		non-normal data. See
		stats.stackexchange.com/questions/55134/doanes-formula-for-histogram-binning
		
		Parameters
		----------
		x : array_like
		    Input data that is to be histogrammed, trimmed to range. May not
		    be empty.
		
		Returns
		-------
		h : An estimate of the optimal bin width for the given data.
	**/
	static public function _hist_bin_doane(x:Dynamic, range:Dynamic):Dynamic;
	/**
		The Freedman-Diaconis histogram bin estimator.
		
		The Freedman-Diaconis rule uses interquartile range (IQR) to
		estimate binwidth. It is considered a variation of the Scott rule
		with more robustness as the IQR is less affected by outliers than
		the standard deviation. However, the IQR depends on fewer points
		than the standard deviation, so it is less accurate, especially for
		long tailed distributions.
		
		If the IQR is 0, this function returns 0 for the bin width.
		Binwidth is inversely proportional to the cube root of data size
		(asymptotically optimal).
		
		Parameters
		----------
		x : array_like
		    Input data that is to be histogrammed, trimmed to range. May not
		    be empty.
		
		Returns
		-------
		h : An estimate of the optimal bin width for the given data.
	**/
	static public function _hist_bin_fd(x:Dynamic, range:Dynamic):Dynamic;
	/**
		Rice histogram bin estimator.
		
		Another simple estimator with no normality assumption. It has better
		performance for large data than Sturges, but tends to overestimate
		the number of bins. The number of bins is proportional to the cube
		root of data size (asymptotically optimal). The estimate depends
		only on size of the data.
		
		Parameters
		----------
		x : array_like
		    Input data that is to be histogrammed, trimmed to range. May not
		    be empty.
		
		Returns
		-------
		h : An estimate of the optimal bin width for the given data.
	**/
	static public function _hist_bin_rice(x:Dynamic, range:Dynamic):Dynamic;
	/**
		Scott histogram bin estimator.
		
		The binwidth is proportional to the standard deviation of the data
		and inversely proportional to the cube root of data size
		(asymptotically optimal).
		
		Parameters
		----------
		x : array_like
		    Input data that is to be histogrammed, trimmed to range. May not
		    be empty.
		
		Returns
		-------
		h : An estimate of the optimal bin width for the given data.
	**/
	static public function _hist_bin_scott(x:Dynamic, range:Dynamic):Dynamic;
	static public var _hist_bin_selectors : Dynamic;
	/**
		Square root histogram bin estimator.
		
		Bin width is inversely proportional to the data size. Used by many
		programs for its simplicity.
		
		Parameters
		----------
		x : array_like
		    Input data that is to be histogrammed, trimmed to range. May not
		    be empty.
		
		Returns
		-------
		h : An estimate of the optimal bin width for the given data.
	**/
	static public function _hist_bin_sqrt(x:Dynamic, range:Dynamic):Dynamic;
	/**
		Histogram bin estimator based on minimizing the estimated integrated squared error (ISE).
		
		The number of bins is chosen by minimizing the estimated ISE against the unknown true distribution.
		The ISE is estimated using cross-validation and can be regarded as a generalization of Scott's rule.
		https://en.wikipedia.org/wiki/Histogram#Scott.27s_normal_reference_rule
		
		This paper by Stone appears to be the origination of this rule.
		http://digitalassets.lib.berkeley.edu/sdtr/ucb/text/34.pdf
		
		Parameters
		----------
		x : array_like
		    Input data that is to be histogrammed, trimmed to range. May not
		    be empty.
		range : (float, float)
		    The lower and upper range of the bins.
		
		Returns
		-------
		h : An estimate of the optimal bin width for the given data.
	**/
	static public function _hist_bin_stone(x:Dynamic, range:Dynamic):Dynamic;
	/**
		Sturges histogram bin estimator.
		
		A very simplistic estimator based on the assumption of normality of
		the data. This estimator has poor performance for non-normal data,
		which becomes especially obvious for large data sets. The estimate
		depends only on size of the data.
		
		Parameters
		----------
		x : array_like
		    Input data that is to be histogrammed, trimmed to range. May not
		    be empty.
		
		Returns
		-------
		h : An estimate of the optimal bin width for the given data.
	**/
	static public function _hist_bin_sturges(x:Dynamic, range:Dynamic):Dynamic;
	static public function _histogram_bin_edges_dispatcher(a:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?weights:Dynamic):Dynamic;
	static public function _histogram_dispatcher(a:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):Dynamic;
	static public function _histogramdd_dispatcher(sample:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):Dynamic;
	/**
		Peak-to-peak value of x.
		
		This implementation avoids the problem of signed integer arrays having a
		peak-to-peak value that cannot be represented with the array's data type.
		This function returns an unsigned value for signed integer arrays.
	**/
	static public function _ptp(x:Dynamic):Dynamic;
	/**
		Check a and weights have matching shapes, and ravel both 
	**/
	static public function _ravel_and_check_weights(a:Dynamic, weights:Dynamic):Dynamic;
	/**
		Like `searchsorted`, but where the last item in `v` is placed on the right.
		
		In the context of a histogram, this makes the last bin edge inclusive
	**/
	static public function _search_sorted_inclusive(a:Dynamic, v:Dynamic):Dynamic;
	/**
		Subtract two values where a >= b, and produce an unsigned result
		
		This is needed when finding the difference between the upper and lower
		bound of an int16 histogram
	**/
	static public function _unsigned_subtract(a:Dynamic, b:Dynamic):Dynamic;
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	/**
		Compute the histogram of a dataset.
		
		Parameters
		----------
		a : array_like
		    Input data. The histogram is computed over the flattened array.
		bins : int or sequence of scalars or str, optional
		    If `bins` is an int, it defines the number of equal-width
		    bins in the given range (10, by default). If `bins` is a
		    sequence, it defines a monotonically increasing array of bin edges,
		    including the rightmost edge, allowing for non-uniform bin widths.
		
		    .. versionadded:: 1.11.0
		
		    If `bins` is a string, it defines the method used to calculate the
		    optimal bin width, as defined by `histogram_bin_edges`.
		
		range : (float, float), optional
		    The lower and upper range of the bins.  If not provided, range
		    is simply ``(a.min(), a.max())``.  Values outside the range are
		    ignored. The first element of the range must be less than or
		    equal to the second. `range` affects the automatic bin
		    computation as well. While bin width is computed to be optimal
		    based on the actual data within `range`, the bin count will fill
		    the entire range including portions containing no data.
		normed : bool, optional
		
		    .. deprecated:: 1.6.0
		
		    This is equivalent to the `density` argument, but produces incorrect
		    results for unequal bin widths. It should not be used.
		
		    .. versionchanged:: 1.15.0
		        DeprecationWarnings are actually emitted.
		
		weights : array_like, optional
		    An array of weights, of the same shape as `a`.  Each value in
		    `a` only contributes its associated weight towards the bin count
		    (instead of 1). If `density` is True, the weights are
		    normalized, so that the integral of the density over the range
		    remains 1.
		density : bool, optional
		    If ``False``, the result will contain the number of samples in
		    each bin. If ``True``, the result is the value of the
		    probability *density* function at the bin, normalized such that
		    the *integral* over the range is 1. Note that the sum of the
		    histogram values will not be equal to 1 unless bins of unity
		    width are chosen; it is not a probability *mass* function.
		
		    Overrides the ``normed`` keyword if given.
		
		Returns
		-------
		hist : array
		    The values of the histogram. See `density` and `weights` for a
		    description of the possible semantics.
		bin_edges : array of dtype float
		    Return the bin edges ``(length(hist)+1)``.
		
		
		See Also
		--------
		histogramdd, bincount, searchsorted, digitize, histogram_bin_edges
		
		Notes
		-----
		All but the last (righthand-most) bin is half-open.  In other words,
		if `bins` is::
		
		  [1, 2, 3, 4]
		
		then the first bin is ``[1, 2)`` (including 1, but excluding 2) and
		the second ``[2, 3)``.  The last bin, however, is ``[3, 4]``, which
		*includes* 4.
		
		
		Examples
		--------
		>>> np.histogram([1, 2, 1], bins=[0, 1, 2, 3])
		(array([0, 2, 1]), array([0, 1, 2, 3]))
		>>> np.histogram(np.arange(4), bins=np.arange(5), density=True)
		(array([0.25, 0.25, 0.25, 0.25]), array([0, 1, 2, 3, 4]))
		>>> np.histogram([[1, 2, 1], [1, 0, 1]], bins=[0,1,2,3])
		(array([1, 4, 1]), array([0, 1, 2, 3]))
		
		>>> a = np.arange(5)
		>>> hist, bin_edges = np.histogram(a, density=True)
		>>> hist
		array([0.5, 0. , 0.5, 0. , 0. , 0.5, 0. , 0.5, 0. , 0.5])
		>>> hist.sum()
		2.4999999999999996
		>>> np.sum(hist * np.diff(bin_edges))
		1.0
		
		.. versionadded:: 1.11.0
		
		Automated Bin Selection Methods example, using 2 peak random data
		with 2000 points:
		
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.RandomState(10)  # deterministic random data
		>>> a = np.hstack((rng.normal(size=1000),
		...                rng.normal(loc=5, scale=2, size=1000)))
		>>> _ = plt.hist(a, bins='auto')  # arguments are passed to np.histogram
		>>> plt.title("Histogram with 'auto' bins")
		Text(0.5, 1.0, "Histogram with 'auto' bins")
		>>> plt.show()
	**/
	static public function histogram(a:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):Array<Dynamic>;
	/**
		Function to calculate only the edges of the bins used by the `histogram`
		function.
		
		Parameters
		----------
		a : array_like
		    Input data. The histogram is computed over the flattened array.
		bins : int or sequence of scalars or str, optional
		    If `bins` is an int, it defines the number of equal-width
		    bins in the given range (10, by default). If `bins` is a
		    sequence, it defines the bin edges, including the rightmost
		    edge, allowing for non-uniform bin widths.
		
		    If `bins` is a string from the list below, `histogram_bin_edges` will use
		    the method chosen to calculate the optimal bin width and
		    consequently the number of bins (see `Notes` for more detail on
		    the estimators) from the data that falls within the requested
		    range. While the bin width will be optimal for the actual data
		    in the range, the number of bins will be computed to fill the
		    entire range, including the empty portions. For visualisation,
		    using the 'auto' option is suggested. Weighted data is not
		    supported for automated bin size selection.
		
		    'auto'
		        Maximum of the 'sturges' and 'fd' estimators. Provides good
		        all around performance.
		
		    'fd' (Freedman Diaconis Estimator)
		        Robust (resilient to outliers) estimator that takes into
		        account data variability and data size.
		
		    'doane'
		        An improved version of Sturges' estimator that works better
		        with non-normal datasets.
		
		    'scott'
		        Less robust estimator that that takes into account data
		        variability and data size.
		
		    'stone'
		        Estimator based on leave-one-out cross-validation estimate of
		        the integrated squared error. Can be regarded as a generalization
		        of Scott's rule.
		
		    'rice'
		        Estimator does not take variability into account, only data
		        size. Commonly overestimates number of bins required.
		
		    'sturges'
		        R's default method, only accounts for data size. Only
		        optimal for gaussian data and underestimates number of bins
		        for large non-gaussian datasets.
		
		    'sqrt'
		        Square root (of data size) estimator, used by Excel and
		        other programs for its speed and simplicity.
		
		range : (float, float), optional
		    The lower and upper range of the bins.  If not provided, range
		    is simply ``(a.min(), a.max())``.  Values outside the range are
		    ignored. The first element of the range must be less than or
		    equal to the second. `range` affects the automatic bin
		    computation as well. While bin width is computed to be optimal
		    based on the actual data within `range`, the bin count will fill
		    the entire range including portions containing no data.
		
		weights : array_like, optional
		    An array of weights, of the same shape as `a`.  Each value in
		    `a` only contributes its associated weight towards the bin count
		    (instead of 1). This is currently not used by any of the bin estimators,
		    but may be in the future.
		
		Returns
		-------
		bin_edges : array of dtype float
		    The edges to pass into `histogram`
		
		See Also
		--------
		histogram
		
		Notes
		-----
		The methods to estimate the optimal number of bins are well founded
		in literature, and are inspired by the choices R provides for
		histogram visualisation. Note that having the number of bins
		proportional to :math:`n^{1/3}` is asymptotically optimal, which is
		why it appears in most estimators. These are simply plug-in methods
		that give good starting points for number of bins. In the equations
		below, :math:`h` is the binwidth and :math:`n_h` is the number of
		bins. All estimators that compute bin counts are recast to bin width
		using the `ptp` of the data. The final bin count is obtained from
		``np.round(np.ceil(range / h))``. The final bin width is often less 
		than what is returned by the estimators below.
		
		'auto' (maximum of the 'sturges' and 'fd' estimators)
		    A compromise to get a good value. For small datasets the Sturges
		    value will usually be chosen, while larger datasets will usually
		    default to FD.  Avoids the overly conservative behaviour of FD
		    and Sturges for small and large datasets respectively.
		    Switchover point is usually :math:`a.size \approx 1000`.
		
		'fd' (Freedman Diaconis Estimator)
		    .. math:: h = 2 \frac{IQR}{n^{1/3}}
		
		    The binwidth is proportional to the interquartile range (IQR)
		    and inversely proportional to cube root of a.size. Can be too
		    conservative for small datasets, but is quite good for large
		    datasets. The IQR is very robust to outliers.
		
		'scott'
		    .. math:: h = \sigma \sqrt[3]{\frac{24 * \sqrt{\pi}}{n}}
		
		    The binwidth is proportional to the standard deviation of the
		    data and inversely proportional to cube root of ``x.size``. Can
		    be too conservative for small datasets, but is quite good for
		    large datasets. The standard deviation is not very robust to
		    outliers. Values are very similar to the Freedman-Diaconis
		    estimator in the absence of outliers.
		
		'rice'
		    .. math:: n_h = 2n^{1/3}
		
		    The number of bins is only proportional to cube root of
		    ``a.size``. It tends to overestimate the number of bins and it
		    does not take into account data variability.
		
		'sturges'
		    .. math:: n_h = \log _{2}n+1
		
		    The number of bins is the base 2 log of ``a.size``.  This
		    estimator assumes normality of data and is too conservative for
		    larger, non-normal datasets. This is the default method in R's
		    ``hist`` method.
		
		'doane'
		    .. math:: n_h = 1 + \log_{2}(n) +
		                    \log_{2}(1 + \frac{|g_1|}{\sigma_{g_1}})
		
		        g_1 = mean[(\frac{x - \mu}{\sigma})^3]
		
		        \sigma_{g_1} = \sqrt{\frac{6(n - 2)}{(n + 1)(n + 3)}}
		
		    An improved version of Sturges' formula that produces better
		    estimates for non-normal datasets. This estimator attempts to
		    account for the skew of the data.
		
		'sqrt'
		    .. math:: n_h = \sqrt n
		
		    The simplest and fastest estimator. Only takes into account the
		    data size.
		
		Examples
		--------
		>>> arr = np.array([0, 0, 0, 1, 2, 3, 3, 4, 5])
		>>> np.histogram_bin_edges(arr, bins='auto', range=(0, 1))
		array([0.  , 0.25, 0.5 , 0.75, 1.  ])
		>>> np.histogram_bin_edges(arr, bins=2)
		array([0. , 2.5, 5. ])
		
		For consistency with histogram, an array of pre-computed bins is
		passed through unmodified:
		
		>>> np.histogram_bin_edges(arr, [1, 2])
		array([1, 2])
		
		This function allows one set of bins to be computed, and reused across
		multiple histograms:
		
		>>> shared_bins = np.histogram_bin_edges(arr, bins='auto')
		>>> shared_bins
		array([0., 1., 2., 3., 4., 5.])
		
		>>> group_id = np.array([0, 1, 1, 0, 1, 1, 0, 1, 1])
		>>> hist_0, _ = np.histogram(arr[group_id == 0], bins=shared_bins)
		>>> hist_1, _ = np.histogram(arr[group_id == 1], bins=shared_bins)
		
		>>> hist_0; hist_1
		array([1, 1, 0, 1, 0])
		array([2, 0, 1, 1, 2])
		
		Which gives more easily comparable results than using separate bins for
		each histogram:
		
		>>> hist_0, bins_0 = np.histogram(arr[group_id == 0], bins='auto')
		>>> hist_1, bins_1 = np.histogram(arr[group_id == 1], bins='auto')
		>>> hist_0; hist_1
		array([1, 1, 1])
		array([2, 1, 1, 2])
		>>> bins_0; bins_1
		array([0., 1., 2., 3.])
		array([0.  , 1.25, 2.5 , 3.75, 5.  ])
	**/
	static public function histogram_bin_edges(a:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Compute the multidimensional histogram of some data.
		
		Parameters
		----------
		sample : (N, D) array, or (D, N) array_like
		    The data to be histogrammed.
		
		    Note the unusual interpretation of sample when an array_like:
		
		    * When an array, each row is a coordinate in a D-dimensional space -
		      such as ``histogramdd(np.array([p1, p2, p3]))``.
		    * When an array_like, each element is the list of values for single
		      coordinate - such as ``histogramdd((X, Y, Z))``.
		
		    The first form should be preferred.
		
		bins : sequence or int, optional
		    The bin specification:
		
		    * A sequence of arrays describing the monotonically increasing bin
		      edges along each dimension.
		    * The number of bins for each dimension (nx, ny, ... =bins)
		    * The number of bins for all dimensions (nx=ny=...=bins).
		
		range : sequence, optional
		    A sequence of length D, each an optional (lower, upper) tuple giving
		    the outer bin edges to be used if the edges are not given explicitly in
		    `bins`.
		    An entry of None in the sequence results in the minimum and maximum
		    values being used for the corresponding dimension.
		    The default, None, is equivalent to passing a tuple of D None values.
		density : bool, optional
		    If False, the default, returns the number of samples in each bin.
		    If True, returns the probability *density* function at the bin,
		    ``bin_count / sample_count / bin_volume``.
		normed : bool, optional
		    An alias for the density argument that behaves identically. To avoid
		    confusion with the broken normed argument to `histogram`, `density`
		    should be preferred.
		weights : (N,) array_like, optional
		    An array of values `w_i` weighing each sample `(x_i, y_i, z_i, ...)`.
		    Weights are normalized to 1 if normed is True. If normed is False,
		    the values of the returned histogram are equal to the sum of the
		    weights belonging to the samples falling into each bin.
		
		Returns
		-------
		H : ndarray
		    The multidimensional histogram of sample x. See normed and weights
		    for the different possible semantics.
		edges : list
		    A list of D arrays describing the bin edges for each dimension.
		
		See Also
		--------
		histogram: 1-D histogram
		histogram2d: 2-D histogram
		
		Examples
		--------
		>>> r = np.random.randn(100,3)
		>>> H, edges = np.histogramdd(r, bins = (5, 8, 4))
		>>> H.shape, edges[0].size, edges[1].size, edges[2].size
		((5, 8, 4), 6, 9, 5)
	**/
	static public function histogramdd(sample:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):numpy.Ndarray;
}