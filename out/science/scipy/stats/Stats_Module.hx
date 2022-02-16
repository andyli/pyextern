/* This file is generated, do not edit! */
package scipy.stats;
@:pythonImport("scipy.stats") extern class Stats_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Performs the Alexander Govern test.
		
		The Alexander-Govern approximation tests the equality of k independent
		means in the face of heterogeneity of variance. The test is applied to
		samples from two or more groups, possibly with differing sizes.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The sample measurements for each group.  There must be at least
		    two samples.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		statistic : float
		    The computed A statistic of the test.
		pvalue : float
		    The associated p-value from the chi-squared distribution.
		
		Warns
		-----
		AlexanderGovernConstantInputWarning
		    Raised if an input is a constant array.  The statistic is not defined
		    in this case, so ``np.nan`` is returned.
		
		See Also
		--------
		f_oneway : one-way ANOVA
		
		Notes
		-----
		The use of this test relies on several assumptions.
		
		1. The samples are independent.
		2. Each sample is from a normally distributed population.
		3. Unlike `f_oneway`, this test does not assume on homoscedasticity,
		   instead relaxing the assumption of equal variances.
		
		Input samples must be finite, one dimensional, and with size greater than
		one.
		
		References
		----------
		.. [1] Alexander, Ralph A., and Diane M. Govern. "A New and Simpler
		       Approximation for ANOVA under Variance Heterogeneity." Journal
		       of Educational Statistics, vol. 19, no. 2, 1994, pp. 91-101.
		       JSTOR, www.jstor.org/stable/1165140. Accessed 12 Sept. 2020.
		
		Examples
		--------
		>>> from scipy.stats import alexandergovern
		
		Here are some data on annual percentage rate of interest charged on
		new car loans at nine of the largest banks in four American cities
		taken from the National Institute of Standards and Technology's
		ANOVA dataset.
		
		We use `alexandergovern` to test the null hypothesis that all cities
		have the same mean APR against the alternative that the cities do not
		all have the same mean APR. We decide that a significance level of 5%
		is required to reject the null hypothesis in favor of the alternative.
		
		>>> atlanta = [13.75, 13.75, 13.5, 13.5, 13.0, 13.0, 13.0, 12.75, 12.5]
		>>> chicago = [14.25, 13.0, 12.75, 12.5, 12.5, 12.4, 12.3, 11.9, 11.9]
		>>> houston = [14.0, 14.0, 13.51, 13.5, 13.5, 13.25, 13.0, 12.5, 12.5]
		>>> memphis = [15.0, 14.0, 13.75, 13.59, 13.25, 12.97, 12.5, 12.25,
		...           11.89]
		>>> alexandergovern(atlanta, chicago, houston, memphis)
		AlexanderGovernResult(statistic=4.65087071883494,
		                      pvalue=0.19922132490385214)
		
		The p-value is 0.1992, indicating a nearly 20% chance of observing
		such an extreme value of the test statistic under the null hypothesis.
		This exceeds 5%, so we do not reject the null hypothesis in favor of
		the alternative.
	**/
	static public function alexandergovern(?args:python.VarArgs<Dynamic>, ?nan_policy:Dynamic):Float;
	/**
		An alpha continuous random variable.
		
		As an instance of the `rv_continuous` class, `alpha` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0, scale=1)
		    Median of the distribution.
		mean(a, loc=0, scale=1)
		    Mean of the distribution.
		var(a, loc=0, scale=1)
		    Variance of the distribution.
		std(a, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `alpha` ([1]_, [2]_) is:
		
		.. math::
		
		    f(x, a) = \frac{1}{x^2 \Phi(a) \sqrt{2\pi}} *
		              \exp(-\frac{1}{2} (a-1/x)^2)
		
		where :math:`\Phi` is the normal CDF, :math:`x > 0`, and :math:`a > 0`.
		
		`alpha` takes ``a`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``alpha.pdf(x, a, loc, scale)`` is identically
		equivalent to ``alpha.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] Johnson, Kotz, and Balakrishnan, "Continuous Univariate
		       Distributions, Volume 1", Second Edition, John Wiley and Sons,
		       p. 173 (1994).
		.. [2] Anthony A. Salvia, "Reliability applications of the Alpha
		       Distribution", IEEE Transactions on Reliability, Vol. R-34,
		       No. 3, pp. 251-252 (1985).
		
		Examples
		--------
		>>> from scipy.stats import alpha
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a = 3.57
		>>> mean, var, skew, kurt = alpha.stats(a, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(alpha.ppf(0.01, a),
		...                 alpha.ppf(0.99, a), 100)
		>>> ax.plot(x, alpha.pdf(x, a),
		...        'r-', lw=5, alpha=0.6, label='alpha pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = alpha(a)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = alpha.ppf([0.001, 0.5, 0.999], a)
		>>> np.allclose([0.001, 0.5, 0.999], alpha.cdf(vals, a))
		True
		
		Generate random numbers:
		
		>>> r = alpha.rvs(a, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function alpha(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Anderson-Darling test for data coming from a particular distribution.
		
		The Anderson-Darling test tests the null hypothesis that a sample is
		drawn from a population that follows a particular distribution.
		For the Anderson-Darling test, the critical values depend on
		which distribution is being tested against.  This function works
		for normal, exponential, logistic, or Gumbel (Extreme Value
		Type I) distributions.
		
		Parameters
		----------
		x : array_like
		    Array of sample data.
		dist : {'norm', 'expon', 'logistic', 'gumbel', 'gumbel_l', 'gumbel_r', 'extreme1'}, optional
		    The type of distribution to test against.  The default is 'norm'.
		    The names 'extreme1', 'gumbel_l' and 'gumbel' are synonyms for the
		    same distribution.
		
		Returns
		-------
		statistic : float
		    The Anderson-Darling test statistic.
		critical_values : list
		    The critical values for this distribution.
		significance_level : list
		    The significance levels for the corresponding critical values
		    in percents.  The function returns critical values for a
		    differing set of significance levels depending on the
		    distribution that is being tested against.
		
		See Also
		--------
		kstest : The Kolmogorov-Smirnov test for goodness-of-fit.
		
		Notes
		-----
		Critical values provided are for the following significance levels:
		
		normal/exponential
		    15%, 10%, 5%, 2.5%, 1%
		logistic
		    25%, 10%, 5%, 2.5%, 1%, 0.5%
		Gumbel
		    25%, 10%, 5%, 2.5%, 1%
		
		If the returned statistic is larger than these critical values then
		for the corresponding significance level, the null hypothesis that
		the data come from the chosen distribution can be rejected.
		The returned statistic is referred to as 'A2' in the references.
		
		References
		----------
		.. [1] https://www.itl.nist.gov/div898/handbook/prc/section2/prc213.htm
		.. [2] Stephens, M. A. (1974). EDF Statistics for Goodness of Fit and
		       Some Comparisons, Journal of the American Statistical Association,
		       Vol. 69, pp. 730-737.
		.. [3] Stephens, M. A. (1976). Asymptotic Results for Goodness-of-Fit
		       Statistics with Unknown Parameters, Annals of Statistics, Vol. 4,
		       pp. 357-369.
		.. [4] Stephens, M. A. (1977). Goodness of Fit for the Extreme Value
		       Distribution, Biometrika, Vol. 64, pp. 583-588.
		.. [5] Stephens, M. A. (1977). Goodness of Fit with Special Reference
		       to Tests for Exponentiality , Technical Report No. 262,
		       Department of Statistics, Stanford University, Stanford, CA.
		.. [6] Stephens, M. A. (1979). Tests of Fit for the Logistic Distribution
		       Based on the Empirical Distribution Function, Biometrika, Vol. 66,
		       pp. 591-595.
	**/
	static public function anderson(x:Dynamic, ?dist:Dynamic):Float;
	/**
		The Anderson-Darling test for k-samples.
		
		The k-sample Anderson-Darling test is a modification of the
		one-sample Anderson-Darling test. It tests the null hypothesis
		that k-samples are drawn from the same population without having
		to specify the distribution function of that population. The
		critical values depend on the number of samples.
		
		Parameters
		----------
		samples : sequence of 1-D array_like
		    Array of sample data in arrays.
		midrank : bool, optional
		    Type of Anderson-Darling test which is computed. Default
		    (True) is the midrank test applicable to continuous and
		    discrete populations. If False, the right side empirical
		    distribution is used.
		
		Returns
		-------
		statistic : float
		    Normalized k-sample Anderson-Darling test statistic.
		critical_values : array
		    The critical values for significance levels 25%, 10%, 5%, 2.5%, 1%,
		    0.5%, 0.1%.
		significance_level : float
		    An approximate significance level at which the null hypothesis for the
		    provided samples can be rejected. The value is floored / capped at
		    0.1% / 25%.
		
		Raises
		------
		ValueError
		    If less than 2 samples are provided, a sample is empty, or no
		    distinct observations are in the samples.
		
		See Also
		--------
		ks_2samp : 2 sample Kolmogorov-Smirnov test
		anderson : 1 sample Anderson-Darling test
		
		Notes
		-----
		[1]_ defines three versions of the k-sample Anderson-Darling test:
		one for continuous distributions and two for discrete
		distributions, in which ties between samples may occur. The
		default of this routine is to compute the version based on the
		midrank empirical distribution function. This test is applicable
		to continuous and discrete data. If midrank is set to False, the
		right side empirical distribution is used for a test for discrete
		data. According to [1]_, the two discrete test statistics differ
		only slightly if a few collisions due to round-off errors occur in
		the test not adjusted for ties between samples.
		
		The critical values corresponding to the significance levels from 0.01
		to 0.25 are taken from [1]_. p-values are floored / capped
		at 0.1% / 25%. Since the range of critical values might be extended in
		future releases, it is recommended not to test ``p == 0.25``, but rather
		``p >= 0.25`` (analogously for the lower bound).
		
		.. versionadded:: 0.14.0
		
		References
		----------
		.. [1] Scholz, F. W and Stephens, M. A. (1987), K-Sample
		       Anderson-Darling Tests, Journal of the American Statistical
		       Association, Vol. 82, pp. 918-924.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		The null hypothesis that the two random samples come from the same
		distribution can be rejected at the 5% level because the returned
		test value is greater than the critical value for 5% (1.961) but
		not at the 2.5% level. The interpolation gives an approximate
		significance level of 3.2%:
		
		>>> stats.anderson_ksamp([rng.normal(size=50),
		... rng.normal(loc=0.5, size=30)])
		(1.974403288713695,
		  array([0.325, 1.226, 1.961, 2.718, 3.752, 4.592, 6.546]),
		  0.04991293614572478)
		
		
		The null hypothesis cannot be rejected for three samples from an
		identical distribution. The reported p-value (25%) has been capped and
		may not be very accurate (since it corresponds to the value 0.449
		whereas the statistic is -0.731):
		
		>>> stats.anderson_ksamp([rng.normal(size=50),
		... rng.normal(size=30), rng.normal(size=20)])
		(-0.29103725200789504,
		  array([ 0.44925884,  1.3052767 ,  1.9434184 ,  2.57696569,  3.41634856,
		  4.07210043, 5.56419101]),
		  0.25)
	**/
	static public function anderson_ksamp(samples:Dynamic, ?midrank:Dynamic):Float;
	/**
		An anglit continuous random variable.
		
		As an instance of the `rv_continuous` class, `anglit` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `anglit` is:
		
		.. math::
		
		    f(x) = \sin(2x + \pi/2) = \cos(2x)
		
		for :math:`-\pi/4 \le x \le \pi/4`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``anglit.pdf(x, loc, scale)`` is identically
		equivalent to ``anglit.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import anglit
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = anglit.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(anglit.ppf(0.01),
		...                 anglit.ppf(0.99), 100)
		>>> ax.plot(x, anglit.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='anglit pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = anglit()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = anglit.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], anglit.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = anglit.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function anglit(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform the Ansari-Bradley test for equal scale parameters.
		
		The Ansari-Bradley test ([1]_, [2]_) is a non-parametric test
		for the equality of the scale parameter of the distributions
		from which two samples were drawn. The null hypothesis states that
		the ratio of the scale of the distribution underlying `x` to the scale
		of the distribution underlying `y` is 1.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of sample data.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the ratio of scales is not equal to 1.
		    * 'less': the ratio of scales is less than 1.
		    * 'greater': the ratio of scales is greater than 1.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		statistic : float
		    The Ansari-Bradley test statistic.
		pvalue : float
		    The p-value of the hypothesis test.
		
		See Also
		--------
		fligner : A non-parametric test for the equality of k variances
		mood : A non-parametric test for the equality of two scale parameters
		
		Notes
		-----
		The p-value given is exact when the sample sizes are both less than
		55 and there are no ties, otherwise a normal approximation for the
		p-value is used.
		
		References
		----------
		.. [1] Ansari, A. R. and Bradley, R. A. (1960) Rank-sum tests for
		       dispersions, Annals of Mathematical Statistics, 31, 1174-1189.
		.. [2] Sprent, Peter and N.C. Smeeton.  Applied nonparametric
		       statistical methods.  3rd ed. Chapman and Hall/CRC. 2001.
		       Section 5.8.2.
		.. [3] Nathaniel E. Helwig "Nonparametric Dispersion and Equality
		       Tests" at http://users.stat.umn.edu/~helwig/notes/npde-Notes.pdf
		
		Examples
		--------
		>>> from scipy.stats import ansari
		>>> rng = np.random.default_rng()
		
		For these examples, we'll create three random data sets.  The first
		two, with sizes 35 and 25, are drawn from a normal distribution with
		mean 0 and standard deviation 2.  The third data set has size 25 and
		is drawn from a normal distribution with standard deviation 1.25.
		
		>>> x1 = rng.normal(loc=0, scale=2, size=35)
		>>> x2 = rng.normal(loc=0, scale=2, size=25)
		>>> x3 = rng.normal(loc=0, scale=1.25, size=25)
		
		First we apply `ansari` to `x1` and `x2`.  These samples are drawn
		from the same distribution, so we expect the Ansari-Bradley test
		should not lead us to conclude that the scales of the distributions
		are different.
		
		>>> ansari(x1, x2)
		AnsariResult(statistic=541.0, pvalue=0.9762532927399098)
		
		With a p-value close to 1, we cannot conclude that there is a
		significant difference in the scales (as expected).
		
		Now apply the test to `x1` and `x3`:
		
		>>> ansari(x1, x3)
		AnsariResult(statistic=425.0, pvalue=0.0003087020407974518)
		
		The probability of observing such an extreme value of the statistic
		under the null hypothesis of equal scales is only 0.03087%. We take this
		as evidence against the null hypothesis in favor of the alternative:
		the scales of the distributions from which the samples were drawn
		are not equal.
		
		We can use the `alternative` parameter to perform a one-tailed test.
		In the above example, the scale of `x1` is greater than `x3` and so
		the ratio of scales of `x1` and `x3` is greater than 1. This means
		that the p-value when ``alternative='greater'`` should be near 0 and
		hence we should be able to reject the null hypothesis:
		
		>>> ansari(x1, x3, alternative='greater')
		AnsariResult(statistic=425.0, pvalue=0.0001543510203987259)
		
		As we can see, the p-value is indeed quite low. Use of
		``alternative='less'`` should thus yield a large p-value:
		
		>>> ansari(x1, x3, alternative='less')
		AnsariResult(statistic=425.0, pvalue=0.9998643258449039)
	**/
	static public function ansari(x:Dynamic, y:Dynamic, ?alternative:Dynamic):Float;
	/**
		An arcsine continuous random variable.
		
		As an instance of the `rv_continuous` class, `arcsine` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `arcsine` is:
		
		.. math::
		
		    f(x) = \frac{1}{\pi \sqrt{x (1-x)}}
		
		for :math:`0 < x < 1`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``arcsine.pdf(x, loc, scale)`` is identically
		equivalent to ``arcsine.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import arcsine
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = arcsine.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(arcsine.ppf(0.01),
		...                 arcsine.ppf(0.99), 100)
		>>> ax.plot(x, arcsine.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='arcsine pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = arcsine()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = arcsine.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], arcsine.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = arcsine.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function arcsine(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Argus distribution
		
		As an instance of the `rv_continuous` class, `argus` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(chi, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, chi, loc=0, scale=1)
		    Probability density function.
		logpdf(x, chi, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, chi, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, chi, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, chi, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, chi, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, chi, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, chi, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, chi, loc=0, scale=1)
		    Non-central moment of order n
		stats(chi, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(chi, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(chi,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(chi, loc=0, scale=1)
		    Median of the distribution.
		mean(chi, loc=0, scale=1)
		    Mean of the distribution.
		var(chi, loc=0, scale=1)
		    Variance of the distribution.
		std(chi, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, chi, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `argus` is:
		
		.. math::
		
		    f(x, \chi) = \frac{\chi^3}{\sqrt{2\pi} \Psi(\chi)} x \sqrt{1-x^2}
		                 \exp(-\chi^2 (1 - x^2)/2)
		
		for :math:`0 < x < 1` and :math:`\chi > 0`, where
		
		.. math::
		
		    \Psi(\chi) = \Phi(\chi) - \chi \phi(\chi) - 1/2
		
		with :math:`\Phi` and :math:`\phi` being the CDF and PDF of a standard
		normal distribution, respectively.
		
		`argus` takes :math:`\chi` as shape a parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``argus.pdf(x, chi, loc, scale)`` is identically
		equivalent to ``argus.pdf(y, chi) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] "ARGUS distribution",
		       https://en.wikipedia.org/wiki/ARGUS_distribution
		
		.. versionadded:: 0.19.0
		
		Examples
		--------
		>>> from scipy.stats import argus
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> chi = 1
		>>> mean, var, skew, kurt = argus.stats(chi, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(argus.ppf(0.01, chi),
		...                 argus.ppf(0.99, chi), 100)
		>>> ax.plot(x, argus.pdf(x, chi),
		...        'r-', lw=5, alpha=0.6, label='argus pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = argus(chi)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = argus.ppf([0.001, 0.5, 0.999], chi)
		>>> np.allclose([0.001, 0.5, 0.999], argus.cdf(vals, chi))
		True
		
		Generate random numbers:
		
		>>> r = argus.rvs(chi, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function argus(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform a Barnard exact test on a 2x2 contingency table.
		
		Parameters
		----------
		table : array_like of ints
		    A 2x2 contingency table.  Elements should be non-negative integers.
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the null and alternative hypotheses. Default is 'two-sided'.
		    Please see explanations in the Notes section below.
		
		pooled : bool, optional
		    Whether to compute score statistic with pooled variance (as in
		    Student's t-test, for example) or unpooled variance (as in Welch's
		    t-test). Default is ``True``.
		
		n : int, optional
		    Number of sampling points used in the construction of the sampling
		    method. Note that this argument will automatically be converted to
		    the next higher power of 2 since `scipy.stats.qmc.Sobol` is used to
		    select sample points. Default is 32. Must be positive. In most cases,
		    32 points is enough to reach good precision. More points comes at
		    performance cost.
		
		Returns
		-------
		ber : BarnardExactResult
		    A result object with the following attributes.
		
		    statistic : float
		        The Wald statistic with pooled or unpooled variance, depending
		        on the user choice of `pooled`.
		
		    pvalue : float
		        P-value, the probability of obtaining a distribution at least as
		        extreme as the one that was actually observed, assuming that the
		        null hypothesis is true.
		
		See Also
		--------
		chi2_contingency : Chi-square test of independence of variables in a
		    contingency table.
		fisher_exact : Fisher exact test on a 2x2 contingency table.
		boschloo_exact : Boschloo's exact test on a 2x2 contingency table,
		    which is an uniformly more powerful alternative to Fisher's exact test.
		
		Notes
		-----
		Barnard's test is an exact test used in the analysis of contingency
		tables. It examines the association of two categorical variables, and
		is a more powerful alternative than Fisher's exact test
		for 2x2 contingency tables.
		
		Let's define :math:`X_0` a 2x2 matrix representing the observed sample,
		where each column stores the binomial experiment, as in the example
		below. Let's also define :math:`p_1, p_2` the theoretical binomial
		probabilities for  :math:`x_{11}` and :math:`x_{12}`. When using
		Barnard exact test, we can assert three different null hypotheses :
		
		- :math:`H_0 : p_1 \geq p_2` versus :math:`H_1 : p_1 < p_2`,
		  with `alternative` = "less"
		
		- :math:`H_0 : p_1 \leq p_2` versus :math:`H_1 : p_1 > p_2`,
		  with `alternative` = "greater"
		
		- :math:`H_0 : p_1 = p_2` versus :math:`H_1 : p_1 \neq p_2`,
		  with `alternative` = "two-sided" (default one)
		
		In order to compute Barnard's exact test, we are using the Wald
		statistic [3]_ with pooled or unpooled variance.
		Under the default assumption that both variances are equal
		(``pooled = True``), the statistic is computed as:
		
		.. math::
		
		    T(X) = \frac{
		        \hat{p}_1 - \hat{p}_2
		    }{
		        \sqrt{
		            \hat{p}(1 - \hat{p})
		            (\frac{1}{c_1} +
		            \frac{1}{c_2})
		        }
		    }
		
		with :math:`\hat{p}_1, \hat{p}_2` and :math:`\hat{p}` the estimator of
		:math:`p_1, p_2` and :math:`p`, the latter being the combined probability,
		given the assumption that :math:`p_1 = p_2`.
		
		If this assumption is invalid (``pooled = False``), the statistic is:
		
		.. math::
		
		    T(X) = \frac{
		        \hat{p}_1 - \hat{p}_2
		    }{
		        \sqrt{
		            \frac{\hat{p}_1 (1 - \hat{p}_1)}{c_1} +
		            \frac{\hat{p}_2 (1 - \hat{p}_2)}{c_2}
		        }
		    }
		
		The p-value is then computed as:
		
		.. math::
		
		    \sum
		        \binom{c_1}{x_{11}}
		        \binom{c_2}{x_{12}}
		        \pi^{x_{11} + x_{12}}
		        (1 - \pi)^{t - x_{11} - x_{12}}
		
		where the sum is over all  2x2 contingency tables :math:`X` such that:
		* :math:`T(X) \leq T(X_0)` when `alternative` = "less",
		* :math:`T(X) \geq T(X_0)` when `alternative` = "greater", or
		* :math:`T(X) \geq |T(X_0)|` when `alternative` = "two-sided".
		Above, :math:`c_1, c_2` are the sum of the columns 1 and 2,
		and :math:`t` the total (sum of the 4 sample's element).
		
		The returned p-value is the maximum p-value taken over the nuisance
		parameter :math:`\pi`, where :math:`0 \leq \pi \leq 1`.
		
		This function's complexity is :math:`O(n c_1 c_2)`, where `n` is the
		number of sample points.
		
		References
		----------
		.. [1] Barnard, G. A. "Significance Tests for 2x2 Tables". *Biometrika*.
		       34.1/2 (1947): 123-138. :doi:`dpgkg3`
		
		.. [2] Mehta, Cyrus R., and Pralay Senchaudhuri. "Conditional versus
		       unconditional exact tests for comparing two binomials."
		       *Cytel Software Corporation* 675 (2003): 1-5.
		
		.. [3] "Wald Test". *Wikipedia*. https://en.wikipedia.org/wiki/Wald_test
		
		Examples
		--------
		An example use of Barnard's test is presented in [2]_.
		
		    Consider the following example of a vaccine efficacy study
		    (Chan, 1998). In a randomized clinical trial of 30 subjects, 15 were
		    inoculated with a recombinant DNA influenza vaccine and the 15 were
		    inoculated with a placebo. Twelve of the 15 subjects in the placebo
		    group (80%) eventually became infected with influenza whereas for the
		    vaccine group, only 7 of the 15 subjects (47%) became infected. The
		    data are tabulated as a 2 x 2 table::
		
		            Vaccine  Placebo
		        Yes     7        12
		        No      8        3
		
		When working with statistical hypothesis testing, we usually use a
		threshold probability or significance level upon which we decide
		to reject the null hypothesis :math:`H_0`. Suppose we choose the common
		significance level of 5%.
		
		Our alternative hypothesis is that the vaccine will lower the chance of
		becoming infected with the virus; that is, the probability :math:`p_1` of
		catching the virus with the vaccine will be *less than* the probability
		:math:`p_2` of catching the virus without the vaccine.  Therefore, we call
		`barnard_exact` with the ``alternative="less"`` option:
		
		>>> import scipy.stats as stats
		>>> res = stats.barnard_exact([[7, 12], [8, 3]], alternative="less")
		>>> res.statistic
		-1.894...
		>>> res.pvalue
		0.03407...
		
		Under the null hypothesis that the vaccine will not lower the chance of
		becoming infected, the probability of obtaining test results at least as
		extreme as the observed data is approximately 3.4%. Since this p-value is
		less than our chosen significance level, we have evidence to reject
		:math:`H_0` in favor of the alternative.
		
		Suppose we had used Fisher's exact test instead:
		
		>>> _, pvalue = stats.fisher_exact([[7, 12], [8, 3]], alternative="less")
		>>> pvalue
		0.0640...
		
		With the same threshold significance of 5%, we would not have been able
		to reject the null hypothesis in favor of the alternative. As stated in
		[2]_, Barnard's test is uniformly more powerful than Fisher's exact test
		because Barnard's test does not condition on any margin. Fisher's test
		should only be used when both sets of marginals are fixed.
	**/
	static public function barnard_exact(table:Dynamic, ?alternative:Dynamic, ?pooled:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Perform Bartlett's test for equal variances.
		
		Bartlett's test tests the null hypothesis that all input samples
		are from populations with equal variances.  For samples
		from significantly non-normal populations, Levene's test
		`levene` is more robust.
		
		Parameters
		----------
		sample1, sample2,... : array_like
		    arrays of sample data.  Only 1d arrays are accepted, they may have
		    different lengths.
		
		Returns
		-------
		statistic : float
		    The test statistic.
		pvalue : float
		    The p-value of the test.
		
		See Also
		--------
		fligner : A non-parametric test for the equality of k variances
		levene : A robust parametric test for equality of k variances
		
		Notes
		-----
		Conover et al. (1981) examine many of the existing parametric and
		nonparametric tests by extensive simulations and they conclude that the
		tests proposed by Fligner and Killeen (1976) and Levene (1960) appear to be
		superior in terms of robustness of departures from normality and power
		([3]_).
		
		References
		----------
		.. [1]  https://www.itl.nist.gov/div898/handbook/eda/section3/eda357.htm
		
		.. [2]  Snedecor, George W. and Cochran, William G. (1989), Statistical
		          Methods, Eighth Edition, Iowa State University Press.
		
		.. [3] Park, C. and Lindsay, B. G. (1999). Robust Scale Estimation and
		       Hypothesis Testing based on Quadratic Inference Function. Technical
		       Report #99-03, Center for Likelihood Studies, Pennsylvania State
		       University.
		
		.. [4] Bartlett, M. S. (1937). Properties of Sufficiency and Statistical
		       Tests. Proceedings of the Royal Society of London. Series A,
		       Mathematical and Physical Sciences, Vol. 160, No.901, pp. 268-282.
		
		Examples
		--------
		Test whether or not the lists `a`, `b` and `c` come from populations
		with equal variances.
		
		>>> from scipy.stats import bartlett
		>>> a = [8.88, 9.12, 9.04, 8.98, 9.00, 9.08, 9.01, 8.85, 9.06, 8.99]
		>>> b = [8.88, 8.95, 9.29, 9.44, 9.15, 9.58, 8.36, 9.18, 8.67, 9.05]
		>>> c = [8.95, 9.12, 8.95, 8.85, 9.03, 8.84, 9.07, 8.98, 8.86, 8.98]
		>>> stat, p = bartlett(a, b, c)
		>>> p
		1.1254782518834628e-05
		
		The very small p-value suggests that the populations do not have equal
		variances.
		
		This is not surprising, given that the sample variance of `b` is much
		larger than that of `a` and `c`:
		
		>>> [np.var(x, ddof=1) for x in [a, b, c]]
		[0.007054444444444413, 0.13073888888888888, 0.008890000000000002]
	**/
	static public function bartlett(?args:python.VarArgs<Dynamic>):Float;
	/**
		Bayesian confidence intervals for the mean, var, and std.
		
		Parameters
		----------
		data : array_like
		    Input data, if multi-dimensional it is flattened to 1-D by `bayes_mvs`.
		    Requires 2 or more data points.
		alpha : float, optional
		    Probability that the returned confidence interval contains
		    the true parameter.
		
		Returns
		-------
		mean_cntr, var_cntr, std_cntr : tuple
		    The three results are for the mean, variance and standard deviation,
		    respectively.  Each result is a tuple of the form::
		
		        (center, (lower, upper))
		
		    with `center` the mean of the conditional pdf of the value given the
		    data, and `(lower, upper)` a confidence interval, centered on the
		    median, containing the estimate to a probability ``alpha``.
		
		See Also
		--------
		mvsdist
		
		Notes
		-----
		Each tuple of mean, variance, and standard deviation estimates represent
		the (center, (lower, upper)) with center the mean of the conditional pdf
		of the value given the data and (lower, upper) is a confidence interval
		centered on the median, containing the estimate to a probability
		``alpha``.
		
		Converts data to 1-D and assumes all data has the same mean and variance.
		Uses Jeffrey's prior for variance and std.
		
		Equivalent to ``tuple((x.mean(), x.interval(alpha)) for x in mvsdist(dat))``
		
		References
		----------
		T.E. Oliphant, "A Bayesian perspective on estimating mean, variance, and
		standard-deviation from data", https://scholarsarchive.byu.edu/facpub/278,
		2006.
		
		Examples
		--------
		First a basic example to demonstrate the outputs:
		
		>>> from scipy import stats
		>>> data = [6, 9, 12, 7, 8, 8, 13]
		>>> mean, var, std = stats.bayes_mvs(data)
		>>> mean
		Mean(statistic=9.0, minmax=(7.103650222612533, 10.896349777387467))
		>>> var
		Variance(statistic=10.0, minmax=(3.176724206..., 24.45910382...))
		>>> std
		Std_dev(statistic=2.9724954732045084, minmax=(1.7823367265645143, 4.945614605014631))
		
		Now we generate some normally distributed random data, and get estimates of
		mean and standard deviation with 95% confidence intervals for those
		estimates:
		
		>>> n_samples = 100000
		>>> data = stats.norm.rvs(size=n_samples)
		>>> res_mean, res_var, res_std = stats.bayes_mvs(data, alpha=0.95)
		
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.hist(data, bins=100, density=True, label='Histogram of data')
		>>> ax.vlines(res_mean.statistic, 0, 0.5, colors='r', label='Estimated mean')
		>>> ax.axvspan(res_mean.minmax[0],res_mean.minmax[1], facecolor='r',
		...            alpha=0.2, label=r'Estimated mean (95% limits)')
		>>> ax.vlines(res_std.statistic, 0, 0.5, colors='g', label='Estimated scale')
		>>> ax.axvspan(res_std.minmax[0],res_std.minmax[1], facecolor='g', alpha=0.2,
		...            label=r'Estimated scale (95% limits)')
		
		>>> ax.legend(fontsize=10)
		>>> ax.set_xlim([-4, 4])
		>>> ax.set_ylim([0, 0.5])
		>>> plt.show()
	**/
	static public function bayes_mvs(data:Dynamic, ?alpha:Dynamic):python.Tuple<Dynamic>;
	/**
		A Bernoulli discrete random variable.
		
		As an instance of the `rv_discrete` class, `bernoulli` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(p, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, p, loc=0)
		    Probability mass function.
		logpmf(k, p, loc=0)
		    Log of the probability mass function.
		cdf(k, p, loc=0)
		    Cumulative distribution function.
		logcdf(k, p, loc=0)
		    Log of the cumulative distribution function.
		sf(k, p, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, p, loc=0)
		    Log of the survival function.
		ppf(q, p, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, p, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(p, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(p, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(p,), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(p, loc=0)
		    Median of the distribution.
		mean(p, loc=0)
		    Mean of the distribution.
		var(p, loc=0)
		    Variance of the distribution.
		std(p, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, p, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability mass function for `bernoulli` is:
		
		.. math::
		
		   f(k) = \begin{cases}1-p  &\text{if } k = 0\\
		                       p    &\text{if } k = 1\end{cases}
		
		for :math:`k` in :math:`\{0, 1\}`, :math:`0 \leq p \leq 1`
		
		`bernoulli` takes :math:`p` as shape parameter,
		where :math:`p` is the probability of a single success
		and :math:`1-p` is the probability of a single failure.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``bernoulli.pmf(k, p, loc)`` is identically
		equivalent to ``bernoulli.pmf(k - loc, p)``.
		
		Examples
		--------
		>>> from scipy.stats import bernoulli
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> p = 0.3
		>>> mean, var, skew, kurt = bernoulli.stats(p, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(bernoulli.ppf(0.01, p),
		...               bernoulli.ppf(0.99, p))
		>>> ax.plot(x, bernoulli.pmf(x, p), 'bo', ms=8, label='bernoulli pmf')
		>>> ax.vlines(x, 0, bernoulli.pmf(x, p), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = bernoulli(p)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = bernoulli.cdf(x, p)
		>>> np.allclose(x, bernoulli.ppf(prob, p))
		True
		
		Generate random numbers:
		
		>>> r = bernoulli.rvs(p, size=1000)
	**/
	static public function bernoulli(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A beta continuous random variable.
		
		As an instance of the `rv_continuous` class, `beta` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, b, loc=0, scale=1)
		    Median of the distribution.
		mean(a, b, loc=0, scale=1)
		    Mean of the distribution.
		var(a, b, loc=0, scale=1)
		    Variance of the distribution.
		std(a, b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `beta` is:
		
		.. math::
		
		    f(x, a, b) = \frac{\Gamma(a+b) x^{a-1} (1-x)^{b-1}}
		                      {\Gamma(a) \Gamma(b)}
		
		for :math:`0 <= x <= 1`, :math:`a > 0`, :math:`b > 0`, where
		:math:`\Gamma` is the gamma function (`scipy.special.gamma`).
		
		`beta` takes :math:`a` and :math:`b` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``beta.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``beta.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import beta
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, b = 2.31, 0.627
		>>> mean, var, skew, kurt = beta.stats(a, b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(beta.ppf(0.01, a, b),
		...                 beta.ppf(0.99, a, b), 100)
		>>> ax.plot(x, beta.pdf(x, a, b),
		...        'r-', lw=5, alpha=0.6, label='beta pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = beta(a, b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = beta.ppf([0.001, 0.5, 0.999], a, b)
		>>> np.allclose([0.001, 0.5, 0.999], beta.cdf(vals, a, b))
		True
		
		Generate random numbers:
		
		>>> r = beta.rvs(a, b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function beta(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A beta-binomial discrete random variable.
		
		As an instance of the `rv_discrete` class, `betabinom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(n, a, b, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, n, a, b, loc=0)
		    Probability mass function.
		logpmf(k, n, a, b, loc=0)
		    Log of the probability mass function.
		cdf(k, n, a, b, loc=0)
		    Cumulative distribution function.
		logcdf(k, n, a, b, loc=0)
		    Log of the cumulative distribution function.
		sf(k, n, a, b, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, n, a, b, loc=0)
		    Log of the survival function.
		ppf(q, n, a, b, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, n, a, b, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(n, a, b, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(n, a, b, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(n, a, b), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(n, a, b, loc=0)
		    Median of the distribution.
		mean(n, a, b, loc=0)
		    Mean of the distribution.
		var(n, a, b, loc=0)
		    Variance of the distribution.
		std(n, a, b, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, n, a, b, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The beta-binomial distribution is a binomial distribution with a
		probability of success `p` that follows a beta distribution.
		
		The probability mass function for `betabinom` is:
		
		.. math::
		
		   f(k) = \binom{n}{k} \frac{B(k + a, n - k + b)}{B(a, b)}
		
		for :math:`k \in \{0, 1, \dots, n\}`, :math:`n \geq 0`, :math:`a > 0`,
		:math:`b > 0`, where :math:`B(a, b)` is the beta function.
		
		`betabinom` takes :math:`n`, :math:`a`, and :math:`b` as shape parameters.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Beta-binomial_distribution
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``betabinom.pmf(k, n, a, b, loc)`` is identically
		equivalent to ``betabinom.pmf(k - loc, n, a, b)``.
		
		.. versionadded:: 1.4.0
		
		See Also
		--------
		beta, binom
		
		Examples
		--------
		>>> from scipy.stats import betabinom
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> n, a, b = 5, 2.3, 0.63
		>>> mean, var, skew, kurt = betabinom.stats(n, a, b, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(betabinom.ppf(0.01, n, a, b),
		...               betabinom.ppf(0.99, n, a, b))
		>>> ax.plot(x, betabinom.pmf(x, n, a, b), 'bo', ms=8, label='betabinom pmf')
		>>> ax.vlines(x, 0, betabinom.pmf(x, n, a, b), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = betabinom(n, a, b)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = betabinom.cdf(x, n, a, b)
		>>> np.allclose(x, betabinom.ppf(prob, n, a, b))
		True
		
		Generate random numbers:
		
		>>> r = betabinom.rvs(n, a, b, size=1000)
	**/
	static public function betabinom(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A beta prime continuous random variable.
		
		As an instance of the `rv_continuous` class, `betaprime` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, b, loc=0, scale=1)
		    Median of the distribution.
		mean(a, b, loc=0, scale=1)
		    Mean of the distribution.
		var(a, b, loc=0, scale=1)
		    Variance of the distribution.
		std(a, b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `betaprime` is:
		
		.. math::
		
		    f(x, a, b) = \frac{x^{a-1} (1+x)^{-a-b}}{\beta(a, b)}
		
		for :math:`x >= 0`, :math:`a > 0`, :math:`b > 0`, where
		:math:`\beta(a, b)` is the beta function (see `scipy.special.beta`).
		
		`betaprime` takes ``a`` and ``b`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``betaprime.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``betaprime.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import betaprime
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, b = 5, 6
		>>> mean, var, skew, kurt = betaprime.stats(a, b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(betaprime.ppf(0.01, a, b),
		...                 betaprime.ppf(0.99, a, b), 100)
		>>> ax.plot(x, betaprime.pdf(x, a, b),
		...        'r-', lw=5, alpha=0.6, label='betaprime pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = betaprime(a, b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = betaprime.ppf([0.001, 0.5, 0.999], a, b)
		>>> np.allclose([0.001, 0.5, 0.999], betaprime.cdf(vals, a, b))
		True
		
		Generate random numbers:
		
		>>> r = betaprime.rvs(a, b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function betaprime(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute a binned statistic for one or more sets of data.
		
		This is a generalization of a histogram function.  A histogram divides
		the space into bins, and returns the count of the number of points in
		each bin.  This function allows the computation of the sum, mean, median,
		or other statistic of the values (or set of values) within each bin.
		
		Parameters
		----------
		x : (N,) array_like
		    A sequence of values to be binned.
		values : (N,) array_like or list of (N,) array_like
		    The data on which the statistic will be computed.  This must be
		    the same shape as `x`, or a set of sequences - each the same shape as
		    `x`.  If `values` is a set of sequences, the statistic will be computed
		    on each independently.
		statistic : string or callable, optional
		    The statistic to compute (default is 'mean').
		    The following statistics are available:
		
		      * 'mean' : compute the mean of values for points within each bin.
		        Empty bins will be represented by NaN.
		      * 'std' : compute the standard deviation within each bin. This
		        is implicitly calculated with ddof=0.
		      * 'median' : compute the median of values for points within each
		        bin. Empty bins will be represented by NaN.
		      * 'count' : compute the count of points within each bin.  This is
		        identical to an unweighted histogram.  `values` array is not
		        referenced.
		      * 'sum' : compute the sum of values for points within each bin.
		        This is identical to a weighted histogram.
		      * 'min' : compute the minimum of values for points within each bin.
		        Empty bins will be represented by NaN.
		      * 'max' : compute the maximum of values for point within each bin.
		        Empty bins will be represented by NaN.
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
		    ``bins[-1]``.  If the bin edges are specified, the number of bins will
		    be, (nx = len(bins)-1).
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
		binnumber: 1-D ndarray of ints
		    Indices of the bins (corresponding to `bin_edges`) in which each value
		    of `x` belongs.  Same length as `values`.  A binnumber of `i` means the
		    corresponding value is between (bin_edges[i-1], bin_edges[i]).
		
		See Also
		--------
		numpy.digitize, numpy.histogram, binned_statistic_2d, binned_statistic_dd
		
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
		
		First some basic examples:
		
		Create two evenly spaced bins in the range of the given sample, and sum the
		corresponding values in each of those bins:
		
		>>> values = [1.0, 1.0, 2.0, 1.5, 3.0]
		>>> stats.binned_statistic([1, 1, 2, 5, 7], values, 'sum', bins=2)
		BinnedStatisticResult(statistic=array([4. , 4.5]),
		        bin_edges=array([1., 4., 7.]), binnumber=array([1, 1, 1, 2, 2]))
		
		Multiple arrays of values can also be passed.  The statistic is calculated
		on each set independently:
		
		>>> values = [[1.0, 1.0, 2.0, 1.5, 3.0], [2.0, 2.0, 4.0, 3.0, 6.0]]
		>>> stats.binned_statistic([1, 1, 2, 5, 7], values, 'sum', bins=2)
		BinnedStatisticResult(statistic=array([[4. , 4.5],
		       [8. , 9. ]]), bin_edges=array([1., 4., 7.]),
		       binnumber=array([1, 1, 1, 2, 2]))
		
		>>> stats.binned_statistic([1, 2, 1, 2, 4], np.arange(5), statistic='mean',
		...                        bins=3)
		BinnedStatisticResult(statistic=array([1., 2., 4.]),
		        bin_edges=array([1., 2., 3., 4.]),
		        binnumber=array([1, 2, 1, 2, 3]))
		
		As a second example, we now generate some random data of sailing boat speed
		as a function of wind speed, and then determine how fast our boat is for
		certain wind speeds:
		
		>>> rng = np.random.default_rng()
		>>> windspeed = 8 * rng.random(500)
		>>> boatspeed = .3 * windspeed**.5 + .2 * rng.random(500)
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
		>>> plt.hist(samples, bins=50, density=True, histtype='stepfilled',
		...          alpha=0.2, label='histogram of data')
		>>> plt.plot(x, x_pdf, 'r-', label='analytical pdf')
		>>> plt.hlines(bin_means, bin_edges[:-1], bin_edges[1:], colors='g', lw=2,
		...            label='binned statistic of data')
		>>> plt.plot((binnumber - 0.5) * bin_width, x_pdf, 'g.', alpha=0.5)
		>>> plt.legend(fontsize=10)
		>>> plt.show()
	**/
	static public function binned_statistic(x:Dynamic, values:Dynamic, ?statistic:Dynamic, ?bins:Dynamic, ?range:Dynamic):Array<Dynamic>;
	/**
		Compute a bidimensional binned statistic for one or more sets of data.
		
		This is a generalization of a histogram2d function.  A histogram divides
		the space into bins, and returns the count of the number of points in
		each bin.  This function allows the computation of the sum, mean, median,
		or other statistic of the values (or set of values) within each bin.
		
		Parameters
		----------
		x : (N,) array_like
		    A sequence of values to be binned along the first dimension.
		y : (N,) array_like
		    A sequence of values to be binned along the second dimension.
		values : (N,) array_like or list of (N,) array_like
		    The data on which the statistic will be computed.  This must be
		    the same shape as `x`, or a list of sequences - each with the same
		    shape as `x`.  If `values` is such a list, the statistic will be
		    computed on each independently.
		statistic : string or callable, optional
		    The statistic to compute (default is 'mean').
		    The following statistics are available:
		
		      * 'mean' : compute the mean of values for points within each bin.
		        Empty bins will be represented by NaN.
		      * 'std' : compute the standard deviation within each bin. This
		        is implicitly calculated with ddof=0.
		      * 'median' : compute the median of values for points within each
		        bin. Empty bins will be represented by NaN.
		      * 'count' : compute the count of points within each bin.  This is
		        identical to an unweighted histogram.  `values` array is not
		        referenced.
		      * 'sum' : compute the sum of values for points within each bin.
		        This is identical to a weighted histogram.
		      * 'min' : compute the minimum of values for points within each bin.
		        Empty bins will be represented by NaN.
		      * 'max' : compute the maximum of values for point within each bin.
		        Empty bins will be represented by NaN.
		      * function : a user-defined function which takes a 1D array of
		        values, and outputs a single numerical statistic. This function
		        will be called on the values in each bin.  Empty bins will be
		        represented by function([]), or NaN if this returns an error.
		
		bins : int or [int, int] or array_like or [array, array], optional
		    The bin specification:
		
		      * the number of bins for the two dimensions (nx = ny = bins),
		      * the number of bins in each dimension (nx, ny = bins),
		      * the bin edges for the two dimensions (x_edge = y_edge = bins),
		      * the bin edges in each dimension (x_edge, y_edge = bins).
		
		    If the bin edges are specified, the number of bins will be,
		    (nx = len(x_edge)-1, ny = len(y_edge)-1).
		
		range : (2,2) array_like, optional
		    The leftmost and rightmost edges of the bins along each dimension
		    (if not specified explicitly in the `bins` parameters):
		    [[xmin, xmax], [ymin, ymax]]. All values outside of this range will be
		    considered outliers and not tallied in the histogram.
		expand_binnumbers : bool, optional
		    'False' (default): the returned `binnumber` is a shape (N,) array of
		    linearized bin indices.
		    'True': the returned `binnumber` is 'unraveled' into a shape (2,N)
		    ndarray, where each row gives the bin numbers in the corresponding
		    dimension.
		    See the `binnumber` returned value, and the `Examples` section.
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		statistic : (nx, ny) ndarray
		    The values of the selected statistic in each two-dimensional bin.
		x_edge : (nx + 1) ndarray
		    The bin edges along the first dimension.
		y_edge : (ny + 1) ndarray
		    The bin edges along the second dimension.
		binnumber : (N,) array of ints or (2,N) ndarray of ints
		    This assigns to each element of `sample` an integer that represents the
		    bin in which this observation falls.  The representation depends on the
		    `expand_binnumbers` argument.  See `Notes` for details.
		
		
		See Also
		--------
		numpy.digitize, numpy.histogram2d, binned_statistic, binned_statistic_dd
		
		Notes
		-----
		Binedges:
		All but the last (righthand-most) bin is half-open.  In other words, if
		`bins` is ``[1, 2, 3, 4]``, then the first bin is ``[1, 2)`` (including 1,
		but excluding 2) and the second ``[2, 3)``.  The last bin, however, is
		``[3, 4]``, which *includes* 4.
		
		`binnumber`:
		This returned argument assigns to each element of `sample` an integer that
		represents the bin in which it belongs.  The representation depends on the
		`expand_binnumbers` argument. If 'False' (default): The returned
		`binnumber` is a shape (N,) array of linearized indices mapping each
		element of `sample` to its corresponding bin (using row-major ordering).
		Note that the returned linearized bin indices are used for an array with
		extra bins on the outer binedges to capture values outside of the defined
		bin bounds.
		If 'True': The returned `binnumber` is a shape (2,N) ndarray where
		each row indicates bin placements for each dimension respectively.  In each
		dimension, a binnumber of `i` means the corresponding value is between
		(D_edge[i-1], D_edge[i]), where 'D' is either 'x' or 'y'.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy import stats
		
		Calculate the counts with explicit bin-edges:
		
		>>> x = [0.1, 0.1, 0.1, 0.6]
		>>> y = [2.1, 2.6, 2.1, 2.1]
		>>> binx = [0.0, 0.5, 1.0]
		>>> biny = [2.0, 2.5, 3.0]
		>>> ret = stats.binned_statistic_2d(x, y, None, 'count', bins=[binx, biny])
		>>> ret.statistic
		array([[2., 1.],
		       [1., 0.]])
		
		The bin in which each sample is placed is given by the `binnumber`
		returned parameter.  By default, these are the linearized bin indices:
		
		>>> ret.binnumber
		array([5, 6, 5, 9])
		
		The bin indices can also be expanded into separate entries for each
		dimension using the `expand_binnumbers` parameter:
		
		>>> ret = stats.binned_statistic_2d(x, y, None, 'count', bins=[binx, biny],
		...                                 expand_binnumbers=True)
		>>> ret.binnumber
		array([[1, 1, 1, 2],
		       [1, 2, 1, 1]])
		
		Which shows that the first three elements belong in the xbin 1, and the
		fourth into xbin 2; and so on for y.
	**/
	static public function binned_statistic_2d(x:Dynamic, y:Dynamic, values:Dynamic, ?statistic:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?expand_binnumbers:Dynamic):Dynamic;
	/**
		Compute a multidimensional binned statistic for a set of data.
		
		This is a generalization of a histogramdd function.  A histogram divides
		the space into bins, and returns the count of the number of points in
		each bin.  This function allows the computation of the sum, mean, median,
		or other statistic of the values within each bin.
		
		Parameters
		----------
		sample : array_like
		    Data to histogram passed as a sequence of N arrays of length D, or
		    as an (N,D) array.
		values : (N,) array_like or list of (N,) array_like
		    The data on which the statistic will be computed.  This must be
		    the same shape as `sample`, or a list of sequences - each with the
		    same shape as `sample`.  If `values` is such a list, the statistic
		    will be computed on each independently.
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
		      * 'std' : compute the standard deviation within each bin. This
		        is implicitly calculated with ddof=0. If the number of values
		        within a given bin is 0 or 1, the computed standard deviation value
		        will be 0 for the bin.
		      * 'min' : compute the minimum of values for points within each bin.
		        Empty bins will be represented by NaN.
		      * 'max' : compute the maximum of values for point within each bin.
		        Empty bins will be represented by NaN.
		      * function : a user-defined function which takes a 1D array of
		        values, and outputs a single numerical statistic. This function
		        will be called on the values in each bin.  Empty bins will be
		        represented by function([]), or NaN if this returns an error.
		
		bins : sequence or positive int, optional
		    The bin specification must be in one of the following forms:
		
		      * A sequence of arrays describing the bin edges along each dimension.
		      * The number of bins for each dimension (nx, ny, ... = bins).
		      * The number of bins for all dimensions (nx = ny = ... = bins).
		range : sequence, optional
		    A sequence of lower and upper bin edges to be used if the edges are
		    not given explicitly in `bins`. Defaults to the minimum and maximum
		    values along each dimension.
		expand_binnumbers : bool, optional
		    'False' (default): the returned `binnumber` is a shape (N,) array of
		    linearized bin indices.
		    'True': the returned `binnumber` is 'unraveled' into a shape (D,N)
		    ndarray, where each row gives the bin numbers in the corresponding
		    dimension.
		    See the `binnumber` returned value, and the `Examples` section of
		    `binned_statistic_2d`.
		binned_statistic_result : binnedStatisticddResult
		    Result of a previous call to the function in order to reuse bin edges
		    and bin numbers with new values and/or a different statistic.
		    To reuse bin numbers, `expand_binnumbers` must have been set to False
		    (the default)
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		statistic : ndarray, shape(nx1, nx2, nx3,...)
		    The values of the selected statistic in each two-dimensional bin.
		bin_edges : list of ndarrays
		    A list of D arrays describing the (nxi + 1) bin edges for each
		    dimension.
		binnumber : (N,) array of ints or (D,N) ndarray of ints
		    This assigns to each element of `sample` an integer that represents the
		    bin in which this observation falls.  The representation depends on the
		    `expand_binnumbers` argument.  See `Notes` for details.
		
		
		See Also
		--------
		numpy.digitize, numpy.histogramdd, binned_statistic, binned_statistic_2d
		
		Notes
		-----
		Binedges:
		All but the last (righthand-most) bin is half-open in each dimension.  In
		other words, if `bins` is ``[1, 2, 3, 4]``, then the first bin is
		``[1, 2)`` (including 1, but excluding 2) and the second ``[2, 3)``.  The
		last bin, however, is ``[3, 4]``, which *includes* 4.
		
		`binnumber`:
		This returned argument assigns to each element of `sample` an integer that
		represents the bin in which it belongs.  The representation depends on the
		`expand_binnumbers` argument. If 'False' (default): The returned
		`binnumber` is a shape (N,) array of linearized indices mapping each
		element of `sample` to its corresponding bin (using row-major ordering).
		If 'True': The returned `binnumber` is a shape (D,N) ndarray where
		each row indicates bin placements for each dimension respectively.  In each
		dimension, a binnumber of `i` means the corresponding value is between
		(bin_edges[D][i-1], bin_edges[D][i]), for each dimension 'D'.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> from mpl_toolkits.mplot3d import Axes3D
		
		Take an array of 600 (x, y) coordinates as an example.
		`binned_statistic_dd` can handle arrays of higher dimension `D`. But a plot
		of dimension `D+1` is required.
		
		>>> mu = np.array([0., 1.])
		>>> sigma = np.array([[1., -0.5],[-0.5, 1.5]])
		>>> multinormal = stats.multivariate_normal(mu, sigma)
		>>> data = multinormal.rvs(size=600, random_state=235412)
		>>> data.shape
		(600, 2)
		
		Create bins and count how many arrays fall in each bin:
		
		>>> N = 60
		>>> x = np.linspace(-3, 3, N)
		>>> y = np.linspace(-3, 4, N)
		>>> ret = stats.binned_statistic_dd(data, np.arange(600), bins=[x, y],
		...                                 statistic='count')
		>>> bincounts = ret.statistic
		
		Set the volume and the location of bars:
		
		>>> dx = x[1] - x[0]
		>>> dy = y[1] - y[0]
		>>> x, y = np.meshgrid(x[:-1]+dx/2, y[:-1]+dy/2)
		>>> z = 0
		
		>>> bincounts = bincounts.ravel()
		>>> x = x.ravel()
		>>> y = y.ravel()
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111, projection='3d')
		>>> with np.errstate(divide='ignore'):   # silence random axes3d warning
		...     ax.bar3d(x, y, z, dx, dy, bincounts)
		
		Reuse bin numbers and bin edges with new values:
		
		>>> ret2 = stats.binned_statistic_dd(data, -np.arange(600),
		...                                  binned_statistic_result=ret,
		...                                  statistic='mean')
	**/
	static public function binned_statistic_dd(sample:Dynamic, values:Dynamic, ?statistic:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?expand_binnumbers:Dynamic, ?binned_statistic_result:Dynamic):Dynamic;
	/**
		A binomial discrete random variable.
		
		As an instance of the `rv_discrete` class, `binom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(n, p, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, n, p, loc=0)
		    Probability mass function.
		logpmf(k, n, p, loc=0)
		    Log of the probability mass function.
		cdf(k, n, p, loc=0)
		    Cumulative distribution function.
		logcdf(k, n, p, loc=0)
		    Log of the cumulative distribution function.
		sf(k, n, p, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, n, p, loc=0)
		    Log of the survival function.
		ppf(q, n, p, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, n, p, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(n, p, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(n, p, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(n, p), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(n, p, loc=0)
		    Median of the distribution.
		mean(n, p, loc=0)
		    Mean of the distribution.
		var(n, p, loc=0)
		    Variance of the distribution.
		std(n, p, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, n, p, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability mass function for `binom` is:
		
		.. math::
		
		   f(k) = \binom{n}{k} p^k (1-p)^{n-k}
		
		for :math:`k \in \{0, 1, \dots, n\}`, :math:`0 \leq p \leq 1`
		
		`binom` takes :math:`n` and :math:`p` as shape parameters,
		where :math:`p` is the probability of a single success
		and :math:`1-p` is the probability of a single failure.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``binom.pmf(k, n, p, loc)`` is identically
		equivalent to ``binom.pmf(k - loc, n, p)``.
		
		Examples
		--------
		>>> from scipy.stats import binom
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> n, p = 5, 0.4
		>>> mean, var, skew, kurt = binom.stats(n, p, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(binom.ppf(0.01, n, p),
		...               binom.ppf(0.99, n, p))
		>>> ax.plot(x, binom.pmf(x, n, p), 'bo', ms=8, label='binom pmf')
		>>> ax.vlines(x, 0, binom.pmf(x, n, p), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = binom(n, p)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = binom.cdf(x, n, p)
		>>> np.allclose(x, binom.ppf(prob, n, p))
		True
		
		Generate random numbers:
		
		>>> r = binom.rvs(n, p, size=1000)
		
		See Also
		--------
		hypergeom, nbinom, nhypergeom
	**/
	static public function binom(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform a test that the probability of success is p.
		
		Note: `binom_test` is deprecated; it is recommended that `binomtest`
		be used instead.
		
		This is an exact, two-sided test of the null hypothesis
		that the probability of success in a Bernoulli experiment
		is `p`.
		
		Parameters
		----------
		x : int or array_like
		    The number of successes, or if x has length 2, it is the
		    number of successes and the number of failures.
		n : int
		    The number of trials.  This is ignored if x gives both the
		    number of successes and failures.
		p : float, optional
		    The hypothesized probability of success.  ``0 <= p <= 1``. The
		    default value is ``p = 0.5``.
		alternative : {'two-sided', 'greater', 'less'}, optional
		    Indicates the alternative hypothesis. The default value is
		    'two-sided'.
		
		Returns
		-------
		p-value : float
		    The p-value of the hypothesis test.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Binomial_test
		
		Examples
		--------
		>>> from scipy import stats
		
		A car manufacturer claims that no more than 10% of their cars are unsafe.
		15 cars are inspected for safety, 3 were found to be unsafe. Test the
		manufacturer's claim:
		
		>>> stats.binom_test(3, n=15, p=0.1, alternative='greater')
		0.18406106910639114
		
		The null hypothesis cannot be rejected at the 5% level of significance
		because the returned p-value is greater than the critical value of 5%.
	**/
	static public function binom_test(x:Dynamic, ?n:Dynamic, ?p:Dynamic, ?alternative:Dynamic):Float;
	/**
		Perform a test that the probability of success is p.
		
		The binomial test [1]_ is a test of the null hypothesis that the
		probability of success in a Bernoulli experiment is `p`.
		
		Details of the test can be found in many texts on statistics, such
		as section 24.5 of [2]_.
		
		Parameters
		----------
		k : int
		    The number of successes.
		n : int
		    The number of trials.
		p : float, optional
		    The hypothesized probability of success, i.e. the expected
		    proportion of successes.  The value must be in the interval
		    ``0 <= p <= 1``. The default value is ``p = 0.5``.
		alternative : {'two-sided', 'greater', 'less'}, optional
		    Indicates the alternative hypothesis. The default value is
		    'two-sided'.
		
		Returns
		-------
		result : `~scipy.stats._result_classes.BinomTestResult` instance
		    The return value is an object with the following attributes:
		
		    k : int
		        The number of successes (copied from `binomtest` input).
		    n : int
		        The number of trials (copied from `binomtest` input).
		    alternative : str
		        Indicates the alternative hypothesis specified in the input
		        to `binomtest`.  It will be one of ``'two-sided'``, ``'greater'``,
		        or ``'less'``.
		    pvalue : float
		        The p-value of the hypothesis test.
		    proportion_estimate : float
		        The estimate of the proportion of successes.
		
		    The object has the following methods:
		
		    proportion_ci(confidence_level=0.95, method='exact') :
		        Compute the confidence interval for ``proportion_estimate``.
		
		Notes
		-----
		.. versionadded:: 1.7.0
		
		References
		----------
		.. [1] Binomial test, https://en.wikipedia.org/wiki/Binomial_test
		.. [2] Jerrold H. Zar, Biostatistical Analysis (fifth edition),
		       Prentice Hall, Upper Saddle River, New Jersey USA (2010)
		
		Examples
		--------
		>>> from scipy.stats import binomtest
		
		A car manufacturer claims that no more than 10% of their cars are unsafe.
		15 cars are inspected for safety, 3 were found to be unsafe. Test the
		manufacturer's claim:
		
		>>> result = binomtest(3, n=15, p=0.1, alternative='greater')
		>>> result.pvalue
		0.18406106910639114
		
		The null hypothesis cannot be rejected at the 5% level of significance
		because the returned p-value is greater than the critical value of 5%.
		
		The estimated proportion is simply ``3/15``:
		
		>>> result.proportion_estimate
		0.2
		
		We can use the `proportion_ci()` method of the result to compute the
		confidence interval of the estimate:
		
		>>> result.proportion_ci(confidence_level=0.95)
		ConfidenceInterval(low=0.05684686759024681, high=1.0)
	**/
	static public function binomtest(k:Dynamic, n:Dynamic, ?p:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		A Boltzmann (Truncated Discrete Exponential) random variable.
		
		As an instance of the `rv_discrete` class, `boltzmann` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(lambda_, N, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, lambda_, N, loc=0)
		    Probability mass function.
		logpmf(k, lambda_, N, loc=0)
		    Log of the probability mass function.
		cdf(k, lambda_, N, loc=0)
		    Cumulative distribution function.
		logcdf(k, lambda_, N, loc=0)
		    Log of the cumulative distribution function.
		sf(k, lambda_, N, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, lambda_, N, loc=0)
		    Log of the survival function.
		ppf(q, lambda_, N, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, lambda_, N, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(lambda_, N, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(lambda_, N, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(lambda_, N), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(lambda_, N, loc=0)
		    Median of the distribution.
		mean(lambda_, N, loc=0)
		    Mean of the distribution.
		var(lambda_, N, loc=0)
		    Variance of the distribution.
		std(lambda_, N, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, lambda_, N, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability mass function for `boltzmann` is:
		
		.. math::
		
		    f(k) = (1-\exp(-\lambda)) \exp(-\lambda k) / (1-\exp(-\lambda N))
		
		for :math:`k = 0,..., N-1`.
		
		`boltzmann` takes :math:`\lambda > 0` and :math:`N > 0` as shape parameters.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``boltzmann.pmf(k, lambda_, N, loc)`` is identically
		equivalent to ``boltzmann.pmf(k - loc, lambda_, N)``.
		
		Examples
		--------
		>>> from scipy.stats import boltzmann
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> lambda_, N = 1.4, 19
		>>> mean, var, skew, kurt = boltzmann.stats(lambda_, N, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(boltzmann.ppf(0.01, lambda_, N),
		...               boltzmann.ppf(0.99, lambda_, N))
		>>> ax.plot(x, boltzmann.pmf(x, lambda_, N), 'bo', ms=8, label='boltzmann pmf')
		>>> ax.vlines(x, 0, boltzmann.pmf(x, lambda_, N), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = boltzmann(lambda_, N)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = boltzmann.cdf(x, lambda_, N)
		>>> np.allclose(x, boltzmann.ppf(prob, lambda_, N))
		True
		
		Generate random numbers:
		
		>>> r = boltzmann.rvs(lambda_, N, size=1000)
	**/
	static public function boltzmann(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute a two-sided bootstrap confidence interval of a statistic.
		
		When `method` is ``'percentile'``, a bootstrap confidence interval is
		computed according to the following procedure.
		
		1. Resample the data: for each sample in `data` and for each of
		   `n_resamples`, take a random sample of the original sample
		   (with replacement) of the same size as the original sample.
		
		2. Compute the bootstrap distribution of the statistic: for each set of
		   resamples, compute the test statistic.
		
		3. Determine the confidence interval: find the interval of the bootstrap
		   distribution that is
		
		   - symmetric about the median and
		   - contains `confidence_level` of the resampled statistic values.
		
		While the ``'percentile'`` method is the most intuitive, it is rarely
		used in practice. Two more common methods are available, ``'basic'``
		('reverse percentile') and ``'BCa'`` ('bias-corrected and accelerated');
		they differ in how step 3 is performed.
		
		If the samples in `data` are  taken at random from their respective
		distributions :math:`n` times, the confidence interval returned by
		`bootstrap` will contain the true value of the statistic for those
		distributions approximately `confidence_level`:math:`\, \times \, n` times.
		
		Parameters
		----------
		data : sequence of array-like
		     Each element of data is a sample from an underlying distribution.
		statistic : callable
		    Statistic for which the confidence interval is to be calculated.
		    `statistic` must be a callable that accepts ``len(data)`` samples
		    as separate arguments and returns the resulting statistic.
		    If `vectorized` is set ``True``,
		    `statistic` must also accept a keyword argument `axis` and be
		    vectorized to compute the statistic along the provided `axis`.
		vectorized : bool, default: ``True``
		    If `vectorized` is set ``False``, `statistic` will not be passed
		    keyword argument `axis`, and is assumed to calculate the statistic
		    only for 1D samples.
		paired : bool, default: ``False``
		    Whether the statistic treats corresponding elements of the samples
		    in `data` as paired.
		axis : int, default: ``0``
		    The axis of the samples in `data` along which the `statistic` is
		    calculated.
		confidence_level : float, default: ``0.95``
		    The confidence level of the confidence interval.
		n_resamples : int, default: ``9999``
		    The number of resamples performed to form the bootstrap distribution
		    of the statistic.
		batch : int, optional
		    The number of resamples to process in each vectorized call to
		    `statistic`. Memory usage is O(`batch`*``n``), where ``n`` is the
		    sample size. Default is ``None``, in which case ``batch = n_resamples``
		    (or ``batch = max(n_resamples, n)`` for ``method='BCa'``).
		method : {'percentile', 'basic', 'bca'}, default: ``'BCa'``
		    Whether to return the 'percentile' bootstrap confidence interval
		    (``'percentile'``), the 'reverse' or the bias-corrected and accelerated
		    bootstrap confidence interval (``'BCa'``).
		    Note that only ``'percentile'`` and ``'basic'`` support multi-sample
		    statistics at this time.
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    Pseudorandom number generator state used to generate resamples.
		
		    If `random_state` is ``None`` (or `np.random`), the
		    `numpy.random.RandomState` singleton is used.
		    If `random_state` is an int, a new ``RandomState`` instance is used,
		    seeded with `random_state`.
		    If `random_state` is already a ``Generator`` or ``RandomState``
		    instance then that instance is used.
		
		Returns
		-------
		res : BootstrapResult
		    An object with attributes:
		
		    confidence_interval : ConfidenceInterval
		        The bootstrap confidence interval as an instance of
		        `collections.namedtuple` with attributes `low` and `high`.
		    standard_error : float or ndarray
		        The bootstrap standard error, that is, the sample standard
		        deviation of the bootstrap distribution
		
		Notes
		-----
		Elements of the confidence interval may be NaN for ``method='BCa'`` if
		the bootstrap distribution is degenerate (e.g. all elements are identical).
		In this case, consider using another `method` or inspecting `data` for
		indications that other analysis may be more appropriate (e.g. all
		observations are identical).
		
		References
		----------
		.. [1] B. Efron and R. J. Tibshirani, An Introduction to the Bootstrap,
		   Chapman & Hall/CRC, Boca Raton, FL, USA (1993)
		.. [2] Nathaniel E. Helwig, "Bootstrap Confidence Intervals",
		   http://users.stat.umn.edu/~helwig/notes/bootci-Notes.pdf
		.. [3] Bootstrapping (statistics), Wikipedia,
		   https://en.wikipedia.org/wiki/Bootstrapping_%28statistics%29
		
		Examples
		--------
		Suppose we have sampled data from an unknown distribution.
		
		>>> import numpy as np
		>>> rng = np.random.default_rng()
		>>> from scipy.stats import norm
		>>> dist = norm(loc=2, scale=4)  # our "unknown" distribution
		>>> data = dist.rvs(size=100, random_state=rng)
		
		We are interested int the standard deviation of the distribution.
		
		>>> std_true = dist.std()      # the true value of the statistic
		>>> print(std_true)
		4.0
		>>> std_sample = np.std(data)  # the sample statistic
		>>> print(std_sample)
		3.9460644295563863
		
		We can calculate a 90% confidence interval of the statistic using
		`bootstrap`.
		
		>>> from scipy.stats import bootstrap
		>>> data = (data,)  # samples must be in a sequence
		>>> res = bootstrap(data, np.std, confidence_level=0.9,
		...                 random_state=rng)
		>>> print(res.confidence_interval)
		ConfidenceInterval(low=3.57655333533867, high=4.382043696342881)
		
		If we sample from the distribution 1000 times and form a bootstrap
		confidence interval for each sample, the confidence interval
		contains the true value of the statistic approximately 900 times.
		
		>>> n_trials = 1000
		>>> ci_contains_true_std = 0
		>>> for i in range(n_trials):
		...    data = (dist.rvs(size=100, random_state=rng),)
		...    ci = bootstrap(data, np.std, confidence_level=0.9, n_resamples=1000,
		...                   random_state=rng).confidence_interval
		...    if ci[0] < std_true < ci[1]:
		...        ci_contains_true_std += 1
		>>> print(ci_contains_true_std)
		875
		
		Rather than writing a loop, we can also determine the confidence intervals
		for all 1000 samples at once.
		
		>>> data = (dist.rvs(size=(n_trials, 100), random_state=rng),)
		>>> res = bootstrap(data, np.std, axis=-1, confidence_level=0.9,
		...                 n_resamples=1000, random_state=rng)
		>>> ci_l, ci_u = res.confidence_interval
		
		Here, `ci_l` and `ci_u` contain the confidence interval for each of the
		``n_trials = 1000`` samples.
		
		>>> print(ci_l[995:])
		[3.77729695 3.75090233 3.45829131 3.34078217 3.48072829]
		>>> print(ci_u[995:])
		[4.88316666 4.86924034 4.32032996 4.2822427  4.59360598]
		
		And again, approximately 90% contain the true value, ``std_true = 4``.
		
		>>> print(np.sum((ci_l < std_true) & (std_true < ci_u)))
		900
		
		`bootstrap` can also be used to estimate confidence intervals of
		multi-sample statistics, including those calculated by hypothesis
		tests. `scipy.stats.mood` perform's Mood's test for equal scale parameters,
		and it returns two outputs: a statistic, and a p-value. To get a
		confidence interval for the test statistic, we first wrap
		`scipy.stats.mood` in a function that accepts two sample arguments,
		accepts an `axis` keyword argument, and returns only the statistic.
		
		>>> from scipy.stats import mood
		>>> def my_statistic(sample1, sample2, axis):
		...     statistic, _ = mood(sample1, sample2, axis=-1)
		...     return statistic
		
		Here, we use the 'percentile' method with the default 95% confidence level.
		
		>>> sample1 = norm.rvs(scale=1, size=100, random_state=rng)
		>>> sample2 = norm.rvs(scale=2, size=100, random_state=rng)
		>>> data = (sample1, sample2)
		>>> res = bootstrap(data, my_statistic, method='basic', random_state=rng)
		>>> print(mood(sample1, sample2)[0])  # element 0 is the statistic
		-5.521109549096542
		>>> print(res.confidence_interval)
		ConfidenceInterval(low=-7.255994487314675, high=-4.016202624747605)
		
		The bootstrap estimate of the standard error is also available.
		
		>>> print(res.standard_error)
		0.8344963846318795
		
		Paired-sample statistics work, too. For example, consider the Pearson
		correlation coefficient.
		
		>>> from scipy.stats import pearsonr
		>>> n = 100
		>>> x = np.linspace(0, 10, n)
		>>> y = x + rng.uniform(size=n)
		>>> print(pearsonr(x, y)[0])  # element 0 is the statistic
		0.9962357936065914
		
		We wrap `pearsonr` so that it returns only the statistic.
		
		>>> def my_statistic(x, y):
		...     return pearsonr(x, y)[0]
		
		We call `bootstrap` using ``paired=True``.
		Also, since ``my_statistic`` isn't vectorized to calculate the statistic
		along a given axis, we pass in ``vectorized=False``.
		
		>>> res = bootstrap((x, y), my_statistic, vectorized=False, paired=True,
		...                 random_state=rng)
		>>> print(res.confidence_interval)
		ConfidenceInterval(low=0.9950085825848624, high=0.9971212407917498)
	**/
	static public function bootstrap(data:Dynamic, statistic:Dynamic, ?vectorized:Dynamic, ?paired:Dynamic, ?axis:Dynamic, ?confidence_level:Dynamic, ?n_resamples:Dynamic, ?batch:Dynamic, ?method:Dynamic, ?random_state:Dynamic):Dynamic;
	/**
		Perform Boschloo's exact test on a 2x2 contingency table.
		
		Parameters
		----------
		table : array_like of ints
		    A 2x2 contingency table.  Elements should be non-negative integers.
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the null and alternative hypotheses. Default is 'two-sided'.
		    Please see explanations in the Notes section below.
		
		n : int, optional
		    Number of sampling points used in the construction of the sampling
		    method. Note that this argument will automatically be converted to
		    the next higher power of 2 since `scipy.stats.qmc.Sobol` is used to
		    select sample points. Default is 32. Must be positive. In most cases,
		    32 points is enough to reach good precision. More points comes at
		    performance cost.
		
		Returns
		-------
		ber : BoschlooExactResult
		    A result object with the following attributes.
		
		    statistic : float
		        The statistic used in Boschloo's test; that is, the p-value
		        from Fisher's exact test.
		
		    pvalue : float
		        P-value, the probability of obtaining a distribution at least as
		        extreme as the one that was actually observed, assuming that the
		        null hypothesis is true.
		
		See Also
		--------
		chi2_contingency : Chi-square test of independence of variables in a
		    contingency table.
		fisher_exact : Fisher exact test on a 2x2 contingency table.
		barnard_exact : Barnard's exact test, which is a more powerful alternative
		    than Fisher's exact test for 2x2 contingency tables.
		
		Notes
		-----
		Boschloo's test is an exact test used in the analysis of contingency
		tables. It examines the association of two categorical variables, and
		is a uniformly more powerful alternative to Fisher's exact test
		for 2x2 contingency tables.
		
		Let's define :math:`X_0` a 2x2 matrix representing the observed sample,
		where each column stores the binomial experiment, as in the example
		below. Let's also define :math:`p_1, p_2` the theoretical binomial
		probabilities for  :math:`x_{11}` and :math:`x_{12}`. When using
		Boschloo exact test, we can assert three different null hypotheses :
		
		- :math:`H_0 : p_1=p_2` versus :math:`H_1 : p_1 < p_2`,
		  with `alternative` = "less"
		
		- :math:`H_0 : p_1=p_2` versus :math:`H_1 : p_1 > p_2`,
		  with `alternative` = "greater"
		
		- :math:`H_0 : p_1=p_2` versus :math:`H_1 : p_1 \neq p_2`,
		  with `alternative` = "two-sided" (default one)
		
		Boschloo's exact test uses the p-value of Fisher's exact test as a
		statistic, and Boschloo's p-value is the probability under the null
		hypothesis of observing such an extreme value of this statistic.
		
		Boschloo's and Barnard's are both more powerful than Fisher's exact
		test.
		
		.. versionadded:: 1.7.0
		
		References
		----------
		.. [1] R.D. Boschloo. "Raised conditional level of significance for the
		   2 x 2-table when testing the equality of two probabilities",
		   Statistica Neerlandica, 24(1), 1970
		
		.. [2] "Boschloo's test", Wikipedia,
		   https://en.wikipedia.org/wiki/Boschloo%27s_test
		
		.. [3] Lise M. Saari et al. "Employee attitudes and job satisfaction",
		   Human Resource Management, 43(4), 395-407, 2004,
		   :doi:`10.1002/hrm.20032`.
		
		Examples
		--------
		In the following example, we consider the article "Employee
		attitudes and job satisfaction" [3]_
		which reports the results of a survey from 63 scientists and 117 college
		professors. Of the 63 scientists, 31 said they were very satisfied with
		their jobs, whereas 74 of the college professors were very satisfied
		with their work. Is this significant evidence that college
		professors are happier with their work than scientists?
		The following table summarizes the data mentioned above::
		
		                     college professors   scientists
		    Very Satisfied   74                     31
		    Dissatisfied     43                     32
		
		When working with statistical hypothesis testing, we usually use a
		threshold probability or significance level upon which we decide
		to reject the null hypothesis :math:`H_0`. Suppose we choose the common
		significance level of 5%.
		
		Our alternative hypothesis is that college professors are truly more
		satisfied with their work than scientists. Therefore, we expect
		:math:`p_1` the proportion of very satisfied college professors to be
		greater than :math:`p_2`, the proportion of very satisfied scientists.
		We thus call `boschloo_exact` with the ``alternative="greater"`` option:
		
		>>> import scipy.stats as stats
		>>> res = stats.boschloo_exact([[74, 31], [43, 32]], alternative="greater")
		>>> res.statistic
		0.0483...
		>>> res.pvalue
		0.0355...
		
		Under the null hypothesis that scientists are happier in their work than
		college professors, the probability of obtaining test
		results at least as extreme as the observed data is approximately 3.55%.
		Since this p-value is less than our chosen significance level, we have
		evidence to reject :math:`H_0` in favor of the alternative hypothesis.
	**/
	static public function boschloo_exact(table:Dynamic, ?alternative:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Return a dataset transformed by a Box-Cox power transformation.
		
		Parameters
		----------
		x : ndarray
		    Input array.  Must be positive 1-dimensional.  Must not be constant.
		lmbda : {None, scalar}, optional
		    If `lmbda` is not None, do the transformation for that value.
		    If `lmbda` is None, find the lambda that maximizes the log-likelihood
		    function and return it as the second output argument.
		alpha : {None, float}, optional
		    If ``alpha`` is not None, return the ``100 * (1-alpha)%`` confidence
		    interval for `lmbda` as the third output argument.
		    Must be between 0.0 and 1.0.
		optimizer : callable, optional
		    If `lmbda` is None, `optimizer` is the scalar optimizer used to find
		    the value of `lmbda` that minimizes the negative log-likelihood
		    function. `optimizer` is a callable that accepts one argument:
		
		    fun : callable
		        The objective function, which evaluates the negative
		        log-likelihood function at a provided value of `lmbda`
		
		    and returns an object, such as an instance of
		    `scipy.optimize.OptimizeResult`, which holds the optimal value of
		    `lmbda` in an attribute `x`.
		
		    See the example in `boxcox_normmax` or the documentation of
		    `scipy.optimize.minimize_scalar` for more information.
		
		    If `lmbda` is not None, `optimizer` is ignored.
		
		Returns
		-------
		boxcox : ndarray
		    Box-Cox power transformed array.
		maxlog : float, optional
		    If the `lmbda` parameter is None, the second returned argument is
		    the lambda that maximizes the log-likelihood function.
		(min_ci, max_ci) : tuple of float, optional
		    If `lmbda` parameter is None and ``alpha`` is not None, this returned
		    tuple of floats represents the minimum and maximum confidence limits
		    given ``alpha``.
		
		See Also
		--------
		probplot, boxcox_normplot, boxcox_normmax, boxcox_llf
		
		Notes
		-----
		The Box-Cox transform is given by::
		
		    y = (x**lmbda - 1) / lmbda,  for lmbda != 0
		        log(x),                  for lmbda = 0
		
		`boxcox` requires the input data to be positive.  Sometimes a Box-Cox
		transformation provides a shift parameter to achieve this; `boxcox` does
		not.  Such a shift parameter is equivalent to adding a positive constant to
		`x` before calling `boxcox`.
		
		The confidence limits returned when ``alpha`` is provided give the interval
		where:
		
		.. math::
		
		    llf(\hat{\lambda}) - llf(\lambda) < \frac{1}{2}\chi^2(1 - \alpha, 1),
		
		with ``llf`` the log-likelihood function and :math:`\chi^2` the chi-squared
		function.
		
		References
		----------
		G.E.P. Box and D.R. Cox, "An Analysis of Transformations", Journal of the
		Royal Statistical Society B, 26, 211-252 (1964).
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		We generate some random variates from a non-normal distribution and make a
		probability plot for it, to show it is non-normal in the tails:
		
		>>> fig = plt.figure()
		>>> ax1 = fig.add_subplot(211)
		>>> x = stats.loggamma.rvs(5, size=500) + 5
		>>> prob = stats.probplot(x, dist=stats.norm, plot=ax1)
		>>> ax1.set_xlabel('')
		>>> ax1.set_title('Probplot against normal distribution')
		
		We now use `boxcox` to transform the data so it's closest to normal:
		
		>>> ax2 = fig.add_subplot(212)
		>>> xt, _ = stats.boxcox(x)
		>>> prob = stats.probplot(xt, dist=stats.norm, plot=ax2)
		>>> ax2.set_title('Probplot after Box-Cox transformation')
		
		>>> plt.show()
	**/
	static public function boxcox(x:Dynamic, ?lmbda:Dynamic, ?alpha:Dynamic, ?optimizer:Dynamic):Dynamic;
	/**
		The boxcox log-likelihood function.
		
		Parameters
		----------
		lmb : scalar
		    Parameter for Box-Cox transformation.  See `boxcox` for details.
		data : array_like
		    Data to calculate Box-Cox log-likelihood for.  If `data` is
		    multi-dimensional, the log-likelihood is calculated along the first
		    axis.
		
		Returns
		-------
		llf : float or ndarray
		    Box-Cox log-likelihood of `data` given `lmb`.  A float for 1-D `data`,
		    an array otherwise.
		
		See Also
		--------
		boxcox, probplot, boxcox_normplot, boxcox_normmax
		
		Notes
		-----
		The Box-Cox log-likelihood function is defined here as
		
		.. math::
		
		    llf = (\lambda - 1) \sum_i(\log(x_i)) -
		          N/2 \log(\sum_i (y_i - \bar{y})^2 / N),
		
		where ``y`` is the Box-Cox transformed input data ``x``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> from mpl_toolkits.axes_grid1.inset_locator import inset_axes
		
		Generate some random variates and calculate Box-Cox log-likelihood values
		for them for a range of ``lmbda`` values:
		
		>>> rng = np.random.default_rng()
		>>> x = stats.loggamma.rvs(5, loc=10, size=1000, random_state=rng)
		>>> lmbdas = np.linspace(-2, 10)
		>>> llf = np.zeros(lmbdas.shape, dtype=float)
		>>> for ii, lmbda in enumerate(lmbdas):
		...     llf[ii] = stats.boxcox_llf(lmbda, x)
		
		Also find the optimal lmbda value with `boxcox`:
		
		>>> x_most_normal, lmbda_optimal = stats.boxcox(x)
		
		Plot the log-likelihood as function of lmbda.  Add the optimal lmbda as a
		horizontal line to check that that's really the optimum:
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(lmbdas, llf, 'b.-')
		>>> ax.axhline(stats.boxcox_llf(lmbda_optimal, x), color='r')
		>>> ax.set_xlabel('lmbda parameter')
		>>> ax.set_ylabel('Box-Cox log-likelihood')
		
		Now add some probability plots to show that where the log-likelihood is
		maximized the data transformed with `boxcox` looks closest to normal:
		
		>>> locs = [3, 10, 4]  # 'lower left', 'center', 'lower right'
		>>> for lmbda, loc in zip([-1, lmbda_optimal, 9], locs):
		...     xt = stats.boxcox(x, lmbda=lmbda)
		...     (osm, osr), (slope, intercept, r_sq) = stats.probplot(xt)
		...     ax_inset = inset_axes(ax, width="20%", height="20%", loc=loc)
		...     ax_inset.plot(osm, osr, 'c.', osm, slope*osm + intercept, 'k-')
		...     ax_inset.set_xticklabels([])
		...     ax_inset.set_yticklabels([])
		...     ax_inset.set_title(r'$\lambda=%1.2f$' % lmbda)
		
		>>> plt.show()
	**/
	static public function boxcox_llf(lmb:Dynamic, data:Dynamic):Dynamic;
	/**
		Compute optimal Box-Cox transform parameter for input data.
		
		Parameters
		----------
		x : array_like
		    Input array.
		brack : 2-tuple, optional, default (-2.0, 2.0)
		     The starting interval for a downhill bracket search for the default
		     `optimize.brent` solver. Note that this is in most cases not
		     critical; the final result is allowed to be outside this bracket.
		     If `optimizer` is passed, `brack` must be None.
		method : str, optional
		    The method to determine the optimal transform parameter (`boxcox`
		    ``lmbda`` parameter). Options are:
		
		    'pearsonr'  (default)
		        Maximizes the Pearson correlation coefficient between
		        ``y = boxcox(x)`` and the expected values for ``y`` if `x` would be
		        normally-distributed.
		
		    'mle'
		        Minimizes the log-likelihood `boxcox_llf`.  This is the method used
		        in `boxcox`.
		
		    'all'
		        Use all optimization methods available, and return all results.
		        Useful to compare different methods.
		optimizer : callable, optional
		    `optimizer` is a callable that accepts one argument:
		
		    fun : callable
		        The objective function to be optimized. `fun` accepts one argument,
		        the Box-Cox transform parameter `lmbda`, and returns the negative
		        log-likelihood function at the provided value. The job of `optimizer`
		        is to find the value of `lmbda` that minimizes `fun`.
		
		    and returns an object, such as an instance of
		    `scipy.optimize.OptimizeResult`, which holds the optimal value of
		    `lmbda` in an attribute `x`.
		
		    See the example below or the documentation of
		    `scipy.optimize.minimize_scalar` for more information.
		
		Returns
		-------
		maxlog : float or ndarray
		    The optimal transform parameter found.  An array instead of a scalar
		    for ``method='all'``.
		
		See Also
		--------
		boxcox, boxcox_llf, boxcox_normplot, scipy.optimize.minimize_scalar
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		We can generate some data and determine the optimal ``lmbda`` in various
		ways:
		
		>>> rng = np.random.default_rng()
		>>> x = stats.loggamma.rvs(5, size=30, random_state=rng) + 5
		>>> y, lmax_mle = stats.boxcox(x)
		>>> lmax_pearsonr = stats.boxcox_normmax(x)
		
		>>> lmax_mle
		1.4613865614008015
		>>> lmax_pearsonr
		1.6685004886804342
		>>> stats.boxcox_normmax(x, method='all')
		array([1.66850049, 1.46138656])
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> prob = stats.boxcox_normplot(x, -10, 10, plot=ax)
		>>> ax.axvline(lmax_mle, color='r')
		>>> ax.axvline(lmax_pearsonr, color='g', ls='--')
		
		>>> plt.show()
		
		Alternatively, we can define our own `optimizer` function. Suppose we
		are only interested in values of `lmbda` on the interval [6, 7], we
		want to use `scipy.optimize.minimize_scalar` with ``method='bounded'``,
		and we want to use tighter tolerances when optimizing the log-likelihood
		function. To do this, we define a function that accepts positional argument
		`fun` and uses `scipy.optimize.minimize_scalar` to minimize `fun` subject
		to the provided bounds and tolerances:
		
		>>> from scipy import optimize
		>>> options = {'xatol': 1e-12}  # absolute tolerance on `x`
		>>> def optimizer(fun):
		...     return optimize.minimize_scalar(fun, bounds=(6, 7),
		...                                     method="bounded", options=options)
		>>> stats.boxcox_normmax(x, optimizer=optimizer)
		6.000...
	**/
	static public function boxcox_normmax(x:Dynamic, ?brack:Dynamic, ?method:Dynamic, ?optimizer:Dynamic):Dynamic;
	/**
		Compute parameters for a Box-Cox normality plot, optionally show it.
		
		A Box-Cox normality plot shows graphically what the best transformation
		parameter is to use in `boxcox` to obtain a distribution that is close
		to normal.
		
		Parameters
		----------
		x : array_like
		    Input array.
		la, lb : scalar
		    The lower and upper bounds for the ``lmbda`` values to pass to `boxcox`
		    for Box-Cox transformations.  These are also the limits of the
		    horizontal axis of the plot if that is generated.
		plot : object, optional
		    If given, plots the quantiles and least squares fit.
		    `plot` is an object that has to have methods "plot" and "text".
		    The `matplotlib.pyplot` module or a Matplotlib Axes object can be used,
		    or a custom object with the same methods.
		    Default is None, which means that no plot is created.
		N : int, optional
		    Number of points on the horizontal axis (equally distributed from
		    `la` to `lb`).
		
		Returns
		-------
		lmbdas : ndarray
		    The ``lmbda`` values for which a Box-Cox transform was done.
		ppcc : ndarray
		    Probability Plot Correlelation Coefficient, as obtained from `probplot`
		    when fitting the Box-Cox transformed input `x` against a normal
		    distribution.
		
		See Also
		--------
		probplot, boxcox, boxcox_normmax, boxcox_llf, ppcc_max
		
		Notes
		-----
		Even if `plot` is given, the figure is not shown or saved by
		`boxcox_normplot`; ``plt.show()`` or ``plt.savefig('figname.png')``
		should be used after calling `probplot`.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		Generate some non-normally distributed data, and create a Box-Cox plot:
		
		>>> x = stats.loggamma.rvs(5, size=500) + 5
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> prob = stats.boxcox_normplot(x, -20, 20, plot=ax)
		
		Determine and plot the optimal ``lmbda`` to transform ``x`` and plot it in
		the same plot:
		
		>>> _, maxlog = stats.boxcox(x)
		>>> ax.axvline(maxlog, color='r')
		
		>>> plt.show()
	**/
	static public function boxcox_normplot(x:Dynamic, la:Dynamic, lb:Dynamic, ?plot:Dynamic, ?N:Dynamic):Dynamic;
	/**
		A Bradford continuous random variable.
		
		As an instance of the `rv_continuous` class, `bradford` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `bradford` is:
		
		.. math::
		
		    f(x, c) = \frac{c}{\log(1+c) (1+cx)}
		
		for :math:`0 <= x <= 1` and :math:`c > 0`.
		
		`bradford` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``bradford.pdf(x, c, loc, scale)`` is identically
		equivalent to ``bradford.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import bradford
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 0.299
		>>> mean, var, skew, kurt = bradford.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(bradford.ppf(0.01, c),
		...                 bradford.ppf(0.99, c), 100)
		>>> ax.plot(x, bradford.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='bradford pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = bradford(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = bradford.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], bradford.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = bradford.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function bradford(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the Brunner-Munzel test on samples x and y.
		
		The Brunner-Munzel test is a nonparametric test of the null hypothesis that
		when values are taken one by one from each group, the probabilities of
		getting large values in both groups are equal.
		Unlike the Wilcoxon-Mann-Whitney's U test, this does not require the
		assumption of equivariance of two groups. Note that this does not assume
		the distributions are same. This test works on two independent samples,
		which may have different sizes.
		
		Parameters
		----------
		x, y : array_like
		    Array of samples, should be one-dimensional.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		      * 'two-sided'
		      * 'less': one-sided
		      * 'greater': one-sided
		distribution : {'t', 'normal'}, optional
		    Defines how to get the p-value.
		    The following options are available (default is 't'):
		
		      * 't': get the p-value by t-distribution
		      * 'normal': get the p-value by standard normal distribution.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
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
		Brunner and Munzel recommended to estimate the p-value by t-distribution
		when the size of data is 50 or less. If the size is lower than 10, it would
		be better to use permuted Brunner Munzel test (see [2]_).
		
		References
		----------
		.. [1] Brunner, E. and Munzel, U. "The nonparametric Benhrens-Fisher
		       problem: Asymptotic theory and a small-sample approximation".
		       Biometrical Journal. Vol. 42(2000): 17-25.
		.. [2] Neubert, K. and Brunner, E. "A studentized permutation test for the
		       non-parametric Behrens-Fisher problem". Computational Statistics and
		       Data Analysis. Vol. 51(2007): 5192-5204.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x1 = [1,2,1,1,1,1,1,1,1,1,2,4,1,1]
		>>> x2 = [3,3,4,3,1,2,3,1,1,5,4]
		>>> w, p_value = stats.brunnermunzel(x1, x2)
		>>> w
		3.1374674823029505
		>>> p_value
		0.0057862086661515377
	**/
	static public function brunnermunzel(x:Dynamic, y:Dynamic, ?alternative:Dynamic, ?distribution:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		A Burr (Type III) continuous random variable.
		
		As an instance of the `rv_continuous` class, `burr` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, d, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, d, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, d, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, d, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, d, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, d, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, d, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, d, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, d, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, d, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, d, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, d, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c, d), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, d, loc=0, scale=1)
		    Median of the distribution.
		mean(c, d, loc=0, scale=1)
		    Mean of the distribution.
		var(c, d, loc=0, scale=1)
		    Variance of the distribution.
		std(c, d, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, d, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		fisk : a special case of either `burr` or `burr12` with ``d=1``
		burr12 : Burr Type XII distribution
		mielke : Mielke Beta-Kappa / Dagum distribution
		
		Notes
		-----
		The probability density function for `burr` is:
		
		.. math::
		
		    f(x, c, d) = c d x^{-c - 1} / (1 + x^{-c})^{d + 1}
		
		for :math:`x >= 0` and :math:`c, d > 0`.
		
		`burr` takes :math:`c` and :math:`d` as shape parameters.
		
		This is the PDF corresponding to the third CDF given in Burr's list;
		specifically, it is equation (11) in Burr's paper [1]_. The distribution
		is also commonly referred to as the Dagum distribution [2]_. If the
		parameter :math:`c < 1` then the mean of the distribution does not
		exist and if :math:`c < 2` the variance does not exist [2]_.
		The PDF is finite at the left endpoint :math:`x = 0` if :math:`c * d >= 1`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``burr.pdf(x, c, d, loc, scale)`` is identically
		equivalent to ``burr.pdf(y, c, d) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] Burr, I. W. "Cumulative frequency functions", Annals of
		   Mathematical Statistics, 13(2), pp 215-232 (1942).
		.. [2] https://en.wikipedia.org/wiki/Dagum_distribution
		.. [3] Kleiber, Christian. "A guide to the Dagum distributions."
		   Modeling Income Distributions and Lorenz Curves  pp 97-117 (2008).
		
		Examples
		--------
		>>> from scipy.stats import burr
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c, d = 10.5, 4.3
		>>> mean, var, skew, kurt = burr.stats(c, d, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(burr.ppf(0.01, c, d),
		...                 burr.ppf(0.99, c, d), 100)
		>>> ax.plot(x, burr.pdf(x, c, d),
		...        'r-', lw=5, alpha=0.6, label='burr pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = burr(c, d)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = burr.ppf([0.001, 0.5, 0.999], c, d)
		>>> np.allclose([0.001, 0.5, 0.999], burr.cdf(vals, c, d))
		True
		
		Generate random numbers:
		
		>>> r = burr.rvs(c, d, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function burr(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Burr (Type XII) continuous random variable.
		
		As an instance of the `rv_continuous` class, `burr12` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, d, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, d, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, d, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, d, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, d, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, d, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, d, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, d, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, d, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, d, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, d, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, d, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c, d), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, d, loc=0, scale=1)
		    Median of the distribution.
		mean(c, d, loc=0, scale=1)
		    Mean of the distribution.
		var(c, d, loc=0, scale=1)
		    Variance of the distribution.
		std(c, d, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, d, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		fisk : a special case of either `burr` or `burr12` with ``d=1``
		burr : Burr Type III distribution
		
		Notes
		-----
		The probability density function for `burr` is:
		
		.. math::
		
		    f(x, c, d) = c d x^{c-1} / (1 + x^c)^{d + 1}
		
		for :math:`x >= 0` and :math:`c, d > 0`.
		
		`burr12` takes ``c`` and ``d`` as shape parameters for :math:`c`
		and :math:`d`.
		
		This is the PDF corresponding to the twelfth CDF given in Burr's list;
		specifically, it is equation (20) in Burr's paper [1]_.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``burr12.pdf(x, c, d, loc, scale)`` is identically
		equivalent to ``burr12.pdf(y, c, d) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		The Burr type 12 distribution is also sometimes referred to as
		the Singh-Maddala distribution from NIST [2]_.
		
		References
		----------
		.. [1] Burr, I. W. "Cumulative frequency functions", Annals of
		   Mathematical Statistics, 13(2), pp 215-232 (1942).
		
		.. [2] https://www.itl.nist.gov/div898/software/dataplot/refman2/auxillar/b12pdf.htm
		
		.. [3] "Burr distribution",
		   https://en.wikipedia.org/wiki/Burr_distribution
		
		Examples
		--------
		>>> from scipy.stats import burr12
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c, d = 10, 4
		>>> mean, var, skew, kurt = burr12.stats(c, d, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(burr12.ppf(0.01, c, d),
		...                 burr12.ppf(0.99, c, d), 100)
		>>> ax.plot(x, burr12.pdf(x, c, d),
		...        'r-', lw=5, alpha=0.6, label='burr12 pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = burr12(c, d)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = burr12.ppf([0.001, 0.5, 0.999], c, d)
		>>> np.allclose([0.001, 0.5, 0.999], burr12.cdf(vals, c, d))
		True
		
		Generate random numbers:
		
		>>> r = burr12.rvs(c, d, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function burr12(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Cauchy continuous random variable.
		
		As an instance of the `rv_continuous` class, `cauchy` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `cauchy` is
		
		.. math::
		
		    f(x) = \frac{1}{\pi (1 + x^2)}
		
		for a real number :math:`x`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``cauchy.pdf(x, loc, scale)`` is identically
		equivalent to ``cauchy.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import cauchy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = cauchy.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(cauchy.ppf(0.01),
		...                 cauchy.ppf(0.99), 100)
		>>> ax.plot(x, cauchy.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='cauchy pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = cauchy()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = cauchy.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], cauchy.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = cauchy.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function cauchy(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A chi continuous random variable.
		
		As an instance of the `rv_continuous` class, `chi` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(df, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, df, loc=0, scale=1)
		    Probability density function.
		logpdf(x, df, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, df, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, df, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, df, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, df, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, df, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, df, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, df, loc=0, scale=1)
		    Non-central moment of order n
		stats(df, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(df, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(df,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(df, loc=0, scale=1)
		    Median of the distribution.
		mean(df, loc=0, scale=1)
		    Mean of the distribution.
		var(df, loc=0, scale=1)
		    Variance of the distribution.
		std(df, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, df, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `chi` is:
		
		.. math::
		
		    f(x, k) = \frac{1}{2^{k/2-1} \Gamma \left( k/2 \right)}
		               x^{k-1} \exp \left( -x^2/2 \right)
		
		for :math:`x >= 0` and :math:`k > 0` (degrees of freedom, denoted ``df``
		in the implementation). :math:`\Gamma` is the gamma function
		(`scipy.special.gamma`).
		
		Special cases of `chi` are:
		
		    - ``chi(1, loc, scale)`` is equivalent to `halfnorm`
		    - ``chi(2, 0, scale)`` is equivalent to `rayleigh`
		    - ``chi(3, 0, scale)`` is equivalent to `maxwell`
		
		`chi` takes ``df`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``chi.pdf(x, df, loc, scale)`` is identically
		equivalent to ``chi.pdf(y, df) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import chi
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> df = 78
		>>> mean, var, skew, kurt = chi.stats(df, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(chi.ppf(0.01, df),
		...                 chi.ppf(0.99, df), 100)
		>>> ax.plot(x, chi.pdf(x, df),
		...        'r-', lw=5, alpha=0.6, label='chi pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = chi(df)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = chi.ppf([0.001, 0.5, 0.999], df)
		>>> np.allclose([0.001, 0.5, 0.999], chi.cdf(vals, df))
		True
		
		Generate random numbers:
		
		>>> r = chi.rvs(df, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function chi(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A chi-squared continuous random variable.
		
		For the noncentral chi-square distribution, see `ncx2`.
		
		As an instance of the `rv_continuous` class, `chi2` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(df, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, df, loc=0, scale=1)
		    Probability density function.
		logpdf(x, df, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, df, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, df, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, df, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, df, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, df, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, df, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, df, loc=0, scale=1)
		    Non-central moment of order n
		stats(df, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(df, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(df,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(df, loc=0, scale=1)
		    Median of the distribution.
		mean(df, loc=0, scale=1)
		    Mean of the distribution.
		var(df, loc=0, scale=1)
		    Variance of the distribution.
		std(df, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, df, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		ncx2
		
		Notes
		-----
		The probability density function for `chi2` is:
		
		.. math::
		
		    f(x, k) = \frac{1}{2^{k/2} \Gamma \left( k/2 \right)}
		               x^{k/2-1} \exp \left( -x/2 \right)
		
		for :math:`x > 0`  and :math:`k > 0` (degrees of freedom, denoted ``df``
		in the implementation).
		
		`chi2` takes ``df`` as a shape parameter.
		
		The chi-squared distribution is a special case of the gamma
		distribution, with gamma parameters ``a = df/2``, ``loc = 0`` and
		``scale = 2``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``chi2.pdf(x, df, loc, scale)`` is identically
		equivalent to ``chi2.pdf(y, df) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import chi2
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> df = 55
		>>> mean, var, skew, kurt = chi2.stats(df, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(chi2.ppf(0.01, df),
		...                 chi2.ppf(0.99, df), 100)
		>>> ax.plot(x, chi2.pdf(x, df),
		...        'r-', lw=5, alpha=0.6, label='chi2 pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = chi2(df)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = chi2.ppf([0.001, 0.5, 0.999], df)
		>>> np.allclose([0.001, 0.5, 0.999], chi2.cdf(vals, df))
		True
		
		Generate random numbers:
		
		>>> r = chi2.rvs(df, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function chi2(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Chi-square test of independence of variables in a contingency table.
		
		This function computes the chi-square statistic and p-value for the
		hypothesis test of independence of the observed frequencies in the
		contingency table [1]_ `observed`.  The expected frequencies are computed
		based on the marginal sums under the assumption of independence; see
		`scipy.stats.contingency.expected_freq`.  The number of degrees of
		freedom is (expressed using numpy functions and attributes)::
		
		    dof = observed.size - sum(observed.shape) + observed.ndim - 1
		
		
		Parameters
		----------
		observed : array_like
		    The contingency table. The table contains the observed frequencies
		    (i.e. number of occurrences) in each category.  In the two-dimensional
		    case, the table is often described as an "R x C table".
		correction : bool, optional
		    If True, *and* the degrees of freedom is 1, apply Yates' correction
		    for continuity.  The effect of the correction is to adjust each
		    observed value by 0.5 towards the corresponding expected value.
		lambda_ : float or str, optional
		    By default, the statistic computed in this test is Pearson's
		    chi-squared statistic [2]_.  `lambda_` allows a statistic from the
		    Cressie-Read power divergence family [3]_ to be used instead.  See
		    `scipy.stats.power_divergence` for details.
		
		Returns
		-------
		chi2 : float
		    The test statistic.
		p : float
		    The p-value of the test
		dof : int
		    Degrees of freedom
		expected : ndarray, same shape as `observed`
		    The expected frequencies, based on the marginal sums of the table.
		
		See Also
		--------
		scipy.stats.contingency.expected_freq
		scipy.stats.fisher_exact
		scipy.stats.chisquare
		scipy.stats.power_divergence
		scipy.stats.barnard_exact
		scipy.stats.boschloo_exact
		
		Notes
		-----
		An often quoted guideline for the validity of this calculation is that
		the test should be used only if the observed and expected frequencies
		in each cell are at least 5.
		
		This is a test for the independence of different categories of a
		population. The test is only meaningful when the dimension of
		`observed` is two or more.  Applying the test to a one-dimensional
		table will always result in `expected` equal to `observed` and a
		chi-square statistic equal to 0.
		
		This function does not handle masked arrays, because the calculation
		does not make sense with missing values.
		
		Like stats.chisquare, this function computes a chi-square statistic;
		the convenience this function provides is to figure out the expected
		frequencies and degrees of freedom from the given contingency table.
		If these were already known, and if the Yates' correction was not
		required, one could use stats.chisquare.  That is, if one calls::
		
		    chi2, p, dof, ex = chi2_contingency(obs, correction=False)
		
		then the following is true::
		
		    (chi2, p) == stats.chisquare(obs.ravel(), f_exp=ex.ravel(),
		                                 ddof=obs.size - 1 - dof)
		
		The `lambda_` argument was added in version 0.13.0 of scipy.
		
		References
		----------
		.. [1] "Contingency table",
		       https://en.wikipedia.org/wiki/Contingency_table
		.. [2] "Pearson's chi-squared test",
		       https://en.wikipedia.org/wiki/Pearson%27s_chi-squared_test
		.. [3] Cressie, N. and Read, T. R. C., "Multinomial Goodness-of-Fit
		       Tests", J. Royal Stat. Soc. Series B, Vol. 46, No. 3 (1984),
		       pp. 440-464.
		
		Examples
		--------
		A two-way example (2 x 3):
		
		>>> from scipy.stats import chi2_contingency
		>>> obs = np.array([[10, 10, 20], [20, 20, 20]])
		>>> chi2_contingency(obs)
		(2.7777777777777777,
		 0.24935220877729619,
		 2,
		 array([[ 12.,  12.,  16.],
		        [ 18.,  18.,  24.]]))
		
		Perform the test using the log-likelihood ratio (i.e. the "G-test")
		instead of Pearson's chi-squared statistic.
		
		>>> g, p, dof, expctd = chi2_contingency(obs, lambda_="log-likelihood")
		>>> g, p
		(2.7688587616781319, 0.25046668010954165)
		
		A four-way example (2 x 2 x 2 x 2):
		
		>>> obs = np.array(
		...     [[[[12, 17],
		...        [11, 16]],
		...       [[11, 12],
		...        [15, 16]]],
		...      [[[23, 15],
		...        [30, 22]],
		...       [[14, 17],
		...        [15, 16]]]])
		>>> chi2_contingency(obs)
		(8.7584514426741897,
		 0.64417725029295503,
		 11,
		 array([[[[ 14.15462386,  14.15462386],
		          [ 16.49423111,  16.49423111]],
		         [[ 11.2461395 ,  11.2461395 ],
		          [ 13.10500554,  13.10500554]]],
		        [[[ 19.5591166 ,  19.5591166 ],
		          [ 22.79202844,  22.79202844]],
		         [[ 15.54012004,  15.54012004],
		          [ 18.10873492,  18.10873492]]]]))
	**/
	static public function chi2_contingency(observed:Dynamic, ?correction:Dynamic, ?lambda_:Dynamic):Float;
	/**
		Calculate a one-way chi-square test.
		
		The chi-square test tests the null hypothesis that the categorical data
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
		scipy.stats.power_divergence
		scipy.stats.fisher_exact : Fisher exact test on a 2x2 contingency table.
		scipy.stats.barnard_exact : An unconditional exact test. An alternative
		    to chi-squared test for small sample sizes.
		
		Notes
		-----
		This test is invalid when the observed or expected frequencies in each
		category are too small.  A typical rule is that all of the observed
		and expected frequencies should be at least 5. According to [3]_, the
		total number of samples is recommended to be greater than 13,
		otherwise exact tests (such as Barnard's Exact test) should be used
		because they do not overreject.
		
		Also, the sum of the observed and expected frequencies must be the same
		for the test to be valid; `chisquare` raises an error if the sums do not
		agree within a relative tolerance of ``1e-8``.
		
		The default degrees of freedom, k-1, are for the case when no parameters
		of the distribution are estimated. If p parameters are estimated by
		efficient maximum likelihood then the correct degrees of freedom are
		k-1-p. If the parameters are estimated in a different way, then the
		dof can be between k-1-p and k-1. However, it is also possible that
		the asymptotic distribution is not chi-square, in which case this test
		is not appropriate.
		
		References
		----------
		.. [1] Lowry, Richard.  "Concepts and Applications of Inferential
		       Statistics". Chapter 8.
		       https://web.archive.org/web/20171022032306/http://vassarstats.net:80/textbook/ch8pt1.html
		.. [2] "Chi-squared test", https://en.wikipedia.org/wiki/Chi-squared_test
		.. [3] Pearson, Karl. "On the criterion that a given system of deviations from the probable
		       in the case of a correlated system of variables is such that it can be reasonably
		       supposed to have arisen from random sampling", Philosophical Magazine. Series 5. 50
		       (1900), pp. 157-175.
		
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
		Compute the circular mean for samples in a range.
		
		Parameters
		----------
		samples : array_like
		    Input array.
		high : float or int, optional
		    High boundary for circular mean range.  Default is ``2*pi``.
		low : float or int, optional
		    Low boundary for circular mean range.  Default is 0.
		axis : int, optional
		    Axis along which means are computed.  The default is to compute
		    the mean of the flattened array.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		circmean : float
		    Circular mean.
		
		Examples
		--------
		>>> from scipy.stats import circmean
		>>> circmean([0.1, 2*np.pi+0.2, 6*np.pi+0.3])
		0.2
		
		>>> from scipy.stats import circmean
		>>> circmean([0.2, 1.4, 2.6], high = 1, low = 0)
		0.4
	**/
	static public function circmean(samples:Dynamic, ?high:Dynamic, ?low:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Compute the circular standard deviation for samples assumed to be in the
		range [low to high].
		
		Parameters
		----------
		samples : array_like
		    Input array.
		high : float or int, optional
		    High boundary for circular standard deviation range.
		    Default is ``2*pi``.
		low : float or int, optional
		    Low boundary for circular standard deviation range.  Default is 0.
		axis : int, optional
		    Axis along which standard deviations are computed.  The default is
		    to compute the standard deviation of the flattened array.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		circstd : float
		    Circular standard deviation.
		
		Notes
		-----
		This uses a definition of circular standard deviation that in the limit of
		small angles returns a number close to the 'linear' standard deviation.
		
		Examples
		--------
		>>> from scipy.stats import circstd
		>>> circstd([0, 0.1*np.pi/2, 0.001*np.pi, 0.03*np.pi/2])
		0.063564063306
	**/
	static public function circstd(samples:Dynamic, ?high:Dynamic, ?low:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Compute the circular variance for samples assumed to be in a range.
		
		Parameters
		----------
		samples : array_like
		    Input array.
		high : float or int, optional
		    High boundary for circular variance range.  Default is ``2*pi``.
		low : float or int, optional
		    Low boundary for circular variance range.  Default is 0.
		axis : int, optional
		    Axis along which variances are computed.  The default is to compute
		    the variance of the flattened array.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		circvar : float
		    Circular variance.
		
		Notes
		-----
		This uses a definition of circular variance that in the limit of small
		angles returns a number close to the 'linear' variance.
		
		Examples
		--------
		>>> from scipy.stats import circvar
		>>> circvar([0, 2*np.pi/3, 5*np.pi/3])
		2.19722457734
	**/
	static public function circvar(samples:Dynamic, ?high:Dynamic, ?low:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Combine p-values from independent tests bearing upon the same hypothesis.
		
		Parameters
		----------
		pvalues : array_like, 1-D
		    Array of p-values assumed to come from independent tests.
		method : {'fisher', 'pearson', 'tippett', 'stouffer',
		          'mudholkar_george'}, optional
		
		    Name of method to use to combine p-values.
		    The following methods are available (default is 'fisher'):
		
		      * 'fisher': Fisher's method (Fisher's combined probability test), the
		        sum of the logarithm of the p-values
		      * 'pearson': Pearson's method (similar to Fisher's but uses sum of the
		        complement of the p-values inside the logarithms)
		      * 'tippett': Tippett's method (minimum of p-values)
		      * 'stouffer': Stouffer's Z-score method
		      * 'mudholkar_george': the difference of Fisher's and Pearson's methods
		        divided by 2
		weights : array_like, 1-D, optional
		    Optional array of weights used only for Stouffer's Z-score method.
		
		Returns
		-------
		statistic: float
		    The statistic calculated by the specified method.
		pval: float
		    The combined p-value.
		
		Notes
		-----
		Fisher's method (also known as Fisher's combined probability test) [1]_ uses
		a chi-squared statistic to compute a combined p-value. The closely related
		Stouffer's Z-score method [2]_ uses Z-scores rather than p-values. The
		advantage of Stouffer's method is that it is straightforward to introduce
		weights, which can make Stouffer's method more powerful than Fisher's
		method when the p-values are from studies of different size [6]_ [7]_.
		The Pearson's method uses :math:`log(1-p_i)` inside the sum whereas Fisher's
		method uses :math:`log(p_i)` [4]_. For Fisher's and Pearson's method, the
		sum of the logarithms is multiplied by -2 in the implementation. This
		quantity has a chi-square distribution that determines the p-value. The
		`mudholkar_george` method is the difference of the Fisher's and Pearson's
		test statistics, each of which include the -2 factor [4]_. However, the
		`mudholkar_george` method does not include these -2 factors. The test
		statistic of `mudholkar_george` is the sum of logisitic random variables and
		equation 3.6 in [3]_ is used to approximate the p-value based on Student's
		t-distribution.
		
		Fisher's method may be extended to combine p-values from dependent tests
		[5]_. Extensions such as Brown's method and Kost's method are not currently
		implemented.
		
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Fisher%27s_method
		.. [2] https://en.wikipedia.org/wiki/Fisher%27s_method#Relation_to_Stouffer.27s_Z-score_method
		.. [3] George, E. O., and G. S. Mudholkar. "On the convolution of logistic
		       random variables." Metrika 30.1 (1983): 1-13.
		.. [4] Heard, N. and Rubin-Delanchey, P. "Choosing between methods of
		       combining p-values."  Biometrika 105.1 (2018): 239-246.
		.. [5] Whitlock, M. C. "Combining probability from independent tests: the
		       weighted Z-method is superior to Fisher's approach." Journal of
		       Evolutionary Biology 18, no. 5 (2005): 1368-1373.
		.. [6] Zaykin, Dmitri V. "Optimally weighted Z-test is a powerful method
		       for combining probabilities in meta-analysis." Journal of
		       Evolutionary Biology 24, no. 8 (2011): 1836-1841.
		.. [7] https://en.wikipedia.org/wiki/Extensions_of_Fisher%27s_method
	**/
	static public function combine_pvalues(pvalues:Dynamic, ?method:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		A cosine continuous random variable.
		
		As an instance of the `rv_continuous` class, `cosine` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The cosine distribution is an approximation to the normal distribution.
		The probability density function for `cosine` is:
		
		.. math::
		
		    f(x) = \frac{1}{2\pi} (1+\cos(x))
		
		for :math:`-\pi \le x \le \pi`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``cosine.pdf(x, loc, scale)`` is identically
		equivalent to ``cosine.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import cosine
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = cosine.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(cosine.ppf(0.01),
		...                 cosine.ppf(0.99), 100)
		>>> ax.plot(x, cosine.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='cosine pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = cosine()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = cosine.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], cosine.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = cosine.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function cosine(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform the one-sample Cramér-von Mises test for goodness of fit.
		
		This performs a test of the goodness of fit of a cumulative distribution
		function (cdf) :math:`F` compared to the empirical distribution function
		:math:`F_n` of observed random variates :math:`X_1, ..., X_n` that are
		assumed to be independent and identically distributed ([1]_).
		The null hypothesis is that the :math:`X_i` have cumulative distribution
		:math:`F`.
		
		Parameters
		----------
		rvs : array_like
		    A 1-D array of observed values of the random variables :math:`X_i`.
		cdf : str or callable
		    The cumulative distribution function :math:`F` to test the
		    observations against. If a string, it should be the name of a
		    distribution in `scipy.stats`. If a callable, that callable is used
		    to calculate the cdf: ``cdf(x, *args) -> float``.
		args : tuple, optional
		    Distribution parameters. These are assumed to be known; see Notes.
		
		Returns
		-------
		res : object with attributes
		    statistic : float
		        Cramér-von Mises statistic.
		    pvalue : float
		        The p-value.
		
		See Also
		--------
		kstest, cramervonmises_2samp
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The p-value relies on the approximation given by equation 1.8 in [2]_.
		It is important to keep in mind that the p-value is only accurate if
		one tests a simple hypothesis, i.e. the parameters of the reference
		distribution are known. If the parameters are estimated from the data
		(composite hypothesis), the computed p-value is not reliable.
		
		References
		----------
		.. [1] Cramér-von Mises criterion, Wikipedia,
		       https://en.wikipedia.org/wiki/Cram%C3%A9r%E2%80%93von_Mises_criterion
		.. [2] Csorgo, S. and Faraway, J. (1996). The Exact and Asymptotic
		       Distribution of Cramér-von Mises Statistics. Journal of the
		       Royal Statistical Society, pp. 221-234.
		
		Examples
		--------
		
		Suppose we wish to test whether data generated by ``scipy.stats.norm.rvs``
		were, in fact, drawn from the standard normal distribution. We choose a
		significance level of alpha=0.05.
		
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		>>> x = stats.norm.rvs(size=500, random_state=rng)
		>>> res = stats.cramervonmises(x, 'norm')
		>>> res.statistic, res.pvalue
		(0.49121480855028343, 0.04189256516661377)
		
		The p-value 0.79 exceeds our chosen significance level, so we do not
		reject the null hypothesis that the observed sample is drawn from the
		standard normal distribution.
		
		Now suppose we wish to check whether the same samples shifted by 2.1 is
		consistent with being drawn from a normal distribution with a mean of 2.
		
		>>> y = x + 2.1
		>>> res = stats.cramervonmises(y, 'norm', args=(2,))
		>>> res.statistic, res.pvalue
		(0.07400330012187435, 0.7274595666160468)
		
		Here we have used the `args` keyword to specify the mean (``loc``)
		of the normal distribution to test the data against. This is equivalent
		to the following, in which we create a frozen normal distribution with
		mean 2.1, then pass its ``cdf`` method as an argument.
		
		>>> frozen_dist = stats.norm(loc=2)
		>>> res = stats.cramervonmises(y, frozen_dist.cdf)
		>>> res.statistic, res.pvalue
		(0.07400330012187435, 0.7274595666160468)
		
		In either case, we would reject the null hypothesis that the observed
		sample is drawn from a normal distribution with a mean of 2 (and default
		variance of 1) because the p-value 0.04 is less than our chosen
		significance level.
	**/
	static public function cramervonmises(rvs:Dynamic, cdf:Dynamic, ?args:Dynamic):Dynamic;
	/**
		Perform the two-sample Cramér-von Mises test for goodness of fit.
		
		This is the two-sample version of the Cramér-von Mises test ([1]_):
		for two independent samples :math:`X_1, ..., X_n` and
		:math:`Y_1, ..., Y_m`, the null hypothesis is that the samples
		come from the same (unspecified) continuous distribution.
		
		Parameters
		----------
		x : array_like
		    A 1-D array of observed values of the random variables :math:`X_i`.
		y : array_like
		    A 1-D array of observed values of the random variables :math:`Y_i`.
		method : {'auto', 'asymptotic', 'exact'}, optional
		    The method used to compute the p-value, see Notes for details.
		    The default is 'auto'.
		
		Returns
		-------
		res : object with attributes
		    statistic : float
		        Cramér-von Mises statistic.
		    pvalue : float
		        The p-value.
		
		See Also
		--------
		cramervonmises, anderson_ksamp, epps_singleton_2samp, ks_2samp
		
		Notes
		-----
		.. versionadded:: 1.7.0
		
		The statistic is computed according to equation 9 in [2]_. The
		calculation of the p-value depends on the keyword `method`:
		
		- ``asymptotic``: The p-value is approximated by using the limiting
		  distribution of the test statistic.
		- ``exact``: The exact p-value is computed by enumerating all
		  possible combinations of the test statistic, see [2]_.
		
		The exact calculation will be very slow even for moderate sample
		sizes as the number of combinations increases rapidly with the
		size of the samples. If ``method=='auto'``, the exact approach
		is used if both samples contain less than 10 observations,
		otherwise the asymptotic distribution is used.
		
		If the underlying distribution is not continuous, the p-value is likely to
		be conservative (Section 6.2 in [3]_). When ranking the data to compute
		the test statistic, midranks are used if there are ties.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Cramer-von_Mises_criterion
		.. [2] Anderson, T.W. (1962). On the distribution of the two-sample
		       Cramer-von-Mises criterion. The Annals of Mathematical
		       Statistics, pp. 1148-1159.
		.. [3] Conover, W.J., Practical Nonparametric Statistics, 1971.
		
		Examples
		--------
		
		Suppose we wish to test whether two samples generated by
		``scipy.stats.norm.rvs`` have the same distribution. We choose a
		significance level of alpha=0.05.
		
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		>>> x = stats.norm.rvs(size=100, random_state=rng)
		>>> y = stats.norm.rvs(size=70, random_state=rng)
		>>> res = stats.cramervonmises_2samp(x, y)
		>>> res.statistic, res.pvalue
		(0.29376470588235293, 0.1412873014573014)
		
		The p-value exceeds our chosen significance level, so we do not
		reject the null hypothesis that the observed samples are drawn from the
		same distribution.
		
		For small sample sizes, one can compute the exact p-values:
		
		>>> x = stats.norm.rvs(size=7, random_state=rng)
		>>> y = stats.t.rvs(df=2, size=6, random_state=rng)
		>>> res = stats.cramervonmises_2samp(x, y, method='exact')
		>>> res.statistic, res.pvalue
		(0.197802197802198, 0.31643356643356646)
		
		The p-value based on the asymptotic distribution is a good approximation
		even though the sample size is small.
		
		>>> res = stats.cramervonmises_2samp(x, y, method='asymptotic')
		>>> res.statistic, res.pvalue
		(0.197802197802198, 0.2966041181527128)
		
		Independent of the method, one would not reject the null hypothesis at the
		chosen significance level in this example.
	**/
	static public function cramervonmises_2samp(x:Dynamic, y:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Crystalball distribution
		
		As an instance of the `rv_continuous` class, `crystalball` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(beta, m, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, beta, m, loc=0, scale=1)
		    Probability density function.
		logpdf(x, beta, m, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, beta, m, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, beta, m, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, beta, m, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, beta, m, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, beta, m, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, beta, m, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, beta, m, loc=0, scale=1)
		    Non-central moment of order n
		stats(beta, m, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(beta, m, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(beta, m), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(beta, m, loc=0, scale=1)
		    Median of the distribution.
		mean(beta, m, loc=0, scale=1)
		    Mean of the distribution.
		var(beta, m, loc=0, scale=1)
		    Variance of the distribution.
		std(beta, m, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, beta, m, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `crystalball` is:
		
		.. math::
		
		    f(x, \beta, m) =  \begin{cases}
		                        N \exp(-x^2 / 2),  &\text{for } x > -\beta\\
		                        N A (B - x)^{-m}  &\text{for } x \le -\beta
		                      \end{cases}
		
		where :math:`A = (m / |\beta|)^m  \exp(-\beta^2 / 2)`,
		:math:`B = m/|\beta| - |\beta|` and :math:`N` is a normalisation constant.
		
		`crystalball` takes :math:`\beta > 0` and :math:`m > 1` as shape
		parameters.  :math:`\beta` defines the point where the pdf changes
		from a power-law to a Gaussian distribution.  :math:`m` is the power
		of the power-law tail.
		
		References
		----------
		.. [1] "Crystal Ball Function",
		       https://en.wikipedia.org/wiki/Crystal_Ball_function
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``crystalball.pdf(x, beta, m, loc, scale)`` is identically
		equivalent to ``crystalball.pdf(y, beta, m) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		.. versionadded:: 0.19.0
		
		Examples
		--------
		>>> from scipy.stats import crystalball
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> beta, m = 2, 3
		>>> mean, var, skew, kurt = crystalball.stats(beta, m, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(crystalball.ppf(0.01, beta, m),
		...                 crystalball.ppf(0.99, beta, m), 100)
		>>> ax.plot(x, crystalball.pdf(x, beta, m),
		...        'r-', lw=5, alpha=0.6, label='crystalball pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = crystalball(beta, m)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = crystalball.ppf([0.001, 0.5, 0.999], beta, m)
		>>> np.allclose([0.001, 0.5, 0.999], crystalball.cdf(vals, beta, m))
		True
		
		Generate random numbers:
		
		>>> r = crystalball.rvs(beta, m, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function crystalball(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a cumulative frequency histogram, using the histogram function.
		
		A cumulative histogram is a mapping that counts the cumulative number of
		observations in all of the bins up to the specified bin.
		
		Parameters
		----------
		a : array_like
		    Input array.
		numbins : int, optional
		    The number of bins to use for the histogram. Default is 10.
		defaultreallimits : tuple (lower, upper), optional
		    The lower and upper values for the range of the histogram.
		    If no value is given, a range slightly larger than the range of the
		    values in `a` is used. Specifically ``(a.min() - s, a.max() + s)``,
		    where ``s = (1/2)(a.max() - a.min()) / (numbins - 1)``.
		weights : array_like, optional
		    The weights for each value in `a`. Default is None, which gives each
		    value a weight of 1.0
		
		Returns
		-------
		cumcount : ndarray
		    Binned values of cumulative frequency.
		lowerlimit : float
		    Lower real limit
		binsize : float
		    Width of each bin.
		extrapoints : int
		    Extra points.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from numpy.random import default_rng
		>>> from scipy import stats
		>>> rng = default_rng()
		>>> x = [1, 4, 2, 1, 3, 1]
		>>> res = stats.cumfreq(x, numbins=4, defaultreallimits=(1.5, 5))
		>>> res.cumcount
		array([ 1.,  2.,  3.,  3.])
		>>> res.extrapoints
		3
		
		Create a normal distribution with 1000 random values
		
		>>> samples = stats.norm.rvs(size=1000, random_state=rng)
		
		Calculate cumulative frequencies
		
		>>> res = stats.cumfreq(samples, numbins=25)
		
		Calculate space of values for x
		
		>>> x = res.lowerlimit + np.linspace(0, res.binsize*res.cumcount.size,
		...                                  res.cumcount.size)
		
		Plot histogram and cumulative histogram
		
		>>> fig = plt.figure(figsize=(10, 4))
		>>> ax1 = fig.add_subplot(1, 2, 1)
		>>> ax2 = fig.add_subplot(1, 2, 2)
		>>> ax1.hist(samples, bins=25)
		>>> ax1.set_title('Histogram')
		>>> ax2.bar(x, res.cumcount, width=res.binsize)
		>>> ax2.set_title('Cumulative histogram')
		>>> ax2.set_xlim([x.min(), x.max()])
		
		>>> plt.show()
	**/
	static public function cumfreq(a:Dynamic, ?numbins:Dynamic, ?defaultreallimits:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Compute several descriptive statistics of the passed array.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : int or None, optional
		    Axis along which statistics are calculated. Default is 0.
		    If None, compute over the whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom (only for variance).  Default is 1.
		bias : bool, optional
		    If False, then the skewness and kurtosis calculations are corrected
		    for statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		nobs : int or ndarray of ints
		    Number of observations (length of data along `axis`).
		    When 'omit' is chosen as nan_policy, the length along each axis
		    slice is counted separately.
		minmax: tuple of ndarrays or floats
		    Minimum and maximum value of `a` along the given axis.
		mean : ndarray or float
		    Arithmetic mean of `a` along the given axis.
		variance : ndarray or float
		    Unbiased variance of `a` along the given axis; denominator is number
		    of observations minus one.
		skewness : ndarray or float
		    Skewness of `a` along the given axis, based on moment calculations
		    with denominator equal to the number of observations, i.e. no degrees
		    of freedom correction.
		kurtosis : ndarray or float
		    Kurtosis (Fisher) of `a` along the given axis.  The kurtosis is
		    normalized so that it is zero for the normal distribution.  No
		    degrees of freedom are used.
		
		See Also
		--------
		skew, kurtosis
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(10)
		>>> stats.describe(a)
		DescribeResult(nobs=10, minmax=(0, 9), mean=4.5,
		               variance=9.166666666666666, skewness=0.0,
		               kurtosis=-1.2242424242424244)
		>>> b = [[1, 2], [3, 4]]
		>>> stats.describe(b)
		DescribeResult(nobs=2, minmax=(array([1, 2]), array([3, 4])),
		               mean=array([2., 3.]), variance=array([2., 2.]),
		               skewness=array([0., 0.]), kurtosis=array([-2., -2.]))
	**/
	static public function describe(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		A double gamma continuous random variable.
		
		As an instance of the `rv_continuous` class, `dgamma` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0, scale=1)
		    Median of the distribution.
		mean(a, loc=0, scale=1)
		    Mean of the distribution.
		var(a, loc=0, scale=1)
		    Variance of the distribution.
		std(a, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `dgamma` is:
		
		.. math::
		
		    f(x, a) = \frac{1}{2\Gamma(a)} |x|^{a-1} \exp(-|x|)
		
		for a real number :math:`x` and :math:`a > 0`. :math:`\Gamma` is the
		gamma function (`scipy.special.gamma`).
		
		`dgamma` takes ``a`` as a shape parameter for :math:`a`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``dgamma.pdf(x, a, loc, scale)`` is identically
		equivalent to ``dgamma.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import dgamma
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a = 1.1
		>>> mean, var, skew, kurt = dgamma.stats(a, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(dgamma.ppf(0.01, a),
		...                 dgamma.ppf(0.99, a), 100)
		>>> ax.plot(x, dgamma.pdf(x, a),
		...        'r-', lw=5, alpha=0.6, label='dgamma pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = dgamma(a)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = dgamma.ppf([0.001, 0.5, 0.999], a)
		>>> np.allclose([0.001, 0.5, 0.999], dgamma.cdf(vals, a))
		True
		
		Generate random numbers:
		
		>>> r = dgamma.rvs(a, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function dgamma(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Given a sample of a distribution, estimate the differential entropy.
		
		Several estimation methods are available using the `method` parameter. By
		default, a method is selected based the size of the sample.
		
		Parameters
		----------
		values : sequence
		    Sample from a continuous distribution.
		window_length : int, optional
		    Window length for computing Vasicek estimate. Must be an integer
		    between 1 and half of the sample size. If ``None`` (the default), it
		    uses the heuristic value
		
		    .. math::
		        \left \lfloor \sqrt{n} + 0.5 \right \rfloor
		
		    where :math:`n` is the sample size. This heuristic was originally
		    proposed in [2]_ and has become common in the literature.
		base : float, optional
		    The logarithmic base to use, defaults to ``e`` (natural logarithm).
		axis : int, optional
		    The axis along which the differential entropy is calculated.
		    Default is 0.
		method : {'vasicek', 'van es', 'ebrahimi', 'correa', 'auto'}, optional
		    The method used to estimate the differential entropy from the sample.
		    Default is ``'auto'``.  See Notes for more information.
		
		Returns
		-------
		entropy : float
		    The calculated differential entropy.
		
		Notes
		-----
		This function will converge to the true differential entropy in the limit
		
		.. math::
		    n \to \infty, \quad m \to \infty, \quad \frac{m}{n} \to 0
		
		The optimal choice of ``window_length`` for a given sample size depends on
		the (unknown) distribution. Typically, the smoother the density of the
		distribution, the larger the optimal value of ``window_length`` [1]_.
		
		The following options are available for the `method` parameter.
		
		* ``'vasicek'`` uses the estimator presented in [1]_. This is
		  one of the first and most influential estimators of differential entropy.
		* ``'van es'`` uses the bias-corrected estimator presented in [3]_, which
		  is not only consistent but, under some conditions, asymptotically normal.
		* ``'ebrahimi'`` uses an estimator presented in [4]_, which was shown
		  in simulation to have smaller bias and mean squared error than
		  the Vasicek estimator.
		* ``'correa'`` uses the estimator presented in [5]_ based on local linear
		  regression. In a simulation study, it had consistently smaller mean
		  square error than the Vasiceck estimator, but it is more expensive to
		  compute.
		* ``'auto'`` selects the method automatically (default). Currently,
		  this selects ``'van es'`` for very small samples (<10), ``'ebrahimi'``
		  for moderate sample sizes (11-1000), and ``'vasicek'`` for larger
		  samples, but this behavior is subject to change in future versions.
		
		All estimators are implemented as described in [6]_.
		
		References
		----------
		.. [1] Vasicek, O. (1976). A test for normality based on sample entropy.
		       Journal of the Royal Statistical Society:
		       Series B (Methodological), 38(1), 54-59.
		.. [2] Crzcgorzewski, P., & Wirczorkowski, R. (1999). Entropy-based
		       goodness-of-fit test for exponentiality. Communications in
		       Statistics-Theory and Methods, 28(5), 1183-1202.
		.. [3] Van Es, B. (1992). Estimating functionals related to a density by a
		       class of statistics based on spacings. Scandinavian Journal of
		       Statistics, 61-72.
		.. [4] Ebrahimi, N., Pflughoeft, K., & Soofi, E. S. (1994). Two measures
		       of sample entropy. Statistics & Probability Letters, 20(3), 225-234.
		.. [5] Correa, J. C. (1995). A new estimator of entropy. Communications
		       in Statistics-Theory and Methods, 24(10), 2439-2449.
		.. [6] Noughabi, H. A. (2015). Entropy Estimation Using Numerical Methods.
		       Annals of Data Science, 2(2), 231-241.
		       https://link.springer.com/article/10.1007/s40745-015-0045-9
		
		Examples
		--------
		>>> from scipy.stats import differential_entropy, norm
		
		Entropy of a standard normal distribution:
		
		>>> rng = np.random.default_rng()
		>>> values = rng.standard_normal(100)
		>>> differential_entropy(values)
		1.3407817436640392
		
		Compare with the true entropy:
		
		>>> float(norm.entropy())
		1.4189385332046727
		
		For several sample sizes between 5 and 1000, compare the accuracy of
		the ``'vasicek'``, ``'van es'``, and ``'ebrahimi'`` methods. Specifically,
		compare the root mean squared error (over 1000 trials) between the estimate
		and the true differential entropy of the distribution.
		
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>>
		>>>
		>>> def rmse(res, expected):
		...     '''Root mean squared error'''
		...     return np.sqrt(np.mean((res - expected)**2))
		>>>
		>>>
		>>> a, b = np.log10(5), np.log10(1000)
		>>> ns = np.round(np.logspace(a, b, 10)).astype(int)
		>>> reps = 1000  # number of repetitions for each sample size
		>>> expected = stats.expon.entropy()
		>>>
		>>> method_errors = {'vasicek': [], 'van es': [], 'ebrahimi': []}
		>>> for method in method_errors:
		...     for n in ns:
		...        rvs = stats.expon.rvs(size=(reps, n), random_state=rng)
		...        res = stats.differential_entropy(rvs, method=method, axis=-1)
		...        error = rmse(res, expected)
		...        method_errors[method].append(error)
		>>>
		>>> for method, errors in method_errors.items():
		...     plt.loglog(ns, errors, label=method)
		>>>
		>>> plt.legend()
		>>> plt.xlabel('sample size')
		>>> plt.ylabel('RMSE (1000 trials)')
		>>> plt.title('Entropy Estimator Error (Exponential Distribution)')
	**/
	static public function differential_entropy(values:Dynamic, ?window_length:Dynamic, ?base:Dynamic, ?axis:Dynamic, ?method:Dynamic):Float;
	/**
		A Dirichlet random variable.
		
		The ``alpha`` keyword specifies the concentration parameters of the
		distribution.
		
		.. versionadded:: 0.15.0
		
		Methods
		-------
		``pdf(x, alpha)``
		    Probability density function.
		``logpdf(x, alpha)``
		    Log of the probability density function.
		``rvs(alpha, size=1, random_state=None)``
		    Draw random samples from a Dirichlet distribution.
		``mean(alpha)``
		    The mean of the Dirichlet distribution
		``var(alpha)``
		    The variance of the Dirichlet distribution
		``entropy(alpha)``
		    Compute the differential entropy of the Dirichlet distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		alpha : array_like
		    The concentration parameters. The number of entries determines the
		    dimensionality of the distribution.
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Alternatively, the object may be called (as a function) to fix
		concentration parameters, returning a "frozen" Dirichlet
		random variable:
		
		rv = dirichlet(alpha)
		    - Frozen object with the same methods but holding the given
		      concentration parameters fixed.
		
		Notes
		-----
		Each :math:`\alpha` entry must be positive. The distribution has only
		support on the simplex defined by
		
		.. math::
		    \sum_{i=1}^{K} x_i = 1
		
		where :math:`0 < x_i < 1`.
		
		If the quantiles don't lie within the simplex, a ValueError is raised.
		
		The probability density function for `dirichlet` is
		
		.. math::
		
		    f(x) = \frac{1}{\mathrm{B}(\boldsymbol\alpha)} \prod_{i=1}^K x_i^{\alpha_i - 1}
		
		where
		
		.. math::
		
		    \mathrm{B}(\boldsymbol\alpha) = \frac{\prod_{i=1}^K \Gamma(\alpha_i)}
		                                 {\Gamma\bigl(\sum_{i=1}^K \alpha_i\bigr)}
		
		and :math:`\boldsymbol\alpha=(\alpha_1,\ldots,\alpha_K)`, the
		concentration parameters and :math:`K` is the dimension of the space
		where :math:`x` takes values.
		
		Note that the dirichlet interface is somewhat inconsistent.
		The array returned by the rvs function is transposed
		with respect to the format expected by the pdf and logpdf.
		
		Examples
		--------
		>>> from scipy.stats import dirichlet
		
		Generate a dirichlet random variable
		
		>>> quantiles = np.array([0.2, 0.2, 0.6])  # specify quantiles
		>>> alpha = np.array([0.4, 5, 15])  # specify concentration parameters
		>>> dirichlet.pdf(quantiles, alpha)
		0.2843831684937255
		
		The same PDF but following a log scale
		
		>>> dirichlet.logpdf(quantiles, alpha)
		-1.2574327653159187
		
		Once we specify the dirichlet distribution
		we can then calculate quantities of interest
		
		>>> dirichlet.mean(alpha)  # get the mean of the distribution
		array([0.01960784, 0.24509804, 0.73529412])
		>>> dirichlet.var(alpha) # get variance
		array([0.00089829, 0.00864603, 0.00909517])
		>>> dirichlet.entropy(alpha)  # calculate the differential entropy
		-4.3280162474082715
		
		We can also return random samples from the distribution
		
		>>> dirichlet.rvs(alpha, size=1, random_state=1)
		array([[0.00766178, 0.24670518, 0.74563305]])
		>>> dirichlet.rvs(alpha, size=2, random_state=2)
		array([[0.01639427, 0.1292273 , 0.85437844],
		       [0.00156917, 0.19033695, 0.80809388]])
	**/
	static public function dirichlet(alpha:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		A  Laplacian discrete random variable.
		
		As an instance of the `rv_discrete` class, `dlaplace` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, a, loc=0)
		    Probability mass function.
		logpmf(k, a, loc=0)
		    Log of the probability mass function.
		cdf(k, a, loc=0)
		    Cumulative distribution function.
		logcdf(k, a, loc=0)
		    Log of the cumulative distribution function.
		sf(k, a, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, a, loc=0)
		    Log of the survival function.
		ppf(q, a, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(a, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(a,), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0)
		    Median of the distribution.
		mean(a, loc=0)
		    Mean of the distribution.
		var(a, loc=0)
		    Variance of the distribution.
		std(a, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability mass function for `dlaplace` is:
		
		.. math::
		
		    f(k) = \tanh(a/2) \exp(-a |k|)
		
		for integers :math:`k` and :math:`a > 0`.
		
		`dlaplace` takes :math:`a` as shape parameter.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``dlaplace.pmf(k, a, loc)`` is identically
		equivalent to ``dlaplace.pmf(k - loc, a)``.
		
		Examples
		--------
		>>> from scipy.stats import dlaplace
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a = 0.8
		>>> mean, var, skew, kurt = dlaplace.stats(a, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(dlaplace.ppf(0.01, a),
		...               dlaplace.ppf(0.99, a))
		>>> ax.plot(x, dlaplace.pmf(x, a), 'bo', ms=8, label='dlaplace pmf')
		>>> ax.vlines(x, 0, dlaplace.pmf(x, a), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = dlaplace(a)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = dlaplace.cdf(x, a)
		>>> np.allclose(x, dlaplace.ppf(prob, a))
		True
		
		Generate random numbers:
		
		>>> r = dlaplace.rvs(a, size=1000)
	**/
	static public function dlaplace(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A double Weibull continuous random variable.
		
		As an instance of the `rv_continuous` class, `dweibull` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `dweibull` is given by
		
		.. math::
		
		    f(x, c) = c / 2 |x|^{c-1} \exp(-|x|^c)
		
		for a real number :math:`x` and :math:`c > 0`.
		
		`dweibull` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``dweibull.pdf(x, c, loc, scale)`` is identically
		equivalent to ``dweibull.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import dweibull
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 2.07
		>>> mean, var, skew, kurt = dweibull.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(dweibull.ppf(0.01, c),
		...                 dweibull.ppf(0.99, c), 100)
		>>> ax.plot(x, dweibull.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='dweibull pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = dweibull(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = dweibull.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], dweibull.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = dweibull.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function dweibull(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the energy distance between two 1D distributions.
		
		.. versionadded:: 1.0.0
		
		Parameters
		----------
		u_values, v_values : array_like
		    Values observed in the (empirical) distribution.
		u_weights, v_weights : array_like, optional
		    Weight for each value. If unspecified, each value is assigned the same
		    weight.
		    `u_weights` (resp. `v_weights`) must have the same length as
		    `u_values` (resp. `v_values`). If the weight sum differs from 1, it
		    must still be positive and finite so that the weights can be normalized
		    to sum to 1.
		
		Returns
		-------
		distance : float
		    The computed distance between the distributions.
		
		Notes
		-----
		The energy distance between two distributions :math:`u` and :math:`v`, whose
		respective CDFs are :math:`U` and :math:`V`, equals to:
		
		.. math::
		
		    D(u, v) = \left( 2\mathbb E|X - Y| - \mathbb E|X - X'| -
		    \mathbb E|Y - Y'| \right)^{1/2}
		
		where :math:`X` and :math:`X'` (resp. :math:`Y` and :math:`Y'`) are
		independent random variables whose probability distribution is :math:`u`
		(resp. :math:`v`).
		
		As shown in [2]_, for one-dimensional real-valued variables, the energy
		distance is linked to the non-distribution-free version of the Cramér-von
		Mises distance:
		
		.. math::
		
		    D(u, v) = \sqrt{2} l_2(u, v) = \left( 2 \int_{-\infty}^{+\infty} (U-V)^2
		    \right)^{1/2}
		
		Note that the common Cramér-von Mises criterion uses the distribution-free
		version of the distance. See [2]_ (section 2), for more details about both
		versions of the distance.
		
		The input distributions can be empirical, therefore coming from samples
		whose values are effectively inputs of the function, or they can be seen as
		generalized functions, in which case they are weighted sums of Dirac delta
		functions located at the specified values.
		
		References
		----------
		.. [1] "Energy distance", https://en.wikipedia.org/wiki/Energy_distance
		.. [2] Szekely "E-statistics: The energy of statistical samples." Bowling
		       Green State University, Department of Mathematics and Statistics,
		       Technical Report 02-16 (2002).
		.. [3] Rizzo, Szekely "Energy distance." Wiley Interdisciplinary Reviews:
		       Computational Statistics, 8(1):27-38 (2015).
		.. [4] Bellemare, Danihelka, Dabney, Mohamed, Lakshminarayanan, Hoyer,
		       Munos "The Cramer Distance as a Solution to Biased Wasserstein
		       Gradients" (2017). :arXiv:`1705.10743`.
		
		Examples
		--------
		>>> from scipy.stats import energy_distance
		>>> energy_distance([0], [2])
		2.0000000000000004
		>>> energy_distance([0, 8], [0, 8], [3, 1], [2, 2])
		1.0000000000000002
		>>> energy_distance([0.7, 7.4, 2.4, 6.8], [1.4, 8. ],
		...                 [2.1, 4.2, 7.4, 8. ], [7.6, 8.8])
		0.88003340976158217
	**/
	static public function energy_distance(u_values:Dynamic, v_values:Dynamic, ?u_weights:Dynamic, ?v_weights:Dynamic):Float;
	/**
		Calculate the entropy of a distribution for given probability values.
		
		If only probabilities `pk` are given, the entropy is calculated as
		``S = -sum(pk * log(pk), axis=axis)``.
		
		If `qk` is not None, then compute the Kullback-Leibler divergence
		``S = sum(pk * log(pk / qk), axis=axis)``.
		
		This routine will normalize `pk` and `qk` if they don't sum to 1.
		
		Parameters
		----------
		pk : array_like
		    Defines the (discrete) distribution. Along each axis-slice of ``pk``,
		    element ``i`` is the  (possibly unnormalized) probability of event
		    ``i``.
		qk : array_like, optional
		    Sequence against which the relative entropy is computed. Should be in
		    the same format as `pk`.
		base : float, optional
		    The logarithmic base to use, defaults to ``e`` (natural logarithm).
		axis: int, optional
		    The axis along which the entropy is calculated. Default is 0.
		
		Returns
		-------
		S : {float, array_like}
		    The calculated entropy.
		
		Examples
		--------
		
		>>> from scipy.stats import entropy
		
		Bernoulli trial with different p.
		The outcome of a fair coin is the most uncertain:
		
		>>> entropy([1/2, 1/2], base=2)
		1.0
		
		The outcome of a biased coin is less uncertain:
		
		>>> entropy([9/10, 1/10], base=2)
		0.46899559358928117
		
		Relative entropy:
		
		>>> entropy([1/2, 1/2], qk=[9/10, 1/10])
		0.5108256237659907
	**/
	static public function entropy(pk:Dynamic, ?qk:Dynamic, ?base:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the Epps-Singleton (ES) test statistic.
		
		Test the null hypothesis that two samples have the same underlying
		probability distribution.
		
		Parameters
		----------
		x, y : array-like
		    The two samples of observations to be tested. Input must not have more
		    than one dimension. Samples can have different lengths.
		t : array-like, optional
		    The points (t1, ..., tn) where the empirical characteristic function is
		    to be evaluated. It should be positive distinct numbers. The default
		    value (0.4, 0.8) is proposed in [1]_. Input must not have more than
		    one dimension.
		
		Returns
		-------
		statistic : float
		    The test statistic.
		pvalue : float
		    The associated p-value based on the asymptotic chi2-distribution.
		
		See Also
		--------
		ks_2samp, anderson_ksamp
		
		Notes
		-----
		Testing whether two samples are generated by the same underlying
		distribution is a classical question in statistics. A widely used test is
		the Kolmogorov-Smirnov (KS) test which relies on the empirical
		distribution function. Epps and Singleton introduce a test based on the
		empirical characteristic function in [1]_.
		
		One advantage of the ES test compared to the KS test is that is does
		not assume a continuous distribution. In [1]_, the authors conclude
		that the test also has a higher power than the KS test in many
		examples. They recommend the use of the ES test for discrete samples as
		well as continuous samples with at least 25 observations each, whereas
		`anderson_ksamp` is recommended for smaller sample sizes in the
		continuous case.
		
		The p-value is computed from the asymptotic distribution of the test
		statistic which follows a `chi2` distribution. If the sample size of both
		`x` and `y` is below 25, the small sample correction proposed in [1]_ is
		applied to the test statistic.
		
		The default values of `t` are determined in [1]_ by considering
		various distributions and finding good values that lead to a high power
		of the test in general. Table III in [1]_ gives the optimal values for
		the distributions tested in that study. The values of `t` are scaled by
		the semi-interquartile range in the implementation, see [1]_.
		
		References
		----------
		.. [1] T. W. Epps and K. J. Singleton, "An omnibus test for the two-sample
		   problem using the empirical characteristic function", Journal of
		   Statistical Computation and Simulation 26, p. 177--203, 1986.
		
		.. [2] S. J. Goerg and J. Kaiser, "Nonparametric testing of distributions
		   - the Epps-Singleton two-sample test using the empirical characteristic
		   function", The Stata Journal 9(3), p. 454--465, 2009.
	**/
	static public function epps_singleton_2samp(x:Dynamic, y:Dynamic, ?t:Dynamic):Float;
	/**
		An Erlang continuous random variable.
		
		As an instance of the `rv_continuous` class, `erlang` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0, scale=1)
		    Median of the distribution.
		mean(a, loc=0, scale=1)
		    Mean of the distribution.
		var(a, loc=0, scale=1)
		    Variance of the distribution.
		std(a, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		gamma
		
		Notes
		-----
		The Erlang distribution is a special case of the Gamma distribution, with
		the shape parameter `a` an integer.  Note that this restriction is not
		enforced by `erlang`. It will, however, generate a warning the first time
		a non-integer value is used for the shape parameter.
		
		Refer to `gamma` for examples.
	**/
	static public function erlang(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An exponential continuous random variable.
		
		As an instance of the `rv_continuous` class, `expon` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `expon` is:
		
		.. math::
		
		    f(x) = \exp(-x)
		
		for :math:`x \ge 0`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``expon.pdf(x, loc, scale)`` is identically
		equivalent to ``expon.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		A common parameterization for `expon` is in terms of the rate parameter
		``lambda``, such that ``pdf = lambda * exp(-lambda * x)``. This
		parameterization corresponds to using ``scale = 1 / lambda``.
		
		The exponential distribution is a special case of the gamma
		distributions, with gamma shape parameter ``a = 1``.
		
		Examples
		--------
		>>> from scipy.stats import expon
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = expon.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(expon.ppf(0.01),
		...                 expon.ppf(0.99), 100)
		>>> ax.plot(x, expon.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='expon pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = expon()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = expon.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], expon.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = expon.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function expon(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An exponentially modified Normal continuous random variable.
		
		Also known as the exponentially modified Gaussian distribution [1]_.
		
		As an instance of the `rv_continuous` class, `exponnorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(K, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, K, loc=0, scale=1)
		    Probability density function.
		logpdf(x, K, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, K, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, K, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, K, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, K, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, K, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, K, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, K, loc=0, scale=1)
		    Non-central moment of order n
		stats(K, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(K, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(K,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(K, loc=0, scale=1)
		    Median of the distribution.
		mean(K, loc=0, scale=1)
		    Mean of the distribution.
		var(K, loc=0, scale=1)
		    Variance of the distribution.
		std(K, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, K, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `exponnorm` is:
		
		.. math::
		
		    f(x, K) = \frac{1}{2K} \exp\left(\frac{1}{2 K^2} - x / K \right)
		              \text{erfc}\left(-\frac{x - 1/K}{\sqrt{2}}\right)
		
		where :math:`x` is a real number and :math:`K > 0`.
		
		It can be thought of as the sum of a standard normal random variable
		and an independent exponentially distributed random variable with rate
		``1/K``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``exponnorm.pdf(x, K, loc, scale)`` is identically
		equivalent to ``exponnorm.pdf(y, K) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		An alternative parameterization of this distribution (for example, in
		the Wikpedia article [1]_) involves three parameters, :math:`\mu`,
		:math:`\lambda` and :math:`\sigma`.
		
		In the present parameterization this corresponds to having ``loc`` and
		``scale`` equal to :math:`\mu` and :math:`\sigma`, respectively, and
		shape parameter :math:`K = 1/(\sigma\lambda)`.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] Exponentially modified Gaussian distribution, Wikipedia,
		       https://en.wikipedia.org/wiki/Exponentially_modified_Gaussian_distribution
		
		Examples
		--------
		>>> from scipy.stats import exponnorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> K = 1.5
		>>> mean, var, skew, kurt = exponnorm.stats(K, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(exponnorm.ppf(0.01, K),
		...                 exponnorm.ppf(0.99, K), 100)
		>>> ax.plot(x, exponnorm.pdf(x, K),
		...        'r-', lw=5, alpha=0.6, label='exponnorm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = exponnorm(K)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = exponnorm.ppf([0.001, 0.5, 0.999], K)
		>>> np.allclose([0.001, 0.5, 0.999], exponnorm.cdf(vals, K))
		True
		
		Generate random numbers:
		
		>>> r = exponnorm.rvs(K, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function exponnorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An exponential power continuous random variable.
		
		As an instance of the `rv_continuous` class, `exponpow` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(b,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(b, loc=0, scale=1)
		    Median of the distribution.
		mean(b, loc=0, scale=1)
		    Mean of the distribution.
		var(b, loc=0, scale=1)
		    Variance of the distribution.
		std(b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `exponpow` is:
		
		.. math::
		
		    f(x, b) = b x^{b-1} \exp(1 + x^b - \exp(x^b))
		
		for :math:`x \ge 0`, :math:`b > 0`.  Note that this is a different
		distribution from the exponential power distribution that is also known
		under the names "generalized normal" or "generalized Gaussian".
		
		`exponpow` takes ``b`` as a shape parameter for :math:`b`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``exponpow.pdf(x, b, loc, scale)`` is identically
		equivalent to ``exponpow.pdf(y, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		http://www.math.wm.edu/~leemis/chart/UDR/PDFs/Exponentialpower.pdf
		
		Examples
		--------
		>>> from scipy.stats import exponpow
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> b = 2.7
		>>> mean, var, skew, kurt = exponpow.stats(b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(exponpow.ppf(0.01, b),
		...                 exponpow.ppf(0.99, b), 100)
		>>> ax.plot(x, exponpow.pdf(x, b),
		...        'r-', lw=5, alpha=0.6, label='exponpow pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = exponpow(b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = exponpow.ppf([0.001, 0.5, 0.999], b)
		>>> np.allclose([0.001, 0.5, 0.999], exponpow.cdf(vals, b))
		True
		
		Generate random numbers:
		
		>>> r = exponpow.rvs(b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function exponpow(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An exponentiated Weibull continuous random variable.
		
		As an instance of the `rv_continuous` class, `exponweib` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, c), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, c, loc=0, scale=1)
		    Median of the distribution.
		mean(a, c, loc=0, scale=1)
		    Mean of the distribution.
		var(a, c, loc=0, scale=1)
		    Variance of the distribution.
		std(a, c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		weibull_min, numpy.random.Generator.weibull
		
		Notes
		-----
		The probability density function for `exponweib` is:
		
		.. math::
		
		    f(x, a, c) = a c [1-\exp(-x^c)]^{a-1} \exp(-x^c) x^{c-1}
		
		and its cumulative distribution function is:
		
		.. math::
		
		    F(x, a, c) = [1-\exp(-x^c)]^a
		
		for :math:`x > 0`, :math:`a > 0`, :math:`c > 0`.
		
		`exponweib` takes :math:`a` and :math:`c` as shape parameters:
		
		* :math:`a` is the exponentiation parameter,
		  with the special case :math:`a=1` corresponding to the
		  (non-exponentiated) Weibull distribution `weibull_min`.
		* :math:`c` is the shape parameter of the non-exponentiated Weibull law.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``exponweib.pdf(x, a, c, loc, scale)`` is identically
		equivalent to ``exponweib.pdf(y, a, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		https://en.wikipedia.org/wiki/Exponentiated_Weibull_distribution
		
		Examples
		--------
		>>> from scipy.stats import exponweib
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, c = 2.89, 1.95
		>>> mean, var, skew, kurt = exponweib.stats(a, c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(exponweib.ppf(0.01, a, c),
		...                 exponweib.ppf(0.99, a, c), 100)
		>>> ax.plot(x, exponweib.pdf(x, a, c),
		...        'r-', lw=5, alpha=0.6, label='exponweib pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = exponweib(a, c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = exponweib.ppf([0.001, 0.5, 0.999], a, c)
		>>> np.allclose([0.001, 0.5, 0.999], exponweib.cdf(vals, a, c))
		True
		
		Generate random numbers:
		
		>>> r = exponweib.rvs(a, c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function exponweib(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An F continuous random variable.
		
		For the noncentral F distribution, see `ncf`.
		
		As an instance of the `rv_continuous` class, `f` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(dfn, dfd, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, dfn, dfd, loc=0, scale=1)
		    Probability density function.
		logpdf(x, dfn, dfd, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, dfn, dfd, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, dfn, dfd, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, dfn, dfd, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, dfn, dfd, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, dfn, dfd, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, dfn, dfd, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, dfn, dfd, loc=0, scale=1)
		    Non-central moment of order n
		stats(dfn, dfd, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(dfn, dfd, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(dfn, dfd), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(dfn, dfd, loc=0, scale=1)
		    Median of the distribution.
		mean(dfn, dfd, loc=0, scale=1)
		    Mean of the distribution.
		var(dfn, dfd, loc=0, scale=1)
		    Variance of the distribution.
		std(dfn, dfd, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, dfn, dfd, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		ncf
		
		Notes
		-----
		The probability density function for `f` is:
		
		.. math::
		
		    f(x, df_1, df_2) = \frac{df_2^{df_2/2} df_1^{df_1/2} x^{df_1 / 2-1}}
		                            {(df_2+df_1 x)^{(df_1+df_2)/2}
		                             B(df_1/2, df_2/2)}
		
		for :math:`x > 0`.
		
		`f` takes ``dfn`` and ``dfd`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``f.pdf(x, dfn, dfd, loc, scale)`` is identically
		equivalent to ``f.pdf(y, dfn, dfd) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import f
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> dfn, dfd = 29, 18
		>>> mean, var, skew, kurt = f.stats(dfn, dfd, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(f.ppf(0.01, dfn, dfd),
		...                 f.ppf(0.99, dfn, dfd), 100)
		>>> ax.plot(x, f.pdf(x, dfn, dfd),
		...        'r-', lw=5, alpha=0.6, label='f pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = f(dfn, dfd)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = f.ppf([0.001, 0.5, 0.999], dfn, dfd)
		>>> np.allclose([0.001, 0.5, 0.999], f.cdf(vals, dfn, dfd))
		True
		
		Generate random numbers:
		
		>>> r = f.rvs(dfn, dfd, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function f(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform one-way ANOVA.
		
		The one-way ANOVA tests the null hypothesis that two or more groups have
		the same population mean.  The test is applied to samples from two or
		more groups, possibly with differing sizes.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The sample measurements for each group.  There must be at least
		    two arguments.  If the arrays are multidimensional, then all the
		    dimensions of the array must be the same except for `axis`.
		axis : int, optional
		    Axis of the input arrays along which the test is applied.
		    Default is 0.
		
		Returns
		-------
		statistic : float
		    The computed F statistic of the test.
		pvalue : float
		    The associated p-value from the F distribution.
		
		Warns
		-----
		F_onewayConstantInputWarning
		    Raised if each of the input arrays is constant array.
		    In this case the F statistic is either infinite or isn't defined,
		    so ``np.inf`` or ``np.nan`` is returned.
		
		F_onewayBadInputSizesWarning
		    Raised if the length of any input array is 0, or if all the input
		    arrays have length 1.  ``np.nan`` is returned for the F statistic
		    and the p-value in these cases.
		
		Notes
		-----
		The ANOVA test has important assumptions that must be satisfied in order
		for the associated p-value to be valid.
		
		1. The samples are independent.
		2. Each sample is from a normally distributed population.
		3. The population standard deviations of the groups are all equal.  This
		   property is known as homoscedasticity.
		
		If these assumptions are not true for a given set of data, it may still
		be possible to use the Kruskal-Wallis H-test (`scipy.stats.kruskal`) or
		the Alexander-Govern test (`scipy.stats.alexandergovern`) although with
		some loss of power.
		
		The length of each group must be at least one, and there must be at
		least one group with length greater than one.  If these conditions
		are not satisfied, a warning is generated and (``np.nan``, ``np.nan``)
		is returned.
		
		If each group contains constant values, and there exist at least two
		groups with different values, the function generates a warning and
		returns (``np.inf``, 0).
		
		If all values in all groups are the same, function generates a warning
		and returns (``np.nan``, ``np.nan``).
		
		The algorithm is from Heiman [2]_, pp.394-7.
		
		References
		----------
		.. [1] R. Lowry, "Concepts and Applications of Inferential Statistics",
		       Chapter 14, 2014, http://vassarstats.net/textbook/
		
		.. [2] G.W. Heiman, "Understanding research methods and statistics: An
		       integrated introduction for psychology", Houghton, Mifflin and
		       Company, 2001.
		
		.. [3] G.H. McDonald, "Handbook of Biological Statistics", One-way ANOVA.
		       http://www.biostathandbook.com/onewayanova.html
		
		Examples
		--------
		>>> from scipy.stats import f_oneway
		
		Here are some data [3]_ on a shell measurement (the length of the anterior
		adductor muscle scar, standardized by dividing by length) in the mussel
		Mytilus trossulus from five locations: Tillamook, Oregon; Newport, Oregon;
		Petersburg, Alaska; Magadan, Russia; and Tvarminne, Finland, taken from a
		much larger data set used in McDonald et al. (1991).
		
		>>> tillamook = [0.0571, 0.0813, 0.0831, 0.0976, 0.0817, 0.0859, 0.0735,
		...              0.0659, 0.0923, 0.0836]
		>>> newport = [0.0873, 0.0662, 0.0672, 0.0819, 0.0749, 0.0649, 0.0835,
		...            0.0725]
		>>> petersburg = [0.0974, 0.1352, 0.0817, 0.1016, 0.0968, 0.1064, 0.105]
		>>> magadan = [0.1033, 0.0915, 0.0781, 0.0685, 0.0677, 0.0697, 0.0764,
		...            0.0689]
		>>> tvarminne = [0.0703, 0.1026, 0.0956, 0.0973, 0.1039, 0.1045]
		>>> f_oneway(tillamook, newport, petersburg, magadan, tvarminne)
		F_onewayResult(statistic=7.121019471642447, pvalue=0.0002812242314534544)
		
		`f_oneway` accepts multidimensional input arrays.  When the inputs
		are multidimensional and `axis` is not given, the test is performed
		along the first axis of the input arrays.  For the following data, the
		test is performed three times, once for each column.
		
		>>> a = np.array([[9.87, 9.03, 6.81],
		...               [7.18, 8.35, 7.00],
		...               [8.39, 7.58, 7.68],
		...               [7.45, 6.33, 9.35],
		...               [6.41, 7.10, 9.33],
		...               [8.00, 8.24, 8.44]])
		>>> b = np.array([[6.35, 7.30, 7.16],
		...               [6.65, 6.68, 7.63],
		...               [5.72, 7.73, 6.72],
		...               [7.01, 9.19, 7.41],
		...               [7.75, 7.87, 8.30],
		...               [6.90, 7.97, 6.97]])
		>>> c = np.array([[3.31, 8.77, 1.01],
		...               [8.25, 3.24, 3.62],
		...               [6.32, 8.81, 5.19],
		...               [7.48, 8.83, 8.91],
		...               [8.59, 6.01, 6.07],
		...               [3.07, 9.72, 7.48]])
		>>> F, p = f_oneway(a, b, c)
		>>> F
		array([1.75676344, 0.03701228, 3.76439349])
		>>> p
		array([0.20630784, 0.96375203, 0.04733157])
	**/
	static public function f_oneway(?args:python.VarArgs<Dynamic>, ?axis:Dynamic):Float;
	/**
		A fatigue-life (Birnbaum-Saunders) continuous random variable.
		
		As an instance of the `rv_continuous` class, `fatiguelife` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `fatiguelife` is:
		
		.. math::
		
		    f(x, c) = \frac{x+1}{2c\sqrt{2\pi x^3}} \exp(-\frac{(x-1)^2}{2x c^2})
		
		for :math:`x >= 0` and :math:`c > 0`.
		
		`fatiguelife` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``fatiguelife.pdf(x, c, loc, scale)`` is identically
		equivalent to ``fatiguelife.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] "Birnbaum-Saunders distribution",
		       https://en.wikipedia.org/wiki/Birnbaum-Saunders_distribution
		
		Examples
		--------
		>>> from scipy.stats import fatiguelife
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 29
		>>> mean, var, skew, kurt = fatiguelife.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(fatiguelife.ppf(0.01, c),
		...                 fatiguelife.ppf(0.99, c), 100)
		>>> ax.plot(x, fatiguelife.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='fatiguelife pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = fatiguelife(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = fatiguelife.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], fatiguelife.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = fatiguelife.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function fatiguelife(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find repeats and repeat counts.
		
		Parameters
		----------
		arr : array_like
		    Input array. This is cast to float64.
		
		Returns
		-------
		values : ndarray
		    The unique values from the (flattened) input that are repeated.
		
		counts : ndarray
		    Number of times the corresponding 'value' is repeated.
		
		Notes
		-----
		In numpy >= 1.9 `numpy.unique` provides similar functionality. The main
		difference is that `find_repeats` only returns repeated values.
		
		Examples
		--------
		>>> from scipy import stats
		>>> stats.find_repeats([2, 1, 2, 3, 2, 2, 5])
		RepeatedResults(values=array([2.]), counts=array([4]))
		
		>>> stats.find_repeats([[10, 20, 1, 2], [5, 5, 4, 4]])
		RepeatedResults(values=array([4.,  5.]), counts=array([2, 2]))
	**/
	static public function find_repeats(arr:Dynamic):Dynamic;
	/**
		Perform a Fisher exact test on a 2x2 contingency table.
		
		Parameters
		----------
		table : array_like of ints
		    A 2x2 contingency table.  Elements must be non-negative integers.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided'
		    * 'less': one-sided
		    * 'greater': one-sided
		
		    See the Notes for more details.
		
		Returns
		-------
		oddsratio : float
		    This is prior odds ratio and not a posterior estimate.
		p_value : float
		    P-value, the probability of obtaining a distribution at least as
		    extreme as the one that was actually observed, assuming that the
		    null hypothesis is true.
		
		See Also
		--------
		chi2_contingency : Chi-square test of independence of variables in a
		    contingency table.  This can be used as an alternative to
		    `fisher_exact` when the numbers in the table are large.
		barnard_exact : Barnard's exact test, which is a more powerful alternative
		    than Fisher's exact test for 2x2 contingency tables.
		boschloo_exact : Boschloo's exact test, which is a more powerful alternative
		    than Fisher's exact test for 2x2 contingency tables.
		
		Notes
		-----
		*Null hypothesis and p-values*
		
		The null hypothesis is that the input table is from the hypergeometric
		distribution with parameters (as used in `hypergeom`)
		``M = a + b + c + d``, ``n = a + b`` and ``N = a + c``, where the
		input table is ``[[a, b], [c, d]]``.  This distribution has support
		``max(0, N + n - M) <= x <= min(N, n)``, or, in terms of the values
		in the input table, ``min(0, a - d) <= x <= a + min(b, c)``.  ``x``
		can be interpreted as the upper-left element of a 2x2 table, so the
		tables in the distribution have form::
		
		    [  x           n - x     ]
		    [N - x    M - (n + N) + x]
		
		For example, if::
		
		    table = [6  2]
		            [1  4]
		
		then the support is ``2 <= x <= 7``, and the tables in the distribution
		are::
		
		    [2 6]   [3 5]   [4 4]   [5 3]   [6 2]  [7 1]
		    [5 0]   [4 1]   [3 2]   [2 3]   [1 4]  [0 5]
		
		The probability of each table is given by the hypergeometric distribution
		``hypergeom.pmf(x, M, n, N)``.  For this example, these are (rounded to
		three significant digits)::
		
		    x       2      3      4      5       6        7
		    p  0.0163  0.163  0.408  0.326  0.0816  0.00466
		
		These can be computed with::
		
		    >>> from scipy.stats import hypergeom
		    >>> table = np.array([[6, 2], [1, 4]])
		    >>> M = table.sum()
		    >>> n = table[0].sum()
		    >>> N = table[:, 0].sum()
		    >>> start, end = hypergeom.support(M, n, N)
		    >>> hypergeom.pmf(np.arange(start, end+1), M, n, N)
		    array([0.01631702, 0.16317016, 0.40792541, 0.32634033, 0.08158508,
		           0.004662  ])
		
		The two-sided p-value is the probability that, under the null hypothesis,
		a random table would have a probability equal to or less than the
		probability of the input table.  For our example, the probability of
		the input table (where ``x = 6``) is 0.0816.  The x values where the
		probability does not exceed this are 2, 6 and 7, so the two-sided p-value
		is ``0.0163 + 0.0816 + 0.00466 ~= 0.10256``::
		
		    >>> from scipy.stats import fisher_exact
		    >>> oddsr, p = fisher_exact(table, alternative='two-sided')
		    >>> p
		    0.10256410256410257
		
		The one-sided p-value for ``alternative='greater'`` is the probability
		that a random table has ``x >= a``, which in our example is ``x >= 6``,
		or ``0.0816 + 0.00466 ~= 0.08626``::
		
		    >>> oddsr, p = fisher_exact(table, alternative='greater')
		    >>> p
		    0.08624708624708627
		
		This is equivalent to computing the survival function of the
		distribution at ``x = 5`` (one less than ``x`` from the input table,
		because we want to include the probability of ``x = 6`` in the sum)::
		
		    >>> hypergeom.sf(5, M, n, N)
		    0.08624708624708627
		
		For ``alternative='less'``, the one-sided p-value is the probability
		that a random table has ``x <= a``, (i.e. ``x <= 6`` in our example),
		or ``0.0163 + 0.163 + 0.408 + 0.326 + 0.0816 ~= 0.9949``::
		
		    >>> oddsr, p = fisher_exact(table, alternative='less')
		    >>> p
		    0.9953379953379957
		
		This is equivalent to computing the cumulative distribution function
		of the distribution at ``x = 6``:
		
		    >>> hypergeom.cdf(6, M, n, N)
		    0.9953379953379957
		
		*Odds ratio*
		
		The calculated odds ratio is different from the one R uses. This SciPy
		implementation returns the (more common) "unconditional Maximum
		Likelihood Estimate", while R uses the "conditional Maximum Likelihood
		Estimate".
		
		Examples
		--------
		Say we spend a few days counting whales and sharks in the Atlantic and
		Indian oceans. In the Atlantic ocean we find 8 whales and 1 shark, in the
		Indian ocean 2 whales and 5 sharks. Then our contingency table is::
		
		            Atlantic  Indian
		    whales     8        2
		    sharks     1        5
		
		We use this table to find the p-value:
		
		>>> from scipy.stats import fisher_exact
		>>> oddsratio, pvalue = fisher_exact([[8, 2], [1, 5]])
		>>> pvalue
		0.0349...
		
		The probability that we would observe this or an even more imbalanced ratio
		by chance is about 3.5%.  A commonly used significance level is 5%--if we
		adopt that, we can therefore conclude that our observed imbalance is
		statistically significant; whales prefer the Atlantic while sharks prefer
		the Indian ocean.
	**/
	static public function fisher_exact(table:Dynamic, ?alternative:Dynamic):Float;
	/**
		A Fisk continuous random variable.
		
		The Fisk distribution is also known as the log-logistic distribution.
		
		As an instance of the `rv_continuous` class, `fisk` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		burr
		
		Notes
		-----
		The probability density function for `fisk` is:
		
		.. math::
		
		    f(x, c) = c x^{-c-1} (1 + x^{-c})^{-2}
		
		for :math:`x >= 0` and :math:`c > 0`.
		
		`fisk` takes ``c`` as a shape parameter for :math:`c`.
		
		`fisk` is a special case of `burr` or `burr12` with ``d=1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``fisk.pdf(x, c, loc, scale)`` is identically
		equivalent to ``fisk.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import fisk
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 3.09
		>>> mean, var, skew, kurt = fisk.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(fisk.ppf(0.01, c),
		...                 fisk.ppf(0.99, c), 100)
		>>> ax.plot(x, fisk.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='fisk pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = fisk(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = fisk.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], fisk.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = fisk.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function fisk(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform Fligner-Killeen test for equality of variance.
		
		Fligner's test tests the null hypothesis that all input samples
		are from populations with equal variances.  Fligner-Killeen's test is
		distribution free when populations are identical [2]_.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    Arrays of sample data.  Need not be the same length.
		center : {'mean', 'median', 'trimmed'}, optional
		    Keyword argument controlling which function of the data is used in
		    computing the test statistic.  The default is 'median'.
		proportiontocut : float, optional
		    When `center` is 'trimmed', this gives the proportion of data points
		    to cut from each end. (See `scipy.stats.trim_mean`.)
		    Default is 0.05.
		
		Returns
		-------
		statistic : float
		    The test statistic.
		pvalue : float
		    The p-value for the hypothesis test.
		
		See Also
		--------
		bartlett : A parametric test for equality of k variances in normal samples
		levene : A robust parametric test for equality of k variances
		
		Notes
		-----
		As with Levene's test there are three variants of Fligner's test that
		differ by the measure of central tendency used in the test.  See `levene`
		for more information.
		
		Conover et al. (1981) examine many of the existing parametric and
		nonparametric tests by extensive simulations and they conclude that the
		tests proposed by Fligner and Killeen (1976) and Levene (1960) appear to be
		superior in terms of robustness of departures from normality and power [3]_.
		
		References
		----------
		.. [1] Park, C. and Lindsay, B. G. (1999). Robust Scale Estimation and
		       Hypothesis Testing based on Quadratic Inference Function. Technical
		       Report #99-03, Center for Likelihood Studies, Pennsylvania State
		       University.
		       https://cecas.clemson.edu/~cspark/cv/paper/qif/draftqif2.pdf
		
		.. [2] Fligner, M.A. and Killeen, T.J. (1976). Distribution-free two-sample
		       tests for scale. 'Journal of the American Statistical Association.'
		       71(353), 210-213.
		
		.. [3] Park, C. and Lindsay, B. G. (1999). Robust Scale Estimation and
		       Hypothesis Testing based on Quadratic Inference Function. Technical
		       Report #99-03, Center for Likelihood Studies, Pennsylvania State
		       University.
		
		.. [4] Conover, W. J., Johnson, M. E. and Johnson M. M. (1981). A
		       comparative study of tests for homogeneity of variances, with
		       applications to the outer continental shelf biding data.
		       Technometrics, 23(4), 351-361.
		
		Examples
		--------
		Test whether or not the lists `a`, `b` and `c` come from populations
		with equal variances.
		
		>>> from scipy.stats import fligner
		>>> a = [8.88, 9.12, 9.04, 8.98, 9.00, 9.08, 9.01, 8.85, 9.06, 8.99]
		>>> b = [8.88, 8.95, 9.29, 9.44, 9.15, 9.58, 8.36, 9.18, 8.67, 9.05]
		>>> c = [8.95, 9.12, 8.95, 8.85, 9.03, 8.84, 9.07, 8.98, 8.86, 8.98]
		>>> stat, p = fligner(a, b, c)
		>>> p
		0.00450826080004775
		
		The small p-value suggests that the populations do not have equal
		variances.
		
		This is not surprising, given that the sample variance of `b` is much
		larger than that of `a` and `c`:
		
		>>> [np.var(x, ddof=1) for x in [a, b, c]]
		[0.007054444444444413, 0.13073888888888888, 0.008890000000000002]
	**/
	static public function fligner(?args:python.VarArgs<Dynamic>, ?center:Dynamic, ?proportiontocut:Dynamic):Float;
	/**
		A folded Cauchy continuous random variable.
		
		As an instance of the `rv_continuous` class, `foldcauchy` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `foldcauchy` is:
		
		.. math::
		
		    f(x, c) = \frac{1}{\pi (1+(x-c)^2)} + \frac{1}{\pi (1+(x+c)^2)}
		
		for :math:`x \ge 0`.
		
		`foldcauchy` takes ``c`` as a shape parameter for :math:`c`.
		
		Examples
		--------
		>>> from scipy.stats import foldcauchy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 4.72
		>>> mean, var, skew, kurt = foldcauchy.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(foldcauchy.ppf(0.01, c),
		...                 foldcauchy.ppf(0.99, c), 100)
		>>> ax.plot(x, foldcauchy.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='foldcauchy pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = foldcauchy(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = foldcauchy.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], foldcauchy.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = foldcauchy.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function foldcauchy(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A folded normal continuous random variable.
		
		As an instance of the `rv_continuous` class, `foldnorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `foldnorm` is:
		
		.. math::
		
		    f(x, c) = \sqrt{2/\pi} cosh(c x) \exp(-\frac{x^2+c^2}{2})
		
		for :math:`c \ge 0`.
		
		`foldnorm` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``foldnorm.pdf(x, c, loc, scale)`` is identically
		equivalent to ``foldnorm.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import foldnorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 1.95
		>>> mean, var, skew, kurt = foldnorm.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(foldnorm.ppf(0.01, c),
		...                 foldnorm.ppf(0.99, c), 100)
		>>> ax.plot(x, foldnorm.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='foldnorm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = foldnorm(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = foldnorm.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], foldnorm.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = foldnorm.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function foldnorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the Friedman test for repeated measurements.
		
		The Friedman test tests the null hypothesis that repeated measurements of
		the same individuals have the same distribution.  It is often used
		to test for consistency among measurements obtained in different ways.
		For example, if two measurement techniques are used on the same set of
		individuals, the Friedman test can be used to determine if the two
		measurement techniques are consistent.
		
		Parameters
		----------
		measurements1, measurements2, measurements3... : array_like
		    Arrays of measurements.  All of the arrays must have the same number
		    of elements.  At least 3 sets of measurements must be given.
		
		Returns
		-------
		statistic : float
		    The test statistic, correcting for ties.
		pvalue : float
		    The associated p-value assuming that the test statistic has a chi
		    squared distribution.
		
		Notes
		-----
		Due to the assumption that the test statistic has a chi squared
		distribution, the p-value is only reliable for n > 10 and more than
		6 repeated measurements.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Friedman_test
	**/
	static public function friedmanchisquare(?args:python.VarArgs<Dynamic>):Float;
	/**
		A gamma continuous random variable.
		
		As an instance of the `rv_continuous` class, `gamma` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0, scale=1)
		    Median of the distribution.
		mean(a, loc=0, scale=1)
		    Mean of the distribution.
		var(a, loc=0, scale=1)
		    Variance of the distribution.
		std(a, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		erlang, expon
		
		Notes
		-----
		The probability density function for `gamma` is:
		
		.. math::
		
		    f(x, a) = \frac{x^{a-1} e^{-x}}{\Gamma(a)}
		
		for :math:`x \ge 0`, :math:`a > 0`. Here :math:`\Gamma(a)` refers to the
		gamma function.
		
		`gamma` takes ``a`` as a shape parameter for :math:`a`.
		
		When :math:`a` is an integer, `gamma` reduces to the Erlang
		distribution, and when :math:`a=1` to the exponential distribution.
		
		Gamma distributions are sometimes parameterized with two variables,
		with a probability density function of:
		
		.. math::
		
		    f(x, \alpha, \beta) = \frac{\beta^\alpha x^{\alpha - 1} e^{-\beta x }}{\Gamma(\alpha)}
		
		Note that this parameterization is equivalent to the above, with
		``scale = 1 / beta``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gamma.pdf(x, a, loc, scale)`` is identically
		equivalent to ``gamma.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import gamma
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a = 1.99
		>>> mean, var, skew, kurt = gamma.stats(a, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(gamma.ppf(0.01, a),
		...                 gamma.ppf(0.99, a), 100)
		>>> ax.plot(x, gamma.pdf(x, a),
		...        'r-', lw=5, alpha=0.6, label='gamma pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = gamma(a)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = gamma.ppf([0.001, 0.5, 0.999], a)
		>>> np.allclose([0.001, 0.5, 0.999], gamma.cdf(vals, a))
		True
		
		Generate random numbers:
		
		>>> r = gamma.rvs(a, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gamma(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Gauss hypergeometric continuous random variable.
		
		As an instance of the `rv_continuous` class, `gausshyper` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, b, c, z, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, b, c, z, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, b, c, z, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, b, c, z, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, b, c, z, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, b, c, z, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, b, c, z, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, b, c, z, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, b, c, z, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, b, c, z, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, b, c, z, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, b, c, z, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, b, c, z), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, b, c, z, loc=0, scale=1)
		    Median of the distribution.
		mean(a, b, c, z, loc=0, scale=1)
		    Mean of the distribution.
		var(a, b, c, z, loc=0, scale=1)
		    Variance of the distribution.
		std(a, b, c, z, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, b, c, z, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `gausshyper` is:
		
		.. math::
		
		    f(x, a, b, c, z) = C x^{a-1} (1-x)^{b-1} (1+zx)^{-c}
		
		for :math:`0 \le x \le 1`, :math:`a > 0`, :math:`b > 0`, :math:`z > -1`,
		and :math:`C = \frac{1}{B(a, b) F[2, 1](c, a; a+b; -z)}`.
		:math:`F[2, 1]` is the Gauss hypergeometric function
		`scipy.special.hyp2f1`.
		
		`gausshyper` takes :math:`a`, :math:`b`, :math:`c` and :math:`z` as shape
		parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gausshyper.pdf(x, a, b, c, z, loc, scale)`` is identically
		equivalent to ``gausshyper.pdf(y, a, b, c, z) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] Armero, C., and M. J. Bayarri. "Prior Assessments for Prediction in
		       Queues." *Journal of the Royal Statistical Society*. Series D (The
		       Statistician) 43, no. 1 (1994): 139-53. doi:10.2307/2348939
		
		Examples
		--------
		>>> from scipy.stats import gausshyper
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, b, c, z = 13.8, 3.12, 2.51, 5.18
		>>> mean, var, skew, kurt = gausshyper.stats(a, b, c, z, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(gausshyper.ppf(0.01, a, b, c, z),
		...                 gausshyper.ppf(0.99, a, b, c, z), 100)
		>>> ax.plot(x, gausshyper.pdf(x, a, b, c, z),
		...        'r-', lw=5, alpha=0.6, label='gausshyper pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = gausshyper(a, b, c, z)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = gausshyper.ppf([0.001, 0.5, 0.999], a, b, c, z)
		>>> np.allclose([0.001, 0.5, 0.999], gausshyper.cdf(vals, a, b, c, z))
		True
		
		Generate random numbers:
		
		>>> r = gausshyper.rvs(a, b, c, z, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gausshyper(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A generalized exponential continuous random variable.
		
		As an instance of the `rv_continuous` class, `genexpon` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, b, c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, b, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, b, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, b, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, b, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, b, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, b, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, b, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, b, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, b, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, b, c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, b, c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, b, c), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, b, c, loc=0, scale=1)
		    Median of the distribution.
		mean(a, b, c, loc=0, scale=1)
		    Mean of the distribution.
		var(a, b, c, loc=0, scale=1)
		    Variance of the distribution.
		std(a, b, c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, b, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `genexpon` is:
		
		.. math::
		
		    f(x, a, b, c) = (a + b (1 - \exp(-c x)))
		                    \exp(-a x - b x + \frac{b}{c}  (1-\exp(-c x)))
		
		for :math:`x \ge 0`, :math:`a, b, c > 0`.
		
		`genexpon` takes :math:`a`, :math:`b` and :math:`c` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genexpon.pdf(x, a, b, c, loc, scale)`` is identically
		equivalent to ``genexpon.pdf(y, a, b, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		H.K. Ryu, "An Extension of Marshall and Olkin's Bivariate Exponential
		Distribution", Journal of the American Statistical Association, 1993.
		
		N. Balakrishnan, "The Exponential Distribution: Theory, Methods and
		Applications", Asit P. Basu.
		
		Examples
		--------
		>>> from scipy.stats import genexpon
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, b, c = 9.13, 16.2, 3.28
		>>> mean, var, skew, kurt = genexpon.stats(a, b, c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(genexpon.ppf(0.01, a, b, c),
		...                 genexpon.ppf(0.99, a, b, c), 100)
		>>> ax.plot(x, genexpon.pdf(x, a, b, c),
		...        'r-', lw=5, alpha=0.6, label='genexpon pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = genexpon(a, b, c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = genexpon.ppf([0.001, 0.5, 0.999], a, b, c)
		>>> np.allclose([0.001, 0.5, 0.999], genexpon.cdf(vals, a, b, c))
		True
		
		Generate random numbers:
		
		>>> r = genexpon.rvs(a, b, c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function genexpon(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A generalized extreme value continuous random variable.
		
		As an instance of the `rv_continuous` class, `genextreme` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		gumbel_r
		
		Notes
		-----
		For :math:`c=0`, `genextreme` is equal to `gumbel_r`.
		The probability density function for `genextreme` is:
		
		.. math::
		
		    f(x, c) = \begin{cases}
		                \exp(-\exp(-x)) \exp(-x)              &\text{for } c = 0\\
		                \exp(-(1-c x)^{1/c}) (1-c x)^{1/c-1}  &\text{for }
		                                                        x \le 1/c, c > 0
		              \end{cases}
		
		
		Note that several sources and software packages use the opposite
		convention for the sign of the shape parameter :math:`c`.
		
		`genextreme` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genextreme.pdf(x, c, loc, scale)`` is identically
		equivalent to ``genextreme.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import genextreme
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = -0.1
		>>> mean, var, skew, kurt = genextreme.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(genextreme.ppf(0.01, c),
		...                 genextreme.ppf(0.99, c), 100)
		>>> ax.plot(x, genextreme.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='genextreme pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = genextreme(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = genextreme.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], genextreme.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = genextreme.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function genextreme(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A generalized gamma continuous random variable.
		
		As an instance of the `rv_continuous` class, `gengamma` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, c), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, c, loc=0, scale=1)
		    Median of the distribution.
		mean(a, c, loc=0, scale=1)
		    Mean of the distribution.
		var(a, c, loc=0, scale=1)
		    Variance of the distribution.
		std(a, c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		gamma, invgamma, weibull_min
		
		Notes
		-----
		The probability density function for `gengamma` is ([1]_):
		
		.. math::
		
		    f(x, a, c) = \frac{|c| x^{c a-1} \exp(-x^c)}{\Gamma(a)}
		
		for :math:`x \ge 0`, :math:`a > 0`, and :math:`c \ne 0`.
		:math:`\Gamma` is the gamma function (`scipy.special.gamma`).
		
		`gengamma` takes :math:`a` and :math:`c` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gengamma.pdf(x, a, c, loc, scale)`` is identically
		equivalent to ``gengamma.pdf(y, a, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] E.W. Stacy, "A Generalization of the Gamma Distribution",
		   Annals of Mathematical Statistics, Vol 33(3), pp. 1187--1192.
		
		Examples
		--------
		>>> from scipy.stats import gengamma
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, c = 4.42, -3.12
		>>> mean, var, skew, kurt = gengamma.stats(a, c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(gengamma.ppf(0.01, a, c),
		...                 gengamma.ppf(0.99, a, c), 100)
		>>> ax.plot(x, gengamma.pdf(x, a, c),
		...        'r-', lw=5, alpha=0.6, label='gengamma pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = gengamma(a, c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = gengamma.ppf([0.001, 0.5, 0.999], a, c)
		>>> np.allclose([0.001, 0.5, 0.999], gengamma.cdf(vals, a, c))
		True
		
		Generate random numbers:
		
		>>> r = gengamma.rvs(a, c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gengamma(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A generalized half-logistic continuous random variable.
		
		As an instance of the `rv_continuous` class, `genhalflogistic` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `genhalflogistic` is:
		
		.. math::
		
		    f(x, c) = \frac{2 (1 - c x)^{1/(c-1)}}{[1 + (1 - c x)^{1/c}]^2}
		
		for :math:`0 \le x \le 1/c`, and :math:`c > 0`.
		
		`genhalflogistic` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genhalflogistic.pdf(x, c, loc, scale)`` is identically
		equivalent to ``genhalflogistic.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import genhalflogistic
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 0.773
		>>> mean, var, skew, kurt = genhalflogistic.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(genhalflogistic.ppf(0.01, c),
		...                 genhalflogistic.ppf(0.99, c), 100)
		>>> ax.plot(x, genhalflogistic.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='genhalflogistic pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = genhalflogistic(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = genhalflogistic.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], genhalflogistic.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = genhalflogistic.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function genhalflogistic(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A generalized hyperbolic continuous random variable.
		
		As an instance of the `rv_continuous` class, `genhyperbolic` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(p, a, b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, p, a, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, p, a, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, p, a, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, p, a, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, p, a, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, p, a, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, p, a, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, p, a, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, p, a, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(p, a, b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(p, a, b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(p, a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(p, a, b, loc=0, scale=1)
		    Median of the distribution.
		mean(p, a, b, loc=0, scale=1)
		    Mean of the distribution.
		var(p, a, b, loc=0, scale=1)
		    Variance of the distribution.
		std(p, a, b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, p, a, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		t, norminvgauss, geninvgauss, laplace, cauchy
		
		Notes
		-----
		The probability density function for `genhyperbolic` is:
		
		.. math::
		
		    f(x, p, a, b) =
		        \frac{(a^2 - b^2)^{p/2}}
		        {\sqrt{2\pi}a^{p-0.5}
		        K_p\Big(\sqrt{a^2 - b^2}\Big)}
		        e^{bx} \times \frac{K_{p - 1/2}
		        (a \sqrt{1 + x^2})}
		        {(\sqrt{1 + x^2})^{1/2 - p}}
		
		for :math:`x, p \in ( - \infty; \infty)`,
		:math:`|b| < a` if :math:`p \ge 0`,
		:math:`|b| \le a` if :math:`p < 0`.
		:math:`K_{p}(.)` denotes the modified Bessel function of the second
		kind and order :math:`p` (`scipy.special.kn`)
		
		`genhyperbolic` takes ``p`` as a tail parameter,
		``a`` as a shape parameter,
		``b`` as a skewness parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genhyperbolic.pdf(x, p, a, b, loc, scale)`` is identically
		equivalent to ``genhyperbolic.pdf(y, p, a, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		The original parameterization of the Generalized Hyperbolic Distribution
		is found in [1]_ as follows
		
		.. math::
		
		    f(x, \lambda, \alpha, \beta, \delta, \mu) =
		       \frac{(\gamma/\delta)^\lambda}{\sqrt{2\pi}K_\lambda(\delta \gamma)}
		       e^{\beta (x - \mu)} \times \frac{K_{\lambda - 1/2}
		       (\alpha \sqrt{\delta^2 + (x - \mu)^2})}
		       {(\sqrt{\delta^2 + (x - \mu)^2} / \alpha)^{1/2 - \lambda}}
		
		for :math:`x \in ( - \infty; \infty)`,
		:math:`\gamma := \sqrt{\alpha^2 - \beta^2}`,
		:math:`\lambda, \mu \in ( - \infty; \infty)`,
		:math:`\delta \ge 0, |\beta| < \alpha` if :math:`\lambda \ge 0`,
		:math:`\delta > 0, |\beta| \le \alpha` if :math:`\lambda < 0`.
		
		The location-scale-based parameterization implemented in
		SciPy is based on [2]_, where :math:`a = \alpha\delta`,
		:math:`b = \beta\delta`, :math:`p = \lambda`,
		:math:`scale=\delta` and :math:`loc=\mu`
		
		Moments are implemented based on [3]_ and [4]_.
		
		For the distributions that are a special case such as Student's t,
		it is not recommended to rely on the implementation of genhyperbolic.
		To avoid potential numerical problems and for performance reasons,
		the methods of the specific distributions should be used.
		
		References
		----------
		.. [1] O. Barndorff-Nielsen, "Hyperbolic Distributions and Distributions
		   on Hyperbolae", Scandinavian Journal of Statistics, Vol. 5(3),
		   pp. 151-157, 1978. https://www.jstor.org/stable/4615705
		
		.. [2] Eberlein E., Prause K. (2002) The Generalized Hyperbolic Model:
		    Financial Derivatives and Risk Measures. In: Geman H., Madan D.,
		    Pliska S.R., Vorst T. (eds) Mathematical Finance - Bachelier
		    Congress 2000. Springer Finance. Springer, Berlin, Heidelberg.
		    :doi:`10.1007/978-3-662-12429-1_12`
		
		.. [3] Scott, David J, Würtz, Diethelm, Dong, Christine and Tran,
		   Thanh Tam, (2009), Moments of the generalized hyperbolic
		   distribution, MPRA Paper, University Library of Munich, Germany,
		   https://EconPapers.repec.org/RePEc:pra:mprapa:19081.
		
		.. [4] E. Eberlein and E. A. von Hammerstein. Generalized hyperbolic
		   and inverse Gaussian distributions: Limiting cases and approximation
		   of processes. FDM Preprint 80, April 2003. University of Freiburg.
		   https://freidok.uni-freiburg.de/fedora/objects/freidok:7974/datastreams/FILE1/content
		
		Examples
		--------
		>>> from scipy.stats import genhyperbolic
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> p, a, b = 0.5, 1.5, -0.5
		>>> mean, var, skew, kurt = genhyperbolic.stats(p, a, b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(genhyperbolic.ppf(0.01, p, a, b),
		...                 genhyperbolic.ppf(0.99, p, a, b), 100)
		>>> ax.plot(x, genhyperbolic.pdf(x, p, a, b),
		...        'r-', lw=5, alpha=0.6, label='genhyperbolic pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = genhyperbolic(p, a, b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = genhyperbolic.ppf([0.001, 0.5, 0.999], p, a, b)
		>>> np.allclose([0.001, 0.5, 0.999], genhyperbolic.cdf(vals, p, a, b))
		True
		
		Generate random numbers:
		
		>>> r = genhyperbolic.rvs(p, a, b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function genhyperbolic(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Generalized Inverse Gaussian continuous random variable.
		
		As an instance of the `rv_continuous` class, `geninvgauss` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(p, b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, p, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, p, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, p, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, p, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, p, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, p, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, p, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, p, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, p, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(p, b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(p, b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(p, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(p, b, loc=0, scale=1)
		    Median of the distribution.
		mean(p, b, loc=0, scale=1)
		    Mean of the distribution.
		var(p, b, loc=0, scale=1)
		    Variance of the distribution.
		std(p, b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, p, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `geninvgauss` is:
		
		.. math::
		
		    f(x, p, b) = x^{p-1} \exp(-b (x + 1/x) / 2) / (2 K_p(b))
		
		where `x > 0`, and the parameters `p, b` satisfy `b > 0` ([1]_).
		:math:`K_p` is the modified Bessel function of second kind of order `p`
		(`scipy.special.kv`).
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``geninvgauss.pdf(x, p, b, loc, scale)`` is identically
		equivalent to ``geninvgauss.pdf(y, p, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		The inverse Gaussian distribution `stats.invgauss(mu)` is a special case of
		`geninvgauss` with `p = -1/2`, `b = 1 / mu` and `scale = mu`.
		
		Generating random variates is challenging for this distribution. The
		implementation is based on [2]_.
		
		References
		----------
		.. [1] O. Barndorff-Nielsen, P. Blaesild, C. Halgreen, "First hitting time
		   models for the generalized inverse gaussian distribution",
		   Stochastic Processes and their Applications 7, pp. 49--54, 1978.
		
		.. [2] W. Hoermann and J. Leydold, "Generating generalized inverse Gaussian
		   random variates", Statistics and Computing, 24(4), p. 547--557, 2014.
		
		Examples
		--------
		>>> from scipy.stats import geninvgauss
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> p, b = 2.3, 1.5
		>>> mean, var, skew, kurt = geninvgauss.stats(p, b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(geninvgauss.ppf(0.01, p, b),
		...                 geninvgauss.ppf(0.99, p, b), 100)
		>>> ax.plot(x, geninvgauss.pdf(x, p, b),
		...        'r-', lw=5, alpha=0.6, label='geninvgauss pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = geninvgauss(p, b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = geninvgauss.ppf([0.001, 0.5, 0.999], p, b)
		>>> np.allclose([0.001, 0.5, 0.999], geninvgauss.cdf(vals, p, b))
		True
		
		Generate random numbers:
		
		>>> r = geninvgauss.rvs(p, b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function geninvgauss(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A generalized logistic continuous random variable.
		
		As an instance of the `rv_continuous` class, `genlogistic` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `genlogistic` is:
		
		.. math::
		
		    f(x, c) = c \frac{\exp(-x)}
		                     {(1 + \exp(-x))^{c+1}}
		
		for :math:`x >= 0`, :math:`c > 0`.
		
		`genlogistic` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genlogistic.pdf(x, c, loc, scale)`` is identically
		equivalent to ``genlogistic.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import genlogistic
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 0.412
		>>> mean, var, skew, kurt = genlogistic.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(genlogistic.ppf(0.01, c),
		...                 genlogistic.ppf(0.99, c), 100)
		>>> ax.plot(x, genlogistic.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='genlogistic pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = genlogistic(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = genlogistic.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], genlogistic.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = genlogistic.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function genlogistic(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A generalized normal continuous random variable.
		
		As an instance of the `rv_continuous` class, `gennorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(beta, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, beta, loc=0, scale=1)
		    Probability density function.
		logpdf(x, beta, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, beta, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, beta, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, beta, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, beta, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, beta, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, beta, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, beta, loc=0, scale=1)
		    Non-central moment of order n
		stats(beta, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(beta, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(beta,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(beta, loc=0, scale=1)
		    Median of the distribution.
		mean(beta, loc=0, scale=1)
		    Mean of the distribution.
		var(beta, loc=0, scale=1)
		    Variance of the distribution.
		std(beta, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, beta, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		laplace : Laplace distribution
		norm : normal distribution
		
		Notes
		-----
		The probability density function for `gennorm` is [1]_:
		
		.. math::
		
		    f(x, \beta) = \frac{\beta}{2 \Gamma(1/\beta)} \exp(-|x|^\beta)
		
		:math:`\Gamma` is the gamma function (`scipy.special.gamma`).
		
		`gennorm` takes ``beta`` as a shape parameter for :math:`\beta`.
		For :math:`\beta = 1`, it is identical to a Laplace distribution.
		For :math:`\beta = 2`, it is identical to a normal distribution
		(with ``scale=1/sqrt(2)``).
		
		References
		----------
		
		.. [1] "Generalized normal distribution, Version 1",
		       https://en.wikipedia.org/wiki/Generalized_normal_distribution#Version_1
		
		Examples
		--------
		>>> from scipy.stats import gennorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> beta = 1.3
		>>> mean, var, skew, kurt = gennorm.stats(beta, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(gennorm.ppf(0.01, beta),
		...                 gennorm.ppf(0.99, beta), 100)
		>>> ax.plot(x, gennorm.pdf(x, beta),
		...        'r-', lw=5, alpha=0.6, label='gennorm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = gennorm(beta)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = gennorm.ppf([0.001, 0.5, 0.999], beta)
		>>> np.allclose([0.001, 0.5, 0.999], gennorm.cdf(vals, beta))
		True
		
		Generate random numbers:
		
		>>> r = gennorm.rvs(beta, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gennorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A generalized Pareto continuous random variable.
		
		As an instance of the `rv_continuous` class, `genpareto` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `genpareto` is:
		
		.. math::
		
		    f(x, c) = (1 + c x)^{-1 - 1/c}
		
		defined for :math:`x \ge 0` if :math:`c \ge 0`, and for
		:math:`0 \le x \le -1/c` if :math:`c < 0`.
		
		`genpareto` takes ``c`` as a shape parameter for :math:`c`.
		
		For :math:`c=0`, `genpareto` reduces to the exponential
		distribution, `expon`:
		
		.. math::
		
		    f(x, 0) = \exp(-x)
		
		For :math:`c=-1`, `genpareto` is uniform on ``[0, 1]``:
		
		.. math::
		
		    f(x, -1) = 1
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genpareto.pdf(x, c, loc, scale)`` is identically
		equivalent to ``genpareto.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import genpareto
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 0.1
		>>> mean, var, skew, kurt = genpareto.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(genpareto.ppf(0.01, c),
		...                 genpareto.ppf(0.99, c), 100)
		>>> ax.plot(x, genpareto.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='genpareto pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = genpareto(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = genpareto.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], genpareto.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = genpareto.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function genpareto(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A geometric discrete random variable.
		
		As an instance of the `rv_discrete` class, `geom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(p, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, p, loc=0)
		    Probability mass function.
		logpmf(k, p, loc=0)
		    Log of the probability mass function.
		cdf(k, p, loc=0)
		    Cumulative distribution function.
		logcdf(k, p, loc=0)
		    Log of the cumulative distribution function.
		sf(k, p, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, p, loc=0)
		    Log of the survival function.
		ppf(q, p, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, p, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(p, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(p, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(p,), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(p, loc=0)
		    Median of the distribution.
		mean(p, loc=0)
		    Mean of the distribution.
		var(p, loc=0)
		    Variance of the distribution.
		std(p, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, p, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability mass function for `geom` is:
		
		.. math::
		
		    f(k) = (1-p)^{k-1} p
		
		for :math:`k \ge 1`, :math:`0 < p \leq 1`
		
		`geom` takes :math:`p` as shape parameter,
		where :math:`p` is the probability of a single success
		and :math:`1-p` is the probability of a single failure.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``geom.pmf(k, p, loc)`` is identically
		equivalent to ``geom.pmf(k - loc, p)``.
		
		See Also
		--------
		planck
		
		Examples
		--------
		>>> from scipy.stats import geom
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> p = 0.5
		>>> mean, var, skew, kurt = geom.stats(p, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(geom.ppf(0.01, p),
		...               geom.ppf(0.99, p))
		>>> ax.plot(x, geom.pmf(x, p), 'bo', ms=8, label='geom pmf')
		>>> ax.vlines(x, 0, geom.pmf(x, p), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = geom(p)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = geom.cdf(x, p)
		>>> np.allclose(x, geom.ppf(prob, p))
		True
		
		Generate random numbers:
		
		>>> r = geom.rvs(p, size=1000)
	**/
	static public function geom(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Gilbrat continuous random variable.
		
		As an instance of the `rv_continuous` class, `gilbrat` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `gilbrat` is:
		
		.. math::
		
		    f(x) = \frac{1}{x \sqrt{2\pi}} \exp(-\frac{1}{2} (\log(x))^2)
		
		`gilbrat` is a special case of `lognorm` with ``s=1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gilbrat.pdf(x, loc, scale)`` is identically
		equivalent to ``gilbrat.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import gilbrat
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = gilbrat.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(gilbrat.ppf(0.01),
		...                 gilbrat.ppf(0.99), 100)
		>>> ax.plot(x, gilbrat.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='gilbrat pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = gilbrat()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = gilbrat.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], gilbrat.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = gilbrat.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gilbrat(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the geometric mean along the specified axis.
		
		Return the geometric average of the array elements.
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
		weights : array_like, optional
		    The weights array can either be 1-D (in which case its length must be
		    the size of `a` along the given `axis`) or of the same shape as `a`.
		    Default is None, which gives each value a weight of 1.0.
		
		Returns
		-------
		gmean : ndarray
		    See `dtype` parameter above.
		
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
		
		References
		----------
		.. [1] "Weighted Geometric Mean", *Wikipedia*, https://en.wikipedia.org/wiki/Weighted_geometric_mean.
		
		Examples
		--------
		>>> from scipy.stats import gmean
		>>> gmean([1, 4])
		2.0
		>>> gmean([1, 2, 3, 4, 5, 6, 7])
		3.3800151591412964
	**/
	static public function gmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		A Gompertz (or truncated Gumbel) continuous random variable.
		
		As an instance of the `rv_continuous` class, `gompertz` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `gompertz` is:
		
		.. math::
		
		    f(x, c) = c \exp(x) \exp(-c (e^x-1))
		
		for :math:`x \ge 0`, :math:`c > 0`.
		
		`gompertz` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gompertz.pdf(x, c, loc, scale)`` is identically
		equivalent to ``gompertz.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import gompertz
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 0.947
		>>> mean, var, skew, kurt = gompertz.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(gompertz.ppf(0.01, c),
		...                 gompertz.ppf(0.99, c), 100)
		>>> ax.plot(x, gompertz.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='gompertz pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = gompertz(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = gompertz.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], gompertz.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = gompertz.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gompertz(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the geometric standard deviation of an array.
		
		The geometric standard deviation describes the spread of a set of numbers
		where the geometric mean is preferred. It is a multiplicative factor, and
		so a dimensionless quantity.
		
		It is defined as the exponent of the standard deviation of ``log(a)``.
		Mathematically the population geometric standard deviation can be
		evaluated as::
		
		    gstd = exp(std(log(a)))
		
		.. versionadded:: 1.3.0
		
		Parameters
		----------
		a : array_like
		    An array like object containing the sample data.
		axis : int, tuple or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		ddof : int, optional
		    Degree of freedom correction in the calculation of the
		    geometric standard deviation. Default is 1.
		
		Returns
		-------
		ndarray or float
		    An array of the geometric standard deviation. If `axis` is None or `a`
		    is a 1d array a float is returned.
		
		Notes
		-----
		As the calculation requires the use of logarithms the geometric standard
		deviation only supports strictly positive values. Any non-positive or
		infinite values will raise a `ValueError`.
		The geometric standard deviation is sometimes confused with the exponent of
		the standard deviation, ``exp(std(a))``. Instead the geometric standard
		deviation is ``exp(std(log(a)))``.
		The default value for `ddof` is different to the default value (0) used
		by other ddof containing functions, such as ``np.std`` and ``np.nanstd``.
		
		Examples
		--------
		Find the geometric standard deviation of a log-normally distributed sample.
		Note that the standard deviation of the distribution is one, on a
		log scale this evaluates to approximately ``exp(1)``.
		
		>>> from scipy.stats import gstd
		>>> rng = np.random.default_rng()
		>>> sample = rng.lognormal(mean=0, sigma=1, size=1000)
		>>> gstd(sample)
		2.810010162475324
		
		Compute the geometric standard deviation of a multidimensional array and
		of a given axis.
		
		>>> a = np.arange(1, 25).reshape(2, 3, 4)
		>>> gstd(a, axis=None)
		2.2944076136018947
		>>> gstd(a, axis=2)
		array([[1.82424757, 1.22436866, 1.13183117],
		       [1.09348306, 1.07244798, 1.05914985]])
		>>> gstd(a, axis=(1,2))
		array([2.12939215, 1.22120169])
		
		The geometric standard deviation further handles masked arrays.
		
		>>> a = np.arange(1, 25).reshape(2, 3, 4)
		>>> ma = np.ma.masked_where(a > 16, a)
		>>> ma
		masked_array(
		  data=[[[1, 2, 3, 4],
		         [5, 6, 7, 8],
		         [9, 10, 11, 12]],
		        [[13, 14, 15, 16],
		         [--, --, --, --],
		         [--, --, --, --]]],
		  mask=[[[False, False, False, False],
		         [False, False, False, False],
		         [False, False, False, False]],
		        [[False, False, False, False],
		         [ True,  True,  True,  True],
		         [ True,  True,  True,  True]]],
		  fill_value=999999)
		>>> gstd(ma, axis=2)
		masked_array(
		  data=[[1.8242475707663655, 1.2243686572447428, 1.1318311657788478],
		        [1.0934830582350938, --, --]],
		  mask=[[False, False, False],
		        [False,  True,  True]],
		  fill_value=999999)
	**/
	static public function gstd(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		A left-skewed Gumbel continuous random variable.
		
		As an instance of the `rv_continuous` class, `gumbel_l` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		gumbel_r, gompertz, genextreme
		
		Notes
		-----
		The probability density function for `gumbel_l` is:
		
		.. math::
		
		    f(x) = \exp(x - e^x)
		
		The Gumbel distribution is sometimes referred to as a type I Fisher-Tippett
		distribution.  It is also related to the extreme value distribution,
		log-Weibull and Gompertz distributions.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gumbel_l.pdf(x, loc, scale)`` is identically
		equivalent to ``gumbel_l.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import gumbel_l
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = gumbel_l.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(gumbel_l.ppf(0.01),
		...                 gumbel_l.ppf(0.99), 100)
		>>> ax.plot(x, gumbel_l.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='gumbel_l pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = gumbel_l()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = gumbel_l.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], gumbel_l.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = gumbel_l.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gumbel_l(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A right-skewed Gumbel continuous random variable.
		
		As an instance of the `rv_continuous` class, `gumbel_r` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		gumbel_l, gompertz, genextreme
		
		Notes
		-----
		The probability density function for `gumbel_r` is:
		
		.. math::
		
		    f(x) = \exp(-(x + e^{-x}))
		
		The Gumbel distribution is sometimes referred to as a type I Fisher-Tippett
		distribution.  It is also related to the extreme value distribution,
		log-Weibull and Gompertz distributions.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gumbel_r.pdf(x, loc, scale)`` is identically
		equivalent to ``gumbel_r.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import gumbel_r
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = gumbel_r.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(gumbel_r.ppf(0.01),
		...                 gumbel_r.ppf(0.99), 100)
		>>> ax.plot(x, gumbel_r.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='gumbel_r pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = gumbel_r()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = gumbel_r.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], gumbel_r.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = gumbel_r.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gumbel_r(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the geometric standard score.
		
		Compute the geometric z score of each strictly positive value in the
		sample, relative to the geometric mean and standard deviation.
		Mathematically the geometric z score can be evaluated as::
		
		    gzscore = log(a/gmu) / log(gsigma)
		
		where ``gmu`` (resp. ``gsigma``) is the geometric mean (resp. standard
		deviation).
		
		Parameters
		----------
		a : array_like
		    Sample data.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		ddof : int, optional
		    Degrees of freedom correction in the calculation of the
		    standard deviation. Default is 0.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.  Note that when the value is 'omit',
		    nans in the input also propagate to the output, but they do not affect
		    the geometric z scores computed for the non-nan values.
		
		Returns
		-------
		gzscore : array_like
		    The geometric z scores, standardized by geometric mean and geometric
		    standard deviation of input array `a`.
		
		See Also
		--------
		gmean : Geometric mean
		gstd : Geometric standard deviation
		zscore : Standard score
		
		Notes
		-----
		This function preserves ndarray subclasses, and works also with
		matrices and masked arrays (it uses ``asanyarray`` instead of
		``asarray`` for parameters).
		
		.. versionadded:: 1.8
		
		Examples
		--------
		Draw samples from a log-normal distribution:
		
		>>> from scipy.stats import zscore, gzscore
		>>> import matplotlib.pyplot as plt
		
		>>> rng = np.random.default_rng()
		>>> mu, sigma = 3., 1.  # mean and standard deviation
		>>> x = rng.lognormal(mu, sigma, size=500)
		
		Display the histogram of the samples:
		
		>>> fig, ax = plt.subplots()
		>>> ax.hist(x, 50)
		>>> plt.show()
		
		Display the histogram of the samples standardized by the classical zscore.
		Distribution is rescaled but its shape is unchanged.
		
		>>> fig, ax = plt.subplots()
		>>> ax.hist(zscore(x), 50)
		>>> plt.show()
		
		Demonstrate that the distribution of geometric zscores is rescaled and
		quasinormal:
		
		>>> fig, ax = plt.subplots()
		>>> ax.hist(gzscore(x), 50)
		>>> plt.show()
	**/
	static public function gzscore(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		A Half-Cauchy continuous random variable.
		
		As an instance of the `rv_continuous` class, `halfcauchy` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `halfcauchy` is:
		
		.. math::
		
		    f(x) = \frac{2}{\pi (1 + x^2)}
		
		for :math:`x \ge 0`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``halfcauchy.pdf(x, loc, scale)`` is identically
		equivalent to ``halfcauchy.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import halfcauchy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = halfcauchy.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(halfcauchy.ppf(0.01),
		...                 halfcauchy.ppf(0.99), 100)
		>>> ax.plot(x, halfcauchy.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='halfcauchy pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = halfcauchy()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = halfcauchy.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], halfcauchy.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = halfcauchy.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function halfcauchy(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		The upper half of a generalized normal continuous random variable.
		
		As an instance of the `rv_continuous` class, `halfgennorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(beta, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, beta, loc=0, scale=1)
		    Probability density function.
		logpdf(x, beta, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, beta, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, beta, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, beta, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, beta, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, beta, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, beta, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, beta, loc=0, scale=1)
		    Non-central moment of order n
		stats(beta, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(beta, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(beta,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(beta, loc=0, scale=1)
		    Median of the distribution.
		mean(beta, loc=0, scale=1)
		    Mean of the distribution.
		var(beta, loc=0, scale=1)
		    Variance of the distribution.
		std(beta, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, beta, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		gennorm : generalized normal distribution
		expon : exponential distribution
		halfnorm : half normal distribution
		
		Notes
		-----
		The probability density function for `halfgennorm` is:
		
		.. math::
		
		    f(x, \beta) = \frac{\beta}{\Gamma(1/\beta)} \exp(-|x|^\beta)
		
		for :math:`x > 0`. :math:`\Gamma` is the gamma function
		(`scipy.special.gamma`).
		
		`gennorm` takes ``beta`` as a shape parameter for :math:`\beta`.
		For :math:`\beta = 1`, it is identical to an exponential distribution.
		For :math:`\beta = 2`, it is identical to a half normal distribution
		(with ``scale=1/sqrt(2)``).
		
		References
		----------
		
		.. [1] "Generalized normal distribution, Version 1",
		       https://en.wikipedia.org/wiki/Generalized_normal_distribution#Version_1
		
		Examples
		--------
		>>> from scipy.stats import halfgennorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> beta = 0.675
		>>> mean, var, skew, kurt = halfgennorm.stats(beta, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(halfgennorm.ppf(0.01, beta),
		...                 halfgennorm.ppf(0.99, beta), 100)
		>>> ax.plot(x, halfgennorm.pdf(x, beta),
		...        'r-', lw=5, alpha=0.6, label='halfgennorm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = halfgennorm(beta)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = halfgennorm.ppf([0.001, 0.5, 0.999], beta)
		>>> np.allclose([0.001, 0.5, 0.999], halfgennorm.cdf(vals, beta))
		True
		
		Generate random numbers:
		
		>>> r = halfgennorm.rvs(beta, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function halfgennorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A half-logistic continuous random variable.
		
		As an instance of the `rv_continuous` class, `halflogistic` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `halflogistic` is:
		
		.. math::
		
		    f(x) = \frac{ 2 e^{-x} }{ (1+e^{-x})^2 }
		         = \frac{1}{2} \text{sech}(x/2)^2
		
		for :math:`x \ge 0`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``halflogistic.pdf(x, loc, scale)`` is identically
		equivalent to ``halflogistic.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import halflogistic
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = halflogistic.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(halflogistic.ppf(0.01),
		...                 halflogistic.ppf(0.99), 100)
		>>> ax.plot(x, halflogistic.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='halflogistic pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = halflogistic()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = halflogistic.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], halflogistic.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = halflogistic.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function halflogistic(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A half-normal continuous random variable.
		
		As an instance of the `rv_continuous` class, `halfnorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `halfnorm` is:
		
		.. math::
		
		    f(x) = \sqrt{2/\pi} \exp(-x^2 / 2)
		
		for :math:`x >= 0`.
		
		`halfnorm` is a special case of `chi` with ``df=1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``halfnorm.pdf(x, loc, scale)`` is identically
		equivalent to ``halfnorm.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import halfnorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = halfnorm.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(halfnorm.ppf(0.01),
		...                 halfnorm.ppf(0.99), 100)
		>>> ax.plot(x, halfnorm.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='halfnorm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = halfnorm()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = halfnorm.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], halfnorm.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = halfnorm.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function halfnorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the harmonic mean along the specified axis.
		
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
		    See `dtype` parameter above.
		
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
		
		Examples
		--------
		>>> from scipy.stats import hmean
		>>> hmean([1, 4])
		1.6000000000000001
		>>> hmean([1, 2, 3, 4, 5, 6, 7])
		2.6997245179063363
	**/
	static public function hmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		A hypergeometric discrete random variable.
		
		The hypergeometric distribution models drawing objects from a bin.
		`M` is the total number of objects, `n` is total number of Type I objects.
		The random variate represents the number of Type I objects in `N` drawn
		without replacement from the total population.
		
		As an instance of the `rv_discrete` class, `hypergeom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(M, n, N, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, M, n, N, loc=0)
		    Probability mass function.
		logpmf(k, M, n, N, loc=0)
		    Log of the probability mass function.
		cdf(k, M, n, N, loc=0)
		    Cumulative distribution function.
		logcdf(k, M, n, N, loc=0)
		    Log of the cumulative distribution function.
		sf(k, M, n, N, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, M, n, N, loc=0)
		    Log of the survival function.
		ppf(q, M, n, N, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, M, n, N, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(M, n, N, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(M, n, N, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(M, n, N), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(M, n, N, loc=0)
		    Median of the distribution.
		mean(M, n, N, loc=0)
		    Mean of the distribution.
		var(M, n, N, loc=0)
		    Variance of the distribution.
		std(M, n, N, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, M, n, N, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The symbols used to denote the shape parameters (`M`, `n`, and `N`) are not
		universally accepted.  See the Examples for a clarification of the
		definitions used here.
		
		The probability mass function is defined as,
		
		.. math:: p(k, M, n, N) = \frac{\binom{n}{k} \binom{M - n}{N - k}}
		                               {\binom{M}{N}}
		
		for :math:`k \in [\max(0, N - M + n), \min(n, N)]`, where the binomial
		coefficients are defined as,
		
		.. math:: \binom{n}{k} \equiv \frac{n!}{k! (n - k)!}.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``hypergeom.pmf(k, M, n, N, loc)`` is identically
		equivalent to ``hypergeom.pmf(k - loc, M, n, N)``.
		
		Examples
		--------
		>>> from scipy.stats import hypergeom
		>>> import matplotlib.pyplot as plt
		
		Suppose we have a collection of 20 animals, of which 7 are dogs.  Then if
		we want to know the probability of finding a given number of dogs if we
		choose at random 12 of the 20 animals, we can initialize a frozen
		distribution and plot the probability mass function:
		
		>>> [M, n, N] = [20, 7, 12]
		>>> rv = hypergeom(M, n, N)
		>>> x = np.arange(0, n+1)
		>>> pmf_dogs = rv.pmf(x)
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, pmf_dogs, 'bo')
		>>> ax.vlines(x, 0, pmf_dogs, lw=2)
		>>> ax.set_xlabel('# of dogs in our group of chosen animals')
		>>> ax.set_ylabel('hypergeom PMF')
		>>> plt.show()
		
		Instead of using a frozen distribution we can also use `hypergeom`
		methods directly.  To for example obtain the cumulative distribution
		function, use:
		
		>>> prb = hypergeom.cdf(x, M, n, N)
		
		And to generate random numbers:
		
		>>> R = hypergeom.rvs(M, n, N, size=10)
		
		See Also
		--------
		nhypergeom, binom, nbinom
	**/
	static public function hypergeom(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A hyperbolic secant continuous random variable.
		
		As an instance of the `rv_continuous` class, `hypsecant` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `hypsecant` is:
		
		.. math::
		
		    f(x) = \frac{1}{\pi} \text{sech}(x)
		
		for a real number :math:`x`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``hypsecant.pdf(x, loc, scale)`` is identically
		equivalent to ``hypsecant.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import hypsecant
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = hypsecant.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(hypsecant.ppf(0.01),
		...                 hypsecant.ppf(0.99), 100)
		>>> ax.plot(x, hypsecant.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='hypsecant pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = hypsecant()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = hypsecant.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], hypsecant.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = hypsecant.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function hypsecant(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An inverted gamma continuous random variable.
		
		As an instance of the `rv_continuous` class, `invgamma` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0, scale=1)
		    Median of the distribution.
		mean(a, loc=0, scale=1)
		    Mean of the distribution.
		var(a, loc=0, scale=1)
		    Variance of the distribution.
		std(a, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `invgamma` is:
		
		.. math::
		
		    f(x, a) = \frac{x^{-a-1}}{\Gamma(a)} \exp(-\frac{1}{x})
		
		for :math:`x >= 0`, :math:`a > 0`. :math:`\Gamma` is the gamma function
		(`scipy.special.gamma`).
		
		`invgamma` takes ``a`` as a shape parameter for :math:`a`.
		
		`invgamma` is a special case of `gengamma` with ``c=-1``, and it is a
		different parameterization of the scaled inverse chi-squared distribution.
		Specifically, if the scaled inverse chi-squared distribution is
		parameterized with degrees of freedom :math:`\nu` and scaling parameter
		:math:`\tau^2`, then it can be modeled using `invgamma` with
		``a=`` :math:`\nu/2` and ``scale=`` :math:`\nu \tau^2/2`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``invgamma.pdf(x, a, loc, scale)`` is identically
		equivalent to ``invgamma.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import invgamma
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a = 4.07
		>>> mean, var, skew, kurt = invgamma.stats(a, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(invgamma.ppf(0.01, a),
		...                 invgamma.ppf(0.99, a), 100)
		>>> ax.plot(x, invgamma.pdf(x, a),
		...        'r-', lw=5, alpha=0.6, label='invgamma pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = invgamma(a)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = invgamma.ppf([0.001, 0.5, 0.999], a)
		>>> np.allclose([0.001, 0.5, 0.999], invgamma.cdf(vals, a))
		True
		
		Generate random numbers:
		
		>>> r = invgamma.rvs(a, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function invgamma(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An inverse Gaussian continuous random variable.
		
		As an instance of the `rv_continuous` class, `invgauss` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(mu, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, mu, loc=0, scale=1)
		    Probability density function.
		logpdf(x, mu, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, mu, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, mu, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, mu, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, mu, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, mu, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, mu, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, mu, loc=0, scale=1)
		    Non-central moment of order n
		stats(mu, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(mu, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(mu,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(mu, loc=0, scale=1)
		    Median of the distribution.
		mean(mu, loc=0, scale=1)
		    Mean of the distribution.
		var(mu, loc=0, scale=1)
		    Variance of the distribution.
		std(mu, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, mu, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `invgauss` is:
		
		.. math::
		
		    f(x, \mu) = \frac{1}{\sqrt{2 \pi x^3}}
		                \exp(-\frac{(x-\mu)^2}{2 x \mu^2})
		
		for :math:`x >= 0` and :math:`\mu > 0`.
		
		`invgauss` takes ``mu`` as a shape parameter for :math:`\mu`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``invgauss.pdf(x, mu, loc, scale)`` is identically
		equivalent to ``invgauss.pdf(y, mu) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import invgauss
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> mu = 0.145
		>>> mean, var, skew, kurt = invgauss.stats(mu, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(invgauss.ppf(0.01, mu),
		...                 invgauss.ppf(0.99, mu), 100)
		>>> ax.plot(x, invgauss.pdf(x, mu),
		...        'r-', lw=5, alpha=0.6, label='invgauss pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = invgauss(mu)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = invgauss.ppf([0.001, 0.5, 0.999], mu)
		>>> np.allclose([0.001, 0.5, 0.999], invgauss.cdf(vals, mu))
		True
		
		Generate random numbers:
		
		>>> r = invgauss.rvs(mu, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function invgauss(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An inverted Weibull continuous random variable.
		
		This distribution is also known as the Fréchet distribution or the
		type II extreme value distribution.
		
		As an instance of the `rv_continuous` class, `invweibull` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `invweibull` is:
		
		.. math::
		
		    f(x, c) = c x^{-c-1} \exp(-x^{-c})
		
		for :math:`x > 0`, :math:`c > 0`.
		
		`invweibull` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``invweibull.pdf(x, c, loc, scale)`` is identically
		equivalent to ``invweibull.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		F.R.S. de Gusmao, E.M.M Ortega and G.M. Cordeiro, "The generalized inverse
		Weibull distribution", Stat. Papers, vol. 52, pp. 591-619, 2011.
		
		Examples
		--------
		>>> from scipy.stats import invweibull
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 10.6
		>>> mean, var, skew, kurt = invweibull.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(invweibull.ppf(0.01, c),
		...                 invweibull.ppf(0.99, c), 100)
		>>> ax.plot(x, invweibull.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='invweibull pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = invweibull(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = invweibull.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], invweibull.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = invweibull.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function invweibull(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An inverse Wishart random variable.
		
		The `df` keyword specifies the degrees of freedom. The `scale` keyword
		specifies the scale matrix, which must be symmetric and positive definite.
		In this context, the scale matrix is often interpreted in terms of a
		multivariate normal covariance matrix.
		
		Methods
		-------
		``pdf(x, df, scale)``
		    Probability density function.
		``logpdf(x, df, scale)``
		    Log of the probability density function.
		``rvs(df, scale, size=1, random_state=None)``
		    Draw random samples from an inverse Wishart distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Alternatively, the object may be called (as a function) to fix the degrees
		of freedom and scale parameters, returning a "frozen" inverse Wishart
		random variable:
		
		rv = invwishart(df=1, scale=1)
		    - Frozen object with the same methods but holding the given
		      degrees of freedom and scale fixed.
		
		See Also
		--------
		wishart
		
		Notes
		-----
		
		
		The scale matrix `scale` must be a symmetric positive definite
		matrix. Singular matrices, including the symmetric positive semi-definite
		case, are not supported.
		
		The inverse Wishart distribution is often denoted
		
		.. math::
		
		    W_p^{-1}(\nu, \Psi)
		
		where :math:`\nu` is the degrees of freedom and :math:`\Psi` is the
		:math:`p \times p` scale matrix.
		
		The probability density function for `invwishart` has support over positive
		definite matrices :math:`S`; if :math:`S \sim W^{-1}_p(\nu, \Sigma)`,
		then its PDF is given by:
		
		.. math::
		
		    f(S) = \frac{|\Sigma|^\frac{\nu}{2}}{2^{ \frac{\nu p}{2} }
		           |S|^{\frac{\nu + p + 1}{2}} \Gamma_p \left(\frac{\nu}{2} \right)}
		           \exp\left( -tr(\Sigma S^{-1}) / 2 \right)
		
		If :math:`S \sim W_p^{-1}(\nu, \Psi)` (inverse Wishart) then
		:math:`S^{-1} \sim W_p(\nu, \Psi^{-1})` (Wishart).
		
		If the scale matrix is 1-dimensional and equal to one, then the inverse
		Wishart distribution :math:`W_1(\nu, 1)` collapses to the
		inverse Gamma distribution with parameters shape = :math:`\frac{\nu}{2}`
		and scale = :math:`\frac{1}{2}`.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] M.L. Eaton, "Multivariate Statistics: A Vector Space Approach",
		       Wiley, 1983.
		.. [2] M.C. Jones, "Generating Inverse Wishart Matrices", Communications
		       in Statistics - Simulation and Computation, vol. 14.2, pp.511-514,
		       1985.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.stats import invwishart, invgamma
		>>> x = np.linspace(0.01, 1, 100)
		>>> iw = invwishart.pdf(x, df=6, scale=1)
		>>> iw[:3]
		array([  1.20546865e-15,   5.42497807e-06,   4.45813929e-03])
		>>> ig = invgamma.pdf(x, 6/2., scale=1./2)
		>>> ig[:3]
		array([  1.20546865e-15,   5.42497807e-06,   4.45813929e-03])
		>>> plt.plot(x, iw)
		
		The input quantiles can be any shape of array, as long as the last
		axis labels the components.
	**/
	static public function invwishart(?df:Dynamic, ?scale:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Compute the interquartile range of the data along the specified axis.
		
		The interquartile range (IQR) is the difference between the 75th and
		25th percentile of the data. It is a measure of the dispersion
		similar to standard deviation or variance, but is much more robust
		against outliers [2]_.
		
		The ``rng`` parameter allows this function to compute other
		percentile ranges than the actual IQR. For example, setting
		``rng=(0, 100)`` is equivalent to `numpy.ptp`.
		
		The IQR of an empty array is `np.nan`.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		x : array_like
		    Input array or object that can be converted to an array.
		axis : int or sequence of int, optional
		    Axis along which the range is computed. The default is to
		    compute the IQR for the entire array.
		rng : Two-element sequence containing floats in range of [0,100] optional
		    Percentiles over which to compute the range. Each must be
		    between 0 and 100, inclusive. The default is the true IQR:
		    ``(25, 75)``. The order of the elements is not important.
		scale : scalar or str, optional
		    The numerical value of scale will be divided out of the final
		    result. The following string values are recognized:
		
		      * 'raw' : No scaling, just return the raw IQR.
		        **Deprecated!**  Use ``scale=1`` instead.
		      * 'normal' : Scale by
		        :math:`2 \sqrt{2} erf^{-1}(\frac{1}{2}) \approx 1.349`.
		
		    The default is 1.0. The use of ``scale='raw'`` is deprecated.
		    Array-like `scale` is also allowed, as long
		    as it broadcasts correctly to the output such that
		    ``out / scale`` is a valid operation. The output dimensions
		    depend on the input array, `x`, the `axis` argument, and the
		    `keepdims` flag.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		interpolation : str, optional
		
		    Specifies the interpolation method to use when the percentile
		    boundaries lie between two data points ``i`` and ``j``.
		    The following options are available (default is 'linear'):
		
		      * 'linear': ``i + (j - i)*fraction``, where ``fraction`` is the
		        fractional part of the index surrounded by ``i`` and ``j``.
		      * 'lower': ``i``.
		      * 'higher': ``j``.
		      * 'nearest': ``i`` or ``j`` whichever is nearest.
		      * 'midpoint': ``(i + j)/2``.
		
		    For NumPy >= 1.22.0, the additional options provided by the ``method``
		    keyword of `numpy.percentile` are also valid.
		
		keepdims : bool, optional
		    If this is set to True, the reduced axes are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original array `x`.
		
		Returns
		-------
		iqr : scalar or ndarray
		    If ``axis=None``, a scalar is returned. If the input contains
		    integers or floats of smaller precision than ``np.float64``, then the
		    output data-type is ``np.float64``. Otherwise, the output data-type is
		    the same as that of the input.
		
		See Also
		--------
		numpy.std, numpy.var
		
		References
		----------
		.. [1] "Interquartile range" https://en.wikipedia.org/wiki/Interquartile_range
		.. [2] "Robust measures of scale" https://en.wikipedia.org/wiki/Robust_measures_of_scale
		.. [3] "Quantile" https://en.wikipedia.org/wiki/Quantile
		
		Examples
		--------
		>>> from scipy.stats import iqr
		>>> x = np.array([[10, 7, 4], [3, 2, 1]])
		>>> x
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> iqr(x)
		4.0
		>>> iqr(x, axis=0)
		array([ 3.5,  2.5,  1.5])
		>>> iqr(x, axis=1)
		array([ 3.,  1.])
		>>> iqr(x, axis=1, keepdims=True)
		array([[ 3.],
		       [ 1.]])
	**/
	static public function iqr(x:Dynamic, ?axis:Dynamic, ?rng:Dynamic, ?scale:Dynamic, ?nan_policy:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		`itemfreq` is deprecated!
		`itemfreq` is deprecated and will be removed in a future version. Use instead `np.unique(..., return_counts=True)`
		
		Return a 2-D array of item frequencies.
		
		Parameters
		----------
		a : (N,) array_like
		    Input array.
		
		Returns
		-------
		itemfreq : (K, 2) ndarray
		    A 2-D frequency table.  Column 1 contains sorted, unique values from
		    `a`, column 2 contains their respective counts.
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.array([1, 1, 5, 0, 1, 2, 2, 0, 1, 4])
		>>> stats.itemfreq(a)
		array([[ 0.,  2.],
		       [ 1.,  4.],
		       [ 2.,  2.],
		       [ 4.,  1.],
		       [ 5.,  1.]])
		>>> np.bincount(a)
		array([2, 4, 2, 0, 1, 1])
		
		>>> stats.itemfreq(a/10.)
		array([[ 0. ,  2. ],
		       [ 0.1,  4. ],
		       [ 0.2,  2. ],
		       [ 0.4,  1. ],
		       [ 0.5,  1. ]])
	**/
	static public function itemfreq(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform the Jarque-Bera goodness of fit test on sample data.
		
		The Jarque-Bera test tests whether the sample data has the skewness and
		kurtosis matching a normal distribution.
		
		Note that this test only works for a large enough number of data samples
		(>2000) as the test statistic asymptotically has a Chi-squared distribution
		with 2 degrees of freedom.
		
		Parameters
		----------
		x : array_like
		    Observations of a random variable.
		
		Returns
		-------
		jb_value : float
		    The test statistic.
		p : float
		    The p-value for the hypothesis test.
		
		References
		----------
		.. [1] Jarque, C. and Bera, A. (1980) "Efficient tests for normality,
		       homoscedasticity and serial independence of regression residuals",
		       6 Econometric Letters 255-259.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		>>> x = rng.normal(0, 1, 100000)
		>>> jarque_bera_test = stats.jarque_bera(x)
		>>> jarque_bera_test
		Jarque_beraResult(statistic=3.3415184718131554, pvalue=0.18810419594996775)
		>>> jarque_bera_test.statistic
		3.3415184718131554
		>>> jarque_bera_test.pvalue
		0.18810419594996775
	**/
	static public function jarque_bera(x:Dynamic):Float;
	/**
		A Johnson SB continuous random variable.
		
		As an instance of the `rv_continuous` class, `johnsonsb` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, b, loc=0, scale=1)
		    Median of the distribution.
		mean(a, b, loc=0, scale=1)
		    Mean of the distribution.
		var(a, b, loc=0, scale=1)
		    Variance of the distribution.
		std(a, b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		johnsonsu
		
		Notes
		-----
		The probability density function for `johnsonsb` is:
		
		.. math::
		
		    f(x, a, b) = \frac{b}{x(1-x)}  \phi(a + b \log \frac{x}{1-x} )
		
		where :math:`x`, :math:`a`, and :math:`b` are real scalars; :math:`b > 0`
		and :math:`x \in [0,1]`.  :math:`\phi` is the pdf of the normal
		distribution.
		
		`johnsonsb` takes :math:`a` and :math:`b` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``johnsonsb.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``johnsonsb.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import johnsonsb
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, b = 4.32, 3.18
		>>> mean, var, skew, kurt = johnsonsb.stats(a, b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(johnsonsb.ppf(0.01, a, b),
		...                 johnsonsb.ppf(0.99, a, b), 100)
		>>> ax.plot(x, johnsonsb.pdf(x, a, b),
		...        'r-', lw=5, alpha=0.6, label='johnsonsb pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = johnsonsb(a, b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = johnsonsb.ppf([0.001, 0.5, 0.999], a, b)
		>>> np.allclose([0.001, 0.5, 0.999], johnsonsb.cdf(vals, a, b))
		True
		
		Generate random numbers:
		
		>>> r = johnsonsb.rvs(a, b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function johnsonsb(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Johnson SU continuous random variable.
		
		As an instance of the `rv_continuous` class, `johnsonsu` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, b, loc=0, scale=1)
		    Median of the distribution.
		mean(a, b, loc=0, scale=1)
		    Mean of the distribution.
		var(a, b, loc=0, scale=1)
		    Variance of the distribution.
		std(a, b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		johnsonsb
		
		Notes
		-----
		The probability density function for `johnsonsu` is:
		
		.. math::
		
		    f(x, a, b) = \frac{b}{\sqrt{x^2 + 1}}
		                 \phi(a + b \log(x + \sqrt{x^2 + 1}))
		
		where :math:`x`, :math:`a`, and :math:`b` are real scalars; :math:`b > 0`.
		:math:`\phi` is the pdf of the normal distribution.
		
		`johnsonsu` takes :math:`a` and :math:`b` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``johnsonsu.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``johnsonsu.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import johnsonsu
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, b = 2.55, 2.25
		>>> mean, var, skew, kurt = johnsonsu.stats(a, b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(johnsonsu.ppf(0.01, a, b),
		...                 johnsonsu.ppf(0.99, a, b), 100)
		>>> ax.plot(x, johnsonsu.pdf(x, a, b),
		...        'r-', lw=5, alpha=0.6, label='johnsonsu pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = johnsonsu(a, b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = johnsonsu.ppf([0.001, 0.5, 0.999], a, b)
		>>> np.allclose([0.001, 0.5, 0.999], johnsonsu.cdf(vals, a, b))
		True
		
		Generate random numbers:
		
		>>> r = johnsonsu.rvs(a, b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function johnsonsu(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Kappa 3 parameter distribution.
		
		As an instance of the `rv_continuous` class, `kappa3` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0, scale=1)
		    Median of the distribution.
		mean(a, loc=0, scale=1)
		    Mean of the distribution.
		var(a, loc=0, scale=1)
		    Variance of the distribution.
		std(a, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `kappa3` is:
		
		.. math::
		
		    f(x, a) = a (a + x^a)^{-(a + 1)/a}
		
		for :math:`x > 0` and :math:`a > 0`.
		
		`kappa3` takes ``a`` as a shape parameter for :math:`a`.
		
		References
		----------
		P.W. Mielke and E.S. Johnson, "Three-Parameter Kappa Distribution Maximum
		Likelihood and Likelihood Ratio Tests", Methods in Weather Research,
		701-707, (September, 1973),
		:doi:`10.1175/1520-0493(1973)101<0701:TKDMLE>2.3.CO;2`
		
		B. Kumphon, "Maximum Entropy and Maximum Likelihood Estimation for the
		Three-Parameter Kappa Distribution", Open Journal of Statistics, vol 2,
		415-419 (2012), :doi:`10.4236/ojs.2012.24050`
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``kappa3.pdf(x, a, loc, scale)`` is identically
		equivalent to ``kappa3.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import kappa3
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a = 1
		>>> mean, var, skew, kurt = kappa3.stats(a, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(kappa3.ppf(0.01, a),
		...                 kappa3.ppf(0.99, a), 100)
		>>> ax.plot(x, kappa3.pdf(x, a),
		...        'r-', lw=5, alpha=0.6, label='kappa3 pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = kappa3(a)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = kappa3.ppf([0.001, 0.5, 0.999], a)
		>>> np.allclose([0.001, 0.5, 0.999], kappa3.cdf(vals, a))
		True
		
		Generate random numbers:
		
		>>> r = kappa3.rvs(a, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function kappa3(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Kappa 4 parameter distribution.
		
		As an instance of the `rv_continuous` class, `kappa4` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(h, k, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, h, k, loc=0, scale=1)
		    Probability density function.
		logpdf(x, h, k, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, h, k, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, h, k, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, h, k, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, h, k, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, h, k, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, h, k, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, h, k, loc=0, scale=1)
		    Non-central moment of order n
		stats(h, k, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(h, k, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(h, k), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(h, k, loc=0, scale=1)
		    Median of the distribution.
		mean(h, k, loc=0, scale=1)
		    Mean of the distribution.
		var(h, k, loc=0, scale=1)
		    Variance of the distribution.
		std(h, k, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, h, k, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for kappa4 is:
		
		.. math::
		
		    f(x, h, k) = (1 - k x)^{1/k - 1} (1 - h (1 - k x)^{1/k})^{1/h-1}
		
		if :math:`h` and :math:`k` are not equal to 0.
		
		If :math:`h` or :math:`k` are zero then the pdf can be simplified:
		
		h = 0 and k != 0::
		
		    kappa4.pdf(x, h, k) = (1.0 - k*x)**(1.0/k - 1.0)*
		                          exp(-(1.0 - k*x)**(1.0/k))
		
		h != 0 and k = 0::
		
		    kappa4.pdf(x, h, k) = exp(-x)*(1.0 - h*exp(-x))**(1.0/h - 1.0)
		
		h = 0 and k = 0::
		
		    kappa4.pdf(x, h, k) = exp(-x)*exp(-exp(-x))
		
		kappa4 takes :math:`h` and :math:`k` as shape parameters.
		
		The kappa4 distribution returns other distributions when certain
		:math:`h` and :math:`k` values are used.
		
		+------+-------------+----------------+------------------+
		| h    | k=0.0       | k=1.0          | -inf<=k<=inf     |
		+======+=============+================+==================+
		| -1.0 | Logistic    |                | Generalized      |
		|      |             |                | Logistic(1)      |
		|      |             |                |                  |
		|      | logistic(x) |                |                  |
		+------+-------------+----------------+------------------+
		|  0.0 | Gumbel      | Reverse        | Generalized      |
		|      |             | Exponential(2) | Extreme Value    |
		|      |             |                |                  |
		|      | gumbel_r(x) |                | genextreme(x, k) |
		+------+-------------+----------------+------------------+
		|  1.0 | Exponential | Uniform        | Generalized      |
		|      |             |                | Pareto           |
		|      |             |                |                  |
		|      | expon(x)    | uniform(x)     | genpareto(x, -k) |
		+------+-------------+----------------+------------------+
		
		(1) There are at least five generalized logistic distributions.
		    Four are described here:
		    https://en.wikipedia.org/wiki/Generalized_logistic_distribution
		    The "fifth" one is the one kappa4 should match which currently
		    isn't implemented in scipy:
		    https://en.wikipedia.org/wiki/Talk:Generalized_logistic_distribution
		    https://www.mathwave.com/help/easyfit/html/analyses/distributions/gen_logistic.html
		(2) This distribution is currently not in scipy.
		
		References
		----------
		J.C. Finney, "Optimization of a Skewed Logistic Distribution With Respect
		to the Kolmogorov-Smirnov Test", A Dissertation Submitted to the Graduate
		Faculty of the Louisiana State University and Agricultural and Mechanical
		College, (August, 2004),
		https://digitalcommons.lsu.edu/gradschool_dissertations/3672
		
		J.R.M. Hosking, "The four-parameter kappa distribution". IBM J. Res.
		Develop. 38 (3), 25 1-258 (1994).
		
		B. Kumphon, A. Kaew-Man, P. Seenoi, "A Rainfall Distribution for the Lampao
		Site in the Chi River Basin, Thailand", Journal of Water Resource and
		Protection, vol. 4, 866-869, (2012).
		:doi:`10.4236/jwarp.2012.410101`
		
		C. Winchester, "On Estimation of the Four-Parameter Kappa Distribution", A
		Thesis Submitted to Dalhousie University, Halifax, Nova Scotia, (March
		2000).
		http://www.nlc-bnc.ca/obj/s4/f2/dsk2/ftp01/MQ57336.pdf
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``kappa4.pdf(x, h, k, loc, scale)`` is identically
		equivalent to ``kappa4.pdf(y, h, k) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import kappa4
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> h, k = 0.1, 0
		>>> mean, var, skew, kurt = kappa4.stats(h, k, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(kappa4.ppf(0.01, h, k),
		...                 kappa4.ppf(0.99, h, k), 100)
		>>> ax.plot(x, kappa4.pdf(x, h, k),
		...        'r-', lw=5, alpha=0.6, label='kappa4 pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = kappa4(h, k)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = kappa4.ppf([0.001, 0.5, 0.999], h, k)
		>>> np.allclose([0.001, 0.5, 0.999], kappa4.cdf(vals, h, k))
		True
		
		Generate random numbers:
		
		>>> r = kappa4.rvs(h, k, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function kappa4(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate Kendall's tau, a correlation measure for ordinal data.
		
		Kendall's tau is a measure of the correspondence between two rankings.
		Values close to 1 indicate strong agreement, and values close to -1
		indicate strong disagreement. This implements two variants of Kendall's
		tau: tau-b (the default) and tau-c (also known as Stuart's tau-c). These
		differ only in how they are normalized to lie within the range -1 to 1;
		the hypothesis tests (their p-values) are identical. Kendall's original
		tau-a is not implemented separately because both tau-b and tau-c reduce
		to tau-a in the absence of ties.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of rankings, of the same shape. If arrays are not 1-D, they
		    will be flattened to 1-D.
		initial_lexsort : bool, optional
		    Unused (deprecated).
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		method : {'auto', 'asymptotic', 'exact'}, optional
		    Defines which method is used to calculate the p-value [5]_.
		    The following options are available (default is 'auto'):
		
		      * 'auto': selects the appropriate method based on a trade-off
		        between speed and accuracy
		      * 'asymptotic': uses a normal approximation valid for large samples
		      * 'exact': computes the exact p-value, but can only be used if no ties
		        are present. As the sample size increases, the 'exact' computation
		        time may grow and the result may lose some precision.
		
		variant: {'b', 'c'}, optional
		    Defines which variant of Kendall's tau is returned. Default is 'b'.
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the rank correlation is nonzero
		    * 'less': the rank correlation is negative (less than zero)
		    * 'greater':  the rank correlation is positive (greater than zero)
		
		Returns
		-------
		correlation : float
		   The tau statistic.
		pvalue : float
		   The p-value for a hypothesis test whose null hypothesis is
		   an absence of association, tau = 0.
		
		See Also
		--------
		spearmanr : Calculates a Spearman rank-order correlation coefficient.
		theilslopes : Computes the Theil-Sen estimator for a set of points (x, y).
		weightedtau : Computes a weighted version of Kendall's tau.
		
		Notes
		-----
		The definition of Kendall's tau that is used is [2]_::
		
		  tau_b = (P - Q) / sqrt((P + Q + T) * (P + Q + U))
		
		  tau_c = 2 (P - Q) / (n**2 * (m - 1) / m)
		
		where P is the number of concordant pairs, Q the number of discordant
		pairs, T the number of ties only in `x`, and U the number of ties only in
		`y`.  If a tie occurs for the same pair in both `x` and `y`, it is not
		added to either T or U. n is the total number of samples, and m is the
		number of unique values in either `x` or `y`, whichever is smaller.
		
		References
		----------
		.. [1] Maurice G. Kendall, "A New Measure of Rank Correlation", Biometrika
		       Vol. 30, No. 1/2, pp. 81-93, 1938.
		.. [2] Maurice G. Kendall, "The treatment of ties in ranking problems",
		       Biometrika Vol. 33, No. 3, pp. 239-251. 1945.
		.. [3] Gottfried E. Noether, "Elements of Nonparametric Statistics", John
		       Wiley & Sons, 1967.
		.. [4] Peter M. Fenwick, "A new data structure for cumulative frequency
		       tables", Software: Practice and Experience, Vol. 24, No. 3,
		       pp. 327-336, 1994.
		.. [5] Maurice G. Kendall, "Rank Correlation Methods" (4th Edition),
		       Charles Griffin & Co., 1970.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x1 = [12, 2, 1, 12, 2]
		>>> x2 = [1, 4, 7, 1, 0]
		>>> tau, p_value = stats.kendalltau(x1, x2)
		>>> tau
		-0.47140452079103173
		>>> p_value
		0.2827454599327748
	**/
	static public function kendalltau(x:Dynamic, y:Dynamic, ?initial_lexsort:Dynamic, ?nan_policy:Dynamic, ?method:Dynamic, ?variant:Dynamic, ?alternative:Dynamic):Float;
	/**
		Compute the Kruskal-Wallis H-test for independent samples.
		
		The Kruskal-Wallis H-test tests the null hypothesis that the population
		median of all of the groups are equal.  It is a non-parametric version of
		ANOVA.  The test works on 2 or more independent samples, which may have
		different sizes.  Note that rejecting the null hypothesis does not
		indicate which of the groups differs.  Post hoc comparisons between
		groups are required to determine which groups are different.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    Two or more arrays with the sample measurements can be given as
		    arguments. Samples must be one-dimensional.
		nan_policy : {'propagate', 'omit', 'raise'}
		    Defines how to handle input NaNs.
		    
		    - ``propagate``: if a NaN is present in the axis slice (e.g. row) along
		      which the  statistic is computed, the corresponding entry of the output
		      will be NaN.
		    - ``omit``: NaNs will be omitted when performing the calculation.
		      If insufficient data remains in the axis slice along which the
		      statistic is computed, the corresponding entry of the output will be
		      NaN.
		    - ``raise``: if a NaN is present, a ``ValueError`` will be raised.
		axis : int or None, default: 0
		    If an int, the axis of the input along which to compute the statistic.
		    The statistic of each axis-slice (e.g. row) of the input will appear in a
		    corresponding element of the output.
		    If ``None``, the input will be raveled before computing the statistic.
		
		Returns
		-------
		statistic : float
		    The Kruskal-Wallis H statistic, corrected for ties.
		pvalue : float
		    The p-value for the test using the assumption that H has a chi
		    square distribution. The p-value returned is the survival function of
		    the chi square distribution evaluated at H.
		
		See Also
		--------
		
		:func:`f_oneway`
		    1-way ANOVA.
		:func:`mannwhitneyu`
		    Mann-Whitney rank test on two samples.
		:func:`friedmanchisquare`
		    Friedman test for repeated measurements.
		
		
		Notes
		-----
		Due to the assumption that H has a chi square distribution, the number
		of samples in each group must not be too small.  A typical rule is
		that each sample must have at least 5 measurements.
		
		References
		----------
		.. [1] W. H. Kruskal & W. W. Wallis, "Use of Ranks in
		   One-Criterion Variance Analysis", Journal of the American Statistical
		   Association, Vol. 47, Issue 260, pp. 583-621, 1952.
		.. [2] https://en.wikipedia.org/wiki/Kruskal-Wallis_one-way_analysis_of_variance
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = [1, 3, 5, 7, 9]
		>>> y = [2, 4, 6, 8, 10]
		>>> stats.kruskal(x, y)
		KruskalResult(statistic=0.2727272727272734, pvalue=0.6015081344405895)
		
		>>> x = [1, 1, 1]
		>>> y = [2, 2, 2]
		>>> z = [2, 2]
		>>> stats.kruskal(x, y, z)
		KruskalResult(statistic=7.0, pvalue=0.0301973834223185)
	**/
	static public function kruskal(?args:python.VarArgs<Dynamic>, ?nan_policy:Dynamic, ?axis:Dynamic):Float;
	/**
		Performs the one-sample Kolmogorov-Smirnov test for goodness of fit.
		
		This test compares the underlying distribution F(x) of a sample
		against a given continuous distribution G(x). See Notes for a description
		of the available null and alternative hypotheses.
		
		Parameters
		----------
		x : array_like
		    a 1-D array of observations of iid random variables.
		cdf : callable
		    callable used to calculate the cdf.
		args : tuple, sequence, optional
		    Distribution parameters, used with `cdf`.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the null and alternative hypotheses. Default is 'two-sided'.
		    Please see explanations in the Notes below.
		mode : {'auto', 'exact', 'approx', 'asymp'}, optional
		    Defines the distribution used for calculating the p-value.
		    The following options are available (default is 'auto'):
		
		      * 'auto' : selects one of the other options.
		      * 'exact' : uses the exact distribution of test statistic.
		      * 'approx' : approximates the two-sided probability with twice
		        the one-sided probability
		      * 'asymp': uses asymptotic distribution of test statistic
		
		Returns
		-------
		statistic : float
		    KS test statistic, either D, D+ or D- (depending on the value
		    of 'alternative')
		pvalue :  float
		    One-tailed or two-tailed p-value.
		
		See Also
		--------
		ks_2samp, kstest
		
		Notes
		-----
		There are three options for the null and corresponding alternative
		hypothesis that can be selected using the `alternative` parameter.
		
		- `two-sided`: The null hypothesis is that the two distributions are
		  identical, F(x)=G(x) for all x; the alternative is that they are not
		  identical.
		
		- `less`: The null hypothesis is that F(x) >= G(x) for all x; the
		  alternative is that F(x) < G(x) for at least one x.
		
		- `greater`: The null hypothesis is that F(x) <= G(x) for all x; the
		  alternative is that F(x) > G(x) for at least one x.
		
		Note that the alternative hypotheses describe the *CDFs* of the
		underlying distributions, not the observed values. For example,
		suppose x1 ~ F and x2 ~ G. If F(x) > G(x) for all x, the values in
		x1 tend to be less than those in x2.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		>>> x = np.linspace(-15, 15, 9)
		>>> stats.ks_1samp(x, stats.norm.cdf)
		(0.44435602715924361, 0.038850142705171065)
		
		>>> stats.ks_1samp(stats.norm.rvs(size=100, random_state=rng),
		...                stats.norm.cdf)
		KstestResult(statistic=0.165471391799..., pvalue=0.007331283245...)
		
		*Test against one-sided alternative hypothesis*
		
		Shift distribution to larger values, so that `` CDF(x) < norm.cdf(x)``:
		
		>>> x = stats.norm.rvs(loc=0.2, size=100, random_state=rng)
		>>> stats.ks_1samp(x, stats.norm.cdf, alternative='less')
		KstestResult(statistic=0.100203351482..., pvalue=0.125544644447...)
		
		Reject null hypothesis in favor of alternative hypothesis: less
		
		>>> stats.ks_1samp(x, stats.norm.cdf, alternative='greater')
		KstestResult(statistic=0.018749806388..., pvalue=0.920581859791...)
		
		Reject null hypothesis in favor of alternative hypothesis: greater
		
		>>> stats.ks_1samp(x, stats.norm.cdf)
		KstestResult(statistic=0.100203351482..., pvalue=0.250616879765...)
		
		Don't reject null hypothesis in favor of alternative hypothesis: two-sided
		
		*Testing t distributed random variables against normal distribution*
		
		With 100 degrees of freedom the t distribution looks close to the normal
		distribution, and the K-S test does not reject the hypothesis that the
		sample came from the normal distribution:
		
		>>> stats.ks_1samp(stats.t.rvs(100,size=100, random_state=rng),
		...                stats.norm.cdf)
		KstestResult(statistic=0.064273776544..., pvalue=0.778737758305...)
		
		With 3 degrees of freedom the t distribution looks sufficiently different
		from the normal distribution, that we can reject the hypothesis that the
		sample came from the normal distribution at the 10% level:
		
		>>> stats.ks_1samp(stats.t.rvs(3,size=100, random_state=rng),
		...                stats.norm.cdf)
		KstestResult(statistic=0.128678487493..., pvalue=0.066569081515...)
	**/
	static public function ks_1samp(x:Dynamic, cdf:Dynamic, ?args:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Performs the two-sample Kolmogorov-Smirnov test for goodness of fit.
		
		This test compares the underlying continuous distributions F(x) and G(x)
		of two independent samples.  See Notes for a description
		of the available null and alternative hypotheses.
		
		Parameters
		----------
		data1, data2 : array_like, 1-Dimensional
		    Two arrays of sample observations assumed to be drawn from a continuous
		    distribution, sample sizes can be different.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the null and alternative hypotheses. Default is 'two-sided'.
		    Please see explanations in the Notes below.
		mode : {'auto', 'exact', 'asymp'}, optional
		    Defines the method used for calculating the p-value.
		    The following options are available (default is 'auto'):
		
		      * 'auto' : use 'exact' for small size arrays, 'asymp' for large
		      * 'exact' : use exact distribution of test statistic
		      * 'asymp' : use asymptotic distribution of test statistic
		
		Returns
		-------
		statistic : float
		    KS statistic.
		pvalue : float
		    One-tailed or two-tailed p-value.
		
		See Also
		--------
		kstest, ks_1samp, epps_singleton_2samp, anderson_ksamp
		
		Notes
		-----
		There are three options for the null and corresponding alternative
		hypothesis that can be selected using the `alternative` parameter.
		
		- `two-sided`: The null hypothesis is that the two distributions are
		  identical, F(x)=G(x) for all x; the alternative is that they are not
		  identical.
		
		- `less`: The null hypothesis is that F(x) >= G(x) for all x; the
		  alternative is that F(x) < G(x) for at least one x.
		
		- `greater`: The null hypothesis is that F(x) <= G(x) for all x; the
		  alternative is that F(x) > G(x) for at least one x.
		
		Note that the alternative hypotheses describe the *CDFs* of the
		underlying distributions, not the observed values. For example,
		suppose x1 ~ F and x2 ~ G. If F(x) > G(x) for all x, the values in
		x1 tend to be less than those in x2.
		
		
		If the KS statistic is small or the p-value is high, then we cannot
		reject the null hypothesis in favor of the alternative.
		
		If the mode is 'auto', the computation is exact if the sample sizes are
		less than 10000.  For larger sizes, the computation uses the
		Kolmogorov-Smirnov distributions to compute an approximate value.
		
		The 'two-sided' 'exact' computation computes the complementary probability
		and then subtracts from 1.  As such, the minimum probability it can return
		is about 1e-16.  While the algorithm itself is exact, numerical
		errors may accumulate for large sample sizes.   It is most suited to
		situations in which one of the sample sizes is only a few thousand.
		
		We generally follow Hodges' treatment of Drion/Gnedenko/Korolyuk [1]_.
		
		References
		----------
		.. [1] Hodges, J.L. Jr.,  "The Significance Probability of the Smirnov
		       Two-Sample Test," Arkiv fiur Matematik, 3, No. 43 (1958), 469-86.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		>>> n1 = 200  # size of first sample
		>>> n2 = 300  # size of second sample
		
		For a different distribution, we can reject the null hypothesis since the
		pvalue is below 1%:
		
		>>> rvs1 = stats.norm.rvs(size=n1, loc=0., scale=1, random_state=rng)
		>>> rvs2 = stats.norm.rvs(size=n2, loc=0.5, scale=1.5, random_state=rng)
		>>> stats.ks_2samp(rvs1, rvs2)
		 KstestResult(statistic=0.24833333333333332, pvalue=5.846586728086578e-07)
		
		For a slightly different distribution, we cannot reject the null hypothesis
		at a 10% or lower alpha since the p-value at 0.144 is higher than 10%
		
		>>> rvs3 = stats.norm.rvs(size=n2, loc=0.01, scale=1.0, random_state=rng)
		>>> stats.ks_2samp(rvs1, rvs3)
		KstestResult(statistic=0.07833333333333334, pvalue=0.4379658456442945)
		
		For an identical distribution, we cannot reject the null hypothesis since
		the p-value is high, 41%:
		
		>>> rvs4 = stats.norm.rvs(size=n2, loc=0.0, scale=1.0, random_state=rng)
		>>> stats.ks_2samp(rvs1, rvs4)
		KstestResult(statistic=0.12166666666666667, pvalue=0.05401863039081145)
	**/
	static public function ks_2samp(data1:Dynamic, data2:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Kolmogorov-Smirnov one-sided test statistic distribution.
		
		This is the distribution of the one-sided Kolmogorov-Smirnov (KS)
		statistics :math:`D_n^+` and :math:`D_n^-`
		for a finite sample size ``n`` (the shape parameter).
		
		As an instance of the `rv_continuous` class, `ksone` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(n, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, n, loc=0, scale=1)
		    Probability density function.
		logpdf(x, n, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, n, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, n, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, n, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, n, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, n, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, n, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, n, loc=0, scale=1)
		    Non-central moment of order n
		stats(n, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(n, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(n,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(n, loc=0, scale=1)
		    Median of the distribution.
		mean(n, loc=0, scale=1)
		    Mean of the distribution.
		var(n, loc=0, scale=1)
		    Variance of the distribution.
		std(n, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, n, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		kstwobign, kstwo, kstest
		
		Notes
		-----
		:math:`D_n^+` and :math:`D_n^-` are given by
		
		.. math::
		
		    D_n^+ &= \text{sup}_x (F_n(x) - F(x)),\\
		    D_n^- &= \text{sup}_x (F(x) - F_n(x)),\\
		
		where :math:`F` is a continuous CDF and :math:`F_n` is an empirical CDF.
		`ksone` describes the distribution under the null hypothesis of the KS test
		that the empirical CDF corresponds to :math:`n` i.i.d. random variates
		with CDF :math:`F`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``ksone.pdf(x, n, loc, scale)`` is identically
		equivalent to ``ksone.pdf(y, n) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] Birnbaum, Z. W. and Tingey, F.H. "One-sided confidence contours
		   for probability distribution functions", The Annals of Mathematical
		   Statistics, 22(4), pp 592-596 (1951).
		
		Examples
		--------
		>>> from scipy.stats import ksone
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> n = 1e+03
		>>> mean, var, skew, kurt = ksone.stats(n, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(ksone.ppf(0.01, n),
		...                 ksone.ppf(0.99, n), 100)
		>>> ax.plot(x, ksone.pdf(x, n),
		...        'r-', lw=5, alpha=0.6, label='ksone pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = ksone(n)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = ksone.ppf([0.001, 0.5, 0.999], n)
		>>> np.allclose([0.001, 0.5, 0.999], ksone.cdf(vals, n))
		True
		
		Generate random numbers:
		
		>>> r = ksone.rvs(n, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function ksone(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the nth k-statistic (1<=n<=4 so far).
		
		The nth k-statistic k_n is the unique symmetric unbiased estimator of the
		nth cumulant kappa_n.
		
		Parameters
		----------
		data : array_like
		    Input array. Note that n-D input gets flattened.
		n : int, {1, 2, 3, 4}, optional
		    Default is equal to 2.
		
		Returns
		-------
		kstat : float
		    The nth k-statistic.
		
		See Also
		--------
		kstatvar: Returns an unbiased estimator of the variance of the k-statistic.
		moment: Returns the n-th central moment about the mean for a sample.
		
		Notes
		-----
		For a sample size n, the first few k-statistics are given by:
		
		.. math::
		
		    k_{1} = \mu
		    k_{2} = \frac{n}{n-1} m_{2}
		    k_{3} = \frac{ n^{2} } {(n-1) (n-2)} m_{3}
		    k_{4} = \frac{ n^{2} [(n + 1)m_{4} - 3(n - 1) m^2_{2}]} {(n-1) (n-2) (n-3)}
		
		where :math:`\mu` is the sample mean, :math:`m_2` is the sample
		variance, and :math:`m_i` is the i-th sample central moment.
		
		References
		----------
		http://mathworld.wolfram.com/k-Statistic.html
		
		http://mathworld.wolfram.com/Cumulant.html
		
		Examples
		--------
		>>> from scipy import stats
		>>> from numpy.random import default_rng
		>>> rng = default_rng()
		
		As sample size increases, n-th moment and n-th k-statistic converge to the
		same number (although they aren't identical). In the case of the normal
		distribution, they converge to zero.
		
		>>> for n in [2, 3, 4, 5, 6, 7]:
		...     x = rng.normal(size=10**n)
		...     m, k = stats.moment(x, 3), stats.kstat(x, 3)
		...     print("%.3g %.3g %.3g" % (m, k, m-k))
		-0.631 -0.651 0.0194  # random
		0.0282 0.0283 -8.49e-05
		-0.0454 -0.0454 1.36e-05
		7.53e-05 7.53e-05 -2.26e-09
		0.00166 0.00166 -4.99e-09
		-2.88e-06 -2.88e-06 8.63e-13
	**/
	static public function kstat(data:Dynamic, ?n:Dynamic):Float;
	/**
		Return an unbiased estimator of the variance of the k-statistic.
		
		See `kstat` for more details of the k-statistic.
		
		Parameters
		----------
		data : array_like
		    Input array. Note that n-D input gets flattened.
		n : int, {1, 2}, optional
		    Default is equal to 2.
		
		Returns
		-------
		kstatvar : float
		    The nth k-statistic variance.
		
		See Also
		--------
		kstat: Returns the n-th k-statistic.
		moment: Returns the n-th central moment about the mean for a sample.
		
		Notes
		-----
		The variances of the first few k-statistics are given by:
		
		.. math::
		
		    var(k_{1}) = \frac{\kappa^2}{n}
		    var(k_{2}) = \frac{\kappa^4}{n} + \frac{2\kappa^2_{2}}{n - 1}
		    var(k_{3}) = \frac{\kappa^6}{n} + \frac{9 \kappa_2 \kappa_4}{n - 1} +
		                 \frac{9 \kappa^2_{3}}{n - 1} +
		                 \frac{6 n \kappa^3_{2}}{(n-1) (n-2)}
		    var(k_{4}) = \frac{\kappa^8}{n} + \frac{16 \kappa_2 \kappa_6}{n - 1} +
		                 \frac{48 \kappa_{3} \kappa_5}{n - 1} +
		                 \frac{34 \kappa^2_{4}}{n-1} + \frac{72 n \kappa^2_{2} \kappa_4}{(n - 1) (n - 2)} +
		                 \frac{144 n \kappa_{2} \kappa^2_{3}}{(n - 1) (n - 2)} +
		                 \frac{24 (n + 1) n \kappa^4_{2}}{(n - 1) (n - 2) (n - 3)}
	**/
	static public function kstatvar(data:Dynamic, ?n:Dynamic):Float;
	/**
		Performs the (one-sample or two-sample) Kolmogorov-Smirnov test for
		goodness of fit.
		
		The one-sample test compares the underlying distribution F(x) of a sample
		against a given distribution G(x). The two-sample test compares the
		underlying distributions of two independent samples. Both tests are valid
		only for continuous distributions.
		
		Parameters
		----------
		rvs : str, array_like, or callable
		    If an array, it should be a 1-D array of observations of random
		    variables.
		    If a callable, it should be a function to generate random variables;
		    it is required to have a keyword argument `size`.
		    If a string, it should be the name of a distribution in `scipy.stats`,
		    which will be used to generate random variables.
		cdf : str, array_like or callable
		    If array_like, it should be a 1-D array of observations of random
		    variables, and the two-sample test is performed
		    (and rvs must be array_like).
		    If a callable, that callable is used to calculate the cdf.
		    If a string, it should be the name of a distribution in `scipy.stats`,
		    which will be used as the cdf function.
		args : tuple, sequence, optional
		    Distribution parameters, used if `rvs` or `cdf` are strings or
		    callables.
		N : int, optional
		    Sample size if `rvs` is string or callable.  Default is 20.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the null and alternative hypotheses. Default is 'two-sided'.
		    Please see explanations in the Notes below.
		mode : {'auto', 'exact', 'approx', 'asymp'}, optional
		    Defines the distribution used for calculating the p-value.
		    The following options are available (default is 'auto'):
		
		      * 'auto' : selects one of the other options.
		      * 'exact' : uses the exact distribution of test statistic.
		      * 'approx' : approximates the two-sided probability with twice the
		        one-sided probability
		      * 'asymp': uses asymptotic distribution of test statistic
		
		Returns
		-------
		statistic : float
		    KS test statistic, either D, D+ or D-.
		pvalue :  float
		    One-tailed or two-tailed p-value.
		
		See Also
		--------
		ks_2samp
		
		Notes
		-----
		There are three options for the null and corresponding alternative
		hypothesis that can be selected using the `alternative` parameter.
		
		- `two-sided`: The null hypothesis is that the two distributions are
		  identical, F(x)=G(x) for all x; the alternative is that they are not
		  identical.
		
		- `less`: The null hypothesis is that F(x) >= G(x) for all x; the
		  alternative is that F(x) < G(x) for at least one x.
		
		- `greater`: The null hypothesis is that F(x) <= G(x) for all x; the
		  alternative is that F(x) > G(x) for at least one x.
		
		Note that the alternative hypotheses describe the *CDFs* of the
		underlying distributions, not the observed values. For example,
		suppose x1 ~ F and x2 ~ G. If F(x) > G(x) for all x, the values in
		x1 tend to be less than those in x2.
		
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		>>> x = np.linspace(-15, 15, 9)
		>>> stats.kstest(x, 'norm')
		KstestResult(statistic=0.444356027159..., pvalue=0.038850140086...)
		
		>>> stats.kstest(stats.norm.rvs(size=100, random_state=rng), stats.norm.cdf)
		KstestResult(statistic=0.165471391799..., pvalue=0.007331283245...)
		
		The above lines are equivalent to:
		
		>>> stats.kstest(stats.norm.rvs, 'norm', N=100)
		KstestResult(statistic=0.113810164200..., pvalue=0.138690052319...)  # may vary
		
		*Test against one-sided alternative hypothesis*
		
		Shift distribution to larger values, so that ``CDF(x) < norm.cdf(x)``:
		
		>>> x = stats.norm.rvs(loc=0.2, size=100, random_state=rng)
		>>> stats.kstest(x, 'norm', alternative='less')
		KstestResult(statistic=0.1002033514..., pvalue=0.1255446444...)
		
		Reject null hypothesis in favor of alternative hypothesis: less
		
		>>> stats.kstest(x, 'norm', alternative='greater')
		KstestResult(statistic=0.018749806388..., pvalue=0.920581859791...)
		
		Don't reject null hypothesis in favor of alternative hypothesis: greater
		
		>>> stats.kstest(x, 'norm')
		KstestResult(statistic=0.100203351482..., pvalue=0.250616879765...)
		
		*Testing t distributed random variables against normal distribution*
		
		With 100 degrees of freedom the t distribution looks close to the normal
		distribution, and the K-S test does not reject the hypothesis that the
		sample came from the normal distribution:
		
		>>> stats.kstest(stats.t.rvs(100, size=100, random_state=rng), 'norm')
		KstestResult(statistic=0.064273776544..., pvalue=0.778737758305...)
		
		With 3 degrees of freedom the t distribution looks sufficiently different
		from the normal distribution, that we can reject the hypothesis that the
		sample came from the normal distribution at the 10% level:
		
		>>> stats.kstest(stats.t.rvs(3, size=100, random_state=rng), 'norm')
		KstestResult(statistic=0.128678487493..., pvalue=0.066569081515...)
	**/
	static public function kstest(rvs:Dynamic, cdf:Dynamic, ?args:Dynamic, ?N:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Kolmogorov-Smirnov two-sided test statistic distribution.
		
		This is the distribution of the two-sided Kolmogorov-Smirnov (KS)
		statistic :math:`D_n` for a finite sample size ``n``
		(the shape parameter).
		
		As an instance of the `rv_continuous` class, `kstwo` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(n, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, n, loc=0, scale=1)
		    Probability density function.
		logpdf(x, n, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, n, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, n, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, n, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, n, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, n, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, n, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, n, loc=0, scale=1)
		    Non-central moment of order n
		stats(n, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(n, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(n,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(n, loc=0, scale=1)
		    Median of the distribution.
		mean(n, loc=0, scale=1)
		    Mean of the distribution.
		var(n, loc=0, scale=1)
		    Variance of the distribution.
		std(n, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, n, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		kstwobign, ksone, kstest
		
		Notes
		-----
		:math:`D_n` is given by
		
		.. math::
		
		    D_n = \text{sup}_x |F_n(x) - F(x)|
		
		where :math:`F` is a (continuous) CDF and :math:`F_n` is an empirical CDF.
		`kstwo` describes the distribution under the null hypothesis of the KS test
		that the empirical CDF corresponds to :math:`n` i.i.d. random variates
		with CDF :math:`F`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``kstwo.pdf(x, n, loc, scale)`` is identically
		equivalent to ``kstwo.pdf(y, n) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] Simard, R., L'Ecuyer, P. "Computing the Two-Sided
		   Kolmogorov-Smirnov Distribution",  Journal of Statistical Software,
		   Vol 39, 11, 1-18 (2011).
		
		Examples
		--------
		>>> from scipy.stats import kstwo
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> n = 10
		>>> mean, var, skew, kurt = kstwo.stats(n, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(kstwo.ppf(0.01, n),
		...                 kstwo.ppf(0.99, n), 100)
		>>> ax.plot(x, kstwo.pdf(x, n),
		...        'r-', lw=5, alpha=0.6, label='kstwo pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = kstwo(n)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = kstwo.ppf([0.001, 0.5, 0.999], n)
		>>> np.allclose([0.001, 0.5, 0.999], kstwo.cdf(vals, n))
		True
		
		Generate random numbers:
		
		>>> r = kstwo.rvs(n, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function kstwo(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Limiting distribution of scaled Kolmogorov-Smirnov two-sided test statistic.
		
		This is the asymptotic distribution of the two-sided Kolmogorov-Smirnov
		statistic :math:`\sqrt{n} D_n` that measures the maximum absolute
		distance of the theoretical (continuous) CDF from the empirical CDF.
		(see `kstest`).
		
		As an instance of the `rv_continuous` class, `kstwobign` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		ksone, kstwo, kstest
		
		Notes
		-----
		:math:`\sqrt{n} D_n` is given by
		
		.. math::
		
		    D_n = \text{sup}_x |F_n(x) - F(x)|
		
		where :math:`F` is a continuous CDF and :math:`F_n` is an empirical CDF.
		`kstwobign`  describes the asymptotic distribution (i.e. the limit of
		:math:`\sqrt{n} D_n`) under the null hypothesis of the KS test that the
		empirical CDF corresponds to i.i.d. random variates with CDF :math:`F`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``kstwobign.pdf(x, loc, scale)`` is identically
		equivalent to ``kstwobign.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] Feller, W. "On the Kolmogorov-Smirnov Limit Theorems for Empirical
		   Distributions",  Ann. Math. Statist. Vol 19, 177-189 (1948).
		
		Examples
		--------
		>>> from scipy.stats import kstwobign
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = kstwobign.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(kstwobign.ppf(0.01),
		...                 kstwobign.ppf(0.99), 100)
		>>> ax.plot(x, kstwobign.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='kstwobign pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = kstwobign()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = kstwobign.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], kstwobign.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = kstwobign.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function kstwobign(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the kurtosis (Fisher or Pearson) of a dataset.
		
		Kurtosis is the fourth central moment divided by the square of the
		variance. If Fisher's definition is used, then 3.0 is subtracted from
		the result to give 0.0 for a normal distribution.
		
		If bias is False then the kurtosis is calculated using k statistics to
		eliminate bias coming from biased moment estimators
		
		Use `kurtosistest` to see if result is close enough to normal.
		
		Parameters
		----------
		a : array
		    Data for which the kurtosis is calculated.
		axis : int or None, optional
		    Axis along which the kurtosis is calculated. Default is 0.
		    If None, compute over the whole array `a`.
		fisher : bool, optional
		    If True, Fisher's definition is used (normal ==> 0.0). If False,
		    Pearson's definition is used (normal ==> 3.0).
		bias : bool, optional
		    If False, then the calculations are corrected for statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		kurtosis : array
		    The kurtosis of values along an axis. If all values are equal,
		    return -3 for Fisher's definition and 0 for Pearson's definition.
		
		References
		----------
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		
		Examples
		--------
		In Fisher's definiton, the kurtosis of the normal distribution is zero.
		In the following example, the kurtosis is close to zero, because it was
		calculated from the dataset, not from the continuous distribution.
		
		>>> from scipy.stats import norm, kurtosis
		>>> data = norm.rvs(size=1000, random_state=3)
		>>> kurtosis(data)
		-0.06928694200380558
		
		The distribution with a higher kurtosis has a heavier tail.
		The zero valued kurtosis of the normal distribution in Fisher's definition
		can serve as a reference point.
		
		>>> import matplotlib.pyplot as plt
		>>> import scipy.stats as stats
		>>> from scipy.stats import kurtosis
		
		>>> x = np.linspace(-5, 5, 100)
		>>> ax = plt.subplot()
		>>> distnames = ['laplace', 'norm', 'uniform']
		
		>>> for distname in distnames:
		...     if distname == 'uniform':
		...         dist = getattr(stats, distname)(loc=-2, scale=4)
		...     else:
		...         dist = getattr(stats, distname)
		...     data = dist.rvs(size=1000)
		...     kur = kurtosis(data, fisher=True)
		...     y = dist.pdf(x)
		...     ax.plot(x, y, label="{}, {}".format(distname, round(kur, 3)))
		...     ax.legend()
		
		The Laplace distribution has a heavier tail than the normal distribution.
		The uniform distribution (which has negative kurtosis) has the thinnest
		tail.
	**/
	static public function kurtosis(a:Dynamic, ?axis:Dynamic, ?fisher:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Array<Dynamic>;
	/**
		Test whether a dataset has normal kurtosis.
		
		This function tests the null hypothesis that the kurtosis
		of the population from which the sample was drawn is that
		of the normal distribution.
		
		Parameters
		----------
		a : array
		    Array of the sample data.
		axis : int or None, optional
		   Axis along which to compute test. Default is 0. If None,
		   compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
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
		statistic : float
		    The computed z-score for this test.
		pvalue : float
		    The p-value for the hypothesis test.
		
		Notes
		-----
		Valid only for n>20. This function uses the method described in [1]_.
		
		References
		----------
		.. [1] see e.g. F. J. Anscombe, W. J. Glynn, "Distribution of the kurtosis
		   statistic b2 for normal samples", Biometrika, vol. 70, pp. 227-234, 1983.
		
		Examples
		--------
		>>> from scipy.stats import kurtosistest
		>>> kurtosistest(list(range(20)))
		KurtosistestResult(statistic=-1.7058104152122062, pvalue=0.08804338332528348)
		>>> kurtosistest(list(range(20)), alternative='less')
		KurtosistestResult(statistic=-1.7058104152122062, pvalue=0.04402169166264174)
		>>> kurtosistest(list(range(20)), alternative='greater')
		KurtosistestResult(statistic=-1.7058104152122062, pvalue=0.9559783083373583)
		
		>>> rng = np.random.default_rng()
		>>> s = rng.normal(0, 1, 1000)
		>>> kurtosistest(s)
		KurtosistestResult(statistic=-1.475047944490622, pvalue=0.14019965402996987)
	**/
	static public function kurtosistest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Float;
	/**
		A Laplace continuous random variable.
		
		As an instance of the `rv_continuous` class, `laplace` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `laplace` is
		
		.. math::
		
		    f(x) = \frac{1}{2} \exp(-|x|)
		
		for a real number :math:`x`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``laplace.pdf(x, loc, scale)`` is identically
		equivalent to ``laplace.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import laplace
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = laplace.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(laplace.ppf(0.01),
		...                 laplace.ppf(0.99), 100)
		>>> ax.plot(x, laplace.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='laplace pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = laplace()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = laplace.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], laplace.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = laplace.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function laplace(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An asymmetric Laplace continuous random variable.
		
		As an instance of the `rv_continuous` class, `laplace_asymmetric` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(kappa, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, kappa, loc=0, scale=1)
		    Probability density function.
		logpdf(x, kappa, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, kappa, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, kappa, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, kappa, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, kappa, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, kappa, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, kappa, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, kappa, loc=0, scale=1)
		    Non-central moment of order n
		stats(kappa, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(kappa, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(kappa,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(kappa, loc=0, scale=1)
		    Median of the distribution.
		mean(kappa, loc=0, scale=1)
		    Mean of the distribution.
		var(kappa, loc=0, scale=1)
		    Variance of the distribution.
		std(kappa, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, kappa, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		laplace : Laplace distribution
		
		Notes
		-----
		The probability density function for `laplace_asymmetric` is
		
		.. math::
		
		   f(x, \kappa) &= \frac{1}{\kappa+\kappa^{-1}}\exp(-x\kappa),\quad x\ge0\\
		                &= \frac{1}{\kappa+\kappa^{-1}}\exp(x/\kappa),\quad x<0\\
		
		for :math:`-\infty < x < \infty`, :math:`\kappa > 0`.
		
		`laplace_asymmetric` takes ``kappa`` as a shape parameter for
		:math:`\kappa`. For :math:`\kappa = 1`, it is identical to a
		Laplace distribution.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``laplace_asymmetric.pdf(x, kappa, loc, scale)`` is identically
		equivalent to ``laplace_asymmetric.pdf(y, kappa) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] "Asymmetric Laplace distribution", Wikipedia
		        https://en.wikipedia.org/wiki/Asymmetric_Laplace_distribution
		
		.. [2] Kozubowski TJ and Podgórski K. A Multivariate and
		       Asymmetric Generalization of Laplace Distribution,
		       Computational Statistics 15, 531--540 (2000).
		       :doi:`10.1007/PL00022717`
		
		Examples
		--------
		>>> from scipy.stats import laplace_asymmetric
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> kappa = 2
		>>> mean, var, skew, kurt = laplace_asymmetric.stats(kappa, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(laplace_asymmetric.ppf(0.01, kappa),
		...                 laplace_asymmetric.ppf(0.99, kappa), 100)
		>>> ax.plot(x, laplace_asymmetric.pdf(x, kappa),
		...        'r-', lw=5, alpha=0.6, label='laplace_asymmetric pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = laplace_asymmetric(kappa)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = laplace_asymmetric.ppf([0.001, 0.5, 0.999], kappa)
		>>> np.allclose([0.001, 0.5, 0.999], laplace_asymmetric.cdf(vals, kappa))
		True
		
		Generate random numbers:
		
		>>> r = laplace_asymmetric.rvs(kappa, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function laplace_asymmetric(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform Levene test for equal variances.
		
		The Levene test tests the null hypothesis that all input samples
		are from populations with equal variances.  Levene's test is an
		alternative to Bartlett's test `bartlett` in the case where
		there are significant deviations from normality.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The sample data, possibly with different lengths. Only one-dimensional
		    samples are accepted.
		center : {'mean', 'median', 'trimmed'}, optional
		    Which function of the data to use in the test.  The default
		    is 'median'.
		proportiontocut : float, optional
		    When `center` is 'trimmed', this gives the proportion of data points
		    to cut from each end. (See `scipy.stats.trim_mean`.)
		    Default is 0.05.
		
		Returns
		-------
		statistic : float
		    The test statistic.
		pvalue : float
		    The p-value for the test.
		
		Notes
		-----
		Three variations of Levene's test are possible.  The possibilities
		and their recommended usages are:
		
		  * 'median' : Recommended for skewed (non-normal) distributions>
		  * 'mean' : Recommended for symmetric, moderate-tailed distributions.
		  * 'trimmed' : Recommended for heavy-tailed distributions.
		
		The test version using the mean was proposed in the original article
		of Levene ([2]_) while the median and trimmed mean have been studied by
		Brown and Forsythe ([3]_), sometimes also referred to as Brown-Forsythe
		test.
		
		References
		----------
		.. [1] https://www.itl.nist.gov/div898/handbook/eda/section3/eda35a.htm
		.. [2] Levene, H. (1960). In Contributions to Probability and Statistics:
		       Essays in Honor of Harold Hotelling, I. Olkin et al. eds.,
		       Stanford University Press, pp. 278-292.
		.. [3] Brown, M. B. and Forsythe, A. B. (1974), Journal of the American
		       Statistical Association, 69, 364-367
		
		Examples
		--------
		Test whether or not the lists `a`, `b` and `c` come from populations
		with equal variances.
		
		>>> from scipy.stats import levene
		>>> a = [8.88, 9.12, 9.04, 8.98, 9.00, 9.08, 9.01, 8.85, 9.06, 8.99]
		>>> b = [8.88, 8.95, 9.29, 9.44, 9.15, 9.58, 8.36, 9.18, 8.67, 9.05]
		>>> c = [8.95, 9.12, 8.95, 8.85, 9.03, 8.84, 9.07, 8.98, 8.86, 8.98]
		>>> stat, p = levene(a, b, c)
		>>> p
		0.002431505967249681
		
		The small p-value suggests that the populations do not have equal
		variances.
		
		This is not surprising, given that the sample variance of `b` is much
		larger than that of `a` and `c`:
		
		>>> [np.var(x, ddof=1) for x in [a, b, c]]
		[0.007054444444444413, 0.13073888888888888, 0.008890000000000002]
	**/
	static public function levene(?args:python.VarArgs<Dynamic>, ?center:Dynamic, ?proportiontocut:Dynamic):Float;
	/**
		A Levy continuous random variable.
		
		As an instance of the `rv_continuous` class, `levy` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		levy_stable, levy_l
		
		Notes
		-----
		The probability density function for `levy` is:
		
		.. math::
		
		    f(x) = \frac{1}{\sqrt{2\pi x^3}} \exp\left(-\frac{1}{2x}\right)
		
		for :math:`x >= 0`.
		
		This is the same as the Levy-stable distribution with :math:`a=1/2` and
		:math:`b=1`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``levy.pdf(x, loc, scale)`` is identically
		equivalent to ``levy.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import levy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = levy.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(levy.ppf(0.01),
		...                 levy.ppf(0.99), 100)
		>>> ax.plot(x, levy.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='levy pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = levy()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = levy.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], levy.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = levy.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function levy(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A left-skewed Levy continuous random variable.
		
		As an instance of the `rv_continuous` class, `levy_l` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		levy, levy_stable
		
		Notes
		-----
		The probability density function for `levy_l` is:
		
		.. math::
		    f(x) = \frac{1}{|x| \sqrt{2\pi |x|}} \exp{ \left(-\frac{1}{2|x|} \right)}
		
		for :math:`x <= 0`.
		
		This is the same as the Levy-stable distribution with :math:`a=1/2` and
		:math:`b=-1`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``levy_l.pdf(x, loc, scale)`` is identically
		equivalent to ``levy_l.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import levy_l
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = levy_l.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(levy_l.ppf(0.01),
		...                 levy_l.ppf(0.99), 100)
		>>> ax.plot(x, levy_l.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='levy_l pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = levy_l()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = levy_l.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], levy_l.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = levy_l.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function levy_l(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Levy-stable continuous random variable.
		
		As an instance of the `rv_continuous` class, `levy_stable` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(alpha, beta, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, alpha, beta, loc=0, scale=1)
		    Probability density function.
		logpdf(x, alpha, beta, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, alpha, beta, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, alpha, beta, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, alpha, beta, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, alpha, beta, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, alpha, beta, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, alpha, beta, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, alpha, beta, loc=0, scale=1)
		    Non-central moment of order n
		stats(alpha, beta, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(alpha, beta, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(alpha, beta), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(alpha, beta, loc=0, scale=1)
		    Median of the distribution.
		mean(alpha, beta, loc=0, scale=1)
		    Mean of the distribution.
		var(alpha, beta, loc=0, scale=1)
		    Variance of the distribution.
		std(alpha, beta, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, alpha, beta, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		levy, levy_l
		
		Notes
		-----
		The distribution for `levy_stable` has characteristic function:
		
		.. math::
		
		    \varphi(t, \alpha, \beta, c, \mu) =
		    e^{it\mu -|ct|^{\alpha}(1-i\beta \operatorname{sign}(t)\Phi(\alpha, t))}
		
		where:
		
		.. math::
		
		    \Phi = \begin{cases}
		            \tan \left({\frac {\pi \alpha }{2}}\right)&\alpha \neq 1\\
		            -{\frac {2}{\pi }}\log |t|&\alpha =1
		            \end{cases}
		
		The probability density function for `levy_stable` is:
		
		.. math::
		
		    f(x) = \frac{1}{2\pi}\int_{-\infty}^\infty \varphi(t)e^{-ixt}\,dt
		
		where :math:`-\infty < t < \infty`. This integral does not have a known closed form.
		
		For evaluation of pdf we use either Zolotarev :math:`S_0` parameterization with integration,
		direct integration of standard parameterization of characteristic function or FFT of
		characteristic function. If set to other than None and if number of points is greater than
		``levy_stable.pdf_fft_min_points_threshold`` (defaults to None) we use FFT otherwise we use one
		of the other methods.
		
		The default method is 'best' which uses Zolotarev's method if alpha = 1 and integration of
		characteristic function otherwise. The default method can be changed by setting
		``levy_stable.pdf_default_method`` to either 'zolotarev', 'quadrature' or 'best'.
		
		To increase accuracy of FFT calculation one can specify ``levy_stable.pdf_fft_grid_spacing``
		(defaults to 0.001) and ``pdf_fft_n_points_two_power`` (defaults to a value that covers the
		input range * 4). Setting ``pdf_fft_n_points_two_power`` to 16 should be sufficiently accurate
		in most cases at the expense of CPU time.
		
		For evaluation of cdf we use Zolatarev :math:`S_0` parameterization with integration or integral of
		the pdf FFT interpolated spline. The settings affecting FFT calculation are the same as
		for pdf calculation. Setting the threshold to ``None`` (default) will disable FFT. For cdf
		calculations the Zolatarev method is superior in accuracy, so FFT is disabled by default.
		
		Fitting estimate uses quantile estimation method in [MC]. MLE estimation of parameters in
		fit method uses this quantile estimate initially. Note that MLE doesn't always converge if
		using FFT for pdf calculations; so it's best that ``pdf_fft_min_points_threshold`` is left unset.
		
		.. warning::
		
		    For pdf calculations implementation of Zolatarev is unstable for values where alpha = 1 and
		    beta != 0. In this case the quadrature method is recommended. FFT calculation is also
		    considered experimental.
		
		    For cdf calculations FFT calculation is considered experimental. Use Zolatarev's method
		    instead (default).
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``levy_stable.pdf(x, alpha, beta, loc, scale)`` is identically
		equivalent to ``levy_stable.pdf(y, alpha, beta) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [MC] McCulloch, J., 1986. Simple consistent estimators of stable distribution parameters.
		   Communications in Statistics - Simulation and Computation 15, 11091136.
		.. [MS] Mittnik, S.T. Rachev, T. Doganoglu, D. Chenyao, 1999. Maximum likelihood estimation
		   of stable Paretian models, Mathematical and Computer Modelling, Volume 29, Issue 10,
		   1999, Pages 275-293.
		.. [BS] Borak, S., Hardle, W., Rafal, W. 2005. Stable distributions, Economic Risk.
		
		Examples
		--------
		>>> from scipy.stats import levy_stable
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> alpha, beta = 1.8, -0.5
		>>> mean, var, skew, kurt = levy_stable.stats(alpha, beta, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(levy_stable.ppf(0.01, alpha, beta),
		...                 levy_stable.ppf(0.99, alpha, beta), 100)
		>>> ax.plot(x, levy_stable.pdf(x, alpha, beta),
		...        'r-', lw=5, alpha=0.6, label='levy_stable pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = levy_stable(alpha, beta)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = levy_stable.ppf([0.001, 0.5, 0.999], alpha, beta)
		>>> np.allclose([0.001, 0.5, 0.999], levy_stable.cdf(vals, alpha, beta))
		True
		
		Generate random numbers:
		
		>>> r = levy_stable.rvs(alpha, beta, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function levy_stable(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public function linregress(x:Dynamic, ?y:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		A log gamma continuous random variable.
		
		As an instance of the `rv_continuous` class, `loggamma` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `loggamma` is:
		
		.. math::
		
		    f(x, c) = \frac{\exp(c x - \exp(x))}
		                   {\Gamma(c)}
		
		for all :math:`x, c > 0`. Here, :math:`\Gamma` is the
		gamma function (`scipy.special.gamma`).
		
		`loggamma` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``loggamma.pdf(x, c, loc, scale)`` is identically
		equivalent to ``loggamma.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import loggamma
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 0.414
		>>> mean, var, skew, kurt = loggamma.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(loggamma.ppf(0.01, c),
		...                 loggamma.ppf(0.99, c), 100)
		>>> ax.plot(x, loggamma.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='loggamma pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = loggamma(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = loggamma.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], loggamma.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = loggamma.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function loggamma(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A logistic (or Sech-squared) continuous random variable.
		
		As an instance of the `rv_continuous` class, `logistic` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `logistic` is:
		
		.. math::
		
		    f(x) = \frac{\exp(-x)}
		                {(1+\exp(-x))^2}
		
		`logistic` is a special case of `genlogistic` with ``c=1``.
		
		Remark that the survival function (``logistic.sf``) is equal to the
		Fermi-Dirac distribution describing fermionic statistics.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``logistic.pdf(x, loc, scale)`` is identically
		equivalent to ``logistic.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import logistic
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = logistic.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(logistic.ppf(0.01),
		...                 logistic.ppf(0.99), 100)
		>>> ax.plot(x, logistic.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='logistic pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = logistic()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = logistic.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], logistic.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = logistic.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function logistic(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A log-Laplace continuous random variable.
		
		As an instance of the `rv_continuous` class, `loglaplace` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `loglaplace` is:
		
		.. math::
		
		    f(x, c) = \begin{cases}\frac{c}{2} x^{ c-1}  &\text{for } 0 < x < 1\\
		                           \frac{c}{2} x^{-c-1}  &\text{for } x \ge 1
		              \end{cases}
		
		for :math:`c > 0`.
		
		`loglaplace` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``loglaplace.pdf(x, c, loc, scale)`` is identically
		equivalent to ``loglaplace.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		T.J. Kozubowski and K. Podgorski, "A log-Laplace growth rate model",
		The Mathematical Scientist, vol. 28, pp. 49-60, 2003.
		
		Examples
		--------
		>>> from scipy.stats import loglaplace
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 3.25
		>>> mean, var, skew, kurt = loglaplace.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(loglaplace.ppf(0.01, c),
		...                 loglaplace.ppf(0.99, c), 100)
		>>> ax.plot(x, loglaplace.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='loglaplace pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = loglaplace(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = loglaplace.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], loglaplace.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = loglaplace.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function loglaplace(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A lognormal continuous random variable.
		
		As an instance of the `rv_continuous` class, `lognorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(s, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, s, loc=0, scale=1)
		    Probability density function.
		logpdf(x, s, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, s, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, s, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, s, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, s, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, s, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, s, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, s, loc=0, scale=1)
		    Non-central moment of order n
		stats(s, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(s, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(s,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(s, loc=0, scale=1)
		    Median of the distribution.
		mean(s, loc=0, scale=1)
		    Mean of the distribution.
		var(s, loc=0, scale=1)
		    Variance of the distribution.
		std(s, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, s, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `lognorm` is:
		
		.. math::
		
		    f(x, s) = \frac{1}{s x \sqrt{2\pi}}
		              \exp\left(-\frac{\log^2(x)}{2s^2}\right)
		
		for :math:`x > 0`, :math:`s > 0`.
		
		`lognorm` takes ``s`` as a shape parameter for :math:`s`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``lognorm.pdf(x, s, loc, scale)`` is identically
		equivalent to ``lognorm.pdf(y, s) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		A common parametrization for a lognormal random variable ``Y`` is in
		terms of the mean, ``mu``, and standard deviation, ``sigma``, of the
		unique normally distributed random variable ``X`` such that exp(X) = Y.
		This parametrization corresponds to setting ``s = sigma`` and ``scale =
		exp(mu)``.
		
		Examples
		--------
		>>> from scipy.stats import lognorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> s = 0.954
		>>> mean, var, skew, kurt = lognorm.stats(s, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(lognorm.ppf(0.01, s),
		...                 lognorm.ppf(0.99, s), 100)
		>>> ax.plot(x, lognorm.pdf(x, s),
		...        'r-', lw=5, alpha=0.6, label='lognorm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = lognorm(s)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = lognorm.ppf([0.001, 0.5, 0.999], s)
		>>> np.allclose([0.001, 0.5, 0.999], lognorm.cdf(vals, s))
		True
		
		Generate random numbers:
		
		>>> r = lognorm.rvs(s, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function lognorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Logarithmic (Log-Series, Series) discrete random variable.
		
		As an instance of the `rv_discrete` class, `logser` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(p, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, p, loc=0)
		    Probability mass function.
		logpmf(k, p, loc=0)
		    Log of the probability mass function.
		cdf(k, p, loc=0)
		    Cumulative distribution function.
		logcdf(k, p, loc=0)
		    Log of the cumulative distribution function.
		sf(k, p, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, p, loc=0)
		    Log of the survival function.
		ppf(q, p, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, p, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(p, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(p, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(p,), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(p, loc=0)
		    Median of the distribution.
		mean(p, loc=0)
		    Mean of the distribution.
		var(p, loc=0)
		    Variance of the distribution.
		std(p, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, p, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability mass function for `logser` is:
		
		.. math::
		
		    f(k) = - \frac{p^k}{k \log(1-p)}
		
		for :math:`k \ge 1`, :math:`0 < p < 1`
		
		`logser` takes :math:`p` as shape parameter,
		where :math:`p` is the probability of a single success
		and :math:`1-p` is the probability of a single failure.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``logser.pmf(k, p, loc)`` is identically
		equivalent to ``logser.pmf(k - loc, p)``.
		
		Examples
		--------
		>>> from scipy.stats import logser
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> p = 0.6
		>>> mean, var, skew, kurt = logser.stats(p, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(logser.ppf(0.01, p),
		...               logser.ppf(0.99, p))
		>>> ax.plot(x, logser.pmf(x, p), 'bo', ms=8, label='logser pmf')
		>>> ax.vlines(x, 0, logser.pmf(x, p), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = logser(p)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = logser.cdf(x, p)
		>>> np.allclose(x, logser.ppf(prob, p))
		True
		
		Generate random numbers:
		
		>>> r = logser.rvs(p, size=1000)
	**/
	static public function logser(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A loguniform or reciprocal continuous random variable.
		
		As an instance of the `rv_continuous` class, `loguniform` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, b, loc=0, scale=1)
		    Median of the distribution.
		mean(a, b, loc=0, scale=1)
		    Mean of the distribution.
		var(a, b, loc=0, scale=1)
		    Variance of the distribution.
		std(a, b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for this class is:
		
		.. math::
		
		    f(x, a, b) = \frac{1}{x \log(b/a)}
		
		for :math:`a \le x \le b`, :math:`b > a > 0`. This class takes
		:math:`a` and :math:`b` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``loguniform.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``loguniform.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import loguniform
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, b = 0.01, 1.25
		>>> mean, var, skew, kurt = loguniform.stats(a, b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(loguniform.ppf(0.01, a, b),
		...                 loguniform.ppf(0.99, a, b), 100)
		>>> ax.plot(x, loguniform.pdf(x, a, b),
		...        'r-', lw=5, alpha=0.6, label='loguniform pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = loguniform(a, b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = loguniform.ppf([0.001, 0.5, 0.999], a, b)
		>>> np.allclose([0.001, 0.5, 0.999], loguniform.cdf(vals, a, b))
		True
		
		Generate random numbers:
		
		>>> r = loguniform.rvs(a, b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		
		This doesn't show the equal probability of ``0.01``, ``0.1`` and
		``1``. This is best when the x-axis is log-scaled:
		
		>>> import numpy as np
		>>> fig, ax = plt.subplots(1, 1)
		>>> ax.hist(np.log10(r))
		>>> ax.set_ylabel("Frequency")
		>>> ax.set_xlabel("Value of random variable")
		>>> ax.xaxis.set_major_locator(plt.FixedLocator([-2, -1, 0]))
		>>> ticks = ["$10^{{ {} }}$".format(i) for i in [-2, -1, 0]]
		>>> ax.set_xticklabels(ticks)  # doctest: +SKIP
		>>> plt.show()
		
		This random variable will be log-uniform regardless of the base chosen for
		``a`` and ``b``. Let's specify with base ``2`` instead:
		
		>>> rvs = loguniform(2**-2, 2**0).rvs(size=1000)
		
		Values of ``1/4``, ``1/2`` and ``1`` are equally likely with this random
		variable.  Here's the histogram:
		
		>>> fig, ax = plt.subplots(1, 1)
		>>> ax.hist(np.log2(rvs))
		>>> ax.set_ylabel("Frequency")
		>>> ax.set_xlabel("Value of random variable")
		>>> ax.xaxis.set_major_locator(plt.FixedLocator([-2, -1, 0]))
		>>> ticks = ["$2^{{ {} }}$".format(i) for i in [-2, -1, 0]]
		>>> ax.set_xticklabels(ticks)  # doctest: +SKIP
		>>> plt.show()
	**/
	static public function loguniform(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Lomax (Pareto of the second kind) continuous random variable.
		
		As an instance of the `rv_continuous` class, `lomax` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `lomax` is:
		
		.. math::
		
		    f(x, c) = \frac{c}{(1+x)^{c+1}}
		
		for :math:`x \ge 0`, :math:`c > 0`.
		
		`lomax` takes ``c`` as a shape parameter for :math:`c`.
		
		`lomax` is a special case of `pareto` with ``loc=-1.0``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``lomax.pdf(x, c, loc, scale)`` is identically
		equivalent to ``lomax.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import lomax
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 1.88
		>>> mean, var, skew, kurt = lomax.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(lomax.ppf(0.01, c),
		...                 lomax.ppf(0.99, c), 100)
		>>> ax.plot(x, lomax.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='lomax pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = lomax(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = lomax.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], lomax.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = lomax.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function lomax(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform the Mann-Whitney U rank test on two independent samples.
		
		The Mann-Whitney U test is a nonparametric test of the null hypothesis
		that the distribution underlying sample `x` is the same as the
		distribution underlying sample `y`. It is often used as a test of
		difference in location between distributions.
		
		Parameters
		----------
		x, y : array-like
		    N-d arrays of samples. The arrays must be broadcastable except along
		    the dimension given by `axis`.
		use_continuity : bool, optional
		    Whether a continuity correction (1/2) should be applied.
		    Default is True when `method` is ``'asymptotic'``; has no effect
		    otherwise.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    Let *F(u)* and *G(u)* be the cumulative distribution functions of the
		    distributions underlying `x` and `y`, respectively. Then the following
		    alternative hypotheses are available:
		    
		    * 'two-sided': the distributions are not equal, i.e. *F(u) ≠ G(u)* for
		      at least one *u*.
		    * 'less': the distribution underlying `x` is stochastically less
		      than the distribution underlying `y`, i.e. *F(u) > G(u)* for all *u*.
		    * 'greater': the distribution underlying `x` is stochastically greater
		      than the distribution underlying `y`, i.e. *F(u) < G(u)* for all *u*.
		    
		    Under a more restrictive set of assumptions, the alternative hypotheses
		    can be expressed in terms of the locations of the distributions;
		    see [5] section 5.1.
		axis : int or None, default: 0
		    If an int, the axis of the input along which to compute the statistic.
		    The statistic of each axis-slice (e.g. row) of the input will appear in a
		    corresponding element of the output.
		    If ``None``, the input will be raveled before computing the statistic.
		method : {'auto', 'asymptotic', 'exact'}, optional
		    Selects the method used to calculate the *p*-value.
		    Default is 'auto'. The following options are available.
		    
		    * ``'asymptotic'``: compares the standardized test statistic
		      against the normal distribution, correcting for ties.
		    * ``'exact'``: computes the exact *p*-value by comparing the observed
		      :math:`U` statistic against the exact distribution of the :math:`U`
		      statistic under the null hypothesis. No correction is made for ties.
		    * ``'auto'``: chooses ``'exact'`` when the size of one of the samples
		      is less than 8 and there are no ties; chooses ``'asymptotic'``
		      otherwise.
		nan_policy : {'propagate', 'omit', 'raise'}
		    Defines how to handle input NaNs.
		    
		    - ``propagate``: if a NaN is present in the axis slice (e.g. row) along
		      which the  statistic is computed, the corresponding entry of the output
		      will be NaN.
		    - ``omit``: NaNs will be omitted when performing the calculation.
		      If insufficient data remains in the axis slice along which the
		      statistic is computed, the corresponding entry of the output will be
		      NaN.
		    - ``raise``: if a NaN is present, a ``ValueError`` will be raised.
		
		Returns
		-------
		res : MannwhitneyuResult
		    An object containing attributes:
		    
		    statistic : float
		        The Mann-Whitney U statistic corresponding with sample `x`. See
		        Notes for the test statistic corresponding with sample `y`.
		    pvalue : float
		        The associated *p*-value for the chosen `alternative`.
		
		See Also
		--------
		
		:func:`scipy.stats.wilcoxon`, :func:`scipy.stats.ranksums`, :func:`scipy.stats.ttest_ind`
		    ..
		
		Notes
		-----
		If ``U1`` is the statistic corresponding with sample `x`, then the
		statistic corresponding with sample `y` is
		`U2 = `x.shape[axis] * y.shape[axis] - U1``.
		
		`mannwhitneyu` is for independent samples. For related / paired samples,
		consider `scipy.stats.wilcoxon`.
		
		`method` ``'exact'`` is recommended when there are no ties and when either
		sample size is less than 8 [1]_. The implementation follows the recurrence
		relation originally proposed in [1]_ as it is described in [3]_.
		Note that the exact method is *not* corrected for ties, but
		`mannwhitneyu` will not raise errors or warnings if there are ties in the
		data.
		
		The Mann-Whitney U test is a non-parametric version of the t-test for
		independent samples. When the the means of samples from the populations
		are normally distributed, consider `scipy.stats.ttest_ind`.
		
		References
		----------
		.. [1] H.B. Mann and D.R. Whitney, "On a test of whether one of two random
		       variables is stochastically larger than the other", The Annals of
		       Mathematical Statistics, Vol. 18, pp. 50-60, 1947.
		.. [2] Mann-Whitney U Test, Wikipedia,
		       http://en.wikipedia.org/wiki/Mann-Whitney_U_test
		.. [3] A. Di Bucchianico, "Combinatorics, computer algebra, and the
		       Wilcoxon-Mann-Whitney test", Journal of Statistical Planning and
		       Inference, Vol. 79, pp. 349-364, 1999.
		.. [4] Rosie Shier, "Statistics: 2.3 The Mann-Whitney U Test", Mathematics
		       Learning Support Centre, 2004.
		.. [5] Michael P. Fay and Michael A. Proschan. "Wilcoxon-Mann-Whitney
		       or t-test? On assumptions for hypothesis tests and multiple \
		       interpretations of decision rules." Statistics surveys, Vol. 4, pp.
		       1-39, 2010. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2857732/
		
		Examples
		--------
		We follow the example from [4]_: nine randomly sampled young adults were
		diagnosed with type II diabetes at the ages below.
		
		>>> males = [19, 22, 16, 29, 24]
		>>> females = [20, 11, 17, 12]
		
		We use the Mann-Whitney U test to assess whether there is a statistically
		significant difference in the diagnosis age of males and females.
		The null hypothesis is that the distribution of male diagnosis ages is
		the same as the distribution of female diagnosis ages. We decide
		that a confidence level of 95% is required to reject the null hypothesis
		in favor of the alternative that the distributions are different.
		Since the number of samples is very small and there are no ties in the
		data, we can compare the observed test statistic against the *exact*
		distribution of the test statistic under the null hypothesis.
		
		>>> from scipy.stats import mannwhitneyu
		>>> U1, p = mannwhitneyu(males, females, method="exact")
		>>> print(U1)
		17.0
		
		`mannwhitneyu` always reports the statistic associated with the first
		sample, which, in this case, is males. This agrees with :math:`U_M = 17`
		reported in [4]_. The statistic associated with the second statistic
		can be calculated:
		
		>>> nx, ny = len(males), len(females)
		>>> U2 = nx*ny - U1
		>>> print(U2)
		3.0
		
		This agrees with :math:`U_F = 3` reported in [4]_. The two-sided
		*p*-value can be calculated from either statistic, and the value produced
		by `mannwhitneyu` agrees with :math:`p = 0.11` reported in [4]_.
		
		>>> print(p)
		0.1111111111111111
		
		The exact distribution of the test statistic is asymptotically normal, so
		the example continues by comparing the exact *p*-value against the
		*p*-value produced using the normal approximation.
		
		>>> _, pnorm = mannwhitneyu(males, females, method="asymptotic")
		>>> print(pnorm)
		0.11134688653314041
		
		Here `mannwhitneyu`'s reported *p*-value appears to conflict with the
		value :math:`p = 0.09` given in [4]_. The reason is that [4]_
		does not apply the continuity correction performed by `mannwhitneyu`;
		`mannwhitneyu` reduces the distance between the test statistic and the
		mean :math:`\mu = n_x n_y / 2` by 0.5 to correct for the fact that the
		discrete statistic is being compared against a continuous distribution.
		Here, the :math:`U` statistic used is less than the mean, so we reduce
		the distance by adding 0.5 in the numerator.
		
		>>> import numpy as np
		>>> from scipy.stats import norm
		>>> U = min(U1, U2)
		>>> N = nx + ny
		>>> z = (U - nx*ny/2 + 0.5) / np.sqrt(nx*ny * (N + 1)/ 12)
		>>> p = 2 * norm.cdf(z)  # use CDF to get p-value from smaller statistic
		>>> print(p)
		0.11134688653314041
		
		If desired, we can disable the continuity correction to get a result
		that agrees with that reported in [4]_.
		
		>>> _, pnorm = mannwhitneyu(males, females, use_continuity=False,
		...                         method="asymptotic")
		>>> print(pnorm)
		0.0864107329737
		
		Regardless of whether we perform an exact or asymptotic test, the
		probability of the test statistic being as extreme or more extreme by
		chance exceeds 5%, so we do not consider the results statistically
		significant.
		
		Suppose that, before seeing the data, we had hypothesized that females
		would tend to be diagnosed at a younger age than males.
		In that case, it would be natural to provide the female ages as the
		first input, and we would have performed a one-sided test using
		``alternative = 'less'``: females are diagnosed at an age that is
		stochastically less than that of males.
		
		>>> res = mannwhitneyu(females, males, alternative="less", method="exact")
		>>> print(res)
		MannwhitneyuResult(statistic=3.0, pvalue=0.05555555555555555)
		
		Again, the probability of getting a sufficiently low value of the
		test statistic by chance under the null hypothesis is greater than 5%,
		so we do not reject the null hypothesis in favor of our alternative.
		
		If it is reasonable to assume that the means of samples from the
		populations are normally distributed, we could have used a t-test to
		perform the analysis.
		
		>>> from scipy.stats import ttest_ind
		>>> res = ttest_ind(females, males, alternative="less")
		>>> print(res)
		Ttest_indResult(statistic=-2.239334696520584, pvalue=0.030068441095757924)
		
		Under this assumption, the *p*-value would be low enough to reject the
		null hypothesis in favor of the alternative.
	**/
	static public function mannwhitneyu(x:Dynamic, y:Dynamic, ?use_continuity:Dynamic, ?alternative:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		A matrix normal random variable.
		
		The `mean` keyword specifies the mean. The `rowcov` keyword specifies the
		among-row covariance matrix. The 'colcov' keyword specifies the
		among-column covariance matrix.
		
		Methods
		-------
		``pdf(X, mean=None, rowcov=1, colcov=1)``
		    Probability density function.
		``logpdf(X, mean=None, rowcov=1, colcov=1)``
		    Log of the probability density function.
		``rvs(mean=None, rowcov=1, colcov=1, size=1, random_state=None)``
		    Draw random samples.
		
		Parameters
		----------
		X : array_like
		    Quantiles, with the last two axes of `X` denoting the components.
		mean : array_like, optional
		    Mean of the distribution (default: `None`)
		rowcov : array_like, optional
		    Among-row covariance matrix of the distribution (default: `1`)
		colcov : array_like, optional
		    Among-column covariance matrix of the distribution (default: `1`)
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Alternatively, the object may be called (as a function) to fix the mean
		and covariance parameters, returning a "frozen" matrix normal
		random variable:
		
		rv = matrix_normal(mean=None, rowcov=1, colcov=1)
		    - Frozen object with the same methods but holding the given
		      mean and covariance fixed.
		
		Notes
		-----
		If `mean` is set to `None` then a matrix of zeros is used for the mean.
		    The dimensions of this matrix are inferred from the shape of `rowcov` and
		    `colcov`, if these are provided, or set to `1` if ambiguous.
		
		    `rowcov` and `colcov` can be two-dimensional array_likes specifying the
		    covariance matrices directly. Alternatively, a one-dimensional array will
		    be be interpreted as the entries of a diagonal matrix, and a scalar or
		    zero-dimensional array will be interpreted as this value times the
		    identity matrix.
		    
		
		The covariance matrices specified by `rowcov` and `colcov` must be
		(symmetric) positive definite. If the samples in `X` are
		:math:`m \times n`, then `rowcov` must be :math:`m \times m` and
		`colcov` must be :math:`n \times n`. `mean` must be the same shape as `X`.
		
		The probability density function for `matrix_normal` is
		
		.. math::
		
		    f(X) = (2 \pi)^{-\frac{mn}{2}}|U|^{-\frac{n}{2}} |V|^{-\frac{m}{2}}
		           \exp\left( -\frac{1}{2} \mathrm{Tr}\left[ U^{-1} (X-M) V^{-1}
		           (X-M)^T \right] \right),
		
		where :math:`M` is the mean, :math:`U` the among-row covariance matrix,
		:math:`V` the among-column covariance matrix.
		
		The `allow_singular` behaviour of the `multivariate_normal`
		distribution is not currently supported. Covariance matrices must be
		full rank.
		
		The `matrix_normal` distribution is closely related to the
		`multivariate_normal` distribution. Specifically, :math:`\mathrm{Vec}(X)`
		(the vector formed by concatenating the columns  of :math:`X`) has a
		multivariate normal distribution with mean :math:`\mathrm{Vec}(M)`
		and covariance :math:`V \otimes U` (where :math:`\otimes` is the Kronecker
		product). Sampling and pdf evaluation are
		:math:`\mathcal{O}(m^3 + n^3 + m^2 n + m n^2)` for the matrix normal, but
		:math:`\mathcal{O}(m^3 n^3)` for the equivalent multivariate normal,
		making this equivalent form algorithmically inefficient.
		
		.. versionadded:: 0.17.0
		
		Examples
		--------
		
		>>> from scipy.stats import matrix_normal
		
		>>> M = np.arange(6).reshape(3,2); M
		array([[0, 1],
		       [2, 3],
		       [4, 5]])
		>>> U = np.diag([1,2,3]); U
		array([[1, 0, 0],
		       [0, 2, 0],
		       [0, 0, 3]])
		>>> V = 0.3*np.identity(2); V
		array([[ 0.3,  0. ],
		       [ 0. ,  0.3]])
		>>> X = M + 0.1; X
		array([[ 0.1,  1.1],
		       [ 2.1,  3.1],
		       [ 4.1,  5.1]])
		>>> matrix_normal.pdf(X, mean=M, rowcov=U, colcov=V)
		0.023410202050005054
		
		>>> # Equivalent multivariate normal
		>>> from scipy.stats import multivariate_normal
		>>> vectorised_X = X.T.flatten()
		>>> equiv_mean = M.T.flatten()
		>>> equiv_cov = np.kron(V,U)
		>>> multivariate_normal.pdf(vectorised_X, mean=equiv_mean, cov=equiv_cov)
		0.023410202050005054
	**/
	static public function matrix_normal(?mean:Dynamic, ?rowcov:Dynamic, ?colcov:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		A Maxwell continuous random variable.
		
		As an instance of the `rv_continuous` class, `maxwell` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		A special case of a `chi` distribution,  with ``df=3``, ``loc=0.0``,
		and given ``scale = a``, where ``a`` is the parameter used in the
		Mathworld description [1]_.
		
		The probability density function for `maxwell` is:
		
		.. math::
		
		    f(x) = \sqrt{2/\pi}x^2 \exp(-x^2/2)
		
		for :math:`x >= 0`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``maxwell.pdf(x, loc, scale)`` is identically
		equivalent to ``maxwell.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] http://mathworld.wolfram.com/MaxwellDistribution.html
		
		Examples
		--------
		>>> from scipy.stats import maxwell
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = maxwell.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(maxwell.ppf(0.01),
		...                 maxwell.ppf(0.99), 100)
		>>> ax.plot(x, maxwell.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='maxwell pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = maxwell()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = maxwell.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], maxwell.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = maxwell.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function maxwell(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the median absolute deviation of the data along the given axis.
		
		The median absolute deviation (MAD, [1]_) computes the median over the
		absolute deviations from the median. It is a measure of dispersion
		similar to the standard deviation but more robust to outliers [2]_.
		
		The MAD of an empty array is ``np.nan``.
		
		.. versionadded:: 1.5.0
		
		Parameters
		----------
		x : array_like
		    Input array or object that can be converted to an array.
		axis : int or None, optional
		    Axis along which the range is computed. Default is 0. If None, compute
		    the MAD over the entire array.
		center : callable, optional
		    A function that will return the central value. The default is to use
		    np.median. Any user defined function used will need to have the
		    function signature ``func(arr, axis)``.
		scale : scalar or str, optional
		    The numerical value of scale will be divided out of the final
		    result. The default is 1.0. The string "normal" is also accepted,
		    and results in `scale` being the inverse of the standard normal
		    quantile function at 0.75, which is approximately 0.67449.
		    Array-like scale is also allowed, as long as it broadcasts correctly
		    to the output such that ``out / scale`` is a valid operation. The
		    output dimensions depend on the input array, `x`, and the `axis`
		    argument.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		mad : scalar or ndarray
		    If ``axis=None``, a scalar is returned. If the input contains
		    integers or floats of smaller precision than ``np.float64``, then the
		    output data-type is ``np.float64``. Otherwise, the output data-type is
		    the same as that of the input.
		
		See Also
		--------
		numpy.std, numpy.var, numpy.median, scipy.stats.iqr, scipy.stats.tmean,
		scipy.stats.tstd, scipy.stats.tvar
		
		Notes
		-----
		The `center` argument only affects the calculation of the central value
		around which the MAD is calculated. That is, passing in ``center=np.mean``
		will calculate the MAD around the mean - it will not calculate the *mean*
		absolute deviation.
		
		The input array may contain `inf`, but if `center` returns `inf`, the
		corresponding MAD for that data will be `nan`.
		
		References
		----------
		.. [1] "Median absolute deviation",
		       https://en.wikipedia.org/wiki/Median_absolute_deviation
		.. [2] "Robust measures of scale",
		       https://en.wikipedia.org/wiki/Robust_measures_of_scale
		
		Examples
		--------
		When comparing the behavior of `median_abs_deviation` with ``np.std``,
		the latter is affected when we change a single value of an array to have an
		outlier value while the MAD hardly changes:
		
		>>> from scipy import stats
		>>> x = stats.norm.rvs(size=100, scale=1, random_state=123456)
		>>> x.std()
		0.9973906394005013
		>>> stats.median_abs_deviation(x)
		0.82832610097857
		>>> x[0] = 345.6
		>>> x.std()
		34.42304872314415
		>>> stats.median_abs_deviation(x)
		0.8323442311590675
		
		Axis handling example:
		
		>>> x = np.array([[10, 7, 4], [3, 2, 1]])
		>>> x
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> stats.median_abs_deviation(x)
		array([3.5, 2.5, 1.5])
		>>> stats.median_abs_deviation(x, axis=None)
		2.0
		
		Scale normal example:
		
		>>> x = stats.norm.rvs(size=1000000, scale=2, random_state=123456)
		>>> stats.median_abs_deviation(x)
		1.3487398527041636
		>>> stats.median_abs_deviation(x, scale='normal')
		1.9996446978061115
	**/
	static public function median_abs_deviation(x:Dynamic, ?axis:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		`median_absolute_deviation` is deprecated, use `median_abs_deviation` instead!
		
		To preserve the existing default behavior, use
		`scipy.stats.median_abs_deviation(..., scale=1/1.4826)`.
		The value 1.4826 is not numerically precise for scaling
		with a normal distribution. For a numerically precise value, use
		`scipy.stats.median_abs_deviation(..., scale='normal')`.
		
		
		Compute the median absolute deviation of the data along the given axis.
		
		The median absolute deviation (MAD, [1]_) computes the median over the
		absolute deviations from the median. It is a measure of dispersion
		similar to the standard deviation but more robust to outliers [2]_.
		
		The MAD of an empty array is ``np.nan``.
		
		.. versionadded:: 1.3.0
		
		Parameters
		----------
		x : array_like
		    Input array or object that can be converted to an array.
		axis : int or None, optional
		    Axis along which the range is computed. Default is 0. If None, compute
		    the MAD over the entire array.
		center : callable, optional
		    A function that will return the central value. The default is to use
		    np.median. Any user defined function used will need to have the function
		    signature ``func(arr, axis)``.
		scale : int, optional
		    The scaling factor applied to the MAD. The default scale (1.4826)
		    ensures consistency with the standard deviation for normally distributed
		    data.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		mad : scalar or ndarray
		    If ``axis=None``, a scalar is returned. If the input contains
		    integers or floats of smaller precision than ``np.float64``, then the
		    output data-type is ``np.float64``. Otherwise, the output data-type is
		    the same as that of the input.
		
		See Also
		--------
		numpy.std, numpy.var, numpy.median, scipy.stats.iqr, scipy.stats.tmean,
		scipy.stats.tstd, scipy.stats.tvar
		
		Notes
		-----
		The `center` argument only affects the calculation of the central value
		around which the MAD is calculated. That is, passing in ``center=np.mean``
		will calculate the MAD around the mean - it will not calculate the *mean*
		absolute deviation.
		
		References
		----------
		.. [1] "Median absolute deviation",
		       https://en.wikipedia.org/wiki/Median_absolute_deviation
		.. [2] "Robust measures of scale",
		       https://en.wikipedia.org/wiki/Robust_measures_of_scale
		
		Examples
		--------
		When comparing the behavior of `median_absolute_deviation` with ``np.std``,
		the latter is affected when we change a single value of an array to have an
		outlier value while the MAD hardly changes:
		
		>>> from scipy import stats
		>>> x = stats.norm.rvs(size=100, scale=1, random_state=123456)
		>>> x.std()
		0.9973906394005013
		>>> stats.median_absolute_deviation(x)
		1.2280762773108278
		>>> x[0] = 345.6
		>>> x.std()
		34.42304872314415
		>>> stats.median_absolute_deviation(x)
		1.2340335571164334
		
		Axis handling example:
		
		>>> x = np.array([[10, 7, 4], [3, 2, 1]])
		>>> x
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> stats.median_absolute_deviation(x)
		array([5.1891, 3.7065, 2.2239])
		>>> stats.median_absolute_deviation(x, axis=None)
		2.9652
	**/
	static public function median_absolute_deviation(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform a Mood's median test.
		
		Test that two or more samples come from populations with the same median.
		
		Let ``n = len(args)`` be the number of samples.  The "grand median" of
		all the data is computed, and a contingency table is formed by
		classifying the values in each sample as being above or below the grand
		median.  The contingency table, along with `correction` and `lambda_`,
		are passed to `scipy.stats.chi2_contingency` to compute the test statistic
		and p-value.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The set of samples.  There must be at least two samples.
		    Each sample must be a one-dimensional sequence containing at least
		    one value.  The samples are not required to have the same length.
		ties : str, optional
		    Determines how values equal to the grand median are classified in
		    the contingency table.  The string must be one of::
		
		        "below":
		            Values equal to the grand median are counted as "below".
		        "above":
		            Values equal to the grand median are counted as "above".
		        "ignore":
		            Values equal to the grand median are not counted.
		
		    The default is "below".
		correction : bool, optional
		    If True, *and* there are just two samples, apply Yates' correction
		    for continuity when computing the test statistic associated with
		    the contingency table.  Default is True.
		lambda_ : float or str, optional
		    By default, the statistic computed in this test is Pearson's
		    chi-squared statistic.  `lambda_` allows a statistic from the
		    Cressie-Read power divergence family to be used instead.  See
		    `power_divergence` for details.
		    Default is 1 (Pearson's chi-squared statistic).
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		stat : float
		    The test statistic.  The statistic that is returned is determined by
		    `lambda_`.  The default is Pearson's chi-squared statistic.
		p : float
		    The p-value of the test.
		m : float
		    The grand median.
		table : ndarray
		    The contingency table.  The shape of the table is (2, n), where
		    n is the number of samples.  The first row holds the counts of the
		    values above the grand median, and the second row holds the counts
		    of the values below the grand median.  The table allows further
		    analysis with, for example, `scipy.stats.chi2_contingency`, or with
		    `scipy.stats.fisher_exact` if there are two samples, without having
		    to recompute the table.  If ``nan_policy`` is "propagate" and there
		    are nans in the input, the return value for ``table`` is ``None``.
		
		See Also
		--------
		kruskal : Compute the Kruskal-Wallis H-test for independent samples.
		mannwhitneyu : Computes the Mann-Whitney rank test on samples x and y.
		
		Notes
		-----
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] Mood, A. M., Introduction to the Theory of Statistics. McGraw-Hill
		    (1950), pp. 394-399.
		.. [2] Zar, J. H., Biostatistical Analysis, 5th ed. Prentice Hall (2010).
		    See Sections 8.12 and 10.15.
		
		Examples
		--------
		A biologist runs an experiment in which there are three groups of plants.
		Group 1 has 16 plants, group 2 has 15 plants, and group 3 has 17 plants.
		Each plant produces a number of seeds.  The seed counts for each group
		are::
		
		    Group 1: 10 14 14 18 20 22 24 25 31 31 32 39 43 43 48 49
		    Group 2: 28 30 31 33 34 35 36 40 44 55 57 61 91 92 99
		    Group 3:  0  3  9 22 23 25 25 33 34 34 40 45 46 48 62 67 84
		
		The following code applies Mood's median test to these samples.
		
		>>> g1 = [10, 14, 14, 18, 20, 22, 24, 25, 31, 31, 32, 39, 43, 43, 48, 49]
		>>> g2 = [28, 30, 31, 33, 34, 35, 36, 40, 44, 55, 57, 61, 91, 92, 99]
		>>> g3 = [0, 3, 9, 22, 23, 25, 25, 33, 34, 34, 40, 45, 46, 48, 62, 67, 84]
		>>> from scipy.stats import median_test
		>>> stat, p, med, tbl = median_test(g1, g2, g3)
		
		The median is
		
		>>> med
		34.0
		
		and the contingency table is
		
		>>> tbl
		array([[ 5, 10,  7],
		       [11,  5, 10]])
		
		`p` is too large to conclude that the medians are not the same:
		
		>>> p
		0.12609082774093244
		
		The "G-test" can be performed by passing ``lambda_="log-likelihood"`` to
		`median_test`.
		
		>>> g, p, med, tbl = median_test(g1, g2, g3, lambda_="log-likelihood")
		>>> p
		0.12224779737117837
		
		The median occurs several times in the data, so we'll get a different
		result if, for example, ``ties="above"`` is used:
		
		>>> stat, p, med, tbl = median_test(g1, g2, g3, ties="above")
		>>> p
		0.063873276069553273
		
		>>> tbl
		array([[ 5, 11,  9],
		       [11,  4,  8]])
		
		This example demonstrates that if the data set is not large and there
		are values equal to the median, the p-value can be sensitive to the
		choice of `ties`.
	**/
	static public function median_test(?args:python.VarArgs<Dynamic>, ?ties:Dynamic, ?correction:Dynamic, ?lambda_:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		A Mielke Beta-Kappa / Dagum continuous random variable.
		
		As an instance of the `rv_continuous` class, `mielke` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(k, s, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, k, s, loc=0, scale=1)
		    Probability density function.
		logpdf(x, k, s, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, k, s, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, k, s, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, k, s, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, k, s, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, k, s, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, k, s, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, k, s, loc=0, scale=1)
		    Non-central moment of order n
		stats(k, s, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(k, s, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(k, s), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(k, s, loc=0, scale=1)
		    Median of the distribution.
		mean(k, s, loc=0, scale=1)
		    Mean of the distribution.
		var(k, s, loc=0, scale=1)
		    Variance of the distribution.
		std(k, s, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, k, s, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `mielke` is:
		
		.. math::
		
		    f(x, k, s) = \frac{k x^{k-1}}{(1+x^s)^{1+k/s}}
		
		for :math:`x > 0` and :math:`k, s > 0`. The distribution is sometimes
		called Dagum distribution ([2]_). It was already defined in [3]_, called
		a Burr Type III distribution (`burr` with parameters ``c=s`` and
		``d=k/s``).
		
		`mielke` takes ``k`` and ``s`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``mielke.pdf(x, k, s, loc, scale)`` is identically
		equivalent to ``mielke.pdf(y, k, s) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] Mielke, P.W., 1973 "Another Family of Distributions for Describing
		       and Analyzing Precipitation Data." J. Appl. Meteor., 12, 275-280
		.. [2] Dagum, C., 1977 "A new model for personal income distribution."
		       Economie Appliquee, 33, 327-367.
		.. [3] Burr, I. W. "Cumulative frequency functions", Annals of
		       Mathematical Statistics, 13(2), pp 215-232 (1942).
		
		Examples
		--------
		>>> from scipy.stats import mielke
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> k, s = 10.4, 4.6
		>>> mean, var, skew, kurt = mielke.stats(k, s, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(mielke.ppf(0.01, k, s),
		...                 mielke.ppf(0.99, k, s), 100)
		>>> ax.plot(x, mielke.pdf(x, k, s),
		...        'r-', lw=5, alpha=0.6, label='mielke pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = mielke(k, s)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = mielke.ppf([0.001, 0.5, 0.999], k, s)
		>>> np.allclose([0.001, 0.5, 0.999], mielke.cdf(vals, k, s))
		True
		
		Generate random numbers:
		
		>>> r = mielke.rvs(k, s, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function mielke(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an array of the modal (most common) value in the passed array.
		
		If there is more than one such value, only the smallest is returned.
		The bin-count for the modal bins is also returned.
		
		Parameters
		----------
		a : array_like
		    n-dimensional array of which to find mode(s).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		mode : ndarray
		    Array of modal values.
		count : ndarray
		    Array of counts for each mode.
		
		Examples
		--------
		>>> a = np.array([[6, 8, 3, 0],
		...               [3, 2, 1, 7],
		...               [8, 1, 8, 4],
		...               [5, 3, 0, 5],
		...               [4, 7, 5, 9]])
		>>> from scipy import stats
		>>> stats.mode(a)
		ModeResult(mode=array([[3, 1, 0, 0]]), count=array([[1, 1, 1, 1]]))
		
		To get mode of whole array, specify ``axis=None``:
		
		>>> stats.mode(a, axis=None)
		ModeResult(mode=array([3]), count=array([3]))
	**/
	static public function mode(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Calculate the nth moment about the mean for a sample.
		
		A moment is a specific quantitative measure of the shape of a set of
		points. It is often used to calculate coefficients of skewness and kurtosis
		due to its close relationship with them.
		
		Parameters
		----------
		a : array_like
		   Input array.
		moment : int or array_like of ints, optional
		   Order of central moment that is returned. Default is 1.
		axis : int or None, optional
		   Axis along which the central moment is computed. Default is 0.
		   If None, compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		n-th central moment : ndarray or float
		   The appropriate moment along the given axis or over all values if axis
		   is None. The denominator for the moment calculation is the number of
		   observations, no degrees of freedom correction is done.
		
		See Also
		--------
		kurtosis, skew, describe
		
		Notes
		-----
		The k-th central moment of a data sample is:
		
		.. math::
		
		    m_k = \frac{1}{n} \sum_{i = 1}^n (x_i - \bar{x})^k
		
		Where n is the number of samples and x-bar is the mean. This function uses
		exponentiation by squares [1]_ for efficiency.
		
		References
		----------
		.. [1] https://eli.thegreenplace.net/2009/03/21/efficient-integer-exponentiation-algorithms
		
		Examples
		--------
		>>> from scipy.stats import moment
		>>> moment([1, 2, 3, 4, 5], moment=1)
		0.0
		>>> moment([1, 2, 3, 4, 5], moment=2)
		2.0
	**/
	static public function moment(a:Dynamic, ?moment:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Perform Mood's test for equal scale parameters.
		
		Mood's two-sample test for scale parameters is a non-parametric
		test for the null hypothesis that two samples are drawn from the
		same distribution with the same scale parameter.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of sample data.
		axis : int, optional
		    The axis along which the samples are tested.  `x` and `y` can be of
		    different length along `axis`.
		    If `axis` is None, `x` and `y` are flattened and the test is done on
		    all values in the flattened arrays.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the scales of the distributions underlying `x` and `y`
		      are different.
		    * 'less': the scale of the distribution underlying `x` is less than
		      the scale of the distribution underlying `y`.
		    * 'greater': the scale of the distribution underlying `x` is greater
		      than the scale of the distribution underlying `y`.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		z : scalar or ndarray
		    The z-score for the hypothesis test.  For 1-D inputs a scalar is
		    returned.
		p-value : scalar ndarray
		    The p-value for the hypothesis test.
		
		See Also
		--------
		fligner : A non-parametric test for the equality of k variances
		ansari : A non-parametric test for the equality of 2 variances
		bartlett : A parametric test for equality of k variances in normal samples
		levene : A parametric test for equality of k variances
		
		Notes
		-----
		The data are assumed to be drawn from probability distributions ``f(x)``
		and ``f(x/s) / s`` respectively, for some probability density function f.
		The null hypothesis is that ``s == 1``.
		
		For multi-dimensional arrays, if the inputs are of shapes
		``(n0, n1, n2, n3)``  and ``(n0, m1, n2, n3)``, then if ``axis=1``, the
		resulting z and p values will have shape ``(n0, n2, n3)``.  Note that
		``n1`` and ``m1`` don't have to be equal, but the other dimensions do.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		>>> x2 = rng.standard_normal((2, 45, 6, 7))
		>>> x1 = rng.standard_normal((2, 30, 6, 7))
		>>> z, p = stats.mood(x1, x2, axis=1)
		>>> p.shape
		(2, 6, 7)
		
		Find the number of points where the difference in scale is not significant:
		
		>>> (p > 0.1).sum()
		78
		
		Perform the test with different scales:
		
		>>> x1 = rng.standard_normal((2, 30))
		>>> x2 = rng.standard_normal((2, 35)) * 10.0
		>>> stats.mood(x1, x2, axis=1)
		(array([-5.76174136, -6.12650783]), array([8.32505043e-09, 8.98287869e-10]))
	**/
	static public function mood(x:Dynamic, y:Dynamic, ?axis:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		A Moyal continuous random variable.
		
		As an instance of the `rv_continuous` class, `moyal` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `moyal` is:
		
		.. math::
		
		    f(x) = \exp(-(x + \exp(-x))/2) / \sqrt{2\pi}
		
		for a real number :math:`x`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``moyal.pdf(x, loc, scale)`` is identically
		equivalent to ``moyal.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		This distribution has utility in high-energy physics and radiation
		detection. It describes the energy loss of a charged relativistic
		particle due to ionization of the medium [1]_. It also provides an
		approximation for the Landau distribution. For an in depth description
		see [2]_. For additional description, see [3]_.
		
		References
		----------
		.. [1] J.E. Moyal, "XXX. Theory of ionization fluctuations",
		       The London, Edinburgh, and Dublin Philosophical Magazine
		       and Journal of Science, vol 46, 263-280, (1955).
		       :doi:`10.1080/14786440308521076` (gated)
		.. [2] G. Cordeiro et al., "The beta Moyal: a useful skew distribution",
		       International Journal of Research and Reviews in Applied Sciences,
		       vol 10, 171-192, (2012).
		       http://www.arpapress.com/Volumes/Vol10Issue2/IJRRAS_10_2_02.pdf
		.. [3] C. Walck, "Handbook on Statistical Distributions for
		       Experimentalists; International Report SUF-PFY/96-01", Chapter 26,
		       University of Stockholm: Stockholm, Sweden, (2007).
		       http://www.stat.rice.edu/~dobelman/textfiles/DistributionsHandbook.pdf
		
		.. versionadded:: 1.1.0
		
		Examples
		--------
		>>> from scipy.stats import moyal
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = moyal.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(moyal.ppf(0.01),
		...                 moyal.ppf(0.99), 100)
		>>> ax.plot(x, moyal.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='moyal pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = moyal()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = moyal.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], moyal.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = moyal.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function moyal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A multinomial random variable.
		
		Methods
		-------
		``pmf(x, n, p)``
		    Probability mass function.
		``logpmf(x, n, p)``
		    Log of the probability mass function.
		``rvs(n, p, size=1, random_state=None)``
		    Draw random samples from a multinomial distribution.
		``entropy(n, p)``
		    Compute the entropy of the multinomial distribution.
		``cov(n, p)``
		    Compute the covariance matrix of the multinomial distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		n : int
		    Number of trials
		p : array_like
		    Probability of a trial falling into each category; should sum to 1
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Notes
		-----
		`n` should be a positive integer. Each element of `p` should be in the
		interval :math:`[0,1]` and the elements should sum to 1. If they do not sum to
		1, the last element of the `p` array is not used and is replaced with the
		remaining probability left over from the earlier elements.
		
		Alternatively, the object may be called (as a function) to fix the `n` and
		`p` parameters, returning a "frozen" multinomial random variable:
		
		The probability mass function for `multinomial` is
		
		.. math::
		
		    f(x) = \frac{n!}{x_1! \cdots x_k!} p_1^{x_1} \cdots p_k^{x_k},
		
		supported on :math:`x=(x_1, \ldots, x_k)` where each :math:`x_i` is a
		nonnegative integer and their sum is :math:`n`.
		
		.. versionadded:: 0.19.0
		
		Examples
		--------
		
		>>> from scipy.stats import multinomial
		>>> rv = multinomial(8, [0.3, 0.2, 0.5])
		>>> rv.pmf([1, 3, 4])
		0.042000000000000072
		
		The multinomial distribution for :math:`k=2` is identical to the
		corresponding binomial distribution (tiny numerical differences
		notwithstanding):
		
		>>> from scipy.stats import binom
		>>> multinomial.pmf([3, 4], n=7, p=[0.4, 0.6])
		0.29030399999999973
		>>> binom.pmf(3, 7, 0.4)
		0.29030400000000012
		
		The functions ``pmf``, ``logpmf``, ``entropy``, and ``cov`` support
		broadcasting, under the convention that the vector parameters (``x`` and
		``p``) are interpreted as if each row along the last axis is a single
		object. For instance:
		
		>>> multinomial.pmf([[3, 4], [3, 5]], n=[7, 8], p=[.3, .7])
		array([0.2268945,  0.25412184])
		
		Here, ``x.shape == (2, 2)``, ``n.shape == (2,)``, and ``p.shape == (2,)``,
		but following the rules mentioned above they behave as if the rows
		``[3, 4]`` and ``[3, 5]`` in ``x`` and ``[.3, .7]`` in ``p`` were a single
		object, and as if we had ``x.shape = (2,)``, ``n.shape = (2,)``, and
		``p.shape = ()``. To obtain the individual elements without broadcasting,
		we would do this:
		
		>>> multinomial.pmf([3, 4], n=7, p=[.3, .7])
		0.2268945
		>>> multinomial.pmf([3, 5], 8, p=[.3, .7])
		0.25412184
		
		This broadcasting also works for ``cov``, where the output objects are
		square matrices of size ``p.shape[-1]``. For example:
		
		>>> multinomial.cov([4, 5], [[.3, .7], [.4, .6]])
		array([[[ 0.84, -0.84],
		        [-0.84,  0.84]],
		       [[ 1.2 , -1.2 ],
		        [-1.2 ,  1.2 ]]])
		
		In this example, ``n.shape == (2,)`` and ``p.shape == (2, 2)``, and
		following the rules above, these broadcast as if ``p.shape == (2,)``.
		Thus the result should also be of shape ``(2,)``, but since each output is
		a :math:`2 \times 2` matrix, the result in fact has shape ``(2, 2, 2)``,
		where ``result[0]`` is equal to ``multinomial.cov(n=4, p=[.3, .7])`` and
		``result[1]`` is equal to ``multinomial.cov(n=5, p=[.4, .6])``.
		
		See also
		--------
		scipy.stats.binom : The binomial distribution.
		numpy.random.Generator.multinomial : Sampling from the multinomial distribution.
		scipy.stats.multivariate_hypergeom :
		    The multivariate hypergeometric distribution.
	**/
	static public function multinomial(n:Dynamic, p:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Computes the Multiscale Graph Correlation (MGC) test statistic.
		
		Specifically, for each point, MGC finds the :math:`k`-nearest neighbors for
		one property (e.g. cloud density), and the :math:`l`-nearest neighbors for
		the other property (e.g. grass wetness) [1]_. This pair :math:`(k, l)` is
		called the "scale". A priori, however, it is not know which scales will be
		most informative. So, MGC computes all distance pairs, and then efficiently
		computes the distance correlations for all scales. The local correlations
		illustrate which scales are relatively informative about the relationship.
		The key, therefore, to successfully discover and decipher relationships
		between disparate data modalities is to adaptively determine which scales
		are the most informative, and the geometric implication for the most
		informative scales. Doing so not only provides an estimate of whether the
		modalities are related, but also provides insight into how the
		determination was made. This is especially important in high-dimensional
		data, where simple visualizations do not reveal relationships to the
		unaided human eye. Characterizations of this implementation in particular
		have been derived from and benchmarked within in [2]_.
		
		Parameters
		----------
		x, y : ndarray
		    If ``x`` and ``y`` have shapes ``(n, p)`` and ``(n, q)`` where `n` is
		    the number of samples and `p` and `q` are the number of dimensions,
		    then the MGC independence test will be run.  Alternatively, ``x`` and
		    ``y`` can have shapes ``(n, n)`` if they are distance or similarity
		    matrices, and ``compute_distance`` must be sent to ``None``. If ``x``
		    and ``y`` have shapes ``(n, p)`` and ``(m, p)``, an unpaired
		    two-sample MGC test will be run.
		compute_distance : callable, optional
		    A function that computes the distance or similarity among the samples
		    within each data matrix. Set to ``None`` if ``x`` and ``y`` are
		    already distance matrices. The default uses the euclidean norm metric.
		    If you are calling a custom function, either create the distance
		    matrix before-hand or create a function of the form
		    ``compute_distance(x)`` where `x` is the data matrix for which
		    pairwise distances are calculated.
		reps : int, optional
		    The number of replications used to estimate the null when using the
		    permutation test. The default is ``1000``.
		workers : int or map-like callable, optional
		    If ``workers`` is an int the population is subdivided into ``workers``
		    sections and evaluated in parallel (uses ``multiprocessing.Pool
		    <multiprocessing>``). Supply ``-1`` to use all cores available to the
		    Process. Alternatively supply a map-like callable, such as
		    ``multiprocessing.Pool.map`` for evaluating the p-value in parallel.
		    This evaluation is carried out as ``workers(func, iterable)``.
		    Requires that `func` be pickleable. The default is ``1``.
		is_twosamp : bool, optional
		    If `True`, a two sample test will be run. If ``x`` and ``y`` have
		    shapes ``(n, p)`` and ``(m, p)``, this optional will be overridden and
		    set to ``True``. Set to ``True`` if ``x`` and ``y`` both have shapes
		    ``(n, p)`` and a two sample test is desired. The default is ``False``.
		    Note that this will not run if inputs are distance matrices.
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Returns
		-------
		stat : float
		    The sample MGC test statistic within `[-1, 1]`.
		pvalue : float
		    The p-value obtained via permutation.
		mgc_dict : dict
		    Contains additional useful additional returns containing the following
		    keys:
		
		        - mgc_map : ndarray
		            A 2D representation of the latent geometry of the relationship.
		            of the relationship.
		        - opt_scale : (int, int)
		            The estimated optimal scale as a `(x, y)` pair.
		        - null_dist : list
		            The null distribution derived from the permuted matrices
		
		See Also
		--------
		pearsonr : Pearson correlation coefficient and p-value for testing
		           non-correlation.
		kendalltau : Calculates Kendall's tau.
		spearmanr : Calculates a Spearman rank-order correlation coefficient.
		
		Notes
		-----
		A description of the process of MGC and applications on neuroscience data
		can be found in [1]_. It is performed using the following steps:
		
		#. Two distance matrices :math:`D^X` and :math:`D^Y` are computed and
		   modified to be mean zero columnwise. This results in two
		   :math:`n \times n` distance matrices :math:`A` and :math:`B` (the
		   centering and unbiased modification) [3]_.
		
		#. For all values :math:`k` and :math:`l` from :math:`1, ..., n`,
		
		   * The :math:`k`-nearest neighbor and :math:`l`-nearest neighbor graphs
		     are calculated for each property. Here, :math:`G_k (i, j)` indicates
		     the :math:`k`-smallest values of the :math:`i`-th row of :math:`A`
		     and :math:`H_l (i, j)` indicates the :math:`l` smallested values of
		     the :math:`i`-th row of :math:`B`
		
		   * Let :math:`\circ` denotes the entry-wise matrix product, then local
		     correlations are summed and normalized using the following statistic:
		
		.. math::
		
		    c^{kl} = \frac{\sum_{ij} A G_k B H_l}
		                  {\sqrt{\sum_{ij} A^2 G_k \times \sum_{ij} B^2 H_l}}
		
		#. The MGC test statistic is the smoothed optimal local correlation of
		   :math:`\{ c^{kl} \}`. Denote the smoothing operation as :math:`R(\cdot)`
		   (which essentially set all isolated large correlations) as 0 and
		   connected large correlations the same as before, see [3]_.) MGC is,
		
		.. math::
		
		    MGC_n (x, y) = \max_{(k, l)} R \left(c^{kl} \left( x_n, y_n \right)
		                                                \right)
		
		The test statistic returns a value between :math:`(-1, 1)` since it is
		normalized.
		
		The p-value returned is calculated using a permutation test. This process
		is completed by first randomly permuting :math:`y` to estimate the null
		distribution and then calculating the probability of observing a test
		statistic, under the null, at least as extreme as the observed test
		statistic.
		
		MGC requires at least 5 samples to run with reliable results. It can also
		handle high-dimensional data sets.
		In addition, by manipulating the input data matrices, the two-sample
		testing problem can be reduced to the independence testing problem [4]_.
		Given sample data :math:`U` and :math:`V` of sizes :math:`p \times n`
		:math:`p \times m`, data matrix :math:`X` and :math:`Y` can be created as
		follows:
		
		.. math::
		
		    X = [U | V] \in \mathcal{R}^{p \times (n + m)}
		    Y = [0_{1 \times n} | 1_{1 \times m}] \in \mathcal{R}^{(n + m)}
		
		Then, the MGC statistic can be calculated as normal. This methodology can
		be extended to similar tests such as distance correlation [4]_.
		
		.. versionadded:: 1.4.0
		
		References
		----------
		.. [1] Vogelstein, J. T., Bridgeford, E. W., Wang, Q., Priebe, C. E.,
		       Maggioni, M., & Shen, C. (2019). Discovering and deciphering
		       relationships across disparate data modalities. ELife.
		.. [2] Panda, S., Palaniappan, S., Xiong, J., Swaminathan, A.,
		       Ramachandran, S., Bridgeford, E. W., ... Vogelstein, J. T. (2019).
		       mgcpy: A Comprehensive High Dimensional Independence Testing Python
		       Package. :arXiv:`1907.02088`
		.. [3] Shen, C., Priebe, C.E., & Vogelstein, J. T. (2019). From distance
		       correlation to multiscale graph correlation. Journal of the American
		       Statistical Association.
		.. [4] Shen, C. & Vogelstein, J. T. (2018). The Exact Equivalence of
		       Distance and Kernel Methods for Hypothesis Testing.
		       :arXiv:`1806.05514`
		
		Examples
		--------
		>>> from scipy.stats import multiscale_graphcorr
		>>> x = np.arange(100)
		>>> y = x
		>>> stat, pvalue, _ = multiscale_graphcorr(x, y, workers=-1)
		>>> '%.1f, %.3f' % (stat, pvalue)
		'1.0, 0.001'
		
		Alternatively,
		
		>>> x = np.arange(100)
		>>> y = x
		>>> mgc = multiscale_graphcorr(x, y)
		>>> '%.1f, %.3f' % (mgc.stat, mgc.pvalue)
		'1.0, 0.001'
		
		To run an unpaired two-sample test,
		
		>>> x = np.arange(100)
		>>> y = np.arange(79)
		>>> mgc = multiscale_graphcorr(x, y)
		>>> '%.3f, %.2f' % (mgc.stat, mgc.pvalue)  # doctest: +SKIP
		'0.033, 0.02'
		
		or, if shape of the inputs are the same,
		
		>>> x = np.arange(100)
		>>> y = x
		>>> mgc = multiscale_graphcorr(x, y, is_twosamp=True)
		>>> '%.3f, %.1f' % (mgc.stat, mgc.pvalue)  # doctest: +SKIP
		'-0.008, 1.0'
	**/
	static public function multiscale_graphcorr(x:Dynamic, y:Dynamic, ?compute_distance:Dynamic, ?reps:Dynamic, ?workers:Dynamic, ?is_twosamp:Dynamic, ?random_state:Dynamic):Float;
	/**
		A multivariate hypergeometric random variable.
		
		Methods
		-------
		``pmf(x, m, n)``
		    Probability mass function.
		``logpmf(x, m, n)``
		    Log of the probability mass function.
		``rvs(m, n, size=1, random_state=None)``
		    Draw random samples from a multivariate hypergeometric
		    distribution.
		``mean(m, n)``
		    Mean of the multivariate hypergeometric distribution.
		``var(m, n)``
		    Variance of the multivariate hypergeometric distribution.
		``cov(m, n)``
		    Compute the covariance matrix of the multivariate
		    hypergeometric distribution.
		
		Parameters
		----------
		m : array_like
		    The number of each type of object in the population.
		    That is, :math:`m[i]` is the number of objects of
		    type :math:`i`.
		n : array_like
		    The number of samples taken from the population.
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Notes
		-----
		`m` must be an array of positive integers. If the quantile
		:math:`i` contains values out of the range :math:`[0, m_i]`
		where :math:`m_i` is the number of objects of type :math:`i`
		in the population or if the parameters are inconsistent with one
		another (e.g. ``x.sum() != n``), methods return the appropriate
		value (e.g. ``0`` for ``pmf``). If `m` or `n` contain negative
		values, the result will contain ``nan`` there.
		
		The probability mass function for `multivariate_hypergeom` is
		
		.. math::
		
		    P(X_1 = x_1, X_2 = x_2, \ldots, X_k = x_k) = \frac{\binom{m_1}{x_1}
		    \binom{m_2}{x_2} \cdots \binom{m_k}{x_k}}{\binom{M}{n}}, \\ \quad
		    (x_1, x_2, \ldots, x_k) \in \mathbb{N}^k \text{ with }
		    \sum_{i=1}^k x_i = n
		
		where :math:`m_i` are the number of objects of type :math:`i`, :math:`M`
		is the total number of objects in the population (sum of all the
		:math:`m_i`), and :math:`n` is the size of the sample to be taken
		from the population.
		
		.. versionadded:: 1.6.0
		
		Examples
		--------
		To evaluate the probability mass function of the multivariate
		hypergeometric distribution, with a dichotomous population of size
		:math:`10` and :math:`20`, at a sample of size :math:`12` with
		:math:`8` objects of the first type and :math:`4` objects of the
		second type, use:
		
		>>> from scipy.stats import multivariate_hypergeom
		>>> multivariate_hypergeom.pmf(x=[8, 4], m=[10, 20], n=12)
		0.0025207176631464523
		
		The `multivariate_hypergeom` distribution is identical to the
		corresponding `hypergeom` distribution (tiny numerical differences
		notwithstanding) when only two types (good and bad) of objects
		are present in the population as in the example above. Consider
		another example for a comparison with the hypergeometric distribution:
		
		>>> from scipy.stats import hypergeom
		>>> multivariate_hypergeom.pmf(x=[3, 1], m=[10, 5], n=4)
		0.4395604395604395
		>>> hypergeom.pmf(k=3, M=15, n=4, N=10)
		0.43956043956044005
		
		The functions ``pmf``, ``logpmf``, ``mean``, ``var``, ``cov``, and ``rvs``
		support broadcasting, under the convention that the vector parameters
		(``x``, ``m``, and ``n``) are interpreted as if each row along the last
		axis is a single object. For instance, we can combine the previous two
		calls to `multivariate_hypergeom` as
		
		>>> multivariate_hypergeom.pmf(x=[[8, 4], [3, 1]], m=[[10, 20], [10, 5]],
		...                            n=[12, 4])
		array([0.00252072, 0.43956044])
		
		This broadcasting also works for ``cov``, where the output objects are
		square matrices of size ``m.shape[-1]``. For example:
		
		>>> multivariate_hypergeom.cov(m=[[7, 9], [10, 15]], n=[8, 12])
		array([[[ 1.05, -1.05],
		        [-1.05,  1.05]],
		       [[ 1.56, -1.56],
		        [-1.56,  1.56]]])
		
		That is, ``result[0]`` is equal to
		``multivariate_hypergeom.cov(m=[7, 9], n=8)`` and ``result[1]`` is equal
		to ``multivariate_hypergeom.cov(m=[10, 15], n=12)``.
		
		Alternatively, the object may be called (as a function) to fix the `m`
		and `n` parameters, returning a "frozen" multivariate hypergeometric
		random variable.
		
		>>> rv = multivariate_hypergeom(m=[10, 20], n=12)
		>>> rv.pmf(x=[8, 4])
		0.0025207176631464523
		
		See Also
		--------
		scipy.stats.hypergeom : The hypergeometric distribution.
		scipy.stats.multinomial : The multinomial distribution.
		
		References
		----------
		.. [1] The Multivariate Hypergeometric Distribution,
		       http://www.randomservices.org/random/urn/MultiHypergeometric.html
		.. [2] Thomas J. Sargent and John Stachurski, 2020,
		       Multivariate Hypergeometric Distribution
		       https://python.quantecon.org/_downloads/pdf/multi_hyper.pdf
	**/
	static public function multivariate_hypergeom(m:Dynamic, n:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		A multivariate normal random variable.
		
		The `mean` keyword specifies the mean. The `cov` keyword specifies the
		covariance matrix.
		
		Methods
		-------
		``pdf(x, mean=None, cov=1, allow_singular=False)``
		    Probability density function.
		``logpdf(x, mean=None, cov=1, allow_singular=False)``
		    Log of the probability density function.
		``cdf(x, mean=None, cov=1, allow_singular=False, maxpts=1000000*dim, abseps=1e-5, releps=1e-5)``
		    Cumulative distribution function.
		``logcdf(x, mean=None, cov=1, allow_singular=False, maxpts=1000000*dim, abseps=1e-5, releps=1e-5)``
		    Log of the cumulative distribution function.
		``rvs(mean=None, cov=1, size=1, random_state=None)``
		    Draw random samples from a multivariate normal distribution.
		``entropy()``
		    Compute the differential entropy of the multivariate normal.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		mean : array_like, optional
		    Mean of the distribution (default zero)
		cov : array_like, optional
		    Covariance matrix of the distribution (default one)
		allow_singular : bool, optional
		    Whether to allow a singular covariance matrix.  (Default: False)
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Alternatively, the object may be called (as a function) to fix the mean
		and covariance parameters, returning a "frozen" multivariate normal
		random variable:
		
		rv = multivariate_normal(mean=None, cov=1, allow_singular=False)
		    - Frozen object with the same methods but holding the given
		      mean and covariance fixed.
		
		Notes
		-----
		Setting the parameter `mean` to `None` is equivalent to having `mean`
		    be the zero-vector. The parameter `cov` can be a scalar, in which case
		    the covariance matrix is the identity times that value, a vector of
		    diagonal entries for the covariance matrix, or a two-dimensional
		    array_like.
		    
		
		The covariance matrix `cov` must be a (symmetric) positive
		semi-definite matrix. The determinant and inverse of `cov` are computed
		as the pseudo-determinant and pseudo-inverse, respectively, so
		that `cov` does not need to have full rank.
		
		The probability density function for `multivariate_normal` is
		
		.. math::
		
		    f(x) = \frac{1}{\sqrt{(2 \pi)^k \det \Sigma}}
		           \exp\left( -\frac{1}{2} (x - \mu)^T \Sigma^{-1} (x - \mu) \right),
		
		where :math:`\mu` is the mean, :math:`\Sigma` the covariance matrix,
		and :math:`k` is the dimension of the space where :math:`x` takes values.
		
		.. versionadded:: 0.14.0
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.stats import multivariate_normal
		
		>>> x = np.linspace(0, 5, 10, endpoint=False)
		>>> y = multivariate_normal.pdf(x, mean=2.5, cov=0.5); y
		array([ 0.00108914,  0.01033349,  0.05946514,  0.20755375,  0.43939129,
		        0.56418958,  0.43939129,  0.20755375,  0.05946514,  0.01033349])
		>>> fig1 = plt.figure()
		>>> ax = fig1.add_subplot(111)
		>>> ax.plot(x, y)
		
		The input quantiles can be any shape of array, as long as the last
		axis labels the components.  This allows us for instance to
		display the frozen pdf for a non-isotropic random variable in 2D as
		follows:
		
		>>> x, y = np.mgrid[-1:1:.01, -1:1:.01]
		>>> pos = np.dstack((x, y))
		>>> rv = multivariate_normal([0.5, -0.2], [[2.0, 0.3], [0.3, 0.5]])
		>>> fig2 = plt.figure()
		>>> ax2 = fig2.add_subplot(111)
		>>> ax2.contourf(x, y, rv.pdf(pos))
	**/
	static public function multivariate_normal(?mean:Dynamic, ?cov:Dynamic, ?allow_singular:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		A multivariate t-distributed random variable.
		
		The `loc` parameter specifies the location. The `shape` parameter specifies
		the positive semidefinite shape matrix. The `df` parameter specifies the
		degrees of freedom.
		
		In addition to calling the methods below, the object itself may be called
		as a function to fix the location, shape matrix, and degrees of freedom
		parameters, returning a "frozen" multivariate t-distribution random.
		
		Methods
		-------
		``pdf(x, loc=None, shape=1, df=1, allow_singular=False)``
		    Probability density function.
		``logpdf(x, loc=None, shape=1, df=1, allow_singular=False)``
		    Log of the probability density function.
		``rvs(loc=None, shape=1, df=1, size=1, random_state=None)``
		    Draw random samples from a multivariate t-distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		
		loc : array_like, optional
		    Location of the distribution. (default ``0``)
		shape : array_like, optional
		    Positive semidefinite matrix of the distribution. (default ``1``)
		df : float, optional
		    Degrees of freedom of the distribution; must be greater than zero.
		    If ``np.inf`` then results are multivariate normal. The default is ``1``.
		allow_singular : bool, optional
		    Whether to allow a singular matrix. (default ``False``)
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Notes
		-----
		Setting the parameter `loc` to ``None`` is equivalent to having `loc`
		be the zero-vector. The parameter `shape` can be a scalar, in which case
		the shape matrix is the identity times that value, a vector of
		diagonal entries for the shape matrix, or a two-dimensional array_like.
		The matrix `shape` must be a (symmetric) positive semidefinite matrix. The
		determinant and inverse of `shape` are computed as the pseudo-determinant
		and pseudo-inverse, respectively, so that `shape` does not need to have
		full rank.
		
		The probability density function for `multivariate_t` is
		
		.. math::
		
		    f(x) = \frac{\Gamma(\nu + p)/2}{\Gamma(\nu/2)\nu^{p/2}\pi^{p/2}|\Sigma|^{1/2}}
		           \left[1 + \frac{1}{\nu} (\mathbf{x} - \boldsymbol{\mu})^{\top}
		           \boldsymbol{\Sigma}^{-1}
		           (\mathbf{x} - \boldsymbol{\mu}) \right]^{-(\nu + p)/2},
		
		where :math:`p` is the dimension of :math:`\mathbf{x}`,
		:math:`\boldsymbol{\mu}` is the :math:`p`-dimensional location,
		:math:`\boldsymbol{\Sigma}` the :math:`p \times p`-dimensional shape
		matrix, and :math:`\nu` is the degrees of freedom.
		
		.. versionadded:: 1.6.0
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.stats import multivariate_t
		>>> x, y = np.mgrid[-1:3:.01, -2:1.5:.01]
		>>> pos = np.dstack((x, y))
		>>> rv = multivariate_t([1.0, -0.5], [[2.1, 0.3], [0.3, 1.5]], df=2)
		>>> fig, ax = plt.subplots(1, 1)
		>>> ax.set_aspect('equal')
		>>> plt.contourf(x, y, rv.pdf(pos))
	**/
	static public function multivariate_t(?loc:Dynamic, ?shape:Dynamic, ?df:Dynamic, ?allow_singular:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		'Frozen' distributions for mean, variance, and standard deviation of data.
		
		Parameters
		----------
		data : array_like
		    Input array. Converted to 1-D using ravel.
		    Requires 2 or more data-points.
		
		Returns
		-------
		mdist : "frozen" distribution object
		    Distribution object representing the mean of the data.
		vdist : "frozen" distribution object
		    Distribution object representing the variance of the data.
		sdist : "frozen" distribution object
		    Distribution object representing the standard deviation of the data.
		
		See Also
		--------
		bayes_mvs
		
		Notes
		-----
		The return values from ``bayes_mvs(data)`` is equivalent to
		``tuple((x.mean(), x.interval(0.90)) for x in mvsdist(data))``.
		
		In other words, calling ``<dist>.mean()`` and ``<dist>.interval(0.90)``
		on the three distribution objects returned from this function will give
		the same results that are returned from `bayes_mvs`.
		
		References
		----------
		T.E. Oliphant, "A Bayesian perspective on estimating mean, variance, and
		standard-deviation from data", https://scholarsarchive.byu.edu/facpub/278,
		2006.
		
		Examples
		--------
		>>> from scipy import stats
		>>> data = [6, 9, 12, 7, 8, 8, 13]
		>>> mean, var, std = stats.mvsdist(data)
		
		We now have frozen distribution objects "mean", "var" and "std" that we can
		examine:
		
		>>> mean.mean()
		9.0
		>>> mean.interval(0.95)
		(6.6120585482655692, 11.387941451734431)
		>>> mean.std()
		1.1952286093343936
	**/
	static public function mvsdist(data:Dynamic):Dynamic;
	/**
		A Nakagami continuous random variable.
		
		As an instance of the `rv_continuous` class, `nakagami` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(nu, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, nu, loc=0, scale=1)
		    Probability density function.
		logpdf(x, nu, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, nu, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, nu, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, nu, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, nu, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, nu, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, nu, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, nu, loc=0, scale=1)
		    Non-central moment of order n
		stats(nu, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(nu, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(nu,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(nu, loc=0, scale=1)
		    Median of the distribution.
		mean(nu, loc=0, scale=1)
		    Mean of the distribution.
		var(nu, loc=0, scale=1)
		    Variance of the distribution.
		std(nu, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, nu, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `nakagami` is:
		
		.. math::
		
		    f(x, \nu) = \frac{2 \nu^\nu}{\Gamma(\nu)} x^{2\nu-1} \exp(-\nu x^2)
		
		for :math:`x >= 0`, :math:`\nu > 0`.
		
		`nakagami` takes ``nu`` as a shape parameter for :math:`\nu`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``nakagami.pdf(x, nu, loc, scale)`` is identically
		equivalent to ``nakagami.pdf(y, nu) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import nakagami
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> nu = 4.97
		>>> mean, var, skew, kurt = nakagami.stats(nu, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(nakagami.ppf(0.01, nu),
		...                 nakagami.ppf(0.99, nu), 100)
		>>> ax.plot(x, nakagami.pdf(x, nu),
		...        'r-', lw=5, alpha=0.6, label='nakagami pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = nakagami(nu)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = nakagami.ppf([0.001, 0.5, 0.999], nu)
		>>> np.allclose([0.001, 0.5, 0.999], nakagami.cdf(vals, nu))
		True
		
		Generate random numbers:
		
		>>> r = nakagami.rvs(nu, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function nakagami(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A negative binomial discrete random variable.
		
		As an instance of the `rv_discrete` class, `nbinom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(n, p, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, n, p, loc=0)
		    Probability mass function.
		logpmf(k, n, p, loc=0)
		    Log of the probability mass function.
		cdf(k, n, p, loc=0)
		    Cumulative distribution function.
		logcdf(k, n, p, loc=0)
		    Log of the cumulative distribution function.
		sf(k, n, p, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, n, p, loc=0)
		    Log of the survival function.
		ppf(q, n, p, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, n, p, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(n, p, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(n, p, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(n, p), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(n, p, loc=0)
		    Median of the distribution.
		mean(n, p, loc=0)
		    Mean of the distribution.
		var(n, p, loc=0)
		    Variance of the distribution.
		std(n, p, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, n, p, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		Negative binomial distribution describes a sequence of i.i.d. Bernoulli
		trials, repeated until a predefined, non-random number of successes occurs.
		
		The probability mass function of the number of failures for `nbinom` is:
		
		.. math::
		
		   f(k) = \binom{k+n-1}{n-1} p^n (1-p)^k
		
		for :math:`k \ge 0`, :math:`0 < p \leq 1`
		
		`nbinom` takes :math:`n` and :math:`p` as shape parameters where n is the
		number of successes, :math:`p` is the probability of a single success,
		and :math:`1-p` is the probability of a single failure.
		
		Another common parameterization of the negative binomial distribution is
		in terms of the mean number of failures :math:`\mu` to achieve :math:`n`
		successes. The mean :math:`\mu` is related to the probability of success
		as
		
		.. math::
		
		   p = \frac{n}{n + \mu}
		
		The number of successes :math:`n` may also be specified in terms of a
		"dispersion", "heterogeneity", or "aggregation" parameter :math:`\alpha`,
		which relates the mean :math:`\mu` to the variance :math:`\sigma^2`,
		e.g. :math:`\sigma^2 = \mu + \alpha \mu^2`. Regardless of the convention
		used for :math:`\alpha`,
		
		.. math::
		
		   p &= \frac{\mu}{\sigma^2} \\
		   n &= \frac{\mu^2}{\sigma^2 - \mu}
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``nbinom.pmf(k, n, p, loc)`` is identically
		equivalent to ``nbinom.pmf(k - loc, n, p)``.
		
		Examples
		--------
		>>> from scipy.stats import nbinom
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> n, p = 5, 0.5
		>>> mean, var, skew, kurt = nbinom.stats(n, p, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(nbinom.ppf(0.01, n, p),
		...               nbinom.ppf(0.99, n, p))
		>>> ax.plot(x, nbinom.pmf(x, n, p), 'bo', ms=8, label='nbinom pmf')
		>>> ax.vlines(x, 0, nbinom.pmf(x, n, p), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = nbinom(n, p)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = nbinom.cdf(x, n, p)
		>>> np.allclose(x, nbinom.ppf(prob, n, p))
		True
		
		Generate random numbers:
		
		>>> r = nbinom.rvs(n, p, size=1000)
		
		See Also
		--------
		hypergeom, binom, nhypergeom
	**/
	static public function nbinom(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A non-central F distribution continuous random variable.
		
		As an instance of the `rv_continuous` class, `ncf` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(dfn, dfd, nc, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, dfn, dfd, nc, loc=0, scale=1)
		    Probability density function.
		logpdf(x, dfn, dfd, nc, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, dfn, dfd, nc, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, dfn, dfd, nc, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, dfn, dfd, nc, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, dfn, dfd, nc, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, dfn, dfd, nc, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, dfn, dfd, nc, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, dfn, dfd, nc, loc=0, scale=1)
		    Non-central moment of order n
		stats(dfn, dfd, nc, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(dfn, dfd, nc, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(dfn, dfd, nc), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(dfn, dfd, nc, loc=0, scale=1)
		    Median of the distribution.
		mean(dfn, dfd, nc, loc=0, scale=1)
		    Mean of the distribution.
		var(dfn, dfd, nc, loc=0, scale=1)
		    Variance of the distribution.
		std(dfn, dfd, nc, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, dfn, dfd, nc, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		scipy.stats.f : Fisher distribution
		
		Notes
		-----
		The probability density function for `ncf` is:
		
		.. math::
		
		    f(x, n_1, n_2, \lambda) =
		        \exp\left(\frac{\lambda}{2} +
		                  \lambda n_1 \frac{x}{2(n_1 x + n_2)}
		            \right)
		        n_1^{n_1/2} n_2^{n_2/2} x^{n_1/2 - 1} \\
		        (n_2 + n_1 x)^{-(n_1 + n_2)/2}
		        \gamma(n_1/2) \gamma(1 + n_2/2) \\
		        \frac{L^{\frac{n_1}{2}-1}_{n_2/2}
		            \left(-\lambda n_1 \frac{x}{2(n_1 x + n_2)}\right)}
		        {B(n_1/2, n_2/2)
		            \gamma\left(\frac{n_1 + n_2}{2}\right)}
		
		for :math:`n_1, n_2 > 0`, :math:`\lambda \ge 0`.  Here :math:`n_1` is the
		degrees of freedom in the numerator, :math:`n_2` the degrees of freedom in
		the denominator, :math:`\lambda` the non-centrality parameter,
		:math:`\gamma` is the logarithm of the Gamma function, :math:`L_n^k` is a
		generalized Laguerre polynomial and :math:`B` is the beta function.
		
		`ncf` takes ``df1``, ``df2`` and ``nc`` as shape parameters. If ``nc=0``,
		the distribution becomes equivalent to the Fisher distribution.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``ncf.pdf(x, dfn, dfd, nc, loc, scale)`` is identically
		equivalent to ``ncf.pdf(y, dfn, dfd, nc) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import ncf
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> dfn, dfd, nc = 27, 27, 0.416
		>>> mean, var, skew, kurt = ncf.stats(dfn, dfd, nc, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(ncf.ppf(0.01, dfn, dfd, nc),
		...                 ncf.ppf(0.99, dfn, dfd, nc), 100)
		>>> ax.plot(x, ncf.pdf(x, dfn, dfd, nc),
		...        'r-', lw=5, alpha=0.6, label='ncf pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = ncf(dfn, dfd, nc)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = ncf.ppf([0.001, 0.5, 0.999], dfn, dfd, nc)
		>>> np.allclose([0.001, 0.5, 0.999], ncf.cdf(vals, dfn, dfd, nc))
		True
		
		Generate random numbers:
		
		>>> r = ncf.rvs(dfn, dfd, nc, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function ncf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Fisher's noncentral hypergeometric discrete random variable.
		
		Fisher's noncentral hypergeometric distribution models drawing objects of
		two types from a bin. `M` is the total number of objects, `n` is the
		number of Type I objects, and `odds` is the odds ratio: the odds of
		selecting a Type I object rather than a Type II object when there is only
		one object of each type.
		The random variate represents the number of Type I objects drawn if we
		take a handful of objects from the bin at once and find out afterwards
		that we took `N` objects.
		
		As an instance of the `rv_discrete` class, `nchypergeom_fisher` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(M, n, N, odds, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, M, n, N, odds, loc=0)
		    Probability mass function.
		logpmf(k, M, n, N, odds, loc=0)
		    Log of the probability mass function.
		cdf(k, M, n, N, odds, loc=0)
		    Cumulative distribution function.
		logcdf(k, M, n, N, odds, loc=0)
		    Log of the cumulative distribution function.
		sf(k, M, n, N, odds, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, M, n, N, odds, loc=0)
		    Log of the survival function.
		ppf(q, M, n, N, odds, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, M, n, N, odds, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(M, n, N, odds, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(M, n, N, odds, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(M, n, N, odds), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(M, n, N, odds, loc=0)
		    Median of the distribution.
		mean(M, n, N, odds, loc=0)
		    Mean of the distribution.
		var(M, n, N, odds, loc=0)
		    Variance of the distribution.
		std(M, n, N, odds, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, M, n, N, odds, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		nchypergeom_wallenius, hypergeom, nhypergeom
		
		Notes
		-----
		Let mathematical symbols :math:`N`, :math:`n`, and :math:`M` correspond
		with parameters `N`, `n`, and `M` (respectively) as defined above.
		
		The probability mass function is defined as
		
		.. math::
		
		    p(x; M, n, N, \omega) =
		    \frac{\binom{n}{x}\binom{M - n}{N-x}\omega^x}{P_0},
		
		for
		:math:`x \in [x_l, x_u]`,
		:math:`M \in {\mathbb N}`,
		:math:`n \in [0, M]`,
		:math:`N \in [0, M]`,
		:math:`\omega > 0`,
		where
		:math:`x_l = \max(0, N - (M - n))`,
		:math:`x_u = \min(N, n)`,
		
		.. math::
		
		    P_0 = \sum_{y=x_l}^{x_u} \binom{n}{y}\binom{M - n}{N-y}\omega^y,
		
		and the binomial coefficients are defined as
		
		.. math:: \binom{n}{k} \equiv \frac{n!}{k! (n - k)!}.
		
		`nchypergeom_fisher` uses the BiasedUrn package by Agner Fog with
		permission for it to be distributed under SciPy's license.
		
		The symbols used to denote the shape parameters (`N`, `n`, and `M`) are not
		universally accepted; they are chosen for consistency with `hypergeom`.
		
		Note that Fisher's noncentral hypergeometric distribution is distinct
		from Wallenius' noncentral hypergeometric distribution, which models
		drawing a pre-determined `N` objects from a bin one by one.
		When the odds ratio is unity, however, both distributions reduce to the
		ordinary hypergeometric distribution.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``nchypergeom_fisher.pmf(k, M, n, N, odds, loc)`` is identically
		equivalent to ``nchypergeom_fisher.pmf(k - loc, M, n, N, odds)``.
		
		References
		----------
		.. [1] Agner Fog, "Biased Urn Theory".
		       https://cran.r-project.org/web/packages/BiasedUrn/vignettes/UrnTheory.pdf
		
		.. [2] "Fisher's noncentral hypergeometric distribution", Wikipedia,
		       https://en.wikipedia.org/wiki/Fisher's_noncentral_hypergeometric_distribution
		
		Examples
		--------
		>>> from scipy.stats import nchypergeom_fisher
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> M, n, N, odds = 140, 80, 60, 0.5
		>>> mean, var, skew, kurt = nchypergeom_fisher.stats(M, n, N, odds, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(nchypergeom_fisher.ppf(0.01, M, n, N, odds),
		...               nchypergeom_fisher.ppf(0.99, M, n, N, odds))
		>>> ax.plot(x, nchypergeom_fisher.pmf(x, M, n, N, odds), 'bo', ms=8, label='nchypergeom_fisher pmf')
		>>> ax.vlines(x, 0, nchypergeom_fisher.pmf(x, M, n, N, odds), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = nchypergeom_fisher(M, n, N, odds)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = nchypergeom_fisher.cdf(x, M, n, N, odds)
		>>> np.allclose(x, nchypergeom_fisher.ppf(prob, M, n, N, odds))
		True
		
		Generate random numbers:
		
		>>> r = nchypergeom_fisher.rvs(M, n, N, odds, size=1000)
	**/
	static public function nchypergeom_fisher(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Wallenius' noncentral hypergeometric discrete random variable.
		
		Wallenius' noncentral hypergeometric distribution models drawing objects of
		two types from a bin. `M` is the total number of objects, `n` is the
		number of Type I objects, and `odds` is the odds ratio: the odds of
		selecting a Type I object rather than a Type II object when there is only
		one object of each type.
		The random variate represents the number of Type I objects drawn if we
		draw a pre-determined `N` objects from a bin one by one.
		
		As an instance of the `rv_discrete` class, `nchypergeom_wallenius` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(M, n, N, odds, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, M, n, N, odds, loc=0)
		    Probability mass function.
		logpmf(k, M, n, N, odds, loc=0)
		    Log of the probability mass function.
		cdf(k, M, n, N, odds, loc=0)
		    Cumulative distribution function.
		logcdf(k, M, n, N, odds, loc=0)
		    Log of the cumulative distribution function.
		sf(k, M, n, N, odds, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, M, n, N, odds, loc=0)
		    Log of the survival function.
		ppf(q, M, n, N, odds, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, M, n, N, odds, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(M, n, N, odds, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(M, n, N, odds, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(M, n, N, odds), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(M, n, N, odds, loc=0)
		    Median of the distribution.
		mean(M, n, N, odds, loc=0)
		    Mean of the distribution.
		var(M, n, N, odds, loc=0)
		    Variance of the distribution.
		std(M, n, N, odds, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, M, n, N, odds, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		nchypergeom_fisher, hypergeom, nhypergeom
		
		Notes
		-----
		Let mathematical symbols :math:`N`, :math:`n`, and :math:`M` correspond
		with parameters `N`, `n`, and `M` (respectively) as defined above.
		
		The probability mass function is defined as
		
		.. math::
		
		    p(x; N, n, M) = \binom{n}{x} \binom{M - n}{N-x}
		    \int_0^1 \left(1-t^{\omega/D}\right)^x\left(1-t^{1/D}\right)^{N-x} dt
		
		for
		:math:`x \in [x_l, x_u]`,
		:math:`M \in {\mathbb N}`,
		:math:`n \in [0, M]`,
		:math:`N \in [0, M]`,
		:math:`\omega > 0`,
		where
		:math:`x_l = \max(0, N - (M - n))`,
		:math:`x_u = \min(N, n)`,
		
		.. math::
		
		    D = \omega(n - x) + ((M - n)-(N-x)),
		
		and the binomial coefficients are defined as
		
		.. math:: \binom{n}{k} \equiv \frac{n!}{k! (n - k)!}.
		
		`nchypergeom_wallenius` uses the BiasedUrn package by Agner Fog with
		permission for it to be distributed under SciPy's license.
		
		The symbols used to denote the shape parameters (`N`, `n`, and `M`) are not
		universally accepted; they are chosen for consistency with `hypergeom`.
		
		Note that Wallenius' noncentral hypergeometric distribution is distinct
		from Fisher's noncentral hypergeometric distribution, which models
		take a handful of objects from the bin at once, finding out afterwards
		that `N` objects were taken.
		When the odds ratio is unity, however, both distributions reduce to the
		ordinary hypergeometric distribution.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``nchypergeom_wallenius.pmf(k, M, n, N, odds, loc)`` is identically
		equivalent to ``nchypergeom_wallenius.pmf(k - loc, M, n, N, odds)``.
		
		References
		----------
		.. [1] Agner Fog, "Biased Urn Theory".
		       https://cran.r-project.org/web/packages/BiasedUrn/vignettes/UrnTheory.pdf
		
		.. [2] "Wallenius' noncentral hypergeometric distribution", Wikipedia,
		       https://en.wikipedia.org/wiki/Wallenius'_noncentral_hypergeometric_distribution
		
		Examples
		--------
		>>> from scipy.stats import nchypergeom_wallenius
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> M, n, N, odds = 140, 80, 60, 0.5
		>>> mean, var, skew, kurt = nchypergeom_wallenius.stats(M, n, N, odds, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(nchypergeom_wallenius.ppf(0.01, M, n, N, odds),
		...               nchypergeom_wallenius.ppf(0.99, M, n, N, odds))
		>>> ax.plot(x, nchypergeom_wallenius.pmf(x, M, n, N, odds), 'bo', ms=8, label='nchypergeom_wallenius pmf')
		>>> ax.vlines(x, 0, nchypergeom_wallenius.pmf(x, M, n, N, odds), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = nchypergeom_wallenius(M, n, N, odds)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = nchypergeom_wallenius.cdf(x, M, n, N, odds)
		>>> np.allclose(x, nchypergeom_wallenius.ppf(prob, M, n, N, odds))
		True
		
		Generate random numbers:
		
		>>> r = nchypergeom_wallenius.rvs(M, n, N, odds, size=1000)
	**/
	static public function nchypergeom_wallenius(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A non-central Student's t continuous random variable.
		
		As an instance of the `rv_continuous` class, `nct` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(df, nc, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, df, nc, loc=0, scale=1)
		    Probability density function.
		logpdf(x, df, nc, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, df, nc, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, df, nc, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, df, nc, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, df, nc, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, df, nc, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, df, nc, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, df, nc, loc=0, scale=1)
		    Non-central moment of order n
		stats(df, nc, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(df, nc, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(df, nc), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(df, nc, loc=0, scale=1)
		    Median of the distribution.
		mean(df, nc, loc=0, scale=1)
		    Mean of the distribution.
		var(df, nc, loc=0, scale=1)
		    Variance of the distribution.
		std(df, nc, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, df, nc, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		If :math:`Y` is a standard normal random variable and :math:`V` is
		an independent chi-square random variable (`chi2`) with :math:`k` degrees
		of freedom, then
		
		.. math::
		
		    X = \frac{Y + c}{\sqrt{V/k}}
		
		has a non-central Student's t distribution on the real line.
		The degrees of freedom parameter :math:`k` (denoted ``df`` in the
		implementation) satisfies :math:`k > 0` and the noncentrality parameter
		:math:`c` (denoted ``nc`` in the implementation) is a real number.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``nct.pdf(x, df, nc, loc, scale)`` is identically
		equivalent to ``nct.pdf(y, df, nc) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import nct
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> df, nc = 14, 0.24
		>>> mean, var, skew, kurt = nct.stats(df, nc, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(nct.ppf(0.01, df, nc),
		...                 nct.ppf(0.99, df, nc), 100)
		>>> ax.plot(x, nct.pdf(x, df, nc),
		...        'r-', lw=5, alpha=0.6, label='nct pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = nct(df, nc)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = nct.ppf([0.001, 0.5, 0.999], df, nc)
		>>> np.allclose([0.001, 0.5, 0.999], nct.cdf(vals, df, nc))
		True
		
		Generate random numbers:
		
		>>> r = nct.rvs(df, nc, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function nct(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A non-central chi-squared continuous random variable.
		
		As an instance of the `rv_continuous` class, `ncx2` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(df, nc, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, df, nc, loc=0, scale=1)
		    Probability density function.
		logpdf(x, df, nc, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, df, nc, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, df, nc, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, df, nc, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, df, nc, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, df, nc, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, df, nc, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, df, nc, loc=0, scale=1)
		    Non-central moment of order n
		stats(df, nc, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(df, nc, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(df, nc), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(df, nc, loc=0, scale=1)
		    Median of the distribution.
		mean(df, nc, loc=0, scale=1)
		    Mean of the distribution.
		var(df, nc, loc=0, scale=1)
		    Variance of the distribution.
		std(df, nc, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, df, nc, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `ncx2` is:
		
		.. math::
		
		    f(x, k, \lambda) = \frac{1}{2} \exp(-(\lambda+x)/2)
		        (x/\lambda)^{(k-2)/4}  I_{(k-2)/2}(\sqrt{\lambda x})
		
		for :math:`x >= 0` and :math:`k, \lambda > 0`. :math:`k` specifies the
		degrees of freedom (denoted ``df`` in the implementation) and
		:math:`\lambda` is the non-centrality parameter (denoted ``nc`` in the
		implementation). :math:`I_\nu` denotes the modified Bessel function of
		first order of degree :math:`\nu` (`scipy.special.iv`).
		
		`ncx2` takes ``df`` and ``nc`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``ncx2.pdf(x, df, nc, loc, scale)`` is identically
		equivalent to ``ncx2.pdf(y, df, nc) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import ncx2
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> df, nc = 21, 1.06
		>>> mean, var, skew, kurt = ncx2.stats(df, nc, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(ncx2.ppf(0.01, df, nc),
		...                 ncx2.ppf(0.99, df, nc), 100)
		>>> ax.plot(x, ncx2.pdf(x, df, nc),
		...        'r-', lw=5, alpha=0.6, label='ncx2 pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = ncx2(df, nc)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = ncx2.ppf([0.001, 0.5, 0.999], df, nc)
		>>> np.allclose([0.001, 0.5, 0.999], ncx2.cdf(vals, df, nc))
		True
		
		Generate random numbers:
		
		>>> r = ncx2.rvs(df, nc, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function ncx2(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A negative hypergeometric discrete random variable.
		
		Consider a box containing :math:`M` balls:, :math:`n` red and
		:math:`M-n` blue. We randomly sample balls from the box, one
		at a time and *without* replacement, until we have picked :math:`r`
		blue balls. `nhypergeom` is the distribution of the number of
		red balls :math:`k` we have picked.
		
		As an instance of the `rv_discrete` class, `nhypergeom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(M, n, r, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, M, n, r, loc=0)
		    Probability mass function.
		logpmf(k, M, n, r, loc=0)
		    Log of the probability mass function.
		cdf(k, M, n, r, loc=0)
		    Cumulative distribution function.
		logcdf(k, M, n, r, loc=0)
		    Log of the cumulative distribution function.
		sf(k, M, n, r, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, M, n, r, loc=0)
		    Log of the survival function.
		ppf(q, M, n, r, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, M, n, r, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(M, n, r, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(M, n, r, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(M, n, r), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(M, n, r, loc=0)
		    Median of the distribution.
		mean(M, n, r, loc=0)
		    Mean of the distribution.
		var(M, n, r, loc=0)
		    Variance of the distribution.
		std(M, n, r, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, M, n, r, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The symbols used to denote the shape parameters (`M`, `n`, and `r`) are not
		universally accepted. See the Examples for a clarification of the
		definitions used here.
		
		The probability mass function is defined as,
		
		.. math:: f(k; M, n, r) = \frac{{{k+r-1}\choose{k}}{{M-r-k}\choose{n-k}}}
		                               {{M \choose n}}
		
		for :math:`k \in [0, n]`, :math:`n \in [0, M]`, :math:`r \in [0, M-n]`,
		and the binomial coefficient is:
		
		.. math:: \binom{n}{k} \equiv \frac{n!}{k! (n - k)!}.
		
		It is equivalent to observing :math:`k` successes in :math:`k+r-1`
		samples with :math:`k+r`'th sample being a failure. The former
		can be modelled as a hypergeometric distribution. The probability
		of the latter is simply the number of failures remaining
		:math:`M-n-(r-1)` divided by the size of the remaining population
		:math:`M-(k+r-1)`. This relationship can be shown as:
		
		.. math:: NHG(k;M,n,r) = HG(k;M,n,k+r-1)\frac{(M-n-(r-1))}{(M-(k+r-1))}
		
		where :math:`NHG` is probability mass function (PMF) of the
		negative hypergeometric distribution and :math:`HG` is the
		PMF of the hypergeometric distribution.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``nhypergeom.pmf(k, M, n, r, loc)`` is identically
		equivalent to ``nhypergeom.pmf(k - loc, M, n, r)``.
		
		Examples
		--------
		>>> from scipy.stats import nhypergeom
		>>> import matplotlib.pyplot as plt
		
		Suppose we have a collection of 20 animals, of which 7 are dogs.
		Then if we want to know the probability of finding a given number
		of dogs (successes) in a sample with exactly 12 animals that
		aren't dogs (failures), we can initialize a frozen distribution
		and plot the probability mass function:
		
		>>> M, n, r = [20, 7, 12]
		>>> rv = nhypergeom(M, n, r)
		>>> x = np.arange(0, n+2)
		>>> pmf_dogs = rv.pmf(x)
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, pmf_dogs, 'bo')
		>>> ax.vlines(x, 0, pmf_dogs, lw=2)
		>>> ax.set_xlabel('# of dogs in our group with given 12 failures')
		>>> ax.set_ylabel('nhypergeom PMF')
		>>> plt.show()
		
		Instead of using a frozen distribution we can also use `nhypergeom`
		methods directly.  To for example obtain the probability mass
		function, use:
		
		>>> prb = nhypergeom.pmf(x, M, n, r)
		
		And to generate random numbers:
		
		>>> R = nhypergeom.rvs(M, n, r, size=10)
		
		To verify the relationship between `hypergeom` and `nhypergeom`, use:
		
		>>> from scipy.stats import hypergeom, nhypergeom
		>>> M, n, r = 45, 13, 8
		>>> k = 6
		>>> nhypergeom.pmf(k, M, n, r)
		0.06180776620271643
		>>> hypergeom.pmf(k, M, n, k+r-1) * (M - n - (r-1)) / (M - (k+r-1))
		0.06180776620271644
		
		See Also
		--------
		hypergeom, binom, nbinom
		
		References
		----------
		.. [1] Negative Hypergeometric Distribution on Wikipedia
		       https://en.wikipedia.org/wiki/Negative_hypergeometric_distribution
		
		.. [2] Negative Hypergeometric Distribution from
		       http://www.math.wm.edu/~leemis/chart/UDR/PDFs/Negativehypergeometric.pdf
	**/
	static public function nhypergeom(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A normal continuous random variable.
		
		The location (``loc``) keyword specifies the mean.
		The scale (``scale``) keyword specifies the standard deviation.
		
		As an instance of the `rv_continuous` class, `norm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `norm` is:
		
		.. math::
		
		    f(x) = \frac{\exp(-x^2/2)}{\sqrt{2\pi}}
		
		for a real number :math:`x`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``norm.pdf(x, loc, scale)`` is identically
		equivalent to ``norm.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import norm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = norm.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(norm.ppf(0.01),
		...                 norm.ppf(0.99), 100)
		>>> ax.plot(x, norm.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='norm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = norm()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = norm.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], norm.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = norm.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function norm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Test whether a sample differs from a normal distribution.
		
		This function tests the null hypothesis that a sample comes
		from a normal distribution.  It is based on D'Agostino and
		Pearson's [1]_, [2]_ test that combines skew and kurtosis to
		produce an omnibus test of normality.
		
		Parameters
		----------
		a : array_like
		    The array containing the sample to be tested.
		axis : int or None, optional
		    Axis along which to compute test. Default is 0. If None,
		    compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		statistic : float or array
		    ``s^2 + k^2``, where ``s`` is the z-score returned by `skewtest` and
		    ``k`` is the z-score returned by `kurtosistest`.
		pvalue : float or array
		   A 2-sided chi squared probability for the hypothesis test.
		
		References
		----------
		.. [1] D'Agostino, R. B. (1971), "An omnibus test of normality for
		       moderate and large sample size", Biometrika, 58, 341-348
		
		.. [2] D'Agostino, R. and Pearson, E. S. (1973), "Tests for departure from
		       normality", Biometrika, 60, 613-622
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		>>> pts = 1000
		>>> a = rng.normal(0, 1, size=pts)
		>>> b = rng.normal(2, 1, size=pts)
		>>> x = np.concatenate((a, b))
		>>> k2, p = stats.normaltest(x)
		>>> alpha = 1e-3
		>>> print("p = {:g}".format(p))
		p = 8.4713e-19
		>>> if p < alpha:  # null hypothesis: x comes from a normal distribution
		...     print("The null hypothesis can be rejected")
		... else:
		...     print("The null hypothesis cannot be rejected")
		The null hypothesis can be rejected
	**/
	static public function normaltest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		A Normal Inverse Gaussian continuous random variable.
		
		As an instance of the `rv_continuous` class, `norminvgauss` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, b, loc=0, scale=1)
		    Median of the distribution.
		mean(a, b, loc=0, scale=1)
		    Mean of the distribution.
		var(a, b, loc=0, scale=1)
		    Variance of the distribution.
		std(a, b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `norminvgauss` is:
		
		.. math::
		
		    f(x, a, b) = \frac{a \, K_1(a \sqrt{1 + x^2})}{\pi \sqrt{1 + x^2}} \,
		                 \exp(\sqrt{a^2 - b^2} + b x)
		
		where :math:`x` is a real number, the parameter :math:`a` is the tail
		heaviness and :math:`b` is the asymmetry parameter satisfying
		:math:`a > 0` and :math:`|b| <= a`.
		:math:`K_1` is the modified Bessel function of second kind
		(`scipy.special.k1`).
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``norminvgauss.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``norminvgauss.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		A normal inverse Gaussian random variable `Y` with parameters `a` and `b`
		can be expressed as a normal mean-variance mixture:
		`Y = b * V + sqrt(V) * X` where `X` is `norm(0,1)` and `V` is
		`invgauss(mu=1/sqrt(a**2 - b**2))`. This representation is used
		to generate random variates.
		
		Another common parametrization of the distribution (see Equation 2.1 in
		[2]_) is given by the following expression of the pdf:
		
		.. math::
		
		    g(x, \alpha, \beta, \delta, \mu) =
		    \frac{\alpha\delta K_1\left(\alpha\sqrt{\delta^2 + (x - \mu)^2}\right)}
		    {\pi \sqrt{\delta^2 + (x - \mu)^2}} \,
		    e^{\delta \sqrt{\alpha^2 - \beta^2} + \beta (x - \mu)}
		
		In SciPy, this corresponds to
		`a = alpha * delta, b = beta * delta, loc = mu, scale=delta`.
		
		References
		----------
		.. [1] O. Barndorff-Nielsen, "Hyperbolic Distributions and Distributions on
		       Hyperbolae", Scandinavian Journal of Statistics, Vol. 5(3),
		       pp. 151-157, 1978.
		
		.. [2] O. Barndorff-Nielsen, "Normal Inverse Gaussian Distributions and
		       Stochastic Volatility Modelling", Scandinavian Journal of
		       Statistics, Vol. 24, pp. 1-13, 1997.
		
		Examples
		--------
		>>> from scipy.stats import norminvgauss
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, b = 1.25, 0.5
		>>> mean, var, skew, kurt = norminvgauss.stats(a, b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(norminvgauss.ppf(0.01, a, b),
		...                 norminvgauss.ppf(0.99, a, b), 100)
		>>> ax.plot(x, norminvgauss.pdf(x, a, b),
		...        'r-', lw=5, alpha=0.6, label='norminvgauss pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = norminvgauss(a, b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = norminvgauss.ppf([0.001, 0.5, 0.999], a, b)
		>>> np.allclose([0.001, 0.5, 0.999], norminvgauss.cdf(vals, a, b))
		True
		
		Generate random numbers:
		
		>>> r = norminvgauss.rvs(a, b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function norminvgauss(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the O'Brien transform on input data (any number of arrays).
		
		Used to test for homogeneity of variance prior to running one-way stats.
		Each array in ``*args`` is one level of a factor.
		If `f_oneway` is run on the transformed data and found significant,
		the variances are unequal.  From Maxwell and Delaney [1]_, p.112.
		
		Parameters
		----------
		args : tuple of array_like
		    Any number of arrays.
		
		Returns
		-------
		obrientransform : ndarray
		    Transformed data for use in an ANOVA.  The first dimension
		    of the result corresponds to the sequence of transformed
		    arrays.  If the arrays given are all 1-D of the same length,
		    the return value is a 2-D array; otherwise it is a 1-D array
		    of type object, with each element being an ndarray.
		
		References
		----------
		.. [1] S. E. Maxwell and H. D. Delaney, "Designing Experiments and
		       Analyzing Data: A Model Comparison Perspective", Wadsworth, 1990.
		
		Examples
		--------
		We'll test the following data sets for differences in their variance.
		
		>>> x = [10, 11, 13, 9, 7, 12, 12, 9, 10]
		>>> y = [13, 21, 5, 10, 8, 14, 10, 12, 7, 15]
		
		Apply the O'Brien transform to the data.
		
		>>> from scipy.stats import obrientransform
		>>> tx, ty = obrientransform(x, y)
		
		Use `scipy.stats.f_oneway` to apply a one-way ANOVA test to the
		transformed data.
		
		>>> from scipy.stats import f_oneway
		>>> F, p = f_oneway(tx, ty)
		>>> p
		0.1314139477040335
		
		If we require that ``p < 0.05`` for significance, we cannot conclude
		that the variances are different.
	**/
	static public function obrientransform(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var ortho_group : Dynamic;
	/**
		Perform Page's Test, a measure of trend in observations between treatments.
		
		Page's Test (also known as Page's :math:`L` test) is useful when:
		
		* there are :math:`n \geq 3` treatments,
		* :math:`m \geq 2` subjects are observed for each treatment, and
		* the observations are hypothesized to have a particular order.
		
		Specifically, the test considers the null hypothesis that
		
		.. math::
		
		    m_1 = m_2 = m_3 \cdots = m_n,
		
		where :math:`m_j` is the mean of the observed quantity under treatment
		:math:`j`, against the alternative hypothesis that
		
		.. math::
		
		    m_1 \leq m_2 \leq m_3 \leq \cdots \leq m_n,
		
		where at least one inequality is strict.
		
		As noted by [4]_, Page's :math:`L` test has greater statistical power than
		the Friedman test against the alternative that there is a difference in
		trend, as Friedman's test only considers a difference in the means of the
		observations without considering their order. Whereas Spearman :math:`\rho`
		considers the correlation between the ranked observations of two variables
		(e.g. the airspeed velocity of a swallow vs. the weight of the coconut it
		carries), Page's :math:`L` is concerned with a trend in an observation
		(e.g. the airspeed velocity of a swallow) across several distinct
		treatments (e.g. carrying each of five coconuts of different weight) even
		as the observation is repeated with multiple subjects (e.g. one European
		swallow and one African swallow).
		
		Parameters
		----------
		data : array-like
		    A :math:`m \times n` array; the element in row :math:`i` and
		    column :math:`j` is the observation corresponding with subject
		    :math:`i` and treatment :math:`j`. By default, the columns are
		    assumed to be arranged in order of increasing predicted mean.
		
		ranked : boolean, optional
		    By default, `data` is assumed to be observations rather than ranks;
		    it will be ranked with `scipy.stats.rankdata` along ``axis=1``. If
		    `data` is provided in the form of ranks, pass argument ``True``.
		
		predicted_ranks : array-like, optional
		    The predicted ranks of the column means. If not specified,
		    the columns are assumed to be arranged in order of increasing
		    predicted mean, so the default `predicted_ranks` are
		    :math:`[1, 2, \dots, n-1, n]`.
		
		method : {'auto', 'asymptotic', 'exact'}, optional
		    Selects the method used to calculate the *p*-value. The following
		    options are available.
		
		    * 'auto': selects between 'exact' and 'asymptotic' to
		      achieve reasonably accurate results in reasonable time (default)
		    * 'asymptotic': compares the standardized test statistic against
		      the normal distribution
		    * 'exact': computes the exact *p*-value by comparing the observed
		      :math:`L` statistic against those realized by all possible
		      permutations of ranks (under the null hypothesis that each
		      permutation is equally likely)
		
		Returns
		-------
		res : PageTrendTestResult
		    An object containing attributes:
		
		    statistic : float
		        Page's :math:`L` test statistic.
		    pvalue : float
		        The associated *p*-value
		    method : {'asymptotic', 'exact'}
		        The method used to compute the *p*-value
		
		See Also
		--------
		rankdata, friedmanchisquare, spearmanr
		
		Notes
		-----
		As noted in [1]_, "the :math:`n` 'treatments' could just as well represent
		:math:`n` objects or events or performances or persons or trials ranked."
		Similarly, the :math:`m` 'subjects' could equally stand for :math:`m`
		"groupings by ability or some other control variable, or judges doing
		the ranking, or random replications of some other sort."
		
		The procedure for calculating the :math:`L` statistic, adapted from
		[1]_, is:
		
		1. "Predetermine with careful logic the appropriate hypotheses
		   concerning the predicted ording of the experimental results.
		   If no reasonable basis for ordering any treatments is known, the
		   :math:`L` test is not appropriate."
		2. "As in other experiments, determine at what level of confidence
		   you will reject the null hypothesis that there is no agreement of
		   experimental results with the monotonic hypothesis."
		3. "Cast the experimental material into a two-way table of :math:`n`
		   columns (treatments, objects ranked, conditions) and :math:`m`
		   rows (subjects, replication groups, levels of control variables)."
		4. "When experimental observations are recorded, rank them across each
		   row", e.g. ``ranks = scipy.stats.rankdata(data, axis=1)``.
		5. "Add the ranks in each column", e.g.
		   ``colsums = np.sum(ranks, axis=0)``.
		6. "Multiply each sum of ranks by the predicted rank for that same
		   column", e.g. ``products = predicted_ranks * colsums``.
		7. "Sum all such products", e.g. ``L = products.sum()``.
		
		[1]_ continues by suggesting use of the standardized statistic
		
		.. math::
		
		    \chi_L^2 = \frac{\left[12L-3mn(n+1)^2\right]^2}{mn^2(n^2-1)(n+1)}
		
		"which is distributed approximately as chi-square with 1 degree of
		freedom. The ordinary use of :math:`\chi^2` tables would be
		equivalent to a two-sided test of agreement. If a one-sided test
		is desired, *as will almost always be the case*, the probability
		discovered in the chi-square table should be *halved*."
		
		However, this standardized statistic does not distinguish between the
		observed values being well correlated with the predicted ranks and being
		_anti_-correlated with the predicted ranks. Instead, we follow [2]_
		and calculate the standardized statistic
		
		.. math::
		
		    \Lambda = \frac{L - E_0}{\sqrt{V_0}},
		
		where :math:`E_0 = \frac{1}{4} mn(n+1)^2` and
		:math:`V_0 = \frac{1}{144} mn^2(n+1)(n^2-1)`, "which is asymptotically
		normal under the null hypothesis".
		
		The *p*-value for ``method='exact'`` is generated by comparing the observed
		value of :math:`L` against the :math:`L` values generated for all
		:math:`(n!)^m` possible permutations of ranks. The calculation is performed
		using the recursive method of [5].
		
		The *p*-values are not adjusted for the possibility of ties. When
		ties are present, the reported  ``'exact'`` *p*-values may be somewhat
		larger (i.e. more conservative) than the true *p*-value [2]_. The
		``'asymptotic'``` *p*-values, however, tend to be smaller (i.e. less
		conservative) than the ``'exact'`` *p*-values.
		
		References
		----------
		.. [1] Ellis Batten Page, "Ordered hypotheses for multiple treatments:
		   a significant test for linear ranks", *Journal of the American
		   Statistical Association* 58(301), p. 216--230, 1963.
		
		.. [2] Markus Neuhauser, *Nonparametric Statistical Test: A computational
		   approach*, CRC Press, p. 150--152, 2012.
		
		.. [3] Statext LLC, "Page's L Trend Test - Easy Statistics", *Statext -
		   Statistics Study*, https://www.statext.com/practice/PageTrendTest03.php,
		   Accessed July 12, 2020.
		
		.. [4] "Page's Trend Test", *Wikipedia*, WikimediaFoundation,
		   https://en.wikipedia.org/wiki/Page%27s_trend_test,
		   Accessed July 12, 2020.
		
		.. [5] Robert E. Odeh, "The exact distribution of Page's L-statistic in
		   the two-way layout", *Communications in Statistics - Simulation and
		   Computation*,  6(1), p. 49--61, 1977.
		
		Examples
		--------
		We use the example from [3]_: 10 students are asked to rate three
		teaching methods - tutorial, lecture, and seminar - on a scale of 1-5,
		with 1 being the lowest and 5 being the highest. We have decided that
		a confidence level of 99% is required to reject the null hypothesis in
		favor of our alternative: that the seminar will have the highest ratings
		and the tutorial will have the lowest. Initially, the data have been
		tabulated with each row representing an individual student's ratings of
		the three methods in the following order: tutorial, lecture, seminar.
		
		>>> table = [[3, 4, 3],
		...          [2, 2, 4],
		...          [3, 3, 5],
		...          [1, 3, 2],
		...          [2, 3, 2],
		...          [2, 4, 5],
		...          [1, 2, 4],
		...          [3, 4, 4],
		...          [2, 4, 5],
		...          [1, 3, 4]]
		
		Because the tutorial is hypothesized to have the lowest ratings, the
		column corresponding with tutorial rankings should be first; the seminar
		is hypothesized to have the highest ratings, so its column should be last.
		Since the columns are already arranged in this order of increasing
		predicted mean, we can pass the table directly into `page_trend_test`.
		
		>>> from scipy.stats import page_trend_test
		>>> res = page_trend_test(table)
		>>> res
		PageTrendTestResult(statistic=133.5, pvalue=0.0018191161948127822,
		                    method='exact')
		
		This *p*-value indicates that there is a 0.1819% chance that
		the :math:`L` statistic would reach such an extreme value under the null
		hypothesis. Because 0.1819% is less than 1%, we have evidence to reject
		the null hypothesis in favor of our alternative at a 99% confidence level.
		
		The value of the :math:`L` statistic is 133.5. To check this manually,
		we rank the data such that high scores correspond with high ranks, settling
		ties with an average rank:
		
		>>> from scipy.stats import rankdata
		>>> ranks = rankdata(table, axis=1)
		>>> ranks
		array([[1.5, 3. , 1.5],
		       [1.5, 1.5, 3. ],
		       [1.5, 1.5, 3. ],
		       [1. , 3. , 2. ],
		       [1.5, 3. , 1.5],
		       [1. , 2. , 3. ],
		       [1. , 2. , 3. ],
		       [1. , 2.5, 2.5],
		       [1. , 2. , 3. ],
		       [1. , 2. , 3. ]])
		
		We add the ranks within each column, multiply the sums by the
		predicted ranks, and sum the products.
		
		>>> import numpy as np
		>>> m, n = ranks.shape
		>>> predicted_ranks = np.arange(1, n+1)
		>>> L = (predicted_ranks * np.sum(ranks, axis=0)).sum()
		>>> res.statistic == L
		True
		
		As presented in [3]_, the asymptotic approximation of the *p*-value is the
		survival function of the normal distribution evaluated at the standardized
		test statistic:
		
		>>> from scipy.stats import norm
		>>> E0 = (m*n*(n+1)**2)/4
		>>> V0 = (m*n**2*(n+1)*(n**2-1))/144
		>>> Lambda = (L-E0)/np.sqrt(V0)
		>>> p = norm.sf(Lambda)
		>>> p
		0.0012693433690751756
		
		This does not precisely match the *p*-value reported by `page_trend_test`
		above. The asymptotic distribution is not very accurate, nor conservative,
		for :math:`m \leq 12` and :math:`n \leq 8`, so `page_trend_test` chose to
		use ``method='exact'`` based on the dimensions of the table and the
		recommendations in Page's original paper [1]_. To override
		`page_trend_test`'s choice, provide the `method` argument.
		
		>>> res = page_trend_test(table, method="asymptotic")
		>>> res
		PageTrendTestResult(statistic=133.5, pvalue=0.0012693433690751756,
		                    method='asymptotic')
		
		If the data are already ranked, we can pass in the ``ranks`` instead of
		the ``table`` to save computation time.
		
		>>> res = page_trend_test(ranks,             # ranks of data
		...                       ranked=True,       # data is already ranked
		...                       )
		>>> res
		PageTrendTestResult(statistic=133.5, pvalue=0.0018191161948127822,
		                    method='exact')
		
		Suppose the raw data had been tabulated in an order different from the
		order of predicted means, say lecture, seminar, tutorial.
		
		>>> table = np.asarray(table)[:, [1, 2, 0]]
		
		Since the arrangement of this table is not consistent with the assumed
		ordering, we can either rearrange the table or provide the
		`predicted_ranks`. Remembering that the lecture is predicted
		to have the middle rank, the seminar the highest, and tutorial the lowest,
		we pass:
		
		>>> res = page_trend_test(table,             # data as originally tabulated
		...                       predicted_ranks=[2, 3, 1],  # our predicted order
		...                       )
		>>> res
		PageTrendTestResult(statistic=133.5, pvalue=0.0018191161948127822,
		                    method='exact')
	**/
	static public function page_trend_test(data:Dynamic, ?ranked:Dynamic, ?predicted_ranks:Dynamic, ?method:Dynamic):Dynamic;
	/**
		A Pareto continuous random variable.
		
		As an instance of the `rv_continuous` class, `pareto` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(b,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(b, loc=0, scale=1)
		    Median of the distribution.
		mean(b, loc=0, scale=1)
		    Mean of the distribution.
		var(b, loc=0, scale=1)
		    Variance of the distribution.
		std(b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `pareto` is:
		
		.. math::
		
		    f(x, b) = \frac{b}{x^{b+1}}
		
		for :math:`x \ge 1`, :math:`b > 0`.
		
		`pareto` takes ``b`` as a shape parameter for :math:`b`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``pareto.pdf(x, b, loc, scale)`` is identically
		equivalent to ``pareto.pdf(y, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import pareto
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> b = 2.62
		>>> mean, var, skew, kurt = pareto.stats(b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(pareto.ppf(0.01, b),
		...                 pareto.ppf(0.99, b), 100)
		>>> ax.plot(x, pareto.pdf(x, b),
		...        'r-', lw=5, alpha=0.6, label='pareto pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = pareto(b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = pareto.ppf([0.001, 0.5, 0.999], b)
		>>> np.allclose([0.001, 0.5, 0.999], pareto.cdf(vals, b))
		True
		
		Generate random numbers:
		
		>>> r = pareto.rvs(b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function pareto(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A pearson type III continuous random variable.
		
		As an instance of the `rv_continuous` class, `pearson3` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(skew, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, skew, loc=0, scale=1)
		    Probability density function.
		logpdf(x, skew, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, skew, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, skew, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, skew, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, skew, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, skew, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, skew, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, skew, loc=0, scale=1)
		    Non-central moment of order n
		stats(skew, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(skew, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(skew,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(skew, loc=0, scale=1)
		    Median of the distribution.
		mean(skew, loc=0, scale=1)
		    Mean of the distribution.
		var(skew, loc=0, scale=1)
		    Variance of the distribution.
		std(skew, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, skew, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `pearson3` is:
		
		.. math::
		
		    f(x, \kappa) = \frac{|\beta|}{\Gamma(\alpha)}
		                   (\beta (x - \zeta))^{\alpha - 1}
		                   \exp(-\beta (x - \zeta))
		
		where:
		
		.. math::
		
		        \beta = \frac{2}{\kappa}
		
		        \alpha = \beta^2 = \frac{4}{\kappa^2}
		
		        \zeta = -\frac{\alpha}{\beta} = -\beta
		
		:math:`\Gamma` is the gamma function (`scipy.special.gamma`).
		Pass the skew :math:`\kappa` into `pearson3` as the shape parameter
		``skew``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``pearson3.pdf(x, skew, loc, scale)`` is identically
		equivalent to ``pearson3.pdf(y, skew) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import pearson3
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> skew = 0.1
		>>> mean, var, skew, kurt = pearson3.stats(skew, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(pearson3.ppf(0.01, skew),
		...                 pearson3.ppf(0.99, skew), 100)
		>>> ax.plot(x, pearson3.pdf(x, skew),
		...        'r-', lw=5, alpha=0.6, label='pearson3 pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = pearson3(skew)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = pearson3.ppf([0.001, 0.5, 0.999], skew)
		>>> np.allclose([0.001, 0.5, 0.999], pearson3.cdf(vals, skew))
		True
		
		Generate random numbers:
		
		>>> r = pearson3.rvs(skew, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		
		References
		----------
		R.W. Vogel and D.E. McMartin, "Probability Plot Goodness-of-Fit and
		Skewness Estimation Procedures for the Pearson Type 3 Distribution", Water
		Resources Research, Vol.27, 3149-3158 (1991).
		
		L.R. Salvosa, "Tables of Pearson's Type III Function", Ann. Math. Statist.,
		Vol.1, 191-198 (1930).
		
		"Using Modern Computing Tools to Fit the Pearson Type III Distribution to
		Aviation Loads Data", Office of Aviation Research (2003).
	**/
	static public function pearson3(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		>>> stats.pearsonr([1, 2, 3, 4, 5], [10, 9, 2.5, 6, 4])
		(-0.7426106572325057, 0.1505558088534455)
		
		There is a linear dependence between x and y if y = a + b*x + e, where
		a,b are constants and e is a random error term, assumed to be independent
		of x. For simplicity, assume that x is standard normal, a=0, b=1 and let
		e follow a normal distribution with mean zero and standard deviation s>0.
		
		>>> s = 0.5
		>>> x = stats.norm.rvs(size=500)
		>>> e = stats.norm.rvs(scale=s, size=500)
		>>> y = x + e
		>>> stats.pearsonr(x, y)
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
		>>> stats.pearsonr(x, y)
		(-0.016172891856853524, 0.7182823678751942) # may vary
		
		A non-zero correlation coefficient can be misleading. For example, if X has
		a standard normal distribution, define y = x if x < 0 and y = 0 otherwise.
		A simple calculation shows that corr(x, y) = sqrt(2/Pi) = 0.797...,
		implying a high level of correlation:
		
		>>> y = np.where(x < 0, x, 0)
		>>> stats.pearsonr(x, y)
		(0.8537091583771509, 3.183461621422181e-143) # may vary
		
		This is unintuitive since there is no dependence of x and y if x is larger
		than zero which happens in about half of the cases if we sample x and y.
	**/
	static public function pearsonr(x:Dynamic, y:Dynamic):Float;
	/**
		Compute the percentile rank of a score relative to a list of scores.
		
		A `percentileofscore` of, for example, 80% means that 80% of the
		scores in `a` are below the given score. In the case of gaps or
		ties, the exact definition depends on the optional keyword, `kind`.
		
		Parameters
		----------
		a : array_like
		    Array of scores to which `score` is compared.
		score : int or float
		    Score that is compared to the elements in `a`.
		kind : {'rank', 'weak', 'strict', 'mean'}, optional
		    Specifies the interpretation of the resulting score.
		    The following options are available (default is 'rank'):
		
		      * 'rank': Average percentage ranking of score.  In case of multiple
		        matches, average the percentage rankings of all matching scores.
		      * 'weak': This kind corresponds to the definition of a cumulative
		        distribution function.  A percentileofscore of 80% means that 80%
		        of values are less than or equal to the provided score.
		      * 'strict': Similar to "weak", except that only values that are
		        strictly less than the given score are counted.
		      * 'mean': The average of the "weak" and "strict" scores, often used
		        in testing.  See https://en.wikipedia.org/wiki/Percentile_rank
		
		Returns
		-------
		pcos : float
		    Percentile-position of score (0-100) relative to `a`.
		
		See Also
		--------
		numpy.percentile
		
		Examples
		--------
		Three-quarters of the given values lie below a given score:
		
		>>> from scipy import stats
		>>> stats.percentileofscore([1, 2, 3, 4], 3)
		75.0
		
		With multiple matches, note how the scores of the two matches, 0.6
		and 0.8 respectively, are averaged:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3)
		70.0
		
		Only 2/5 values are strictly less than 3:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3, kind='strict')
		40.0
		
		But 4/5 values are less than or equal to 3:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3, kind='weak')
		80.0
		
		The average between the weak and the strict scores is:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3, kind='mean')
		60.0
	**/
	static public function percentileofscore(a:Dynamic, score:Dynamic, ?kind:Dynamic):Float;
	/**
		Performs a permutation test of a given statistic on provided data.
		
		For independent sample statistics, the null hypothesis is that the data are
		randomly sampled from the same distribution.
		For paired sample statistics, two null hypothesis can be tested:
		that the data are paired at random or that the data are assigned to samples
		at random.
		
		Parameters
		----------
		data : iterable of array-like
		    Contains the samples, each of which is an array of observations.
		    Dimensions of sample arrays must be compatible for broadcasting except
		    along `axis`.
		statistic : callable
		    Statistic for which the p-value of the hypothesis test is to be
		    calculated. `statistic` must be a callable that accepts samples
		    as separate arguments (e.g. ``statistic(*data)``) and returns the
		    resulting statistic.
		    If `vectorized` is set ``True``, `statistic` must also accept a keyword
		    argument `axis` and be vectorized to compute the statistic along the
		    provided `axis` of the sample arrays.
		permutation_type : {'independent', 'samples', 'pairings'}, optional
		    The type of permutations to be performed, in accordance with the
		    null hypothesis. The first two permutation types are for paired sample
		    statistics, in which all samples contain the same number of
		    observations and observations with corresponding indices along `axis`
		    are considered to be paired; the third is for independent sample
		    statistics.
		
		    - ``'samples'`` : observations are assigned to different samples
		      but remain paired with the same observations from other samples.
		      This permutation type is appropriate for paired sample hypothesis
		      tests such as the Wilcoxon signed-rank test and the paired t-test.
		    - ``'pairings'`` : observations are paired with different observations,
		      but they remain within the same sample. This permutation type is
		      appropriate for association/correlation tests with statistics such
		      as Spearman's :math:`\rho`, Kendall's :math:`\tau`, and Pearson's
		      :math:`r`.
		    - ``'independent'`` (default) : observations are assigned to different
		      samples. Samples may contain different numbers of observations. This
		      permutation type is appropriate for independent sample hypothesis
		      tests such as the Mann-Whitney :math:`U` test and the independent
		      sample t-test.
		
		      Please see the Notes section below for more detailed descriptions
		      of the permutation types.
		
		vectorized : bool, default: ``False``
		    By default, `statistic` is assumed to calculate the statistic only for
		    1D arrays contained in `data`. If `vectorized` is set ``True``,
		    `statistic` must also accept a keyword argument `axis` and be
		    vectorized to compute the statistic along the provided `axis` of the ND
		    arrays in `data`. Use of a vectorized statistic can reduce computation
		    time.
		n_resamples : int or np.inf, default: 9999
		    Number of random permutations (resamples) used to approximate the null
		    distribution. If greater than or equal to the number of distinct
		    permutations, the exact null distribution will be computed.
		    Note that the number of distinct permutations grows very rapidly with
		    the sizes of samples, so exact tests are feasible only for very small
		    data sets.
		batch : int, optional
		    The number of permutations to process in each call to `statistic`.
		    Memory usage is O(`batch`*``n``), where ``n`` is the total size
		    of all samples, regardless of the value of `vectorized`. Default is
		    ``None``, in which case ``batch`` is the number of permutations.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    The alternative hypothesis for which the p-value is calculated.
		    For each alternative, the p-value is defined for exact tests as
		    follows.
		
		    - ``'greater'`` : the percentage of the null distribution that is
		      greater than or equal to the observed value of the test statistic.
		    - ``'less'`` : the percentage of the null distribution that is
		      less than or equal to the observed value of the test statistic.
		    - ``'two-sided'`` (default) : twice the smaller of the p-values above.
		
		    Note that p-values for randomized tests are calculated according to the
		    conservative (over-estimated) approximation suggested in [2]_ and [3]_
		    rather than the unbiased estimator suggested in [4]_. That is, when
		    calculating the proportion of the randomized null distribution that is
		    as extreme as the observed value of the test statistic, the values in
		    the numerator and denominator are both increased by one. An
		    interpretation of this adjustment is that the observed value of the
		    test statistic is always included as an element of the randomized
		    null distribution.
		    The convention used for two-sided p-values is not universal;
		    the observed test statistic and null distribution are returned in
		    case a different definition is preferred.
		
		axis : int, default: 0
		    The axis of the (broadcasted) samples over which to calculate the
		    statistic. If samples have a different number of dimensions,
		    singleton dimensions are prepended to samples with fewer dimensions
		    before `axis` is considered.
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    Pseudorandom number generator state used to generate permutations.
		
		    If `random_state` is ``None`` (default), the
		    `numpy.random.RandomState` singleton is used.
		    If `random_state` is an int, a new ``RandomState`` instance is used,
		    seeded with `random_state`.
		    If `random_state` is already a ``Generator`` or ``RandomState``
		    instance then that instance is used.
		
		Returns
		-------
		statistic : float or ndarray
		    The observed test statistic of the data.
		pvalue : float or ndarray
		    The p-value for the given alternative.
		null_distribution : ndarray
		    The values of the test statistic generated under the null hypothesis.
		
		Notes
		-----
		
		The three types of permutation tests supported by this function are
		described below.
		
		**Unpaired statistics** (``permutation_type='independent'``):
		
		The null hypothesis associated with this permutation type is that all
		observations are sampled from the same underlying distribution and that
		they have been assigned to one of the samples at random.
		
		Suppose ``data`` contains two samples; e.g. ``a, b = data``.
		When ``1 < n_resamples < binom(n, k)``, where
		
		* ``k`` is the number of observations in ``a``,
		* ``n`` is the total number of observations in ``a`` and ``b``, and
		* ``binom(n, k)`` is the binomial coefficient (``n`` choose ``k``),
		
		the data are pooled (concatenated), randomly assigned to either the first
		or second sample, and the statistic is calculated. This process is
		performed repeatedly, `permutation` times, generating a distribution of the
		statistic under the null hypothesis. The statistic of the original
		data is compared to this distribution to determine the p-value.
		
		When ``n_resamples >= binom(n, k)``, an exact test is performed: the data
		are *partitioned* between the samples in each distinct way exactly once,
		and the exact null distribution is formed.
		Note that for a given partitioning of the data between the samples,
		only one ordering/permutation of the data *within* each sample is
		considered. For statistics that do not depend on the order of the data
		within samples, this dramatically reduces computational cost without
		affecting the shape of the null distribution (because the frequency/count
		of each value is affected by the same factor).
		
		For ``a = [a1, a2, a3, a4]`` and ``b = [b1, b2, b3]``, an example of this
		permutation type is ``x = [b3, a1, a2, b2]`` and ``y = [a4, b1, a3]``.
		Because only one ordering/permutation of the data *within* each sample
		is considered in an exact test, a resampling like ``x = [b3, a1, b2, a2]``
		and ``y = [a4, a3, b1]`` would *not* be considered distinct from the
		example above.
		
		``permutation_type='independent'`` does not support one-sample statistics,
		but it can be applied to statistics with more than two samples. In this
		case, if ``n`` is an array of the number of observations within each
		sample, the number of distinct partitions is::
		
		    np.product([binom(sum(n[i:]), sum(n[i+1:])) for i in range(len(n)-1)])
		
		**Paired statistics, permute pairings** (``permutation_type='pairings'``):
		
		The null hypothesis associated with this permutation type is that
		observations within each sample are drawn from the same underlying
		distribution and that pairings with elements of other samples are
		assigned at random.
		
		Suppose ``data`` contains only one sample; e.g. ``a, = data``, and we
		wish to consider all possible pairings of elements of ``a`` with elements
		of a second sample, ``b``. Let ``n`` be the number of observations in
		``a``, which must also equal the number of observations in ``b``.
		
		When ``1 < n_resamples < factorial(n)``, the elements of ``a`` are
		randomly permuted. The user-supplied statistic accepts one data argument,
		say ``a_perm``, and calculates the statistic considering ``a_perm`` and
		``b``. This process is performed repeatedly, `permutation` times,
		generating a distribution of the statistic under the null hypothesis.
		The statistic of the original data is compared to this distribution to
		determine the p-value.
		
		When ``n_resamples >= factorial(n)``, an exact test is performed:
		``a`` is permuted in each distinct way exactly once. Therefore, the
		`statistic` is computed for each unique pairing of samples between ``a``
		and ``b`` exactly once.
		
		For ``a = [a1, a2, a3]`` and ``b = [b1, b2, b3]``, an example of this
		permutation type is ``a_perm = [a3, a1, a2]`` while ``b`` is left
		in its original order.
		
		``permutation_type='pairings'`` supports ``data`` containing any number
		of samples, each of which must contain the same number of observations.
		All samples provided in ``data`` are permuted *independently*. Therefore,
		if ``m`` is the number of samples and ``n`` is the number of observations
		within each sample, then the number of permutations in an exact test is::
		
		    factorial(n)**m
		
		Note that if a two-sample statistic, for example, does not inherently
		depend on the order in which observations are provided - only on the
		*pairings* of observations - then only one of the two samples should be
		provided in ``data``. This dramatically reduces computational cost without
		affecting the shape of the null distribution (because the frequency/count
		of each value is affected by the same factor).
		
		**Paired statistics, permute samples** (``permutation_type='samples'``):
		
		The null hypothesis associated with this permutation type is that
		observations within each pair are drawn from the same underlying
		distribution and that the sample to which they are assigned is random.
		
		Suppose ``data`` contains two samples; e.g. ``a, b = data``.
		Let ``n`` be the number of observations in ``a``, which must also equal
		the number of observations in ``b``.
		
		When ``1 < n_resamples < 2**n``, the elements of ``a`` are ``b`` are
		randomly swapped between samples (maintaining their pairings) and the
		statistic is calculated. This process is performed repeatedly,
		`permutation` times,  generating a distribution of the statistic under the
		null hypothesis. The statistic of the original data is compared to this
		distribution to determine the p-value.
		
		When ``n_resamples >= 2**n``, an exact test is performed: the observations
		are assigned to the two samples in each distinct way (while maintaining
		pairings) exactly once.
		
		For ``a = [a1, a2, a3]`` and ``b = [b1, b2, b3]``, an example of this
		permutation type is ``x = [b1, a2, b3]`` and ``y = [a1, b2, a3]``.
		
		``permutation_type='samples'`` supports ``data`` containing any number
		of samples, each of which must contain the same number of observations.
		If ``data`` contains more than one sample, paired observations within
		``data`` are exchanged between samples *independently*. Therefore, if ``m``
		is the number of samples and ``n`` is the number of observations within
		each sample, then the number of permutations in an exact test is::
		
		    factorial(m)**n
		
		Several paired-sample statistical tests, such as the Wilcoxon signed rank
		test and paired-sample t-test, can be performed considering only the
		*difference* between two paired elements. Accordingly, if ``data`` contains
		only one sample, then the null distribution is formed by independently
		changing the *sign* of each observation.
		
		References
		----------
		
		.. [1] R. A. Fisher. The Design of Experiments, 6th Ed (1951).
		.. [2] B. Phipson and G. K. Smyth. "Permutation P-values Should Never Be
		   Zero: Calculating Exact P-values When Permutations Are Randomly Drawn."
		   Statistical Applications in Genetics and Molecular Biology 9.1 (2010).
		.. [3] M. D. Ernst. "Permutation Methods: A Basis for Exact Inference".
		   Statistical Science (2004).
		.. [4] B. Efron and R. J. Tibshirani. An Introduction to the Bootstrap
		   (1993).
		
		Examples
		--------
		
		Suppose we wish to test whether two samples are drawn from the same
		distribution. Assume that the underlying distributions are unknown to us,
		and that before observing the data, we hypothesized that the mean of the
		first sample would be less than that of the second sample. We decide that
		we will use the difference between the sample means as a test statistic,
		and we will consider a p-value of 0.05 to be statistically significant.
		
		For efficiency, we write the function defining the test statistic in a
		vectorized fashion: the samples ``x`` and ``y`` can be ND arrays, and the
		statistic will be calculated for each axis-slice along `axis`.
		
		>>> def statistic(x, y, axis):
		...     return np.mean(x, axis=axis) - np.mean(y, axis=axis)
		
		After collecting our data, we calculate the observed value of the test
		statistic.
		
		>>> from scipy.stats import norm
		>>> rng = np.random.default_rng()
		>>> x = norm.rvs(size=5, random_state=rng)
		>>> y = norm.rvs(size=6, loc = 3, random_state=rng)
		>>> statistic(x, y, 0)
		-3.5411688580987266
		
		Indeed, the test statistic is negative, suggesting that the true mean of
		the distribution underlying ``x`` is less than that of the distribution
		underlying ``y``. To determine the probability of this occuring by chance
		if the two samples were drawn from the same distribution, we perform
		a permutation test.
		
		>>> from scipy.stats import permutation_test
		>>> # because our statistic is vectorized, we pass `vectorized=True`
		>>> # `n_resamples=np.inf` indicates that an exact test is to be performed
		>>> res = permutation_test((x, y), statistic, vectorized=True,
		...                        n_resamples=np.inf, alternative='less')
		>>> print(res.statistic)
		-3.5411688580987266
		>>> print(res.pvalue)
		0.004329004329004329
		
		The probability of obtaining a test statistic less than or equal to the
		observed value under the null hypothesis is 0.4329%. This is less than our
		chosen threshold of 5%, so we consider this to to be significant evidence
		against the null hypothesis in favor of the alternative.
		
		Because the size of the samples above was small, `permutation_test` could
		perform an exact test. For larger samples, we resort to a randomized
		permutation test.
		
		>>> x = norm.rvs(size=100, random_state=rng)
		>>> y = norm.rvs(size=120, loc=0.3, random_state=rng)
		>>> res = permutation_test((x, y), statistic, n_resamples=100000,
		...                        vectorized=True, alternative='less',
		...                        random_state=rng)
		>>> print(res.statistic)
		-0.5230459671240913
		>>> print(res.pvalue)
		0.00016999830001699983
		
		The approximate probability of obtaining a test statistic less than or
		equal to the observed value under the null hypothesis is 0.0225%. This is
		again less than our chosen threshold of 5%, so again we have significant
		evidence to reject the null hypothesis in favor of the alternative.
		
		For large samples and number of permutations, the result is comparable to
		that of the corresponding asymptotic test, the independent sample t-test.
		
		>>> from scipy.stats import ttest_ind
		>>> res_asymptotic = ttest_ind(x, y, alternative='less')
		>>> print(res_asymptotic.pvalue)
		0.00012688101537979522
		
		The permutation distribution of the test statistic is provided for
		further investigation.
		
		>>> import matplotlib.pyplot as plt
		>>> plt.hist(res.null_distribution, bins=50)
		>>> plt.title("Permutation distribution of test statistic")
		>>> plt.xlabel("Value of Statistic")
		>>> plt.ylabel("Frequency")
	**/
	static public function permutation_test(data:Dynamic, statistic:Dynamic, ?permutation_type:Dynamic, ?vectorized:Dynamic, ?n_resamples:Dynamic, ?batch:Dynamic, ?alternative:Dynamic, ?axis:Dynamic, ?random_state:Dynamic):Dynamic;
	/**
		A Planck discrete exponential random variable.
		
		As an instance of the `rv_discrete` class, `planck` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(lambda_, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, lambda_, loc=0)
		    Probability mass function.
		logpmf(k, lambda_, loc=0)
		    Log of the probability mass function.
		cdf(k, lambda_, loc=0)
		    Cumulative distribution function.
		logcdf(k, lambda_, loc=0)
		    Log of the cumulative distribution function.
		sf(k, lambda_, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, lambda_, loc=0)
		    Log of the survival function.
		ppf(q, lambda_, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, lambda_, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(lambda_, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(lambda_, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(lambda_,), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(lambda_, loc=0)
		    Median of the distribution.
		mean(lambda_, loc=0)
		    Mean of the distribution.
		var(lambda_, loc=0)
		    Variance of the distribution.
		std(lambda_, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, lambda_, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability mass function for `planck` is:
		
		.. math::
		
		    f(k) = (1-\exp(-\lambda)) \exp(-\lambda k)
		
		for :math:`k \ge 0` and :math:`\lambda > 0`.
		
		`planck` takes :math:`\lambda` as shape parameter. The Planck distribution
		can be written as a geometric distribution (`geom`) with
		:math:`p = 1 - \exp(-\lambda)` shifted by ``loc = -1``.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``planck.pmf(k, lambda_, loc)`` is identically
		equivalent to ``planck.pmf(k - loc, lambda_)``.
		
		See Also
		--------
		geom
		
		Examples
		--------
		>>> from scipy.stats import planck
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> lambda_ = 0.51
		>>> mean, var, skew, kurt = planck.stats(lambda_, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(planck.ppf(0.01, lambda_),
		...               planck.ppf(0.99, lambda_))
		>>> ax.plot(x, planck.pmf(x, lambda_), 'bo', ms=8, label='planck pmf')
		>>> ax.vlines(x, 0, planck.pmf(x, lambda_), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = planck(lambda_)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = planck.cdf(x, lambda_)
		>>> np.allclose(x, planck.ppf(prob, lambda_))
		True
		
		Generate random numbers:
		
		>>> r = planck.rvs(lambda_, size=1000)
	**/
	static public function planck(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate a point biserial correlation coefficient and its p-value.
		
		The point biserial correlation is used to measure the relationship
		between a binary variable, x, and a continuous variable, y. Like other
		correlation coefficients, this one varies between -1 and +1 with 0
		implying no correlation. Correlations of -1 or +1 imply a determinative
		relationship.
		
		This function uses a shortcut formula but produces the same result as
		`pearsonr`.
		
		Parameters
		----------
		x : array_like of bools
		    Input array.
		y : array_like
		    Input array.
		
		Returns
		-------
		correlation : float
		    R value.
		pvalue : float
		    Two-sided p-value.
		
		Notes
		-----
		`pointbiserialr` uses a t-test with ``n-1`` degrees of freedom.
		It is equivalent to `pearsonr`.
		
		The value of the point-biserial correlation can be calculated from:
		
		.. math::
		
		    r_{pb} = \frac{\overline{Y_{1}} -
		             \overline{Y_{0}}}{s_{y}}\sqrt{\frac{N_{1} N_{2}}{N (N - 1))}}
		
		Where :math:`Y_{0}` and :math:`Y_{1}` are means of the metric
		observations coded 0 and 1 respectively; :math:`N_{0}` and :math:`N_{1}`
		are number of observations coded 0 and 1 respectively; :math:`N` is the
		total number of observations and :math:`s_{y}` is the standard
		deviation of all the metric observations.
		
		A value of :math:`r_{pb}` that is significantly different from zero is
		completely equivalent to a significant difference in means between the two
		groups. Thus, an independent groups t Test with :math:`N-2` degrees of
		freedom may be used to test whether :math:`r_{pb}` is nonzero. The
		relation between the t-statistic for comparing two independent groups and
		:math:`r_{pb}` is given by:
		
		.. math::
		
		    t = \sqrt{N - 2}\frac{r_{pb}}{\sqrt{1 - r^{2}_{pb}}}
		
		References
		----------
		.. [1] J. Lev, "The Point Biserial Coefficient of Correlation", Ann. Math.
		       Statist., Vol. 20, no.1, pp. 125-126, 1949.
		
		.. [2] R.F. Tate, "Correlation Between a Discrete and a Continuous
		       Variable. Point-Biserial Correlation.", Ann. Math. Statist., Vol. 25,
		       np. 3, pp. 603-607, 1954.
		
		.. [3] D. Kornbrot "Point Biserial Correlation", In Wiley StatsRef:
		       Statistics Reference Online (eds N. Balakrishnan, et al.), 2014.
		       :doi:`10.1002/9781118445112.stat06227`
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.array([0, 0, 0, 1, 1, 1, 1])
		>>> b = np.arange(7)
		>>> stats.pointbiserialr(a, b)
		(0.8660254037844386, 0.011724811003954652)
		>>> stats.pearsonr(a, b)
		(0.86602540378443871, 0.011724811003954626)
		>>> np.corrcoef(a, b)
		array([[ 1.       ,  0.8660254],
		       [ 0.8660254,  1.       ]])
	**/
	static public function pointbiserialr(x:Dynamic, y:Dynamic):Float;
	/**
		A Poisson discrete random variable.
		
		As an instance of the `rv_discrete` class, `poisson` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(mu, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, mu, loc=0)
		    Probability mass function.
		logpmf(k, mu, loc=0)
		    Log of the probability mass function.
		cdf(k, mu, loc=0)
		    Cumulative distribution function.
		logcdf(k, mu, loc=0)
		    Log of the cumulative distribution function.
		sf(k, mu, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, mu, loc=0)
		    Log of the survival function.
		ppf(q, mu, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, mu, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(mu, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(mu, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(mu,), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(mu, loc=0)
		    Median of the distribution.
		mean(mu, loc=0)
		    Mean of the distribution.
		var(mu, loc=0)
		    Variance of the distribution.
		std(mu, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, mu, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability mass function for `poisson` is:
		
		.. math::
		
		    f(k) = \exp(-\mu) \frac{\mu^k}{k!}
		
		for :math:`k \ge 0`.
		
		`poisson` takes :math:`\mu \geq 0` as shape parameter.
		When :math:`\mu = 0`, the ``pmf`` method
		returns ``1.0`` at quantile :math:`k = 0`.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``poisson.pmf(k, mu, loc)`` is identically
		equivalent to ``poisson.pmf(k - loc, mu)``.
		
		Examples
		--------
		>>> from scipy.stats import poisson
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> mu = 0.6
		>>> mean, var, skew, kurt = poisson.stats(mu, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(poisson.ppf(0.01, mu),
		...               poisson.ppf(0.99, mu))
		>>> ax.plot(x, poisson.pmf(x, mu), 'bo', ms=8, label='poisson pmf')
		>>> ax.vlines(x, 0, poisson.pmf(x, mu), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = poisson(mu)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = poisson.cdf(x, mu)
		>>> np.allclose(x, poisson.ppf(prob, mu))
		True
		
		Generate random numbers:
		
		>>> r = poisson.rvs(mu, size=1000)
	**/
	static public function poisson(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cressie-Read power divergence statistic and goodness of fit test.
		
		This function tests the null hypothesis that the categorical data
		has the given frequencies, using the Cressie-Read power divergence
		statistic.
		
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
		lambda_ : float or str, optional
		    The power in the Cressie-Read power divergence statistic.  The default
		    is 1.  For convenience, `lambda_` may be assigned one of the following
		    strings, in which case the corresponding numerical value is used:
		
		    * ``"pearson"`` (value 1)
		        Pearson's chi-squared statistic. In this case, the function is
		        equivalent to `chisquare`.
		    * ``"log-likelihood"`` (value 0)
		        Log-likelihood ratio. Also known as the G-test [3]_.
		    * ``"freeman-tukey"`` (value -1/2)
		        Freeman-Tukey statistic.
		    * ``"mod-log-likelihood"`` (value -1)
		        Modified log-likelihood ratio.
		    * ``"neyman"`` (value -2)
		        Neyman's statistic.
		    * ``"cressie-read"`` (value 2/3)
		        The power recommended in [5]_.
		
		Returns
		-------
		statistic : float or ndarray
		    The Cressie-Read power divergence test statistic.  The value is
		    a float if `axis` is None or if` `f_obs` and `f_exp` are 1-D.
		pvalue : float or ndarray
		    The p-value of the test.  The value is a float if `ddof` and the
		    return value `stat` are scalars.
		
		See Also
		--------
		chisquare
		
		Notes
		-----
		This test is invalid when the observed or expected frequencies in each
		category are too small.  A typical rule is that all of the observed
		and expected frequencies should be at least 5.
		
		Also, the sum of the observed and expected frequencies must be the same
		for the test to be valid; `power_divergence` raises an error if the sums
		do not agree within a relative tolerance of ``1e-8``.
		
		When `lambda_` is less than zero, the formula for the statistic involves
		dividing by `f_obs`, so a warning or error may be generated if any value
		in `f_obs` is 0.
		
		Similarly, a warning or error may be generated if any value in `f_exp` is
		zero when `lambda_` >= 0.
		
		The default degrees of freedom, k-1, are for the case when no parameters
		of the distribution are estimated. If p parameters are estimated by
		efficient maximum likelihood then the correct degrees of freedom are
		k-1-p. If the parameters are estimated in a different way, then the
		dof can be between k-1-p and k-1. However, it is also possible that
		the asymptotic distribution is not a chisquare, in which case this
		test is not appropriate.
		
		This function handles masked arrays.  If an element of `f_obs` or `f_exp`
		is masked, then data at that position is ignored, and does not count
		towards the size of the data set.
		
		.. versionadded:: 0.13.0
		
		References
		----------
		.. [1] Lowry, Richard.  "Concepts and Applications of Inferential
		       Statistics". Chapter 8.
		       https://web.archive.org/web/20171015035606/http://faculty.vassar.edu/lowry/ch8pt1.html
		.. [2] "Chi-squared test", https://en.wikipedia.org/wiki/Chi-squared_test
		.. [3] "G-test", https://en.wikipedia.org/wiki/G-test
		.. [4] Sokal, R. R. and Rohlf, F. J. "Biometry: the principles and
		       practice of statistics in biological research", New York: Freeman
		       (1981)
		.. [5] Cressie, N. and Read, T. R. C., "Multinomial Goodness-of-Fit
		       Tests", J. Royal Stat. Soc. Series B, Vol. 46, No. 3 (1984),
		       pp. 440-464.
		
		Examples
		--------
		(See `chisquare` for more examples.)
		
		When just `f_obs` is given, it is assumed that the expected frequencies
		are uniform and given by the mean of the observed frequencies.  Here we
		perform a G-test (i.e. use the log-likelihood ratio statistic):
		
		>>> from scipy.stats import power_divergence
		>>> power_divergence([16, 18, 16, 14, 12, 12], lambda_='log-likelihood')
		(2.006573162632538, 0.84823476779463769)
		
		The expected frequencies can be given with the `f_exp` argument:
		
		>>> power_divergence([16, 18, 16, 14, 12, 12],
		...                  f_exp=[16, 16, 16, 16, 16, 8],
		...                  lambda_='log-likelihood')
		(3.3281031458963746, 0.6495419288047497)
		
		When `f_obs` is 2-D, by default the test is applied to each column.
		
		>>> obs = np.array([[16, 18, 16, 14, 12, 12], [32, 24, 16, 28, 20, 24]]).T
		>>> obs.shape
		(6, 2)
		>>> power_divergence(obs, lambda_="log-likelihood")
		(array([ 2.00657316,  6.77634498]), array([ 0.84823477,  0.23781225]))
		
		By setting ``axis=None``, the test is applied to all data in the array,
		which is equivalent to applying the test to the flattened array.
		
		>>> power_divergence(obs, axis=None)
		(23.31034482758621, 0.015975692534127565)
		>>> power_divergence(obs.ravel())
		(23.31034482758621, 0.015975692534127565)
		
		`ddof` is the change to make to the default degrees of freedom.
		
		>>> power_divergence([16, 18, 16, 14, 12, 12], ddof=1)
		(2.0, 0.73575888234288467)
		
		The calculation of the p-values is done by broadcasting the
		test statistic with `ddof`.
		
		>>> power_divergence([16, 18, 16, 14, 12, 12], ddof=[0,1,2])
		(2.0, array([ 0.84914504,  0.73575888,  0.5724067 ]))
		
		`f_obs` and `f_exp` are also broadcast.  In the following, `f_obs` has
		shape (6,) and `f_exp` has shape (2, 6), so the result of broadcasting
		`f_obs` and `f_exp` has shape (2, 6).  To compute the desired chi-squared
		statistics, we must use ``axis=1``:
		
		>>> power_divergence([16, 18, 16, 14, 12, 12],
		...                  f_exp=[[16, 16, 16, 16, 16, 8],
		...                         [8, 20, 20, 16, 12, 12]],
		...                  axis=1)
		(array([ 3.5 ,  9.25]), array([ 0.62338763,  0.09949846]))
	**/
	static public function power_divergence(f_obs:Dynamic, ?f_exp:Dynamic, ?ddof:Dynamic, ?axis:Dynamic, ?lambda_:Dynamic):Dynamic;
	/**
		A power-function continuous random variable.
		
		As an instance of the `rv_continuous` class, `powerlaw` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0, scale=1)
		    Median of the distribution.
		mean(a, loc=0, scale=1)
		    Mean of the distribution.
		var(a, loc=0, scale=1)
		    Variance of the distribution.
		std(a, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `powerlaw` is:
		
		.. math::
		
		    f(x, a) = a x^{a-1}
		
		for :math:`0 \le x \le 1`, :math:`a > 0`.
		
		`powerlaw` takes ``a`` as a shape parameter for :math:`a`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``powerlaw.pdf(x, a, loc, scale)`` is identically
		equivalent to ``powerlaw.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		`powerlaw` is a special case of `beta` with ``b=1``.
		
		Examples
		--------
		>>> from scipy.stats import powerlaw
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a = 1.66
		>>> mean, var, skew, kurt = powerlaw.stats(a, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(powerlaw.ppf(0.01, a),
		...                 powerlaw.ppf(0.99, a), 100)
		>>> ax.plot(x, powerlaw.pdf(x, a),
		...        'r-', lw=5, alpha=0.6, label='powerlaw pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = powerlaw(a)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = powerlaw.ppf([0.001, 0.5, 0.999], a)
		>>> np.allclose([0.001, 0.5, 0.999], powerlaw.cdf(vals, a))
		True
		
		Generate random numbers:
		
		>>> r = powerlaw.rvs(a, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function powerlaw(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A power log-normal continuous random variable.
		
		As an instance of the `rv_continuous` class, `powerlognorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, s, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, s, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, s, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, s, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, s, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, s, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, s, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, s, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, s, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, s, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, s, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, s, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c, s), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, s, loc=0, scale=1)
		    Median of the distribution.
		mean(c, s, loc=0, scale=1)
		    Mean of the distribution.
		var(c, s, loc=0, scale=1)
		    Variance of the distribution.
		std(c, s, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, s, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `powerlognorm` is:
		
		.. math::
		
		    f(x, c, s) = \frac{c}{x s} \phi(\log(x)/s)
		                 (\Phi(-\log(x)/s))^{c-1}
		
		where :math:`\phi` is the normal pdf, and :math:`\Phi` is the normal cdf,
		and :math:`x > 0`, :math:`s, c > 0`.
		
		`powerlognorm` takes :math:`c` and :math:`s` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``powerlognorm.pdf(x, c, s, loc, scale)`` is identically
		equivalent to ``powerlognorm.pdf(y, c, s) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import powerlognorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c, s = 2.14, 0.446
		>>> mean, var, skew, kurt = powerlognorm.stats(c, s, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(powerlognorm.ppf(0.01, c, s),
		...                 powerlognorm.ppf(0.99, c, s), 100)
		>>> ax.plot(x, powerlognorm.pdf(x, c, s),
		...        'r-', lw=5, alpha=0.6, label='powerlognorm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = powerlognorm(c, s)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = powerlognorm.ppf([0.001, 0.5, 0.999], c, s)
		>>> np.allclose([0.001, 0.5, 0.999], powerlognorm.cdf(vals, c, s))
		True
		
		Generate random numbers:
		
		>>> r = powerlognorm.rvs(c, s, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function powerlognorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A power normal continuous random variable.
		
		As an instance of the `rv_continuous` class, `powernorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `powernorm` is:
		
		.. math::
		
		    f(x, c) = c \phi(x) (\Phi(-x))^{c-1}
		
		where :math:`\phi` is the normal pdf, and :math:`\Phi` is the normal cdf,
		and :math:`x >= 0`, :math:`c > 0`.
		
		`powernorm` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``powernorm.pdf(x, c, loc, scale)`` is identically
		equivalent to ``powernorm.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import powernorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 4.45
		>>> mean, var, skew, kurt = powernorm.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(powernorm.ppf(0.01, c),
		...                 powernorm.ppf(0.99, c), 100)
		>>> ax.plot(x, powernorm.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='powernorm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = powernorm(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = powernorm.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], powernorm.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = powernorm.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function powernorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the shape parameter that maximizes the PPCC.
		
		The probability plot correlation coefficient (PPCC) plot can be used
		to determine the optimal shape parameter for a one-parameter family
		of distributions. ``ppcc_max`` returns the shape parameter that would
		maximize the probability plot correlation coefficient for the given
		data to a one-parameter family of distributions.
		
		Parameters
		----------
		x : array_like
		    Input array.
		brack : tuple, optional
		    Triple (a,b,c) where (a<b<c). If bracket consists of two numbers (a, c)
		    then they are assumed to be a starting interval for a downhill bracket
		    search (see `scipy.optimize.brent`).
		dist : str or stats.distributions instance, optional
		    Distribution or distribution function name.  Objects that look enough
		    like a stats.distributions instance (i.e. they have a ``ppf`` method)
		    are also accepted.  The default is ``'tukeylambda'``.
		
		Returns
		-------
		shape_value : float
		    The shape parameter at which the probability plot correlation
		    coefficient reaches its max value.
		
		See Also
		--------
		ppcc_plot, probplot, boxcox
		
		Notes
		-----
		The brack keyword serves as a starting point which is useful in corner
		cases. One can use a plot to obtain a rough visual estimate of the location
		for the maximum to start the search near it.
		
		References
		----------
		.. [1] J.J. Filliben, "The Probability Plot Correlation Coefficient Test
		       for Normality", Technometrics, Vol. 17, pp. 111-117, 1975.
		.. [2] Engineering Statistics Handbook, NIST/SEMATEC,
		       https://www.itl.nist.gov/div898/handbook/eda/section3/ppccplot.htm
		
		Examples
		--------
		First we generate some random data from a Weibull distribution
		with shape parameter 2.5:
		
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.default_rng()
		>>> c = 2.5
		>>> x = stats.weibull_min.rvs(c, scale=4, size=2000, random_state=rng)
		
		Generate the PPCC plot for this data with the Weibull distribution.
		
		>>> fig, ax = plt.subplots(figsize=(8, 6))
		>>> res = stats.ppcc_plot(x, c/2, 2*c, dist='weibull_min', plot=ax)
		
		We calculate the value where the shape should reach its maximum and a
		red line is drawn there. The line should coincide with the highest
		point in the PPCC graph.
		
		>>> cmax = stats.ppcc_max(x, brack=(c/2, 2*c), dist='weibull_min')
		>>> ax.axvline(cmax, color='r')
		>>> plt.show()
	**/
	static public function ppcc_max(x:Dynamic, ?brack:Dynamic, ?dist:Dynamic):Float;
	/**
		Calculate and optionally plot probability plot correlation coefficient.
		
		The probability plot correlation coefficient (PPCC) plot can be used to
		determine the optimal shape parameter for a one-parameter family of
		distributions.  It cannot be used for distributions without shape
		parameters
		(like the normal distribution) or with multiple shape parameters.
		
		By default a Tukey-Lambda distribution (`stats.tukeylambda`) is used. A
		Tukey-Lambda PPCC plot interpolates from long-tailed to short-tailed
		distributions via an approximately normal one, and is therefore
		particularly useful in practice.
		
		Parameters
		----------
		x : array_like
		    Input array.
		a, b : scalar
		    Lower and upper bounds of the shape parameter to use.
		dist : str or stats.distributions instance, optional
		    Distribution or distribution function name.  Objects that look enough
		    like a stats.distributions instance (i.e. they have a ``ppf`` method)
		    are also accepted.  The default is ``'tukeylambda'``.
		plot : object, optional
		    If given, plots PPCC against the shape parameter.
		    `plot` is an object that has to have methods "plot" and "text".
		    The `matplotlib.pyplot` module or a Matplotlib Axes object can be used,
		    or a custom object with the same methods.
		    Default is None, which means that no plot is created.
		N : int, optional
		    Number of points on the horizontal axis (equally distributed from
		    `a` to `b`).
		
		Returns
		-------
		svals : ndarray
		    The shape values for which `ppcc` was calculated.
		ppcc : ndarray
		    The calculated probability plot correlation coefficient values.
		
		See Also
		--------
		ppcc_max, probplot, boxcox_normplot, tukeylambda
		
		References
		----------
		J.J. Filliben, "The Probability Plot Correlation Coefficient Test for
		Normality", Technometrics, Vol. 17, pp. 111-117, 1975.
		
		Examples
		--------
		First we generate some random data from a Weibull distribution
		with shape parameter 2.5, and plot the histogram of the data:
		
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.default_rng()
		>>> c = 2.5
		>>> x = stats.weibull_min.rvs(c, scale=4, size=2000, random_state=rng)
		
		Take a look at the histogram of the data.
		
		>>> fig1, ax = plt.subplots(figsize=(9, 4))
		>>> ax.hist(x, bins=50)
		>>> ax.set_title('Histogram of x')
		>>> plt.show()
		
		Now we explore this data with a PPCC plot as well as the related
		probability plot and Box-Cox normplot.  A red line is drawn where we
		expect the PPCC value to be maximal (at the shape parameter ``c``
		used above):
		
		>>> fig2 = plt.figure(figsize=(12, 4))
		>>> ax1 = fig2.add_subplot(1, 3, 1)
		>>> ax2 = fig2.add_subplot(1, 3, 2)
		>>> ax3 = fig2.add_subplot(1, 3, 3)
		>>> res = stats.probplot(x, plot=ax1)
		>>> res = stats.boxcox_normplot(x, -4, 4, plot=ax2)
		>>> res = stats.ppcc_plot(x, c/2, 2*c, dist='weibull_min', plot=ax3)
		>>> ax3.axvline(c, color='r')
		>>> plt.show()
	**/
	static public function ppcc_plot(x:Dynamic, a:Dynamic, b:Dynamic, ?dist:Dynamic, ?plot:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Calculate quantiles for a probability plot, and optionally show the plot.
		
		Generates a probability plot of sample data against the quantiles of a
		specified theoretical distribution (the normal distribution by default).
		`probplot` optionally calculates a best-fit line for the data and plots the
		results using Matplotlib or a given plot function.
		
		Parameters
		----------
		x : array_like
		    Sample/response data from which `probplot` creates the plot.
		sparams : tuple, optional
		    Distribution-specific shape parameters (shape parameters plus location
		    and scale).
		dist : str or stats.distributions instance, optional
		    Distribution or distribution function name. The default is 'norm' for a
		    normal probability plot.  Objects that look enough like a
		    stats.distributions instance (i.e. they have a ``ppf`` method) are also
		    accepted.
		fit : bool, optional
		    Fit a least-squares regression (best-fit) line to the sample data if
		    True (default).
		plot : object, optional
		    If given, plots the quantiles.
		    If given and `fit` is True, also plots the least squares fit.
		    `plot` is an object that has to have methods "plot" and "text".
		    The `matplotlib.pyplot` module or a Matplotlib Axes object can be used,
		    or a custom object with the same methods.
		    Default is None, which means that no plot is created.
		
		Returns
		-------
		(osm, osr) : tuple of ndarrays
		    Tuple of theoretical quantiles (osm, or order statistic medians) and
		    ordered responses (osr).  `osr` is simply sorted input `x`.
		    For details on how `osm` is calculated see the Notes section.
		(slope, intercept, r) : tuple of floats, optional
		    Tuple  containing the result of the least-squares fit, if that is
		    performed by `probplot`. `r` is the square root of the coefficient of
		    determination.  If ``fit=False`` and ``plot=None``, this tuple is not
		    returned.
		
		Notes
		-----
		Even if `plot` is given, the figure is not shown or saved by `probplot`;
		``plt.show()`` or ``plt.savefig('figname.png')`` should be used after
		calling `probplot`.
		
		`probplot` generates a probability plot, which should not be confused with
		a Q-Q or a P-P plot.  Statsmodels has more extensive functionality of this
		type, see ``statsmodels.api.ProbPlot``.
		
		The formula used for the theoretical quantiles (horizontal axis of the
		probability plot) is Filliben's estimate::
		
		    quantiles = dist.ppf(val), for
		
		            0.5**(1/n),                  for i = n
		      val = (i - 0.3175) / (n + 0.365),  for i = 2, ..., n-1
		            1 - 0.5**(1/n),              for i = 1
		
		where ``i`` indicates the i-th ordered value and ``n`` is the total number
		of values.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> nsample = 100
		>>> rng = np.random.default_rng()
		
		A t distribution with small degrees of freedom:
		
		>>> ax1 = plt.subplot(221)
		>>> x = stats.t.rvs(3, size=nsample, random_state=rng)
		>>> res = stats.probplot(x, plot=plt)
		
		A t distribution with larger degrees of freedom:
		
		>>> ax2 = plt.subplot(222)
		>>> x = stats.t.rvs(25, size=nsample, random_state=rng)
		>>> res = stats.probplot(x, plot=plt)
		
		A mixture of two normal distributions with broadcasting:
		
		>>> ax3 = plt.subplot(223)
		>>> x = stats.norm.rvs(loc=[0,5], scale=[1,1.5],
		...                    size=(nsample//2,2), random_state=rng).ravel()
		>>> res = stats.probplot(x, plot=plt)
		
		A standard normal distribution:
		
		>>> ax4 = plt.subplot(224)
		>>> x = stats.norm.rvs(loc=0, scale=1, size=nsample, random_state=rng)
		>>> res = stats.probplot(x, plot=plt)
		
		Produce a new figure with a loggamma distribution, using the ``dist`` and
		``sparams`` keywords:
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> x = stats.loggamma.rvs(c=2.5, size=500, random_state=rng)
		>>> res = stats.probplot(x, dist=stats.loggamma, sparams=(2.5,), plot=ax)
		>>> ax.set_title("Probplot for loggamma dist with shape parameter 2.5")
		
		Show the results with Matplotlib:
		
		>>> plt.show()
	**/
	static public function probplot(x:Dynamic, ?sparams:Dynamic, ?dist:Dynamic, ?fit:Dynamic, ?plot:Dynamic, ?rvalue:Dynamic):Dynamic;
	/**
		A uniform discrete random variable.
		
		As an instance of the `rv_discrete` class, `randint` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(low, high, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, low, high, loc=0)
		    Probability mass function.
		logpmf(k, low, high, loc=0)
		    Log of the probability mass function.
		cdf(k, low, high, loc=0)
		    Cumulative distribution function.
		logcdf(k, low, high, loc=0)
		    Log of the cumulative distribution function.
		sf(k, low, high, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, low, high, loc=0)
		    Log of the survival function.
		ppf(q, low, high, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, low, high, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(low, high, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(low, high, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(low, high), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(low, high, loc=0)
		    Median of the distribution.
		mean(low, high, loc=0)
		    Mean of the distribution.
		var(low, high, loc=0)
		    Variance of the distribution.
		std(low, high, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, low, high, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability mass function for `randint` is:
		
		.. math::
		
		    f(k) = \frac{1}{\texttt{high} - \texttt{low}}
		
		for :math:`k \in \{\texttt{low}, \dots, \texttt{high} - 1\}`.
		
		`randint` takes :math:`\texttt{low}` and :math:`\texttt{high}` as shape
		parameters.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``randint.pmf(k, low, high, loc)`` is identically
		equivalent to ``randint.pmf(k - loc, low, high)``.
		
		Examples
		--------
		>>> from scipy.stats import randint
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> low, high = 7, 31
		>>> mean, var, skew, kurt = randint.stats(low, high, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(randint.ppf(0.01, low, high),
		...               randint.ppf(0.99, low, high))
		>>> ax.plot(x, randint.pmf(x, low, high), 'bo', ms=8, label='randint pmf')
		>>> ax.vlines(x, 0, randint.pmf(x, low, high), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = randint(low, high)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = randint.cdf(x, low, high)
		>>> np.allclose(x, randint.ppf(prob, low, high))
		True
		
		Generate random numbers:
		
		>>> r = randint.rvs(low, high, size=1000)
	**/
	static public function randint(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var random_correlation : Dynamic;
	/**
		Assign ranks to data, dealing with ties appropriately.
		
		By default (``axis=None``), the data array is first flattened, and a flat
		array of ranks is returned. Separately reshape the rank array to the
		shape of the data array if desired (see Examples).
		
		Ranks begin at 1.  The `method` argument controls how ranks are assigned
		to equal values.  See [1]_ for further discussion of ranking methods.
		
		Parameters
		----------
		a : array_like
		    The array of values to be ranked.
		method : {'average', 'min', 'max', 'dense', 'ordinal'}, optional
		    The method used to assign ranks to tied elements.
		    The following methods are available (default is 'average'):
		
		      * 'average': The average of the ranks that would have been assigned to
		        all the tied values is assigned to each value.
		      * 'min': The minimum of the ranks that would have been assigned to all
		        the tied values is assigned to each value.  (This is also
		        referred to as "competition" ranking.)
		      * 'max': The maximum of the ranks that would have been assigned to all
		        the tied values is assigned to each value.
		      * 'dense': Like 'min', but the rank of the next highest element is
		        assigned the rank immediately after those assigned to the tied
		        elements.
		      * 'ordinal': All values are given a distinct rank, corresponding to
		        the order that the values occur in `a`.
		axis : {None, int}, optional
		    Axis along which to perform the ranking. If ``None``, the data array
		    is first flattened.
		
		Returns
		-------
		ranks : ndarray
		     An array of size equal to the size of `a`, containing rank
		     scores.
		
		References
		----------
		.. [1] "Ranking", https://en.wikipedia.org/wiki/Ranking
		
		Examples
		--------
		>>> from scipy.stats import rankdata
		>>> rankdata([0, 2, 3, 2])
		array([ 1. ,  2.5,  4. ,  2.5])
		>>> rankdata([0, 2, 3, 2], method='min')
		array([ 1,  2,  4,  2])
		>>> rankdata([0, 2, 3, 2], method='max')
		array([ 1,  3,  4,  3])
		>>> rankdata([0, 2, 3, 2], method='dense')
		array([ 1,  2,  3,  2])
		>>> rankdata([0, 2, 3, 2], method='ordinal')
		array([ 1,  2,  4,  3])
		>>> rankdata([[0, 2], [3, 2]]).reshape(2,2)
		array([[1. , 2.5],
		      [4. , 2.5]])
		>>> rankdata([[0, 2, 2], [3, 2, 5]], axis=1)
		array([[1. , 2.5, 2.5],
		       [2. , 1. , 3. ]])
	**/
	static public function rankdata(a:Dynamic, ?method:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the Wilcoxon rank-sum statistic for two samples.
		
		The Wilcoxon rank-sum test tests the null hypothesis that two sets
		of measurements are drawn from the same distribution.  The alternative
		hypothesis is that values in one sample are more likely to be
		larger than the values in the other sample.
		
		This test should be used to compare two samples from continuous
		distributions.  It does not handle ties between measurements
		in x and y.  For tie-handling and an optional continuity correction
		see `scipy.stats.mannwhitneyu`.
		
		Parameters
		----------
		x,y : array_like
		    The data from the two samples.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		    
		    * 'two-sided': one of the distributions (underlying `x` or `y`) is
		      stochastically greater than the other.
		    * 'less': the distribution underlying `x` is stochastically less
		      than the distribution underlying `y`.
		    * 'greater': the distribution underlying `x` is stochastically greater
		      than the distribution underlying `y`.
		    
		    .. versionadded:: 1.7.0
		axis : int or None, default: 0
		    If an int, the axis of the input along which to compute the statistic.
		    The statistic of each axis-slice (e.g. row) of the input will appear in a
		    corresponding element of the output.
		    If ``None``, the input will be raveled before computing the statistic.
		nan_policy : {'propagate', 'omit', 'raise'}
		    Defines how to handle input NaNs.
		    
		    - ``propagate``: if a NaN is present in the axis slice (e.g. row) along
		      which the  statistic is computed, the corresponding entry of the output
		      will be NaN.
		    - ``omit``: NaNs will be omitted when performing the calculation.
		      If insufficient data remains in the axis slice along which the
		      statistic is computed, the corresponding entry of the output will be
		      NaN.
		    - ``raise``: if a NaN is present, a ``ValueError`` will be raised.
		
		Returns
		-------
		statistic : float
		    The test statistic under the large-sample approximation that the
		    rank sum statistic is normally distributed.
		pvalue : float
		    The p-value of the test.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Wilcoxon_rank-sum_test
		
		Examples
		--------
		We can test the hypothesis that two independent unequal-sized samples are
		drawn from the same distribution with computing the Wilcoxon rank-sum
		statistic.
		
		>>> from scipy.stats import ranksums
		>>> rng = np.random.default_rng()
		>>> sample1 = rng.uniform(-1, 1, 200)
		>>> sample2 = rng.uniform(-0.5, 1.5, 300) # a shifted distribution
		>>> ranksums(sample1, sample2)
		RanksumsResult(statistic=-7.887059, pvalue=3.09390448e-15)  # may vary
		>>> ranksums(sample1, sample2, alternative='less')
		RanksumsResult(statistic=-7.750585297581713, pvalue=4.573497606342543e-15) # may vary
		>>> ranksums(sample1, sample2, alternative='greater')
		RanksumsResult(statistic=-7.750585297581713, pvalue=0.9999999999999954) # may vary
		
		The p-value of less than ``0.05`` indicates that this test rejects the
		hypothesis at the 5% significance level.
	**/
	static public function ranksums(x:Dynamic, y:Dynamic, ?alternative:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		A Rayleigh continuous random variable.
		
		As an instance of the `rv_continuous` class, `rayleigh` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `rayleigh` is:
		
		.. math::
		
		    f(x) = x \exp(-x^2/2)
		
		for :math:`x \ge 0`.
		
		`rayleigh` is a special case of `chi` with ``df=2``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``rayleigh.pdf(x, loc, scale)`` is identically
		equivalent to ``rayleigh.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import rayleigh
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = rayleigh.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(rayleigh.ppf(0.01),
		...                 rayleigh.ppf(0.99), 100)
		>>> ax.plot(x, rayleigh.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='rayleigh pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = rayleigh()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = rayleigh.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], rayleigh.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = rayleigh.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function rayleigh(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An R-distributed (symmetric beta) continuous random variable.
		
		As an instance of the `rv_continuous` class, `rdist` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `rdist` is:
		
		.. math::
		
		    f(x, c) = \frac{(1-x^2)^{c/2-1}}{B(1/2, c/2)}
		
		for :math:`-1 \le x \le 1`, :math:`c > 0`. `rdist` is also called the
		symmetric beta distribution: if B has a `beta` distribution with
		parameters (c/2, c/2), then X = 2*B - 1 follows a R-distribution with
		parameter c.
		
		`rdist` takes ``c`` as a shape parameter for :math:`c`.
		
		This distribution includes the following distribution kernels as
		special cases::
		
		    c = 2:  uniform
		    c = 3:  `semicircular`
		    c = 4:  Epanechnikov (parabolic)
		    c = 6:  quartic (biweight)
		    c = 8:  triweight
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``rdist.pdf(x, c, loc, scale)`` is identically
		equivalent to ``rdist.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import rdist
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 1.6
		>>> mean, var, skew, kurt = rdist.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(rdist.ppf(0.01, c),
		...                 rdist.ppf(0.99, c), 100)
		>>> ax.plot(x, rdist.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='rdist pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = rdist(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = rdist.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], rdist.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = rdist.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function rdist(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A reciprocal inverse Gaussian continuous random variable.
		
		As an instance of the `rv_continuous` class, `recipinvgauss` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(mu, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, mu, loc=0, scale=1)
		    Probability density function.
		logpdf(x, mu, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, mu, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, mu, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, mu, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, mu, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, mu, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, mu, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, mu, loc=0, scale=1)
		    Non-central moment of order n
		stats(mu, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(mu, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(mu,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(mu, loc=0, scale=1)
		    Median of the distribution.
		mean(mu, loc=0, scale=1)
		    Mean of the distribution.
		var(mu, loc=0, scale=1)
		    Variance of the distribution.
		std(mu, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, mu, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `recipinvgauss` is:
		
		.. math::
		
		    f(x, \mu) = \frac{1}{\sqrt{2\pi x}}
		                \exp\left(\frac{-(1-\mu x)^2}{2\mu^2x}\right)
		
		for :math:`x \ge 0`.
		
		`recipinvgauss` takes ``mu`` as a shape parameter for :math:`\mu`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``recipinvgauss.pdf(x, mu, loc, scale)`` is identically
		equivalent to ``recipinvgauss.pdf(y, mu) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import recipinvgauss
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> mu = 0.63
		>>> mean, var, skew, kurt = recipinvgauss.stats(mu, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(recipinvgauss.ppf(0.01, mu),
		...                 recipinvgauss.ppf(0.99, mu), 100)
		>>> ax.plot(x, recipinvgauss.pdf(x, mu),
		...        'r-', lw=5, alpha=0.6, label='recipinvgauss pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = recipinvgauss(mu)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = recipinvgauss.ppf([0.001, 0.5, 0.999], mu)
		>>> np.allclose([0.001, 0.5, 0.999], recipinvgauss.cdf(vals, mu))
		True
		
		Generate random numbers:
		
		>>> r = recipinvgauss.rvs(mu, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function recipinvgauss(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A loguniform or reciprocal continuous random variable.
		
		As an instance of the `rv_continuous` class, `reciprocal` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, b, loc=0, scale=1)
		    Median of the distribution.
		mean(a, b, loc=0, scale=1)
		    Mean of the distribution.
		var(a, b, loc=0, scale=1)
		    Variance of the distribution.
		std(a, b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for this class is:
		
		.. math::
		
		    f(x, a, b) = \frac{1}{x \log(b/a)}
		
		for :math:`a \le x \le b`, :math:`b > a > 0`. This class takes
		:math:`a` and :math:`b` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``reciprocal.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``reciprocal.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import reciprocal
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, b = 0.01, 1.25
		>>> mean, var, skew, kurt = reciprocal.stats(a, b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(reciprocal.ppf(0.01, a, b),
		...                 reciprocal.ppf(0.99, a, b), 100)
		>>> ax.plot(x, reciprocal.pdf(x, a, b),
		...        'r-', lw=5, alpha=0.6, label='reciprocal pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = reciprocal(a, b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = reciprocal.ppf([0.001, 0.5, 0.999], a, b)
		>>> np.allclose([0.001, 0.5, 0.999], reciprocal.cdf(vals, a, b))
		True
		
		Generate random numbers:
		
		>>> r = reciprocal.rvs(a, b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		
		This doesn't show the equal probability of ``0.01``, ``0.1`` and
		``1``. This is best when the x-axis is log-scaled:
		
		>>> import numpy as np
		>>> fig, ax = plt.subplots(1, 1)
		>>> ax.hist(np.log10(r))
		>>> ax.set_ylabel("Frequency")
		>>> ax.set_xlabel("Value of random variable")
		>>> ax.xaxis.set_major_locator(plt.FixedLocator([-2, -1, 0]))
		>>> ticks = ["$10^{{ {} }}$".format(i) for i in [-2, -1, 0]]
		>>> ax.set_xticklabels(ticks)  # doctest: +SKIP
		>>> plt.show()
		
		This random variable will be log-uniform regardless of the base chosen for
		``a`` and ``b``. Let's specify with base ``2`` instead:
		
		>>> rvs = reciprocal(2**-2, 2**0).rvs(size=1000)
		
		Values of ``1/4``, ``1/2`` and ``1`` are equally likely with this random
		variable.  Here's the histogram:
		
		>>> fig, ax = plt.subplots(1, 1)
		>>> ax.hist(np.log2(rvs))
		>>> ax.set_ylabel("Frequency")
		>>> ax.set_xlabel("Value of random variable")
		>>> ax.xaxis.set_major_locator(plt.FixedLocator([-2, -1, 0]))
		>>> ticks = ["$2^{{ {} }}$".format(i) for i in [-2, -1, 0]]
		>>> ax.set_xticklabels(ticks)  # doctest: +SKIP
		>>> plt.show()
	**/
	static public function reciprocal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a relative frequency histogram, using the histogram function.
		
		A relative frequency  histogram is a mapping of the number of
		observations in each of the bins relative to the total of observations.
		
		Parameters
		----------
		a : array_like
		    Input array.
		numbins : int, optional
		    The number of bins to use for the histogram. Default is 10.
		defaultreallimits : tuple (lower, upper), optional
		    The lower and upper values for the range of the histogram.
		    If no value is given, a range slightly larger than the range of the
		    values in a is used. Specifically ``(a.min() - s, a.max() + s)``,
		    where ``s = (1/2)(a.max() - a.min()) / (numbins - 1)``.
		weights : array_like, optional
		    The weights for each value in `a`. Default is None, which gives each
		    value a weight of 1.0
		
		Returns
		-------
		frequency : ndarray
		    Binned values of relative frequency.
		lowerlimit : float
		    Lower real limit.
		binsize : float
		    Width of each bin.
		extrapoints : int
		    Extra points.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from numpy.random import default_rng
		>>> from scipy import stats
		>>> rng = default_rng()
		>>> a = np.array([2, 4, 1, 2, 3, 2])
		>>> res = stats.relfreq(a, numbins=4)
		>>> res.frequency
		array([ 0.16666667, 0.5       , 0.16666667,  0.16666667])
		>>> np.sum(res.frequency)  # relative frequencies should add up to 1
		1.0
		
		Create a normal distribution with 1000 random values
		
		>>> samples = stats.norm.rvs(size=1000, random_state=rng)
		
		Calculate relative frequencies
		
		>>> res = stats.relfreq(samples, numbins=25)
		
		Calculate space of values for x
		
		>>> x = res.lowerlimit + np.linspace(0, res.binsize*res.frequency.size,
		...                                  res.frequency.size)
		
		Plot relative frequency histogram
		
		>>> fig = plt.figure(figsize=(5, 4))
		>>> ax = fig.add_subplot(1, 1, 1)
		>>> ax.bar(x, res.frequency, width=res.binsize)
		>>> ax.set_title('Relative frequency histogram')
		>>> ax.set_xlim([x.min(), x.max()])
		
		>>> plt.show()
	**/
	static public function relfreq(a:Dynamic, ?numbins:Dynamic, ?defaultreallimits:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		A Rice continuous random variable.
		
		As an instance of the `rv_continuous` class, `rice` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(b,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(b, loc=0, scale=1)
		    Median of the distribution.
		mean(b, loc=0, scale=1)
		    Mean of the distribution.
		var(b, loc=0, scale=1)
		    Variance of the distribution.
		std(b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `rice` is:
		
		.. math::
		
		    f(x, b) = x \exp(- \frac{x^2 + b^2}{2}) I_0(x b)
		
		for :math:`x >= 0`, :math:`b > 0`. :math:`I_0` is the modified Bessel
		function of order zero (`scipy.special.i0`).
		
		`rice` takes ``b`` as a shape parameter for :math:`b`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``rice.pdf(x, b, loc, scale)`` is identically
		equivalent to ``rice.pdf(y, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		The Rice distribution describes the length, :math:`r`, of a 2-D vector with
		components :math:`(U+u, V+v)`, where :math:`U, V` are constant, :math:`u,
		v` are independent Gaussian random variables with standard deviation
		:math:`s`.  Let :math:`R = \sqrt{U^2 + V^2}`. Then the pdf of :math:`r` is
		``rice.pdf(x, R/s, scale=s)``.
		
		Examples
		--------
		>>> from scipy.stats import rice
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> b = 0.775
		>>> mean, var, skew, kurt = rice.stats(b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(rice.ppf(0.01, b),
		...                 rice.ppf(0.99, b), 100)
		>>> ax.plot(x, rice.pdf(x, b),
		...        'r-', lw=5, alpha=0.6, label='rice pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = rice(b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = rice.ppf([0.001, 0.5, 0.999], b)
		>>> np.allclose([0.001, 0.5, 0.999], rice.cdf(vals, b))
		True
		
		Generate random numbers:
		
		>>> r = rice.rvs(b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function rice(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generate random samples from a probability density function using the
		ratio-of-uniforms method.
		
		Parameters
		----------
		pdf : callable
		    A function with signature `pdf(x)` that is proportional to the
		    probability density function of the distribution.
		umax : float
		    The upper bound of the bounding rectangle in the u-direction.
		vmin : float
		    The lower bound of the bounding rectangle in the v-direction.
		vmax : float
		    The upper bound of the bounding rectangle in the v-direction.
		size : int or tuple of ints, optional
		    Defining number of random variates (default is 1).
		c : float, optional.
		    Shift parameter of ratio-of-uniforms method, see Notes. Default is 0.
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Returns
		-------
		rvs : ndarray
		    The random variates distributed according to the probability
		    distribution defined by the pdf.
		
		Notes
		-----
		Given a univariate probability density function `pdf` and a constant `c`,
		define the set ``A = {(u, v) : 0 < u <= sqrt(pdf(v/u + c))}``.
		If `(U, V)` is a random vector uniformly distributed over `A`,
		then `V/U + c` follows a distribution according to `pdf`.
		
		The above result (see [1]_, [2]_) can be used to sample random variables
		using only the pdf, i.e. no inversion of the cdf is required. Typical
		choices of `c` are zero or the mode of `pdf`. The set `A` is a subset of
		the rectangle ``R = [0, umax] x [vmin, vmax]`` where
		
		- ``umax = sup sqrt(pdf(x))``
		- ``vmin = inf (x - c) sqrt(pdf(x))``
		- ``vmax = sup (x - c) sqrt(pdf(x))``
		
		In particular, these values are finite if `pdf` is bounded and
		``x**2 * pdf(x)`` is bounded (i.e. subquadratic tails).
		One can generate `(U, V)` uniformly on `R` and return
		`V/U + c` if `(U, V)` are also in `A` which can be directly
		verified.
		
		The algorithm is not changed if one replaces `pdf` by k * `pdf` for any
		constant k > 0. Thus, it is often convenient to work with a function
		that is proportional to the probability density function by dropping
		unneccessary normalization factors.
		
		Intuitively, the method works well if `A` fills up most of the
		enclosing rectangle such that the probability is high that `(U, V)`
		lies in `A` whenever it lies in `R` as the number of required
		iterations becomes too large otherwise. To be more precise, note that
		the expected number of iterations to draw `(U, V)` uniformly
		distributed on `R` such that `(U, V)` is also in `A` is given by
		the ratio ``area(R) / area(A) = 2 * umax * (vmax - vmin) / area(pdf)``,
		where `area(pdf)` is the integral of `pdf` (which is equal to one if the
		probability density function is used but can take on other values if a
		function proportional to the density is used). The equality holds since
		the area of `A` is equal to 0.5 * area(pdf) (Theorem 7.1 in [1]_).
		If the sampling fails to generate a single random variate after 50000
		iterations (i.e. not a single draw is in `A`), an exception is raised.
		
		If the bounding rectangle is not correctly specified (i.e. if it does not
		contain `A`), the algorithm samples from a distribution different from
		the one given by `pdf`. It is therefore recommended to perform a
		test such as `~scipy.stats.kstest` as a check.
		
		References
		----------
		.. [1] L. Devroye, "Non-Uniform Random Variate Generation",
		   Springer-Verlag, 1986.
		
		.. [2] W. Hoermann and J. Leydold, "Generating generalized inverse Gaussian
		   random variates", Statistics and Computing, 24(4), p. 547--557, 2014.
		
		.. [3] A.J. Kinderman and J.F. Monahan, "Computer Generation of Random
		   Variables Using the Ratio of Uniform Deviates",
		   ACM Transactions on Mathematical Software, 3(3), p. 257--260, 1977.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		Simulate normally distributed random variables. It is easy to compute the
		bounding rectangle explicitly in that case. For simplicity, we drop the
		normalization factor of the density.
		
		>>> f = lambda x: np.exp(-x**2 / 2)
		>>> v_bound = np.sqrt(f(np.sqrt(2))) * np.sqrt(2)
		>>> umax, vmin, vmax = np.sqrt(f(0)), -v_bound, v_bound
		>>> rvs = stats.rvs_ratio_uniforms(f, umax, vmin, vmax, size=2500,
		...                                random_state=rng)
		
		The K-S test confirms that the random variates are indeed normally
		distributed (normality is not rejected at 5% significance level):
		
		>>> stats.kstest(rvs, 'norm')[1]
		0.250634764150542
		
		The exponential distribution provides another example where the bounding
		rectangle can be determined explicitly.
		
		>>> rvs = stats.rvs_ratio_uniforms(lambda x: np.exp(-x), umax=1,
		...                                vmin=0, vmax=2*np.exp(-1), size=1000,
		...                                random_state=rng)
		>>> stats.kstest(rvs, 'expon')[1]
		0.21121052054580314
	**/
	static public function rvs_ratio_uniforms(pdf:Dynamic, umax:Dynamic, vmin:Dynamic, vmax:Dynamic, ?size:Dynamic, ?c:Dynamic, ?random_state:Dynamic):Dynamic;
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
		    Specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`
		    The following options are available (default is 'fraction'):
		
		      * 'fraction': ``i + (j - i) * fraction`` where ``fraction`` is the
		        fractional part of the index surrounded by ``i`` and ``j``
		      * 'lower': ``i``
		      * 'higher': ``j``
		
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
		For NumPy 1.9 and higher, `numpy.percentile` provides all the functionality
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
	/**
		Compute standard error of the mean.
		
		Calculate the standard error of the mean (or standard error of
		measurement) of the values in the input array.
		
		Parameters
		----------
		a : array_like
		    An array containing the values for which the standard error is
		    returned.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		ddof : int, optional
		    Delta degrees-of-freedom. How many degrees of freedom to adjust
		    for bias in limited samples relative to the population estimate
		    of variance. Defaults to 1.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		s : ndarray or float
		    The standard error of the mean in the sample(s), along the input axis.
		
		Notes
		-----
		The default value for `ddof` is different to the default (0) used by other
		ddof containing routines, such as np.std and np.nanstd.
		
		Examples
		--------
		Find standard error along the first axis:
		
		>>> from scipy import stats
		>>> a = np.arange(20).reshape(5,4)
		>>> stats.sem(a)
		array([ 2.8284,  2.8284,  2.8284,  2.8284])
		
		Find standard error across the whole array, using n degrees of freedom:
		
		>>> stats.sem(a, axis=None, ddof=0)
		1.2893796958227628
	**/
	static public function sem(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		A semicircular continuous random variable.
		
		As an instance of the `rv_continuous` class, `semicircular` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		rdist
		
		Notes
		-----
		The probability density function for `semicircular` is:
		
		.. math::
		
		    f(x) = \frac{2}{\pi} \sqrt{1-x^2}
		
		for :math:`-1 \le x \le 1`.
		
		The distribution is a special case of `rdist` with `c = 3`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``semicircular.pdf(x, loc, scale)`` is identically
		equivalent to ``semicircular.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] "Wigner semicircle distribution",
		       https://en.wikipedia.org/wiki/Wigner_semicircle_distribution
		
		Examples
		--------
		>>> from scipy.stats import semicircular
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = semicircular.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(semicircular.ppf(0.01),
		...                 semicircular.ppf(0.99), 100)
		>>> ax.plot(x, semicircular.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='semicircular pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = semicircular()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = semicircular.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], semicircular.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = semicircular.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function semicircular(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform the Shapiro-Wilk test for normality.
		
		The Shapiro-Wilk test tests the null hypothesis that the
		data was drawn from a normal distribution.
		
		Parameters
		----------
		x : array_like
		    Array of sample data.
		
		Returns
		-------
		statistic : float
		    The test statistic.
		p-value : float
		    The p-value for the hypothesis test.
		
		See Also
		--------
		anderson : The Anderson-Darling test for normality
		kstest : The Kolmogorov-Smirnov test for goodness of fit.
		
		Notes
		-----
		The algorithm used is described in [4]_ but censoring parameters as
		described are not implemented. For N > 5000 the W test statistic is accurate
		but the p-value may not be.
		
		The chance of rejecting the null hypothesis when it is true is close to 5%
		regardless of sample size.
		
		References
		----------
		.. [1] https://www.itl.nist.gov/div898/handbook/prc/section2/prc213.htm
		.. [2] Shapiro, S. S. & Wilk, M.B (1965). An analysis of variance test for
		       normality (complete samples), Biometrika, Vol. 52, pp. 591-611.
		.. [3] Razali, N. M. & Wah, Y. B. (2011) Power comparisons of Shapiro-Wilk,
		       Kolmogorov-Smirnov, Lilliefors and Anderson-Darling tests, Journal of
		       Statistical Modeling and Analytics, Vol. 2, pp. 21-33.
		.. [4] ALGORITHM AS R94 APPL. STATIST. (1995) VOL. 44, NO. 4.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		>>> x = stats.norm.rvs(loc=5, scale=3, size=100, random_state=rng)
		>>> shapiro_test = stats.shapiro(x)
		>>> shapiro_test
		ShapiroResult(statistic=0.9813305735588074, pvalue=0.16855233907699585)
		>>> shapiro_test.statistic
		0.9813305735588074
		>>> shapiro_test.pvalue
		0.16855233907699585
	**/
	static public function shapiro(x:Dynamic):Float;
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
	static public function siegelslopes(y:Dynamic, ?x:Dynamic, ?method:Dynamic):Float;
	/**
		Perform iterative sigma-clipping of array elements.
		
		Starting from the full sample, all elements outside the critical range are
		removed, i.e. all elements of the input array `c` that satisfy either of
		the following conditions::
		
		    c < mean(c) - std(c)*low
		    c > mean(c) + std(c)*high
		
		The iteration continues with the updated sample until no
		elements are outside the (updated) range.
		
		Parameters
		----------
		a : array_like
		    Data array, will be raveled if not 1-D.
		low : float, optional
		    Lower bound factor of sigma clipping. Default is 4.
		high : float, optional
		    Upper bound factor of sigma clipping. Default is 4.
		
		Returns
		-------
		clipped : ndarray
		    Input array with clipped elements removed.
		lower : float
		    Lower threshold value use for clipping.
		upper : float
		    Upper threshold value use for clipping.
		
		Examples
		--------
		>>> from scipy.stats import sigmaclip
		>>> a = np.concatenate((np.linspace(9.5, 10.5, 31),
		...                     np.linspace(0, 20, 5)))
		>>> fact = 1.5
		>>> c, low, upp = sigmaclip(a, fact, fact)
		>>> c
		array([  9.96666667,  10.        ,  10.03333333,  10.        ])
		>>> c.var(), c.std()
		(0.00055555555555555165, 0.023570226039551501)
		>>> low, c.mean() - fact*c.std(), c.min()
		(9.9646446609406727, 9.9646446609406727, 9.9666666666666668)
		>>> upp, c.mean() + fact*c.std(), c.max()
		(10.035355339059327, 10.035355339059327, 10.033333333333333)
		
		>>> a = np.concatenate((np.linspace(9.5, 10.5, 11),
		...                     np.linspace(-100, -50, 3)))
		>>> c, low, upp = sigmaclip(a, 1.8, 1.8)
		>>> (c == np.linspace(9.5, 10.5, 11)).all()
		True
	**/
	static public function sigmaclip(a:Dynamic, ?low:Dynamic, ?high:Dynamic):Dynamic;
	/**
		A  Skellam discrete random variable.
		
		As an instance of the `rv_discrete` class, `skellam` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(mu1, mu2, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, mu1, mu2, loc=0)
		    Probability mass function.
		logpmf(k, mu1, mu2, loc=0)
		    Log of the probability mass function.
		cdf(k, mu1, mu2, loc=0)
		    Cumulative distribution function.
		logcdf(k, mu1, mu2, loc=0)
		    Log of the cumulative distribution function.
		sf(k, mu1, mu2, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, mu1, mu2, loc=0)
		    Log of the survival function.
		ppf(q, mu1, mu2, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, mu1, mu2, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(mu1, mu2, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(mu1, mu2, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(mu1, mu2), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(mu1, mu2, loc=0)
		    Median of the distribution.
		mean(mu1, mu2, loc=0)
		    Mean of the distribution.
		var(mu1, mu2, loc=0)
		    Variance of the distribution.
		std(mu1, mu2, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, mu1, mu2, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		Probability distribution of the difference of two correlated or
		uncorrelated Poisson random variables.
		
		Let :math:`k_1` and :math:`k_2` be two Poisson-distributed r.v. with
		expected values :math:`\lambda_1` and :math:`\lambda_2`. Then,
		:math:`k_1 - k_2` follows a Skellam distribution with parameters
		:math:`\mu_1 = \lambda_1 - \rho \sqrt{\lambda_1 \lambda_2}` and
		:math:`\mu_2 = \lambda_2 - \rho \sqrt{\lambda_1 \lambda_2}`, where
		:math:`\rho` is the correlation coefficient between :math:`k_1` and
		:math:`k_2`. If the two Poisson-distributed r.v. are independent then
		:math:`\rho = 0`.
		
		Parameters :math:`\mu_1` and :math:`\mu_2` must be strictly positive.
		
		For details see: https://en.wikipedia.org/wiki/Skellam_distribution
		
		`skellam` takes :math:`\mu_1` and :math:`\mu_2` as shape parameters.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``skellam.pmf(k, mu1, mu2, loc)`` is identically
		equivalent to ``skellam.pmf(k - loc, mu1, mu2)``.
		
		Examples
		--------
		>>> from scipy.stats import skellam
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> mu1, mu2 = 15, 8
		>>> mean, var, skew, kurt = skellam.stats(mu1, mu2, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(skellam.ppf(0.01, mu1, mu2),
		...               skellam.ppf(0.99, mu1, mu2))
		>>> ax.plot(x, skellam.pmf(x, mu1, mu2), 'bo', ms=8, label='skellam pmf')
		>>> ax.vlines(x, 0, skellam.pmf(x, mu1, mu2), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = skellam(mu1, mu2)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = skellam.cdf(x, mu1, mu2)
		>>> np.allclose(x, skellam.ppf(prob, mu1, mu2))
		True
		
		Generate random numbers:
		
		>>> r = skellam.rvs(mu1, mu2, size=1000)
	**/
	static public function skellam(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the sample skewness of a data set.
		
		For normally distributed data, the skewness should be about zero. For
		unimodal continuous distributions, a skewness value greater than zero means
		that there is more weight in the right tail of the distribution. The
		function `skewtest` can be used to determine if the skewness value
		is close enough to zero, statistically speaking.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		axis : int or None, optional
		    Axis along which skewness is calculated. Default is 0.
		    If None, compute over the whole array `a`.
		bias : bool, optional
		    If False, then the calculations are corrected for statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		skewness : ndarray
		    The skewness of values along an axis, returning 0 where all values are
		    equal.
		
		Notes
		-----
		The sample skewness is computed as the Fisher-Pearson coefficient
		of skewness, i.e.
		
		.. math::
		
		    g_1=\frac{m_3}{m_2^{3/2}}
		
		where
		
		.. math::
		
		    m_i=\frac{1}{N}\sum_{n=1}^N(x[n]-\bar{x})^i
		
		is the biased sample :math:`i\texttt{th}` central moment, and
		:math:`\bar{x}` is
		the sample mean.  If ``bias`` is False, the calculations are
		corrected for bias and the value computed is the adjusted
		Fisher-Pearson standardized moment coefficient, i.e.
		
		.. math::
		
		    G_1=\frac{k_3}{k_2^{3/2}}=
		        \frac{\sqrt{N(N-1)}}{N-2}\frac{m_3}{m_2^{3/2}}.
		
		References
		----------
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		   Section 2.2.24.1
		
		Examples
		--------
		>>> from scipy.stats import skew
		>>> skew([1, 2, 3, 4, 5])
		0.0
		>>> skew([2, 8, 0, 4, 1, 9, 9, 0])
		0.2650554122698573
	**/
	static public function skew(a:Dynamic, ?axis:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		A skewed Cauchy random variable.
		
		As an instance of the `rv_continuous` class, `skewcauchy` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0, scale=1)
		    Median of the distribution.
		mean(a, loc=0, scale=1)
		    Mean of the distribution.
		var(a, loc=0, scale=1)
		    Variance of the distribution.
		std(a, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		cauchy : Cauchy distribution
		
		Notes
		-----
		
		The probability density function for `skewcauchy` is:
		
		.. math::
		
		    f(x) = \frac{1}{\pi \left(\frac{x^2}{\left(a\, \text{sign}(x) + 1
		                                               \right)^2} + 1 \right)}
		
		for a real number :math:`x` and skewness parameter :math:`-1 < a < 1`.
		
		When :math:`a=0`, the distribution reduces to the usual Cauchy
		distribution.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``skewcauchy.pdf(x, a, loc, scale)`` is identically
		equivalent to ``skewcauchy.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		.. [1] "Skewed generalized *t* distribution", Wikipedia
		   https://en.wikipedia.org/wiki/Skewed_generalized_t_distribution#Skewed_Cauchy_distribution
		
		Examples
		--------
		>>> from scipy.stats import skewcauchy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a = 0.5
		>>> mean, var, skew, kurt = skewcauchy.stats(a, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(skewcauchy.ppf(0.01, a),
		...                 skewcauchy.ppf(0.99, a), 100)
		>>> ax.plot(x, skewcauchy.pdf(x, a),
		...        'r-', lw=5, alpha=0.6, label='skewcauchy pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = skewcauchy(a)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = skewcauchy.ppf([0.001, 0.5, 0.999], a)
		>>> np.allclose([0.001, 0.5, 0.999], skewcauchy.cdf(vals, a))
		True
		
		Generate random numbers:
		
		>>> r = skewcauchy.rvs(a, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function skewcauchy(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A skew-normal random variable.
		
		As an instance of the `rv_continuous` class, `skewnorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0, scale=1)
		    Median of the distribution.
		mean(a, loc=0, scale=1)
		    Mean of the distribution.
		var(a, loc=0, scale=1)
		    Variance of the distribution.
		std(a, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The pdf is::
		
		    skewnorm.pdf(x, a) = 2 * norm.pdf(x) * norm.cdf(a*x)
		
		`skewnorm` takes a real number :math:`a` as a skewness parameter
		When ``a = 0`` the distribution is identical to a normal distribution
		(`norm`). `rvs` implements the method of [1]_.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``skewnorm.pdf(x, a, loc, scale)`` is identically
		equivalent to ``skewnorm.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import skewnorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a = 4
		>>> mean, var, skew, kurt = skewnorm.stats(a, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(skewnorm.ppf(0.01, a),
		...                 skewnorm.ppf(0.99, a), 100)
		>>> ax.plot(x, skewnorm.pdf(x, a),
		...        'r-', lw=5, alpha=0.6, label='skewnorm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = skewnorm(a)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = skewnorm.ppf([0.001, 0.5, 0.999], a)
		>>> np.allclose([0.001, 0.5, 0.999], skewnorm.cdf(vals, a))
		True
		
		Generate random numbers:
		
		>>> r = skewnorm.rvs(a, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		
		References
		----------
		.. [1] A. Azzalini and A. Capitanio (1999). Statistical applications of the
		    multivariate skew-normal distribution. J. Roy. Statist. Soc., B 61, 579-602.
		    :arxiv:`0911.2093`
	**/
	static public function skewnorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Test whether the skew is different from the normal distribution.
		
		This function tests the null hypothesis that the skewness of
		the population that the sample was drawn from is the same
		as that of a corresponding normal distribution.
		
		Parameters
		----------
		a : array
		    The data to be tested.
		axis : int or None, optional
		   Axis along which statistics are calculated. Default is 0.
		   If None, compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
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
		statistic : float
		    The computed z-score for this test.
		pvalue : float
		    The p-value for the hypothesis test.
		
		Notes
		-----
		The sample size must be at least 8.
		
		References
		----------
		.. [1] R. B. D'Agostino, A. J. Belanger and R. B. D'Agostino Jr.,
		        "A suggestion for using powerful and informative tests of
		        normality", American Statistician 44, pp. 316-321, 1990.
		
		Examples
		--------
		>>> from scipy.stats import skewtest
		>>> skewtest([1, 2, 3, 4, 5, 6, 7, 8])
		SkewtestResult(statistic=1.0108048609177787, pvalue=0.3121098361421897)
		>>> skewtest([2, 8, 0, 4, 1, 9, 9, 0])
		SkewtestResult(statistic=0.44626385374196975, pvalue=0.6554066631275459)
		>>> skewtest([1, 2, 3, 4, 5, 6, 7, 8000])
		SkewtestResult(statistic=3.571773510360407, pvalue=0.0003545719905823133)
		>>> skewtest([100, 100, 100, 100, 100, 100, 100, 101])
		SkewtestResult(statistic=3.5717766638478072, pvalue=0.000354567720281634)
		>>> skewtest([1, 2, 3, 4, 5, 6, 7, 8], alternative='less')
		SkewtestResult(statistic=1.0108048609177787, pvalue=0.8439450819289052)
		>>> skewtest([1, 2, 3, 4, 5, 6, 7, 8], alternative='greater')
		SkewtestResult(statistic=1.0108048609177787, pvalue=0.15605491807109484)
	**/
	static public function skewtest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Float;
	/**
		Calculates Somers' D, an asymmetric measure of ordinal association.
		
		Like Kendall's :math:`\tau`, Somers' :math:`D` is a measure of the
		correspondence between two rankings. Both statistics consider the
		difference between the number of concordant and discordant pairs in two
		rankings :math:`X` and :math:`Y`, and both are normalized such that values
		close  to 1 indicate strong agreement and values close to -1 indicate
		strong disagreement. They differ in how they are normalized. To show the
		relationship, Somers' :math:`D` can be defined in terms of Kendall's
		:math:`\tau_a`:
		
		.. math::
		    D(Y|X) = \frac{\tau_a(X, Y)}{\tau_a(X, X)}
		
		Suppose the first ranking :math:`X` has :math:`r` distinct ranks and the
		second ranking :math:`Y` has :math:`s` distinct ranks. These two lists of
		:math:`n` rankings can also be viewed as an :math:`r \times s` contingency
		table in which element :math:`i, j` is the number of rank pairs with rank
		:math:`i` in ranking :math:`X` and rank :math:`j` in ranking :math:`Y`.
		Accordingly, `somersd` also allows the input data to be supplied as a
		single, 2D contingency table instead of as two separate, 1D rankings.
		
		Note that the definition of Somers' :math:`D` is asymmetric: in general,
		:math:`D(Y|X) \neq D(X|Y)`. ``somersd(x, y)`` calculates Somers'
		:math:`D(Y|X)`: the "row" variable :math:`X` is treated as an independent
		variable, and the "column" variable :math:`Y` is dependent. For Somers'
		:math:`D(X|Y)`, swap the input lists or transpose the input table.
		
		Parameters
		----------
		x: array_like
		    1D array of rankings, treated as the (row) independent variable.
		    Alternatively, a 2D contingency table.
		y: array_like, optional
		    If `x` is a 1D array of rankings, `y` is a 1D array of rankings of the
		    same length, treated as the (column) dependent variable.
		    If `x` is 2D, `y` is ignored.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		    * 'two-sided': the rank correlation is nonzero
		    * 'less': the rank correlation is negative (less than zero)
		    * 'greater':  the rank correlation is positive (greater than zero)
		
		Returns
		-------
		res : SomersDResult
		    A `SomersDResult` object with the following fields:
		
		        correlation : float
		           The Somers' :math:`D` statistic.
		        pvalue : float
		           The p-value for a hypothesis test whose null
		           hypothesis is an absence of association, :math:`D=0`.
		           See notes for more information.
		        table : 2D array
		           The contingency table formed from rankings `x` and `y` (or the
		           provided contingency table, if `x` is a 2D array)
		
		See Also
		--------
		kendalltau : Calculates Kendall's tau, another correlation measure.
		weightedtau : Computes a weighted version of Kendall's tau.
		spearmanr : Calculates a Spearman rank-order correlation coefficient.
		pearsonr : Calculates a Pearson correlation coefficient.
		
		Notes
		-----
		This function follows the contingency table approach of [2]_ and
		[3]_. *p*-values are computed based on an asymptotic approximation of
		the test statistic distribution under the null hypothesis :math:`D=0`.
		
		Theoretically, hypothesis tests based on Kendall's :math:`tau` and Somers'
		:math:`D` should be identical.
		However, the *p*-values returned by `kendalltau` are based
		on the null hypothesis of *independence* between :math:`X` and :math:`Y`
		(i.e. the population from which pairs in :math:`X` and :math:`Y` are
		sampled contains equal numbers of all possible pairs), which is more
		specific than the null hypothesis :math:`D=0` used here. If the null
		hypothesis of independence is desired, it is acceptable to use the
		*p*-value returned by `kendalltau` with the statistic returned by
		`somersd` and vice versa. For more information, see [2]_.
		
		Contingency tables are formatted according to the convention used by
		SAS and R: the first ranking supplied (``x``) is the "row" variable, and
		the second ranking supplied (``y``) is the "column" variable. This is
		opposite the convention of Somers' original paper [1]_.
		
		References
		----------
		.. [1] Robert H. Somers, "A New Asymmetric Measure of Association for
		       Ordinal Variables", *American Sociological Review*, Vol. 27, No. 6,
		       pp. 799--811, 1962.
		
		.. [2] Morton B. Brown and Jacqueline K. Benedetti, "Sampling Behavior of
		       Tests for Correlation in Two-Way Contingency Tables", *Journal of
		       the American Statistical Association* Vol. 72, No. 358, pp.
		       309--315, 1977.
		
		.. [3] SAS Institute, Inc., "The FREQ Procedure (Book Excerpt)",
		       *SAS/STAT 9.2 User's Guide, Second Edition*, SAS Publishing, 2009.
		
		.. [4] Laerd Statistics, "Somers' d using SPSS Statistics", *SPSS
		       Statistics Tutorials and Statistical Guides*,
		       https://statistics.laerd.com/spss-tutorials/somers-d-using-spss-statistics.php,
		       Accessed July 31, 2020.
		
		Examples
		--------
		We calculate Somers' D for the example given in [4]_, in which a hotel
		chain owner seeks to determine the association between hotel room
		cleanliness and customer satisfaction. The independent variable, hotel
		room cleanliness, is ranked on an ordinal scale: "below average (1)",
		"average (2)", or "above average (3)". The dependent variable, customer
		satisfaction, is ranked on a second scale: "very dissatisfied (1)",
		"moderately dissatisfied (2)", "neither dissatisfied nor satisfied (3)",
		"moderately satisfied (4)", or "very satisfied (5)". 189 customers
		respond to the survey, and the results are cast into a contingency table
		with the hotel room cleanliness as the "row" variable and customer
		satisfaction as the "column" variable.
		
		+-----+-----+-----+-----+-----+-----+
		|     | (1) | (2) | (3) | (4) | (5) |
		+=====+=====+=====+=====+=====+=====+
		| (1) | 27  | 25  | 14  | 7   | 0   |
		+-----+-----+-----+-----+-----+-----+
		| (2) | 7   | 14  | 18  | 35  | 12  |
		+-----+-----+-----+-----+-----+-----+
		| (3) | 1   | 3   | 2   | 7   | 17  |
		+-----+-----+-----+-----+-----+-----+
		
		For example, 27 customers assigned their room a cleanliness ranking of
		"below average (1)" and a corresponding satisfaction of "very
		dissatisfied (1)". We perform the analysis as follows.
		
		>>> from scipy.stats import somersd
		>>> table = [[27, 25, 14, 7, 0], [7, 14, 18, 35, 12], [1, 3, 2, 7, 17]]
		>>> res = somersd(table)
		>>> res.statistic
		0.6032766111513396
		>>> res.pvalue
		1.0007091191074533e-27
		
		The value of the Somers' D statistic is approximately 0.6, indicating
		a positive correlation between room cleanliness and customer satisfaction
		in the sample.
		The *p*-value is very small, indicating a very small probability of
		observing such an extreme value of the statistic under the null
		hypothesis that the statistic of the entire population (from which
		our sample of 189 customers is drawn) is zero. This supports the
		alternative hypothesis that the true value of Somers' D for the population
		is nonzero.
	**/
	static public function somersd(x:Dynamic, ?y:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		Calculate a Spearman correlation coefficient with associated p-value.
		
		The Spearman rank-order correlation coefficient is a nonparametric measure
		of the monotonicity of the relationship between two datasets. Unlike the
		Pearson correlation, the Spearman correlation does not assume that both
		datasets are normally distributed. Like other correlation coefficients,
		this one varies between -1 and +1 with 0 implying no correlation.
		Correlations of -1 or +1 imply an exact monotonic relationship. Positive
		correlations imply that as x increases, so does y. Negative correlations
		imply that as x increases, y decreases.
		
		The p-value roughly indicates the probability of an uncorrelated system
		producing datasets that have a Spearman correlation at least as extreme
		as the one computed from these datasets. The p-values are not entirely
		reliable but are probably reasonable for datasets larger than 500 or so.
		
		Parameters
		----------
		a, b : 1D or 2D array_like, b is optional
		    One or two 1-D or 2-D arrays containing multiple variables and
		    observations. When these are 1-D, each represents a vector of
		    observations of a single variable. For the behavior in the 2-D case,
		    see under ``axis``, below.
		    Both arrays need to have the same length in the ``axis`` dimension.
		axis : int or None, optional
		    If axis=0 (default), then each column represents a variable, with
		    observations in the rows. If axis=1, the relationship is transposed:
		    each row represents a variable, while the columns contain observations.
		    If axis=None, then both arrays will be raveled.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the correlation is nonzero
		    * 'less': the correlation is negative (less than zero)
		    * 'greater':  the correlation is positive (greater than zero)
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		correlation : float or ndarray (2-D square)
		    Spearman correlation matrix or correlation coefficient (if only 2
		    variables are given as parameters. Correlation matrix is square with
		    length equal to total number of variables (columns or rows) in ``a``
		    and ``b`` combined.
		pvalue : float
		    The p-value for a hypothesis test whose null hypotheisis
		    is that two sets of data are uncorrelated. See `alternative` above
		    for alternative hypotheses. `pvalue` has the same
		    shape as `correlation`.
		
		References
		----------
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		   Section  14.7
		
		Examples
		--------
		>>> from scipy import stats
		>>> stats.spearmanr([1,2,3,4,5], [5,6,7,8,7])
		SpearmanrResult(correlation=0.82078..., pvalue=0.08858...)
		>>> rng = np.random.default_rng()
		>>> x2n = rng.standard_normal((100, 2))
		>>> y2n = rng.standard_normal((100, 2))
		>>> stats.spearmanr(x2n)
		SpearmanrResult(correlation=-0.07960396039603959, pvalue=0.4311168705769747)
		>>> stats.spearmanr(x2n[:,0], x2n[:,1])
		SpearmanrResult(correlation=-0.07960396039603959, pvalue=0.4311168705769747)
		>>> rho, pval = stats.spearmanr(x2n, y2n)
		>>> rho
		array([[ 1.        , -0.07960396, -0.08314431,  0.09662166],
		       [-0.07960396,  1.        , -0.14448245,  0.16738074],
		       [-0.08314431, -0.14448245,  1.        ,  0.03234323],
		       [ 0.09662166,  0.16738074,  0.03234323,  1.        ]])
		>>> pval
		array([[0.        , 0.43111687, 0.41084066, 0.33891628],
		       [0.43111687, 0.        , 0.15151618, 0.09600687],
		       [0.41084066, 0.15151618, 0.        , 0.74938561],
		       [0.33891628, 0.09600687, 0.74938561, 0.        ]])
		>>> rho, pval = stats.spearmanr(x2n.T, y2n.T, axis=1)
		>>> rho
		array([[ 1.        , -0.07960396, -0.08314431,  0.09662166],
		       [-0.07960396,  1.        , -0.14448245,  0.16738074],
		       [-0.08314431, -0.14448245,  1.        ,  0.03234323],
		       [ 0.09662166,  0.16738074,  0.03234323,  1.        ]])
		>>> stats.spearmanr(x2n, y2n, axis=None)
		SpearmanrResult(correlation=0.044981624540613524, pvalue=0.5270803651336189)
		>>> stats.spearmanr(x2n.ravel(), y2n.ravel())
		SpearmanrResult(correlation=0.044981624540613524, pvalue=0.5270803651336189)
		
		>>> rng = np.random.default_rng()
		>>> xint = rng.integers(10, size=(100, 2))
		>>> stats.spearmanr(xint)
		SpearmanrResult(correlation=0.09800224850707953, pvalue=0.3320271757932076)
	**/
	static public function spearmanr(a:Dynamic, ?b:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Dynamic;
	static public function special_ortho_group(?dim:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		A studentized range continuous random variable.
		
		As an instance of the `rv_continuous` class, `studentized_range` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(k, df, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, k, df, loc=0, scale=1)
		    Probability density function.
		logpdf(x, k, df, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, k, df, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, k, df, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, k, df, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, k, df, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, k, df, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, k, df, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, k, df, loc=0, scale=1)
		    Non-central moment of order n
		stats(k, df, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(k, df, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(k, df), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(k, df, loc=0, scale=1)
		    Median of the distribution.
		mean(k, df, loc=0, scale=1)
		    Mean of the distribution.
		var(k, df, loc=0, scale=1)
		    Variance of the distribution.
		std(k, df, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, k, df, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		t: Student's t distribution
		
		Notes
		-----
		The probability density function for `studentized_range` is:
		
		.. math::
		
		     f(x; k, \nu) = \frac{k(k-1)\nu^{\nu/2}}{\Gamma(\nu/2)
		                    2^{\nu/2-1}} \int_{0}^{\infty} \int_{-\infty}^{\infty}
		                    s^{\nu} e^{-\nu s^2/2} \phi(z) \phi(sx + z)
		                    [\Phi(sx + z) - \Phi(z)]^{k-2} \,dz \,ds
		
		for :math:`x ≥ 0`, :math:`k > 1`, and :math:`\nu > 0`.
		
		`studentized_range` takes ``k`` for :math:`k` and ``df`` for :math:`\nu`
		as shape parameters.
		
		When :math:`\nu` exceeds 100,000, an asymptotic approximation (infinite
		degrees of freedom) is used to compute the cumulative distribution
		function [4]_.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``studentized_range.pdf(x, k, df, loc, scale)`` is identically
		equivalent to ``studentized_range.pdf(y, k, df) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		
		.. [1] "Studentized range distribution",
		       https://en.wikipedia.org/wiki/Studentized_range_distribution
		.. [2] Batista, Ben Dêivide, et al. "Externally Studentized Normal Midrange
		       Distribution." Ciência e Agrotecnologia, vol. 41, no. 4, 2017, pp.
		       378-389., doi:10.1590/1413-70542017414047716.
		.. [3] Harter, H. Leon. "Tables of Range and Studentized Range." The Annals
		       of Mathematical Statistics, vol. 31, no. 4, 1960, pp. 1122-1147.
		       JSTOR, www.jstor.org/stable/2237810. Accessed 18 Feb. 2021.
		.. [4] Lund, R. E., and J. R. Lund. "Algorithm AS 190: Probabilities and
		       Upper Quantiles for the Studentized Range." Journal of the Royal
		       Statistical Society. Series C (Applied Statistics), vol. 32, no. 2,
		       1983, pp. 204-210. JSTOR, www.jstor.org/stable/2347300. Accessed 18
		       Feb. 2021.
		
		Examples
		--------
		>>> from scipy.stats import studentized_range
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> k, df = 3, 10
		>>> mean, var, skew, kurt = studentized_range.stats(k, df, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(studentized_range.ppf(0.01, k, df),
		...                 studentized_range.ppf(0.99, k, df), 100)
		>>> ax.plot(x, studentized_range.pdf(x, k, df),
		...         'r-', lw=5, alpha=0.6, label='studentized_range pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = studentized_range(k, df)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = studentized_range.ppf([0.001, 0.5, 0.999], k, df)
		>>> np.allclose([0.001, 0.5, 0.999], studentized_range.cdf(vals, k, df))
		True
		
		Rather than using (``studentized_range.rvs``) to generate random variates,
		which is very slow for this distribution, we can approximate the inverse
		CDF using an interpolator, and then perform inverse transform sampling
		with this approximate inverse CDF.
		
		This distribution has an infinite but thin right tail, so we focus our
		attention on the leftmost 99.9 percent.
		
		>>> a, b = studentized_range.ppf([0, .999], k, df)
		>>> a, b
		0, 7.41058083802274
		
		>>> from scipy.interpolate import interp1d
		>>> rng = np.random.default_rng()
		>>> xs = np.linspace(a, b, 50)
		>>> cdf = studentized_range.cdf(xs, k, df)
		# Create an interpolant of the inverse CDF
		>>> ppf = interp1d(cdf, xs, fill_value='extrapolate')
		# Perform inverse transform sampling using the interpolant
		>>> r = ppf(rng.uniform(size=1000))
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function studentized_range(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Student's t continuous random variable.
		
		For the noncentral t distribution, see `nct`.
		
		As an instance of the `rv_continuous` class, `t` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(df, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, df, loc=0, scale=1)
		    Probability density function.
		logpdf(x, df, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, df, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, df, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, df, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, df, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, df, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, df, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, df, loc=0, scale=1)
		    Non-central moment of order n
		stats(df, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(df, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(df,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(df, loc=0, scale=1)
		    Median of the distribution.
		mean(df, loc=0, scale=1)
		    Mean of the distribution.
		var(df, loc=0, scale=1)
		    Variance of the distribution.
		std(df, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, df, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		nct
		
		Notes
		-----
		The probability density function for `t` is:
		
		.. math::
		
		    f(x, \nu) = \frac{\Gamma((\nu+1)/2)}
		                    {\sqrt{\pi \nu} \Gamma(\nu/2)}
		                (1+x^2/\nu)^{-(\nu+1)/2}
		
		where :math:`x` is a real number and the degrees of freedom parameter
		:math:`\nu` (denoted ``df`` in the implementation) satisfies
		:math:`\nu > 0`. :math:`\Gamma` is the gamma function
		(`scipy.special.gamma`).
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``t.pdf(x, df, loc, scale)`` is identically
		equivalent to ``t.pdf(y, df) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import t
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> df = 2.74
		>>> mean, var, skew, kurt = t.stats(df, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(t.ppf(0.01, df),
		...                 t.ppf(0.99, df), 100)
		>>> ax.plot(x, t.pdf(x, df),
		...        'r-', lw=5, alpha=0.6, label='t pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = t(df)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = t.ppf([0.001, 0.5, 0.999], df)
		>>> np.allclose([0.001, 0.5, 0.999], t.cdf(vals, df))
		True
		
		Generate random numbers:
		
		>>> r = t.rvs(df, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function t(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic, ?parallel:Dynamic):Dynamic;
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
	static public function theilslopes(y:Dynamic, ?x:Dynamic, ?alpha:Dynamic, ?method:Dynamic):Float;
	/**
		Tie correction factor for Mann-Whitney U and Kruskal-Wallis H tests.
		
		Parameters
		----------
		rankvals : array_like
		    A 1-D sequence of ranks.  Typically this will be the array
		    returned by `~scipy.stats.rankdata`.
		
		Returns
		-------
		factor : float
		    Correction factor for U or H.
		
		See Also
		--------
		rankdata : Assign ranks to the data
		mannwhitneyu : Mann-Whitney rank test
		kruskal : Kruskal-Wallis H test
		
		References
		----------
		.. [1] Siegel, S. (1956) Nonparametric Statistics for the Behavioral
		       Sciences.  New York: McGraw-Hill.
		
		Examples
		--------
		>>> from scipy.stats import tiecorrect, rankdata
		>>> tiecorrect([1, 2.5, 2.5, 4])
		0.9
		>>> ranks = rankdata([1, 3, 2, 4, 5, 7, 2, 8, 4])
		>>> ranks
		array([ 1. ,  4. ,  2.5,  5.5,  7. ,  8. ,  2.5,  9. ,  5.5])
		>>> tiecorrect(ranks)
		0.9833333333333333
	**/
	static public function tiecorrect(rankvals:Dynamic):Float;
	/**
		Compute the trimmed maximum.
		
		This function computes the maximum value of an array along a given axis,
		while ignoring values larger than a specified upper limit.
		
		Parameters
		----------
		a : array_like
		    Array of values.
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
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		tmax : float, int or ndarray
		    Trimmed maximum.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tmax(x)
		19
		
		>>> stats.tmax(x, 13)
		13
		
		>>> stats.tmax(x, 13, inclusive=False)
		12
	**/
	static public function tmax(a:Dynamic, ?upperlimit:Dynamic, ?axis:Dynamic, ?inclusive:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute the trimmed mean.
		
		This function finds the arithmetic mean of given values, ignoring values
		outside the given `limits`.
		
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
		    Axis along which to compute test. Default is None.
		
		Returns
		-------
		tmean : ndarray
		    Trimmed mean.
		
		See Also
		--------
		trim_mean : Returns mean after trimming a proportion from both tails.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tmean(x)
		9.5
		>>> stats.tmean(x, (3,17))
		10.0
	**/
	static public function tmean(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the trimmed minimum.
		
		This function finds the miminum value of an array `a` along the
		specified axis, but only considering values greater than a specified
		lower limit.
		
		Parameters
		----------
		a : array_like
		    Array of values.
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
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		tmin : float, int or ndarray
		    Trimmed minimum.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tmin(x)
		0
		
		>>> stats.tmin(x, 13)
		13
		
		>>> stats.tmin(x, 13, inclusive=False)
		14
	**/
	static public function tmin(a:Dynamic, ?lowerlimit:Dynamic, ?axis:Dynamic, ?inclusive:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		A trapezoidal continuous random variable.
		
		As an instance of the `rv_continuous` class, `trapezoid` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, d, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, d, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, d, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, d, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, d, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, d, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, d, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, d, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, d, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, d, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, d, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, d, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c, d), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, d, loc=0, scale=1)
		    Median of the distribution.
		mean(c, d, loc=0, scale=1)
		    Mean of the distribution.
		var(c, d, loc=0, scale=1)
		    Variance of the distribution.
		std(c, d, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, d, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The trapezoidal distribution can be represented with an up-sloping line
		from ``loc`` to ``(loc + c*scale)``, then constant to ``(loc + d*scale)``
		and then downsloping from ``(loc + d*scale)`` to ``(loc+scale)``.  This
		defines the trapezoid base from ``loc`` to ``(loc+scale)`` and the flat
		top from ``c`` to ``d`` proportional to the position along the base
		with ``0 <= c <= d <= 1``.  When ``c=d``, this is equivalent to `triang`
		with the same values for `loc`, `scale` and `c`.
		The method of [1]_ is used for computing moments.
		
		`trapezoid` takes :math:`c` and :math:`d` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``trapezoid.pdf(x, c, d, loc, scale)`` is identically
		equivalent to ``trapezoid.pdf(y, c, d) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		The standard form is in the range [0, 1] with c the mode.
		The location parameter shifts the start to `loc`.
		The scale parameter changes the width from 1 to `scale`.
		
		Examples
		--------
		>>> from scipy.stats import trapezoid
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c, d = 0.2, 0.8
		>>> mean, var, skew, kurt = trapezoid.stats(c, d, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(trapezoid.ppf(0.01, c, d),
		...                 trapezoid.ppf(0.99, c, d), 100)
		>>> ax.plot(x, trapezoid.pdf(x, c, d),
		...        'r-', lw=5, alpha=0.6, label='trapezoid pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = trapezoid(c, d)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = trapezoid.ppf([0.001, 0.5, 0.999], c, d)
		>>> np.allclose([0.001, 0.5, 0.999], trapezoid.cdf(vals, c, d))
		True
		
		Generate random numbers:
		
		>>> r = trapezoid.rvs(c, d, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		
		References
		----------
		.. [1] Kacker, R.N. and Lawrence, J.F. (2007). Trapezoidal and triangular
		   distributions for Type B evaluation of standard uncertainty.
		   Metrologia 44, 117-127. :doi:`10.1088/0026-1394/44/2/003`
	**/
	static public function trapezoid(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		trapz is an alias for `trapezoid`
	**/
	static public function trapz(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A triangular continuous random variable.
		
		As an instance of the `rv_continuous` class, `triang` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The triangular distribution can be represented with an up-sloping line from
		``loc`` to ``(loc + c*scale)`` and then downsloping for ``(loc + c*scale)``
		to ``(loc + scale)``.
		
		`triang` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``triang.pdf(x, c, loc, scale)`` is identically
		equivalent to ``triang.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		The standard form is in the range [0, 1] with c the mode.
		The location parameter shifts the start to `loc`.
		The scale parameter changes the width from 1 to `scale`.
		
		Examples
		--------
		>>> from scipy.stats import triang
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 0.158
		>>> mean, var, skew, kurt = triang.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(triang.ppf(0.01, c),
		...                 triang.ppf(0.99, c), 100)
		>>> ax.plot(x, triang.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='triang pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = triang(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = triang.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], triang.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = triang.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function triang(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Slice off a proportion from ONE end of the passed array distribution.
		
		If `proportiontocut` = 0.1, slices off 'leftmost' or 'rightmost'
		10% of scores. The lowest or highest values are trimmed (depending on
		the tail).
		Slice off less if proportion results in a non-integer slice index
		(i.e. conservatively slices off `proportiontocut` ).
		
		Parameters
		----------
		a : array_like
		    Input array.
		proportiontocut : float
		    Fraction to cut off of 'left' or 'right' of distribution.
		tail : {'left', 'right'}, optional
		    Defaults to 'right'.
		axis : int or None, optional
		    Axis along which to trim data. Default is 0. If None, compute over
		    the whole array `a`.
		
		Returns
		-------
		trim1 : ndarray
		    Trimmed version of array `a`. The order of the trimmed content is
		    undefined.
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(20)
		>>> b = stats.trim1(a, 0.5, 'left')
		>>> b
		array([10, 11, 12, 13, 14, 16, 15, 17, 18, 19])
	**/
	static public function trim1(a:Dynamic, proportiontocut:Dynamic, ?tail:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return mean of array after trimming distribution from both tails.
		
		If `proportiontocut` = 0.1, slices off 'leftmost' and 'rightmost' 10% of
		scores. The input is sorted before slicing. Slices off less if proportion
		results in a non-integer slice index (i.e., conservatively slices off
		`proportiontocut` ).
		
		Parameters
		----------
		a : array_like
		    Input array.
		proportiontocut : float
		    Fraction to cut off of both tails of the distribution.
		axis : int or None, optional
		    Axis along which the trimmed means are computed. Default is 0.
		    If None, compute over the whole array `a`.
		
		Returns
		-------
		trim_mean : ndarray
		    Mean of trimmed array.
		
		See Also
		--------
		trimboth
		tmean : Compute the trimmed mean ignoring values outside given `limits`.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.trim_mean(x, 0.1)
		9.5
		>>> x2 = x.reshape(5, 4)
		>>> x2
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15],
		       [16, 17, 18, 19]])
		>>> stats.trim_mean(x2, 0.25)
		array([  8.,   9.,  10.,  11.])
		>>> stats.trim_mean(x2, 0.25, axis=1)
		array([  1.5,   5.5,   9.5,  13.5,  17.5])
	**/
	static public function trim_mean(a:Dynamic, proportiontocut:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Slice off a proportion of items from both ends of an array.
		
		Slice off the passed proportion of items from both ends of the passed
		array (i.e., with `proportiontocut` = 0.1, slices leftmost 10% **and**
		rightmost 10% of scores). The trimmed values are the lowest and
		highest ones.
		Slice off less if proportion results in a non-integer slice index (i.e.
		conservatively slices off `proportiontocut`).
		
		Parameters
		----------
		a : array_like
		    Data to trim.
		proportiontocut : float
		    Proportion (in range 0-1) of total data set to trim of each end.
		axis : int or None, optional
		    Axis along which to trim data. Default is 0. If None, compute over
		    the whole array `a`.
		
		Returns
		-------
		out : ndarray
		    Trimmed version of array `a`. The order of the trimmed content
		    is undefined.
		
		See Also
		--------
		trim_mean
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(20)
		>>> b = stats.trimboth(a, 0.1)
		>>> b.shape
		(16,)
	**/
	static public function trimboth(a:Dynamic, proportiontocut:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		A truncated exponential continuous random variable.
		
		As an instance of the `rv_continuous` class, `truncexpon` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(b,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(b, loc=0, scale=1)
		    Median of the distribution.
		mean(b, loc=0, scale=1)
		    Mean of the distribution.
		var(b, loc=0, scale=1)
		    Variance of the distribution.
		std(b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `truncexpon` is:
		
		.. math::
		
		    f(x, b) = \frac{\exp(-x)}{1 - \exp(-b)}
		
		for :math:`0 <= x <= b`.
		
		`truncexpon` takes ``b`` as a shape parameter for :math:`b`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``truncexpon.pdf(x, b, loc, scale)`` is identically
		equivalent to ``truncexpon.pdf(y, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import truncexpon
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> b = 4.69
		>>> mean, var, skew, kurt = truncexpon.stats(b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(truncexpon.ppf(0.01, b),
		...                 truncexpon.ppf(0.99, b), 100)
		>>> ax.plot(x, truncexpon.pdf(x, b),
		...        'r-', lw=5, alpha=0.6, label='truncexpon pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = truncexpon(b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = truncexpon.ppf([0.001, 0.5, 0.999], b)
		>>> np.allclose([0.001, 0.5, 0.999], truncexpon.cdf(vals, b))
		True
		
		Generate random numbers:
		
		>>> r = truncexpon.rvs(b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function truncexpon(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A truncated normal continuous random variable.
		
		As an instance of the `rv_continuous` class, `truncnorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, b, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, a, b, loc=0, scale=1)
		    Probability density function.
		logpdf(x, a, b, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, a, b, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, a, b, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, a, b, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, a, b, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, a, b, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, b, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, a, b, loc=0, scale=1)
		    Non-central moment of order n
		stats(a, b, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, b, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, b, loc=0, scale=1)
		    Median of the distribution.
		mean(a, b, loc=0, scale=1)
		    Mean of the distribution.
		var(a, b, loc=0, scale=1)
		    Variance of the distribution.
		std(a, b, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, a, b, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The standard form of this distribution is a standard normal truncated to
		the range [a, b] --- notice that a and b are defined over the domain of the
		standard normal.  To convert clip values for a specific mean and standard
		deviation, use::
		
		    a, b = (myclip_a - my_mean) / my_std, (myclip_b - my_mean) / my_std
		
		`truncnorm` takes :math:`a` and :math:`b` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``truncnorm.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``truncnorm.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import truncnorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, b = 0.1, 2
		>>> mean, var, skew, kurt = truncnorm.stats(a, b, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(truncnorm.ppf(0.01, a, b),
		...                 truncnorm.ppf(0.99, a, b), 100)
		>>> ax.plot(x, truncnorm.pdf(x, a, b),
		...        'r-', lw=5, alpha=0.6, label='truncnorm pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = truncnorm(a, b)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = truncnorm.ppf([0.001, 0.5, 0.999], a, b)
		>>> np.allclose([0.001, 0.5, 0.999], truncnorm.cdf(vals, a, b))
		True
		
		Generate random numbers:
		
		>>> r = truncnorm.rvs(a, b, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function truncnorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the trimmed standard error of the mean.
		
		This function finds the standard error of the mean for given
		values, ignoring values outside the given `limits`.
		
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
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tsem : float
		    Trimmed standard error of the mean.
		
		Notes
		-----
		`tsem` uses unbiased sample standard deviation, i.e. it uses a
		correction factor ``n / (n - 1)``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tsem(x)
		1.3228756555322954
		>>> stats.tsem(x, (3,17))
		1.1547005383792515
	**/
	static public function tsem(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		Compute the trimmed sample standard deviation.
		
		This function finds the sample standard deviation of given values,
		ignoring values outside the given `limits`.
		
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
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tstd : float
		    Trimmed sample standard deviation.
		
		Notes
		-----
		`tstd` computes the unbiased sample standard deviation, i.e. it uses a
		correction factor ``n / (n - 1)``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tstd(x)
		5.9160797830996161
		>>> stats.tstd(x, (3,17))
		4.4721359549995796
	**/
	static public function tstd(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		Calculate the T-test for the mean of ONE group of scores.
		
		This is a test for the null hypothesis that the expected value
		(mean) of a sample of independent observations `a` is equal to the given
		population mean, `popmean`.
		
		Parameters
		----------
		a : array_like
		    Sample observation.
		popmean : float or array_like
		    Expected value in null hypothesis. If array_like, then it must have the
		    same shape as `a` excluding the axis dimension.
		axis : int or None, optional
		    Axis along which to compute test; default is 0. If None, compute over
		    the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the mean of the underlying distribution of the sample
		      is different than the given population mean (`popmean`)
		    * 'less': the mean of the underlying distribution of the sample is
		      less than the given population mean (`popmean`)
		    * 'greater': the mean of the underlying distribution of the sample is
		      greater than the given population mean (`popmean`)
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		statistic : float or array
		    t-statistic.
		pvalue : float or array
		    Two-sided p-value.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		>>> rvs = stats.norm.rvs(loc=5, scale=10, size=(50, 2), random_state=rng)
		
		Test if mean of random sample is equal to true mean, and different mean.
		We reject the null hypothesis in the second case and don't reject it in
		the first case.
		
		>>> stats.ttest_1samp(rvs, 5.0)
		Ttest_1sampResult(statistic=array([-2.09794637, -1.75977004]), pvalue=array([0.04108952, 0.08468867]))
		>>> stats.ttest_1samp(rvs, 0.0)
		Ttest_1sampResult(statistic=array([1.64495065, 1.62095307]), pvalue=array([0.10638103, 0.11144602]))
		
		Examples using axis and non-scalar dimension for population mean.
		
		>>> result = stats.ttest_1samp(rvs, [5.0, 0.0])
		>>> result.statistic
		array([-2.09794637,  1.62095307])
		>>> result.pvalue
		array([0.04108952, 0.11144602])
		
		>>> result = stats.ttest_1samp(rvs.T, [5.0, 0.0], axis=1)
		>>> result.statistic
		array([-2.09794637,  1.62095307])
		>>> result.pvalue
		array([0.04108952, 0.11144602])
		
		>>> result = stats.ttest_1samp(rvs, [[5.0], [0.0]])
		>>> result.statistic
		array([[-2.09794637, -1.75977004],
		       [ 1.64495065,  1.62095307]])
		>>> result.pvalue
		array([[0.04108952, 0.08468867],
		       [0.10638103, 0.11144602]])
	**/
	static public function ttest_1samp(a:Dynamic, popmean:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		Calculate the T-test for the means of *two independent* samples of scores.
		
		This is a test for the null hypothesis that 2 independent samples
		have identical average (expected) values. This test assumes that the
		populations have identical variances by default.
		
		Parameters
		----------
		a, b : array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    arrays, `a`, and `b`.
		equal_var : bool, optional
		    If True (default), perform a standard independent 2 sample test
		    that assumes equal population variances [1]_.
		    If False, perform Welch's t-test, which does not assume equal
		    population variance [2]_.
		
		    .. versionadded:: 0.11.0
		
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		    The 'omit' option is not currently available for permutation tests or
		    one-sided asympyotic tests.
		
		permutations : non-negative int, np.inf, or None (default), optional
		    If 0 or None (default), use the t-distribution to calculate p-values.
		    Otherwise, `permutations` is  the number of random permutations that
		    will be used to estimate p-values using a permutation test. If
		    `permutations` equals or exceeds the number of distinct partitions of
		    the pooled data, an exact test is performed instead (i.e. each
		    distinct partition is used exactly once). See Notes for details.
		
		    .. versionadded:: 1.7.0
		
		random_state : {None, int, `numpy.random.Generator`,
		        `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		    Pseudorandom number generator state used to generate permutations
		    (used only when `permutations` is not None).
		
		    .. versionadded:: 1.7.0
		
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
		
		    .. versionadded:: 1.6.0
		
		trim : float, optional
		    If nonzero, performs a trimmed (Yuen's) t-test.
		    Defines the fraction of elements to be trimmed from each end of the
		    input samples. If 0 (default), no elements will be trimmed from either
		    side. The number of trimmed elements from each tail is the floor of the
		    trim times the number of elements. Valid range is [0, .5).
		
		    .. versionadded:: 1.7
		
		Returns
		-------
		statistic : float or array
		    The calculated t-statistic.
		pvalue : float or array
		    The p-value.
		
		Notes
		-----
		Suppose we observe two independent samples, e.g. flower petal lengths, and
		we are considering whether the two samples were drawn from the same
		population (e.g. the same species of flower or two species with similar
		petal characteristics) or two different populations.
		
		The t-test quantifies the difference between the arithmetic means
		of the two samples. The p-value quantifies the probability of observing
		as or more extreme values assuming the null hypothesis, that the
		samples are drawn from populations with the same population means, is true.
		A p-value larger than a chosen threshold (e.g. 5% or 1%) indicates that
		our observation is not so unlikely to have occurred by chance. Therefore,
		we do not reject the null hypothesis of equal population means.
		If the p-value is smaller than our threshold, then we have evidence
		against the null hypothesis of equal population means.
		
		By default, the p-value is determined by comparing the t-statistic of the
		observed data against a theoretical t-distribution.
		When ``1 < permutations < binom(n, k)``, where
		
		* ``k`` is the number of observations in `a`,
		* ``n`` is the total number of observations in `a` and `b`, and
		* ``binom(n, k)`` is the binomial coefficient (``n`` choose ``k``),
		
		the data are pooled (concatenated), randomly assigned to either group `a`
		or `b`, and the t-statistic is calculated. This process is performed
		repeatedly (`permutation` times), generating a distribution of the
		t-statistic under the null hypothesis, and the t-statistic of the observed
		data is compared to this distribution to determine the p-value. When
		``permutations >= binom(n, k)``, an exact test is performed: the data are
		partitioned between the groups in each distinct way exactly once.
		
		The permutation test can be computationally expensive and not necessarily
		more accurate than the analytical test, but it does not make strong
		assumptions about the shape of the underlying distribution.
		
		Use of trimming is commonly referred to as the trimmed t-test. At times
		called Yuen's t-test, this is an extension of Welch's t-test, with the
		difference being the use of winsorized means in calculation of the variance
		and the trimmed sample size in calculation of the statistic. Trimming is
		recommended if the underlying distribution is long-tailed or contaminated
		with outliers [4]_.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/T-test#Independent_two-sample_t-test
		
		.. [2] https://en.wikipedia.org/wiki/Welch%27s_t-test
		
		.. [3] http://en.wikipedia.org/wiki/Resampling_%28statistics%29
		
		.. [4] Yuen, Karen K. "The Two-Sample Trimmed t for Unequal Population
		       Variances." Biometrika, vol. 61, no. 1, 1974, pp. 165-170. JSTOR,
		       www.jstor.org/stable/2334299. Accessed 30 Mar. 2021.
		
		.. [5] Yuen, Karen K., and W. J. Dixon. "The Approximate Behaviour and
		       Performance of the Two-Sample Trimmed t." Biometrika, vol. 60,
		       no. 2, 1973, pp. 369-374. JSTOR, www.jstor.org/stable/2334550.
		       Accessed 30 Mar. 2021.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		Test with sample with identical means:
		
		>>> rvs1 = stats.norm.rvs(loc=5, scale=10, size=500, random_state=rng)
		>>> rvs2 = stats.norm.rvs(loc=5, scale=10, size=500, random_state=rng)
		>>> stats.ttest_ind(rvs1, rvs2)
		Ttest_indResult(statistic=-0.4390847099199348, pvalue=0.6606952038870015)
		>>> stats.ttest_ind(rvs1, rvs2, equal_var=False)
		Ttest_indResult(statistic=-0.4390847099199348, pvalue=0.6606952553131064)
		
		`ttest_ind` underestimates p for unequal variances:
		
		>>> rvs3 = stats.norm.rvs(loc=5, scale=20, size=500, random_state=rng)
		>>> stats.ttest_ind(rvs1, rvs3)
		Ttest_indResult(statistic=-1.6370984482905417, pvalue=0.1019251574705033)
		>>> stats.ttest_ind(rvs1, rvs3, equal_var=False)
		Ttest_indResult(statistic=-1.637098448290542, pvalue=0.10202110497954867)
		
		When ``n1 != n2``, the equal variance t-statistic is no longer equal to the
		unequal variance t-statistic:
		
		>>> rvs4 = stats.norm.rvs(loc=5, scale=20, size=100, random_state=rng)
		>>> stats.ttest_ind(rvs1, rvs4)
		Ttest_indResult(statistic=-1.9481646859513422, pvalue=0.05186270935842703)
		>>> stats.ttest_ind(rvs1, rvs4, equal_var=False)
		Ttest_indResult(statistic=-1.3146566100751664, pvalue=0.1913495266513811)
		
		T-test with different means, variance, and n:
		
		>>> rvs5 = stats.norm.rvs(loc=8, scale=20, size=100, random_state=rng)
		>>> stats.ttest_ind(rvs1, rvs5)
		Ttest_indResult(statistic=-2.8415950600298774, pvalue=0.0046418707568707885)
		>>> stats.ttest_ind(rvs1, rvs5, equal_var=False)
		Ttest_indResult(statistic=-1.8686598649188084, pvalue=0.06434714193919686)
		
		When performing a permutation test, more permutations typically yields
		more accurate results. Use a ``np.random.Generator`` to ensure
		reproducibility:
		
		>>> stats.ttest_ind(rvs1, rvs5, permutations=10000,
		...                 random_state=rng)
		Ttest_indResult(statistic=-2.8415950600298774, pvalue=0.0052)
		
		Take these two samples, one of which has an extreme tail.
		
		>>> a = (56, 128.6, 12, 123.8, 64.34, 78, 763.3)
		>>> b = (1.1, 2.9, 4.2)
		
		Use the `trim` keyword to perform a trimmed (Yuen) t-test. For example,
		using 20% trimming, ``trim=.2``, the test will reduce the impact of one
		(``np.floor(trim*len(a))``) element from each tail of sample `a`. It will
		have no effect on sample `b` because ``np.floor(trim*len(b))`` is 0.
		
		>>> stats.ttest_ind(a, b, trim=.2)
		Ttest_indResult(statistic=3.4463884028073513,
		                pvalue=0.01369338726499547)
	**/
	static public function ttest_ind(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?equal_var:Dynamic, ?nan_policy:Dynamic, ?permutations:Dynamic, ?random_state:Dynamic, ?alternative:Dynamic, ?trim:Dynamic):Dynamic;
	/**
		T-test for means of two independent samples from descriptive statistics.
		
		This is a test for the null hypothesis that two independent
		samples have identical average (expected) values.
		
		Parameters
		----------
		mean1 : array_like
		    The mean(s) of sample 1.
		std1 : array_like
		    The standard deviation(s) of sample 1.
		nobs1 : array_like
		    The number(s) of observations of sample 1.
		mean2 : array_like
		    The mean(s) of sample 2.
		std2 : array_like
		    The standard deviations(s) of sample 2.
		nobs2 : array_like
		    The number(s) of observations of sample 2.
		equal_var : bool, optional
		    If True (default), perform a standard independent 2 sample test
		    that assumes equal population variances [1]_.
		    If False, perform Welch's t-test, which does not assume equal
		    population variance [2]_.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the means of the distributions are unequal.
		    * 'less': the mean of the first distribution is less than the
		      mean of the second distribution.
		    * 'greater': the mean of the first distribution is greater than the
		      mean of the second distribution.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		statistic : float or array
		    The calculated t-statistics.
		pvalue : float or array
		    The two-tailed p-value.
		
		See Also
		--------
		scipy.stats.ttest_ind
		
		Notes
		-----
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/T-test#Independent_two-sample_t-test
		
		.. [2] https://en.wikipedia.org/wiki/Welch%27s_t-test
		
		Examples
		--------
		Suppose we have the summary data for two samples, as follows::
		
		                     Sample   Sample
		               Size   Mean   Variance
		    Sample 1    13    15.0     87.5
		    Sample 2    11    12.0     39.0
		
		Apply the t-test to this data (with the assumption that the population
		variances are equal):
		
		>>> from scipy.stats import ttest_ind_from_stats
		>>> ttest_ind_from_stats(mean1=15.0, std1=np.sqrt(87.5), nobs1=13,
		...                      mean2=12.0, std2=np.sqrt(39.0), nobs2=11)
		Ttest_indResult(statistic=0.9051358093310269, pvalue=0.3751996797581487)
		
		For comparison, here is the data from which those summary statistics
		were taken.  With this data, we can compute the same result using
		`scipy.stats.ttest_ind`:
		
		>>> a = np.array([1, 3, 4, 6, 11, 13, 15, 19, 22, 24, 25, 26, 26])
		>>> b = np.array([2, 4, 6, 9, 11, 13, 14, 15, 18, 19, 21])
		>>> from scipy.stats import ttest_ind
		>>> ttest_ind(a, b)
		Ttest_indResult(statistic=0.905135809331027, pvalue=0.3751996797581486)
		
		Suppose we instead have binary data and would like to apply a t-test to
		compare the proportion of 1s in two independent groups::
		
		                      Number of    Sample     Sample
		                Size    ones        Mean     Variance
		    Sample 1    150      30         0.2        0.16
		    Sample 2    200      45         0.225      0.174375
		
		The sample mean :math:`\hat{p}` is the proportion of ones in the sample
		and the variance for a binary observation is estimated by
		:math:`\hat{p}(1-\hat{p})`.
		
		>>> ttest_ind_from_stats(mean1=0.2, std1=np.sqrt(0.16), nobs1=150,
		...                      mean2=0.225, std2=np.sqrt(0.17437), nobs2=200)
		Ttest_indResult(statistic=-0.564327545549774, pvalue=0.5728947691244874)
		
		For comparison, we could compute the t statistic and p-value using
		arrays of 0s and 1s and `scipy.stat.ttest_ind`, as above.
		
		>>> group1 = np.array([1]*30 + [0]*(150-30))
		>>> group2 = np.array([1]*45 + [0]*(200-45))
		>>> ttest_ind(group1, group2)
		Ttest_indResult(statistic=-0.5627179589855622, pvalue=0.573989277115258)
	**/
	static public function ttest_ind_from_stats(mean1:Dynamic, std1:Dynamic, nobs1:Dynamic, mean2:Dynamic, std2:Dynamic, nobs2:Dynamic, ?equal_var:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		Calculate the t-test on TWO RELATED samples of scores, a and b.
		
		This is a test for the null hypothesis that two related or
		repeated samples have identical average (expected) values.
		
		Parameters
		----------
		a, b : array_like
		    The arrays must have the same shape.
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    arrays, `a`, and `b`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
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
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		statistic : float or array
		    t-statistic.
		pvalue : float or array
		    The p-value.
		
		Notes
		-----
		Examples for use are scores of the same set of student in
		different exams, or repeated sampling from the same units. The
		test measures whether the average score differs significantly
		across samples (e.g. exams). If we observe a large p-value, for
		example greater than 0.05 or 0.1 then we cannot reject the null
		hypothesis of identical average scores. If the p-value is smaller
		than the threshold, e.g. 1%, 5% or 10%, then we reject the null
		hypothesis of equal averages. Small p-values are associated with
		large t-statistics.
		
		References
		----------
		https://en.wikipedia.org/wiki/T-test#Dependent_t-test_for_paired_samples
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		>>> rvs1 = stats.norm.rvs(loc=5, scale=10, size=500, random_state=rng)
		>>> rvs2 = (stats.norm.rvs(loc=5, scale=10, size=500, random_state=rng)
		...         + stats.norm.rvs(scale=0.2, size=500, random_state=rng))
		>>> stats.ttest_rel(rvs1, rvs2)
		Ttest_relResult(statistic=-0.4549717054410304, pvalue=0.6493274702088672)
		>>> rvs3 = (stats.norm.rvs(loc=8, scale=10, size=500, random_state=rng)
		...         + stats.norm.rvs(scale=0.2, size=500, random_state=rng))
		>>> stats.ttest_rel(rvs1, rvs3)
		Ttest_relResult(statistic=-5.879467544540889, pvalue=7.540777129099917e-09)
	**/
	static public function ttest_rel(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		Perform Tukey's HSD test for equality of means over multiple treatments.
		
		Tukey's honestly significant difference (HSD) test performs pairwise
		comparison of means for a set of samples. Whereas ANOVA (e.g. `f_oneway`)
		assesses whether the true means underlying each sample are identical,
		Tukey's HSD is a post hoc test used to compare the mean of each sample
		to the mean of each other sample.
		
		The null hypothesis is that the distributions underlying the samples all
		have the same mean. The test statistic, which is computed for every
		possible pairing of samples, is simply the difference between the sample
		means. For each pair, the p-value is the probability under the null
		hypothesis (and other assumptions; see notes) of observing such an extreme
		value of the statistic, considering that many pairwise comparisons are
		being performed. Confidence intervals for the difference between each pair
		of means are also available.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The sample measurements for each group. There must be at least
		    two arguments.
		
		Returns
		-------
		result : `~scipy.stats._result_classes.TukeyHSDResult` instance
		    The return value is an object with the following attributes:
		
		    statistic : float ndarray
		        The computed statistic of the test for each comparison. The element
		        at index ``(i, j)`` is the statistic for the comparison between
		        groups ``i`` and ``j``.
		    pvalue : float ndarray
		        The computed p-value of the test for each comparison. The element
		        at index ``(i, j)`` is the p-value for the comparison between
		        groups ``i`` and ``j``.
		
		    The object has the following methods:
		
		    confidence_interval(confidence_level=0.95):
		        Compute the confidence interval for the specified confidence level.
		
		Notes
		-----
		The use of this test relies on several assumptions.
		
		1. The observations are independent within and among groups.
		2. The observations within each group are normally distributed.
		3. The distributions from which the samples are drawn have the same finite
		   variance.
		
		The original formulation of the test was for samples of equal size [6]_.
		In case of unequal sample sizes, the test uses the Tukey-Kramer method
		[4]_.
		
		References
		----------
		.. [1] NIST/SEMATECH e-Handbook of Statistical Methods, "7.4.7.1. Tukey's
		       Method."
		       https://www.itl.nist.gov/div898/handbook/prc/section4/prc471.htm,
		       28 November 2020.
		.. [2] Abdi, Herve & Williams, Lynne. (2021). "Tukey's Honestly Significant
		       Difference (HSD) Test."
		       https://personal.utdallas.edu/~herve/abdi-HSD2010-pretty.pdf
		.. [3] "One-Way ANOVA Using SAS PROC ANOVA & PROC GLM." SAS
		       Tutorials, 2007, www.stattutorials.com/SAS/TUTORIAL-PROC-GLM.htm.
		.. [4] Kramer, Clyde Young. "Extension of Multiple Range Tests to Group
		       Means with Unequal Numbers of Replications." Biometrics, vol. 12,
		       no. 3, 1956, pp. 307-310. JSTOR, www.jstor.org/stable/3001469.
		       Accessed 25 May 2021.
		.. [5] NIST/SEMATECH e-Handbook of Statistical Methods, "7.4.3.3.
		       The ANOVA table and tests of hypotheses about means"
		       https://www.itl.nist.gov/div898/handbook/prc/section4/prc433.htm,
		       2 June 2021.
		.. [6] Tukey, John W. "Comparing Individual Means in the Analysis of
		       Variance." Biometrics, vol. 5, no. 2, 1949, pp. 99-114. JSTOR,
		       www.jstor.org/stable/3001913. Accessed 14 June 2021.
		
		
		Examples
		--------
		Here are some data comparing the time to relief of three brands of
		headache medicine, reported in minutes. Data adapted from [3]_.
		
		>>> from scipy.stats import tukey_hsd
		>>> group0 = [24.5, 23.5, 26.4, 27.1, 29.9]
		>>> group1 = [28.4, 34.2, 29.5, 32.2, 30.1]
		>>> group2 = [26.1, 28.3, 24.3, 26.2, 27.8]
		
		We would like to see if the means between any of the groups are
		significantly different. First, visually examine a box and whisker plot.
		
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		>>> ax.boxplot([group0, group1, group2])
		>>> ax.set_xticklabels(["group0", "group1", "group2"]) # doctest: +SKIP
		>>> ax.set_ylabel("mean") # doctest: +SKIP
		>>> plt.show()
		
		From the box and whisker plot, we can see overlap in the interquartile
		ranges group 1 to group 2 and group 3, but we can apply the ``tukey_hsd``
		test to determine if the difference between means is significant. We
		set a significance level of .05 to reject the null hypothesis.
		
		>>> res = tukey_hsd(group0, group1, group2)
		>>> print(res)
		Tukey's HSD Pairwise Group Comparisons (95.0% Confidence Interval)
		Comparison  Statistic  p-value   Lower CI   Upper CI
		(0 - 1)     -4.600      0.014     -8.249     -0.951
		(0 - 2)     -0.260      0.980     -3.909      3.389
		(1 - 0)      4.600      0.014      0.951      8.249
		(1 - 2)      4.340      0.020      0.691      7.989
		(2 - 0)      0.260      0.980     -3.389      3.909
		(2 - 1)     -4.340      0.020     -7.989     -0.691
		
		The null hypothesis is that each group has the same mean. The p-value for
		comparisons between ``group0`` and ``group1`` as well as ``group1`` and
		``group2`` do not exceed .05, so we reject the null hypothesis that they
		have the same means. The p-value of the comparison between ``group0``
		and ``group2`` exceeds .05, so we accept the null hypothesis that there
		is not a significant difference between their means.
		
		We can also compute the confidence interval associated with our chosen
		confidence level.
		
		>>> group0 = [24.5, 23.5, 26.4, 27.1, 29.9]
		>>> group1 = [28.4, 34.2, 29.5, 32.2, 30.1]
		>>> group2 = [26.1, 28.3, 24.3, 26.2, 27.8]
		>>> result = tukey_hsd(group0, group1, group2)
		>>> conf = res.confidence_interval(confidence_level=.99)
		>>> for ((i, j), l) in np.ndenumerate(conf.low):
		...     # filter out self comparisons
		...     if i != j:
		...         h = conf.high[i,j]
		...         print(f"({i} - {j}) {l:>6.3f} {h:>6.3f}")
		(0 - 1) -9.480  0.280
		(0 - 2) -5.140  4.620
		(1 - 0) -0.280  9.480
		(1 - 2) -0.540  9.220
		(2 - 0) -4.620  5.140
		(2 - 1) -9.220  0.540
	**/
	static public function tukey_hsd(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		A Tukey-Lamdba continuous random variable.
		
		As an instance of the `rv_continuous` class, `tukeylambda` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(lam, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, lam, loc=0, scale=1)
		    Probability density function.
		logpdf(x, lam, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, lam, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, lam, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, lam, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, lam, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, lam, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, lam, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, lam, loc=0, scale=1)
		    Non-central moment of order n
		stats(lam, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(lam, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(lam,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(lam, loc=0, scale=1)
		    Median of the distribution.
		mean(lam, loc=0, scale=1)
		    Mean of the distribution.
		var(lam, loc=0, scale=1)
		    Variance of the distribution.
		std(lam, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, lam, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		A flexible distribution, able to represent and interpolate between the
		following distributions:
		
		- Cauchy                (:math:`lambda = -1`)
		- logistic              (:math:`lambda = 0`)
		- approx Normal         (:math:`lambda = 0.14`)
		- uniform from -1 to 1  (:math:`lambda = 1`)
		
		`tukeylambda` takes a real number :math:`lambda` (denoted ``lam``
		in the implementation) as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``tukeylambda.pdf(x, lam, loc, scale)`` is identically
		equivalent to ``tukeylambda.pdf(y, lam) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import tukeylambda
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> lam = 3.13
		>>> mean, var, skew, kurt = tukeylambda.stats(lam, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(tukeylambda.ppf(0.01, lam),
		...                 tukeylambda.ppf(0.99, lam), 100)
		>>> ax.plot(x, tukeylambda.pdf(x, lam),
		...        'r-', lw=5, alpha=0.6, label='tukeylambda pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = tukeylambda(lam)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = tukeylambda.ppf([0.001, 0.5, 0.999], lam)
		>>> np.allclose([0.001, 0.5, 0.999], tukeylambda.cdf(vals, lam))
		True
		
		Generate random numbers:
		
		>>> r = tukeylambda.rvs(lam, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function tukeylambda(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the trimmed variance.
		
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
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tvar : float
		    Trimmed variance.
		
		Notes
		-----
		`tvar` computes the unbiased sample variance, i.e. it uses a correction
		factor ``n / (n - 1)``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tvar(x)
		35.0
		>>> stats.tvar(x, (3,17))
		20.0
	**/
	static public function tvar(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		A uniform continuous random variable.
		
		In the standard form, the distribution is uniform on ``[0, 1]``. Using
		the parameters ``loc`` and ``scale``, one obtains the uniform distribution
		on ``[loc, loc + scale]``.
		
		As an instance of the `rv_continuous` class, `uniform` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Examples
		--------
		>>> from scipy.stats import uniform
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = uniform.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(uniform.ppf(0.01),
		...                 uniform.ppf(0.99), 100)
		>>> ax.plot(x, uniform.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='uniform pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = uniform()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = uniform.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], uniform.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = uniform.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function uniform(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var unitary_group : Dynamic;
	/**
		Compute the coefficient of variation.
		
		The coefficient of variation is the standard deviation divided by the
		mean.  This function is equivalent to::
		
		    np.std(x, axis=axis, ddof=ddof) / np.mean(x)
		
		The default for ``ddof`` is 0, but many definitions of the coefficient
		of variation use the square root of the unbiased sample variance
		for the sample standard deviation, which corresponds to ``ddof=1``.
		
		The function does not take the absolute value of the mean of the data,
		so the return value is negative if the mean is negative.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int or None, optional
		    Axis along which to calculate the coefficient of variation.
		    Default is 0. If None, compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains ``nan``.
		    The following options are available:
		
		      * 'propagate': return ``nan``
		      * 'raise': raise an exception
		      * 'omit': perform the calculation with ``nan`` values omitted
		
		    The default is 'propagate'.
		ddof : int, optional
		    Gives the "Delta Degrees Of Freedom" used when computing the
		    standard deviation.  The divisor used in the calculation of the
		    standard deviation is ``N - ddof``, where ``N`` is the number of
		    elements.  `ddof` must be less than ``N``; if it isn't, the result
		    will be ``nan`` or ``inf``, depending on ``N`` and the values in
		    the array.  By default `ddof` is zero for backwards compatibility,
		    but it is recommended to use ``ddof=1`` to ensure that the sample
		    standard deviation is computed as the square root of the unbiased
		    sample variance.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the input array.
		
		Returns
		-------
		variation : ndarray
		    The calculated variation along the requested axis.
		
		Notes
		-----
		There are several edge cases that are handled without generating a
		warning:
		
		* If both the mean and the standard deviation are zero, ``nan``
		  is returned.
		* If the mean is zero and the standard deviation is nonzero, ``inf``
		  is returned.
		* If the input has length zero (either because the array has zero
		  length, or all the input values are ``nan`` and ``nan_policy`` is
		  ``'omit'``), ``nan`` is returned.
		* If the input contains ``inf``, ``nan`` is returned.
		
		References
		----------
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		
		Examples
		--------
		>>> from scipy.stats import variation
		>>> variation([1, 2, 3, 4, 5], ddof=1)
		0.5270462766947299
		
		Compute the variation along a given dimension of an array that contains
		a few ``nan`` values:
		
		>>> x = np.array([[  10.0, np.nan, 11.0, 19.0, 23.0, 29.0, 98.0],
		...               [  29.0,   30.0, 32.0, 33.0, 35.0, 56.0, 57.0],
		...               [np.nan, np.nan, 12.0, 13.0, 16.0, 16.0, 17.0]])
		>>> variation(x, axis=1, ddof=1, nan_policy='omit')
		array([1.05109361, 0.31428986, 0.146483  ])
	**/
	static public function variation(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		A Von Mises continuous random variable.
		
		As an instance of the `rv_continuous` class, `vonmises` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(kappa, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, kappa, loc=0, scale=1)
		    Probability density function.
		logpdf(x, kappa, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, kappa, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, kappa, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, kappa, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, kappa, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, kappa, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, kappa, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, kappa, loc=0, scale=1)
		    Non-central moment of order n
		stats(kappa, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(kappa, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(kappa,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(kappa, loc=0, scale=1)
		    Median of the distribution.
		mean(kappa, loc=0, scale=1)
		    Mean of the distribution.
		var(kappa, loc=0, scale=1)
		    Variance of the distribution.
		std(kappa, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, kappa, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `vonmises` and `vonmises_line` is:
		
		.. math::
		
		    f(x, \kappa) = \frac{ \exp(\kappa \cos(x)) }{ 2 \pi I_0(\kappa) }
		
		for :math:`-\pi \le x \le \pi`, :math:`\kappa > 0`. :math:`I_0` is the
		modified Bessel function of order zero (`scipy.special.i0`).
		
		`vonmises` is a circular distribution which does not restrict the
		distribution to a fixed interval. Currently, there is no circular
		distribution framework in scipy. The ``cdf`` is implemented such that
		``cdf(x + 2*np.pi) == cdf(x) + 1``.
		
		`vonmises_line` is the same distribution, defined on :math:`[-\pi, \pi]`
		on the real line. This is a regular (i.e. non-circular) distribution.
		
		`vonmises` and `vonmises_line` take ``kappa`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``vonmises.pdf(x, kappa, loc, scale)`` is identically
		equivalent to ``vonmises.pdf(y, kappa) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import vonmises
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> kappa = 3.99
		>>> mean, var, skew, kurt = vonmises.stats(kappa, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(vonmises.ppf(0.01, kappa),
		...                 vonmises.ppf(0.99, kappa), 100)
		>>> ax.plot(x, vonmises.pdf(x, kappa),
		...        'r-', lw=5, alpha=0.6, label='vonmises pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = vonmises(kappa)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = vonmises.ppf([0.001, 0.5, 0.999], kappa)
		>>> np.allclose([0.001, 0.5, 0.999], vonmises.cdf(vals, kappa))
		True
		
		Generate random numbers:
		
		>>> r = vonmises.rvs(kappa, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function vonmises(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Von Mises continuous random variable.
		
		As an instance of the `rv_continuous` class, `vonmises_line` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(kappa, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, kappa, loc=0, scale=1)
		    Probability density function.
		logpdf(x, kappa, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, kappa, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, kappa, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, kappa, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, kappa, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, kappa, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, kappa, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, kappa, loc=0, scale=1)
		    Non-central moment of order n
		stats(kappa, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(kappa, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(kappa,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(kappa, loc=0, scale=1)
		    Median of the distribution.
		mean(kappa, loc=0, scale=1)
		    Mean of the distribution.
		var(kappa, loc=0, scale=1)
		    Variance of the distribution.
		std(kappa, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, kappa, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `vonmises` and `vonmises_line` is:
		
		.. math::
		
		    f(x, \kappa) = \frac{ \exp(\kappa \cos(x)) }{ 2 \pi I_0(\kappa) }
		
		for :math:`-\pi \le x \le \pi`, :math:`\kappa > 0`. :math:`I_0` is the
		modified Bessel function of order zero (`scipy.special.i0`).
		
		`vonmises` is a circular distribution which does not restrict the
		distribution to a fixed interval. Currently, there is no circular
		distribution framework in scipy. The ``cdf`` is implemented such that
		``cdf(x + 2*np.pi) == cdf(x) + 1``.
		
		`vonmises_line` is the same distribution, defined on :math:`[-\pi, \pi]`
		on the real line. This is a regular (i.e. non-circular) distribution.
		
		`vonmises` and `vonmises_line` take ``kappa`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``vonmises_line.pdf(x, kappa, loc, scale)`` is identically
		equivalent to ``vonmises_line.pdf(y, kappa) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import vonmises_line
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> kappa = 3.99
		>>> mean, var, skew, kurt = vonmises_line.stats(kappa, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(vonmises_line.ppf(0.01, kappa),
		...                 vonmises_line.ppf(0.99, kappa), 100)
		>>> ax.plot(x, vonmises_line.pdf(x, kappa),
		...        'r-', lw=5, alpha=0.6, label='vonmises_line pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = vonmises_line(kappa)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = vonmises_line.ppf([0.001, 0.5, 0.999], kappa)
		>>> np.allclose([0.001, 0.5, 0.999], vonmises_line.cdf(vals, kappa))
		True
		
		Generate random numbers:
		
		>>> r = vonmises_line.rvs(kappa, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function vonmises_line(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Wald continuous random variable.
		
		As an instance of the `rv_continuous` class, `wald` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, loc=0, scale=1)
		    Probability density function.
		logpdf(x, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, loc=0, scale=1)
		    Non-central moment of order n
		stats(loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(loc=0, scale=1)
		    Median of the distribution.
		mean(loc=0, scale=1)
		    Mean of the distribution.
		var(loc=0, scale=1)
		    Variance of the distribution.
		std(loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `wald` is:
		
		.. math::
		
		    f(x) = \frac{1}{\sqrt{2\pi x^3}} \exp(- \frac{ (x-1)^2 }{ 2x })
		
		for :math:`x >= 0`.
		
		`wald` is a special case of `invgauss` with ``mu=1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``wald.pdf(x, loc, scale)`` is identically
		equivalent to ``wald.pdf(y) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import wald
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		
		>>> mean, var, skew, kurt = wald.stats(moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(wald.ppf(0.01),
		...                 wald.ppf(0.99), 100)
		>>> ax.plot(x, wald.pdf(x),
		...        'r-', lw=5, alpha=0.6, label='wald pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = wald()
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = wald.ppf([0.001, 0.5, 0.999])
		>>> np.allclose([0.001, 0.5, 0.999], wald.cdf(vals))
		True
		
		Generate random numbers:
		
		>>> r = wald.rvs(size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function wald(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the first Wasserstein distance between two 1D distributions.
		
		This distance is also known as the earth mover's distance, since it can be
		seen as the minimum amount of "work" required to transform :math:`u` into
		:math:`v`, where "work" is measured as the amount of distribution weight
		that must be moved, multiplied by the distance it has to be moved.
		
		.. versionadded:: 1.0.0
		
		Parameters
		----------
		u_values, v_values : array_like
		    Values observed in the (empirical) distribution.
		u_weights, v_weights : array_like, optional
		    Weight for each value. If unspecified, each value is assigned the same
		    weight.
		    `u_weights` (resp. `v_weights`) must have the same length as
		    `u_values` (resp. `v_values`). If the weight sum differs from 1, it
		    must still be positive and finite so that the weights can be normalized
		    to sum to 1.
		
		Returns
		-------
		distance : float
		    The computed distance between the distributions.
		
		Notes
		-----
		The first Wasserstein distance between the distributions :math:`u` and
		:math:`v` is:
		
		.. math::
		
		    l_1 (u, v) = \inf_{\pi \in \Gamma (u, v)} \int_{\mathbb{R} \times
		    \mathbb{R}} |x-y| \mathrm{d} \pi (x, y)
		
		where :math:`\Gamma (u, v)` is the set of (probability) distributions on
		:math:`\mathbb{R} \times \mathbb{R}` whose marginals are :math:`u` and
		:math:`v` on the first and second factors respectively.
		
		If :math:`U` and :math:`V` are the respective CDFs of :math:`u` and
		:math:`v`, this distance also equals to:
		
		.. math::
		
		    l_1(u, v) = \int_{-\infty}^{+\infty} |U-V|
		
		See [2]_ for a proof of the equivalence of both definitions.
		
		The input distributions can be empirical, therefore coming from samples
		whose values are effectively inputs of the function, or they can be seen as
		generalized functions, in which case they are weighted sums of Dirac delta
		functions located at the specified values.
		
		References
		----------
		.. [1] "Wasserstein metric", https://en.wikipedia.org/wiki/Wasserstein_metric
		.. [2] Ramdas, Garcia, Cuturi "On Wasserstein Two Sample Testing and Related
		       Families of Nonparametric Tests" (2015). :arXiv:`1509.02237`.
		
		Examples
		--------
		>>> from scipy.stats import wasserstein_distance
		>>> wasserstein_distance([0, 1, 3], [5, 6, 8])
		5.0
		>>> wasserstein_distance([0, 1], [0, 1], [3, 1], [2, 2])
		0.25
		>>> wasserstein_distance([3.4, 3.9, 7.5, 7.8], [4.5, 1.4],
		...                      [1.4, 0.9, 3.1, 7.2], [3.2, 3.5])
		4.0781331438047861
	**/
	static public function wasserstein_distance(u_values:Dynamic, v_values:Dynamic, ?u_weights:Dynamic, ?v_weights:Dynamic):Float;
	/**
		Weibull maximum continuous random variable.
		
		The Weibull Maximum Extreme Value distribution, from extreme value theory
		(Fisher-Gnedenko theorem), is the limiting distribution of rescaled
		maximum of iid random variables. This is the distribution of -X
		if X is from the `weibull_min` function.
		
		As an instance of the `rv_continuous` class, `weibull_max` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		weibull_min
		
		Notes
		-----
		The probability density function for `weibull_max` is:
		
		.. math::
		
		    f(x, c) = c (-x)^{c-1} \exp(-(-x)^c)
		
		for :math:`x < 0`, :math:`c > 0`.
		
		`weibull_max` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``weibull_max.pdf(x, c, loc, scale)`` is identically
		equivalent to ``weibull_max.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		https://en.wikipedia.org/wiki/Weibull_distribution
		
		https://en.wikipedia.org/wiki/Fisher-Tippett-Gnedenko_theorem
		
		Examples
		--------
		>>> from scipy.stats import weibull_max
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 2.87
		>>> mean, var, skew, kurt = weibull_max.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(weibull_max.ppf(0.01, c),
		...                 weibull_max.ppf(0.99, c), 100)
		>>> ax.plot(x, weibull_max.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='weibull_max pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = weibull_max(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = weibull_max.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], weibull_max.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = weibull_max.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function weibull_max(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Weibull minimum continuous random variable.
		
		The Weibull Minimum Extreme Value distribution, from extreme value theory
		(Fisher-Gnedenko theorem), is also often simply called the Weibull
		distribution. It arises as the limiting distribution of the rescaled
		minimum of iid random variables.
		
		As an instance of the `rv_continuous` class, `weibull_min` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		weibull_max, numpy.random.Generator.weibull, exponweib
		
		Notes
		-----
		The probability density function for `weibull_min` is:
		
		.. math::
		
		    f(x, c) = c x^{c-1} \exp(-x^c)
		
		for :math:`x > 0`, :math:`c > 0`.
		
		`weibull_min` takes ``c`` as a shape parameter for :math:`c`.
		(named :math:`k` in Wikipedia article and :math:`a` in
		``numpy.random.weibull``).  Special shape values are :math:`c=1` and
		:math:`c=2` where Weibull distribution reduces to the `expon` and
		`rayleigh` distributions respectively.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``weibull_min.pdf(x, c, loc, scale)`` is identically
		equivalent to ``weibull_min.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		References
		----------
		https://en.wikipedia.org/wiki/Weibull_distribution
		
		https://en.wikipedia.org/wiki/Fisher-Tippett-Gnedenko_theorem
		
		Examples
		--------
		>>> from scipy.stats import weibull_min
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 1.79
		>>> mean, var, skew, kurt = weibull_min.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(weibull_min.ppf(0.01, c),
		...                 weibull_min.ppf(0.99, c), 100)
		>>> ax.plot(x, weibull_min.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='weibull_min pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = weibull_min(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = weibull_min.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], weibull_min.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = weibull_min.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function weibull_min(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute a weighted version of Kendall's :math:`\tau`.
		
		The weighted :math:`\tau` is a weighted version of Kendall's
		:math:`\tau` in which exchanges of high weight are more influential than
		exchanges of low weight. The default parameters compute the additive
		hyperbolic version of the index, :math:`\tau_\mathrm h`, which has
		been shown to provide the best balance between important and
		unimportant elements [1]_.
		
		The weighting is defined by means of a rank array, which assigns a
		nonnegative rank to each element (higher importance ranks being
		associated with smaller values, e.g., 0 is the highest possible rank),
		and a weigher function, which assigns a weight based on the rank to
		each element. The weight of an exchange is then the sum or the product
		of the weights of the ranks of the exchanged elements. The default
		parameters compute :math:`\tau_\mathrm h`: an exchange between
		elements with rank :math:`r` and :math:`s` (starting from zero) has
		weight :math:`1/(r+1) + 1/(s+1)`.
		
		Specifying a rank array is meaningful only if you have in mind an
		external criterion of importance. If, as it usually happens, you do
		not have in mind a specific rank, the weighted :math:`\tau` is
		defined by averaging the values obtained using the decreasing
		lexicographical rank by (`x`, `y`) and by (`y`, `x`). This is the
		behavior with default parameters. Note that the convention used
		here for ranking (lower values imply higher importance) is opposite
		to that used by other SciPy statistical functions.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of scores, of the same shape. If arrays are not 1-D, they will
		    be flattened to 1-D.
		rank : array_like of ints or bool, optional
		    A nonnegative rank assigned to each element. If it is None, the
		    decreasing lexicographical rank by (`x`, `y`) will be used: elements of
		    higher rank will be those with larger `x`-values, using `y`-values to
		    break ties (in particular, swapping `x` and `y` will give a different
		    result). If it is False, the element indices will be used
		    directly as ranks. The default is True, in which case this
		    function returns the average of the values obtained using the
		    decreasing lexicographical rank by (`x`, `y`) and by (`y`, `x`).
		weigher : callable, optional
		    The weigher function. Must map nonnegative integers (zero
		    representing the most important element) to a nonnegative weight.
		    The default, None, provides hyperbolic weighing, that is,
		    rank :math:`r` is mapped to weight :math:`1/(r+1)`.
		additive : bool, optional
		    If True, the weight of an exchange is computed by adding the
		    weights of the ranks of the exchanged elements; otherwise, the weights
		    are multiplied. The default is True.
		
		Returns
		-------
		correlation : float
		   The weighted :math:`\tau` correlation index.
		pvalue : float
		   Presently ``np.nan``, as the null statistics is unknown (even in the
		   additive hyperbolic case).
		
		See Also
		--------
		kendalltau : Calculates Kendall's tau.
		spearmanr : Calculates a Spearman rank-order correlation coefficient.
		theilslopes : Computes the Theil-Sen estimator for a set of points (x, y).
		
		Notes
		-----
		This function uses an :math:`O(n \log n)`, mergesort-based algorithm
		[1]_ that is a weighted extension of Knight's algorithm for Kendall's
		:math:`\tau` [2]_. It can compute Shieh's weighted :math:`\tau` [3]_
		between rankings without ties (i.e., permutations) by setting
		`additive` and `rank` to False, as the definition given in [1]_ is a
		generalization of Shieh's.
		
		NaNs are considered the smallest possible score.
		
		.. versionadded:: 0.19.0
		
		References
		----------
		.. [1] Sebastiano Vigna, "A weighted correlation index for rankings with
		       ties", Proceedings of the 24th international conference on World
		       Wide Web, pp. 1166-1176, ACM, 2015.
		.. [2] W.R. Knight, "A Computer Method for Calculating Kendall's Tau with
		       Ungrouped Data", Journal of the American Statistical Association,
		       Vol. 61, No. 314, Part 1, pp. 436-439, 1966.
		.. [3] Grace S. Shieh. "A weighted Kendall's tau statistic", Statistics &
		       Probability Letters, Vol. 39, No. 1, pp. 17-24, 1998.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, 0]
		>>> tau, p_value = stats.weightedtau(x, y)
		>>> tau
		-0.56694968153682723
		>>> p_value
		nan
		>>> tau, p_value = stats.weightedtau(x, y, additive=False)
		>>> tau
		-0.62205716951801038
		
		NaNs are considered the smallest possible score:
		
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, np.nan]
		>>> tau, _ = stats.weightedtau(x, y)
		>>> tau
		-0.56694968153682723
		
		This is exactly Kendall's tau:
		
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, 0]
		>>> tau, _ = stats.weightedtau(x, y, weigher=lambda x: 1)
		>>> tau
		-0.47140452079103173
		
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, 0]
		>>> stats.weightedtau(x, y, rank=None)
		WeightedTauResult(correlation=-0.4157652301037516, pvalue=nan)
		>>> stats.weightedtau(y, x, rank=None)
		WeightedTauResult(correlation=-0.7181341329699028, pvalue=nan)
	**/
	static public function weightedtau(x:Dynamic, y:Dynamic, ?rank:Dynamic, ?weigher:Dynamic, ?additive:Dynamic):Float;
	/**
		Calculate the Wilcoxon signed-rank test.
		
		The Wilcoxon signed-rank test tests the null hypothesis that two
		related paired samples come from the same distribution. In particular,
		it tests whether the distribution of the differences x - y is symmetric
		about zero. It is a non-parametric version of the paired T-test.
		
		Parameters
		----------
		x : array_like
		    Either the first set of measurements (in which case ``y`` is the second
		    set of measurements), or the differences between two sets of
		    measurements (in which case ``y`` is not to be specified.)  Must be
		    one-dimensional.
		y : array_like, optional
		    Either the second set of measurements (if ``x`` is the first set of
		    measurements), or not specified (if ``x`` is the differences between
		    two sets of measurements.)  Must be one-dimensional.
		zero_method : {"pratt", "wilcox", "zsplit"}, optional
		    The following options are available (default is "wilcox"):
		    
		      * "pratt": Includes zero-differences in the ranking process,
		        but drops the ranks of the zeros, see [4]_, (more conservative).
		      * "wilcox": Discards all zero-differences, the default.
		      * "zsplit": Includes zero-differences in the ranking process and
		        split the zero rank between positive and negative ones.
		correction : bool, optional
		    If True, apply continuity correction by adjusting the Wilcoxon rank
		    statistic by 0.5 towards the mean value when computing the
		    z-statistic if a normal approximation is used.  Default is False.
		alternative : {"two-sided", "greater", "less"}, optional
		    The alternative hypothesis to be tested, see Notes. Default is
		    "two-sided".
		mode : {"auto", "exact", "approx"}
		    Method to calculate the p-value, see Notes. Default is "auto".
		axis : int or None, default: 0
		    If an int, the axis of the input along which to compute the statistic.
		    The statistic of each axis-slice (e.g. row) of the input will appear in a
		    corresponding element of the output.
		    If ``None``, the input will be raveled before computing the statistic.
		nan_policy : {'propagate', 'omit', 'raise'}
		    Defines how to handle input NaNs.
		    
		    - ``propagate``: if a NaN is present in the axis slice (e.g. row) along
		      which the  statistic is computed, the corresponding entry of the output
		      will be NaN.
		    - ``omit``: NaNs will be omitted when performing the calculation.
		      If insufficient data remains in the axis slice along which the
		      statistic is computed, the corresponding entry of the output will be
		      NaN.
		    - ``raise``: if a NaN is present, a ``ValueError`` will be raised.
		
		Returns
		-------
		statistic : float
		    If ``alternative`` is "two-sided", the sum of the ranks of the
		    differences above or below zero, whichever is smaller.
		    Otherwise the sum of the ranks of the differences above zero.
		pvalue : float
		    The p-value for the test depending on ``alternative`` and ``mode``.
		
		See Also
		--------
		
		:func:`kruskal`, :func:`mannwhitneyu`
		    ..
		
		Notes
		-----
		The test has been introduced in [4]_. Given n independent samples
		(xi, yi) from a bivariate distribution (i.e. paired samples),
		it computes the differences di = xi - yi. One assumption of the test
		is that the differences are symmetric, see [2]_.
		The two-sided test has the null hypothesis that the median of the
		differences is zero against the alternative that it is different from
		zero. The one-sided test has the null hypothesis that the median is
		positive against the alternative that it is negative
		(``alternative == 'less'``), or vice versa (``alternative == 'greater.'``).
		
		To derive the p-value, the exact distribution (``mode == 'exact'``)
		can be used for sample sizes of up to 25. The default ``mode == 'auto'``
		uses the exact distribution if there are at most 25 observations and no
		ties, otherwise a normal approximation is used (``mode == 'approx'``).
		
		The treatment of ties can be controlled by the parameter `zero_method`.
		If ``zero_method == 'pratt'``, the normal approximation is adjusted as in
		[5]_. A typical rule is to require that n > 20 ([2]_, p. 383).
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Wilcoxon_signed-rank_test
		.. [2] Conover, W.J., Practical Nonparametric Statistics, 1971.
		.. [3] Pratt, J.W., Remarks on Zeros and Ties in the Wilcoxon Signed
		   Rank Procedures, Journal of the American Statistical Association,
		   Vol. 54, 1959, pp. 655-667. :doi:`10.1080/01621459.1959.10501526`
		.. [4] Wilcoxon, F., Individual Comparisons by Ranking Methods,
		   Biometrics Bulletin, Vol. 1, 1945, pp. 80-83. :doi:`10.2307/3001968`
		.. [5] Cureton, E.E., The Normal Approximation to the Signed-Rank
		   Sampling Distribution When Zero Differences are Present,
		   Journal of the American Statistical Association, Vol. 62, 1967,
		   pp. 1068-1069. :doi:`10.1080/01621459.1967.10500917`
		
		Examples
		--------
		In [4]_, the differences in height between cross- and self-fertilized
		corn plants is given as follows:
		
		>>> d = [6, 8, 14, 16, 23, 24, 28, 29, 41, -48, 49, 56, 60, -67, 75]
		
		Cross-fertilized plants appear to be be higher. To test the null
		hypothesis that there is no height difference, we can apply the
		two-sided test:
		
		>>> from scipy.stats import wilcoxon
		>>> w, p = wilcoxon(d)
		>>> w, p
		(24.0, 0.041259765625)
		
		Hence, we would reject the null hypothesis at a confidence level of 5%,
		concluding that there is a difference in height between the groups.
		To confirm that the median of the differences can be assumed to be
		positive, we use:
		
		>>> w, p = wilcoxon(d, alternative='greater')
		>>> w, p
		(96.0, 0.0206298828125)
		
		This shows that the null hypothesis that the median is negative can be
		rejected at a confidence level of 5% in favor of the alternative that
		the median is greater than zero. The p-values above are exact. Using the
		normal approximation gives very similar values:
		
		>>> w, p = wilcoxon(d, mode='approx')
		>>> w, p
		(24.0, 0.04088813291185591)
		
		Note that the statistic changed to 96 in the one-sided case (the sum
		of ranks of positive differences) whereas it is 24 in the two-sided
		case (the minimum of sum of ranks above and below zero).
	**/
	static public function wilcoxon(x:Dynamic, ?y:Dynamic, ?zero_method:Dynamic, ?correction:Dynamic, ?alternative:Dynamic, ?mode:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		A Wishart random variable.
		
		The `df` keyword specifies the degrees of freedom. The `scale` keyword
		specifies the scale matrix, which must be symmetric and positive definite.
		In this context, the scale matrix is often interpreted in terms of a
		multivariate normal precision matrix (the inverse of the covariance
		matrix). These arguments must satisfy the relationship
		``df > scale.ndim - 1``, but see notes on using the `rvs` method with
		``df < scale.ndim``.
		
		Methods
		-------
		``pdf(x, df, scale)``
		    Probability density function.
		``logpdf(x, df, scale)``
		    Log of the probability density function.
		``rvs(df, scale, size=1, random_state=None)``
		    Draw random samples from a Wishart distribution.
		``entropy()``
		    Compute the differential entropy of the Wishart distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Alternatively, the object may be called (as a function) to fix the degrees
		of freedom and scale parameters, returning a "frozen" Wishart random
		variable:
		
		rv = wishart(df=1, scale=1)
		    - Frozen object with the same methods but holding the given
		      degrees of freedom and scale fixed.
		
		See Also
		--------
		invwishart, chi2
		
		Notes
		-----
		
		
		The scale matrix `scale` must be a symmetric positive definite
		matrix. Singular matrices, including the symmetric positive semi-definite
		case, are not supported.
		
		The Wishart distribution is often denoted
		
		.. math::
		
		    W_p(\nu, \Sigma)
		
		where :math:`\nu` is the degrees of freedom and :math:`\Sigma` is the
		:math:`p \times p` scale matrix.
		
		The probability density function for `wishart` has support over positive
		definite matrices :math:`S`; if :math:`S \sim W_p(\nu, \Sigma)`, then
		its PDF is given by:
		
		.. math::
		
		    f(S) = \frac{|S|^{\frac{\nu - p - 1}{2}}}{2^{ \frac{\nu p}{2} }
		           |\Sigma|^\frac{\nu}{2} \Gamma_p \left ( \frac{\nu}{2} \right )}
		           \exp\left( -tr(\Sigma^{-1} S) / 2 \right)
		
		If :math:`S \sim W_p(\nu, \Sigma)` (Wishart) then
		:math:`S^{-1} \sim W_p^{-1}(\nu, \Sigma^{-1})` (inverse Wishart).
		
		If the scale matrix is 1-dimensional and equal to one, then the Wishart
		distribution :math:`W_1(\nu, 1)` collapses to the :math:`\chi^2(\nu)`
		distribution.
		
		The algorithm [2]_ implemented by the `rvs` method may
		produce numerically singular matrices with :math:`p - 1 < \nu < p`; the
		user may wish to check for this condition and generate replacement samples
		as necessary.
		
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] M.L. Eaton, "Multivariate Statistics: A Vector Space Approach",
		       Wiley, 1983.
		.. [2] W.B. Smith and R.R. Hocking, "Algorithm AS 53: Wishart Variate
		       Generator", Applied Statistics, vol. 21, pp. 341-345, 1972.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.stats import wishart, chi2
		>>> x = np.linspace(1e-5, 8, 100)
		>>> w = wishart.pdf(x, df=3, scale=1); w[:5]
		array([ 0.00126156,  0.10892176,  0.14793434,  0.17400548,  0.1929669 ])
		>>> c = chi2.pdf(x, 3); c[:5]
		array([ 0.00126156,  0.10892176,  0.14793434,  0.17400548,  0.1929669 ])
		>>> plt.plot(x, w)
		
		The input quantiles can be any shape of array, as long as the last
		axis labels the components.
	**/
	static public function wishart(?df:Dynamic, ?scale:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		A wrapped Cauchy continuous random variable.
		
		As an instance of the `rv_continuous` class, `wrapcauchy` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(c, loc=0, scale=1, size=1, random_state=None)
		    Random variates.
		pdf(x, c, loc=0, scale=1)
		    Probability density function.
		logpdf(x, c, loc=0, scale=1)
		    Log of the probability density function.
		cdf(x, c, loc=0, scale=1)
		    Cumulative distribution function.
		logcdf(x, c, loc=0, scale=1)
		    Log of the cumulative distribution function.
		sf(x, c, loc=0, scale=1)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(x, c, loc=0, scale=1)
		    Log of the survival function.
		ppf(q, c, loc=0, scale=1)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, c, loc=0, scale=1)
		    Inverse survival function (inverse of ``sf``).
		moment(n, c, loc=0, scale=1)
		    Non-central moment of order n
		stats(c, loc=0, scale=1, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(c, loc=0, scale=1)
		    (Differential) entropy of the RV.
		fit(data)
		    Parameter estimates for generic data.
		    See `scipy.stats.rv_continuous.fit <https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.rv_continuous.fit.html#scipy.stats.rv_continuous.fit>`__ for detailed documentation of the
		    keyword arguments.
		expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(c, loc=0, scale=1)
		    Median of the distribution.
		mean(c, loc=0, scale=1)
		    Mean of the distribution.
		var(c, loc=0, scale=1)
		    Variance of the distribution.
		std(c, loc=0, scale=1)
		    Standard deviation of the distribution.
		interval(alpha, c, loc=0, scale=1)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		The probability density function for `wrapcauchy` is:
		
		.. math::
		
		    f(x, c) = \frac{1-c^2}{2\pi (1+c^2 - 2c \cos(x))}
		
		for :math:`0 \le x \le 2\pi`, :math:`0 < c < 1`.
		
		`wrapcauchy` takes ``c`` as a shape parameter for :math:`c`.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``wrapcauchy.pdf(x, c, loc, scale)`` is identically
		equivalent to ``wrapcauchy.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``. Note that shifting the location of a distribution
		does not make it a "noncentral" distribution; noncentral generalizations of
		some distributions are available in separate classes.
		
		Examples
		--------
		>>> from scipy.stats import wrapcauchy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> c = 0.0311
		>>> mean, var, skew, kurt = wrapcauchy.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(wrapcauchy.ppf(0.01, c),
		...                 wrapcauchy.ppf(0.99, c), 100)
		>>> ax.plot(x, wrapcauchy.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='wrapcauchy pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = wrapcauchy(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = wrapcauchy.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], wrapcauchy.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = wrapcauchy.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, density=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function wrapcauchy(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a dataset transformed by a Yeo-Johnson power transformation.
		
		Parameters
		----------
		x : ndarray
		    Input array.  Should be 1-dimensional.
		lmbda : float, optional
		    If ``lmbda`` is ``None``, find the lambda that maximizes the
		    log-likelihood function and return it as the second output argument.
		    Otherwise the transformation is done for the given value.
		
		Returns
		-------
		yeojohnson: ndarray
		    Yeo-Johnson power transformed array.
		maxlog : float, optional
		    If the `lmbda` parameter is None, the second returned argument is
		    the lambda that maximizes the log-likelihood function.
		
		See Also
		--------
		probplot, yeojohnson_normplot, yeojohnson_normmax, yeojohnson_llf, boxcox
		
		Notes
		-----
		The Yeo-Johnson transform is given by::
		
		    y = ((x + 1)**lmbda - 1) / lmbda,                for x >= 0, lmbda != 0
		        log(x + 1),                                  for x >= 0, lmbda = 0
		        -((-x + 1)**(2 - lmbda) - 1) / (2 - lmbda),  for x < 0, lmbda != 2
		        -log(-x + 1),                                for x < 0, lmbda = 2
		
		Unlike `boxcox`, `yeojohnson` does not require the input data to be
		positive.
		
		.. versionadded:: 1.2.0
		
		
		References
		----------
		I. Yeo and R.A. Johnson, "A New Family of Power Transformations to
		Improve Normality or Symmetry", Biometrika 87.4 (2000):
		
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		We generate some random variates from a non-normal distribution and make a
		probability plot for it, to show it is non-normal in the tails:
		
		>>> fig = plt.figure()
		>>> ax1 = fig.add_subplot(211)
		>>> x = stats.loggamma.rvs(5, size=500) + 5
		>>> prob = stats.probplot(x, dist=stats.norm, plot=ax1)
		>>> ax1.set_xlabel('')
		>>> ax1.set_title('Probplot against normal distribution')
		
		We now use `yeojohnson` to transform the data so it's closest to normal:
		
		>>> ax2 = fig.add_subplot(212)
		>>> xt, lmbda = stats.yeojohnson(x)
		>>> prob = stats.probplot(xt, dist=stats.norm, plot=ax2)
		>>> ax2.set_title('Probplot after Yeo-Johnson transformation')
		
		>>> plt.show()
	**/
	static public function yeojohnson(x:Dynamic, ?lmbda:Dynamic):Dynamic;
	/**
		The yeojohnson log-likelihood function.
		
		Parameters
		----------
		lmb : scalar
		    Parameter for Yeo-Johnson transformation. See `yeojohnson` for
		    details.
		data : array_like
		    Data to calculate Yeo-Johnson log-likelihood for. If `data` is
		    multi-dimensional, the log-likelihood is calculated along the first
		    axis.
		
		Returns
		-------
		llf : float
		    Yeo-Johnson log-likelihood of `data` given `lmb`.
		
		See Also
		--------
		yeojohnson, probplot, yeojohnson_normplot, yeojohnson_normmax
		
		Notes
		-----
		The Yeo-Johnson log-likelihood function is defined here as
		
		.. math::
		
		    llf = -N/2 \log(\hat{\sigma}^2) + (\lambda - 1)
		          \sum_i \text{ sign }(x_i)\log(|x_i| + 1)
		
		where :math:`\hat{\sigma}^2` is estimated variance of the the Yeo-Johnson
		transformed input data ``x``.
		
		.. versionadded:: 1.2.0
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> from mpl_toolkits.axes_grid1.inset_locator import inset_axes
		
		Generate some random variates and calculate Yeo-Johnson log-likelihood
		values for them for a range of ``lmbda`` values:
		
		>>> x = stats.loggamma.rvs(5, loc=10, size=1000)
		>>> lmbdas = np.linspace(-2, 10)
		>>> llf = np.zeros(lmbdas.shape, dtype=float)
		>>> for ii, lmbda in enumerate(lmbdas):
		...     llf[ii] = stats.yeojohnson_llf(lmbda, x)
		
		Also find the optimal lmbda value with `yeojohnson`:
		
		>>> x_most_normal, lmbda_optimal = stats.yeojohnson(x)
		
		Plot the log-likelihood as function of lmbda.  Add the optimal lmbda as a
		horizontal line to check that that's really the optimum:
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(lmbdas, llf, 'b.-')
		>>> ax.axhline(stats.yeojohnson_llf(lmbda_optimal, x), color='r')
		>>> ax.set_xlabel('lmbda parameter')
		>>> ax.set_ylabel('Yeo-Johnson log-likelihood')
		
		Now add some probability plots to show that where the log-likelihood is
		maximized the data transformed with `yeojohnson` looks closest to normal:
		
		>>> locs = [3, 10, 4]  # 'lower left', 'center', 'lower right'
		>>> for lmbda, loc in zip([-1, lmbda_optimal, 9], locs):
		...     xt = stats.yeojohnson(x, lmbda=lmbda)
		...     (osm, osr), (slope, intercept, r_sq) = stats.probplot(xt)
		...     ax_inset = inset_axes(ax, width="20%", height="20%", loc=loc)
		...     ax_inset.plot(osm, osr, 'c.', osm, slope*osm + intercept, 'k-')
		...     ax_inset.set_xticklabels([])
		...     ax_inset.set_yticklabels([])
		...     ax_inset.set_title(r'$\lambda=%1.2f$' % lmbda)
		
		>>> plt.show()
	**/
	static public function yeojohnson_llf(lmb:Dynamic, data:Dynamic):Float;
	/**
		Compute optimal Yeo-Johnson transform parameter.
		
		Compute optimal Yeo-Johnson transform parameter for input data, using
		maximum likelihood estimation.
		
		Parameters
		----------
		x : array_like
		    Input array.
		brack : 2-tuple, optional
		    The starting interval for a downhill bracket search with
		    `optimize.brent`. Note that this is in most cases not critical; the
		    final result is allowed to be outside this bracket.
		
		Returns
		-------
		maxlog : float
		    The optimal transform parameter found.
		
		See Also
		--------
		yeojohnson, yeojohnson_llf, yeojohnson_normplot
		
		Notes
		-----
		.. versionadded:: 1.2.0
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		Generate some data and determine optimal ``lmbda``
		
		>>> rng = np.random.default_rng()
		>>> x = stats.loggamma.rvs(5, size=30, random_state=rng) + 5
		>>> lmax = stats.yeojohnson_normmax(x)
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> prob = stats.yeojohnson_normplot(x, -10, 10, plot=ax)
		>>> ax.axvline(lmax, color='r')
		
		>>> plt.show()
	**/
	static public function yeojohnson_normmax(x:Dynamic, ?brack:Dynamic):Float;
	/**
		Compute parameters for a Yeo-Johnson normality plot, optionally show it.
		
		A Yeo-Johnson normality plot shows graphically what the best
		transformation parameter is to use in `yeojohnson` to obtain a
		distribution that is close to normal.
		
		Parameters
		----------
		x : array_like
		    Input array.
		la, lb : scalar
		    The lower and upper bounds for the ``lmbda`` values to pass to
		    `yeojohnson` for Yeo-Johnson transformations. These are also the
		    limits of the horizontal axis of the plot if that is generated.
		plot : object, optional
		    If given, plots the quantiles and least squares fit.
		    `plot` is an object that has to have methods "plot" and "text".
		    The `matplotlib.pyplot` module or a Matplotlib Axes object can be used,
		    or a custom object with the same methods.
		    Default is None, which means that no plot is created.
		N : int, optional
		    Number of points on the horizontal axis (equally distributed from
		    `la` to `lb`).
		
		Returns
		-------
		lmbdas : ndarray
		    The ``lmbda`` values for which a Yeo-Johnson transform was done.
		ppcc : ndarray
		    Probability Plot Correlelation Coefficient, as obtained from `probplot`
		    when fitting the Box-Cox transformed input `x` against a normal
		    distribution.
		
		See Also
		--------
		probplot, yeojohnson, yeojohnson_normmax, yeojohnson_llf, ppcc_max
		
		Notes
		-----
		Even if `plot` is given, the figure is not shown or saved by
		`boxcox_normplot`; ``plt.show()`` or ``plt.savefig('figname.png')``
		should be used after calling `probplot`.
		
		.. versionadded:: 1.2.0
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		Generate some non-normally distributed data, and create a Yeo-Johnson plot:
		
		>>> x = stats.loggamma.rvs(5, size=500) + 5
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> prob = stats.yeojohnson_normplot(x, -20, 20, plot=ax)
		
		Determine and plot the optimal ``lmbda`` to transform ``x`` and plot it in
		the same plot:
		
		>>> _, maxlog = stats.yeojohnson(x)
		>>> ax.axvline(maxlog, color='r')
		
		>>> plt.show()
	**/
	static public function yeojohnson_normplot(x:Dynamic, la:Dynamic, lb:Dynamic, ?plot:Dynamic, ?N:Dynamic):Dynamic;
	/**
		A Yule-Simon discrete random variable.
		
		As an instance of the `rv_discrete` class, `yulesimon` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(alpha, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, alpha, loc=0)
		    Probability mass function.
		logpmf(k, alpha, loc=0)
		    Log of the probability mass function.
		cdf(k, alpha, loc=0)
		    Cumulative distribution function.
		logcdf(k, alpha, loc=0)
		    Log of the cumulative distribution function.
		sf(k, alpha, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, alpha, loc=0)
		    Log of the survival function.
		ppf(q, alpha, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, alpha, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(alpha, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(alpha, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(alpha,), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(alpha, loc=0)
		    Median of the distribution.
		mean(alpha, loc=0)
		    Mean of the distribution.
		var(alpha, loc=0)
		    Variance of the distribution.
		std(alpha, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, alpha, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		Notes
		-----
		
		The probability mass function for the `yulesimon` is:
		
		.. math::
		
		    f(k) =  \alpha B(k, \alpha+1)
		
		for :math:`k=1,2,3,...`, where :math:`\alpha>0`.
		Here :math:`B` refers to the `scipy.special.beta` function.
		
		The sampling of random variates is based on pg 553, Section 6.3 of [1]_.
		Our notation maps to the referenced logic via :math:`\alpha=a-1`.
		
		For details see the wikipedia entry [2]_.
		
		References
		----------
		.. [1] Devroye, Luc. "Non-uniform Random Variate Generation",
		     (1986) Springer, New York.
		
		.. [2] https://en.wikipedia.org/wiki/Yule-Simon_distribution
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``yulesimon.pmf(k, alpha, loc)`` is identically
		equivalent to ``yulesimon.pmf(k - loc, alpha)``.
		
		Examples
		--------
		>>> from scipy.stats import yulesimon
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> alpha = 11
		>>> mean, var, skew, kurt = yulesimon.stats(alpha, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(yulesimon.ppf(0.01, alpha),
		...               yulesimon.ppf(0.99, alpha))
		>>> ax.plot(x, yulesimon.pmf(x, alpha), 'bo', ms=8, label='yulesimon pmf')
		>>> ax.vlines(x, 0, yulesimon.pmf(x, alpha), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = yulesimon(alpha)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = yulesimon.cdf(x, alpha)
		>>> np.allclose(x, yulesimon.ppf(prob, alpha))
		True
		
		Generate random numbers:
		
		>>> r = yulesimon.rvs(alpha, size=1000)
	**/
	static public function yulesimon(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Zipf (Zeta) discrete random variable.
		
		As an instance of the `rv_discrete` class, `zipf` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, a, loc=0)
		    Probability mass function.
		logpmf(k, a, loc=0)
		    Log of the probability mass function.
		cdf(k, a, loc=0)
		    Cumulative distribution function.
		logcdf(k, a, loc=0)
		    Log of the cumulative distribution function.
		sf(k, a, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, a, loc=0)
		    Log of the survival function.
		ppf(q, a, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(a, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(a,), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, loc=0)
		    Median of the distribution.
		mean(a, loc=0)
		    Mean of the distribution.
		var(a, loc=0)
		    Variance of the distribution.
		std(a, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, a, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		zipfian
		
		Notes
		-----
		The probability mass function for `zipf` is:
		
		.. math::
		
		    f(k, a) = \frac{1}{\zeta(a) k^a}
		
		for :math:`k \ge 1`, :math:`a > 1`.
		
		`zipf` takes :math:`a > 1` as shape parameter. :math:`\zeta` is the
		Riemann zeta function (`scipy.special.zeta`)
		
		The Zipf distribution is also known as the zeta distribution, which is
		a special case of the Zipfian distribution (`zipfian`).
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``zipf.pmf(k, a, loc)`` is identically
		equivalent to ``zipf.pmf(k - loc, a)``.
		
		References
		----------
		.. [1] "Zeta Distribution", Wikipedia,
		       https://en.wikipedia.org/wiki/Zeta_distribution
		
		Examples
		--------
		>>> from scipy.stats import zipf
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a = 6.5
		>>> mean, var, skew, kurt = zipf.stats(a, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(zipf.ppf(0.01, a),
		...               zipf.ppf(0.99, a))
		>>> ax.plot(x, zipf.pmf(x, a), 'bo', ms=8, label='zipf pmf')
		>>> ax.vlines(x, 0, zipf.pmf(x, a), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = zipf(a)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = zipf.cdf(x, a)
		>>> np.allclose(x, zipf.ppf(prob, a))
		True
		
		Generate random numbers:
		
		>>> r = zipf.rvs(a, size=1000)
		
		Confirm that `zipf` is the large `n` limit of `zipfian`.
		
		>>> from scipy.stats import zipfian
		>>> k = np.arange(11)
		>>> np.allclose(zipf.pmf(k, a), zipfian.pmf(k, a, n=10000000))
		True
	**/
	static public function zipf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Zipfian discrete random variable.
		
		As an instance of the `rv_discrete` class, `zipfian` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(a, n, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, a, n, loc=0)
		    Probability mass function.
		logpmf(k, a, n, loc=0)
		    Log of the probability mass function.
		cdf(k, a, n, loc=0)
		    Cumulative distribution function.
		logcdf(k, a, n, loc=0)
		    Log of the cumulative distribution function.
		sf(k, a, n, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, a, n, loc=0)
		    Log of the survival function.
		ppf(q, a, n, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, a, n, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(a, n, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(a, n, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(a, n), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(a, n, loc=0)
		    Median of the distribution.
		mean(a, n, loc=0)
		    Mean of the distribution.
		var(a, n, loc=0)
		    Variance of the distribution.
		std(a, n, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, a, n, loc=0)
		    Endpoints of the range that contains fraction alpha [0, 1] of the
		    distribution
		
		See Also
		--------
		zipf
		
		Notes
		-----
		The probability mass function for `zipfian` is:
		
		.. math::
		
		    f(k, a, n) = \frac{1}{H_{n,a} k^a}
		
		for :math:`k \in \{1, 2, \dots, n-1, n\}`, :math:`a \ge 0`,
		:math:`n \in \{1, 2, 3, \dots\}`.
		
		`zipfian` takes :math:`a` and :math:`n` as shape parameters.
		:math:`H_{n,a}` is the :math:`n`:sup:`th` generalized harmonic
		number of order :math:`a`.
		
		The Zipfian distribution reduces to the Zipf (zeta) distribution as
		:math:`n \rightarrow \infty`.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``zipfian.pmf(k, a, n, loc)`` is identically
		equivalent to ``zipfian.pmf(k - loc, a, n)``.
		
		References
		----------
		.. [1] "Zipf's Law", Wikipedia, https://en.wikipedia.org/wiki/Zipf's_law
		.. [2] Larry Leemis, "Zipf Distribution", Univariate Distribution
		       Relationships. http://www.math.wm.edu/~leemis/chart/UDR/PDFs/Zipf.pdf
		
		Examples
		--------
		>>> from scipy.stats import zipfian
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate the first four moments:
		
		>>> a, n = 1.25, 10
		>>> mean, var, skew, kurt = zipfian.stats(a, n, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(zipfian.ppf(0.01, a, n),
		...               zipfian.ppf(0.99, a, n))
		>>> ax.plot(x, zipfian.pmf(x, a, n), 'bo', ms=8, label='zipfian pmf')
		>>> ax.vlines(x, 0, zipfian.pmf(x, a, n), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = zipfian(a, n)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = zipfian.cdf(x, a, n)
		>>> np.allclose(x, zipfian.ppf(prob, a, n))
		True
		
		Generate random numbers:
		
		>>> r = zipfian.rvs(a, n, size=1000)
		
		Confirm that `zipfian` reduces to `zipf` for large `n`, `a > 1`.
		
		>>> from scipy.stats import zipf
		>>> k = np.arange(11)
		>>> np.allclose(zipfian.pmf(k, a=3.5, n=10000000), zipf.pmf(k, a=3.5))
		True
	**/
	static public function zipfian(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the relative z-scores.
		
		Return an array of z-scores, i.e., scores that are standardized to
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
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle the occurrence of nans in `compare`.
		    'propagate' returns nan, 'raise' raises an exception, 'omit'
		    performs the calculations ignoring nan values. Default is
		    'propagate'. Note that when the value is 'omit', nans in `scores`
		    also propagate to the output, but they do not affect the z-scores
		    computed for the non-nan values.
		
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
	static public function zmap(scores:Dynamic, compare:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute the z score.
		
		Compute the z score of each value in the sample, relative to the
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
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.  Note that when the value is 'omit',
		    nans in the input also propagate to the output, but they do not affect
		    the z-scores computed for the non-nan values.
		
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
		
		An example with `nan_policy='omit'`:
		
		>>> x = np.array([[25.11, 30.10, np.nan, 32.02, 43.15],
		...               [14.95, 16.06, 121.25, 94.35, 29.81]])
		>>> stats.zscore(x, axis=1, nan_policy='omit')
		array([[-1.13490897, -0.37830299,         nan, -0.08718406,  1.60039602],
		       [-0.91611681, -0.89090508,  1.4983032 ,  0.88731639, -0.5785977 ]])
	**/
	static public function zscore(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?nan_policy:Dynamic):Dynamic;
}