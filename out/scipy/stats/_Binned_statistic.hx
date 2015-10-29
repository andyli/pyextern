/* This file is generated, do not edit! */
package scipy.stats;
@:pythonImport("scipy.stats._binned_statistic") extern class _Binned_statistic {
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
		Compute a binned statistic for a set of data.
		
		This is a generalization of a histogram function.  A histogram divides
		the space into bins, and returns the count of the number of points in
		each bin.  This function allows the computation of the sum, mean, median,
		or other statistic of the values within each bin.
		
		Parameters
		----------
		x : array_like
		    A sequence of values to be binned.
		values : array_like
		    The values on which the statistic will be computed.  This must be
		    the same shape as `x`.
		statistic : string or callable, optional
		    The statistic to compute (default is 'mean').
		    The following statistics are available:
		
		      * 'mean' : compute the mean of values for points within each bin.
		        Empty bins will be represented by NaN.
		      * 'median' : compute the median of values for points within each
		        bin. Empty bins will be represented by NaN.
		      * 'count' : compute the count of points within each bin.  This is
		        identical to an unweighted histogram.  `values` array is not
		        referenced.
		      * 'sum' : compute the sum of values for points within each bin.
		        This is identical to a weighted histogram.
		      * function : a user-defined function which takes a 1D array of
		        values, and outputs a single numerical statistic. This function
		        will be called on the values in each bin.  Empty bins will be
		        represented by function([]), or NaN if this returns an error.
		
		bins : int or sequence of scalars, optional
		    If `bins` is an int, it defines the number of equal-width bins in the
		    given range (10 by default).  If `bins` is a sequence, it defines the
		    bin edges, including the rightmost edge, allowing for non-uniform bin
		    widths.  Values in `x` that are smaller than lowest bin edge are
		    assigned to bin number 0, values beyond the highest bin are assigned to
		    ``bins[-1]``.
		range : (float, float) or [(float, float)], optional
		    The lower and upper range of the bins.  If not provided, range
		    is simply ``(x.min(), x.max())``.  Values outside the range are
		    ignored.
		
		Returns
		-------
		statistic : array
		    The values of the selected statistic in each bin.
		bin_edges : array of dtype float
		    Return the bin edges ``(length(statistic)+1)``.
		binnumber : 1-D ndarray of ints
		    This assigns to each observation an integer that represents the bin
		    in which this observation falls. Array has the same length as values.
		
		See Also
		--------
		numpy.histogram, binned_statistic_2d, binned_statistic_dd
		
		Notes
		-----
		All but the last (righthand-most) bin is half-open.  In other words, if
		`bins` is ``[1, 2, 3, 4]``, then the first bin is ``[1, 2)`` (including 1,
		but excluding 2) and the second ``[2, 3)``.  The last bin, however, is
		``[3, 4]``, which *includes* 4.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		First a basic example:
		
		>>> stats.binned_statistic([1, 2, 1, 2, 4], np.arange(5), statistic='mean',
		...                        bins=3)
		(array([ 1.,  2.,  4.]), array([ 1.,  2.,  3.,  4.]), array([1, 2, 1, 2, 3]))
		
		As a second example, we now generate some random data of sailing boat speed
		as a function of wind speed, and then determine how fast our boat is for
		certain wind speeds:
		
		>>> windspeed = 8 * np.random.rand(500)
		>>> boatspeed = .3 * windspeed**.5 + .2 * np.random.rand(500)
		>>> bin_means, bin_edges, binnumber = stats.binned_statistic(windspeed,
		...                 boatspeed, statistic='median', bins=[1,2,3,4,5,6,7])
		>>> plt.figure()
		>>> plt.plot(windspeed, boatspeed, 'b.', label='raw data')
		>>> plt.hlines(bin_means, bin_edges[:-1], bin_edges[1:], colors='g', lw=5,
		...            label='binned statistic of data')
		>>> plt.legend()
		
		Now we can use ``binnumber`` to select all datapoints with a windspeed
		below 1:
		
		>>> low_boatspeed = boatspeed[binnumber == 0]
		
		As a final example, we will use ``bin_edges`` and ``binnumber`` to make a
		plot of a distribution that shows the mean and distribution around that
		mean per bin, on top of a regular histogram and the probability
		distribution function:
		
		>>> x = np.linspace(0, 5, num=500)
		>>> x_pdf = stats.maxwell.pdf(x)
		>>> samples = stats.maxwell.rvs(size=10000)
		
		>>> bin_means, bin_edges, binnumber = stats.binned_statistic(x, x_pdf,
		...         statistic='mean', bins=25)
		>>> bin_width = (bin_edges[1] - bin_edges[0])
		>>> bin_centers = bin_edges[1:] - bin_width/2
		
		>>> plt.figure()
		>>> plt.hist(samples, bins=50, normed=True, histtype='stepfilled', alpha=0.2,
		...          label='histogram of data')
		>>> plt.plot(x, x_pdf, 'r-', label='analytical pdf')
		>>> plt.hlines(bin_means, bin_edges[:-1], bin_edges[1:], colors='g', lw=2,
		...            label='binned statistic of data')
		>>> plt.plot((binnumber - 0.5) * bin_width, x_pdf, 'g.', alpha=0.5)
		>>> plt.legend(fontsize=10)
		>>> plt.show()
	**/
	static public function binned_statistic(x:Dynamic, values:Dynamic, ?statistic:Dynamic, ?bins:Dynamic, ?range:Dynamic):Dynamic;
	/**
		Compute a bidimensional binned statistic for a set of data.
		
		This is a generalization of a histogram2d function.  A histogram divides
		the space into bins, and returns the count of the number of points in
		each bin.  This function allows the computation of the sum, mean, median,
		or other statistic of the values within each bin.
		
		Parameters
		----------
		x : (N,) array_like
		    A sequence of values to be binned along the first dimension.
		y : (M,) array_like
		    A sequence of values to be binned along the second dimension.
		values : (N,) array_like
		    The values on which the statistic will be computed.  This must be
		    the same shape as `x`.
		statistic : string or callable, optional
		    The statistic to compute (default is 'mean').
		    The following statistics are available:
		
		      * 'mean' : compute the mean of values for points within each bin.
		        Empty bins will be represented by NaN.
		      * 'median' : compute the median of values for points within each
		        bin. Empty bins will be represented by NaN.
		      * 'count' : compute the count of points within each bin.  This is
		        identical to an unweighted histogram.  `values` array is not
		        referenced.
		      * 'sum' : compute the sum of values for points within each bin.
		        This is identical to a weighted histogram.
		      * function : a user-defined function which takes a 1D array of
		        values, and outputs a single numerical statistic. This function
		        will be called on the values in each bin.  Empty bins will be
		        represented by function([]), or NaN if this returns an error.
		
		bins : int or [int, int] or array_like or [array, array], optional
		    The bin specification:
		
		      * the number of bins for the two dimensions (nx=ny=bins),
		      * the number of bins in each dimension (nx, ny = bins),
		      * the bin edges for the two dimensions (x_edges = y_edges = bins),
		      * the bin edges in each dimension (x_edges, y_edges = bins).
		
		range : (2,2) array_like, optional
		    The leftmost and rightmost edges of the bins along each dimension
		    (if not specified explicitly in the `bins` parameters):
		    [[xmin, xmax], [ymin, ymax]]. All values outside of this range will be
		    considered outliers and not tallied in the histogram.
		
		Returns
		-------
		statistic : (nx, ny) ndarray
		    The values of the selected statistic in each two-dimensional bin
		x_edges : (nx + 1) ndarray
		    The bin edges along the first dimension.
		y_edges : (ny + 1) ndarray
		    The bin edges along the second dimension.
		binnumber : 1-D ndarray of ints
		    This assigns to each observation an integer that represents the bin
		    in which this observation falls. Array has the same length as `values`.
		
		See Also
		--------
		numpy.histogram2d, binned_statistic, binned_statistic_dd
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
	**/
	static public function binned_statistic_2d(x:Dynamic, y:Dynamic, values:Dynamic, ?statistic:Dynamic, ?bins:Dynamic, ?range:Dynamic):Dynamic;
	/**
		Compute a multidimensional binned statistic for a set of data.
		
		This is a generalization of a histogramdd function.  A histogram divides
		the space into bins, and returns the count of the number of points in
		each bin.  This function allows the computation of the sum, mean, median,
		or other statistic of the values within each bin.
		
		Parameters
		----------
		sample : array_like
		    Data to histogram passed as a sequence of D arrays of length N, or
		    as an (N,D) array.
		values : array_like
		    The values on which the statistic will be computed.  This must be
		    the same shape as x.
		statistic : string or callable, optional
		    The statistic to compute (default is 'mean').
		    The following statistics are available:
		
		      * 'mean' : compute the mean of values for points within each bin.
		        Empty bins will be represented by NaN.
		      * 'median' : compute the median of values for points within each
		        bin. Empty bins will be represented by NaN.
		      * 'count' : compute the count of points within each bin.  This is
		        identical to an unweighted histogram.  `values` array is not
		        referenced.
		      * 'sum' : compute the sum of values for points within each bin.
		        This is identical to a weighted histogram.
		      * function : a user-defined function which takes a 1D array of
		        values, and outputs a single numerical statistic. This function
		        will be called on the values in each bin.  Empty bins will be
		        represented by function([]), or NaN if this returns an error.
		
		bins : sequence or int, optional
		    The bin specification:
		
		      * A sequence of arrays describing the bin edges along each dimension.
		      * The number of bins for each dimension (nx, ny, ... =bins)
		      * The number of bins for all dimensions (nx=ny=...=bins).
		
		range : sequence, optional
		    A sequence of lower and upper bin edges to be used if the edges are
		    not given explicitely in `bins`. Defaults to the minimum and maximum
		    values along each dimension.
		
		Returns
		-------
		statistic : ndarray, shape(nx1, nx2, nx3,...)
		    The values of the selected statistic in each two-dimensional bin
		bin_edges : list of ndarrays
		    A list of D arrays describing the (nxi + 1) bin edges for each
		    dimension
		binnumber : 1-D ndarray of ints
		    This assigns to each observation an integer that represents the bin
		    in which this observation falls. Array has the same length as values.
		
		See Also
		--------
		np.histogramdd, binned_statistic, binned_statistic_2d
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
	**/
	static public function binned_statistic_dd(sample:Dynamic, values:Dynamic, ?statistic:Dynamic, ?bins:Dynamic, ?range:Dynamic):Dynamic;
	static public function callable(obj:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessable by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}