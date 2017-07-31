/* This file is generated, do not edit! */
package scipy.stats.distributions;
@:pythonImport("scipy.stats.distributions") extern class Distributions_Module {
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
		    Cumulative distribution function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		Argus distribution
		
		As an instance of the `rv_continuous` class, `argus` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(chi, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, chi, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, chi, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, chi, loc=0, scale=1)``
		    Cumulative distribution function.
		``logcdf(x, chi, loc=0, scale=1)``
		    Log of the cumulative distribution function.
		``sf(x, chi, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, chi, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, chi, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, chi, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, chi, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(chi, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(chi, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, chi, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(chi,), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(chi, loc=0, scale=1)``
		    Median of the distribution.
		``mean(chi, loc=0, scale=1)``
		    Mean of the distribution.
		``var(chi, loc=0, scale=1)``
		    Variance of the distribution.
		``std(chi, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, chi, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for `argus` is::
		
		    argus.pdf(x, chi) = chi**3 / (sqrt(2*pi) * Psi(chi)) * x * sqrt(1-x**2) * exp(- 0.5 * chi**2 * (1 - x**2))
		
		    where:
		             Psi(chi) = Phi(chi) - chi * phi(chi) - 1/2
		             with Phi and phi being the CDF and PDF of a standard normal distribution, respectively.
		
		`argus` takes ``chi`` as shape a parameter.
		
		References
		----------
		
		.. [1] "ARGUS distribution",
		       https://en.wikipedia.org/wiki/ARGUS_distribution
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``argus.pdf(x, chi, loc, scale)`` is identically
		equivalent to ``argus.pdf(y, chi) / scale`` with
		``y = (x - loc) / scale``.
		
		.. versionadded:: 0.19.0
		
		Examples
		--------
		>>> from scipy.stats import argus
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function argus(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Bernoulli discrete random variable.
		
		As an instance of the `rv_discrete` class, `bernoulli` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(p, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(k, p, loc=0)``
		    Probability mass function.
		``logpmf(k, p, loc=0)``
		    Log of the probability mass function.
		``cdf(k, p, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, p, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, p, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, p, loc=0)``
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
		    Cumulative distribution function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		A binomial discrete random variable.
		
		As an instance of the `rv_discrete` class, `binom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(n, p, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(k, n, p, loc=0)``
		    Probability mass function.
		``logpmf(k, n, p, loc=0)``
		    Log of the probability mass function.
		``cdf(k, n, p, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, n, p, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, n, p, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, n, p, loc=0)``
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
		A Boltzmann (Truncated Discrete Exponential) random variable.
		
		As an instance of the `rv_discrete` class, `boltzmann` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(lambda_, N, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(k, lambda_, N, loc=0)``
		    Probability mass function.
		``logpmf(k, lambda_, N, loc=0)``
		    Log of the probability mass function.
		``cdf(k, lambda_, N, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, lambda_, N, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, lambda_, N, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, lambda_, N, loc=0)``
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, d, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		fisk : a special case of either `burr` or ``burr12`` with ``d = 1``
		burr12 : Burr Type XII distribution
		
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
		A Burr (Type XII) continuous random variable.
		
		As an instance of the `rv_continuous` class, `burr12` object inherits from it
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
		    Cumulative distribution function.
		``logcdf(x, c, d, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		fisk : a special case of either `burr` or ``burr12`` with ``d = 1``
		burr : Burr Type III distribution
		
		Notes
		-----
		The probability density function for `burr` is::
		
		    burr12.pdf(x, c, d) = c * d * x**(c-1) * (1+x**(c))**(-d-1)
		
		for ``x > 0``.
		
		`burr12` takes ``c`` and ``d`` as shape parameters.
		
		This is the PDF corresponding to the twelfth CDF given in Burr's list;
		specifically, it is equation (20) in Burr's paper [1]_.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``burr12.pdf(x, c, d, loc, scale)`` is identically
		equivalent to ``burr12.pdf(y, c, d) / scale`` with
		``y = (x - loc) / scale``.
		
		The Burr type 12 distribution is also sometimes referred to as
		the Singh-Maddala distribution from NIST [2]_.
		
		References
		----------
		.. [1] Burr, I. W. "Cumulative frequency functions", Annals of
		   Mathematical Statistics, 13(2), pp 215-232 (1942).
		
		.. [2] http://www.itl.nist.gov/div898/software/dataplot/refman2/auxillar/b12pdf.htm
		
		Examples
		--------
		>>> from scipy.stats import burr12
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, loc=0, scale=1)``
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, df, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, df, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		``pmf(k, a, loc=0)``
		    Probability mass function.
		``logpmf(k, a, loc=0)``
		    Log of the probability mass function.
		``cdf(k, a, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, a, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, a, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, a, loc=0)``
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, K, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		
		    exponnorm.pdf(x, K) =
		        1/(2*K) exp(1/(2 * K**2)) exp(-x / K) * erfc-(x - 1/K) / sqrt(2))
		
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
		    Cumulative distribution function.
		``logcdf(x, b, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, dfn, dfd, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, b, c, z, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, b, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		
		for ``x >= 0``, ``a > 0``, and ``c != 0``.
		
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		
		    genhalflogistic.pdf(x, c) =
		        2 * (1-c*x)**(1/c-1) / (1+(1-c*x)**(1/c))**2
		
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, beta, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		``pmf(k, p, loc=0)``
		    Probability mass function.
		``logpmf(k, p, loc=0)``
		    Log of the probability mass function.
		``cdf(k, p, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, p, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, p, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, p, loc=0)``
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, beta, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		``rvs(M, n, N, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(k, M, n, N, loc=0)``
		    Probability mass function.
		``logpmf(k, M, n, N, loc=0)``
		    Log of the probability mass function.
		``cdf(k, M, n, N, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, M, n, N, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, M, n, N, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, M, n, N, loc=0)``
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
		The symbols used to denote the shape parameters (`M`, `n`, and `N`) are not
		universally accepted.  See the Examples for a clarification of the
		definitions used here.
		
		The probability mass function is defined as,
		
		.. math:: p(k, M, n, N) = \frac{\binom{n}{k} \binom{M - n}{N - k}}{\binom{M}{N}}
		
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, mu, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		
		When `mu` is too small, evaluating the cumulative distribution function will be
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		Kappa 3 parameter distribution.
		
		As an instance of the `rv_continuous` class, `kappa3` object inherits from it
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
		    Cumulative distribution function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		The probability density function for `kappa` is::
		
		    kappa3.pdf(x, a) =
		        a*[a + x**a]**(-(a + 1)/a),     for ``x > 0``
		        0.0,                            for ``x <= 0``
		
		`kappa3` takes ``a`` as a shape parameter and ``a > 0``.
		
		References
		----------
		P.W. Mielke and E.S. Johnson, "Three-Parameter Kappa Distribution Maximum
		Likelihood and Likelihood Ratio Tests", Methods in Weather Research,
		701-707, (September, 1973),
		http://docs.lib.noaa.gov/rescue/mwr/101/mwr-101-09-0701.pdf
		
		B. Kumphon, "Maximum Entropy and Maximum Likelihood Estimation for the
		Three-Parameter Kappa Distribution", Open Journal of Statistics, vol 2,
		415-419 (2012)
		http://file.scirp.org/pdf/OJS20120400011_95789012.pdf
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``kappa3.pdf(x, a, loc, scale)`` is identically
		equivalent to ``kappa3.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import kappa3
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
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
		``rvs(h, k, loc=0, scale=1, size=1, random_state=None)``
		    Random variates.
		``pdf(x, h, k, loc=0, scale=1)``
		    Probability density function.
		``logpdf(x, h, k, loc=0, scale=1)``
		    Log of the probability density function.
		``cdf(x, h, k, loc=0, scale=1)``
		    Cumulative distribution function.
		``logcdf(x, h, k, loc=0, scale=1)``
		    Log of the cumulative distribution function.
		``sf(x, h, k, loc=0, scale=1)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(x, h, k, loc=0, scale=1)``
		    Log of the survival function.
		``ppf(q, h, k, loc=0, scale=1)``
		    Percent point function (inverse of ``cdf`` --- percentiles).
		``isf(q, h, k, loc=0, scale=1)``
		    Inverse survival function (inverse of ``sf``).
		``moment(n, h, k, loc=0, scale=1)``
		    Non-central moment of order n
		``stats(h, k, loc=0, scale=1, moments='mv')``
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		``entropy(h, k, loc=0, scale=1)``
		    (Differential) entropy of the RV.
		``fit(data, h, k, loc=0, scale=1)``
		    Parameter estimates for generic data.
		``expect(func, args=(h, k), loc=0, scale=1, lb=None, ub=None, conditional=False, **kwds)``
		    Expected value of a function (of one argument) with respect to the distribution.
		``median(h, k, loc=0, scale=1)``
		    Median of the distribution.
		``mean(h, k, loc=0, scale=1)``
		    Mean of the distribution.
		``var(h, k, loc=0, scale=1)``
		    Variance of the distribution.
		``std(h, k, loc=0, scale=1)``
		    Standard deviation of the distribution.
		``interval(alpha, h, k, loc=0, scale=1)``
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability density function for kappa4 is::
		
		    kappa4.pdf(x, h, k) = (1.0 - k*x)**(1.0/k - 1.0)*
		                          (1.0 - h*(1.0 - k*x)**(1.0/k))**(1.0/h-1)
		
		if ``h`` and ``k`` are not equal to 0.
		
		If ``h`` or ``k`` are zero then the pdf can be simplified:
		
		h = 0 and k != 0::
		
		    kappa4.pdf(x, h, k) = (1.0 - k*x)**(1.0/k - 1.0)*
		                          exp(-(1.0 - k*x)**(1.0/k))
		
		h != 0 and k = 0::
		
		    kappa4.pdf(x, h, k) = exp(-x)*(1.0 - h*exp(-x))**(1.0/h - 1.0)
		
		h = 0 and k = 0::
		
		    kappa4.pdf(x, h, k) = exp(-x)*exp(-exp(-x))
		
		kappa4 takes ``h`` and ``k`` as shape parameters.
		
		The kappa4 distribution returns other distributions when certain
		``h`` and ``k`` values are used.
		
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
		    http://www.mathwave.com/help/easyfit/html/analyses/distributions/gen_logistic.html
		(2) This distribution is currently not in scipy.
		
		References
		----------
		J.C. Finney, "Optimization of a Skewed Logistic Distribution With Respect
		to the Kolmogorov-Smirnov Test", A Dissertation Submitted to the Graduate
		Faculty of the Louisiana State University and Agricultural and Mechanical
		College, (August, 2004),
		http://etd.lsu.edu/docs/available/etd-05182004-144851/unrestricted/Finney_dis.pdf
		
		J.R.M. Hosking, "The four-parameter kappa distribution". IBM J. Res.
		Develop. 38 (3), 25 1-258 (1994).
		
		B. Kumphon, A. Kaew-Man, P. Seenoi, "A Rainfall Distribution for the Lampao
		Site in the Chi River Basin, Thailand", Journal of Water Resource and
		Protection, vol. 4, 866-869, (2012).
		http://file.scirp.org/pdf/JWARP20121000009_14676002.pdf
		
		C. Winchester, "On Estimation of the Four-Parameter Kappa Distribution", A
		Thesis Submitted to Dalhousie University, Halifax, Nova Scotia, (March
		2000).
		http://www.nlc-bnc.ca/obj/s4/f2/dsk2/ftp01/MQ57336.pdf
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``kappa4.pdf(x, h, k, loc, scale)`` is identically
		equivalent to ``kappa4.pdf(y, h, k) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import kappa4
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function kappa4(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		    Cumulative distribution function.
		``logcdf(x, n, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, alpha, beta, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, s, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		``pmf(k, p, loc=0)``
		    Probability mass function.
		``logpmf(k, p, loc=0)``
		    Log of the probability mass function.
		``cdf(k, p, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, p, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, p, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, p, loc=0)``
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, k, s, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, nu, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		A negative binomial discrete random variable.
		
		As an instance of the `rv_discrete` class, `nbinom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(n, p, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(k, n, p, loc=0)``
		    Probability mass function.
		``logpmf(k, n, p, loc=0)``
		    Log of the probability mass function.
		``cdf(k, n, p, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, n, p, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, n, p, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, n, p, loc=0)``
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
		Negative binomial distribution describes a sequence of i.i.d. Bernoulli 
		trials, repeated until a predefined, non-random number of successes occurs.
		
		The probability mass function of the number of failures for `nbinom` is::
		
		   nbinom.pmf(k) = choose(k+n-1, n-1) * p**n * (1-p)**k
		
		for ``k >= 0``.
		
		`nbinom` takes ``n`` and ``p`` as shape parameters where n is the number of
		successes, whereas p is the probability of a single success.
		
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
		    Cumulative distribution function.
		``logcdf(x, dfn, dfd, nc, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, df, nc, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, df, nc, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		
		The survival function, ``norm.sf``, is also referred to as the
		Q-function in some contexts (see, e.g.,
		`Wikipedia's <https://en.wikipedia.org/wiki/Q-function>`_ definition).
		
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
		    Cumulative distribution function.
		``logcdf(x, b, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, skew, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		A Planck discrete exponential random variable.
		
		As an instance of the `rv_discrete` class, `planck` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(lambda_, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(k, lambda_, loc=0)``
		    Probability mass function.
		``logpmf(k, lambda_, loc=0)``
		    Log of the probability mass function.
		``cdf(k, lambda_, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, lambda_, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, lambda_, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, lambda_, loc=0)``
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
		A Poisson discrete random variable.
		
		As an instance of the `rv_discrete` class, `poisson` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(mu, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(k, mu, loc=0)``
		    Probability mass function.
		``logpmf(k, mu, loc=0)``
		    Log of the probability mass function.
		``cdf(k, mu, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, mu, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, mu, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, mu, loc=0)``
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
		    Cumulative distribution function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, s, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
	static public var print_function : Dynamic;
	/**
		A uniform discrete random variable.
		
		As an instance of the `rv_discrete` class, `randint` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(low, high, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(k, low, high, loc=0)``
		    Probability mass function.
		``logpmf(k, low, high, loc=0)``
		    Log of the probability mass function.
		``cdf(k, low, high, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, low, high, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, low, high, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, low, high, loc=0)``
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, mu, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, b, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		A  Skellam discrete random variable.
		
		As an instance of the `rv_discrete` class, `skellam` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		``rvs(mu1, mu2, loc=0, size=1, random_state=None)``
		    Random variates.
		``pmf(k, mu1, mu2, loc=0)``
		    Probability mass function.
		``logpmf(k, mu1, mu2, loc=0)``
		    Log of the probability mass function.
		``cdf(k, mu1, mu2, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, mu1, mu2, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, mu1, mu2, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, mu1, mu2, loc=0)``
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
		A skew-normal random variable.
		
		As an instance of the `rv_continuous` class, `skewnorm` object inherits from it
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
		    Cumulative distribution function.
		``logcdf(x, a, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		The pdf is::
		
		    skewnorm.pdf(x, a) = 2*norm.pdf(x)*norm.cdf(ax)
		
		`skewnorm` takes ``a`` as a skewness parameter
		When a=0 the distribution is identical to a normal distribution.
		rvs implements the method of [1]_.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``skewnorm.pdf(x, a, loc, scale)`` is identically
		equivalent to ``skewnorm.pdf(y, a) / scale`` with
		``y = (x - loc) / scale``.
		
		Examples
		--------
		>>> from scipy.stats import skewnorm
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
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
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		
		
		References
		----------
		
		.. [1] A. Azzalini and A. Capitanio (1999). Statistical applications of the
		    multivariate skew-normal distribution. J. Roy. Statist. Soc., B 61, 579-602.
		    http://azzalini.stat.unipd.it/SN/faq-r.html
	**/
	static public function skewnorm(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		    Cumulative distribution function.
		``logcdf(x, df, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		A trapezoidal continuous random variable.
		
		As an instance of the `rv_continuous` class, `trapz` object inherits from it
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
		    Cumulative distribution function.
		``logcdf(x, c, d, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		
		Notes
		-----
		The trapezoidal distribution can be represented with an up-sloping line
		from ``loc`` to ``(loc + c*scale)``, then constant to ``(loc + d*scale)``
		and then downsloping from ``(loc + d*scale)`` to ``(loc+scale)``.
		
		`trapz` takes ``c`` and ``d`` as shape parameters.
		
		The probability density above is defined in the "standardized" form. To shift
		and/or scale the distribution use the ``loc`` and ``scale`` parameters.
		Specifically, ``trapz.pdf(x, c, d, loc, scale)`` is identically
		equivalent to ``trapz.pdf(y, c, d) / scale`` with
		``y = (x - loc) / scale``.
		
		The standard form is in the range [0, 1] with c the mode.
		The location parameter shifts the start to `loc`.
		The scale parameter changes the width from 1 to `scale`.
		
		Examples
		--------
		>>> from scipy.stats import trapz
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		>>> c, d = 0.2, 0.8
		>>> mean, var, skew, kurt = trapz.stats(c, d, moments='mvsk')
		
		Display the probability density function (``pdf``):
		
		>>> x = np.linspace(trapz.ppf(0.01, c, d),
		...                 trapz.ppf(0.99, c, d), 100)
		>>> ax.plot(x, trapz.pdf(x, c, d),
		...        'r-', lw=5, alpha=0.6, label='trapz pdf')
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape, location and scale parameters. This returns a "frozen"
		RV object holding the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pdf``:
		
		>>> rv = trapz(c, d)
		>>> ax.plot(x, rv.pdf(x), 'k-', lw=2, label='frozen pdf')
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> vals = trapz.ppf([0.001, 0.5, 0.999], c, d)
		>>> np.allclose([0.001, 0.5, 0.999], trapz.cdf(vals, c, d))
		True
		
		Generate random numbers:
		
		>>> r = trapz.rvs(c, d, size=1000)
		
		And compare the histogram:
		
		>>> ax.hist(r, normed=True, histtype='stepfilled', alpha=0.2)
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
	**/
	static public function trapz(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, b, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, a, b, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, lam, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, kappa, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, kappa, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		    Cumulative distribution function.
		``logcdf(x, c, loc=0, scale=1)``
		    Log of the cumulative distribution function.
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
		``pmf(k, a, loc=0)``
		    Probability mass function.
		``logpmf(k, a, loc=0)``
		    Log of the probability mass function.
		``cdf(k, a, loc=0)``
		    Cumulative distribution function.
		``logcdf(k, a, loc=0)``
		    Log of the cumulative distribution function.
		``sf(k, a, loc=0)``
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		``logsf(k, a, loc=0)``
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
}