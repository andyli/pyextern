/* This file is generated, do not edit! */
package scipy.stats;
@:pythonImport("scipy.stats.mstats_extras") extern class Mstats_extras {
	static public var __all__ : Dynamic;
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
		    Survival function (``1 - cdf`` --- sometimes more accurate).
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
		``expect(func, a, b, loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
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
		
		\  
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
	static public function beta(args:Dynamic, kwds:Dynamic):Dynamic;
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
		    Survival function (``1 - cdf`` --- sometimes more accurate).
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
		``expect(func, n, p, loc=0, lb=None, ub=None, conditional=False)``
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
	static public function binom(args:Dynamic, kwds:Dynamic):Dynamic;
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
	static public var division : Dynamic;
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
		median_cihs :
		    Alpha level confidence interval.
	**/
	static public function median_cihs(data:Dynamic, ?alpha:Dynamic, ?axis:Dynamic):Dynamic;
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
		    Survival function (``1 - cdf`` --- sometimes more accurate).
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
		``expect(func, loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
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
		
		\  
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
	static public function norm(args:Dynamic, kwds:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
		    Survival function (``1 - cdf`` --- sometimes more accurate).
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
		``expect(func, df, loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
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
		
		\  
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
	static public function t(args:Dynamic, kwds:Dynamic):Dynamic;
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
}