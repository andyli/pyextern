/* This file is generated, do not edit! */
package scipy.stats.mstats_basic;
@:pythonImport("scipy.stats.mstats_basic") extern class Mstats_basic_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _betai(a:Dynamic, b:Dynamic, x:Dynamic):Dynamic;
	static public function _chk2_asarray(a:Dynamic, b:Dynamic, axis:Dynamic):Dynamic;
	static public function _chk_asarray(a:Dynamic, axis:Dynamic):Dynamic;
	static public function _chk_size(a:Dynamic, b:Dynamic):Dynamic;
	static public function _find_repeats(arr:Dynamic):Dynamic;
	/**
		Mask an array for values outside of given limits.
		
		This is primarily a utility function.
		
		Parameters
		----------
		a : array
		limits : (float or None, float or None)
		A tuple consisting of the (lower limit, upper limit).  Values in the
		input array less than the lower limit or greater than the upper limit
		will be masked out. None implies no limit.
		inclusive : (bool, bool)
		A tuple consisting of the (lower flag, upper flag).  These flags
		determine whether values exactly equal to lower or upper are allowed.
		
		Returns
		-------
		A MaskedArray.
		
		Raises
		------
		A ValueError if there are no values within the given limits.
	**/
	static public function _mask_to_limits(a:Dynamic, limits:Dynamic, inclusive:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Constructs a 2D array from a group of sequences.
		
		Sequences are filled with missing values to match the length of the longest
		sequence.
		
		Parameters
		----------
		args : sequences
		    Group of sequences.
		
		Returns
		-------
		argstoarray : MaskedArray
		    A ( `m` x `n` ) masked array, where `m` is the number of arguments and
		    `n` the length of the longest argument.
		
		Notes
		-----
		`numpy.ma.row_stack` has identical behavior, but is called with a sequence
		of sequences.
	**/
	static public function argstoarray(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Computes the Brunner-Munzel test on samples x and y
		
		Missing values in `x` and/or `y` are discarded.
		
		Parameters
		----------
		x, y : array_like
		    Array of samples, should be one-dimensional.
		alternative :  'less', 'two-sided', or 'greater', optional
		    Whether to get the p-value for the one-sided hypothesis ('less'
		    or 'greater') or for the two-sided hypothesis ('two-sided').
		    Defaults value is 'two-sided' .
		distribution: 't' or 'normal', optional
		    Whether to get the p-value by t-distribution or by standard normal
		    distribution.
		    Defaults value is 't' .
		
		Returns
		-------
		statistic : float
		    The Brunner-Munzer W statistic.
		pvalue : float
		    p-value assuming an t distribution. One-sided or
		    two-sided, depending on the choice of `alternative` and `distribution`.
		
		See Also
		--------
		mannwhitneyu : Mann-Whitney rank test on two samples.
		
		Notes
		-------
		For more details on `brunnermunzel`, see `stats.brunnermunzel`.
	**/
	static public function brunnermunzel(x:Dynamic, y:Dynamic, ?alternative:Dynamic, ?distribution:Dynamic):Float;
	/**
		Counts the number of tied values.
		
		Parameters
		----------
		x : sequence
		    Sequence of data on which to counts the ties
		use_missing : bool, optional
		    Whether to consider missing values as tied.
		
		Returns
		-------
		count_tied_groups : dict
		    Returns a dictionary (nb of ties: nb of groups).
		
		Examples
		--------
		>>> from scipy.stats import mstats
		>>> z = [0, 0, 0, 2, 2, 2, 3, 3, 4, 5, 6]
		>>> mstats.count_tied_groups(z)
		{2: 1, 3: 2}
		
		In the above example, the ties were 0 (3x), 2 (3x) and 3 (2x).
		
		>>> z = np.ma.array([0, 0, 1, 2, 2, 2, 3, 3, 4, 5, 6])
		>>> mstats.count_tied_groups(z)
		{2: 2, 3: 1}
		>>> z[[1,-1]] = np.ma.masked
		>>> mstats.count_tied_groups(z, use_missing=True)
		{2: 2, 3: 1}
	**/
	static public function count_tied_groups(x:Dynamic, ?use_missing:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Computes several descriptive statistics of the passed array.
		
		Parameters
		----------
		a : array_like
		    Data array
		axis : int or None, optional
		    Axis along which to calculate statistics. Default 0. If None,
		    compute over the whole array `a`.
		ddof : int, optional
		    degree of freedom (default 0); note that default ddof is different
		    from the same routine in stats.describe
		bias : bool, optional
		    If False, then the skewness and kurtosis calculations are corrected for
		    statistical bias.
		
		Returns
		-------
		nobs : int
		    (size of the data (discarding missing values)
		
		minmax : (int, int)
		    min, max
		
		mean : float
		    arithmetic mean
		
		variance : float
		    unbiased variance
		
		skewness : float
		    biased skewness
		
		kurtosis : float
		    biased kurtosis
		
		Examples
		--------
		>>> from scipy.stats.mstats import describe
		>>> ma = np.ma.array(range(6), mask=[0, 0, 0, 1, 1, 1])
		>>> describe(ma)
		DescribeResult(nobs=3, minmax=(masked_array(data=0,
		             mask=False,
		       fill_value=999999), masked_array(data=2,
		             mask=False,
		       fill_value=999999)), mean=1.0, variance=0.6666666666666666,
		       skewness=masked_array(data=0., mask=False, fill_value=1e+20),
		        kurtosis=-1.5)
	**/
	static public function describe(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?bias:Dynamic):Int;
	static public var division : Dynamic;
	/**
		Performs a 1-way ANOVA, returning an F-value and probability given
		any number of groups.  From Heiman, pp.394-7.
		
		Usage: ``f_oneway(*args)``, where ``*args`` is 2 or more arrays,
		one per treatment group.
		
		Returns
		-------
		statistic : float
		    The computed F-value of the test.
		pvalue : float
		    The associated p-value from the F-distribution.
	**/
	static public function f_oneway(?args:python.VarArgs<Dynamic>):Float;
	/**
		Find repeats in arr and return a tuple (repeats, repeat_count).
		
		The input is cast to float64. Masked values are discarded.
		
		Parameters
		----------
		arr : sequence
		    Input array. The array is flattened if it is not 1D.
		
		Returns
		-------
		repeats : ndarray
		    Array of repeated values.
		counts : ndarray
		    Array of counts.
	**/
	static public function find_repeats(arr:Dynamic):Dynamic;
	/**
		Friedman Chi-Square is a non-parametric, one-way within-subjects ANOVA.
		This function calculates the Friedman Chi-square test for repeated measures
		and returns the result, along with the associated probability value.
		
		Each input is considered a given group. Ideally, the number of treatments
		among each group should be equal. If this is not the case, only the first
		n treatments are taken into account, where n is the number of treatments
		of the smallest group.
		If a group has some missing values, the corresponding treatments are masked
		in the other groups.
		The test statistic is corrected for ties.
		
		Masked values in one group are propagated to the other groups.
		
		Returns
		-------
		statistic : float
		    the test statistic.
		pvalue : float
		    the associated p-value.
	**/
	static public function friedmanchisquare(?args:python.VarArgs<Dynamic>):Float;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic):Dynamic;
	/**
		Computes Kendall's rank correlation tau on two variables *x* and *y*.
		
		Parameters
		----------
		x : sequence
		    First data list (for example, time).
		y : sequence
		    Second data list.
		use_ties : {True, False}, optional
		    Whether ties correction should be performed.
		use_missing : {False, True}, optional
		    Whether missing data should be allocated a rank of 0 (False) or the
		    average rank (True)
		method: {'auto', 'asymptotic', 'exact'}, optional
		    Defines which method is used to calculate the p-value [1]_.
		    'asymptotic' uses a normal approximation valid for large samples.
		    'exact' computes the exact p-value, but can only be used if no ties
		    are present. 'auto' is the default and selects the appropriate
		    method based on a trade-off between speed and accuracy.
		
		Returns
		-------
		correlation : float
		    Kendall tau
		pvalue : float
		    Approximate 2-side p-value.
		
		References
		----------
		.. [1] Maurice G. Kendall, "Rank Correlation Methods" (4th Edition),
		       Charles Griffin & Co., 1970.
	**/
	static public function kendalltau(x:Dynamic, y:Dynamic, ?use_ties:Dynamic, ?use_missing:Dynamic, ?method:Dynamic):Float;
	/**
		Computes a multivariate Kendall's rank correlation tau, for seasonal data.
		
		Parameters
		----------
		x : 2-D ndarray
		    Array of seasonal data, with seasons in columns.
	**/
	static public function kendalltau_seasonal(x:Dynamic):Dynamic;
	/**
		Compute the Kruskal-Wallis H-test for independent samples
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		   Two or more arrays with the sample measurements can be given as
		   arguments.
		
		Returns
		-------
		statistic : float
		   The Kruskal-Wallis H statistic, corrected for ties
		pvalue : float
		   The p-value for the test using the assumption that H has a chi
		   square distribution
		
		Notes
		-----
		For more details on `kruskal`, see `stats.kruskal`.
		
		Examples
		--------
		>>> from scipy.stats.mstats import kruskal
		
		Random samples from three different brands of batteries were tested
		to see how long the charge lasted. Results were as follows:
		
		>>> a = [6.3, 5.4, 5.7, 5.2, 5.0]
		>>> b = [6.9, 7.0, 6.1, 7.9]
		>>> c = [7.2, 6.9, 6.1, 6.5]
		
		Test the hypotesis that the distribution functions for all of the brands'
		durations are identical. Use 5% level of significance.
		
		>>> kruskal(a, b, c)
		KruskalResult(statistic=7.113812154696133, pvalue=0.028526948491942164)
		
		The null hypothesis is rejected at the 5% level of significance
		because the returned p-value is less than the critical value of 5%.
	**/
	static public function kruskal(?args:python.VarArgs<Dynamic>):Float;
	/**
		Compute the Kruskal-Wallis H-test for independent samples
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		   Two or more arrays with the sample measurements can be given as
		   arguments.
		
		Returns
		-------
		statistic : float
		   The Kruskal-Wallis H statistic, corrected for ties
		pvalue : float
		   The p-value for the test using the assumption that H has a chi
		   square distribution
		
		Notes
		-----
		For more details on `kruskal`, see `stats.kruskal`.
		
		Examples
		--------
		>>> from scipy.stats.mstats import kruskal
		
		Random samples from three different brands of batteries were tested
		to see how long the charge lasted. Results were as follows:
		
		>>> a = [6.3, 5.4, 5.7, 5.2, 5.0]
		>>> b = [6.9, 7.0, 6.1, 7.9]
		>>> c = [7.2, 6.9, 6.1, 6.5]
		
		Test the hypotesis that the distribution functions for all of the brands'
		durations are identical. Use 5% level of significance.
		
		>>> kruskal(a, b, c)
		KruskalResult(statistic=7.113812154696133, pvalue=0.028526948491942164)
		
		The null hypothesis is rejected at the 5% level of significance
		because the returned p-value is less than the critical value of 5%.
	**/
	static public function kruskalwallis(?args:python.VarArgs<Dynamic>):Float;
	/**
		Computes the Kolmogorov-Smirnov test on two samples.
		
		Missing values are discarded.
		
		Parameters
		----------
		data1 : array_like
		    First data set
		data2 : array_like
		    Second data set
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Indicates the alternative hypothesis.  Default is 'two-sided'.
		
		Returns
		-------
		d : float
		    Value of the Kolmogorov Smirnov test
		p : float
		    Corresponding p-value.
	**/
	static public function ks_2samp(data1:Dynamic, data2:Dynamic, ?alternative:Dynamic):Float;
	/**
		Computes the Kolmogorov-Smirnov test on two samples.
		
		Missing values are discarded.
		
		Parameters
		----------
		data1 : array_like
		    First data set
		data2 : array_like
		    Second data set
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Indicates the alternative hypothesis.  Default is 'two-sided'.
		
		Returns
		-------
		d : float
		    Value of the Kolmogorov Smirnov test
		p : float
		    Corresponding p-value.
	**/
	static public function ks_twosamp(data1:Dynamic, data2:Dynamic, ?alternative:Dynamic):Float;
	/**
		Computes the kurtosis (Fisher or Pearson) of a dataset.
		
		Kurtosis is the fourth central moment divided by the square of the
		variance. If Fisher's definition is used, then 3.0 is subtracted from
		the result to give 0.0 for a normal distribution.
		
		If bias is False then the kurtosis is calculated using k statistics to
		eliminate bias coming from biased moment estimators
		
		Use `kurtosistest` to see if result is close enough to normal.
		
		Parameters
		----------
		a : array
		    data for which the kurtosis is calculated
		axis : int or None, optional
		    Axis along which the kurtosis is calculated. Default is 0.
		    If None, compute over the whole array `a`.
		fisher : bool, optional
		    If True, Fisher's definition is used (normal ==> 0.0). If False,
		    Pearson's definition is used (normal ==> 3.0).
		bias : bool, optional
		    If False, then the calculations are corrected for statistical bias.
		
		Returns
		-------
		kurtosis : array
		    The kurtosis of values along an axis. If all values are equal,
		    return -3 for Fisher's definition and 0 for Pearson's definition.
		
		Notes
		-----
		For more details about `kurtosis`, see `stats.kurtosis`.
	**/
	static public function kurtosis(a:Dynamic, ?axis:Dynamic, ?fisher:Dynamic, ?bias:Dynamic):Array<Dynamic>;
	/**
		Tests whether a dataset has normal kurtosis
		
		Parameters
		----------
		a : array
		    array of the sample data
		axis : int or None, optional
		   Axis along which to compute test. Default is 0. If None,
		   compute over the whole array `a`.
		
		Returns
		-------
		statistic : float
		    The computed z-score for this test.
		pvalue : float
		    The 2-sided p-value for the hypothesis test
		
		Notes
		-----
		For more details about `kurtosistest`, see `stats.kurtosistest`.
	**/
	static public function kurtosistest(a:Dynamic, ?axis:Dynamic):Float;
	/**
		Linear regression calculation
		
		Note that the non-masked version is used, and that this docstring is
		replaced by the non-masked docstring + some info on missing data.
	**/
	static public function linregress(x:Dynamic, ?y:Dynamic):Dynamic;
	/**
		Computes the Mann-Whitney statistic
		
		Missing values in `x` and/or `y` are discarded.
		
		Parameters
		----------
		x : sequence
		    Input
		y : sequence
		    Input
		use_continuity : {True, False}, optional
		    Whether a continuity correction (1/2.) should be taken into account.
		
		Returns
		-------
		statistic : float
		    The Mann-Whitney statistics
		pvalue : float
		    Approximate p-value assuming a normal distribution.
	**/
	static public function mannwhitneyu(x:Dynamic, y:Dynamic, ?use_continuity:Dynamic):Float;
	static public var masked : Dynamic;
	/**
		Returns plotting positions (or empirical percentile points) for the data.
		
		Plotting positions are defined as ``(i-alpha)/(n+1-alpha-beta)``, where:
		    - i is the rank order statistics
		    - n is the number of unmasked values along the given axis
		    - `alpha` and `beta` are two parameters.
		
		Typical values for `alpha` and `beta` are:
		    - (0,1)    : ``p(k) = k/n``, linear interpolation of cdf (R, type 4)
		    - (.5,.5)  : ``p(k) = (k-1/2.)/n``, piecewise linear function
		      (R, type 5)
		    - (0,0)    : ``p(k) = k/(n+1)``, Weibull (R type 6)
		    - (1,1)    : ``p(k) = (k-1)/(n-1)``, in this case,
		      ``p(k) = mode[F(x[k])]``. That's R default (R type 7)
		    - (1/3,1/3): ``p(k) = (k-1/3)/(n+1/3)``, then
		      ``p(k) ~ median[F(x[k])]``.
		      The resulting quantile estimates are approximately median-unbiased
		      regardless of the distribution of x. (R type 8)
		    - (3/8,3/8): ``p(k) = (k-3/8)/(n+1/4)``, Blom.
		      The resulting quantile estimates are approximately unbiased
		      if x is normally distributed (R type 9)
		    - (.4,.4)  : approximately quantile unbiased (Cunnane)
		    - (.35,.35): APL, used with PWM
		    - (.3175, .3175): used in scipy.stats.probplot
		
		Parameters
		----------
		data : array_like
		    Input data, as a sequence or array of dimension at most 2.
		alpha : float, optional
		    Plotting positions parameter. Default is 0.4.
		beta : float, optional
		    Plotting positions parameter. Default is 0.4.
		
		Returns
		-------
		positions : MaskedArray
		    The calculated plotting positions.
	**/
	static public function meppf(data:Dynamic, ?alpha:Dynamic, ?beta:Dynamic):Dynamic;
	/**
		Returns an array of the modal (most common) value in the passed array.
		
		Parameters
		----------
		a : array_like
		    n-dimensional array of which to find mode(s).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		
		Returns
		-------
		mode : ndarray
		    Array of modal values.
		count : ndarray
		    Array of counts for each mode.
		
		Notes
		-----
		For more details, see `stats.mode`.
		
		Examples
		--------
		>>> from scipy import stats
		>>> from scipy.stats import mstats
		>>> m_arr = np.ma.array([1, 1, 0, 0, 0, 0], mask=[0, 0, 1, 1, 1, 0])
		>>> stats.mode(m_arr)
		ModeResult(mode=array([0]), count=array([4]))
		>>> mstats.mode(m_arr)
		ModeResult(mode=array([1.]), count=array([2.]))
	**/
	static public function mode(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Calculates the nth moment about the mean for a sample.
		
		Parameters
		----------
		a : array_like
		   data
		moment : int, optional
		   order of central moment that is returned
		axis : int or None, optional
		   Axis along which the central moment is computed. Default is 0.
		   If None, compute over the whole array `a`.
		
		Returns
		-------
		n-th central moment : ndarray or float
		   The appropriate moment along the given axis or over all values if axis
		   is None. The denominator for the moment calculation is the number of
		   observations, no degrees of freedom correction is done.
		
		Notes
		-----
		For more details about `moment`, see `stats.moment`.
	**/
	static public function moment(a:Dynamic, ?moment:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes empirical quantiles for a data array.
		
		Samples quantile are defined by ``Q(p) = (1-gamma)*x[j] + gamma*x[j+1]``,
		where ``x[j]`` is the j-th order statistic, and gamma is a function of
		``j = floor(n*p + m)``, ``m = alphap + p*(1 - alphap - betap)`` and
		``g = n*p + m - j``.
		
		Reinterpreting the above equations to compare to **R** lead to the
		equation: ``p(k) = (k - alphap)/(n + 1 - alphap - betap)``
		
		Typical values of (alphap,betap) are:
		    - (0,1)    : ``p(k) = k/n`` : linear interpolation of cdf
		      (**R** type 4)
		    - (.5,.5)  : ``p(k) = (k - 1/2.)/n`` : piecewise linear function
		      (**R** type 5)
		    - (0,0)    : ``p(k) = k/(n+1)`` :
		      (**R** type 6)
		    - (1,1)    : ``p(k) = (k-1)/(n-1)``: p(k) = mode[F(x[k])].
		      (**R** type 7, **R** default)
		    - (1/3,1/3): ``p(k) = (k-1/3)/(n+1/3)``: Then p(k) ~ median[F(x[k])].
		      The resulting quantile estimates are approximately median-unbiased
		      regardless of the distribution of x.
		      (**R** type 8)
		    - (3/8,3/8): ``p(k) = (k-3/8)/(n+1/4)``: Blom.
		      The resulting quantile estimates are approximately unbiased
		      if x is normally distributed
		      (**R** type 9)
		    - (.4,.4)  : approximately quantile unbiased (Cunnane)
		    - (.35,.35): APL, used with PWM
		
		Parameters
		----------
		a : array_like
		    Input data, as a sequence or array of dimension at most 2.
		prob : array_like, optional
		    List of quantiles to compute.
		alphap : float, optional
		    Plotting positions parameter, default is 0.4.
		betap : float, optional
		    Plotting positions parameter, default is 0.4.
		axis : int, optional
		    Axis along which to perform the trimming.
		    If None (default), the input array is first flattened.
		limit : tuple, optional
		    Tuple of (lower, upper) values.
		    Values of `a` outside this open interval are ignored.
		
		Returns
		-------
		mquantiles : MaskedArray
		    An array containing the calculated quantiles.
		
		Notes
		-----
		This formulation is very similar to **R** except the calculation of
		``m`` from ``alphap`` and ``betap``, where in **R** ``m`` is defined
		with each type.
		
		References
		----------
		.. [1] *R* statistical software: http://www.r-project.org/
		.. [2] *R* ``quantile`` function:
		        http://stat.ethz.ch/R-manual/R-devel/library/stats/html/quantile.html
		
		Examples
		--------
		>>> from scipy.stats.mstats import mquantiles
		>>> a = np.array([6., 47., 49., 15., 42., 41., 7., 39., 43., 40., 36.])
		>>> mquantiles(a)
		array([ 19.2,  40. ,  42.8])
		
		Using a 2D array, specifying axis and limit.
		
		>>> data = np.array([[   6.,    7.,    1.],
		...                  [  47.,   15.,    2.],
		...                  [  49.,   36.,    3.],
		...                  [  15.,   39.,    4.],
		...                  [  42.,   40., -999.],
		...                  [  41.,   41., -999.],
		...                  [   7., -999., -999.],
		...                  [  39., -999., -999.],
		...                  [  43., -999., -999.],
		...                  [  40., -999., -999.],
		...                  [  36., -999., -999.]])
		>>> print(mquantiles(data, axis=0, limit=(0, 50)))
		[[19.2  14.6   1.45]
		 [40.   37.5   2.5 ]
		 [42.8  40.05  3.55]]
		
		>>> data[:, 2] = -999.
		>>> print(mquantiles(data, axis=0, limit=(0, 50)))
		[[19.200000000000003 14.6 --]
		 [40.0 37.5 --]
		 [42.800000000000004 40.05 --]]
	**/
	static public function mquantiles(a:Dynamic, ?prob:Dynamic, ?alphap:Dynamic, ?betap:Dynamic, ?axis:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Returns the sign of x, or 0 if x is masked.
	**/
	static public function msign(x:Dynamic):Dynamic;
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
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	static public var nomask : Dynamic;
	/**
		Tests whether a sample differs from a normal distribution.
		
		Parameters
		----------
		a : array_like
		    The array containing the data to be tested.
		axis : int or None, optional
		    Axis along which to compute test. Default is 0. If None,
		    compute over the whole array `a`.
		
		Returns
		-------
		statistic : float or array
		    ``s^2 + k^2``, where ``s`` is the z-score returned by `skewtest` and
		    ``k`` is the z-score returned by `kurtosistest`.
		pvalue : float or array
		   A 2-sided chi squared probability for the hypothesis test.
		
		Notes
		-----
		For more details about `normaltest`, see `stats.normaltest`.
	**/
	static public function normaltest(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes a transform on input data (any number of columns).  Used to
		test for homogeneity of variance prior to running one-way stats.  Each
		array in ``*args`` is one level of a factor.  If an `f_oneway()` run on
		the transformed data and found significant, variances are unequal.   From
		Maxwell and Delaney, p.112.
		
		Returns: transformed data for use in an ANOVA
	**/
	static public function obrientransform(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Calculates a Pearson correlation coefficient and the p-value for testing
		non-correlation.
		
		The Pearson correlation coefficient measures the linear relationship
		between two datasets. Strictly speaking, Pearson's correlation requires
		that each dataset be normally distributed. Like other correlation
		coefficients, this one varies between -1 and +1 with 0 implying no
		correlation. Correlations of -1 or +1 imply an exact linear
		relationship. Positive correlations imply that as `x` increases, so does
		`y`. Negative correlations imply that as `x` increases, `y` decreases.
		
		The p-value roughly indicates the probability of an uncorrelated system
		producing datasets that have a Pearson correlation at least as extreme
		as the one computed from these datasets. The p-values are not entirely
		reliable but are probably reasonable for datasets larger than 500 or so.
		
		Parameters
		----------
		x : 1-D array_like
		    Input
		y : 1-D array_like
		    Input
		
		Returns
		-------
		pearsonr : float
		    Pearson's correlation coefficient, 2-tailed p-value.
		
		References
		----------
		http://www.statsoft.com/textbook/glosp.html#Pearson%20Correlation
	**/
	static public function pearsonr(x:Dynamic, y:Dynamic):Float;
	/**
		Returns plotting positions (or empirical percentile points) for the data.
		
		Plotting positions are defined as ``(i-alpha)/(n+1-alpha-beta)``, where:
		    - i is the rank order statistics
		    - n is the number of unmasked values along the given axis
		    - `alpha` and `beta` are two parameters.
		
		Typical values for `alpha` and `beta` are:
		    - (0,1)    : ``p(k) = k/n``, linear interpolation of cdf (R, type 4)
		    - (.5,.5)  : ``p(k) = (k-1/2.)/n``, piecewise linear function
		      (R, type 5)
		    - (0,0)    : ``p(k) = k/(n+1)``, Weibull (R type 6)
		    - (1,1)    : ``p(k) = (k-1)/(n-1)``, in this case,
		      ``p(k) = mode[F(x[k])]``. That's R default (R type 7)
		    - (1/3,1/3): ``p(k) = (k-1/3)/(n+1/3)``, then
		      ``p(k) ~ median[F(x[k])]``.
		      The resulting quantile estimates are approximately median-unbiased
		      regardless of the distribution of x. (R type 8)
		    - (3/8,3/8): ``p(k) = (k-3/8)/(n+1/4)``, Blom.
		      The resulting quantile estimates are approximately unbiased
		      if x is normally distributed (R type 9)
		    - (.4,.4)  : approximately quantile unbiased (Cunnane)
		    - (.35,.35): APL, used with PWM
		    - (.3175, .3175): used in scipy.stats.probplot
		
		Parameters
		----------
		data : array_like
		    Input data, as a sequence or array of dimension at most 2.
		alpha : float, optional
		    Plotting positions parameter. Default is 0.4.
		beta : float, optional
		    Plotting positions parameter. Default is 0.4.
		
		Returns
		-------
		positions : MaskedArray
		    The calculated plotting positions.
	**/
	static public function plotting_positions(data:Dynamic, ?alpha:Dynamic, ?beta:Dynamic):Dynamic;
	/**
		Calculates a point biserial correlation coefficient and its p-value.
		
		Parameters
		----------
		x : array_like of bools
		    Input array.
		y : array_like
		    Input array.
		
		Returns
		-------
		correlation : float
		    R value
		pvalue : float
		    2-tailed p-value
		
		Notes
		-----
		Missing values are considered pair-wise: if a value is missing in x,
		the corresponding value in y is masked.
		
		For more details on `pointbiserialr`, see `stats.pointbiserialr`.
	**/
	static public function pointbiserialr(x:Dynamic, y:Dynamic):Float;
	static public var print_function : Dynamic;
	/**
		Returns the rank (also known as order statistics) of each data point
		along the given axis.
		
		If some values are tied, their rank is averaged.
		If some values are masked, their rank is set to 0 if use_missing is False,
		or set to the average rank of the unmasked values if use_missing is True.
		
		Parameters
		----------
		data : sequence
		    Input data. The data is transformed to a masked array
		axis : {None,int}, optional
		    Axis along which to perform the ranking.
		    If None, the array is first flattened. An exception is raised if
		    the axis is specified for arrays with a dimension larger than 2
		use_missing : bool, optional
		    Whether the masked values have a rank of 0 (False) or equal to the
		    average rank of the unmasked values (True).
	**/
	static public function rankdata(data:Dynamic, ?axis:Dynamic, ?use_missing:Dynamic):Dynamic;
	/**
		Calculate the score at the given 'per' percentile of the
		sequence a.  For example, the score at per=50 is the median.
		
		This function is a shortcut to mquantile
	**/
	static public function scoreatpercentile(data:Dynamic, per:Dynamic, ?limit:Dynamic, ?alphap:Dynamic, ?betap:Dynamic):Dynamic;
	/**
		Calculates the standard error of the mean of the input array.
		
		Also sometimes called standard error of measurement.
		
		Parameters
		----------
		a : array_like
		    An array containing the values for which the standard error is
		    returned.
		axis : int or None, optional
		    If axis is None, ravel `a` first. If axis is an integer, this will be
		    the axis over which to operate. Defaults to 0.
		ddof : int, optional
		    Delta degrees-of-freedom. How many degrees of freedom to adjust
		    for bias in limited samples relative to the population estimate
		    of variance. Defaults to 1.
		
		Returns
		-------
		s : ndarray or float
		    The standard error of the mean in the sample(s), along the input axis.
		
		Notes
		-----
		The default value for `ddof` changed in scipy 0.15.0 to be consistent with
		`stats.sem` as well as with the most common definition used (like in the R
		documentation).
		
		Examples
		--------
		Find standard error along the first axis:
		
		>>> from scipy import stats
		>>> a = np.arange(20).reshape(5,4)
		>>> print(stats.mstats.sem(a))
		[2.8284271247461903 2.8284271247461903 2.8284271247461903
		 2.8284271247461903]
		
		Find standard error across the whole array, using n degrees of freedom:
		
		>>> print(stats.mstats.sem(a, axis=None, ddof=0))
		1.2893796958227628
	**/
	static public function sem(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Dynamic;
	static public function sen_seasonal_slopes(x:Dynamic):Dynamic;
	/**
		Computes the Siegel estimator for a set of points (x, y).
		
		`siegelslopes` implements a method for robust linear regression
		using repeated medians to fit a line to the points (x, y).
		The method is robust to outliers with an asymptotic breakdown point
		of 50%.
		
		Parameters
		----------
		y : array_like
		    Dependent variable.
		x : array_like or None, optional
		    Independent variable. If None, use ``arange(len(y))`` instead.
		method : {'hierarchical', 'separate'}
		    If 'hierarchical', estimate the intercept using the estimated
		    slope ``medslope`` (default option).
		    If 'separate', estimate the intercept independent of the estimated
		    slope. See Notes for details.
		
		Returns
		-------
		medslope : float
		    Estimate of the slope of the regression line.
		medintercept : float
		    Estimate of the intercept of the regression line.
		
		See also
		--------
		theilslopes : a similar technique without repeated medians
		
		Notes
		-----
		For more details on `siegelslopes`, see `scipy.stats.siegelslopes`.
	**/
	static public function siegelslopes(y:Dynamic, ?x:Dynamic, ?method:Dynamic):Float;
	/**
		Computes the skewness of a data set.
		
		Parameters
		----------
		a : ndarray
		    data
		axis : int or None, optional
		    Axis along which skewness is calculated. Default is 0.
		    If None, compute over the whole array `a`.
		bias : bool, optional
		    If False, then the calculations are corrected for statistical bias.
		
		Returns
		-------
		skewness : ndarray
		    The skewness of values along an axis, returning 0 where all values are
		    equal.
		
		Notes
		-----
		For more details about `skew`, see `stats.skew`.
	**/
	static public function skew(a:Dynamic, ?axis:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Tests whether the skew is different from the normal distribution.
		
		Parameters
		----------
		a : array
		    The data to be tested
		axis : int or None, optional
		   Axis along which statistics are calculated. Default is 0.
		   If None, compute over the whole array `a`.
		
		Returns
		-------
		statistic : float
		    The computed z-score for this test.
		pvalue : float
		    a 2-sided p-value for the hypothesis test
		
		Notes
		-----
		For more details about `skewtest`, see `stats.skewtest`.
	**/
	static public function skewtest(a:Dynamic, ?axis:Dynamic):Float;
	/**
		Calculates a Spearman rank-order correlation coefficient and the p-value
		to test for non-correlation.
		
		The Spearman correlation is a nonparametric measure of the linear
		relationship between two datasets. Unlike the Pearson correlation, the
		Spearman correlation does not assume that both datasets are normally
		distributed. Like other correlation coefficients, this one varies
		between -1 and +1 with 0 implying no correlation. Correlations of -1 or
		+1 imply a monotonic relationship. Positive correlations imply that
		as `x` increases, so does `y`. Negative correlations imply that as `x`
		increases, `y` decreases.
		
		Missing values are discarded pair-wise: if a value is missing in `x`, the
		corresponding value in `y` is masked.
		
		The p-value roughly indicates the probability of an uncorrelated system
		producing datasets that have a Spearman correlation at least as extreme
		as the one computed from these datasets. The p-values are not entirely
		reliable but are probably reasonable for datasets larger than 500 or so.
		
		Parameters
		----------
		x, y : 1D or 2D array_like, y is optional
		    One or two 1-D or 2-D arrays containing multiple variables and
		    observations. When these are 1-D, each represents a vector of
		    observations of a single variable. For the behavior in the 2-D case,
		    see under ``axis``, below.
		use_ties : bool, optional
		    DO NOT USE.  Does not do anything, keyword is only left in place for
		    backwards compatibility reasons.
		axis : int or None, optional
		    If axis=0 (default), then each column represents a variable, with
		    observations in the rows. If axis=1, the relationship is transposed:
		    each row represents a variable, while the columns contain observations.
		    If axis=None, then both arrays will be raveled.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		correlation : float
		    Spearman correlation coefficient
		pvalue : float
		    2-tailed p-value.
		
		References
		----------
		[CRCProbStat2000] section 14.7
	**/
	static public function spearmanr(x:Dynamic, ?y:Dynamic, ?use_ties:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Calculate a linear least-squares regression for two sets of measurements.
		
		Parameters
		----------
		x, y : array_like
		    Two sets of measurements.  Both arrays should have the same length.  If
		    only `x` is given (and ``y=None``), then it must be a two-dimensional
		    array where one dimension has length 2.  The two sets of measurements
		    are then found by splitting the array along the length-2 dimension.  In
		    the case where ``y=None`` and `x` is a 2x2 array, ``linregress(x)`` is
		    equivalent to ``linregress(x[0], x[1])``.
		
		Returns
		-------
		slope : float
		    Slope of the regression line.
		intercept : float
		    Intercept of the regression line.
		rvalue : float
		    Correlation coefficient.
		pvalue : float
		    Two-sided p-value for a hypothesis test whose null hypothesis is
		    that the slope is zero, using Wald Test with t-distribution of
		    the test statistic.
		stderr : float
		    Standard error of the estimated gradient.
		
		See also
		--------
		:func:`scipy.optimize.curve_fit` : Use non-linear
		 least squares to fit a function to data.
		:func:`scipy.optimize.leastsq` : Minimize the sum of
		 squares of a set of equations.
		
		Notes
		-----
		Missing values are considered pair-wise: if a value is missing in `x`,
		the corresponding value in `y` is masked.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy import stats
		
		Generate some data:
		
		>>> np.random.seed(12345678)
		>>> x = np.random.random(10)
		>>> y = 1.6*x + np.random.random(10)
		
		Perform the linear regression:
		
		>>> slope, intercept, r_value, p_value, std_err = stats.linregress(x, y)
		>>> print("slope: %f    intercept: %f" % (slope, intercept))
		slope: 1.944864    intercept: 0.268578
		
		To get coefficient of determination (R-squared):
		
		>>> print("R-squared: %f" % r_value**2)
		R-squared: 0.735498
		
		Plot the data along with the fitted line:
		
		>>> plt.plot(x, y, 'o', label='original data')
		>>> plt.plot(x, intercept + slope*x, 'r', label='fitted line')
		>>> plt.legend()
		>>> plt.show()
		
		Example for the case where only x is provided as a 2x2 array:
		
		>>> x = np.array([[0, 1], [0, 2]])
		>>> r = stats.linregress(x)
		>>> r.slope, r.intercept
		(2.0, 0.0)
	**/
	static public function stats_linregress(x:Dynamic, ?y:Dynamic):Float;
	/**
		Computes the Siegel estimator for a set of points (x, y).
		
		`siegelslopes` implements a method for robust linear regression
		using repeated medians (see [1]_) to fit a line to the points (x, y).
		The method is robust to outliers with an asymptotic breakdown point
		of 50%.
		
		Parameters
		----------
		y : array_like
		    Dependent variable.
		x : array_like or None, optional
		    Independent variable. If None, use ``arange(len(y))`` instead.
		method : {'hierarchical', 'separate'}
		    If 'hierarchical', estimate the intercept using the estimated
		    slope ``medslope`` (default option).
		    If 'separate', estimate the intercept independent of the estimated
		    slope. See Notes for details.
		
		Returns
		-------
		medslope : float
		    Estimate of the slope of the regression line.
		medintercept : float
		    Estimate of the intercept of the regression line.
		
		See also
		--------
		theilslopes : a similar technique without repeated medians
		
		Notes
		-----
		With ``n = len(y)``, compute ``m_j`` as the median of
		the slopes from the point ``(x[j], y[j])`` to all other `n-1` points.
		``medslope`` is then the median of all slopes ``m_j``.
		Two ways are given to estimate the intercept in [1]_ which can be chosen
		via the parameter ``method``.
		The hierarchical approach uses the estimated slope ``medslope``
		and computes ``medintercept`` as the median of ``y - medslope*x``.
		The other approach estimates the intercept separately as follows: for
		each point ``(x[j], y[j])``, compute the intercepts of all the `n-1`
		lines through the remaining points and take the median ``i_j``.
		``medintercept`` is the median of the ``i_j``.
		
		The implementation computes `n` times the median of a vector of size `n`
		which can be slow for large vectors. There are more efficient algorithms
		(see [2]_) which are not implemented here.
		
		References
		----------
		.. [1] A. Siegel, "Robust Regression Using Repeated Medians",
		       Biometrika, Vol. 69, pp. 242-244, 1982.
		
		.. [2] A. Stein and M. Werman, "Finding the repeated median regression
		       line", Proceedings of the Third Annual ACM-SIAM Symposium on
		       Discrete Algorithms, pp. 409-413, 1992.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-5, 5, num=150)
		>>> y = x + np.random.normal(size=x.size)
		>>> y[11:15] += 10  # add outliers
		>>> y[-5:] -= 7
		
		Compute the slope and intercept.  For comparison, also compute the
		least-squares fit with `linregress`:
		
		>>> res = stats.siegelslopes(y, x)
		>>> lsq_res = stats.linregress(x, y)
		
		Plot the results. The Siegel regression line is shown in red. The green
		line shows the least-squares fit for comparison.
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, y, 'b.')
		>>> ax.plot(x, res[1] + res[0] * x, 'r-')
		>>> ax.plot(x, lsq_res[1] + lsq_res[0] * x, 'g-')
		>>> plt.show()
	**/
	static public function stats_siegelslopes(y:Dynamic, ?x:Dynamic, ?method:Dynamic):Float;
	/**
		Computes the Theil-Sen estimator for a set of points (x, y).
		
		`theilslopes` implements a method for robust linear regression.  It
		computes the slope as the median of all slopes between paired values.
		
		Parameters
		----------
		y : array_like
		    Dependent variable.
		x : array_like or None, optional
		    Independent variable. If None, use ``arange(len(y))`` instead.
		alpha : float, optional
		    Confidence degree between 0 and 1. Default is 95% confidence.
		    Note that `alpha` is symmetric around 0.5, i.e. both 0.1 and 0.9 are
		    interpreted as "find the 90% confidence interval".
		
		Returns
		-------
		medslope : float
		    Theil slope.
		medintercept : float
		    Intercept of the Theil line, as ``median(y) - medslope*median(x)``.
		lo_slope : float
		    Lower bound of the confidence interval on `medslope`.
		up_slope : float
		    Upper bound of the confidence interval on `medslope`.
		
		See also
		--------
		siegelslopes : a similar technique using repeated medians
		
		Notes
		-----
		The implementation of `theilslopes` follows [1]_. The intercept is
		not defined in [1]_, and here it is defined as ``median(y) -
		medslope*median(x)``, which is given in [3]_. Other definitions of
		the intercept exist in the literature. A confidence interval for
		the intercept is not given as this question is not addressed in
		[1]_.
		
		References
		----------
		.. [1] P.K. Sen, "Estimates of the regression coefficient based on Kendall's tau",
		       J. Am. Stat. Assoc., Vol. 63, pp. 1379-1389, 1968.
		.. [2] H. Theil, "A rank-invariant method of linear and polynomial
		       regression analysis I, II and III",  Nederl. Akad. Wetensch., Proc.
		       53:, pp. 386-392, pp. 521-525, pp. 1397-1412, 1950.
		.. [3] W.L. Conover, "Practical nonparametric statistics", 2nd ed.,
		       John Wiley and Sons, New York, pp. 493.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-5, 5, num=150)
		>>> y = x + np.random.normal(size=x.size)
		>>> y[11:15] += 10  # add outliers
		>>> y[-5:] -= 7
		
		Compute the slope, intercept and 90% confidence interval.  For comparison,
		also compute the least-squares fit with `linregress`:
		
		>>> res = stats.theilslopes(y, x, 0.90)
		>>> lsq_res = stats.linregress(x, y)
		
		Plot the results. The Theil-Sen regression line is shown in red, with the
		dashed red lines illustrating the confidence interval of the slope (note
		that the dashed red lines are not the confidence interval of the regression
		as the confidence interval of the intercept is not included). The green
		line shows the least-squares fit for comparison.
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, y, 'b.')
		>>> ax.plot(x, res[1] + res[0] * x, 'r-')
		>>> ax.plot(x, res[1] + res[2] * x, 'r--')
		>>> ax.plot(x, res[1] + res[3] * x, 'r--')
		>>> ax.plot(x, lsq_res[1] + lsq_res[0] * x, 'g-')
		>>> plt.show()
	**/
	static public function stats_theilslopes(y:Dynamic, ?x:Dynamic, ?alpha:Dynamic):Float;
	/**
		Returns the McKean-Schrader estimate of the standard error of the sample
		median along the given axis. masked values are discarded.
		
		Parameters
		----------
		data : ndarray
		    Data to trim.
		axis : {None,int}, optional
		    Axis along which to perform the trimming.
		    If None, the input array is first flattened.
	**/
	static public function stde_median(data:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes the Theil-Sen estimator for a set of points (x, y).
		
		`theilslopes` implements a method for robust linear regression.  It
		computes the slope as the median of all slopes between paired values.
		
		Parameters
		----------
		y : array_like
		    Dependent variable.
		x : array_like or None, optional
		    Independent variable. If None, use ``arange(len(y))`` instead.
		alpha : float, optional
		    Confidence degree between 0 and 1. Default is 95% confidence.
		    Note that `alpha` is symmetric around 0.5, i.e. both 0.1 and 0.9 are
		    interpreted as "find the 90% confidence interval".
		
		Returns
		-------
		medslope : float
		    Theil slope.
		medintercept : float
		    Intercept of the Theil line, as ``median(y) - medslope*median(x)``.
		lo_slope : float
		    Lower bound of the confidence interval on `medslope`.
		up_slope : float
		    Upper bound of the confidence interval on `medslope`.
		
		See also
		--------
		siegelslopes : a similar technique with repeated medians
		
		
		Notes
		-----
		For more details on `theilslopes`, see `stats.theilslopes`.
	**/
	static public function theilslopes(y:Dynamic, ?x:Dynamic, ?alpha:Dynamic):Float;
	/**
		Compute the trimmed maximum
		
		This function computes the maximum value of an array along a given axis,
		while ignoring values larger than a specified upper limit.
		
		Parameters
		----------
		a : array_like
		    array of values
		upperlimit : None or float, optional
		    Values in the input array greater than the given limit will be ignored.
		    When upperlimit is None, then all values are used. The default value
		    is None.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		inclusive : {True, False}, optional
		    This flag determines whether values exactly equal to the upper limit
		    are included.  The default value is True.
		
		Returns
		-------
		tmax : float, int or ndarray
		
		Notes
		-----
		For more details on `tmax`, see `stats.tmax`.
		
		Examples
		--------
		>>> from scipy.stats import mstats
		>>> a = np.array([[6, 8, 3, 0],
		...               [3, 9, 1, 2],
		...               [8, 7, 8, 2],
		...               [5, 6, 0, 2],
		...               [4, 5, 5, 2]])
		...
		...
		>>> mstats.tmax(a, 4)
		masked_array(data=[4, --, 3, 2],
		             mask=[False,  True, False, False],
		       fill_value=999999)
	**/
	static public function tmax(a:Dynamic, ?upperlimit:Dynamic, ?axis:Dynamic, ?inclusive:Dynamic):Dynamic;
	/**
		Compute the trimmed mean.
		
		Parameters
		----------
		a : array_like
		    Array of values.
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored.  When limits is None (default), then all
		    values are used.  Either of the limit values in the tuple can also be
		    None representing a half-open interval.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to operate. If None, compute over the
		    whole array. Default is None.
		
		Returns
		-------
		tmean : float
		
		Notes
		-----
		For more details on `tmean`, see `stats.tmean`.
		
		Examples
		--------
		>>> from scipy.stats import mstats
		>>> a = np.array([[6, 8, 3, 0],
		...               [3, 9, 1, 2],
		...               [8, 7, 8, 2],
		...               [5, 6, 0, 2],
		...               [4, 5, 5, 2]])
		...
		...
		>>> mstats.tmean(a, (2,5))
		3.3
		>>> mstats.tmean(a, (2,5), axis=0)
		masked_array(data=[4.0, 5.0, 4.0, 2.0],
		             mask=[False, False, False, False],
		       fill_value=1e+20)
	**/
	static public function tmean(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic):Float;
	/**
		Compute the trimmed minimum
		
		Parameters
		----------
		a : array_like
		    array of values
		lowerlimit : None or float, optional
		    Values in the input array less than the given limit will be ignored.
		    When lowerlimit is None, then all values are used. The default value
		    is None.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		inclusive : {True, False}, optional
		    This flag determines whether values exactly equal to the lower limit
		    are included.  The default value is True.
		
		Returns
		-------
		tmin : float, int or ndarray
		
		Notes
		-----
		For more details on `tmin`, see `stats.tmin`.
		
		Examples
		--------
		>>> from scipy.stats import mstats
		>>> a = np.array([[6, 8, 3, 0],
		...               [3, 2, 1, 2],
		...               [8, 1, 8, 2],
		...               [5, 3, 0, 2],
		...               [4, 7, 5, 2]])
		...
		>>> mstats.tmin(a, 5)
		masked_array(data=[5, 7, 5, --],
		             mask=[False, False, False,  True],
		       fill_value=999999)
	**/
	static public function tmin(a:Dynamic, ?lowerlimit:Dynamic, ?axis:Dynamic, ?inclusive:Dynamic):Dynamic;
	/**
		Trims an array by masking the data outside some given limits.
		
		Returns a masked version of the input array.
		
		
		Parameters
		----------
		a : sequence
		    Input array
		limits : {None, tuple}, optional
		    If `relative` is False, tuple (lower limit, upper limit) in absolute values.
		    Values of the input array lower (greater) than the lower (upper) limit are
		    masked.
		
		    If `relative` is True, tuple (lower percentage, upper percentage) to cut
		    on each side of the  array, with respect to the number of unmasked data.
		
		    Noting n the number of unmasked data before trimming, the (n*limits[0])th
		    smallest data and the (n*limits[1])th largest data are masked, and the
		    total number of unmasked data after trimming is n*(1.-sum(limits))
		    In each case, the value of one limit can be set to None to indicate an
		    open interval.
		
		    If limits is None, no trimming is performed
		inclusive : {(bool, bool) tuple}, optional
		    If `relative` is False, tuple indicating whether values exactly equal
		    to the absolute limits are allowed.
		    If `relative` is True, tuple indicating whether the number of data
		    being masked on each side should be rounded (True) or truncated
		    (False).
		relative : bool, optional
		    Whether to consider the limits as absolute values (False) or proportions
		    to cut (True).
		axis : int, optional
		    Axis along which to trim.
		
		
		Examples
		--------
		>>> from scipy.stats.mstats import trim
		>>> z = [ 1, 2, 3, 4, 5, 6, 7, 8, 9,10]
		>>> print(trim(z,(3,8)))
		[-- -- 3 4 5 6 7 8 -- --]
		>>> print(trim(z,(0.1,0.2),relative=True))
		[-- 2 3 4 5 6 7 8 -- --]
	**/
	static public function trim(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?relative:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Trims the data by masking values from one tail.
		
		Parameters
		----------
		data : array_like
		    Data to trim.
		proportiontocut : float, optional
		    Percentage of trimming. If n is the number of unmasked values
		    before trimming, the number of values after trimming is
		    ``(1 - proportiontocut) * n``.  Default is 0.2.
		tail : {'left','right'}, optional
		    If 'left' the `proportiontocut` lowest values will be masked.
		    If 'right' the `proportiontocut` highest values will be masked.
		    Default is 'left'.
		inclusive : {(bool, bool) tuple}, optional
		    Tuple indicating whether the number of data being masked on each side
		    should be rounded (True) or truncated (False).  Default is
		    (True, True).
		axis : int, optional
		    Axis along which to perform the trimming.
		    If None, the input array is first flattened.  Default is None.
		
		Returns
		-------
		trimtail : ndarray
		    Returned array of same shape as `data` with masked tail values.
	**/
	static public function trim1(data:Dynamic, ?proportiontocut:Dynamic, ?tail:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Trims an array by masking the data outside some given limits.
		
		Returns a masked version of the input array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		limits : {None, tuple}, optional
		    Tuple of (lower limit, upper limit) in absolute values.
		    Values of the input array lower (greater) than the lower (upper) limit
		    will be masked.  A limit is None indicates an open interval.
		inclusive : (bool, bool) tuple, optional
		    Tuple of (lower flag, upper flag), indicating whether values exactly
		    equal to the lower (upper) limit are allowed.
	**/
	static public function trima(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic):Dynamic;
	/**
		Trims the smallest and largest data values.
		
		Trims the `data` by masking the ``int(proportiontocut * n)`` smallest and
		``int(proportiontocut * n)`` largest values of data along the given axis,
		where n is the number of unmasked values before trimming.
		
		Parameters
		----------
		data : ndarray
		    Data to trim.
		proportiontocut : float, optional
		    Percentage of trimming (as a float between 0 and 1).
		    If n is the number of unmasked values before trimming, the number of
		    values after trimming is ``(1 - 2*proportiontocut) * n``.
		    Default is 0.2.
		inclusive : {(bool, bool) tuple}, optional
		    Tuple indicating whether the number of data being masked on each side
		    should be rounded (True) or truncated (False).
		axis : int, optional
		    Axis along which to perform the trimming.
		    If None, the input array is first flattened.
	**/
	static public function trimboth(data:Dynamic, ?proportiontocut:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic):Dynamic;
	static public var trimdoc : Dynamic;
	static public function trimmed_mean(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?relative:Dynamic, ?axis:Dynamic):Dynamic;
	static public function trimmed_std(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?relative:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		Returns the standard error of the trimmed mean along the given axis.
		
		Parameters
		----------
		a : sequence
		    Input array
		limits : {(0.1,0.1), tuple of float}, optional
		    tuple (lower percentage, upper percentage) to cut  on each side of the
		    array, with respect to the number of unmasked data.
		
		    If n is the number of unmasked data before trimming, the values
		    smaller than ``n * limits[0]`` and the values larger than
		    ``n * `limits[1]`` are masked, and the total number of unmasked
		    data after trimming is ``n * (1.-sum(limits))``.  In each case,
		    the value of one limit can be set to None to indicate an open interval.
		    If `limits` is None, no trimming is performed.
		inclusive : {(bool, bool) tuple} optional
		    Tuple indicating whether the number of data being masked on each side
		    should be rounded (True) or truncated (False).
		axis : int, optional
		    Axis along which to trim.
		
		Returns
		-------
		trimmed_stde : scalar or ndarray
	**/
	static public function trimmed_stde(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic):Dynamic;
	static public function trimmed_var(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?relative:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		Trims an array by masking some proportion of the data on each end.
		Returns a masked version of the input array.
		
		Parameters
		----------
		a : sequence
		    Input array.
		limits : {None, tuple}, optional
		    Tuple of the percentages to cut on each side of the array, with respect
		    to the number of unmasked data, as floats between 0. and 1.
		    Noting n the number of unmasked data before trimming, the
		    (n*limits[0])th smallest data and the (n*limits[1])th largest data are
		    masked, and the total number of unmasked data after trimming is
		    n*(1.-sum(limits)).  The value of one limit can be set to None to
		    indicate an open interval.
		inclusive : {(True,True) tuple}, optional
		    Tuple of flags indicating whether the number of data being masked on
		    the left (right) end should be truncated (True) or rounded (False) to
		    integers.
		axis : {None,int}, optional
		    Axis along which to trim. If None, the whole array is trimmed, but its
		    shape is maintained.
	**/
	static public function trimr(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Trims the data by masking values from one tail.
		
		Parameters
		----------
		data : array_like
		    Data to trim.
		proportiontocut : float, optional
		    Percentage of trimming. If n is the number of unmasked values
		    before trimming, the number of values after trimming is
		    ``(1 - proportiontocut) * n``.  Default is 0.2.
		tail : {'left','right'}, optional
		    If 'left' the `proportiontocut` lowest values will be masked.
		    If 'right' the `proportiontocut` highest values will be masked.
		    Default is 'left'.
		inclusive : {(bool, bool) tuple}, optional
		    Tuple indicating whether the number of data being masked on each side
		    should be rounded (True) or truncated (False).  Default is
		    (True, True).
		axis : int, optional
		    Axis along which to perform the trimming.
		    If None, the input array is first flattened.  Default is None.
		
		Returns
		-------
		trimtail : ndarray
		    Returned array of same shape as `data` with masked tail values.
	**/
	static public function trimtail(data:Dynamic, ?proportiontocut:Dynamic, ?tail:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the trimmed standard error of the mean.
		
		This function finds the standard error of the mean for given
		values, ignoring values outside the given `limits`.
		
		Parameters
		----------
		a : array_like
		    array of values
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored. When limits is None, then all values are
		    used. Either of the limit values in the tuple can also be None
		    representing a half-open interval.  The default value is None.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to operate. If None, compute over the
		    whole array. Default is zero.
		ddof : int, optional
		    Delta degrees of freedom. Default is 1.
		
		Returns
		-------
		tsem : float
		
		Notes
		-----
		For more details on `tsem`, see `stats.tsem`.
	**/
	static public function tsem(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		Calculates the T-test for the mean of ONE group of scores.
		
		Parameters
		----------
		a : array_like
		    sample observation
		popmean : float or array_like
		    expected value in null hypothesis, if array_like than it must have the
		    same shape as `a` excluding the axis dimension
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    array `a`.
		
		Returns
		-------
		statistic : float or array
		    t-statistic
		pvalue : float or array
		    two-tailed p-value
		
		Notes
		-----
		For more details on `ttest_1samp`, see `stats.ttest_1samp`.
	**/
	static public function ttest_1samp(a:Dynamic, popmean:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Calculates the T-test for the means of TWO INDEPENDENT samples of scores.
		
		Parameters
		----------
		a, b : array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    arrays, `a`, and `b`.
		equal_var : bool, optional
		    If True, perform a standard independent 2 sample test that assumes equal
		    population variances.
		    If False, perform Welch's t-test, which does not assume equal population
		    variance.
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		statistic : float or array
		    The calculated t-statistic.
		pvalue : float or array
		    The two-tailed p-value.
		
		Notes
		-----
		For more details on `ttest_ind`, see `stats.ttest_ind`.
	**/
	static public function ttest_ind(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?equal_var:Dynamic):Dynamic;
	/**
		Calculates the T-test for the mean of ONE group of scores.
		
		Parameters
		----------
		a : array_like
		    sample observation
		popmean : float or array_like
		    expected value in null hypothesis, if array_like than it must have the
		    same shape as `a` excluding the axis dimension
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    array `a`.
		
		Returns
		-------
		statistic : float or array
		    t-statistic
		pvalue : float or array
		    two-tailed p-value
		
		Notes
		-----
		For more details on `ttest_1samp`, see `stats.ttest_1samp`.
	**/
	static public function ttest_onesamp(a:Dynamic, popmean:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Calculates the T-test on TWO RELATED samples of scores, a and b.
		
		Parameters
		----------
		a, b : array_like
		    The arrays must have the same shape.
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    arrays, `a`, and `b`.
		
		Returns
		-------
		statistic : float or array
		    t-statistic
		pvalue : float or array
		    two-tailed p-value
		
		Notes
		-----
		For more details on `ttest_rel`, see `stats.ttest_rel`.
	**/
	static public function ttest_rel(a:Dynamic, b:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the trimmed variance
		
		This function computes the sample variance of an array of values,
		while ignoring values which are outside of given `limits`.
		
		Parameters
		----------
		a : array_like
		    Array of values.
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored. When limits is None, then all values are
		    used. Either of the limit values in the tuple can also be None
		    representing a half-open interval.  The default value is None.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to operate. If None, compute over the
		    whole array. Default is zero.
		ddof : int, optional
		    Delta degrees of freedom. Default is 1.
		
		Returns
		-------
		tvar : float
		    Trimmed variance.
		
		Notes
		-----
		For more details on `tvar`, see `stats.tvar`.
	**/
	static public function tvar(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		Computes the coefficient of variation, the ratio of the biased standard
		deviation to the mean.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int or None, optional
		    Axis along which to calculate the coefficient of variation. Default
		    is 0. If None, compute over the whole array `a`.
		
		Returns
		-------
		variation : ndarray
		    The calculated variation along the requested axis.
		
		Notes
		-----
		For more details about `variation`, see `stats.variation`.
	**/
	static public function variation(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Returns a Winsorized version of the input array.
		
		The (limits[0])th lowest values are set to the (limits[0])th percentile,
		and the (limits[1])th highest values are set to the (1 - limits[1])th
		percentile.
		Masked values are skipped.
		
		
		Parameters
		----------
		a : sequence
		    Input array.
		limits : {None, tuple of float}, optional
		    Tuple of the percentages to cut on each side of the array, with respect
		    to the number of unmasked data, as floats between 0. and 1.
		    Noting n the number of unmasked data before trimming, the
		    (n*limits[0])th smallest data and the (n*limits[1])th largest data are
		    masked, and the total number of unmasked data after trimming
		    is n*(1.-sum(limits)) The value of one limit can be set to None to
		    indicate an open interval.
		inclusive : {(True, True) tuple}, optional
		    Tuple indicating whether the number of data being masked on each side
		    should be truncated (True) or rounded (False).
		inplace : {False, True}, optional
		    Whether to winsorize in place (True) or to use a copy (False)
		axis : {None, int}, optional
		    Axis along which to trim. If None, the whole array is trimmed, but its
		    shape is maintained.
		
		Notes
		-----
		This function is applied to reduce the effect of possibly spurious outliers
		by limiting the extreme values.
	**/
	static public function winsorize(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?inplace:Dynamic, ?axis:Dynamic):Dynamic;
}