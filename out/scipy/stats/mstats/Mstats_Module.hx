/* This file is generated, do not edit! */
package scipy.stats.mstats;
@:pythonImport("scipy.stats.mstats") extern class Mstats_Module {
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
		`betai` is deprecated!
		mstats.betai is deprecated in scipy 0.17.0; use special.betainc instead.
		
		
		    betai() is deprecated in scipy 0.17.0.
		
		    For details about this function, see `stats.betai`.
		    
	**/
	static public function betai(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculates a one-way chi square test.
		
		The chi square test tests the null hypothesis that the categorical data
		has the given frequencies.
		
		Parameters
		----------
		f_obs : array_like
		    Observed frequencies in each category.
		f_exp : array_like, optional
		    Expected frequencies in each category.  By default the categories are
		    assumed to be equally likely.
		ddof : int, optional
		    "Delta degrees of freedom": adjustment to the degrees of freedom
		    for the p-value.  The p-value is computed using a chi-squared
		    distribution with ``k - 1 - ddof`` degrees of freedom, where `k`
		    is the number of observed frequencies.  The default value of `ddof`
		    is 0.
		axis : int or None, optional
		    The axis of the broadcast result of `f_obs` and `f_exp` along which to
		    apply the test.  If axis is None, all values in `f_obs` are treated
		    as a single data set.  Default is 0.
		
		Returns
		-------
		chisq : float or ndarray
		    The chi-squared test statistic.  The value is a float if `axis` is
		    None or `f_obs` and `f_exp` are 1-D.
		p : float or ndarray
		    The p-value of the test.  The value is a float if `ddof` and the
		    return value `chisq` are scalars.
		
		See Also
		--------
		power_divergence
		mstats.chisquare
		
		Notes
		-----
		This test is invalid when the observed or expected frequencies in each
		category are too small.  A typical rule is that all of the observed
		and expected frequencies should be at least 5.
		
		The default degrees of freedom, k-1, are for the case when no parameters
		of the distribution are estimated. If p parameters are estimated by
		efficient maximum likelihood then the correct degrees of freedom are
		k-1-p. If the parameters are estimated in a different way, then the
		dof can be between k-1-p and k-1. However, it is also possible that
		the asymptotic distribution is not a chisquare, in which case this
		test is not appropriate.
		
		References
		----------
		.. [1] Lowry, Richard.  "Concepts and Applications of Inferential
		       Statistics". Chapter 8. http://faculty.vassar.edu/lowry/ch8pt1.html
		.. [2] "Chi-squared test", http://en.wikipedia.org/wiki/Chi-squared_test
		
		Examples
		--------
		When just `f_obs` is given, it is assumed that the expected frequencies
		are uniform and given by the mean of the observed frequencies.
		
		>>> from scipy.stats import chisquare
		>>> chisquare([16, 18, 16, 14, 12, 12])
		(2.0, 0.84914503608460956)
		
		With `f_exp` the expected frequencies can be given.
		
		>>> chisquare([16, 18, 16, 14, 12, 12], f_exp=[16, 16, 16, 16, 16, 8])
		(3.5, 0.62338762774958223)
		
		When `f_obs` is 2-D, by default the test is applied to each column.
		
		>>> obs = np.array([[16, 18, 16, 14, 12, 12], [32, 24, 16, 28, 20, 24]]).T
		>>> obs.shape
		(6, 2)
		>>> chisquare(obs)
		(array([ 2.        ,  6.66666667]), array([ 0.84914504,  0.24663415]))
		
		By setting ``axis=None``, the test is applied to all data in the array,
		which is equivalent to applying the test to the flattened array.
		
		>>> chisquare(obs, axis=None)
		(23.31034482758621, 0.015975692534127565)
		>>> chisquare(obs.ravel())
		(23.31034482758621, 0.015975692534127565)
		
		`ddof` is the change to make to the default degrees of freedom.
		
		>>> chisquare([16, 18, 16, 14, 12, 12], ddof=1)
		(2.0, 0.73575888234288467)
		
		The calculation of the p-values is done by broadcasting the
		chi-squared statistic with `ddof`.
		
		>>> chisquare([16, 18, 16, 14, 12, 12], ddof=[0,1,2])
		(2.0, array([ 0.84914504,  0.73575888,  0.5724067 ]))
		
		`f_obs` and `f_exp` are also broadcast.  In the following, `f_obs` has
		shape (6,) and `f_exp` has shape (2, 6), so the result of broadcasting
		`f_obs` and `f_exp` has shape (2, 6).  To compute the desired chi-squared
		statistics, we use ``axis=1``:
		
		>>> chisquare([16, 18, 16, 14, 12, 12],
		...           f_exp=[[16, 16, 16, 16, 16, 8], [8, 20, 20, 16, 12, 12]],
		...           axis=1)
		(array([ 3.5 ,  9.25]), array([ 0.62338763,  0.09949846]))
	**/
	static public function chisquare(f_obs:Dynamic, ?f_exp:Dynamic, ?ddof:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compares the medians from two independent groups along the given axis.
		
		The comparison is performed using the McKean-Schrader estimate of the
		standard error of the medians.
		
		Parameters
		----------
		group_1 : array_like
		    First dataset.
		group_2 : array_like
		    Second dataset.
		axis : int, optional
		    Axis along which the medians are estimated. If None, the arrays are
		    flattened.  If `axis` is not None, then `group_1` and `group_2`
		    should have the same shape.
		
		Returns
		-------
		compare_medians_ms : {float, ndarray}
		    If `axis` is None, then returns a float, otherwise returns a 1-D
		    ndarray of floats with a length equal to the length of `group_1`
		    along `axis`.
	**/
	static public function compare_medians_ms(group_1:Dynamic, group_2:Dynamic, ?axis:Dynamic):Dynamic;
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
		DescribeResult(nobs=array(3), minmax=(masked_array(data = 0,
		             mask = False,
		       fill_value = 999999)
		, masked_array(data = 2,
		             mask = False,
		       fill_value = 999999)
		), mean=1.0, variance=0.66666666666666663, skewness=masked_array(data = 0.0,
		             mask = False,
		       fill_value = 1e+20)
		, kurtosis=-1.5)
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
		`f_value_wilks_lambda` is deprecated!
		mstats.f_value_wilks_lambda deprecated in scipy 0.17.0
		
		Calculation of Wilks lambda F-statistic for multivariate data, per
		    Maxwell & Delaney p.657.
		    
	**/
	static public function f_value_wilks_lambda(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Compute the geometric mean along the specified axis.
		
		Returns the geometric average of the array elements.
		That is:  n-th root of (x1 * x2 * ... * xn)
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : int or None, optional
		    Axis along which the geometric mean is computed. Default is 0.
		    If None, compute over the whole array `a`.
		dtype : dtype, optional
		    Type of the returned array and of the accumulator in which the
		    elements are summed. If dtype is not specified, it defaults to the
		    dtype of a, unless a has an integer dtype with a precision less than
		    that of the default platform integer. In that case, the default
		    platform integer is used.
		
		Returns
		-------
		gmean : ndarray
		    see dtype parameter above
		
		See Also
		--------
		numpy.mean : Arithmetic average
		numpy.average : Weighted average
		hmean : Harmonic mean
		
		Notes
		-----
		The geometric average is computed over a single dimension of the input
		array, axis=0 by default, or all values in the array if axis=None.
		float64 intermediate and return values are used for integer inputs.
		
		Use masked arrays to ignore any non-finite values in the input or that
		arise in the calculations such as Not a Number and infinity because masked
		arrays automatically mask any non-finite values.
	**/
	static public function gmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns the Harrell-Davis estimate of the median along the given axis.
		
		Parameters
		----------
		data : ndarray
		    Data array.
		axis : int, optional
		    Axis along which to compute the quantiles. If None, use a flattened
		    array.
		var : bool, optional
		    Whether to return the variance of the estimate.
	**/
	static public function hdmedian(data:Dynamic, ?axis:Dynamic, ?_var:Dynamic):Dynamic;
	/**
		Computes quantile estimates with the Harrell-Davis method.
		
		The quantile estimates are calculated as a weighted linear combination
		of order statistics.
		
		Parameters
		----------
		data : array_like
		    Data array.
		prob : sequence, optional
		    Sequence of quantiles to compute.
		axis : int or None, optional
		    Axis along which to compute the quantiles. If None, use a flattened
		    array.
		var : bool, optional
		    Whether to return the variance of the estimate.
		
		Returns
		-------
		hdquantiles : MaskedArray
		    A (p,) array of quantiles (if `var` is False), or a (2,p) array of
		    quantiles and variances (if `var` is True), where ``p`` is the
		    number of quantiles.
	**/
	static public function hdquantiles(data:Dynamic, ?prob:Dynamic, ?axis:Dynamic, ?_var:Dynamic):Dynamic;
	/**
		The standard error of the Harrell-Davis quantile estimates by jackknife.
		
		Parameters
		----------
		data : array_like
		    Data array.
		prob : sequence, optional
		    Sequence of quantiles to compute.
		axis : int, optional
		    Axis along which to compute the quantiles. If None, use a flattened
		    array.
		
		Returns
		-------
		hdquantiles_sd : MaskedArray
		    Standard error of the Harrell-Davis quantile estimates.
	**/
	static public function hdquantiles_sd(data:Dynamic, ?prob:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Calculates the harmonic mean along the specified axis.
		
		That is:  n / (1/x1 + 1/x2 + ... + 1/xn)
		
		Parameters
		----------
		a : array_like
		    Input array, masked array or object that can be converted to an array.
		axis : int or None, optional
		    Axis along which the harmonic mean is computed. Default is 0.
		    If None, compute over the whole array `a`.
		dtype : dtype, optional
		    Type of the returned array and of the accumulator in which the
		    elements are summed. If `dtype` is not specified, it defaults to the
		    dtype of `a`, unless `a` has an integer `dtype` with a precision less
		    than that of the default platform integer. In that case, the default
		    platform integer is used.
		
		Returns
		-------
		hmean : ndarray
		    see `dtype` parameter above
		
		See Also
		--------
		numpy.mean : Arithmetic average
		numpy.average : Weighted average
		gmean : Geometric mean
		
		Notes
		-----
		The harmonic mean is computed over a single dimension of the input
		array, axis=0 by default, or all values in the array if axis=None.
		float64 intermediate and return values are used for integer inputs.
		
		Use masked arrays to ignore any non-finite values in the input or that
		arise in the calculations such as Not a Number and infinity.
	**/
	static public function hmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns an estimate of the lower and upper quartiles.
		
		Uses the ideal fourths algorithm.
		
		Parameters
		----------
		data : array_like
		    Input array.
		axis : int, optional
		    Axis along which the quartiles are estimated. If None, the arrays are
		    flattened.
		
		Returns
		-------
		idealfourths : {list of floats, masked array}
		    Returns the two internal values that divide `data` into four parts
		    using the ideal fourths algorithm either along the flattened array
		    (if `axis` is None) or along `axis` of `data`.
	**/
	static public function idealfourths(data:Dynamic, ?axis:Dynamic):Dynamic;
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
		
		Returns
		-------
		correlation : float
		    Kendall tau
		pvalue : float
		    Approximate 2-side p-value.
	**/
	static public function kendalltau(x:Dynamic, y:Dynamic, ?use_ties:Dynamic, ?use_missing:Dynamic):Float;
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
		Calculate a linear least-squares regression for two sets of measurements.
		
		Parameters
		----------
		x, y : array_like
		    Two sets of measurements.  Both arrays should have the same length.
		    If only x is given (and y=None), then it must be a two-dimensional
		    array where one dimension has length 2.  The two sets of measurements
		    are then found by splitting the array along the length-2 dimension.
		
		Returns
		-------
		slope : float
		    slope of the regression line
		intercept : float
		    intercept of the regression line
		rvalue : float
		    correlation coefficient
		pvalue : float
		    two-sided p-value for a hypothesis test whose null hypothesis is
		    that the slope is zero.
		stderr : float
		    Standard error of the estimated gradient.
		
		See also
		--------
		:func:`scipy.optimize.curve_fit` : Use non-linear
		 least squares to fit a function to data.
		:func:`scipy.optimize.leastsq` : Minimize the sum of
		 squares of a set of equations.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy import stats
		>>> np.random.seed(12345678)
		>>> x = np.random.random(10)
		>>> y = np.random.random(10)
		>>> slope, intercept, r_value, p_value, std_err = stats.linregress(x, y)
		
		To get coefficient of determination (r_squared)
		
		>>> print("r-squared:", r_value**2)
		('r-squared:', 0.080402268539028335)
		
		Plot the data along with the fitted line
		
		>>> plt.plot(x, y, 'o', label='original data')
		>>> plt.plot(x, intercept + slope*x, 'r', label='fitted line')
		>>> plt.legend()
		>>> plt.show()
		
		
		
		Notes
		-----
		Missing values are considered pair-wise: if a value is missing in x,
		the corresponding value in y is masked.
	**/
	static public function linregress(x:Dynamic, ?y:Dynamic):Float;
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
	/**
		Computes the alpha-level confidence interval for the median of the data.
		
		Uses the Hettmasperger-Sheather method.
		
		Parameters
		----------
		data : array_like
		    Input data. Masked values are discarded. The input should be 1D only,
		    or `axis` should be set to None.
		alpha : float, optional
		    Confidence level of the intervals.
		axis : int or None, optional
		    Axis along which to compute the quantiles. If None, use a flattened
		    array.
		
		Returns
		-------
		median_cihs
		    Alpha level confidence interval.
	**/
	static public function median_cihs(data:Dynamic, ?alpha:Dynamic, ?axis:Dynamic):Dynamic;
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
		Returns the Maritz-Jarrett estimators of the standard error of selected
		experimental quantiles of the data.
		
		Parameters
		----------
		data : ndarray
		    Data array.
		prob : sequence, optional
		    Sequence of quantiles to compute.
		axis : int or None, optional
		    Axis along which to compute the quantiles. If None, use a flattened
		    array.
	**/
	static public function mjci(data:Dynamic, ?prob:Dynamic, ?axis:Dynamic):Dynamic;
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
		[[ 19.2   14.6    1.45]
		 [ 40.    37.5    2.5 ]
		 [ 42.8   40.05   3.55]]
		
		>>> data[:, 2] = -999.
		>>> print(mquantiles(data, axis=0, limit=(0, 50)))
		[[19.200000000000003 14.6 --]
		 [40.0 37.5 --]
		 [42.800000000000004 40.05 --]]
	**/
	static public function mquantiles(a:Dynamic, ?prob:Dynamic, ?alphap:Dynamic, ?betap:Dynamic, ?axis:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Computes the alpha confidence interval for the selected quantiles of the
		data, with Maritz-Jarrett estimators.
		
		Parameters
		----------
		data : ndarray
		    Data array.
		prob : sequence, optional
		    Sequence of quantiles to compute.
		alpha : float, optional
		    Confidence level of the intervals.
		axis : int or None, optional
		    Axis along which to compute the quantiles.
		    If None, use a flattened array.
	**/
	static public function mquantiles_cimj(data:Dynamic, ?prob:Dynamic, ?alpha:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Returns the sign of x, or 0 if x is masked.
	**/
	static public function msign(x:Dynamic):Dynamic;
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
		Evaluates Rosenblatt's shifted histogram estimators for each point
		on the dataset 'data'.
		
		Parameters
		----------
		data : sequence
		    Input data. Masked values are ignored.
		points : sequence or None, optional
		    Sequence of points where to evaluate Rosenblatt shifted histogram.
		    If None, use the data.
	**/
	static public function rsh(data:Dynamic, ?points:Dynamic):Dynamic;
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
		`signaltonoise` is deprecated!
		mstats.signaltonoise is deprecated in scipy 0.16.0
		
		Calculates the signal-to-noise ratio, as the ratio of the mean over
		    standard deviation along the given axis.
		
		    Parameters
		    ----------
		    data : sequence
		        Input data
		    axis : {0, int}, optional
		        Axis along which to compute. If None, the computation is performed
		        on a flat version of the array.
		    
	**/
	static public function signaltonoise(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		+1 imply an exact linear relationship. Positive correlations imply that
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
		x : array_like
		    The length of `x` must be > 2.
		y : array_like
		    The length of `y` must be > 2.
		use_ties : bool, optional
		    Whether the correction for ties should be computed.
		
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
	static public function spearmanr(x:Dynamic, y:Dynamic, ?use_ties:Dynamic):Float;
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
		
		Notes
		-----
		For more details on `theilslopes`, see `stats.theilslopes`.
	**/
	static public function theilslopes(y:Dynamic, ?x:Dynamic, ?alpha:Dynamic):Float;
	/**
		`threshold` is deprecated!
		mstats.threshold is deprecated in scipy 0.17.0
		
		
		    Clip array to a given value.
		
		    Similar to numpy.clip(), except that values less than `threshmin` or
		    greater than `threshmax` are replaced by `newval`, instead of by
		    `threshmin` and `threshmax` respectively.
		
		    Parameters
		    ----------
		    a : ndarray
		        Input data
		    threshmin : {None, float}, optional
		        Lower threshold. If None, set to the minimum value.
		    threshmax : {None, float}, optional
		        Upper threshold. If None, set to the maximum value.
		    newval : {0, float}, optional
		        Value outside the thresholds.
		
		    Returns
		    -------
		    threshold : ndarray
		        Returns `a`, with values less then `threshmin` and values greater
		        `threshmax` replaced with `newval`.
		
		    
	**/
	static public function threshold(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public function trimmed_mean(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?relative:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Selected confidence interval of the trimmed mean along the given axis.
		
		Parameters
		----------
		data : array_like
		    Input data.
		limits : {None, tuple}, optional
		    None or a two item tuple.
		    Tuple of the percentages to cut on each side of the array, with respect
		    to the number of unmasked data, as floats between 0. and 1. If ``n``
		    is the number of unmasked data before trimming, then
		    (``n * limits[0]``)th smallest data and (``n * limits[1]``)th
		    largest data are masked.  The total number of unmasked data after
		    trimming is ``n * (1. - sum(limits))``.
		    The value of one limit can be set to None to indicate an open interval.
		
		    Defaults to (0.2, 0.2).
		inclusive : (2,) tuple of boolean, optional
		    If relative==False, tuple indicating whether values exactly equal to
		    the absolute limits are allowed.
		    If relative==True, tuple indicating whether the number of data being
		    masked on each side should be rounded (True) or truncated (False).
		
		    Defaults to (True, True).
		alpha : float, optional
		    Confidence level of the intervals.
		
		    Defaults to 0.05.
		axis : int, optional
		    Axis along which to cut. If None, uses a flattened version of `data`.
		
		    Defaults to None.
		
		Returns
		-------
		trimmed_mean_ci : (2,) ndarray
		    The lower and upper confidence intervals of the trimmed data.
	**/
	static public function trimmed_mean_ci(data:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?alpha:Dynamic, ?axis:Dynamic):Dynamic;
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
		    should be rounded (True) or truncated (False).
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
	/**
		Calculates the relative z-scores.
		
		Returns an array of z-scores, i.e., scores that are standardized to
		zero mean and unit variance, where mean and variance are calculated
		from the comparison array.
		
		Parameters
		----------
		scores : array_like
		    The input for which z-scores are calculated.
		compare : array_like
		    The input from which the mean and standard deviation of the
		    normalization are taken; assumed to have the same dimension as
		    `scores`.
		axis : int or None, optional
		    Axis over which mean and variance of `compare` are calculated.
		    Default is 0. If None, compute over the whole array `scores`.
		ddof : int, optional
		    Degrees of freedom correction in the calculation of the
		    standard deviation. Default is 0.
		
		Returns
		-------
		zscore : array_like
		    Z-scores, in the same shape as `scores`.
		
		Notes
		-----
		This function preserves ndarray subclasses, and works also with
		matrices and masked arrays (it uses `asanyarray` instead of
		`asarray` for parameters).
		
		Examples
		--------
		>>> from scipy.stats import zmap
		>>> a = [0.5, 2.0, 2.5, 3]
		>>> b = [0, 1, 2, 3, 4]
		>>> zmap(a, b)
		array([-1.06066017,  0.        ,  0.35355339,  0.70710678])
	**/
	static public function zmap(scores:Dynamic, compare:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		Calculates the z score of each value in the sample, relative to the
		sample mean and standard deviation.
		
		Parameters
		----------
		a : array_like
		    An array like object containing the sample data.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		ddof : int, optional
		    Degrees of freedom correction in the calculation of the
		    standard deviation. Default is 0.
		
		Returns
		-------
		zscore : array_like
		    The z-scores, standardized by mean and standard deviation of
		    input array `a`.
		
		Notes
		-----
		This function preserves ndarray subclasses, and works also with
		matrices and masked arrays (it uses `asanyarray` instead of
		`asarray` for parameters).
		
		Examples
		--------
		>>> a = np.array([ 0.7972,  0.0767,  0.4383,  0.7866,  0.8091,
		...                0.1954,  0.6307,  0.6599,  0.1065,  0.0508])
		>>> from scipy import stats
		>>> stats.zscore(a)
		array([ 1.1273, -1.247 , -0.0552,  1.0923,  1.1664, -0.8559,  0.5786,
		        0.6748, -1.1488, -1.3324])
		
		Computing along a specified axis, using n-1 degrees of freedom
		(``ddof=1``) to calculate the standard deviation:
		
		>>> b = np.array([[ 0.3148,  0.0478,  0.6243,  0.4608],
		...               [ 0.7149,  0.0775,  0.6072,  0.9656],
		...               [ 0.6341,  0.1403,  0.9759,  0.4064],
		...               [ 0.5918,  0.6948,  0.904 ,  0.3721],
		...               [ 0.0921,  0.2481,  0.1188,  0.1366]])
		>>> stats.zscore(b, axis=1, ddof=1)
		array([[-0.19264823, -1.28415119,  1.07259584,  0.40420358],
		       [ 0.33048416, -1.37380874,  0.04251374,  1.00081084],
		       [ 0.26796377, -1.12598418,  1.23283094, -0.37481053],
		       [-0.22095197,  0.24468594,  1.19042819, -1.21416216],
		       [-0.82780366,  1.4457416 , -0.43867764, -0.1792603 ]])
	**/
	static public function zscore(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Dynamic;
}