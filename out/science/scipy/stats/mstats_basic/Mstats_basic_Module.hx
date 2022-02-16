/* This file is generated, do not edit! */
package scipy.stats.mstats_basic;
@:pythonImport("scipy.stats.mstats_basic") extern class Mstats_basic_Module {
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
		
		Examples
		--------
		A 2D masked array constructed from a group of sequences is returned.
		
		>>> from scipy.stats.mstats import argstoarray
		>>> argstoarray([1, 2, 3], [4, 5, 6])
		masked_array(
		 data=[[1.0, 2.0, 3.0],
		       [4.0, 5.0, 6.0]],
		 mask=[[False, False, False],
		       [False, False, False]],
		 fill_value=1e+20)
		
		The returned masked array filled with missing values when the lengths of
		sequences are different.
		
		>>> argstoarray([1, 3], [4, 5, 6])
		masked_array(
		 data=[[1.0, 3.0, --],
		       [4.0, 5.0, 6.0]],
		 mask=[[False, False,  True],
		       [False, False, False]],
		 fill_value=1e+20)
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
		-----
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
		    are present. As the sample size increases, the 'exact' computation
		    time may grow and the result may lose some precision.
		    'auto' is the default and selects the appropriate
		    method based on a trade-off between speed and accuracy.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the rank correlation is nonzero
		    * 'less': the rank correlation is negative (less than zero)
		    * 'greater':  the rank correlation is positive (greater than zero)
		
		Returns
		-------
		correlation : float
		    The Kendall tau statistic
		pvalue : float
		    The p-value
		
		References
		----------
		.. [1] Maurice G. Kendall, "Rank Correlation Methods" (4th Edition),
		       Charles Griffin & Co., 1970.
	**/
	static public function kendalltau(x:Dynamic, y:Dynamic, ?use_ties:Dynamic, ?use_missing:Dynamic, ?method:Dynamic, ?alternative:Dynamic):Float;
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
		Computes the Kolmogorov-Smirnov test on one sample of masked values.
		
		Missing values in `x` are discarded.
		
		Parameters
		----------
		x : array_like
		    a 1-D array of observations of random variables.
		cdf : str or callable
		    If a string, it should be the name of a distribution in `scipy.stats`.
		    If a callable, that callable is used to calculate the cdf.
		args : tuple, sequence, optional
		    Distribution parameters, used if `cdf` is a string.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Indicates the alternative hypothesis.  Default is 'two-sided'.
		mode : {'auto', 'exact', 'asymp'}, optional
		    Defines the method used for calculating the p-value.
		    The following options are available (default is 'auto'):
		
		      * 'auto' : use 'exact' for small size arrays, 'asymp' for large
		      * 'exact' : use approximation to exact distribution of test statistic
		      * 'asymp' : use asymptotic distribution of test statistic
		
		Returns
		-------
		d : float
		    Value of the Kolmogorov Smirnov test
		p : float
		    Corresponding p-value.
	**/
	static public function ks_1samp(x:Dynamic, cdf:Dynamic, ?args:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Computes the Kolmogorov-Smirnov test on two samples.
		
		Missing values in `x` and/or `y` are discarded.
		
		Parameters
		----------
		data1 : array_like
		    First data set
		data2 : array_like
		    Second data set
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Indicates the alternative hypothesis.  Default is 'two-sided'.
		mode : {'auto', 'exact', 'asymp'}, optional
		    Defines the method used for calculating the p-value.
		    The following options are available (default is 'auto'):
		
		      * 'auto' : use 'exact' for small size arrays, 'asymp' for large
		      * 'exact' : use approximation to exact distribution of test statistic
		      * 'asymp' : use asymptotic distribution of test statistic
		
		Returns
		-------
		d : float
		    Value of the Kolmogorov Smirnov test
		p : float
		    Corresponding p-value.
	**/
	static public function ks_2samp(data1:Dynamic, data2:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Computes the Kolmogorov-Smirnov test on two samples.
		
		Missing values in `x` and/or `y` are discarded.
		
		Parameters
		----------
		data1 : array_like
		    First data set
		data2 : array_like
		    Second data set
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Indicates the alternative hypothesis.  Default is 'two-sided'.
		mode : {'auto', 'exact', 'asymp'}, optional
		    Defines the method used for calculating the p-value.
		    The following options are available (default is 'auto'):
		
		      * 'auto' : use 'exact' for small size arrays, 'asymp' for large
		      * 'exact' : use approximation to exact distribution of test statistic
		      * 'asymp' : use asymptotic distribution of test statistic
		
		Returns
		-------
		d : float
		    Value of the Kolmogorov Smirnov test
		p : float
		    Corresponding p-value.
	**/
	static public function ks_twosamp(data1:Dynamic, data2:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Parameters
		----------
		data1 : array_like
		data2 : str, callable or array_like
		args : tuple, sequence, optional
		    Distribution parameters, used if `data1` or `data2` are strings.
		alternative : str, as documented in stats.kstest
		mode : str, as documented in stats.kstest
		
		Returns
		-------
		tuple of (K-S statistic, probability)
	**/
	static public function kstest(data1:Dynamic, data2:Dynamic, ?args:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Dynamic;
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
		a : array_like
		    array of the sample data
		axis : int or None, optional
		   Axis along which to compute test. Default is 0. If None,
		   compute over the whole array `a`.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the kurtosis of the distribution underlying the sample
		      is different from that of the normal distribution
		    * 'less': the kurtosis of the distribution underlying the sample
		      is less than that of the normal distribution
		    * 'greater': the kurtosis of the distribution underlying the sample
		      is greater than that of the normal distribution
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		statistic : array_like
		    The computed z-score for this test.
		pvalue : array_like
		    The p-value for the hypothesis test
		
		Notes
		-----
		For more details about `kurtosistest`, see `stats.kurtosistest`.
	**/
	static public function kurtosistest(a:Dynamic, ?axis:Dynamic, ?alternative:Dynamic):Dynamic;
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
		    The minimum of the Mann-Whitney statistics
		pvalue : float
		    Approximate two-sided p-value assuming a normal distribution.
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
		.. [1] *R* statistical software: https://www.r-project.org/
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
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
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
		Pearson correlation coefficient and p-value for testing non-correlation.
		
		The Pearson correlation coefficient [1]_ measures the linear relationship
		between two datasets.  The calculation of the p-value relies on the
		assumption that each dataset is normally distributed.  (See Kowalski [3]_
		for a discussion of the effects of non-normality of the input on the
		distribution of the correlation coefficient.)  Like other correlation
		coefficients, this one varies between -1 and +1 with 0 implying no
		correlation. Correlations of -1 or +1 imply an exact linear relationship.
		
		Parameters
		----------
		x : (N,) array_like
		    Input array.
		y : (N,) array_like
		    Input array.
		
		Returns
		-------
		r : float
		    Pearson's correlation coefficient.
		p-value : float
		    Two-tailed p-value.
		
		Warns
		-----
		PearsonRConstantInputWarning
		    Raised if an input is a constant array.  The correlation coefficient
		    is not defined in this case, so ``np.nan`` is returned.
		
		PearsonRNearConstantInputWarning
		    Raised if an input is "nearly" constant.  The array ``x`` is considered
		    nearly constant if ``norm(x - mean(x)) < 1e-13 * abs(mean(x))``.
		    Numerical errors in the calculation ``x - mean(x)`` in this case might
		    result in an inaccurate calculation of r.
		
		See Also
		--------
		spearmanr : Spearman rank-order correlation coefficient.
		kendalltau : Kendall's tau, a correlation measure for ordinal data.
		
		Notes
		-----
		The correlation coefficient is calculated as follows:
		
		.. math::
		
		    r = \frac{\sum (x - m_x) (y - m_y)}
		             {\sqrt{\sum (x - m_x)^2 \sum (y - m_y)^2}}
		
		where :math:`m_x` is the mean of the vector x and :math:`m_y` is
		the mean of the vector y.
		
		Under the assumption that x and y are drawn from
		independent normal distributions (so the population correlation coefficient
		is 0), the probability density function of the sample correlation
		coefficient r is ([1]_, [2]_):
		
		.. math::
		
		    f(r) = \frac{{(1-r^2)}^{n/2-2}}{\mathrm{B}(\frac{1}{2},\frac{n}{2}-1)}
		
		where n is the number of samples, and B is the beta function.  This
		is sometimes referred to as the exact distribution of r.  This is
		the distribution that is used in `pearsonr` to compute the p-value.
		The distribution is a beta distribution on the interval [-1, 1],
		with equal shape parameters a = b = n/2 - 1.  In terms of SciPy's
		implementation of the beta distribution, the distribution of r is::
		
		    dist = scipy.stats.beta(n/2 - 1, n/2 - 1, loc=-1, scale=2)
		
		The p-value returned by `pearsonr` is a two-sided p-value. The p-value
		roughly indicates the probability of an uncorrelated system
		producing datasets that have a Pearson correlation at least as extreme
		as the one computed from these datasets. More precisely, for a
		given sample with correlation coefficient r, the p-value is
		the probability that abs(r') of a random sample x' and y' drawn from
		the population with zero correlation would be greater than or equal
		to abs(r). In terms of the object ``dist`` shown above, the p-value
		for a given r and length n can be computed as::
		
		    p = 2*dist.cdf(-abs(r))
		
		When n is 2, the above continuous distribution is not well-defined.
		One can interpret the limit of the beta distribution as the shape
		parameters a and b approach a = b = 0 as a discrete distribution with
		equal probability masses at r = 1 and r = -1.  More directly, one
		can observe that, given the data x = [x1, x2] and y = [y1, y2], and
		assuming x1 != x2 and y1 != y2, the only possible values for r are 1
		and -1.  Because abs(r') for any sample x' and y' with length 2 will
		be 1, the two-sided p-value for a sample of length 2 is always 1.
		
		References
		----------
		.. [1] "Pearson correlation coefficient", Wikipedia,
		       https://en.wikipedia.org/wiki/Pearson_correlation_coefficient
		.. [2] Student, "Probable error of a correlation coefficient",
		       Biometrika, Volume 6, Issue 2-3, 1 September 1908, pp. 302-310.
		.. [3] C. J. Kowalski, "On the Effects of Non-Normality on the Distribution
		       of the Sample Product-Moment Correlation Coefficient"
		       Journal of the Royal Statistical Society. Series C (Applied
		       Statistics), Vol. 21, No. 1 (1972), pp. 1-12.
		
		Examples
		--------
		>>> from scipy import stats
		>>> from scipy.stats import mstats
		>>> mstats.pearsonr([1, 2, 3, 4, 5], [10, 9, 2.5, 6, 4])
		(-0.7426106572325057, 0.1505558088534455)
		
		There is a linear dependence between x and y if y = a + b*x + e, where
		a,b are constants and e is a random error term, assumed to be independent
		of x. For simplicity, assume that x is standard normal, a=0, b=1 and let
		e follow a normal distribution with mean zero and standard deviation s>0.
		
		>>> s = 0.5
		>>> x = stats.norm.rvs(size=500)
		>>> e = stats.norm.rvs(scale=s, size=500)
		>>> y = x + e
		>>> mstats.pearsonr(x, y)
		(0.9029601878969703, 8.428978827629898e-185) # may vary
		
		This should be close to the exact value given by
		
		>>> 1/np.sqrt(1 + s**2)
		0.8944271909999159
		
		For s=0.5, we observe a high level of correlation. In general, a large
		variance of the noise reduces the correlation, while the correlation
		approaches one as the variance of the error goes to zero.
		
		It is important to keep in mind that no correlation does not imply
		independence unless (x, y) is jointly normal. Correlation can even be zero
		when there is a very simple dependence structure: if X follows a
		standard normal distribution, let y = abs(x). Note that the correlation
		between x and y is zero. Indeed, since the expectation of x is zero,
		cov(x, y) = E[x*y]. By definition, this equals E[x*abs(x)] which is zero
		by symmetry. The following lines of code illustrate this observation:
		
		>>> y = np.abs(x)
		>>> mstats.pearsonr(x, y)
		(-0.016172891856853524, 0.7182823678751942) # may vary
		
		A non-zero correlation coefficient can be misleading. For example, if X has
		a standard normal distribution, define y = x if x < 0 and y = 0 otherwise.
		A simple calculation shows that corr(x, y) = sqrt(2/Pi) = 0.797...,
		implying a high level of correlation:
		
		>>> y = np.where(x < 0, x, 0)
		>>> mstats.pearsonr(x, y)
		(0.8537091583771509, 3.183461621422181e-143) # may vary
		
		This is unintuitive since there is no dependence of x and y if x is larger
		than zero which happens in about half of the cases if we sample x and y.
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
		a : array_like
		    The data to be tested
		axis : int or None, optional
		   Axis along which statistics are calculated. Default is 0.
		   If None, compute over the whole array `a`.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the skewness of the distribution underlying the sample
		      is different from that of the normal distribution (i.e. 0)
		    * 'less': the skewness of the distribution underlying the sample
		      is less than that of the normal distribution
		    * 'greater': the skewness of the distribution underlying the sample
		      is greater than that of the normal distribution
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		statistic : array_like
		    The computed z-score for this test.
		pvalue : array_like
		    A p-value for the hypothesis test
		
		Notes
		-----
		For more details about `skewtest`, see `stats.skewtest`.
	**/
	static public function skewtest(a:Dynamic, ?axis:Dynamic, ?alternative:Dynamic):Dynamic;
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
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the correlation is nonzero
		    * 'less': the correlation is negative (less than zero)
		    * 'greater':  the correlation is positive (greater than zero)
		
		    .. versionadded:: 1.7.0
		
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
	static public function spearmanr(x:Dynamic, ?y:Dynamic, ?use_ties:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Float;
	/**
		Calculate a linear least-squares regression for two sets of measurements.
		
		Parameters
		----------
		x, y : array_like
		    Two sets of measurements.  Both arrays should have the same length.  If
		    only `x` is given (and ``y=None``), then it must be a two-dimensional
		    array where one dimension has length 2.  The two sets of measurements
		    are then found by splitting the array along the length-2 dimension. In
		    the case where ``y=None`` and `x` is a 2x2 array, ``linregress(x)`` is
		    equivalent to ``linregress(x[0], x[1])``.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the slope of the regression line is nonzero
		    * 'less': the slope of the regression line is less than zero
		    * 'greater':  the slope of the regression line is greater than zero
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		result : ``LinregressResult`` instance
		    The return value is an object with the following attributes:
		
		    slope : float
		        Slope of the regression line.
		    intercept : float
		        Intercept of the regression line.
		    rvalue : float
		        The Pearson correlation coefficient. The square of ``rvalue``
		        is equal to the coefficient of determination.
		    pvalue : float
		        The p-value for a hypothesis test whose null hypothesis is
		        that the slope is zero, using Wald Test with t-distribution of
		        the test statistic. See `alternative` above for alternative
		        hypotheses.
		    stderr : float
		        Standard error of the estimated slope (gradient), under the
		        assumption of residual normality.
		    intercept_stderr : float
		        Standard error of the estimated intercept, under the assumption
		        of residual normality.
		
		See Also
		--------
		scipy.optimize.curve_fit :
		    Use non-linear least squares to fit a function to data.
		scipy.optimize.leastsq :
		    Minimize the sum of squares of a set of equations.
		
		Notes
		-----
		Missing values are considered pair-wise: if a value is missing in `x`,
		the corresponding value in `y` is masked.
		
		For compatibility with older versions of SciPy, the return value acts
		like a ``namedtuple`` of length 5, with fields ``slope``, ``intercept``,
		``rvalue``, ``pvalue`` and ``stderr``, so one can continue to write::
		
		    slope, intercept, r, p, se = linregress(x, y)
		
		With that style, however, the standard error of the intercept is not
		available.  To have access to all the computed values, including the
		standard error of the intercept, use the return value as an object
		with attributes, e.g.::
		
		    result = linregress(x, y)
		    print(result.intercept, result.intercept_stderr)
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		Generate some data:
		
		>>> x = rng.random(10)
		>>> y = 1.6*x + rng.random(10)
		
		Perform the linear regression:
		
		>>> res = stats.linregress(x, y)
		
		Coefficient of determination (R-squared):
		
		>>> print(f"R-squared: {res.rvalue**2:.6f}")
		R-squared: 0.717533
		
		Plot the data along with the fitted line:
		
		>>> plt.plot(x, y, 'o', label='original data')
		>>> plt.plot(x, res.intercept + res.slope*x, 'r', label='fitted line')
		>>> plt.legend()
		>>> plt.show()
		
		Calculate 95% confidence interval on slope and intercept:
		
		>>> # Two-sided inverse Students t-distribution
		>>> # p - probability, df - degrees of freedom
		>>> from scipy.stats import t
		>>> tinv = lambda p, df: abs(t.ppf(p/2, df))
		
		>>> ts = tinv(0.05, len(x)-2)
		>>> print(f"slope (95%): {res.slope:.6f} +/- {ts*res.stderr:.6f}")
		slope (95%): 1.453392 +/- 0.743465
		>>> print(f"intercept (95%): {res.intercept:.6f}"
		...       f" +/- {ts*res.intercept_stderr:.6f}")
		intercept (95%): 0.616950 +/- 0.544475
	**/
	static public function stats_linregress(x:Dynamic, ?y:Dynamic, ?alternative:Dynamic):Dynamic;
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
		method : {'joint', 'separate'}, optional
		    Method to be used for computing estimate for intercept.
		    Following methods are supported,
		
		        * 'joint': Uses np.median(y - medslope * x) as intercept.
		        * 'separate': Uses np.median(y) - medslope * np.median(x)
		                      as intercept.
		
		    The default is 'separate'.
		
		    .. versionadded:: 1.8.0
		
		Returns
		-------
		medslope : float
		    Theil slope.
		medintercept : float
		    Intercept of the Theil line.
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
		the intercept exist in the literature such as  ``median(y - medslope*x)``
		in [4]_. The approach to compute the intercept can be determined by the
		parameter ``method``. A confidence interval for the intercept is not
		given as this question is not addressed in [1]_.
		
		References
		----------
		.. [1] P.K. Sen, "Estimates of the regression coefficient based on
		       Kendall's tau", J. Am. Stat. Assoc., Vol. 63, pp. 1379-1389, 1968.
		.. [2] H. Theil, "A rank-invariant method of linear and polynomial
		       regression analysis I, II and III",  Nederl. Akad. Wetensch., Proc.
		       53:, pp. 386-392, pp. 521-525, pp. 1397-1412, 1950.
		.. [3] W.L. Conover, "Practical nonparametric statistics", 2nd ed.,
		       John Wiley and Sons, New York, pp. 493.
		.. [4] https://en.wikipedia.org/wiki/Theil%E2%80%93Sen_estimator
		
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
		
		>>> res = stats.theilslopes(y, x, 0.90, method='separate')
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
	static public function stats_theilslopes(y:Dynamic, ?x:Dynamic, ?alpha:Dynamic, ?method:Dynamic):Float;
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
		method : {'joint', 'separate'}, optional
		    Method to be used for computing estimate for intercept.
		    Following methods are supported,
		
		        * 'joint': Uses np.median(y - medslope * x) as intercept.
		        * 'separate': Uses np.median(y) - medslope * np.median(x)
		                      as intercept.
		
		    The default is 'separate'.
		
		    .. versionadded:: 1.8.0
		
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
	static public function theilslopes(y:Dynamic, ?x:Dynamic, ?alpha:Dynamic, ?method:Dynamic):Float;
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
		
		Examples
		--------
		>>> from scipy.stats.mstats import trima
		
		>>> a = np.arange(10)
		
		The interval is left-closed and right-open, i.e., `[2, 8)`.
		Trim the array by keeping only values in the interval.
		
		>>> trima(a, limits=(2, 8), inclusive=(True, False))
		masked_array(data=[--, --, 2, 3, 4, 5, 6, 7, --, --],
		             mask=[ True,  True, False, False, False, False, False, False,
		                    True,  True],
		       fill_value=999999)
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
	/**
		Returns the trimmed mean of the data along the given axis.
		
		
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
	**/
	static public function trimmed_mean(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?relative:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Returns the trimmed standard deviation of the data along the given axis.
		
		
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
		
		ddof : {0,integer}, optional
		    Means Delta Degrees of Freedom. The denominator used during computations
		    is (n-ddof). DDOF=0 corresponds to a biased estimate, DDOF=1 to an un-
		    biased estimate of the variance.
	**/
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
	/**
		Returns the trimmed variance of the data along the given axis.
		
		
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
		
		ddof : {0,integer}, optional
		    Means Delta Degrees of Freedom. The denominator used during computations
		    is (n-ddof). DDOF=0 corresponds to a biased estimate, DDOF=1 to an un-
		    biased estimate of the variance.
	**/
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
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the mean of the underlying distribution of the sample
		      is different than the given population mean (`popmean`)
		    * 'less': the mean of the underlying distribution of the sample is
		      less than the given population mean (`popmean`)
		    * 'greater': the mean of the underlying distribution of the sample is
		      greater than the given population mean (`popmean`)
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		statistic : float or array
		    t-statistic
		pvalue : float or array
		    The p-value
		
		Notes
		-----
		For more details on `ttest_1samp`, see `stats.ttest_1samp`.
	**/
	static public function ttest_1samp(a:Dynamic, popmean:Dynamic, ?axis:Dynamic, ?alternative:Dynamic):Dynamic;
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
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the means of the distributions underlying the samples
		      are unequal.
		    * 'less': the mean of the distribution underlying the first sample
		      is less than the mean of the distribution underlying the second
		      sample.
		    * 'greater': the mean of the distribution underlying the first
		      sample is greater than the mean of the distribution underlying
		      the second sample.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		statistic : float or array
		    The calculated t-statistic.
		pvalue : float or array
		    The p-value.
		
		Notes
		-----
		For more details on `ttest_ind`, see `stats.ttest_ind`.
	**/
	static public function ttest_ind(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?equal_var:Dynamic, ?alternative:Dynamic):Dynamic;
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
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the mean of the underlying distribution of the sample
		      is different than the given population mean (`popmean`)
		    * 'less': the mean of the underlying distribution of the sample is
		      less than the given population mean (`popmean`)
		    * 'greater': the mean of the underlying distribution of the sample is
		      greater than the given population mean (`popmean`)
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		statistic : float or array
		    t-statistic
		pvalue : float or array
		    The p-value
		
		Notes
		-----
		For more details on `ttest_1samp`, see `stats.ttest_1samp`.
	**/
	static public function ttest_onesamp(a:Dynamic, popmean:Dynamic, ?axis:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		Calculates the T-test on TWO RELATED samples of scores, a and b.
		
		Parameters
		----------
		a, b : array_like
		    The arrays must have the same shape.
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    arrays, `a`, and `b`.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the means of the distributions underlying the samples
		      are unequal.
		    * 'less': the mean of the distribution underlying the first sample
		      is less than the mean of the distribution underlying the second
		      sample.
		    * 'greater': the mean of the distribution underlying the first
		      sample is greater than the mean of the distribution underlying
		      the second sample.
		
		    .. versionadded:: 1.7.0
		
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
	static public function ttest_rel(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?alternative:Dynamic):Dynamic;
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
		Compute the coefficient of variation.
		
		The coefficient of variation is the standard deviation divided by the
		mean.  This function is equivalent to::
		
		    np.std(x, axis=axis, ddof=ddof) / np.mean(x)
		
		The default for ``ddof`` is 0, but many definitions of the coefficient
		of variation use the square root of the unbiased sample variance
		for the sample standard deviation, which corresponds to ``ddof=1``.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int or None, optional
		    Axis along which to calculate the coefficient of variation. Default
		    is 0. If None, compute over the whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 0.
		
		Returns
		-------
		variation : ndarray
		    The calculated variation along the requested axis.
		
		Notes
		-----
		For more details about `variation`, see `stats.variation`.
		
		Examples
		--------
		>>> from scipy.stats.mstats import variation
		>>> a = np.array([2,8,4])
		>>> variation(a)
		0.5345224838248487
		>>> b = np.array([2,8,3,4])
		>>> c = np.ma.masked_array(b, mask=[0,0,1,0])
		>>> variation(c)
		0.5345224838248487
		
		In the example above, it can be seen that this works the same as
		`stats.variation` except 'stats.mstats.variation' ignores masked
		array elements.
	**/
	static public function variation(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Dynamic;
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
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': allows nan values and may overwrite or propagate them
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Notes
		-----
		This function is applied to reduce the effect of possibly spurious outliers
		by limiting the extreme values.
		
		Examples
		--------
		>>> from scipy.stats.mstats import winsorize
		
		A shuffled array contains integers from 1 to 10.
		
		>>> a = np.array([10, 4, 9, 8, 5, 3, 7, 2, 1, 6])
		
		The 10% of the lowest value (i.e., `1`) and the 20% of the highest
		values (i.e., `9` and `10`) are replaced.
		
		>>> winsorize(a, limits=[0.1, 0.2])
		masked_array(data=[8, 4, 8, 8, 5, 3, 7, 2, 2, 6],
		             mask=False,
		       fill_value=999999)
	**/
	static public function winsorize(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
}