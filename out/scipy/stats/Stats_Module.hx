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
	static public var absolute_import : Dynamic;
	/**
		An alpha continuous random variable.
		
		As an instance of the `rv_continuous` class, `alpha` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(a, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `alpha` is::
		
		    alpha.pdf(x, a) = 1/(x**2*Phi(a)*sqrt(2*pi)) * exp(-1/2 * (a-1/x)**2),
		
		where ``Phi(alpha)`` is the normal CDF, ``x > 0``, and ``a > 0``.
		
		`alpha` takes ``a`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``alpha.pdf(x, a, loc, scale)`` is identically
		equivalent to ``alpha.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import alpha
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function alpha(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Anderson-Darling test for data coming from a particular distribution
		
		The Anderson-Darling test is a modification of the Kolmogorov-
		Smirnov test `kstest` for the null hypothesis that a sample is
		drawn from a population that follows a particular distribution.
		For the Anderson-Darling test, the critical values depend on
		which distribution is being tested against.  This function works
		for normal, exponential, logistic, or Gumbel (Extreme Value
		Type I) distributions.
		
		Parameters
		----------
		x : array_like
		    array of sample data
		dist : {'norm','expon','logistic','gumbel','extreme1'}, optional
		    the type of distribution to test against.  The default is 'norm'
		    and 'extreme1' is a synonym for 'gumbel'
		
		Returns
		-------
		statistic : float
		    The Anderson-Darling test statistic
		critical_values : list
		    The critical values for this distribution
		significance_level : list
		    The significance levels for the corresponding critical values
		    in percents.  The function returns critical values for a
		    differing set of significance levels depending on the
		    distribution that is being tested against.
		
		Notes
		-----
		Critical values provided are for the following significance levels:
		
		normal/exponenential
		    15%, 10%, 5%, 2.5%, 1%
		logistic
		    25%, 10%, 5%, 2.5%, 1%, 0.5%
		Gumbel
		    25%, 10%, 5%, 2.5%, 1%
		
		If A2 is larger than these critical values then for the corresponding
		significance level, the null hypothesis that the data come from the
		chosen distribution can be rejected.
		
		References
		----------
		.. [1] http://www.itl.nist.gov/div898/handbook/prc/section2/prc213.htm
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
		    The critical values for significance levels 25%, 10%, 5%, 2.5%, 1%.
		significance_level : float
		    An approximate significance level at which the null hypothesis for the
		    provided samples can be rejected.
		
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
		[1]_ Defines three versions of the k-sample Anderson-Darling test:
		one for continuous distributions and two for discrete
		distributions, in which ties between samples may occur. The
		default of this routine is to compute the version based on the
		midrank empirical distribution function. This test is applicable
		to continuous and discrete data. If midrank is set to False, the
		right side empirical distribution is used for a test for discrete
		data. According to [1]_, the two discrete test statistics differ
		only slightly if a few collisions due to round-off errors occur in
		the test not adjusted for ties between samples.
		
		.. versionadded:: 0.14.0
		
		References
		----------
		.. [1] Scholz, F. W and Stephens, M. A. (1987), K-Sample
		       Anderson-Darling Tests, Journal of the American Statistical
		       Association, Vol. 82, pp. 918-924.
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(314159)
		
		The null hypothesis that the two random samples come from the same
		distribution can be rejected at the 5% level because the returned
		test value is greater than the critical value for 5% (1.961) but
		not at the 2.5% level. The interpolation gives an approximate
		significance level of 3.1%:
		
		>>> stats.anderson_ksamp([np.random.normal(size=50),
		... np.random.normal(loc=0.5, size=30)])
		(2.4615796189876105,
		  array([ 0.325,  1.226,  1.961,  2.718,  3.752]),
		  0.03134990135800783)
		
		
		The null hypothesis cannot be rejected for three samples from an
		identical distribution. The approximate p-value (87%) has to be
		computed by extrapolation and may not be very accurate:
		
		>>> stats.anderson_ksamp([np.random.normal(size=50),
		... np.random.normal(size=30), np.random.normal(size=20)])
		(-0.73091722665244196,
		  array([ 0.44925884,  1.3052767 ,  1.9434184 ,  2.57696569,  3.41634856]),
		  0.8789283903979661)
	**/
	static public function anderson_ksamp(samples:Dynamic, ?midrank:Dynamic):Float;
	/**
		An anglit continuous random variable.
		
		As an instance of the `rv_continuous` class, `anglit` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `anglit` is::
		
		    anglit.pdf(x) = sin(2*x + pi/2) = cos(2*x),
		
		for ``-pi/4 <= x <= pi/4``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``anglit.pdf(x, loc, scale)`` is identically
		equivalent to ``anglit.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import anglit
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function anglit(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform the Ansari-Bradley test for equal scale parameters
		
		The Ansari-Bradley test is a non-parametric test for the equality
		of the scale parameter of the distributions from which two
		samples were drawn.
		
		Parameters
		----------
		x, y : array_like
		    arrays of sample data
		
		Returns
		-------
		statistic : float
		    The Ansari-Bradley test statistic
		pvalue : float
		    The p-value of the hypothesis test
		
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
		.. [1] Sprent, Peter and N.C. Smeeton.  Applied nonparametric statistical
		       methods.  3rd ed. Chapman and Hall/CRC. 2001.  Section 5.8.2.
	**/
	static public function ansari(x:Dynamic, y:Dynamic):Float;
	/**
		An arcsine continuous random variable.
		
		As an instance of the `rv_continuous` class, `arcsine` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `arcsine` is::
		
		    arcsine.pdf(x) = 1/(pi*sqrt(x*(1-x)))
		
		for ``0 < x < 1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``arcsine.pdf(x, loc, scale)`` is identically
		equivalent to ``arcsine.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import arcsine
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function arcsine(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform Bartlett's test for equal variances
		
		Bartlett's test tests the null hypothesis that all input samples
		are from populations with equal variances.  For samples
		from significantly non-normal populations, Levene's test
		`levene` is more robust.
		
		Parameters
		----------
		sample1, sample2,... : array_like
		    arrays of sample data.  May be different lengths.
		
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
		superior in terms of robustness of departures from normality and power [3]_.
		
		References
		----------
		.. [1]  http://www.itl.nist.gov/div898/handbook/eda/section3/eda357.htm
		
		.. [2]  Snedecor, George W. and Cochran, William G. (1989), Statistical
		          Methods, Eighth Edition, Iowa State University Press.
		
		.. [3] Park, C. and Lindsay, B. G. (1999). Robust Scale Estimation and
		       Hypothesis Testing based on Quadratic Inference Function. Technical
		       Report #99-03, Center for Likelihood Studies, Pennsylvania State
		       University.
		
		.. [4] Bartlett, M. S. (1937). Properties of Sufficiency and Statistical
		       Tests. Proceedings of the Royal Society of London. Series A,
		       Mathematical and Physical Sciences, Vol. 160, No.901, pp. 268-282.
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
		standard-deviation from data", http://scholarsarchive.byu.edu/facpub/278,
		2006.
		
		Examples
		--------
		First a basic example to demonstrate the outputs:
		
		>>> from scipy import stats
		>>> data = [6, 9, 12, 7, 8, 8, 13]
		>>> mean, var, std = stats.bayes_mvs(data)
		>>> mean
		Mean(statistic=9.0, minmax=(7.1036502226125329, 10.896349777387467))
		>>> var
		Variance(statistic=10.0, minmax=(3.1767242068607087, 24.459103821334018))
		>>> std
		Std_dev(statistic=2.9724954732045084, minmax=(1.7823367265645143, 4.9456146050146295))
		
		Now we generate some normally distributed random data, and get estimates of
		mean and standard deviation with 95% confidence intervals for those
		estimates:
		
		>>> n_samples = 100000
		>>> data = stats.norm.rvs(size=n_samples)
		>>> res_mean, res_var, res_std = stats.bayes_mvs(data, alpha=0.95)
		
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.hist(data, bins=100, normed=True, label='Histogram of data')
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
		``rvs(p, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, p, loc=0)``
		    Probability mass function.
		``logpmf(x, p, loc=0)``
		    Log of the probability mass function.
		``cdf(x, p, loc=0)``
		    Cumulative density function.
		``logcdf(x, p, loc=0)``
		    Log of the cumulative density function.
		``sf(x, p, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, p, loc=0)``
		    Log of the survival function.
		``ppf(q, p, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, p, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(p, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(p, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(p,), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(p, loc=0)``
		    Median of the distribution.
		``mean(p, loc=0)``
		    Mean of the distribution.
		``var(p, loc=0)``
		    Variance of the distribution.
		``std(p, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, p, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `bernoulli` is::
		
		   bernoulli.pmf(k) = 1-p  if k = 0
		                    = p    if k = 1
		
		for ``k`` in ``{0, 1}``.
		
		`bernoulli` takes ``p`` as shape parameter.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``bernoulli.pmf(k, p, loc)`` is identically
		equivalent to ``bernoulli.pmf(k - loc, p)``.
		
		Examples
		--------
		>>> from scipy.stats import bernoulli
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		``rvs(a, b, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, b, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, b, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, b, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, b, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, b, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, b, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, b, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, b, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, b, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, b, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, b, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, b, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, b, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, b, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, b, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, b, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `beta` is::
		
		                        gamma(a+b) * x**(a-1) * (1-x)**(b-1)
		    beta.pdf(x, a, b) = ------------------------------------
		                                 gamma(a)*gamma(b)
		
		for ``0 < x < 1``, ``a > 0``, ``b > 0``, where ``gamma(z)`` is the gamma
		function (`scipy.special.gamma`).
		
		`beta` takes ``a`` and ``b`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``beta.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``beta.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import beta
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function beta(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`betai` is deprecated!
		stats.betai is deprecated in scipy 0.17.0; use special.betainc instead
		
		
		    Returns the incomplete beta function.
		
		    I_x(a,b) = 1/B(a,b)*(Integral(0,x) of t^(a-1)(1-t)^(b-1) dt)
		
		    where a,b>0 and B(a,b) = G(a)*G(b)/(G(a+b)) where G(a) is the gamma
		    function of a.
		
		    The standard broadcasting rules apply to a, b, and x.
		
		    Parameters
		    ----------
		    a : array_like or float > 0
		
		    b : array_like or float > 0
		
		    x : array_like or float
		        x will be clipped to be no greater than 1.0 .
		
		    Returns
		    -------
		    betai : ndarray
		        Incomplete beta function.
		
		    
	**/
	static public function betai(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A beta prime continuous random variable.
		
		As an instance of the `rv_continuous` class, `betaprime` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(a, b, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, b, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, b, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, b, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, b, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, b, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, b, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, b, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, b, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, b, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, b, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, b, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, b, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, b, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, b, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, b, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, b, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `betaprime` is::
		
		    betaprime.pdf(x, a, b) = x**(a-1) * (1+x)**(-a-b) / beta(a, b)
		
		for ``x > 0``, ``a > 0``, ``b > 0``, where ``beta(a, b)`` is the beta
		function (see `scipy.special.beta`).
		
		`betaprime` takes ``a`` and ``b`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``betaprime.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``betaprime.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import betaprime
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		(array([ 4. ,  4.5]), array([ 1.,  4.,  7.]), array([1, 1, 1, 2, 2]))
		
		Multiple arrays of values can also be passed.  The statistic is calculated
		on each set independently:
		
		>>> values = [[1.0, 1.0, 2.0, 1.5, 3.0], [2.0, 2.0, 4.0, 3.0, 6.0]]
		>>> stats.binned_statistic([1, 1, 2, 5, 7], values, 'sum', bins=2)
		(array([[ 4. ,  4.5], [ 8. ,  9. ]]), array([ 1.,  4.,  7.]),
		    array([1, 1, 1, 2, 2]))
		
		>>> stats.binned_statistic([1, 2, 1, 2, 4], np.arange(5), statistic='mean',
		...                        bins=3)
		(array([ 1.,  2.,  4.]), array([ 1.,  2.,  3.,  4.]),
		    array([1, 2, 1, 2, 3]))
		
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
		>>> plt.hist(samples, bins=50, normed=True, histtype='stepfilled',
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
		>>> ret = stats.binned_statistic_2d(x, y, None, 'count', bins=[binx,biny])
		>>> ret.statistic
		array([[ 2.,  1.],
		       [ 1.,  0.]])
		
		The bin in which each sample is placed is given by the `binnumber`
		returned parameter.  By default, these are the linearized bin indices:
		
		>>> ret.binnumber
		array([5, 6, 5, 9])
		
		The bin indices can also be expanded into separate entries for each
		dimension using the `expand_binnumbers` parameter:
		
		>>> ret = stats.binned_statistic_2d(x, y, None, 'count', bins=[binx,biny],
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
		    Data to histogram passed as a sequence of D arrays of length N, or
		    as an (N,D) array.
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
		    The bin specification must be in one of the following forms:
		
		      * A sequence of arrays describing the bin edges along each dimension.
		      * The number of bins for each dimension (nx, ny, ... = bins).
		      * The number of bins for all dimensions (nx = ny = ... = bins).
		
		range : sequence, optional
		    A sequence of lower and upper bin edges to be used if the edges are
		    not given explicitely in `bins`. Defaults to the minimum and maximum
		    values along each dimension.
		expand_binnumbers : bool, optional
		    'False' (default): the returned `binnumber` is a shape (N,) array of
		    linearized bin indices.
		    'True': the returned `binnumber` is 'unraveled' into a shape (D,N)
		    ndarray, where each row gives the bin numbers in the corresponding
		    dimension.
		    See the `binnumber` returned value, and the `Examples` section of
		    `binned_statistic_2d`.
		
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
	**/
	static public function binned_statistic_dd(sample:Dynamic, values:Dynamic, ?statistic:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?expand_binnumbers:Dynamic):Dynamic;
	/**
		A binomial discrete random variable.
		
		As an instance of the `rv_discrete` class, `binom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(n, p, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, n, p, loc=0)``
		    Probability mass function.
		``logpmf(x, n, p, loc=0)``
		    Log of the probability mass function.
		``cdf(x, n, p, loc=0)``
		    Cumulative density function.
		``logcdf(x, n, p, loc=0)``
		    Log of the cumulative density function.
		``sf(x, n, p, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, n, p, loc=0)``
		    Log of the survival function.
		``ppf(q, n, p, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, n, p, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(n, p, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(n, p, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(n, p), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(n, p, loc=0)``
		    Median of the distribution.
		``mean(n, p, loc=0)``
		    Mean of the distribution.
		``var(n, p, loc=0)``
		    Variance of the distribution.
		``std(n, p, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, n, p, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `binom` is::
		
		   binom.pmf(k) = choose(n, k) * p**k * (1-p)**(n-k)
		
		for ``k`` in ``{0, 1,..., n}``.
		
		`binom` takes ``n`` and ``p`` as shape parameters.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``binom.pmf(k, n, p, loc)`` is identically
		equivalent to ``binom.pmf(k - loc, n, p)``.
		
		Examples
		--------
		>>> from scipy.stats import binom
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
	**/
	static public function binom(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform a test that the probability of success is p.
		
		This is an exact, two-sided test of the null hypothesis
		that the probability of success in a Bernoulli experiment
		is `p`.
		
		Parameters
		----------
		x : integer or array_like
		    the number of successes, or if x has length 2, it is the
		    number of successes and the number of failures.
		n : integer
		    the number of trials.  This is ignored if x gives both the
		    number of successes and failures
		p : float, optional
		    The hypothesized probability of success.  0 <= p <= 1. The
		    default value is p = 0.5
		
		Returns
		-------
		p-value : float
		    The p-value of the hypothesis test
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/Binomial_test
	**/
	static public function binom_test(x:Dynamic, ?n:Dynamic, ?p:Dynamic, ?alternative:Dynamic):Float;
	/**
		A Boltzmann (Truncated Discrete Exponential) random variable.
		
		As an instance of the `rv_discrete` class, `boltzmann` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(lambda_, N, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, lambda_, N, loc=0)``
		    Probability mass function.
		``logpmf(x, lambda_, N, loc=0)``
		    Log of the probability mass function.
		``cdf(x, lambda_, N, loc=0)``
		    Cumulative density function.
		``logcdf(x, lambda_, N, loc=0)``
		    Log of the cumulative density function.
		``sf(x, lambda_, N, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, lambda_, N, loc=0)``
		    Log of the survival function.
		``ppf(q, lambda_, N, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, lambda_, N, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(lambda_, N, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(lambda_, N, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(lambda_, N), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(lambda_, N, loc=0)``
		    Median of the distribution.
		``mean(lambda_, N, loc=0)``
		    Mean of the distribution.
		``var(lambda_, N, loc=0)``
		    Variance of the distribution.
		``std(lambda_, N, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, lambda_, N, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `boltzmann` is::
		
		    boltzmann.pmf(k) = (1-exp(-lambda_)*exp(-lambda_*k)/(1-exp(-lambda_*N))
		
		for ``k = 0,..., N-1``.
		
		`boltzmann` takes ``lambda_`` and ``N`` as shape parameters.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``boltzmann.pmf(k, lambda_, N, loc)`` is identically
		equivalent to ``boltzmann.pmf(k - loc, lambda_, N)``.
		
		Examples
		--------
		>>> from scipy.stats import boltzmann
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		Return a positive dataset transformed by a Box-Cox power transformation.
		
		Parameters
		----------
		x : ndarray
		    Input array.  Should be 1-dimensional.
		lmbda : {None, scalar}, optional
		    If `lmbda` is not None, do the transformation for that value.
		
		    If `lmbda` is None, find the lambda that maximizes the log-likelihood
		    function and return it as the second output argument.
		alpha : {None, float}, optional
		    If ``alpha`` is not None, return the ``100 * (1-alpha)%`` confidence
		    interval for `lmbda` as the third output argument.
		    Must be between 0.0 and 1.0.
		
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
		
		    y = (x**lmbda - 1) / lmbda,  for lmbda > 0
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
	static public function boxcox(x:Dynamic, ?lmbda:Dynamic, ?alpha:Dynamic):Dynamic;
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
		>>> np.random.seed(1245)
		
		Generate some random variates and calculate Box-Cox log-likelihood values
		for them for a range of ``lmbda`` values:
		
		>>> x = stats.loggamma.rvs(5, loc=10, size=1000)
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
		...     ax_inset.set_title('$\lambda=%1.2f$' % lmbda)
		
		>>> plt.show()
	**/
	static public function boxcox_llf(lmb:Dynamic, data:Dynamic):Dynamic;
	/**
		Compute optimal Box-Cox transform parameter for input data.
		
		Parameters
		----------
		x : array_like
		    Input array.
		brack : 2-tuple, optional
		    The starting interval for a downhill bracket search with
		    `optimize.brent`.  Note that this is in most cases not critical; the
		    final result is allowed to be outside this bracket.
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
		
		Returns
		-------
		maxlog : float or ndarray
		    The optimal transform parameter found.  An array instead of a scalar
		    for ``method='all'``.
		
		See Also
		--------
		boxcox, boxcox_llf, boxcox_normplot
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> np.random.seed(1234)  # make this example reproducible
		
		Generate some data and determine optimal ``lmbda`` in various ways:
		
		>>> x = stats.loggamma.rvs(5, size=30) + 5
		>>> y, lmax_mle = stats.boxcox(x)
		>>> lmax_pearsonr = stats.boxcox_normmax(x)
		
		>>> lmax_mle
		7.177...
		>>> lmax_pearsonr
		7.916...
		>>> stats.boxcox_normmax(x, method='all')
		array([ 7.91667384,  7.17718692])
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> prob = stats.boxcox_normplot(x, -10, 10, plot=ax)
		>>> ax.axvline(lmax_mle, color='r')
		>>> ax.axvline(lmax_pearsonr, color='g', ls='--')
		
		>>> plt.show()
	**/
	static public function boxcox_normmax(x:Dynamic, ?brack:Dynamic, ?method:Dynamic):Dynamic;
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
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `bradford` is::
		
		    bradford.pdf(x, c) = c / (k * (1+c*x)),
		
		for ``0 < x < 1``, ``c > 0`` and ``k = log(1+c)``.
		
		`bradford` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``bradford.pdf(x, c, loc, scale)`` is identically
		equivalent to ``bradford.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import bradford
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function bradford(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Burr (Type III) continuous random variable.
		
		As an instance of the `rv_continuous` class, `burr` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, d, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, d, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, d, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, d, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, d, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, d, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, d, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, d, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, d, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, d, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, d, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, d, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, d, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c, d), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, d, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, d, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, d, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, d, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, d, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		fisk : a special case of `burr` with ``d = 1``
		
		Notes
		-----
		The probability density function for `burr` is::
		
		    burr.pdf(x, c, d) = c * d * x**(-c-1) * (1+x**(-c))**(-d-1)
		
		for ``x > 0``.
		
		`burr` takes ``c`` and ``d`` as shape parameters.
		
		This is the PDF corresponding to the third CDF given in Burr's list;
		specifically, it is equation (11) in Burr's paper [1]_.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``burr.pdf(x, c, d, loc, scale)`` is identically
		equivalent to ``burr.pdf(y, c, d) / scale`` with
		``y = (x - loc) / scale``.
		
		References
		----------
		.. [1] Burr, I. W. "Cumulative frequency functions", Annals of
		   Mathematical Statistics, 13(2), pp 215-232 (1942).
		
		Examples
		--------
		>>> from scipy.stats import burr
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function burr(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Cauchy continuous random variable.
		
		As an instance of the `rv_continuous` class, `cauchy` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `cauchy` is::
		
		    cauchy.pdf(x) = 1 / (pi * (1 + x**2))
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``cauchy.pdf(x, loc, scale)`` is identically
		equivalent to ``cauchy.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import cauchy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(df, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, df, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, df, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, df, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, df, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, df, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, df, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, df, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, df, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, df, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(df, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(df, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, df, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(df,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(df, loc=0, scale=1)``
		    Median of the distribution.
		``mean(df, loc=0, scale=1)``
		    Mean of the distribution.
		``var(df, loc=0, scale=1)``
		    Variance of the distribution.
		``std(df, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, df, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `chi` is::
		
		    chi.pdf(x, df) = x**(df-1) * exp(-x**2/2) / (2**(df/2-1) * gamma(df/2))
		
		for ``x > 0``.
		
		Special cases of `chi` are:
		
		    - ``chi(1, loc, scale)`` is equivalent to `halfnorm`
		    - ``chi(2, 0, scale)`` is equivalent to `rayleigh`
		    - ``chi(3, 0, scale)`` is equivalent to `maxwell`
		
		`chi` takes ``df`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``chi.pdf(x, df, loc, scale)`` is identically
		equivalent to ``chi.pdf(y, df) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import chi
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function chi(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A chi-squared continuous random variable.
		
		As an instance of the `rv_continuous` class, `chi2` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(df, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, df, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, df, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, df, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, df, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, df, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, df, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, df, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, df, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, df, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(df, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(df, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, df, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(df,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(df, loc=0, scale=1)``
		    Median of the distribution.
		``mean(df, loc=0, scale=1)``
		    Mean of the distribution.
		``var(df, loc=0, scale=1)``
		    Variance of the distribution.
		``std(df, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, df, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `chi2` is::
		
		    chi2.pdf(x, df) = 1 / (2*gamma(df/2)) * (x/2)**(df/2-1) * exp(-x/2)
		
		`chi2` takes ``df`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``chi2.pdf(x, df, loc, scale)`` is identically
		equivalent to ``chi2.pdf(y, df) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import chi2
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		lambda_ : float or str, optional.
		    By default, the statistic computed in this test is Pearson's
		    chi-squared statistic [2]_.  `lambda_` allows a statistic from the
		    Cressie-Read power divergence family [3]_ to be used instead.  See
		    `power_divergence` for details.
		
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
		contingency.expected_freq
		fisher_exact
		chisquare
		power_divergence
		
		Notes
		-----
		An often quoted guideline for the validity of this calculation is that
		the test should be used only if the observed and expected frequency in
		each cell is at least 5.
		
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
		.. [1] "Contingency table", http://en.wikipedia.org/wiki/Contingency_table
		.. [2] "Pearson's chi-squared test",
		       http://en.wikipedia.org/wiki/Pearson%27s_chi-squared_test
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
		`chisqprob` is deprecated!
		stats.chisqprob is deprecated in scipy 0.17.0; use stats.distributions.chi2.sf instead.
		
		
		    Probability value (1-tail) for the Chi^2 probability distribution.
		
		    Broadcasting rules apply.
		
		    Parameters
		    ----------
		    chisq : array_like or float > 0
		
		    df : array_like or float, probably int >= 1
		
		    Returns
		    -------
		    chisqprob : ndarray
		        The area from `chisq` to infinity under the Chi^2 probability
		        distribution with degrees of freedom `df`.
		
		    
	**/
	static public function chisqprob(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		
		Returns
		-------
		circmean : float
		    Circular mean.
	**/
	static public function circmean(samples:Dynamic, ?high:Dynamic, ?low:Dynamic, ?axis:Dynamic):Float;
	/**
		Compute the circular standard deviation for samples assumed to be in the
		range [low to high].
		
		Parameters
		----------
		samples : array_like
		    Input array.
		low : float or int, optional
		    Low boundary for circular standard deviation range.  Default is 0.
		high : float or int, optional
		    High boundary for circular standard deviation range.
		    Default is ``2*pi``.
		axis : int, optional
		    Axis along which standard deviations are computed.  The default is
		    to compute the standard deviation of the flattened array.
		
		Returns
		-------
		circstd : float
		    Circular standard deviation.
		
		Notes
		-----
		This uses a definition of circular standard deviation that in the limit of
		small angles returns a number close to the 'linear' standard deviation.
	**/
	static public function circstd(samples:Dynamic, ?high:Dynamic, ?low:Dynamic, ?axis:Dynamic):Float;
	/**
		Compute the circular variance for samples assumed to be in a range
		
		Parameters
		----------
		samples : array_like
		    Input array.
		low : float or int, optional
		    Low boundary for circular variance range.  Default is 0.
		high : float or int, optional
		    High boundary for circular variance range.  Default is ``2*pi``.
		axis : int, optional
		    Axis along which variances are computed.  The default is to compute
		    the variance of the flattened array.
		
		Returns
		-------
		circvar : float
		    Circular variance.
		
		Notes
		-----
		This uses a definition of circular variance that in the limit of small
		angles returns a number close to the 'linear' variance.
	**/
	static public function circvar(samples:Dynamic, ?high:Dynamic, ?low:Dynamic, ?axis:Dynamic):Float;
	/**
		Methods for combining the p-values of independent tests bearing upon the
		same hypothesis.
		
		Parameters
		----------
		pvalues : array_like, 1-D
		    Array of p-values assumed to come from independent tests.
		method : {'fisher', 'stouffer'}, optional
		    Name of method to use to combine p-values. The following methods are
		    available:
		
		    - "fisher": Fisher's method (Fisher's combined probability test),
		      the default.
		    - "stouffer": Stouffer's Z-score method.
		weights : array_like, 1-D, optional
		    Optional array of weights used only for Stouffer's Z-score method.
		
		Returns
		-------
		statistic: float
		    The statistic calculated by the specified method:
		    - "fisher": The chi-squared statistic
		    - "stouffer": The Z-score
		pval: float
		    The combined p-value.
		
		Notes
		-----
		Fisher's method (also known as Fisher's combined probability test) [1]_ uses
		a chi-squared statistic to compute a combined p-value. The closely related
		Stouffer's Z-score method [2]_ uses Z-scores rather than p-values. The
		advantage of Stouffer's method is that it is straightforward to introduce
		weights, which can make Stouffer's method more powerful than Fisher's
		method when the p-values are from studies of different size [3]_ [4]_.
		
		Fisher's method may be extended to combine p-values from dependent tests
		[5]_. Extensions such as Brown's method and Kost's method are not currently
		implemented.
		
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Fisher%27s_method
		.. [2] http://en.wikipedia.org/wiki/Fisher's_method#Relation_to_Stouffer.27s_Z-score_method
		.. [3] Whitlock, M. C. "Combining probability from independent tests: the
		       weighted Z-method is superior to Fisher's approach." Journal of
		       Evolutionary Biology 18, no. 5 (2005): 1368-1373.
		.. [4] Zaykin, Dmitri V. "Optimally weighted Z-test is a powerful method
		       for combining probabilities in meta-analysis." Journal of
		       Evolutionary Biology 24, no. 8 (2011): 1836-1841.
		.. [5] https://en.wikipedia.org/wiki/Extensions_of_Fisher%27s_method
	**/
	static public function combine_pvalues(pvalues:Dynamic, ?method:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		A cosine continuous random variable.
		
		As an instance of the `rv_continuous` class, `cosine` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The cosine distribution is an approximation to the normal distribution.
		The probability density function for `cosine` is::
		
		    cosine.pdf(x) = 1/(2*pi) * (1+cos(x))
		
		for ``-pi <= x <= pi``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``cosine.pdf(x, loc, scale)`` is identically
		equivalent to ``cosine.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import cosine
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function cosine(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a cumulative frequency histogram, using the histogram function.
		
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
		>>> from scipy import stats
		>>> x = [1, 4, 2, 1, 3, 1]
		>>> res = stats.cumfreq(x, numbins=4, defaultreallimits=(1.5, 5))
		>>> res.cumcount
		array([ 1.,  2.,  3.,  3.])
		>>> res.extrapoints
		3
		
		Create a normal distribution with 1000 random values
		
		>>> rng = np.random.RandomState(seed=12345)
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
		Computes several descriptive statistics of the passed array.
		
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
		    If False, then the skewness and kurtosis calculations are corrected for
		    statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		nobs : int
		   Number of observations (length of data along `axis`).
		minmax: tuple of ndarrays or floats
		   Minimum and maximum value of data array.
		mean : ndarray or float
		   Arithmetic mean of data along axis.
		variance : ndarray or float
		   Unbiased variance of the data along axis, denominator is number of
		   observations minus one.
		skewness : ndarray or float
		   Skewness, based on moment calculations with denominator equal to
		   the number of observations, i.e. no degrees of freedom correction.
		kurtosis : ndarray or float
		   Kurtosis (Fisher).  The kurtosis is normalized so that it is
		   zero for the normal distribution.  No degrees of freedom are used.
		
		See Also
		--------
		skew, kurtosis
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(10)
		>>> stats.describe(a)
		DescribeResult(nobs=10, minmax=(0, 9), mean=4.5, variance=9.1666666666666661,
		               skewness=0.0, kurtosis=-1.2242424242424244)
		>>> b = [[1, 2], [3, 4]]
		>>> stats.describe(b)
		DescribeResult(nobs=2, minmax=(array([1, 2]), array([3, 4])),
		               mean=array([ 2., 3.]), variance=array([ 2., 2.]),
		               skewness=array([ 0., 0.]), kurtosis=array([-2., -2.]))
	**/
	static public function describe(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Int;
	/**
		A double gamma continuous random variable.
		
		As an instance of the `rv_continuous` class, `dgamma` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(a, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `dgamma` is::
		
		    dgamma.pdf(x, a) = 1 / (2*gamma(a)) * abs(x)**(a-1) * exp(-abs(x))
		
		for ``a > 0``.
		
		`dgamma` takes ``a`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``dgamma.pdf(x, a, loc, scale)`` is identically
		equivalent to ``dgamma.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import dgamma
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function dgamma(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Dirichlet random variable.
		
		The `alpha` keyword specifies the concentration parameters of the
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
		    Compute the differential entropy of the multivariate normal.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		alpha : array_like
		    The concentration parameters. The number of entries determines the
		    dimensionality of the distribution.
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
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
		    \sum_{i=1}^{K} x_i \le 1
		
		
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
	**/
	static public function dirichlet(alpha:Dynamic, ?seed:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		A  Laplacian discrete random variable.
		
		As an instance of the `rv_discrete` class, `dlaplace` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(a, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, a, loc=0)``
		    Probability mass function.
		``logpmf(x, a, loc=0)``
		    Log of the probability mass function.
		``cdf(x, a, loc=0)``
		    Cumulative density function.
		``logcdf(x, a, loc=0)``
		    Log of the cumulative density function.
		``sf(x, a, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, loc=0)``
		    Log of the survival function.
		``ppf(q, a, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(a, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(a,), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, loc=0)``
		    Median of the distribution.
		``mean(a, loc=0)``
		    Mean of the distribution.
		``var(a, loc=0)``
		    Variance of the distribution.
		``std(a, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, a, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `dlaplace` is::
		
		    dlaplace.pmf(k) = tanh(a/2) * exp(-a*abs(k))
		
		for ``a > 0``.
		
		`dlaplace` takes ``a`` as shape parameter.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``dlaplace.pmf(k, a, loc)`` is identically
		equivalent to ``dlaplace.pmf(k - loc, a)``.
		
		Examples
		--------
		>>> from scipy.stats import dlaplace
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `dweibull` is::
		
		    dweibull.pdf(x, c) = c / 2 * abs(x)**(c-1) * exp(-abs(x)**c)
		
		`dweibull` takes ``d`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``dweibull.pdf(x, c, loc, scale)`` is identically
		equivalent to ``dweibull.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import dweibull
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function dweibull(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the entropy of a distribution for given probability values.
		
		If only probabilities `pk` are given, the entropy is calculated as
		``S = -sum(pk * log(pk), axis=0)``.
		
		If `qk` is not None, then compute the Kullback-Leibler divergence
		``S = sum(pk * log(pk / qk), axis=0)``.
		
		This routine will normalize `pk` and `qk` if they don't sum to 1.
		
		Parameters
		----------
		pk : sequence
		    Defines the (discrete) distribution. ``pk[i]`` is the (possibly
		    unnormalized) probability of event ``i``.
		qk : sequence, optional
		    Sequence against which the relative entropy is computed. Should be in
		    the same format as `pk`.
		base : float, optional
		    The logarithmic base to use, defaults to ``e`` (natural logarithm).
		
		Returns
		-------
		S : float
		    The calculated entropy.
	**/
	static public function entropy(pk:Dynamic, ?qk:Dynamic, ?base:Dynamic):Float;
	/**
		An Erlang continuous random variable.
		
		As an instance of the `rv_continuous` class, `erlang` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(a, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `expon` is::
		
		    expon.pdf(x) = exp(-x)
		
		for ``x >= 0``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``expon.pdf(x, loc, scale)`` is identically
		equivalent to ``expon.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		A common parameterization for `expon` is in terms of the rate parameter
		``lambda``, such that ``pdf = lambda * exp(-lambda * x)``. This
		parameterization corresponds to using ``scale = 1 / lambda``.
		
		Examples
		--------
		>>> from scipy.stats import expon
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function expon(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An exponentially modified Normal continuous random variable.
		
		As an instance of the `rv_continuous` class, `exponnorm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(K, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, K, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, K, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, K, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, K, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, K, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, K, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, K, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, K, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, K, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(K, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(K, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, K, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(K,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(K, loc=0, scale=1)``
		    Median of the distribution.
		``mean(K, loc=0, scale=1)``
		    Mean of the distribution.
		``var(K, loc=0, scale=1)``
		    Variance of the distribution.
		``std(K, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, K, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `exponnorm` is::
		
		    exponnorm.pdf(x, K) = 1/(2*K) exp(1/(2 * K**2)) exp(-x / K) * erfc(-(x - 1/K) / sqrt(2))
		
		where the shape parameter ``K > 0``.
		
		It can be thought of as the sum of a normally distributed random
		value with mean ``loc`` and sigma ``scale`` and an exponentially
		distributed random number with a pdf proportional to ``exp(-lambda * x)``
		where ``lambda = (K * scale)**(-1)``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``exponnorm.pdf(x, K, loc, scale)`` is identically
		equivalent to ``exponnorm.pdf(y, K) / scale`` with
		``y = (x - loc) / scale``.
		
		An alternative parameterization of this distribution (for example, in
		`Wikipedia <http://en.wikipedia.org/wiki/Exponentially_modified_Gaussian_distribution>`_)
		involves three parameters, :math:`\mu`, :math:`\lambda` and :math:`\sigma`.
		In the present parameterization this corresponds to having ``loc`` and
		``scale`` equal to :math:`\mu` and :math:`\sigma`, respectively, and
		shape parameter :math:`K = 1/\sigma\lambda`.
		
		.. versionadded:: 0.16.0
		
		Examples
		--------
		>>> from scipy.stats import exponnorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(b, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, b, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, b, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, b, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, b, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, b, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, b, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, b, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, b, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, b, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(b, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(b, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, b, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(b,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(b, loc=0, scale=1)``
		    Median of the distribution.
		``mean(b, loc=0, scale=1)``
		    Mean of the distribution.
		``var(b, loc=0, scale=1)``
		    Variance of the distribution.
		``std(b, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, b, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `exponpow` is::
		
		    exponpow.pdf(x, b) = b * x**(b-1) * exp(1 + x**b - exp(x**b))
		
		for ``x >= 0``, ``b > 0``.  Note that this is a different distribution
		from the exponential power distribution that is also known under the names
		"generalized normal" or "generalized Gaussian".
		
		`exponpow` takes ``b`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``exponpow.pdf(x, b, loc, scale)`` is identically
		equivalent to ``exponpow.pdf(y, b) / scale`` with
		``y = (x - loc) / scale``.
		
		References
		----------
		http://www.math.wm.edu/~leemis/chart/UDR/PDFs/Exponentialpower.pdf
		
		Examples
		--------
		>>> from scipy.stats import exponpow
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(a, c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a, c), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `exponweib` is::
		
		    exponweib.pdf(x, a, c) =
		        a * c * (1-exp(-x**c))**(a-1) * exp(-x**c)*x**(c-1)
		
		for ``x > 0``, ``a > 0``, ``c > 0``.
		
		`exponweib` takes ``a`` and ``c`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``exponweib.pdf(x, a, c, loc, scale)`` is identically
		equivalent to ``exponweib.pdf(y, a, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import exponweib
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function exponweib(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An F continuous random variable.
		
		As an instance of the `rv_continuous` class, `f` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(dfn, dfd, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, dfn, dfd, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, dfn, dfd, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, dfn, dfd, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, dfn, dfd, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, dfn, dfd, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, dfn, dfd, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, dfn, dfd, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, dfn, dfd, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, dfn, dfd, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(dfn, dfd, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(dfn, dfd, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, dfn, dfd, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(dfn, dfd), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(dfn, dfd, loc=0, scale=1)``
		    Median of the distribution.
		``mean(dfn, dfd, loc=0, scale=1)``
		    Mean of the distribution.
		``var(dfn, dfd, loc=0, scale=1)``
		    Variance of the distribution.
		``std(dfn, dfd, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, dfn, dfd, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `f` is::
		
		                         df2**(df2/2) * df1**(df1/2) * x**(df1/2-1)
		    F.pdf(x, df1, df2) = --------------------------------------------
		                         (df2+df1*x)**((df1+df2)/2) * B(df1/2, df2/2)
		
		for ``x > 0``.
		
		`f` takes ``dfn`` and ``dfd`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``f.pdf(x, dfn, dfd, loc, scale)`` is identically
		equivalent to ``f.pdf(y, dfn, dfd) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import f
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function f(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Performs a 1-way ANOVA.
		
		The one-way ANOVA tests the null hypothesis that two or more groups have
		the same population mean.  The test is applied to samples from two or
		more groups, possibly with differing sizes.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The sample measurements for each group.
		
		Returns
		-------
		statistic : float
		    The computed F-value of the test.
		pvalue : float
		    The associated p-value from the F-distribution.
		
		Notes
		-----
		The ANOVA test has important assumptions that must be satisfied in order
		for the associated p-value to be valid.
		
		1. The samples are independent.
		2. Each sample is from a normally distributed population.
		3. The population standard deviations of the groups are all equal.  This
		   property is known as homoscedasticity.
		
		If these assumptions are not true for a given set of data, it may still be
		possible to use the Kruskal-Wallis H-test (`scipy.stats.kruskal`) although
		with some loss of power.
		
		The algorithm is from Heiman[2], pp.394-7.
		
		
		References
		----------
		.. [1] Lowry, Richard.  "Concepts and Applications of Inferential
		       Statistics". Chapter 14.
		       http://faculty.vassar.edu/lowry/ch14pt1.html
		
		.. [2] Heiman, G.W.  Research Methods in Statistics. 2002.
		
		.. [3] McDonald, G. H. "Handbook of Biological Statistics", One-way ANOVA.
		       http://http://www.biostathandbook.com/onewayanova.html
		
		Examples
		--------
		>>> import scipy.stats as stats
		
		[3]_ Here are some data on a shell measurement (the length of the anterior
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
		>>> stats.f_oneway(tillamook, newport, petersburg, magadan, tvarminne)
		(7.1210194716424473, 0.00028122423145345439)
	**/
	static public function f_oneway(?args:python.VarArgs<Dynamic>):Float;
	/**
		`f_value` is deprecated!
		stats.f_value deprecated in scipy 0.17.0
		
		
		    Returns an F-statistic for a restricted vs. unrestricted model.
		
		    Parameters
		    ----------
		    ER : float
		         `ER` is the sum of squared residuals for the restricted model
		          or null hypothesis
		
		    EF : float
		         `EF` is the sum of squared residuals for the unrestricted model
		          or alternate hypothesis
		
		    dfR : int
		          `dfR` is the degrees of freedom in the restricted model
		
		    dfF : int
		          `dfF` is the degrees of freedom in the unrestricted model
		
		    Returns
		    -------
		    F-statistic : float
		
		    
	**/
	static public function f_value(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`f_value_multivariate` is deprecated!
		stats.f_value_multivariate deprecated in scipy 0.17.0
		
		
		    Returns a multivariate F-statistic.
		
		    Parameters
		    ----------
		    ER : ndarray
		        Error associated with the null hypothesis (the Restricted model).
		        From a multivariate F calculation.
		    EF : ndarray
		        Error associated with the alternate hypothesis (the Full model)
		        From a multivariate F calculation.
		    dfnum : int
		        Degrees of freedom the Restricted model.
		    dfden : int
		        Degrees of freedom associated with the Restricted model.
		
		    Returns
		    -------
		    fstat : float
		        The computed F-statistic.
		
		    
	**/
	static public function f_value_multivariate(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`f_value_wilks_lambda` is deprecated!
		stats.f_value_wilks_lambda deprecated in scipy 0.17.0
		
		Calculation of Wilks lambda F-statistic for multivarite data, per
		    Maxwell & Delaney p.657.
		    
	**/
	static public function f_value_wilks_lambda(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`fastsort` is deprecated!
		scipy.stats.fastsort is deprecated in scipy 0.16.0
		
		
		    Sort an array and provide the argsort.
		
		    Parameters
		    ----------
		    a : array_like
		        Input array.
		
		    Returns
		    -------
		    fastsort : ndarray of type int
		        sorted indices into the original array
		
		    
	**/
	static public function fastsort(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A fatigue-life (Birnbaum-Saunders) continuous random variable.
		
		As an instance of the `rv_continuous` class, `fatiguelife` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `fatiguelife` is::
		
		    fatiguelife.pdf(x, c) =
		        (x+1) / (2*c*sqrt(2*pi*x**3)) * exp(-(x-1)**2/(2*x*c**2))
		
		for ``x > 0``.
		
		`fatiguelife` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``fatiguelife.pdf(x, c, loc, scale)`` is identically
		equivalent to ``fatiguelife.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		References
		----------
		.. [1] "Birnbaum-Saunders distribution",
		       http://en.wikipedia.org/wiki/Birnbaum-Saunders_distribution
		
		Examples
		--------
		>>> from scipy.stats import fatiguelife
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		RepeatedResults(values=array([ 2.]), counts=array([4]))
		
		>>> stats.find_repeats([[10, 20, 1, 2], [5, 5, 4, 4]])
		RepeatedResults(values=array([ 4.,  5.]), counts=array([2, 2]))
	**/
	static public function find_repeats(arr:Dynamic):Dynamic;
	/**
		Performs a Fisher exact test on a 2x2 contingency table.
		
		Parameters
		----------
		table : array_like of ints
		    A 2x2 contingency table.  Elements should be non-negative integers.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Which alternative hypothesis to the null hypothesis the test uses.
		    Default is 'two-sided'.
		
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
		    contingency table.
		
		Notes
		-----
		The calculated odds ratio is different from the one R uses. This scipy
		implementation returns the (more common) "unconditional Maximum
		Likelihood Estimate", while R uses the "conditional Maximum Likelihood
		Estimate".
		
		For tables with large numbers, the (inexact) chi-square test implemented
		in the function `chi2_contingency` can also be used.
		
		Examples
		--------
		Say we spend a few days counting whales and sharks in the Atlantic and
		Indian oceans. In the Atlantic ocean we find 8 whales and 1 shark, in the
		Indian ocean 2 whales and 5 sharks. Then our contingency table is::
		
		            Atlantic  Indian
		    whales     8        2
		    sharks     1        5
		
		We use this table to find the p-value:
		
		>>> import scipy.stats as stats
		>>> oddsratio, pvalue = stats.fisher_exact([[8, 2], [1, 5]])
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
		
		The Fisk distribution is also known as the log-logistic distribution, and
		equals the Burr distribution with ``d == 1``.
		
		`fisk` takes ``c`` as a shape parameter.
		
		As an instance of the `rv_continuous` class, `fisk` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `fisk` is::
		
		    fisk.pdf(x, c) = c * x**(-c-1) * (1 + x**(-c))**(-2)
		
		for ``x > 0``.
		
		`fisk` takes ``c`` as a shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``fisk.pdf(x, c, loc, scale)`` is identically
		equivalent to ``fisk.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		See Also
		--------
		burr
		
		Examples
		--------
		>>> from scipy.stats import fisk
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		.. [1] http://www.stat.psu.edu/~bgl/center/tr/TR993.ps
		
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
	**/
	static public function fligner(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Float;
	/**
		A folded Cauchy continuous random variable.
		
		As an instance of the `rv_continuous` class, `foldcauchy` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `foldcauchy` is::
		
		    foldcauchy.pdf(x, c) = 1/(pi*(1+(x-c)**2)) + 1/(pi*(1+(x+c)**2))
		
		for ``x >= 0``.
		
		`foldcauchy` takes ``c`` as a shape parameter.
		
		Examples
		--------
		>>> from scipy.stats import foldcauchy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `foldnorm` is::
		
		    foldnormal.pdf(x, c) = sqrt(2/pi) * cosh(c*x) * exp(-(x**2+c**2)/2)
		
		for ``c >= 0``.
		
		`foldnorm` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``foldnorm.pdf(x, c, loc, scale)`` is identically
		equivalent to ``foldnorm.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import foldnorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function foldnorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Frechet left (or Weibull maximum) continuous random variable.
		
		As an instance of the `rv_continuous` class, `frechet_l` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		weibull_max : The same distribution as `frechet_l`.
		frechet_r, weibull_min
		
		Notes
		-----
		The probability density function for `frechet_l` is::
		
		    frechet_l.pdf(x, c) = c * (-x)**(c-1) * exp(-(-x)**c)
		
		for ``x < 0``, ``c > 0``.
		
		`frechet_l` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``frechet_l.pdf(x, c, loc, scale)`` is identically
		equivalent to ``frechet_l.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import frechet_l
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		>>> c = 3.63
		>>> mean, var, skew, kurt = frechet_l.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(frechet_l.ppf(0.01, c),
		...                 frechet_l.ppf(0.99, c), 100)
		>>> ax.plot(x, frechet_l.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='frechet_l pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed. 
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = frechet_l(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = frechet_l.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], frechet_l.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = frechet_l.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function frechet_l(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Frechet right (or Weibull minimum) continuous random variable.
		
		As an instance of the `rv_continuous` class, `frechet_r` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		weibull_min : The same distribution as `frechet_r`.
		frechet_l, weibull_max
		
		Notes
		-----
		The probability density function for `frechet_r` is::
		
		    frechet_r.pdf(x, c) = c * x**(c-1) * exp(-x**c)
		
		for ``x > 0``, ``c > 0``.
		
		`frechet_r` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``frechet_r.pdf(x, c, loc, scale)`` is identically
		equivalent to ``frechet_r.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import frechet_r
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		>>> c = 1.89
		>>> mean, var, skew, kurt = frechet_r.stats(c, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(frechet_r.ppf(0.01, c),
		...                 frechet_r.ppf(0.99, c), 100)
		>>> ax.plot(x, frechet_r.pdf(x, c),
		...        'r-', lw=5, alpha=0.6, label='frechet_r pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed. 
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = frechet_r(c)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = frechet_r.ppf([0.001, 0.5, 0.999], c)
		>>> np.allclose([0.001, 0.5, 0.999], frechet_r.cdf(vals, c))
		True
		
		Generate random numbers:
		
		>>> r = frechet_r.rvs(c, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function frechet_r(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes the Friedman test for repeated measurements
		
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
		    the test statistic, correcting for ties
		pvalue : float
		    the associated p-value assuming that the test statistic has a chi
		    squared distribution
		
		Notes
		-----
		Due to the assumption that the test statistic has a chi squared
		distribution, the p-value is only reliable for n > 10 and more than
		6 repeated measurements.
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/Friedman_test
	**/
	static public function friedmanchisquare(?args:python.VarArgs<Dynamic>):Float;
	/**
		A gamma continuous random variable.
		
		As an instance of the `rv_continuous` class, `gamma` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(a, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		erlang, expon
		
		Notes
		-----
		The probability density function for `gamma` is::
		
		    gamma.pdf(x, a) = x**(a-1) * exp(-x) / gamma(a)
		
		for ``x >= 0``, ``a > 0``. Here ``gamma(a)`` refers to the gamma function.
		
		`gamma` has a shape parameter `a` which needs to be set explicitly.
		
		When ``a`` is an integer, `gamma` reduces to the Erlang
		distribution, and when ``a=1`` to the exponential distribution.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gamma.pdf(x, a, loc, scale)`` is identically
		equivalent to ``gamma.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import gamma
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(a, b, c, z, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, b, c, z, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, b, c, z, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, b, c, z, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, b, c, z, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, b, c, z, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, b, c, z, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, b, c, z, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, b, c, z, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, b, c, z, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, b, c, z, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, b, c, z, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, b, c, z, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a, b, c, z), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, b, c, z, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, b, c, z, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, b, c, z, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, b, c, z, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, b, c, z, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `gausshyper` is::
		
		    gausshyper.pdf(x, a, b, c, z) =
		        C * x**(a-1) * (1-x)**(b-1) * (1+z*x)**(-c)
		
		for ``0 <= x <= 1``, ``a > 0``, ``b > 0``, and
		``C = 1 / (B(a, b) F[2, 1](c, a; a+b; -z))``
		
		`gausshyper` takes ``a``, ``b``, ``c`` and ``z`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gausshyper.pdf(x, a, b, c, z, loc, scale)`` is identically
		equivalent to ``gausshyper.pdf(y, a, b, c, z) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import gausshyper
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(a, b, c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, b, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, b, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, b, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, b, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, b, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, b, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, b, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, b, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, b, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, b, c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, b, c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, b, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a, b, c), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, b, c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, b, c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, b, c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, b, c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, b, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `genexpon` is::
		
		    genexpon.pdf(x, a, b, c) = (a + b * (1 - exp(-c*x))) *                                    exp(-a*x - b*x + b/c * (1-exp(-c*x)))
		
		for ``x >= 0``, ``a, b, c > 0``.
		
		`genexpon` takes ``a``, ``b`` and ``c`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genexpon.pdf(x, a, b, c, loc, scale)`` is identically
		equivalent to ``genexpon.pdf(y, a, b, c) / scale`` with
		``y = (x - loc) / scale``.
		
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
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		gumbel_r
		
		Notes
		-----
		For ``c=0``, `genextreme` is equal to `gumbel_r`.
		The probability density function for `genextreme` is::
		
		    genextreme.pdf(x, c) =
		        exp(-exp(-x))*exp(-x),                    for c==0
		        exp(-(1-c*x)**(1/c))*(1-c*x)**(1/c-1),    for x <= 1/c, c > 0
		
		Note that several sources and software packages use the opposite
		convention for the sign of the shape parameter ``c``.
		
		`genextreme` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genextreme.pdf(x, c, loc, scale)`` is identically
		equivalent to ``genextreme.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import genextreme
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(a, c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a, c), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `gengamma` is::
		
		    gengamma.pdf(x, a, c) = abs(c) * x**(c*a-1) * exp(-x**c) / gamma(a)
		
		for ``x > 0``, ``a > 0``, and ``c != 0``.
		
		`gengamma` takes ``a`` and ``c`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gengamma.pdf(x, a, c, loc, scale)`` is identically
		equivalent to ``gengamma.pdf(y, a, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import gengamma
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `genhalflogistic` is::
		
		    genhalflogistic.pdf(x, c) = 2 * (1-c*x)**(1/c-1) / (1+(1-c*x)**(1/c))**2
		
		for ``0 <= x <= 1/c``, and ``c > 0``.
		
		`genhalflogistic` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genhalflogistic.pdf(x, c, loc, scale)`` is identically
		equivalent to ``genhalflogistic.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import genhalflogistic
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function genhalflogistic(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A generalized logistic continuous random variable.
		
		As an instance of the `rv_continuous` class, `genlogistic` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `genlogistic` is::
		
		    genlogistic.pdf(x, c) = c * exp(-x) / (1 + exp(-x))**(c+1)
		
		for ``x > 0``, ``c > 0``.
		
		`genlogistic` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genlogistic.pdf(x, c, loc, scale)`` is identically
		equivalent to ``genlogistic.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import genlogistic
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(beta, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, beta, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, beta, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, beta, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, beta, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, beta, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, beta, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, beta, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, beta, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, beta, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(beta, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(beta, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, beta, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(beta,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(beta, loc=0, scale=1)``
		    Median of the distribution.
		``mean(beta, loc=0, scale=1)``
		    Mean of the distribution.
		``var(beta, loc=0, scale=1)``
		    Variance of the distribution.
		``std(beta, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, beta, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `gennorm` is [1]_::
		
		                                 beta
		    gennorm.pdf(x, beta) =  ---------------  exp(-|x|**beta)
		                            2 gamma(1/beta)
		
		`gennorm` takes ``beta`` as a shape parameter.
		For ``beta = 1``, it is identical to a Laplace distribution.
		For ``beta = 2``, it is identical to a normal distribution
		(with ``scale=1/sqrt(2)``).
		
		See Also
		--------
		laplace : Laplace distribution
		norm : normal distribution
		
		References
		----------
		
		.. [1] "Generalized normal distribution, Version 1",
		       https://en.wikipedia.org/wiki/Generalized_normal_distribution#Version_1
		
		Examples
		--------
		>>> from scipy.stats import gennorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `genpareto` is::
		
		    genpareto.pdf(x, c) = (1 + c * x)**(-1 - 1/c)
		
		defined for ``x >= 0`` if ``c >=0``, and for
		``0 <= x <= -1/c`` if ``c < 0``.
		
		`genpareto` takes ``c`` as a shape parameter.
		
		For ``c == 0``, `genpareto` reduces to the exponential
		distribution, `expon`::
		
		    genpareto.pdf(x, c=0) = exp(-x)
		
		For ``c == -1``, `genpareto` is uniform on ``[0, 1]``::
		
		    genpareto.cdf(x, c=-1) = x
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``genpareto.pdf(x, c, loc, scale)`` is identically
		equivalent to ``genpareto.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import genpareto
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(p, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, p, loc=0)``
		    Probability mass function.
		``logpmf(x, p, loc=0)``
		    Log of the probability mass function.
		``cdf(x, p, loc=0)``
		    Cumulative density function.
		``logcdf(x, p, loc=0)``
		    Log of the cumulative density function.
		``sf(x, p, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, p, loc=0)``
		    Log of the survival function.
		``ppf(q, p, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, p, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(p, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(p, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(p,), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(p, loc=0)``
		    Median of the distribution.
		``mean(p, loc=0)``
		    Mean of the distribution.
		``var(p, loc=0)``
		    Variance of the distribution.
		``std(p, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, p, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `geom` is::
		
		    geom.pmf(k) = (1-p)**(k-1)*p
		
		for ``k >= 1``.
		
		`geom` takes ``p`` as shape parameter.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``geom.pmf(k, p, loc)`` is identically
		equivalent to ``geom.pmf(k - loc, p)``.
		
		Examples
		--------
		>>> from scipy.stats import geom
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `gilbrat` is::
		
		    gilbrat.pdf(x) = 1/(x*sqrt(2*pi)) * exp(-1/2*(log(x))**2)
		
		`gilbrat` is a special case of `lognorm` with ``s = 1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gilbrat.pdf(x, loc, scale)`` is identically
		equivalent to ``gilbrat.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import gilbrat
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gilbrat(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		A Gompertz (or truncated Gumbel) continuous random variable.
		
		As an instance of the `rv_continuous` class, `gompertz` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `gompertz` is::
		
		    gompertz.pdf(x, c) = c * exp(x) * exp(-c*(exp(x)-1))
		
		for ``x >= 0``, ``c > 0``.
		
		`gompertz` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gompertz.pdf(x, c, loc, scale)`` is identically
		equivalent to ``gompertz.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import gompertz
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gompertz(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A left-skewed Gumbel continuous random variable.
		
		As an instance of the `rv_continuous` class, `gumbel_l` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		gumbel_r, gompertz, genextreme
		
		Notes
		-----
		The probability density function for `gumbel_l` is::
		
		    gumbel_l.pdf(x) = exp(x - exp(x))
		
		The Gumbel distribution is sometimes referred to as a type I Fisher-Tippett
		distribution.  It is also related to the extreme value distribution,
		log-Weibull and Gompertz distributions.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gumbel_l.pdf(x, loc, scale)`` is identically
		equivalent to ``gumbel_l.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import gumbel_l
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		gumbel_l, gompertz, genextreme
		
		Notes
		-----
		The probability density function for `gumbel_r` is::
		
		    gumbel_r.pdf(x) = exp(-(x + exp(-x)))
		
		The Gumbel distribution is sometimes referred to as a type I Fisher-Tippett
		distribution.  It is also related to the extreme value distribution,
		log-Weibull and Gompertz distributions.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``gumbel_r.pdf(x, loc, scale)`` is identically
		equivalent to ``gumbel_r.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import gumbel_r
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function gumbel_r(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Half-Cauchy continuous random variable.
		
		As an instance of the `rv_continuous` class, `halfcauchy` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `halfcauchy` is::
		
		    halfcauchy.pdf(x) = 2 / (pi * (1 + x**2))
		
		for ``x >= 0``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``halfcauchy.pdf(x, loc, scale)`` is identically
		equivalent to ``halfcauchy.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import halfcauchy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(beta, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, beta, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, beta, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, beta, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, beta, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, beta, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, beta, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, beta, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, beta, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, beta, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(beta, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(beta, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, beta, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(beta,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(beta, loc=0, scale=1)``
		    Median of the distribution.
		``mean(beta, loc=0, scale=1)``
		    Mean of the distribution.
		``var(beta, loc=0, scale=1)``
		    Variance of the distribution.
		``std(beta, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, beta, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `halfgennorm` is::
		
		                                    beta
		    halfgennorm.pdf(x, beta) =  -------------  exp(-|x|**beta)
		                                gamma(1/beta)
		
		`gennorm` takes ``beta`` as a shape parameter.
		For ``beta = 1``, it is identical to an exponential distribution.
		For ``beta = 2``, it is identical to a half normal distribution
		(with ``scale=1/sqrt(2)``).
		
		See Also
		--------
		gennorm : generalized normal distribution
		expon : exponential distribution
		halfnorm : half normal distribution
		
		References
		----------
		
		.. [1] "Generalized normal distribution, Version 1",
		       https://en.wikipedia.org/wiki/Generalized_normal_distribution#Version_1
		
		Examples
		--------
		>>> from scipy.stats import halfgennorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `halflogistic` is::
		
		    halflogistic.pdf(x) = 2 * exp(-x) / (1+exp(-x))**2 = 1/2 * sech(x/2)**2
		
		for ``x >= 0``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``halflogistic.pdf(x, loc, scale)`` is identically
		equivalent to ``halflogistic.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import halflogistic
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `halfnorm` is::
		
		    halfnorm.pdf(x) = sqrt(2/pi) * exp(-x**2/2)
		
		for ``x > 0``.
		
		`halfnorm` is a special case of `chi` with ``df == 1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``halfnorm.pdf(x, loc, scale)`` is identically
		equivalent to ``halfnorm.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import halfnorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function halfnorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`histogram` is deprecated!
		scipy.stats.histogram is deprecated in scipy 0.17.0; use np.histogram instead
	**/
	static public function histogram(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`histogram2` is deprecated!
		scipy.stats.histogram2 is deprecated in scipy 0.16.0; use np.histogram2d instead
		
		
		    Compute histogram using divisions in bins.
		
		    Count the number of times values from array `a` fall into
		    numerical ranges defined by `bins`.  Range x is given by
		    bins[x] <= range_x < bins[x+1] where x =0,N and N is the
		    length of the `bins` array.  The last range is given by
		    bins[N] <= range_N < infinity.  Values less than bins[0] are
		    not included in the histogram.
		
		    Parameters
		    ----------
		    a : array_like of rank 1
		        The array of values to be assigned into bins
		    bins : array_like of rank 1
		        Defines the ranges of values to use during histogramming.
		
		    Returns
		    -------
		    histogram2 : ndarray of rank 1
		        Each value represents the occurrences for a given bin (range) of
		        values.
		
		    
	**/
	static public function histogram2(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		A hypergeometric discrete random variable.
		
		The hypergeometric distribution models drawing objects from a bin.
		M is the total number of objects, n is total number of Type I objects.
		The random variate represents the number of Type I objects in N drawn
		without replacement from the total population.
		
		As an instance of the `rv_discrete` class, `hypergeom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(M, n, N, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, M, n, N, loc=0)``
		    Probability mass function.
		``logpmf(x, M, n, N, loc=0)``
		    Log of the probability mass function.
		``cdf(x, M, n, N, loc=0)``
		    Cumulative density function.
		``logcdf(x, M, n, N, loc=0)``
		    Log of the cumulative density function.
		``sf(x, M, n, N, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, M, n, N, loc=0)``
		    Log of the survival function.
		``ppf(q, M, n, N, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, M, n, N, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(M, n, N, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(M, n, N, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(M, n, N), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(M, n, N, loc=0)``
		    Median of the distribution.
		``mean(M, n, N, loc=0)``
		    Mean of the distribution.
		``var(M, n, N, loc=0)``
		    Variance of the distribution.
		``std(M, n, N, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, M, n, N, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function is defined as::
		
		    pmf(k, M, n, N) = choose(n, k) * choose(M - n, N - k) / choose(M, N),
		                                   for max(0, N - (M-n)) <= k <= min(n, N)
		
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
	**/
	static public function hypergeom(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A hyperbolic secant continuous random variable.
		
		As an instance of the `rv_continuous` class, `hypsecant` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `hypsecant` is::
		
		    hypsecant.pdf(x) = 1/pi * sech(x)
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``hypsecant.pdf(x, loc, scale)`` is identically
		equivalent to ``hypsecant.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import hypsecant
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(a, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `invgamma` is::
		
		    invgamma.pdf(x, a) = x**(-a-1) / gamma(a) * exp(-1/x)
		
		for x > 0, a > 0.
		
		`invgamma` takes ``a`` as a shape parameter.
		
		`invgamma` is a special case of `gengamma` with ``c == -1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``invgamma.pdf(x, a, loc, scale)`` is identically
		equivalent to ``invgamma.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import invgamma
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(mu, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, mu, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, mu, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, mu, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, mu, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, mu, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, mu, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, mu, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, mu, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, mu, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(mu, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(mu, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, mu, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(mu,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(mu, loc=0, scale=1)``
		    Median of the distribution.
		``mean(mu, loc=0, scale=1)``
		    Mean of the distribution.
		``var(mu, loc=0, scale=1)``
		    Variance of the distribution.
		``std(mu, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, mu, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `invgauss` is::
		
		    invgauss.pdf(x, mu) = 1 / sqrt(2*pi*x**3) * exp(-(x-mu)**2/(2*x*mu**2))
		
		for ``x > 0``.
		
		`invgauss` takes ``mu`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``invgauss.pdf(x, mu, loc, scale)`` is identically
		equivalent to ``invgauss.pdf(y, mu) / scale`` with
		``y = (x - loc) / scale``.
		
		When `mu` is too small, evaluating the cumulative density function will be
		inaccurate due to ``cdf(mu -> 0) = inf * 0``.
		NaNs are returned for ``mu <= 0.0028``.
		
		Examples
		--------
		>>> from scipy.stats import invgauss
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function invgauss(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An inverted Weibull continuous random variable.
		
		As an instance of the `rv_continuous` class, `invweibull` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `invweibull` is::
		
		    invweibull.pdf(x, c) = c * x**(-c-1) * exp(-x**(-c))
		
		for ``x > 0``, ``c > 0``.
		
		`invweibull` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``invweibull.pdf(x, c, loc, scale)`` is identically
		equivalent to ``invweibull.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		References
		----------
		F.R.S. de Gusmao, E.M.M Ortega and G.M. Cordeiro, "The generalized inverse
		Weibull distribution", Stat. Papers, vol. 52, pp. 591-619, 2011.
		
		Examples
		--------
		>>> from scipy.stats import invweibull
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
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
		.. [2] M.C. Jones, "Generating Inverse Wishart Matrices", Communications in
		       Statistics - Simulation and Computation, vol. 14.2, pp.511-514, 1985.
		
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
		Returns a 2-D array of item frequencies.
		
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
	static public function itemfreq(a:Dynamic):Dynamic;
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
		>>> np.random.seed(987654321)
		>>> x = np.random.normal(0, 1, 100000)
		>>> y = np.random.rayleigh(1, 100000)
		>>> stats.jarque_bera(x)
		(4.7165707989581342, 0.09458225503041906)
		>>> stats.jarque_bera(y)
		(6713.7098548143422, 0.0)
	**/
	static public function jarque_bera(x:Dynamic):Float;
	/**
		A Johnson SB continuous random variable.
		
		As an instance of the `rv_continuous` class, `johnsonsb` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(a, b, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, b, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, b, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, b, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, b, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, b, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, b, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, b, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, b, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, b, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, b, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, b, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, b, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, b, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, b, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, b, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, b, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		johnsonsu
		
		Notes
		-----
		The probability density function for `johnsonsb` is::
		
		    johnsonsb.pdf(x, a, b) = b / (x*(1-x)) * phi(a + b * log(x/(1-x)))
		
		for ``0 < x < 1`` and ``a, b > 0``, and ``phi`` is the normal pdf.
		
		`johnsonsb` takes ``a`` and ``b`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``johnsonsb.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``johnsonsb.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import johnsonsb
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(a, b, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, b, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, b, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, b, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, b, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, b, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, b, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, b, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, b, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, b, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, b, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, b, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, b, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, b, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, b, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, b, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, b, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		johnsonsb
		
		Notes
		-----
		The probability density function for `johnsonsu` is::
		
		    johnsonsu.pdf(x, a, b) = b / sqrt(x**2 + 1) *
		                             phi(a + b * log(x + sqrt(x**2 + 1)))
		
		for all ``x, a, b > 0``, and `phi` is the normal pdf.
		
		`johnsonsu` takes ``a`` and ``b`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``johnsonsu.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``johnsonsu.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import johnsonsu
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function johnsonsu(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculates Kendall's tau, a correlation measure for ordinal data.
		
		Kendall's tau is a measure of the correspondence between two rankings.
		Values close to 1 indicate strong agreement, values close to -1 indicate
		strong disagreement.  This is the tau-b version of Kendall's tau which
		accounts for ties.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of rankings, of the same shape. If arrays are not 1-D, they will
		    be flattened to 1-D.
		initial_lexsort : bool, optional
		    Whether to use lexsort or quicksort as the sorting method for the
		    initial sort of the inputs. Default is lexsort (True), for which
		    `kendalltau` is of complexity O(n log(n)). If False, the complexity is
		    O(n^2), but with a smaller pre-factor (so quicksort may be faster for
		    small arrays).
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		correlation : float
		   The tau statistic.
		pvalue : float
		   The two-sided p-value for a hypothesis test whose null hypothesis is
		   an absence of association, tau = 0.
		
		See also
		--------
		spearmanr : Calculates a Spearman rank-order correlation coefficient.
		theilslopes : Computes the Theil-Sen estimator for a set of points (x, y).
		
		Notes
		-----
		The definition of Kendall's tau that is used is::
		
		  tau = (P - Q) / sqrt((P + Q + T) * (P + Q + U))
		
		where P is the number of concordant pairs, Q the number of discordant
		pairs, T the number of ties only in `x`, and U the number of ties only in
		`y`.  If a tie occurs for the same pair in both `x` and `y`, it is not
		added to either T or U.
		
		References
		----------
		W.R. Knight, "A Computer Method for Calculating Kendall's Tau with
		Ungrouped Data", Journal of the American Statistical Association, Vol. 61,
		No. 314, Part 1, pp. 436-439, 1966.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x1 = [12, 2, 1, 12, 2]
		>>> x2 = [1, 4, 7, 1, 0]
		>>> tau, p_value = stats.kendalltau(x1, x2)
		>>> tau
		-0.47140452079103173
		>>> p_value
		0.24821309157521476
	**/
	static public function kendalltau(x:Dynamic, y:Dynamic, ?initial_lexsort:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Compute the Kruskal-Wallis H-test for independent samples
		
		The Kruskal-Wallis H-test tests the null hypothesis that the population
		median of all of the groups are equal.  It is a non-parametric version of
		ANOVA.  The test works on 2 or more independent samples, which may have
		different sizes.  Note that rejecting the null hypothesis does not
		indicate which of the groups differs.  Post-hoc comparisons between
		groups are required to determine which groups are different.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		   Two or more arrays with the sample measurements can be given as
		   arguments.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float
		   The Kruskal-Wallis H statistic, corrected for ties
		pvalue : float
		   The p-value for the test using the assumption that H has a chi
		   square distribution
		
		See Also
		--------
		f_oneway : 1-way ANOVA
		mannwhitneyu : Mann-Whitney rank test on two samples.
		friedmanchisquare : Friedman test for repeated measurements
		
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
		.. [2] http://en.wikipedia.org/wiki/Kruskal-Wallis_one-way_analysis_of_variance
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = [1, 3, 5, 7, 9]
		>>> y = [2, 4, 6, 8, 10]
		>>> stats.kruskal(x, y)
		KruskalResult(statistic=0.27272727272727337, pvalue=0.60150813444058948)
		
		>>> x = [1, 1, 1]
		>>> y = [2, 2, 2]
		>>> z = [2, 2]
		>>> stats.kruskal(x, y, z)
		KruskalResult(statistic=7.0, pvalue=0.030197383422318501)
	**/
	static public function kruskal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Float;
	/**
		Computes the Kolmogorov-Smirnov statistic on 2 samples.
		
		This is a two-sided test for the null hypothesis that 2 independent samples
		are drawn from the same continuous distribution.
		
		Parameters
		----------
		data1, data2 : sequence of 1-D ndarrays
		    two arrays of sample observations assumed to be drawn from a continuous
		    distribution, sample sizes can be different
		
		Returns
		-------
		statistic : float
		    KS statistic
		pvalue : float
		    two-tailed p-value
		
		Notes
		-----
		This tests whether 2 samples are drawn from the same distribution. Note
		that, like in the case of the one-sample K-S test, the distribution is
		assumed to be continuous.
		
		This is the two-sided test, one-sided tests are not implemented.
		The test uses the two-sided asymptotic Kolmogorov-Smirnov distribution.
		
		If the K-S statistic is small or the p-value is high, then we cannot
		reject the hypothesis that the distributions of the two samples
		are the same.
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(12345678)  #fix random seed to get the same result
		>>> n1 = 200  # size of first sample
		>>> n2 = 300  # size of second sample
		
		For a different distribution, we can reject the null hypothesis since the
		pvalue is below 1%:
		
		>>> rvs1 = stats.norm.rvs(size=n1, loc=0., scale=1)
		>>> rvs2 = stats.norm.rvs(size=n2, loc=0.5, scale=1.5)
		>>> stats.ks_2samp(rvs1, rvs2)
		(0.20833333333333337, 4.6674975515806989e-005)
		
		For a slightly different distribution, we cannot reject the null hypothesis
		at a 10% or lower alpha since the p-value at 0.144 is higher than 10%
		
		>>> rvs3 = stats.norm.rvs(size=n2, loc=0.01, scale=1.0)
		>>> stats.ks_2samp(rvs1, rvs3)
		(0.10333333333333333, 0.14498781825751686)
		
		For an identical distribution, we cannot reject the null hypothesis since
		the p-value is high, 41%:
		
		>>> rvs4 = stats.norm.rvs(size=n2, loc=0.0, scale=1.0)
		>>> stats.ks_2samp(rvs1, rvs4)
		(0.07999999999999996, 0.41126949729859719)
	**/
	static public function ks_2samp(data1:Dynamic, data2:Dynamic):Float;
	/**
		General Kolmogorov-Smirnov one-sided test.
		
		As an instance of the `rv_continuous` class, `ksone` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(n, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, n, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, n, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, n, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, n, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, n, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, n, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, n, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, n, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(n, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(n, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, n, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(n,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(n, loc=0, scale=1)``
		    Median of the distribution.
		``mean(n, loc=0, scale=1)``
		    Mean of the distribution.
		``var(n, loc=0, scale=1)``
		    Variance of the distribution.
		``std(n, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, n, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Examples
		--------
		>>> from scipy.stats import ksone
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		
		where ``:math:\mu`` is the sample mean, ``:math:m_2`` is the sample
		variance, and ``:math:m_i`` is the i-th sample central moment.
		
		References
		----------
		http://mathworld.wolfram.com/k-Statistic.html
		
		http://mathworld.wolfram.com/Cumulant.html
		
		Examples
		--------
		>>> from scipy import stats
		>>> rndm = np.random.RandomState(1234)
		
		As sample size increases, n-th moment and n-th k-statistic converge to the
		same number (although they aren't identical). In the case of the normal
		distribution, they converge to zero.
		
		>>> for n in [2, 3, 4, 5, 6, 7]:
		...     x = rndm.normal(size=10**n)
		...     m, k = stats.moment(x, 3), stats.kstat(x, 3)
		...     print("%.3g %.3g %.3g" % (m, k, m-k))
		-0.631 -0.651 0.0194
		0.0282 0.0283 -8.49e-05
		-0.0454 -0.0454 1.36e-05
		7.53e-05 7.53e-05 -2.26e-09
		0.00166 0.00166 -4.99e-09
		-2.88e-06 -2.88e-06 8.63e-13
	**/
	static public function kstat(data:Dynamic, ?n:Dynamic):Float;
	/**
		Returns an unbiased estimator of the variance of the k-statistic.
		
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
		Perform the Kolmogorov-Smirnov test for goodness of fit.
		
		This performs a test of the distribution G(x) of an observed
		random variable against a given distribution F(x). Under the null
		hypothesis the two distributions are identical, G(x)=F(x). The
		alternative hypothesis can be either 'two-sided' (default), 'less'
		or 'greater'. The KS test is only valid for continuous distributions.
		
		Parameters
		----------
		rvs : str, array or callable
		    If a string, it should be the name of a distribution in `scipy.stats`.
		    If an array, it should be a 1-D array of observations of random
		    variables.
		    If a callable, it should be a function to generate random variables;
		    it is required to have a keyword argument `size`.
		cdf : str or callable
		    If a string, it should be the name of a distribution in `scipy.stats`.
		    If `rvs` is a string then `cdf` can be False or the same as `rvs`.
		    If a callable, that callable is used to calculate the cdf.
		args : tuple, sequence, optional
		    Distribution parameters, used if `rvs` or `cdf` are strings.
		N : int, optional
		    Sample size if `rvs` is string or callable.  Default is 20.
		alternative : {'two-sided', 'less','greater'}, optional
		    Defines the alternative hypothesis (see explanation above).
		    Default is 'two-sided'.
		mode : 'approx' (default) or 'asymp', optional
		    Defines the distribution used for calculating the p-value.
		
		      - 'approx' : use approximation to exact distribution of test statistic
		      - 'asymp' : use asymptotic distribution of test statistic
		
		Returns
		-------
		statistic : float
		    KS test statistic, either D, D+ or D-.
		pvalue :  float
		    One-tailed or two-tailed p-value.
		
		Notes
		-----
		In the one-sided test, the alternative is that the empirical
		cumulative distribution function of the random variable is "less"
		or "greater" than the cumulative distribution function F(x) of the
		hypothesis, ``G(x)<=F(x)``, resp. ``G(x)>=F(x)``.
		
		Examples
		--------
		>>> from scipy import stats
		
		>>> x = np.linspace(-15, 15, 9)
		>>> stats.kstest(x, 'norm')
		(0.44435602715924361, 0.038850142705171065)
		
		>>> np.random.seed(987654321) # set random seed to get the same result
		>>> stats.kstest('norm', False, N=100)
		(0.058352892479417884, 0.88531190944151261)
		
		The above lines are equivalent to:
		
		>>> np.random.seed(987654321)
		>>> stats.kstest(stats.norm.rvs(size=100), 'norm')
		(0.058352892479417884, 0.88531190944151261)
		
		*Test against one-sided alternative hypothesis*
		
		Shift distribution to larger values, so that ``cdf_dgp(x) < norm.cdf(x)``:
		
		>>> np.random.seed(987654321)
		>>> x = stats.norm.rvs(loc=0.2, size=100)
		>>> stats.kstest(x,'norm', alternative = 'less')
		(0.12464329735846891, 0.040989164077641749)
		
		Reject equal distribution against alternative hypothesis: less
		
		>>> stats.kstest(x,'norm', alternative = 'greater')
		(0.0072115233216311081, 0.98531158590396395)
		
		Don't reject equal distribution against alternative hypothesis: greater
		
		>>> stats.kstest(x,'norm', mode='asymp')
		(0.12464329735846891, 0.08944488871182088)
		
		*Testing t distributed random variables against normal distribution*
		
		With 100 degrees of freedom the t distribution looks close to the normal
		distribution, and the K-S test does not reject the hypothesis that the
		sample came from the normal distribution:
		
		>>> np.random.seed(987654321)
		>>> stats.kstest(stats.t.rvs(100,size=100),'norm')
		(0.072018929165471257, 0.67630062862479168)
		
		With 3 degrees of freedom the t distribution looks sufficiently different
		from the normal distribution, that we can reject the hypothesis that the
		sample came from the normal distribution at the 10% level:
		
		>>> np.random.seed(987654321)
		>>> stats.kstest(stats.t.rvs(3,size=100),'norm')
		(0.131016895759829, 0.058826222555312224)
	**/
	static public function kstest(rvs:Dynamic, cdf:Dynamic, ?args:Dynamic, ?N:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Kolmogorov-Smirnov two-sided test for large N.
		
		As an instance of the `rv_continuous` class, `kstwobign` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Examples
		--------
		>>> from scipy.stats import kstwobign
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function kstwobign(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	**/
	static public function kurtosis(a:Dynamic, ?axis:Dynamic, ?fisher:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Array<Dynamic>;
	/**
		Tests whether a dataset has normal kurtosis
		
		This function tests the null hypothesis that the kurtosis
		of the population from which the sample was drawn is that
		of the normal distribution: ``kurtosis = 3(n-1)/(n+1)``.
		
		Parameters
		----------
		a : array
		    array of the sample data
		axis : int or None, optional
		   Axis along which to compute test. Default is 0. If None,
		   compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float
		    The computed z-score for this test.
		pvalue : float
		    The 2-sided p-value for the hypothesis test
		
		Notes
		-----
		Valid only for n>20.  The Z-score is set to 0 for bad entries.
	**/
	static public function kurtosistest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		A Laplace continuous random variable.
		
		As an instance of the `rv_continuous` class, `laplace` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `laplace` is::
		
		    laplace.pdf(x) = 1/2 * exp(-abs(x))
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``laplace.pdf(x, loc, scale)`` is identically
		equivalent to ``laplace.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import laplace
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function laplace(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform Levene test for equal variances.
		
		The Levene test tests the null hypothesis that all input samples
		are from populations with equal variances.  Levene's test is an
		alternative to Bartlett's test `bartlett` in the case where
		there are significant deviations from normality.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The sample data, possibly with different lengths
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
		
		References
		----------
		.. [1]  http://www.itl.nist.gov/div898/handbook/eda/section3/eda35a.htm
		.. [2]   Levene, H. (1960). In Contributions to Probability and Statistics:
		           Essays in Honor of Harold Hotelling, I. Olkin et al. eds.,
		           Stanford University Press, pp. 278-292.
		.. [3]  Brown, M. B. and Forsythe, A. B. (1974), Journal of the American
		          Statistical Association, 69, 364-367
	**/
	static public function levene(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Float;
	/**
		A Levy continuous random variable.
		
		As an instance of the `rv_continuous` class, `levy` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		levy_stable, levy_l
		
		Notes
		-----
		The probability density function for `levy` is::
		
		    levy.pdf(x) = 1 / (x * sqrt(2*pi*x)) * exp(-1/(2*x))
		
		for ``x > 0``.
		
		This is the same as the Levy-stable distribution with a=1/2 and b=1.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``levy.pdf(x, loc, scale)`` is identically
		equivalent to ``levy.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import levy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		levy, levy_stable
		
		Notes
		-----
		The probability density function for `levy_l` is::
		
		    levy_l.pdf(x) = 1 / (abs(x) * sqrt(2*pi*abs(x))) * exp(-1/(2*abs(x)))
		
		for ``x < 0``.
		
		This is the same as the Levy-stable distribution with a=1/2 and b=-1.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``levy_l.pdf(x, loc, scale)`` is identically
		equivalent to ``levy_l.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import levy_l
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(alpha, beta, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, alpha, beta, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, alpha, beta, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, alpha, beta, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, alpha, beta, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, alpha, beta, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, alpha, beta, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, alpha, beta, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, alpha, beta, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, alpha, beta, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(alpha, beta, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(alpha, beta, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, alpha, beta, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(alpha, beta), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(alpha, beta, loc=0, scale=1)``
		    Median of the distribution.
		``mean(alpha, beta, loc=0, scale=1)``
		    Mean of the distribution.
		``var(alpha, beta, loc=0, scale=1)``
		    Variance of the distribution.
		``std(alpha, beta, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, alpha, beta, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		levy, levy_l
		
		Notes
		-----
		Levy-stable distribution (only random variates available -- ignore other
		docs)
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``levy_stable.pdf(x, alpha, beta, loc, scale)`` is identically
		equivalent to ``levy_stable.pdf(y, alpha, beta) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import levy_stable
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		>>> alpha, beta = 0.357, -0.675
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function levy_stable(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		    Standard error of the estimate
		
		See also
		--------
		optimize.curve_fit : Use non-linear least squares to fit a function to data.
		optimize.leastsq : Minimize the sum of squares of a set of equations.
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(12345678)
		>>> x = np.random.random(10)
		>>> y = np.random.random(10)
		>>> slope, intercept, r_value, p_value, std_err = stats.linregress(x,y)
		
		# To get coefficient of determination (r_squared)
		
		>>> print("r-squared:", r_value**2)
		('r-squared:', 0.080402268539028335)
	**/
	static public function linregress(x:Dynamic, ?y:Dynamic):Float;
	/**
		A log gamma continuous random variable.
		
		As an instance of the `rv_continuous` class, `loggamma` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `loggamma` is::
		
		    loggamma.pdf(x, c) = exp(c*x-exp(x)) / gamma(c)
		
		for all ``x, c > 0``.
		
		`loggamma` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``loggamma.pdf(x, c, loc, scale)`` is identically
		equivalent to ``loggamma.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import loggamma
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `logistic` is::
		
		    logistic.pdf(x) = exp(-x) / (1+exp(-x))**2
		
		`logistic` is a special case of `genlogistic` with ``c == 1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``logistic.pdf(x, loc, scale)`` is identically
		equivalent to ``logistic.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import logistic
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `loglaplace` is::
		
		    loglaplace.pdf(x, c) = c / 2 * x**(c-1),   for 0 < x < 1
		                         = c / 2 * x**(-c-1),  for x >= 1
		
		for ``c > 0``.
		
		`loglaplace` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``loglaplace.pdf(x, c, loc, scale)`` is identically
		equivalent to ``loglaplace.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		References
		----------
		T.J. Kozubowski and K. Podgorski, "A log-Laplace growth rate model",
		The Mathematical Scientist, vol. 28, pp. 49-60, 2003.
		
		Examples
		--------
		>>> from scipy.stats import loglaplace
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(s, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, s, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, s, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, s, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, s, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, s, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, s, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, s, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, s, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, s, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(s, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(s, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, s, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(s,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(s, loc=0, scale=1)``
		    Median of the distribution.
		``mean(s, loc=0, scale=1)``
		    Mean of the distribution.
		``var(s, loc=0, scale=1)``
		    Variance of the distribution.
		``std(s, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, s, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `lognorm` is::
		
		    lognorm.pdf(x, s) = 1 / (s*x*sqrt(2*pi)) * exp(-1/2*(log(x)/s)**2)
		
		for ``x > 0``, ``s > 0``.
		
		`lognorm` takes ``s`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``lognorm.pdf(x, s, loc, scale)`` is identically
		equivalent to ``lognorm.pdf(y, s) / scale`` with
		``y = (x - loc) / scale``.
		
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
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(p, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, p, loc=0)``
		    Probability mass function.
		``logpmf(x, p, loc=0)``
		    Log of the probability mass function.
		``cdf(x, p, loc=0)``
		    Cumulative density function.
		``logcdf(x, p, loc=0)``
		    Log of the cumulative density function.
		``sf(x, p, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, p, loc=0)``
		    Log of the survival function.
		``ppf(q, p, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, p, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(p, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(p, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(p,), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(p, loc=0)``
		    Median of the distribution.
		``mean(p, loc=0)``
		    Mean of the distribution.
		``var(p, loc=0)``
		    Variance of the distribution.
		``std(p, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, p, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `logser` is::
		
		    logser.pmf(k) = - p**k / (k*log(1-p))
		
		for ``k >= 1``.
		
		`logser` takes ``p`` as shape parameter.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``logser.pmf(k, p, loc)`` is identically
		equivalent to ``logser.pmf(k - loc, p)``.
		
		Examples
		--------
		>>> from scipy.stats import logser
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		A Lomax (Pareto of the second kind) continuous random variable.
		
		As an instance of the `rv_continuous` class, `lomax` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The Lomax distribution is a special case of the Pareto distribution, with
		(loc=-1.0).
		
		The probability density function for `lomax` is::
		
		    lomax.pdf(x, c) = c / (1+x)**(c+1)
		
		for ``x >= 0``, ``c > 0``.
		
		`lomax` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``lomax.pdf(x, c, loc, scale)`` is identically
		equivalent to ``lomax.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import lomax
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function lomax(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes the Mann-Whitney rank test on samples x and y.
		
		Parameters
		----------
		x, y : array_like
		    Array of samples, should be one-dimensional.
		use_continuity : bool, optional
		        Whether a continuity correction (1/2.) should be taken into
		        account. Default is True.
		
		Returns
		-------
		statistic : float
		    The Mann-Whitney statistics.
		pvalue : float
		    One-sided p-value assuming a asymptotic normal distribution.
		
		Notes
		-----
		Use only when the number of observation in each sample is > 20 and
		you have 2 independent samples of ranks. Mann-Whitney U is
		significant if the u-obtained is LESS THAN or equal to the critical
		value of U.
		
		This test corrects for ties and by default uses a continuity correction.
		The reported p-value is for a one-sided hypothesis, to get the two-sided
		p-value multiply the returned p-value by 2.
	**/
	static public function mannwhitneyu(x:Dynamic, y:Dynamic, ?use_continuity:Dynamic, ?alternative:Dynamic):Float;
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
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		A special case of a `chi` distribution,  with ``df = 3``, ``loc = 0.0``,
		and given ``scale = a``, where ``a`` is the parameter used in the
		Mathworld description [1]_.
		
		The probability density function for `maxwell` is::
		
		    maxwell.pdf(x) = sqrt(2/pi)x**2 * exp(-x**2/2)
		
		for ``x > 0``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``maxwell.pdf(x, loc, scale)`` is identically
		equivalent to ``maxwell.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		References
		----------
		.. [1] http://mathworld.wolfram.com/MaxwellDistribution.html
		
		Examples
		--------
		>>> from scipy.stats import maxwell
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function maxwell(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Mood's median test.
		
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
		lambda_ : float or str, optional.
		    By default, the statistic computed in this test is Pearson's
		    chi-squared statistic.  `lambda_` allows a statistic from the
		    Cressie-Read power divergence family to be used instead.  See
		    `power_divergence` for details.
		    Default is 1 (Pearson's chi-squared statistic).
		
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
		    to recompute the table.
		
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
	static public function median_test(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Float;
	/**
		A Mielke's Beta-Kappa continuous random variable.
		
		As an instance of the `rv_continuous` class, `mielke` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(k, s, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, k, s, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, k, s, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, k, s, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, k, s, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, k, s, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, k, s, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, k, s, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, k, s, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, k, s, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(k, s, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(k, s, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, k, s, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(k, s), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(k, s, loc=0, scale=1)``
		    Median of the distribution.
		``mean(k, s, loc=0, scale=1)``
		    Mean of the distribution.
		``var(k, s, loc=0, scale=1)``
		    Variance of the distribution.
		``std(k, s, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, k, s, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `mielke` is::
		
		    mielke.pdf(x, k, s) = k * x**(k-1) / (1+x**s)**(1+k/s)
		
		for ``x > 0``.
		
		`mielke` takes ``k`` and ``s`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``mielke.pdf(x, k, s, loc, scale)`` is identically
		equivalent to ``mielke.pdf(y, k, s) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import mielke
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		>>> k, s = 10.4, 3.6
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function mielke(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns an array of the modal (most common) value in the passed array.
		
		If there is more than one such value, only the first is returned.
		The bin-count for the modal bins is also returned.
		
		Parameters
		----------
		a : array_like
		    n-dimensional array of which to find mode(s).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
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
		(array([[3, 1, 0, 0]]), array([[1, 1, 1, 1]]))
		
		To get mode of whole array, specify ``axis=None``:
		
		>>> stats.mode(a, axis=None)
		(array([3]), array([3]))
	**/
	static public function mode(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Calculates the nth moment about the mean for a sample.
		
		A moment is a specific quantitative measure of the shape of a set of points.
		It is often used to calculate coefficients of skewness and kurtosis due
		to its close relationship with them.
		
		
		Parameters
		----------
		a : array_like
		   data
		moment : int or array_like of ints, optional
		   order of central moment that is returned. Default is 1.
		axis : int or None, optional
		   Axis along which the central moment is computed. Default is 0.
		   If None, compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		n-th central moment : ndarray or float
		   The appropriate moment along the given axis or over all values if axis
		   is None. The denominator for the moment calculation is the number of
		   observations, no degrees of freedom correction is done.
		
		See also
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
		.. [1] http://eli.thegreenplace.net/2009/03/21/efficient-integer-exponentiation-algorithms
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
		>>> np.random.seed(1234)
		>>> x2 = np.random.randn(2, 45, 6, 7)
		>>> x1 = np.random.randn(2, 30, 6, 7)
		>>> z, p = stats.mood(x1, x2, axis=1)
		>>> p.shape
		(2, 6, 7)
		
		Find the number of points where the difference in scale is not significant:
		
		>>> (p > 0.1).sum()
		74
		
		Perform the test with different scales:
		
		>>> x1 = np.random.randn(2, 30)
		>>> x2 = np.random.randn(2, 35) * 10.0
		>>> stats.mood(x1, x2, axis=1)
		(array([-5.7178125 , -5.25342163]), array([  1.07904114e-08,   1.49299218e-07]))
	**/
	static public function mood(x:Dynamic, y:Dynamic, ?axis:Dynamic):Dynamic;
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
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
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
		'Frozen' distributions for mean, variance, and standard deviation of data.
		
		Parameters
		----------
		data : array_like
		    Input array. Converted to 1-D using ravel.
		    Requires 2 or more data-points.
		
		Returns
		-------
		mdist : "frozen" distribution object
		    Distribution object representing the mean of the data
		vdist : "frozen" distribution object
		    Distribution object representing the variance of the data
		sdist : "frozen" distribution object
		    Distribution object representing the standard deviation of the data
		
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
		standard-deviation from data", http://scholarsarchive.byu.edu/facpub/278,
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
		``rvs(nu, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, nu, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, nu, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, nu, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, nu, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, nu, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, nu, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, nu, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, nu, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, nu, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(nu, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(nu, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, nu, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(nu,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(nu, loc=0, scale=1)``
		    Median of the distribution.
		``mean(nu, loc=0, scale=1)``
		    Mean of the distribution.
		``var(nu, loc=0, scale=1)``
		    Variance of the distribution.
		``std(nu, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, nu, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `nakagami` is::
		
		    nakagami.pdf(x, nu) = 2 * nu**nu / gamma(nu) *
		                          x**(2*nu-1) * exp(-nu*x**2)
		
		for ``x > 0``, ``nu > 0``.
		
		`nakagami` takes ``nu`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``nakagami.pdf(x, nu, loc, scale)`` is identically
		equivalent to ``nakagami.pdf(y, nu) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import nakagami
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function nakagami(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`nanmean` is deprecated!
		scipy.stats.nanmean is deprecated in scipy 0.15.0 in favour of numpy.nanmean.
		
		
		    Compute the mean over the given axis ignoring nans.
		
		    Parameters
		    ----------
		    x : ndarray
		        Input array.
		    axis : int or None, optional
		        Axis along which the mean is computed. Default is 0.
		        If None, compute over the whole array `x`.
		
		    Returns
		    -------
		    m : float
		        The mean of `x`, ignoring nans.
		
		    See Also
		    --------
		    nanstd, nanmedian
		
		    Examples
		    --------
		    >>> from scipy import stats
		    >>> a = np.linspace(0, 4, 3)
		    >>> a
		    array([ 0.,  2.,  4.])
		    >>> a[-1] = np.nan
		    >>> stats.nanmean(a)
		    1.0
		
		    
	**/
	static public function nanmean(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`nanmedian` is deprecated!
		scipy.stats.nanmedian is deprecated in scipy 0.15 in favour of numpy.nanmedian.
		
		
		    Compute the median along the given axis ignoring nan values.
		
		    Parameters
		    ----------
		    x : array_like
		        Input array.
		    axis : int or None, optional
		        Axis along which the median is computed. Default is 0.
		        If None, compute over the whole array `x`.
		
		    Returns
		    -------
		    m : float
		        The median of `x` along `axis`.
		
		    See Also
		    --------
		    nanstd, nanmean, numpy.nanmedian
		
		    Examples
		    --------
		    >>> from scipy import stats
		    >>> a = np.array([0, 3, 1, 5, 5, np.nan])
		    >>> stats.nanmedian(a)
		    array(3.0)
		
		    >>> b = np.array([0, 3, 1, 5, 5, np.nan, 5])
		    >>> stats.nanmedian(b)
		    array(4.0)
		
		    Example with axis:
		
		    >>> c = np.arange(30.).reshape(5,6)
		    >>> idx = np.array([False, False, False, True, False] * 6).reshape(5,6)
		    >>> c[idx] = np.nan
		    >>> c
		    array([[  0.,   1.,   2.,  nan,   4.,   5.],
		           [  6.,   7.,  nan,   9.,  10.,  11.],
		           [ 12.,  nan,  14.,  15.,  16.,  17.],
		           [ nan,  19.,  20.,  21.,  22.,  nan],
		           [ 24.,  25.,  26.,  27.,  nan,  29.]])
		    >>> stats.nanmedian(c, axis=1)
		    array([  2. ,   9. ,  15. ,  20.5,  26. ])
		
		    
	**/
	static public function nanmedian(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`nanstd` is deprecated!
		scipy.stats.nanstd is deprecated in scipy 0.15 in favour of numpy.nanstd.
		Note that numpy.nanstd has a different signature.
		
		
		    Compute the standard deviation over the given axis, ignoring nans.
		
		    Parameters
		    ----------
		    x : array_like
		        Input array.
		    axis : int or None, optional
		        Axis along which the standard deviation is computed. Default is 0.
		        If None, compute over the whole array `x`.
		    bias : bool, optional
		        If True, the biased (normalized by N) definition is used. If False
		        (default), the unbiased definition is used.
		
		    Returns
		    -------
		    s : float
		        The standard deviation.
		
		    See Also
		    --------
		    nanmean, nanmedian
		
		    Examples
		    --------
		    >>> from scipy import stats
		    >>> a = np.arange(10, dtype=float)
		    >>> a[1:3] = np.nan
		    >>> np.std(a)
		    nan
		    >>> stats.nanstd(a)
		    2.9154759474226504
		    >>> stats.nanstd(a.reshape(2, 5), axis=1)
		    array([ 2.0817,  1.5811])
		    >>> stats.nanstd(a.reshape(2, 5), axis=None)
		    2.9154759474226504
		
		    
	**/
	static public function nanstd(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A negative binomial discrete random variable.
		
		As an instance of the `rv_discrete` class, `nbinom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(n, p, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, n, p, loc=0)``
		    Probability mass function.
		``logpmf(x, n, p, loc=0)``
		    Log of the probability mass function.
		``cdf(x, n, p, loc=0)``
		    Cumulative density function.
		``logcdf(x, n, p, loc=0)``
		    Log of the cumulative density function.
		``sf(x, n, p, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, n, p, loc=0)``
		    Log of the survival function.
		``ppf(q, n, p, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, n, p, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(n, p, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(n, p, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(n, p), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(n, p, loc=0)``
		    Median of the distribution.
		``mean(n, p, loc=0)``
		    Mean of the distribution.
		``var(n, p, loc=0)``
		    Variance of the distribution.
		``std(n, p, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, n, p, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `nbinom` is::
		
		     nbinom.pmf(k) = choose(k+n-1, n-1) * p**n * (1-p)**k
		
		for ``k >= 0``.
		
		`nbinom` takes ``n`` and ``p`` as shape parameters.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``nbinom.pmf(k, n, p, loc)`` is identically
		equivalent to ``nbinom.pmf(k - loc, n, p)``.
		
		Examples
		--------
		>>> from scipy.stats import nbinom
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		>>> n, p = 0.4, 0.4
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
	**/
	static public function nbinom(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A non-central F distribution continuous random variable.
		
		As an instance of the `rv_continuous` class, `ncf` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(dfn, dfd, nc, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, dfn, dfd, nc, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, dfn, dfd, nc, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, dfn, dfd, nc, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, dfn, dfd, nc, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, dfn, dfd, nc, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, dfn, dfd, nc, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, dfn, dfd, nc, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, dfn, dfd, nc, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, dfn, dfd, nc, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(dfn, dfd, nc, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(dfn, dfd, nc, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, dfn, dfd, nc, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(dfn, dfd, nc), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(dfn, dfd, nc, loc=0, scale=1)``
		    Median of the distribution.
		``mean(dfn, dfd, nc, loc=0, scale=1)``
		    Mean of the distribution.
		``var(dfn, dfd, nc, loc=0, scale=1)``
		    Variance of the distribution.
		``std(dfn, dfd, nc, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, dfn, dfd, nc, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `ncf` is::
		
		    ncf.pdf(x, df1, df2, nc) = exp(nc/2 + nc*df1*x/(2*(df1*x+df2))) *
		                df1**(df1/2) * df2**(df2/2) * x**(df1/2-1) *
		                (df2+df1*x)**(-(df1+df2)/2) *
		                gamma(df1/2)*gamma(1+df2/2) *
		                L^{v1/2-1}^{v2/2}(-nc*v1*x/(2*(v1*x+v2))) /
		                (B(v1/2, v2/2) * gamma((v1+v2)/2))
		
		for ``df1, df2, nc > 0``.
		
		`ncf` takes ``df1``, ``df2`` and ``nc`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``ncf.pdf(x, dfn, dfd, nc, loc, scale)`` is identically
		equivalent to ``ncf.pdf(y, dfn, dfd, nc) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import ncf
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function ncf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A non-central Student's T continuous random variable.
		
		As an instance of the `rv_continuous` class, `nct` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(df, nc, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, df, nc, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, df, nc, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, df, nc, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, df, nc, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, df, nc, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, df, nc, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, df, nc, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, df, nc, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, df, nc, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(df, nc, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(df, nc, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, df, nc, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(df, nc), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(df, nc, loc=0, scale=1)``
		    Median of the distribution.
		``mean(df, nc, loc=0, scale=1)``
		    Mean of the distribution.
		``var(df, nc, loc=0, scale=1)``
		    Variance of the distribution.
		``std(df, nc, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, df, nc, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `nct` is::
		
		                                        df**(df/2) * gamma(df+1)
		    nct.pdf(x, df, nc) = ----------------------------------------------------
		                         2**df*exp(nc**2/2) * (df+x**2)**(df/2) * gamma(df/2)
		
		for ``df > 0``.
		
		`nct` takes ``df`` and ``nc`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``nct.pdf(x, df, nc, loc, scale)`` is identically
		equivalent to ``nct.pdf(y, df, nc) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import nct
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(df, nc, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, df, nc, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, df, nc, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, df, nc, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, df, nc, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, df, nc, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, df, nc, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, df, nc, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, df, nc, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, df, nc, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(df, nc, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(df, nc, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, df, nc, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(df, nc), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(df, nc, loc=0, scale=1)``
		    Median of the distribution.
		``mean(df, nc, loc=0, scale=1)``
		    Mean of the distribution.
		``var(df, nc, loc=0, scale=1)``
		    Variance of the distribution.
		``std(df, nc, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, df, nc, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `ncx2` is::
		
		    ncx2.pdf(x, df, nc) = exp(-(nc+x)/2) * 1/2 * (x/nc)**((df-2)/4)
		                          * I[(df-2)/2](sqrt(nc*x))
		
		for ``x > 0``.
		
		`ncx2` takes ``df`` and ``nc`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``ncx2.pdf(x, df, nc, loc, scale)`` is identically
		equivalent to ``ncx2.pdf(y, df, nc) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import ncx2
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function ncx2(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A normal continuous random variable.
		
		The location (loc) keyword specifies the mean.
		The scale (scale) keyword specifies the standard deviation.
		
		As an instance of the `rv_continuous` class, `norm` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `norm` is::
		
		    norm.pdf(x) = exp(-x**2/2)/sqrt(2*pi)
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``norm.pdf(x, loc, scale)`` is identically
		equivalent to ``norm.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import norm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function norm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tests whether a sample differs from a normal distribution.
		
		This function tests the null hypothesis that a sample comes
		from a normal distribution.  It is based on D'Agostino and
		Pearson's [1]_, [2]_ test that combines skew and kurtosis to
		produce an omnibus test of normality.
		
		
		Parameters
		----------
		a : array_like
		    The array containing the data to be tested.
		axis : int or None, optional
		    Axis along which to compute test. Default is 0. If None,
		    compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
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
		       moderate and large sample size," Biometrika, 58, 341-348
		
		.. [2] D'Agostino, R. and Pearson, E. S. (1973), "Testing for
		       departures from normality," Biometrika, 60, 613-622
	**/
	static public function normaltest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Computes the O'Brien transform on input data (any number of arrays).
		
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
	/**
		A Pareto continuous random variable.
		
		As an instance of the `rv_continuous` class, `pareto` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(b, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, b, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, b, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, b, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, b, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, b, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, b, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, b, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, b, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, b, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(b, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(b, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, b, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(b,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(b, loc=0, scale=1)``
		    Median of the distribution.
		``mean(b, loc=0, scale=1)``
		    Mean of the distribution.
		``var(b, loc=0, scale=1)``
		    Variance of the distribution.
		``std(b, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, b, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `pareto` is::
		
		    pareto.pdf(x, b) = b / x**(b+1)
		
		for ``x >= 1``, ``b > 0``.
		
		`pareto` takes ``b`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``pareto.pdf(x, b, loc, scale)`` is identically
		equivalent to ``pareto.pdf(y, b) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import pareto
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function pareto(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`pdf_fromgamma` is deprecated!
		scipy.stats.pdf_fromgamma is deprecated in scipy 0.16.0 in favour of statsmodels.distributions.ExpandedNormal.
	**/
	static public function pdf_fromgamma(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A pearson type III continuous random variable.
		
		As an instance of the `rv_continuous` class, `pearson3` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(skew, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, skew, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, skew, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, skew, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, skew, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, skew, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, skew, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, skew, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, skew, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, skew, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(skew, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(skew, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, skew, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(skew,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(skew, loc=0, scale=1)``
		    Median of the distribution.
		``mean(skew, loc=0, scale=1)``
		    Mean of the distribution.
		``var(skew, loc=0, scale=1)``
		    Variance of the distribution.
		``std(skew, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, skew, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `pearson3` is::
		
		    pearson3.pdf(x, skew) = abs(beta) / gamma(alpha) *
		        (beta * (x - zeta))**(alpha - 1) * exp(-beta*(x - zeta))
		
		where::
		
		        beta = 2 / (skew * stddev)
		        alpha = (stddev * beta)**2
		        zeta = loc - alpha / beta
		
		`pearson3` takes ``skew`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``pearson3.pdf(x, skew, loc, scale)`` is identically
		equivalent to ``pearson3.pdf(y, skew) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import pearson3
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		Calculates a Pearson correlation coefficient and the p-value for testing
		non-correlation.
		
		The Pearson correlation coefficient measures the linear relationship
		between two datasets. Strictly speaking, Pearson's correlation requires
		that each dataset be normally distributed, and not necessarily zero-mean.
		Like other correlation coefficients, this one varies between -1 and +1
		with 0 implying no correlation. Correlations of -1 or +1 imply an exact
		linear relationship. Positive correlations imply that as x increases, so
		does y. Negative correlations imply that as x increases, y decreases.
		
		The p-value roughly indicates the probability of an uncorrelated system
		producing datasets that have a Pearson correlation at least as extreme
		as the one computed from these datasets. The p-values are not entirely
		reliable but are probably reasonable for datasets larger than 500 or so.
		
		Parameters
		----------
		x : (N,) array_like
		    Input
		y : (N,) array_like
		    Input
		
		Returns
		-------
		(Pearson's correlation coefficient,
		 2-tailed p-value)
		
		References
		----------
		http://www.statsoft.com/textbook/glosp.html#Pearson%20Correlation
	**/
	static public function pearsonr(x:Dynamic, y:Dynamic):Dynamic;
	/**
		The percentile rank of a score relative to a list of scores.
		
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
		    This optional parameter specifies the interpretation of the
		    resulting score:
		
		    - "rank": Average percentage ranking of score.  In case of
		              multiple matches, average the percentage rankings of
		              all matching scores.
		    - "weak": This kind corresponds to the definition of a cumulative
		              distribution function.  A percentileofscore of 80%
		              means that 80% of values are less than or equal
		              to the provided score.
		    - "strict": Similar to "weak", except that only values that are
		                strictly less than the given score are counted.
		    - "mean": The average of the "weak" and "strict" scores, often used in
		              testing.  See
		
		              http://en.wikipedia.org/wiki/Percentile_rank
		
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
		
		The average between the weak and the strict scores is
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3, kind='mean')
		60.0
	**/
	static public function percentileofscore(a:Dynamic, score:Dynamic, ?kind:Dynamic):Float;
	/**
		A Planck discrete exponential random variable.
		
		As an instance of the `rv_discrete` class, `planck` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(lambda_, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, lambda_, loc=0)``
		    Probability mass function.
		``logpmf(x, lambda_, loc=0)``
		    Log of the probability mass function.
		``cdf(x, lambda_, loc=0)``
		    Cumulative density function.
		``logcdf(x, lambda_, loc=0)``
		    Log of the cumulative density function.
		``sf(x, lambda_, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, lambda_, loc=0)``
		    Log of the survival function.
		``ppf(q, lambda_, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, lambda_, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(lambda_, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(lambda_, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(lambda_,), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(lambda_, loc=0)``
		    Median of the distribution.
		``mean(lambda_, loc=0)``
		    Mean of the distribution.
		``var(lambda_, loc=0)``
		    Variance of the distribution.
		``std(lambda_, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, lambda_, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `planck` is::
		
		    planck.pmf(k) = (1-exp(-lambda_))*exp(-lambda_*k)
		
		for ``k*lambda_ >= 0``.
		
		`planck` takes ``lambda_`` as shape parameter.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``planck.pmf(k, lambda_, loc)`` is identically
		equivalent to ``planck.pmf(k - loc, lambda_)``.
		
		Examples
		--------
		>>> from scipy.stats import planck
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		Calculates a point biserial correlation coefficient and its p-value.
		
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
		    R value
		pvalue : float
		    2-tailed p-value
		
		Notes
		-----
		`pointbiserialr` uses a t-test with ``n-1`` degrees of freedom.
		It is equivalent to `pearsonr.`
		
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
		
		.. [3] http://onlinelibrary.wiley.com/doi/10.1002/9781118445112.stat06227/full
		
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
		``rvs(mu, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, mu, loc=0)``
		    Probability mass function.
		``logpmf(x, mu, loc=0)``
		    Log of the probability mass function.
		``cdf(x, mu, loc=0)``
		    Cumulative density function.
		``logcdf(x, mu, loc=0)``
		    Log of the cumulative density function.
		``sf(x, mu, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, mu, loc=0)``
		    Log of the survival function.
		``ppf(q, mu, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, mu, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(mu, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(mu, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(mu,), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(mu, loc=0)``
		    Median of the distribution.
		``mean(mu, loc=0)``
		    Mean of the distribution.
		``var(mu, loc=0)``
		    Variance of the distribution.
		``std(mu, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, mu, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `poisson` is::
		
		    poisson.pmf(k) = exp(-mu) * mu**k / k!
		
		for ``k >= 0``.
		
		`poisson` takes ``mu`` as shape parameter.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``poisson.pmf(k, mu, loc)`` is identically
		equivalent to ``poisson.pmf(k - loc, mu)``.
		
		Examples
		--------
		>>> from scipy.stats import poisson
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		    `lambda_` gives the power in the Cressie-Read power divergence
		    statistic.  The default is 1.  For convenience, `lambda_` may be
		    assigned one of the following strings, in which case the
		    corresponding numerical value is used::
		
		        String              Value   Description
		        "pearson"             1     Pearson's chi-squared statistic.
		                                    In this case, the function is
		                                    equivalent to `stats.chisquare`.
		        "log-likelihood"      0     Log-likelihood ratio. Also known as
		                                    the G-test [3]_.
		        "freeman-tukey"      -1/2   Freeman-Tukey statistic.
		        "mod-log-likelihood" -1     Modified log-likelihood ratio.
		        "neyman"             -2     Neyman's statistic.
		        "cressie-read"        2/3   The power recommended in [5]_.
		
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
		       Statistics". Chapter 8. http://faculty.vassar.edu/lowry/ch8pt1.html
		.. [2] "Chi-squared test", http://en.wikipedia.org/wiki/Chi-squared_test
		.. [3] "G-test", http://en.wikipedia.org/wiki/G-test
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
		``rvs(a, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `powerlaw` is::
		
		    powerlaw.pdf(x, a) = a * x**(a-1)
		
		for ``0 <= x <= 1``, ``a > 0``.
		
		`powerlaw` takes ``a`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``powerlaw.pdf(x, a, loc, scale)`` is identically
		equivalent to ``powerlaw.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``.
		
		`powerlaw` is a special case of `beta` with ``b == 1``.
		
		Examples
		--------
		>>> from scipy.stats import powerlaw
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(c, s, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, s, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, s, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, s, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, s, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, s, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, s, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, s, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, s, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, s, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, s, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, s, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, s, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c, s), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, s, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, s, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, s, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, s, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, s, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `powerlognorm` is::
		
		    powerlognorm.pdf(x, c, s) = c / (x*s) * phi(log(x)/s) *
		                                            (Phi(-log(x)/s))**(c-1),
		
		where ``phi`` is the normal pdf, and ``Phi`` is the normal cdf,
		and ``x > 0``, ``s, c > 0``.
		
		`powerlognorm` takes ``c`` and ``s`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``powerlognorm.pdf(x, c, s, loc, scale)`` is identically
		equivalent to ``powerlognorm.pdf(y, c, s) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import powerlognorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `powernorm` is::
		
		    powernorm.pdf(x, c) = c * phi(x) * (Phi(-x))**(c-1)
		
		where ``phi`` is the normal pdf, and ``Phi`` is the normal cdf,
		and ``x > 0``, ``c > 0``.
		
		`powernorm` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``powernorm.pdf(x, c, loc, scale)`` is identically
		equivalent to ``powernorm.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import powernorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function powernorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the shape parameter that maximizes the PPCC
		
		The probability plot correlation coefficient (PPCC) plot can be used to
		determine the optimal shape parameter for a one-parameter family of
		distributions.  ppcc_max returns the shape parameter that would maximize the
		probability plot correlation coefficient for the given data to a
		one-parameter family of distributions.
		
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
		
		See also
		--------
		ppcc_plot, probplot, boxcox
		
		Notes
		-----
		The brack keyword serves as a starting point which is useful in corner
		cases. One can use a plot to obtain a rough visual estimate of the location
		for the maximum to start the search near it.
		
		References
		----------
		.. [1] J.J. Filliben, "The Probability Plot Correlation Coefficient Test for
		       Normality", Technometrics, Vol. 17, pp. 111-117, 1975.
		
		.. [2] http://www.itl.nist.gov/div898/handbook/eda/section3/ppccplot.htm
		
		Examples
		--------
		First we generate some random data from a Tukey-Lambda distribution,
		with shape parameter -0.7:
		
		>>> from scipy import stats
		>>> x = stats.tukeylambda.rvs(-0.7, loc=2, scale=0.5, size=10000,
		...                           random_state=1234567) + 1e4
		
		Now we explore this data with a PPCC plot as well as the related
		probability plot and Box-Cox normplot.  A red line is drawn where we
		expect the PPCC value to be maximal (at the shape parameter -0.7 used
		above):
		
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure(figsize=(8, 6))
		>>> ax = fig.add_subplot(111)
		>>> res = stats.ppcc_plot(x, -5, 5, plot=ax)
		
		We calculate the value where the shape should reach its maximum and a red
		line is drawn there. The line should coincide with the highest point in the
		ppcc_plot.
		
		>>> max = stats.ppcc_max(x)
		>>> ax.vlines(max, 0, 1, colors='r', label='Expected shape value')
		
		>>> plt.show()
	**/
	static public function ppcc_max(x:Dynamic, ?brack:Dynamic, ?dist:Dynamic):Float;
	/**
		Calculate and optionally plot probability plot correlation coefficient.
		
		The probability plot correlation coefficient (PPCC) plot can be used to
		determine the optimal shape parameter for a one-parameter family of
		distributions.  It cannot be used for distributions without shape parameters
		(like the normal distribution) or with multiple shape parameters.
		
		By default a Tukey-Lambda distribution (`stats.tukeylambda`) is used. A
		Tukey-Lambda PPCC plot interpolates from long-tailed to short-tailed
		distributions via an approximately normal one, and is therefore particularly
		useful in practice.
		
		Parameters
		----------
		x : array_like
		    Input array.
		a, b: scalar
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
		
		See also
		--------
		ppcc_max, probplot, boxcox_normplot, tukeylambda
		
		References
		----------
		J.J. Filliben, "The Probability Plot Correlation Coefficient Test for
		Normality", Technometrics, Vol. 17, pp. 111-117, 1975.
		
		Examples
		--------
		First we generate some random data from a Tukey-Lambda distribution,
		with shape parameter -0.7:
		
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> np.random.seed(1234567)
		>>> x = stats.tukeylambda.rvs(-0.7, loc=2, scale=0.5, size=10000) + 1e4
		
		Now we explore this data with a PPCC plot as well as the related
		probability plot and Box-Cox normplot.  A red line is drawn where we
		expect the PPCC value to be maximal (at the shape parameter -0.7 used
		above):
		
		>>> fig = plt.figure(figsize=(12, 4))
		>>> ax1 = fig.add_subplot(131)
		>>> ax2 = fig.add_subplot(132)
		>>> ax3 = fig.add_subplot(133)
		>>> res = stats.probplot(x, plot=ax1)
		>>> res = stats.boxcox_normplot(x, -5, 5, plot=ax2)
		>>> res = stats.ppcc_plot(x, -5, 5, plot=ax3)
		>>> ax3.vlines(-0.7, 0, 1, colors='r', label='Expected shape value')
		>>> plt.show()
	**/
	static public function ppcc_plot(x:Dynamic, a:Dynamic, b:Dynamic, ?dist:Dynamic, ?plot:Dynamic, ?N:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
		    If given, plots the quantiles and least squares fit.
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
		>>> np.random.seed(7654321)
		
		A t distribution with small degrees of freedom:
		
		>>> ax1 = plt.subplot(221)
		>>> x = stats.t.rvs(3, size=nsample)
		>>> res = stats.probplot(x, plot=plt)
		
		A t distribution with larger degrees of freedom:
		
		>>> ax2 = plt.subplot(222)
		>>> x = stats.t.rvs(25, size=nsample)
		>>> res = stats.probplot(x, plot=plt)
		
		A mixture of two normal distributions with broadcasting:
		
		>>> ax3 = plt.subplot(223)
		>>> x = stats.norm.rvs(loc=[0,5], scale=[1,1.5],
		...                    size=(nsample//2,2)).ravel()
		>>> res = stats.probplot(x, plot=plt)
		
		A standard normal distribution:
		
		>>> ax4 = plt.subplot(224)
		>>> x = stats.norm.rvs(loc=0, scale=1, size=nsample)
		>>> res = stats.probplot(x, plot=plt)
		
		Produce a new figure with a loggamma distribution, using the ``dist`` and
		``sparams`` keywords:
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> x = stats.loggamma.rvs(c=2.5, size=500)
		>>> res = stats.probplot(x, dist=stats.loggamma, sparams=(2.5,), plot=ax)
		>>> ax.set_title("Probplot for loggamma dist with shape parameter 2.5")
		
		Show the results with Matplotlib:
		
		>>> plt.show()
	**/
	static public function probplot(x:Dynamic, ?sparams:Dynamic, ?dist:Dynamic, ?fit:Dynamic, ?plot:Dynamic):Dynamic;
	/**
		A uniform discrete random variable.
		
		As an instance of the `rv_discrete` class, `randint` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(low, high, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, low, high, loc=0)``
		    Probability mass function.
		``logpmf(x, low, high, loc=0)``
		    Log of the probability mass function.
		``cdf(x, low, high, loc=0)``
		    Cumulative density function.
		``logcdf(x, low, high, loc=0)``
		    Log of the cumulative density function.
		``sf(x, low, high, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, low, high, loc=0)``
		    Log of the survival function.
		``ppf(q, low, high, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, low, high, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(low, high, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(low, high, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(low, high), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(low, high, loc=0)``
		    Median of the distribution.
		``mean(low, high, loc=0)``
		    Mean of the distribution.
		``var(low, high, loc=0)``
		    Variance of the distribution.
		``std(low, high, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, low, high, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `randint` is::
		
		    randint.pmf(k) = 1./(high - low)
		
		for ``k = low, ..., high - 1``.
		
		`randint` takes ``low`` and ``high`` as shape parameters.
		
		Note the difference to the numpy ``random_integers`` which
		returns integers on a *closed* interval ``[low, high]``.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``randint.pmf(k, low, high, loc)`` is identically
		equivalent to ``randint.pmf(k - loc, low, high)``.
		
		Examples
		--------
		>>> from scipy.stats import randint
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
	/**
		rankdata(a, method='average')
		
		Assign ranks to data, dealing with ties appropriately.
		
		Ranks begin at 1.  The `method` argument controls how ranks are assigned
		to equal values.  See [1]_ for further discussion of ranking methods.
		
		Parameters
		----------
		a : array_like
		    The array of values to be ranked.  The array is first flattened.
		method : str, optional
		    The method used to assign ranks to tied elements.
		    The options are 'average', 'min', 'max', 'dense' and 'ordinal'.
		
		    'average':
		        The average of the ranks that would have been assigned to
		        all the tied values is assigned to each value.
		    'min':
		        The minimum of the ranks that would have been assigned to all
		        the tied values is assigned to each value.  (This is also
		        referred to as "competition" ranking.)
		    'max':
		        The maximum of the ranks that would have been assigned to all
		        the tied values is assigned to each value.
		    'dense':
		        Like 'min', but the rank of the next highest element is assigned
		        the rank immediately after those assigned to the tied elements.
		    'ordinal':
		        All values are given a distinct rank, corresponding to the order
		        that the values occur in `a`.
		
		    The default is 'average'.
		
		Returns
		-------
		ranks : ndarray
		     An array of length equal to the size of `a`, containing rank
		     scores.
		
		References
		----------
		.. [1] "Ranking", http://en.wikipedia.org/wiki/Ranking
		
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
	**/
	static public function rankdata(a:Dynamic, ?method:Dynamic):Dynamic;
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
		    The data from the two samples
		
		Returns
		-------
		statistic : float
		    The test statistic under the large-sample approximation that the
		    rank sum statistic is normally distributed
		pvalue : float
		    The two-sided p-value of the test
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/Wilcoxon_rank-sum_test
	**/
	static public function ranksums(x:Dynamic, y:Dynamic):Float;
	/**
		A Rayleigh continuous random variable.
		
		As an instance of the `rv_continuous` class, `rayleigh` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `rayleigh` is::
		
		    rayleigh.pdf(r) = r * exp(-r**2/2)
		
		for ``x >= 0``.
		
		`rayleigh` is a special case of `chi` with ``df == 2``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``rayleigh.pdf(x, loc, scale)`` is identically
		equivalent to ``rayleigh.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import rayleigh
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function rayleigh(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		An R-distributed continuous random variable.
		
		As an instance of the `rv_continuous` class, `rdist` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `rdist` is::
		
		    rdist.pdf(x, c) = (1-x**2)**(c/2-1) / B(1/2, c/2)
		
		for ``-1 <= x <= 1``, ``c > 0``.
		
		`rdist` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``rdist.pdf(x, c, loc, scale)`` is identically
		equivalent to ``rdist.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import rdist
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		>>> c = 0.9
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(mu, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, mu, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, mu, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, mu, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, mu, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, mu, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, mu, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, mu, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, mu, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, mu, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(mu, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(mu, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, mu, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(mu,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(mu, loc=0, scale=1)``
		    Median of the distribution.
		``mean(mu, loc=0, scale=1)``
		    Mean of the distribution.
		``var(mu, loc=0, scale=1)``
		    Variance of the distribution.
		``std(mu, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, mu, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `recipinvgauss` is::
		
		    recipinvgauss.pdf(x, mu) = 1/sqrt(2*pi*x) * exp(-(1-mu*x)**2/(2*x*mu**2))
		
		for ``x >= 0``.
		
		`recipinvgauss` takes ``mu`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``recipinvgauss.pdf(x, mu, loc, scale)`` is identically
		equivalent to ``recipinvgauss.pdf(y, mu) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import recipinvgauss
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function recipinvgauss(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A reciprocal continuous random variable.
		
		As an instance of the `rv_continuous` class, `reciprocal` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(a, b, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, b, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, b, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, b, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, b, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, b, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, b, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, b, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, b, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, b, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, b, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, b, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, b, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, b, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, b, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, b, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, b, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `reciprocal` is::
		
		    reciprocal.pdf(x, a, b) = 1 / (x*log(b/a))
		
		for ``a <= x <= b``, ``a, b > 0``.
		
		`reciprocal` takes ``a`` and ``b`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``reciprocal.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``reciprocal.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import reciprocal
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		>>> a, b = 0.00623, 1.01
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function reciprocal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a relative frequency histogram, using the histogram function.
		
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
		    Lower real limit
		binsize : float
		    Width of each bin.
		extrapoints : int
		    Extra points.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy import stats
		>>> a = np.array([2, 4, 1, 2, 3, 2])
		>>> res = stats.relfreq(a, numbins=4)
		>>> res.frequency
		array([ 0.16666667, 0.5       , 0.16666667,  0.16666667])
		>>> np.sum(res.frequency)  # relative frequencies should add up to 1
		1.0
		
		Create a normal distribution with 1000 random values
		
		>>> rng = np.random.RandomState(seed=12345)
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
		``rvs(b, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, b, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, b, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, b, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, b, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, b, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, b, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, b, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, b, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, b, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(b, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(b, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, b, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(b,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(b, loc=0, scale=1)``
		    Median of the distribution.
		``mean(b, loc=0, scale=1)``
		    Mean of the distribution.
		``var(b, loc=0, scale=1)``
		    Variance of the distribution.
		``std(b, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, b, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `rice` is::
		
		    rice.pdf(x, b) = x * exp(-(x**2+b**2)/2) * I[0](x*b)
		
		for ``x > 0``, ``b > 0``.
		
		`rice` takes ``b`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``rice.pdf(x, b, loc, scale)`` is identically
		equivalent to ``rice.pdf(y, b) / scale`` with
		``y = (x - loc) / scale``.
		
		The Rice distribution describes the length, ``r``, of a 2-D vector
		with components ``(U+u, V+v)``, where ``U, V`` are constant, ``u, v``
		are independent Gaussian random variables with standard deviation
		``s``.  Let ``R = (U**2 + V**2)**0.5``. Then the pdf of ``r`` is
		``rice.pdf(x, R/s, scale=s)``.
		
		Examples
		--------
		>>> from scipy.stats import rice
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function rice(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Calculates the standard error of the mean (or standard error of
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
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		s : ndarray or float
		    The standard error of the mean in the sample(s), along the input axis.
		
		Notes
		-----
		The default value for `ddof` is different to the default (0) used by other
		ddof containing routines, such as np.std nd stats.nanstd.
		
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `semicircular` is::
		
		    semicircular.pdf(x) = 2/pi * sqrt(1-x**2)
		
		for ``-1 <= x <= 1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``semicircular.pdf(x, loc, scale)`` is identically
		equivalent to ``semicircular.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import semicircular
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		a : array_like, optional
		    Array of internal parameters used in the calculation.  If these
		    are not given, they will be computed internally.  If x has length
		    n, then a must have length n/2.
		reta : bool, optional
		    Whether or not to return the internally computed a values.  The
		    default is False.
		
		Returns
		-------
		W : float
		    The test statistic.
		p-value : float
		    The p-value for the hypothesis test.
		a : array_like, optional
		    If `reta` is True, then these are the internally computed "a"
		    values that may be passed into this function on future calls.
		
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
		.. [1] http://www.itl.nist.gov/div898/handbook/prc/section2/prc213.htm
		.. [2] Shapiro, S. S. & Wilk, M.B (1965). An analysis of variance test for
		       normality (complete samples), Biometrika, Vol. 52, pp. 591-611.
		.. [3] Razali, N. M. & Wah, Y. B. (2011) Power comparisons of Shapiro-Wilk,
		       Kolmogorov-Smirnov, Lilliefors and Anderson-Darling tests, Journal of
		       Statistical Modeling and Analytics, Vol. 2, pp. 21-33.
		.. [4] ALGORITHM AS R94 APPL. STATIST. (1995) VOL. 44, NO. 4.
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(12345678)
		>>> x = stats.norm.rvs(loc=5, scale=3, size=100)
		>>> stats.shapiro(x)
		(0.9772805571556091, 0.08144091814756393)
	**/
	static public function shapiro(x:Dynamic, ?a:Dynamic, ?reta:Dynamic):Float;
	/**
		Iterative sigma-clipping of array elements.
		
		The output array contains only those elements of the input array `c`
		that satisfy the conditions ::
		
		    mean(c) - std(c)*low < c < mean(c) + std(c)*high
		
		Starting from the full sample, all elements outside the critical range are
		removed. The iteration continues with a new critical range until no
		elements are outside the range.
		
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
		`signaltonoise` is deprecated!
		scipy.stats.signaltonoise is deprecated in scipy 0.16.0
		
		
		    The signal-to-noise ratio of the input data.
		
		    Returns the signal-to-noise ratio of `a`, here defined as the mean
		    divided by the standard deviation.
		
		    Parameters
		    ----------
		    a : array_like
		        An array_like object containing the sample data.
		    axis : int or None, optional
		        Axis along which to operate. Default is 0. If None, compute over
		        the whole array `a`.
		    ddof : int, optional
		        Degrees of freedom correction for standard deviation. Default is 0.
		
		    Returns
		    -------
		    s2n : ndarray
		        The mean to standard deviation ratio(s) along `axis`, or 0 where the
		        standard deviation is 0.
		
		    
	**/
	static public function signaltonoise(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A  Skellam discrete random variable.
		
		As an instance of the `rv_discrete` class, `skellam` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(mu1, mu2, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, mu1, mu2, loc=0)``
		    Probability mass function.
		``logpmf(x, mu1, mu2, loc=0)``
		    Log of the probability mass function.
		``cdf(x, mu1, mu2, loc=0)``
		    Cumulative density function.
		``logcdf(x, mu1, mu2, loc=0)``
		    Log of the cumulative density function.
		``sf(x, mu1, mu2, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, mu1, mu2, loc=0)``
		    Log of the survival function.
		``ppf(q, mu1, mu2, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, mu1, mu2, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(mu1, mu2, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(mu1, mu2, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(mu1, mu2), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(mu1, mu2, loc=0)``
		    Median of the distribution.
		``mean(mu1, mu2, loc=0)``
		    Mean of the distribution.
		``var(mu1, mu2, loc=0)``
		    Variance of the distribution.
		``std(mu1, mu2, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, mu1, mu2, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		Probability distribution of the difference of two correlated or
		uncorrelated Poisson random variables.
		
		Let k1 and k2 be two Poisson-distributed r.v. with expected values
		lam1 and lam2. Then, ``k1 - k2`` follows a Skellam distribution with
		parameters ``mu1 = lam1 - rho*sqrt(lam1*lam2)`` and
		``mu2 = lam2 - rho*sqrt(lam1*lam2)``, where rho is the correlation
		coefficient between k1 and k2. If the two Poisson-distributed r.v.
		are independent then ``rho = 0``.
		
		Parameters mu1 and mu2 must be strictly positive.
		
		For details see: http://en.wikipedia.org/wiki/Skellam_distribution
		
		`skellam` takes ``mu1`` and ``mu2`` as shape parameters.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``skellam.pmf(k, mu1, mu2, loc)`` is identically
		equivalent to ``skellam.pmf(k - loc, mu1, mu2)``.
		
		Examples
		--------
		>>> from scipy.stats import skellam
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		Computes the skewness of a data set.
		
		For normally distributed data, the skewness should be about 0. A skewness
		value > 0 means that there is more weight in the left tail of the
		distribution. The function `skewtest` can be used to determine if the
		skewness value is close enough to 0, statistically speaking.
		
		Parameters
		----------
		a : ndarray
		    data
		axis : int or None, optional
		    Axis along which skewness is calculated. Default is 0.
		    If None, compute over the whole array `a`.
		bias : bool, optional
		    If False, then the calculations are corrected for statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		skewness : ndarray
		    The skewness of values along an axis, returning 0 where all values are
		    equal.
		
		References
		----------
		
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		   Section 2.2.24.1
	**/
	static public function skew(a:Dynamic, ?axis:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Tests whether the skew is different from the normal distribution.
		
		This function tests the null hypothesis that the skewness of
		the population that the sample was drawn from is the same
		as that of a corresponding normal distribution.
		
		Parameters
		----------
		a : array
		    The data to be tested
		axis : int or None, optional
		   Axis along which statistics are calculated. Default is 0.
		   If None, compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float
		    The computed z-score for this test.
		pvalue : float
		    a 2-sided p-value for the hypothesis test
		
		Notes
		-----
		The sample size must be at least 8.
	**/
	static public function skewtest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Calculates a Spearman rank-order correlation coefficient and the p-value
		to test for non-correlation.
		
		The Spearman correlation is a nonparametric measure of the monotonicity
		of the relationship between two datasets. Unlike the Pearson correlation,
		the Spearman correlation does not assume that both datasets are normally
		distributed. Like other correlation coefficients, this one varies
		between -1 and +1 with 0 implying no correlation. Correlations of -1 or
		+1 imply an exact monotonic relationship. Positive correlations imply that
		as x increases, so does y. Negative correlations imply that as x
		increases, y decreases.
		
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
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		correlation : float or ndarray (2-D square)
		    Spearman correlation matrix or correlation coefficient (if only 2
		    variables are given as parameters. Correlation matrix is square with
		    length equal to total number of variables (columns or rows) in a and b
		    combined.
		pvalue : float
		    The two-sided p-value for a hypothesis test whose null hypothesis is
		    that two sets of data are uncorrelated, has same dimension as rho.
		
		Notes
		-----
		Changes in scipy 0.8.0: rewrite to add tie-handling, and axis.
		
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
		(0.82078268166812329, 0.088587005313543798)
		>>> np.random.seed(1234321)
		>>> x2n = np.random.randn(100, 2)
		>>> y2n = np.random.randn(100, 2)
		>>> stats.spearmanr(x2n)
		(0.059969996999699973, 0.55338590803773591)
		>>> stats.spearmanr(x2n[:,0], x2n[:,1])
		(0.059969996999699973, 0.55338590803773591)
		>>> rho, pval = stats.spearmanr(x2n, y2n)
		>>> rho
		array([[ 1.        ,  0.05997   ,  0.18569457,  0.06258626],
		       [ 0.05997   ,  1.        ,  0.110003  ,  0.02534653],
		       [ 0.18569457,  0.110003  ,  1.        ,  0.03488749],
		       [ 0.06258626,  0.02534653,  0.03488749,  1.        ]])
		>>> pval
		array([[ 0.        ,  0.55338591,  0.06435364,  0.53617935],
		       [ 0.55338591,  0.        ,  0.27592895,  0.80234077],
		       [ 0.06435364,  0.27592895,  0.        ,  0.73039992],
		       [ 0.53617935,  0.80234077,  0.73039992,  0.        ]])
		>>> rho, pval = stats.spearmanr(x2n.T, y2n.T, axis=1)
		>>> rho
		array([[ 1.        ,  0.05997   ,  0.18569457,  0.06258626],
		       [ 0.05997   ,  1.        ,  0.110003  ,  0.02534653],
		       [ 0.18569457,  0.110003  ,  1.        ,  0.03488749],
		       [ 0.06258626,  0.02534653,  0.03488749,  1.        ]])
		>>> stats.spearmanr(x2n, y2n, axis=None)
		(0.10816770419260482, 0.1273562188027364)
		>>> stats.spearmanr(x2n.ravel(), y2n.ravel())
		(0.10816770419260482, 0.1273562188027364)
		
		>>> xint = np.random.randint(10, size=(100, 2))
		>>> stats.spearmanr(xint)
		(0.052760927029710199, 0.60213045837062351)
	**/
	static public function spearmanr(a:Dynamic, ?b:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		`square_of_sums` is deprecated!
		scipy.stats.square_of_sums is deprecated in scipy 0.17.0
	**/
	static public function square_of_sums(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`ss` is deprecated!
		scipy.stats.ss is deprecated in scipy 0.17.0
	**/
	static public function ss(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Student's T continuous random variable.
		
		As an instance of the `rv_continuous` class, `t` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(df, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, df, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, df, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, df, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, df, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, df, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, df, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, df, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, df, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, df, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(df, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(df, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, df, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(df,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(df, loc=0, scale=1)``
		    Median of the distribution.
		``mean(df, loc=0, scale=1)``
		    Mean of the distribution.
		``var(df, loc=0, scale=1)``
		    Variance of the distribution.
		``std(df, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, df, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `t` is::
		
		                                   gamma((df+1)/2)
		    t.pdf(x, df) = ---------------------------------------------------
		                   sqrt(pi*df) * gamma(df/2) * (1+x**2/df)**((df+1)/2)
		
		for ``df > 0``.
		
		`t` takes ``df`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``t.pdf(x, df, loc, scale)`` is identically
		equivalent to ``t.pdf(y, df) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import t
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function t(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
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
	static public function theilslopes(y:Dynamic, ?x:Dynamic, ?alpha:Dynamic):Float;
	/**
		`threshold` is deprecated!
		stats.threshold is deprecated in scipy 0.17.0
		
		
		    Clip array to a given value.
		
		    Similar to numpy.clip(), except that values less than `threshmin` or
		    greater than `threshmax` are replaced by `newval`, instead of by
		    `threshmin` and `threshmax` respectively.
		
		    Parameters
		    ----------
		    a : array_like
		        Data to threshold.
		    threshmin : float, int or None, optional
		        Minimum threshold, defaults to None.
		    threshmax : float, int or None, optional
		        Maximum threshold, defaults to None.
		    newval : float or int, optional
		        Value to put in place of values in `a` outside of bounds.
		        Defaults to 0.
		
		    Returns
		    -------
		    out : ndarray
		        The clipped input array, with values less than `threshmin` or
		        greater than `threshmax` replaced with `newval`.
		
		    Examples
		    --------
		    >>> a = np.array([9, 9, 6, 3, 1, 6, 1, 0, 0, 8])
		    >>> from scipy import stats
		    >>> stats.threshold(a, threshmin=2, threshmax=8, newval=-1)
		    array([-1, -1,  6,  3, -1,  6, -1, -1, -1,  8])
		
		    
	**/
	static public function threshold(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		tiecorrect(rankvals)
		
		Tie correction factor for ties in the Mann-Whitney U and
		Kruskal-Wallis H tests.
		
		Parameters
		----------
		rankvals : array_like
		    A 1-D sequence of ranks.  Typically this will be the array
		    returned by `stats.rankdata`.
		
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
	static public function tiecorrect(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		tmax : float, int or ndarray
		
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
		tmean : float
		
		See also
		--------
		trim_mean : returns mean after trimming a proportion from both tails.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tmean(x)
		9.5
		>>> stats.tmean(x, (3,17))
		10.0
	**/
	static public function tmean(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic):Float;
	/**
		Compute the trimmed minimum
		
		This function finds the miminum value of an array `a` along the
		specified axis, but only considering values greater than a specified
		lower limit.
		
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
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		tmin : float, int or ndarray
		
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
		A triangular continuous random variable.
		
		As an instance of the `rv_continuous` class, `triang` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The triangular distribution can be represented with an up-sloping line from
		``loc`` to ``(loc + c*scale)`` and then downsloping for ``(loc + c*scale)``
		to ``(loc+scale)``.
		
		`triang` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``triang.pdf(x, c, loc, scale)`` is identically
		equivalent to ``triang.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		The standard form is in the range [0, 1] with c the mode.
		The location parameter shifts the start to `loc`.
		The scale parameter changes the width from 1 to `scale`.
		
		Examples
		--------
		>>> from scipy.stats import triang
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function triang(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Slices off a proportion from ONE end of the passed array distribution.
		
		If `proportiontocut` = 0.1, slices off 'leftmost' or 'rightmost'
		10% of scores. The lowest or highest values are trimmed (depending on
		the tail).
		Slices off less if proportion results in a non-integer slice index
		(i.e., conservatively slices off `proportiontocut` ).
		
		Parameters
		----------
		a : array_like
		    Input array
		proportiontocut : float
		    Fraction to cut off of 'left' or 'right' of distribution
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
		    Input array
		proportiontocut : float
		    Fraction to cut off of both tails of the distribution
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
		tmean : compute the trimmed mean ignoring values outside given `limits`.
		
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
		Slices off a proportion of items from both ends of an array.
		
		Slices off the passed proportion of items from both ends of the passed
		array (i.e., with `proportiontocut` = 0.1, slices leftmost 10% **and**
		rightmost 10% of scores). The trimmed values are the lowest and
		highest ones.
		Slices off less if proportion results in a non-integer slice index (i.e.,
		conservatively slices off`proportiontocut`).
		
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
		``rvs(b, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, b, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, b, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, b, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, b, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, b, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, b, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, b, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, b, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, b, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(b, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(b, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, b, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(b,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(b, loc=0, scale=1)``
		    Median of the distribution.
		``mean(b, loc=0, scale=1)``
		    Mean of the distribution.
		``var(b, loc=0, scale=1)``
		    Variance of the distribution.
		``std(b, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, b, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `truncexpon` is::
		
		    truncexpon.pdf(x, b) = exp(-x) / (1-exp(-b))
		
		for ``0 < x < b``.
		
		`truncexpon` takes ``b`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``truncexpon.pdf(x, b, loc, scale)`` is identically
		equivalent to ``truncexpon.pdf(y, b) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import truncexpon
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(a, b, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, a, b, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, a, b, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, a, b, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, a, b, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, b, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, a, b, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, b, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, a, b, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(a, b, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, b, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, a, b, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(a, b), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, b, loc=0, scale=1)``
		    Median of the distribution.
		``mean(a, b, loc=0, scale=1)``
		    Mean of the distribution.
		``var(a, b, loc=0, scale=1)``
		    Variance of the distribution.
		``std(a, b, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, a, b, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The standard form of this distribution is a standard normal truncated to
		the range [a, b] --- notice that a and b are defined over the domain of the
		standard normal.  To convert clip values for a specific mean and standard
		deviation, use::
		
		    a, b = (myclip_a - my_mean) / my_std, (myclip_b - my_mean) / my_std
		
		`truncnorm` takes ``a`` and ``b`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``truncnorm.pdf(x, a, b, loc, scale)`` is identically
		equivalent to ``truncnorm.pdf(y, a, b) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import truncnorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tsem : float
		
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
		Compute the trimmed sample standard deviation
		
		This function finds the sample standard deviation of given values,
		ignoring values outside the given `limits`.
		
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
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tstd : float
		
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
		Calculates the T-test for the mean of ONE group of scores.
		
		This is a two-sided test for the null hypothesis that the expected value
		(mean) of a sample of independent observations `a` is equal to the given
		population mean, `popmean`.
		
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
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float or array
		    t-statistic
		pvalue : float or array
		    two-tailed p-value
		
		Examples
		--------
		>>> from scipy import stats
		
		>>> np.random.seed(7654567)  # fix seed to get the same result
		>>> rvs = stats.norm.rvs(loc=5, scale=10, size=(50,2))
		
		Test if mean of random sample is equal to true mean, and different mean.
		We reject the null hypothesis in the second case and don't reject it in
		the first case.
		
		>>> stats.ttest_1samp(rvs,5.0)
		(array([-0.68014479, -0.04323899]), array([ 0.49961383,  0.96568674]))
		>>> stats.ttest_1samp(rvs,0.0)
		(array([ 2.77025808,  4.11038784]), array([ 0.00789095,  0.00014999]))
		
		Examples using axis and non-scalar dimension for population mean.
		
		>>> stats.ttest_1samp(rvs,[5.0,0.0])
		(array([-0.68014479,  4.11038784]), array([  4.99613833e-01,   1.49986458e-04]))
		>>> stats.ttest_1samp(rvs.T,[5.0,0.0],axis=1)
		(array([-0.68014479,  4.11038784]), array([  4.99613833e-01,   1.49986458e-04]))
		>>> stats.ttest_1samp(rvs,[[5.0],[0.0]])
		(array([[-0.68014479, -0.04323899],
		       [ 2.77025808,  4.11038784]]), array([[  4.99613833e-01,   9.65686743e-01],
		       [  7.89094663e-03,   1.49986458e-04]]))
	**/
	static public function ttest_1samp(a:Dynamic, popmean:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Calculates the T-test for the means of TWO INDEPENDENT samples of scores.
		
		This is a two-sided test for the null hypothesis that 2 independent samples
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
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		
		Returns
		-------
		statistic : float or array
		    The calculated t-statistic.
		pvalue : float or array
		    The two-tailed p-value.
		
		Notes
		-----
		We can use this test, if we observe two independent samples from
		the same or different population, e.g. exam scores of boys and
		girls or of two ethnic groups. The test measures whether the
		average (expected) value differs significantly across samples. If
		we observe a large p-value, for example larger than 0.05 or 0.1,
		then we cannot reject the null hypothesis of identical average scores.
		If the p-value is smaller than the threshold, e.g. 1%, 5% or 10%,
		then we reject the null hypothesis of equal averages.
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/T-test#Independent_two-sample_t-test
		
		.. [2] http://en.wikipedia.org/wiki/Welch%27s_t_test
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(12345678)
		
		Test with sample with identical means:
		
		>>> rvs1 = stats.norm.rvs(loc=5,scale=10,size=500)
		>>> rvs2 = stats.norm.rvs(loc=5,scale=10,size=500)
		>>> stats.ttest_ind(rvs1,rvs2)
		(0.26833823296239279, 0.78849443369564776)
		>>> stats.ttest_ind(rvs1,rvs2, equal_var = False)
		(0.26833823296239279, 0.78849452749500748)
		
		`ttest_ind` underestimates p for unequal variances:
		
		>>> rvs3 = stats.norm.rvs(loc=5, scale=20, size=500)
		>>> stats.ttest_ind(rvs1, rvs3)
		(-0.46580283298287162, 0.64145827413436174)
		>>> stats.ttest_ind(rvs1, rvs3, equal_var = False)
		(-0.46580283298287162, 0.64149646246569292)
		
		When n1 != n2, the equal variance t-statistic is no longer equal to the
		unequal variance t-statistic:
		
		>>> rvs4 = stats.norm.rvs(loc=5, scale=20, size=100)
		>>> stats.ttest_ind(rvs1, rvs4)
		(-0.99882539442782481, 0.3182832709103896)
		>>> stats.ttest_ind(rvs1, rvs4, equal_var = False)
		(-0.69712570584654099, 0.48716927725402048)
		
		T-test with different means, variance, and n:
		
		>>> rvs5 = stats.norm.rvs(loc=8, scale=20, size=100)
		>>> stats.ttest_ind(rvs1, rvs5)
		(-1.4679669854490653, 0.14263895620529152)
		>>> stats.ttest_ind(rvs1, rvs5, equal_var = False)
		(-0.94365973617132992, 0.34744170334794122)
	**/
	static public function ttest_ind(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?equal_var:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		T-test for means of two independent samples from descriptive statistics.
		
		This is a two-sided test for the null hypothesis that 2 independent samples
		have identical average (expected) values.
		
		Parameters
		----------
		mean1 : array_like
		    The mean(s) of sample 1.
		std1 : array_like
		    The standard deviation(s) of sample 1.
		nobs1 : array_like
		    The number(s) of observations of sample 1.
		mean2 : array_like
		    The mean(s) of sample 2
		std2 : array_like
		    The standard deviations(s) of sample 2.
		nobs2 : array_like
		    The number(s) of observations of sample 2.
		equal_var : bool, optional
		    If True (default), perform a standard independent 2 sample test
		    that assumes equal population variances [1]_.
		    If False, perform Welch's t-test, which does not assume equal
		    population variance [2]_.
		
		Returns
		-------
		statistic : float or array
		    The calculated t-statistics
		pvalue : float or array
		    The two-tailed p-value.
		
		See also
		--------
		scipy.stats.ttest_ind
		
		Notes
		-----
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/T-test#Independent_two-sample_t-test
		
		.. [2] http://en.wikipedia.org/wiki/Welch%27s_t_test
	**/
	static public function ttest_ind_from_stats(mean1:Dynamic, std1:Dynamic, nobs1:Dynamic, mean2:Dynamic, std2:Dynamic, nobs2:Dynamic, ?equal_var:Dynamic):Dynamic;
	/**
		Calculates the T-test on TWO RELATED samples of scores, a and b.
		
		This is a two-sided test for the null hypothesis that 2 related or
		repeated samples have identical average (expected) values.
		
		Parameters
		----------
		a, b : array_like
		    The arrays must have the same shape.
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    arrays, `a`, and `b`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float or array
		    t-statistic
		pvalue : float or array
		    two-tailed p-value
		
		Notes
		-----
		Examples for the use are scores of the same set of student in
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
		http://en.wikipedia.org/wiki/T-test#Dependent_t-test
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(12345678) # fix random seed to get same numbers
		
		>>> rvs1 = stats.norm.rvs(loc=5,scale=10,size=500)
		>>> rvs2 = (stats.norm.rvs(loc=5,scale=10,size=500) +
		...         stats.norm.rvs(scale=0.2,size=500))
		>>> stats.ttest_rel(rvs1,rvs2)
		(0.24101764965300962, 0.80964043445811562)
		>>> rvs3 = (stats.norm.rvs(loc=8,scale=10,size=500) +
		...         stats.norm.rvs(scale=0.2,size=500))
		>>> stats.ttest_rel(rvs1,rvs3)
		(-3.9995108708727933, 7.3082402191726459e-005)
	**/
	static public function ttest_rel(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		A Tukey-Lamdba continuous random variable.
		
		As an instance of the `rv_continuous` class, `tukeylambda` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(lam, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, lam, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, lam, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, lam, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, lam, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, lam, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, lam, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, lam, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, lam, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, lam, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(lam, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(lam, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, lam, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(lam,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(lam, loc=0, scale=1)``
		    Median of the distribution.
		``mean(lam, loc=0, scale=1)``
		    Mean of the distribution.
		``var(lam, loc=0, scale=1)``
		    Variance of the distribution.
		``std(lam, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, lam, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		A flexible distribution, able to represent and interpolate between the
		following distributions:
		
		    - Cauchy                (lam=-1)
		    - logistic              (lam=0.0)
		    - approx Normal         (lam=0.14)
		    - u-shape               (lam = 0.5)
		    - uniform from -1 to 1  (lam = 1)
		
		`tukeylambda` takes ``lam`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``tukeylambda.pdf(x, lam, loc, scale)`` is identically
		equivalent to ``tukeylambda.pdf(y, lam) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import tukeylambda
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function tukeylambda(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		
		This distribution is constant between `loc` and ``loc + scale``.
		
		As an instance of the `rv_continuous` class, `uniform` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Examples
		--------
		>>> from scipy.stats import uniform
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function uniform(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		variation : ndarray
		    The calculated variation along the requested axis.
		
		References
		----------
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
	**/
	static public function variation(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		A Von Mises continuous random variable.
		
		As an instance of the `rv_continuous` class, `vonmises` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(kappa, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, kappa, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, kappa, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, kappa, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, kappa, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, kappa, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, kappa, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, kappa, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, kappa, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, kappa, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(kappa, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(kappa, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, kappa, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(kappa,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(kappa, loc=0, scale=1)``
		    Median of the distribution.
		``mean(kappa, loc=0, scale=1)``
		    Mean of the distribution.
		``var(kappa, loc=0, scale=1)``
		    Variance of the distribution.
		``std(kappa, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, kappa, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		If `x` is not in range or `loc` is not in range it assumes they are angles
		and converts them to [-pi, pi] equivalents.
		
		The probability density function for `vonmises` is::
		
		    vonmises.pdf(x, kappa) = exp(kappa * cos(x)) / (2*pi*I[0](kappa))
		
		for ``-pi <= x <= pi``, ``kappa > 0``.
		
		`vonmises` takes ``kappa`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``vonmises.pdf(x, kappa, loc, scale)`` is identically
		equivalent to ``vonmises.pdf(y, kappa) / scale`` with
		``y = (x - loc) / scale``.
		
		See Also
		--------
		vonmises_line : The same distribution, defined on a [-pi, pi] segment
		                of the real line.
		
		Examples
		--------
		>>> from scipy.stats import vonmises
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(kappa, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, kappa, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, kappa, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, kappa, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, kappa, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, kappa, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, kappa, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, kappa, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, kappa, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, kappa, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(kappa, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(kappa, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, kappa, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(kappa,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(kappa, loc=0, scale=1)``
		    Median of the distribution.
		``mean(kappa, loc=0, scale=1)``
		    Mean of the distribution.
		``var(kappa, loc=0, scale=1)``
		    Variance of the distribution.
		``std(kappa, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, kappa, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		If `x` is not in range or `loc` is not in range it assumes they are angles
		and converts them to [-pi, pi] equivalents.
		
		The probability density function for `vonmises` is::
		
		    vonmises.pdf(x, kappa) = exp(kappa * cos(x)) / (2*pi*I[0](kappa))
		
		for ``-pi <= x <= pi``, ``kappa > 0``.
		
		`vonmises` takes ``kappa`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``vonmises_line.pdf(x, kappa, loc, scale)`` is identically
		equivalent to ``vonmises_line.pdf(y, kappa) / scale`` with
		``y = (x - loc) / scale``.
		
		See Also
		--------
		vonmises_line : The same distribution, defined on a [-pi, pi] segment
		                of the real line.
		
		Examples
		--------
		>>> from scipy.stats import vonmises_line
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(loc=0, scale=1)``
		    Median of the distribution.
		``mean(loc=0, scale=1)``
		    Mean of the distribution.
		``var(loc=0, scale=1)``
		    Variance of the distribution.
		``std(loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `wald` is::
		
		    wald.pdf(x) = 1/sqrt(2*pi*x**3) * exp(-(x-1)**2/(2*x))
		
		for ``x > 0``.
		
		`wald` is a special case of `invgauss` with ``mu == 1``.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``wald.pdf(x, loc, scale)`` is identically
		equivalent to ``wald.pdf(y) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import wald
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function wald(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Frechet left (or Weibull maximum) continuous random variable.
		
		As an instance of the `rv_continuous` class, `weibull_max` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		weibull_max : The same distribution as `frechet_l`.
		frechet_r, weibull_min
		
		Notes
		-----
		The probability density function for `frechet_l` is::
		
		    frechet_l.pdf(x, c) = c * (-x)**(c-1) * exp(-(-x)**c)
		
		for ``x < 0``, ``c > 0``.
		
		`frechet_l` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``weibull_max.pdf(x, c, loc, scale)`` is identically
		equivalent to ``weibull_max.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import weibull_max
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function weibull_max(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Frechet right (or Weibull minimum) continuous random variable.
		
		As an instance of the `rv_continuous` class, `weibull_min` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		See Also
		--------
		weibull_min : The same distribution as `frechet_r`.
		frechet_l, weibull_max
		
		Notes
		-----
		The probability density function for `frechet_r` is::
		
		    frechet_r.pdf(x, c) = c * x**(c-1) * exp(-x**c)
		
		for ``x > 0``, ``c > 0``.
		
		`frechet_r` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``weibull_min.pdf(x, c, loc, scale)`` is identically
		equivalent to ``weibull_min.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import weibull_min
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function weibull_min(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the Wilcoxon signed-rank test.
		
		The Wilcoxon signed-rank test tests the null hypothesis that two
		related paired samples come from the same distribution. In particular,
		it tests whether the distribution of the differences x - y is symmetric
		about zero. It is a non-parametric version of the paired T-test.
		
		Parameters
		----------
		x : array_like
		    The first set of measurements.
		y : array_like, optional
		    The second set of measurements.  If `y` is not given, then the `x`
		    array is considered to be the differences between the two sets of
		    measurements.
		zero_method : string, {"pratt", "wilcox", "zsplit"}, optional
		    "pratt":
		        Pratt treatment: includes zero-differences in the ranking process
		        (more conservative)
		    "wilcox":
		        Wilcox treatment: discards all zero-differences
		    "zsplit":
		        Zero rank split: just like Pratt, but spliting the zero rank
		        between positive and negative ones
		correction : bool, optional
		    If True, apply continuity correction by adjusting the Wilcoxon rank
		    statistic by 0.5 towards the mean value when computing the
		    z-statistic.  Default is False.
		
		Returns
		-------
		statistic : float
		    The sum of the ranks of the differences above or below zero, whichever
		    is smaller.
		pvalue : float
		    The two-sided p-value for the test.
		
		Notes
		-----
		Because the normal approximation is used for the calculations, the
		samples used should be large.  A typical rule is to require that
		n > 20.
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/Wilcoxon_signed-rank_test
	**/
	static public function wilcoxon(x:Dynamic, ?y:Dynamic, ?zero_method:Dynamic, ?correction:Dynamic):Float;
	/**
		A Wishart random variable.
		
		The `df` keyword specifies the degrees of freedom. The `scale` keyword
		specifies the scale matrix, which must be symmetric and positive definite.
		In this context, the scale matrix is often interpreted in terms of a
		multivariate normal precision matrix (the inverse of the covariance
		matrix).
		
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
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
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
		``rvs(c, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, c, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, c, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, c, loc=0, scale=1)``
		    Cumulative density function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative density function.
		``sf(x, c, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, c, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, c, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, c, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, c, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(c, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(c, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, c, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(c,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(c, loc=0, scale=1)``
		    Median of the distribution.
		``mean(c, loc=0, scale=1)``
		    Mean of the distribution.
		``var(c, loc=0, scale=1)``
		    Variance of the distribution.
		``std(c, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, c, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `wrapcauchy` is::
		
		    wrapcauchy.pdf(x, c) = (1-c**2) / (2*pi*(1+c**2-2*c*cos(x)))
		
		for ``0 <= x <= 2*pi``, ``0 < c < 1``.
		
		`wrapcauchy` takes ``c`` as a shape parameter.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``wrapcauchy.pdf(x, c, loc, scale)`` is identically
		equivalent to ``wrapcauchy.pdf(y, c) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import wrapcauchy
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function wrapcauchy(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Zipf discrete random variable.
		
		As an instance of the `rv_discrete` class, `zipf` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(a, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(x, a, loc=0)``
		    Probability mass function.
		``logpmf(x, a, loc=0)``
		    Log of the probability mass function.
		``cdf(x, a, loc=0)``
		    Cumulative density function.
		``logcdf(x, a, loc=0)``
		    Log of the cumulative density function.
		``sf(x, a, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, a, loc=0)``
		    Log of the survival function.
		``ppf(q, a, loc=0)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, a, loc=0)``
		    Inverse survival function (inverse of ``sf``).
		``stats(a, loc=0, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(a, loc=0)``
		    (Differential) entropy of the RV.
		``expect(func, args=(a,), loc=0, lb=None, ub=None, conditional=False)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(a, loc=0)``
		    Median of the distribution.
		``mean(a, loc=0)``
		    Mean of the distribution.
		``var(a, loc=0)``
		    Variance of the distribution.
		``std(a, loc=0)``
		    Standard deviation of the distribution.
		``interval(alpha, a, loc=0)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `zipf` is::
		
		    zipf.pmf(k, a) = 1/(zeta(a) * k**a)
		
		for ``k >= 1``.
		
		`zipf` takes ``a`` as shape parameter.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``zipf.pmf(k, a, loc)`` is identically
		equivalent to ``zipf.pmf(k - loc, a)``.
		
		Examples
		--------
		>>> from scipy.stats import zipf
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
	**/
	static public function zipf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculates the relative z-scores.
		
		Returns an array of z-scores, i.e., scores that are standardized to zero
		mean and unit variance, where mean and variance are calculated from the
		comparison array.
		
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
		matrices and masked arrays (it uses `asanyarray` instead of `asarray`
		for parameters).
		
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
		Calculates the z score of each value in the sample, relative to the sample
		mean and standard deviation.
		
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
		    The z-scores, standardized by mean and standard deviation of input
		    array `a`.
		
		Notes
		-----
		This function preserves ndarray subclasses, and works also with
		matrices and masked arrays (it uses `asanyarray` instead of `asarray`
		for parameters).
		
		Examples
		--------
		>>> a = np.array([ 0.7972,  0.0767,  0.4383,  0.7866,  0.8091,  0.1954,
		...                0.6307, 0.6599,  0.1065,  0.0508])
		>>> from scipy import stats
		>>> stats.zscore(a)
		array([ 1.1273, -1.247 , -0.0552,  1.0923,  1.1664, -0.8559,  0.5786,
		        0.6748, -1.1488, -1.3324])
		
		Computing along a specified axis, using n-1 degrees of freedom (``ddof=1``)
		to calculate the standard deviation:
		
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