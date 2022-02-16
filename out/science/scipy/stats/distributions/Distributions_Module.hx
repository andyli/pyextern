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
}