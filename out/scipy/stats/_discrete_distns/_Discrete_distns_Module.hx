/* This file is generated, do not edit! */
package scipy.stats._discrete_distns;
@:pythonImport("scipy.stats._discrete_distns") extern class _Discrete_distns_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _distn_gen_names : Dynamic;
	static public var _distn_names : Dynamic;
	/**
		np.where(cond, x, fillvalue) always evaluates x even where cond is False.
		This one only evaluates f(arr1[cond], arr2[cond], ...).
		For example,
		>>> a, b = np.array([1, 2, 3, 4]), np.array([5, 6, 7, 8])
		>>> def f(a, b):
		    return a*b
		>>> _lazywhere(a > 2, (a, b), f, np.nan)
		array([ nan,  nan,  21.,  32.])
		
		Notice it assumes that all `arrays` are of the same shape, or can be
		broadcasted together.
	**/
	static public function _lazywhere(cond:Dynamic, arrays:Dynamic, f:Dynamic, ?fillvalue:Dynamic, ?f2:Dynamic):Dynamic;
	static public function _ncx2_cdf(x:Dynamic, df:Dynamic, nc:Dynamic):Dynamic;
	static public function _ncx2_pdf(x:Dynamic, df:Dynamic, nc:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
		ceil(x[, out])
		
		Return the ceiling of the input, element-wise.
		
		The ceil of the scalar `x` is the smallest integer `i`, such that
		`i >= x`.  It is often denoted as :math:`\lceil x \rceil`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		y : ndarray or scalar
		    The ceiling of each element in `x`, with `float` dtype.
		
		See Also
		--------
		floor, trunc, rint
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.ceil(a)
		array([-1., -1., -0.,  1.,  2.,  2.,  2.])
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosh(x[, out])
		
		Hyperbolic cosine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) + np.exp(-x))`` and ``np.cos(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Output array of same shape as `x`.
		
		Examples
		--------
		>>> np.cosh(0)
		1.0
		
		The hyperbolic cosine describes the shape of a hanging cable:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-4, 4, 1000)
		>>> plt.plot(x, np.cosh(x))
		>>> plt.show()
	**/
	static public function cosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		entr(x[, out])
		
		entr(x)
		
		Elementwise function for computing entropy.
		
		.. math:: \text{entr}(x) = \begin{cases} - x \log(x) & x > 0  \\ 0 & x = 0 \\ -\infty & \text{otherwise} \end{cases}
		
		Parameters
		----------
		x : ndarray
		    Input array.
		
		Returns
		-------
		res : ndarray
		    The value of the elementwise entropy function at the given points `x`.
		
		See Also
		--------
		kl_div, rel_entr
		
		Notes
		-----
		This function is concave.
		
		.. versionadded:: 0.14.0
	**/
	static public function entr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp(x[, out])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		out : ndarray
		    Output array, element-wise exponential of `x`.
		
		See Also
		--------
		expm1 : Calculate ``exp(x) - 1`` for all elements in the array.
		exp2  : Calculate ``2**x`` for all elements in the array.
		
		Notes
		-----
		The irrational number ``e`` is also known as Euler's number.  It is
		approximately 2.718281, and is the base of the natural logarithm,
		``ln`` (this means that, if :math:`x = \ln y = \log_e y`,
		then :math:`e^x = y`. For real input, ``exp(x)`` is always positive.
		
		For complex arguments, ``x = a + ib``, we can write
		:math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
		known (it is the real argument, described above).  The second term,
		:math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
		magnitude 1 and a periodic phase.
		
		References
		----------
		.. [1] Wikipedia, "Exponential function",
		       http://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       http://www.math.sfu.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expm1(x[, out])
		
		Calculate ``exp(x) - 1`` for all elements in the array.
		
		Parameters
		----------
		x : array_like
		   Input values.
		
		Returns
		-------
		out : ndarray
		    Element-wise exponential minus one: ``out = exp(x) - 1``.
		
		See Also
		--------
		log1p : ``log(1 + x)``, the inverse of expm1.
		
		
		Notes
		-----
		This function provides greater precision than ``exp(x) - 1``
		for small values of ``x``.
		
		Examples
		--------
		The true value of ``exp(1e-10) - 1`` is ``1.00000000005e-10`` to
		about 32 significant digits. This example shows the superiority of
		expm1 in this case.
		
		>>> np.expm1(1e-10)
		1.00000000005e-10
		>>> np.exp(1e-10) - 1
		1.000000082740371e-10
	**/
	static public function expm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor(x[, out])
		
		Return the floor of the input, element-wise.
		
		The floor of the scalar `x` is the largest integer `i`, such that
		`i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		y : ndarray or scalar
		    The floor of each element in `x`.
		
		See Also
		--------
		ceil, trunc, rint
		
		Notes
		-----
		Some spreadsheet programs calculate the "floor-towards-zero", in other
		words ``floor(-2.5) == -2``.  NumPy instead uses the definition of
		`floor` where `floor(-2.5) == -3`.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.floor(a)
		array([-2., -2., -1.,  0.,  1.,  1.,  2.])
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gammaln(x[, out])
		
		gammaln(z)
		
		Logarithm of absolute value of gamma function
		
		Defined as::
		
		    ln(abs(gamma(z)))
		
		See Also
		--------
		gammasgn
	**/
	static public function gamln(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Collect names of statistical distributions and their generators.
		
		Parameters
		----------
		namespace_pairs : sequence
		    A snapshot of (name, value) pairs in the namespace of a module.
		rv_base_class : class
		    The base class of random variable generator classes in a module.
		
		Returns
		-------
		distn_names : list of strings
		    Names of the statistical distributions.
		distn_gen_names : list of strings
		    Names of the generators of the statistical distributions.
		    Note that these are not simply the names of the statistical
		    distributions, with a _gen suffix added.
	**/
	static public function get_distribution_names(namespace_pairs:Dynamic, rv_base_class:Dynamic):Dynamic;
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
		log(x[, out])
		
		Natural logarithm, element-wise.
		
		The natural logarithm `log` is the inverse of the exponential function,
		so that `log(exp(x)) = x`. The natural logarithm is logarithm in base
		`e`.
		
		Parameters
		----------
		x : array_like
		    Input value.
		
		Returns
		-------
		y : ndarray
		    The natural logarithm of `x`, element-wise.
		
		See Also
		--------
		log10, log2, log1p, emath.log
		
		Notes
		-----
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `exp(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log` always returns real output. For
		each value that cannot be expressed as a real number or infinity, it
		yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it. `log`
		handles the floating-point negative zero as an infinitesimal negative
		number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Logarithm". http://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log([1, np.e, np.e**2, 0])
		array([  0.,   1.,   2., -Inf])
	**/
	static public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log1p(x[, out])
		
		Return the natural logarithm of one plus the input array, element-wise.
		
		Calculates ``log(1 + x)``.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		y : ndarray
		    Natural logarithm of `1 + x`, element-wise.
		
		See Also
		--------
		expm1 : ``exp(x) - 1``, the inverse of `log1p`.
		
		Notes
		-----
		For real-valued input, `log1p` is accurate also for `x` so small
		that `1 + x == 1` in floating-point accuracy.
		
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `exp(z) = 1 + x`. The convention is to return
		the `z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log1p` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log1p` is a complex analytical function that
		has a branch cut `[-inf, -1]` and is continuous from above on it.
		`log1p` handles the floating-point negative zero as an infinitesimal
		negative number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Logarithm". http://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log1p(1e-99)
		1e-99
		>>> np.log(1 + 1e-99)
		0.0
	**/
	static public function log1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Compute the log of the sum of exponentials of input elements.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : None or int or tuple of ints, optional
		    Axis or axes over which the sum is taken. By default `axis` is None,
		    and all elements are summed. Tuple of ints is not accepted if NumPy
		    version is lower than 1.7.0.
		
		    .. versionadded:: 0.11.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original array.
		
		    .. versionadded:: 0.15.0
		b : array-like, optional
		    Scaling factor for exp(`a`) must be of the same shape as `a` or
		    broadcastable to `a`. These values may be negative in order to
		    implement subtraction.
		
		    .. versionadded:: 0.12.0
		return_sign : bool, optional
		    If this is set to True, the result will be a pair containing sign
		    information; if False, results that are negative will be returned
		    as NaN. Default is False (no sign information).
		
		    .. versionadded:: 0.16.0
		Returns
		-------
		res : ndarray
		    The result, ``np.log(np.sum(np.exp(a)))`` calculated in a numerically
		    more stable way. If `b` is given then ``np.log(np.sum(b*np.exp(a)))``
		    is returned.
		sgn : ndarray
		    If return_sign is True, this will be an array of floating-point
		    numbers matching res and +1, 0, or -1 depending on the sign
		    of the result. If False, only one result is returned.
		    
		See Also
		--------
		numpy.logaddexp, numpy.logaddexp2
		
		Notes
		-----
		Numpy has a logaddexp function which is very similar to `logsumexp`, but
		only handles two arguments. `logaddexp.reduce` is similar to this
		function, but may be less stable.
		
		Examples
		--------
		>>> from scipy.misc import logsumexp
		>>> a = np.arange(10)
		>>> np.log(np.sum(np.exp(a)))
		9.4586297444267107
		>>> logsumexp(a)
		9.4586297444267107
		
		With weights
		
		>>> a = np.arange(10)
		>>> b = np.arange(10, 0, -1)
		>>> logsumexp(a, b=b)
		9.9170178533034665
		>>> np.log(np.sum(b*np.exp(a)))
		9.9170178533034647
		
		Returning a sign flag
		
		>>> logsumexp([1,2],b=[1,-1],return_sign=True)
		(1.5413248546129181, -1.0)
	**/
	static public function logsumexp(a:Dynamic, ?axis:Dynamic, ?b:Dynamic, ?keepdims:Dynamic, ?return_sign:Dynamic):Dynamic;
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
	static public var pairs : Dynamic;
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
		sinh(x[, out])
		
		Hyperbolic sine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) - np.exp(-x))`` or
		``-1j * np.sin(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic sine values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972, pg. 83.
		
		Examples
		--------
		>>> np.sinh(0)
		0.0
		>>> np.sinh(np.pi*1j/2)
		1j
		>>> np.sinh(np.pi*1j) # (exact value is 0)
		1.2246063538223773e-016j
		>>> # Discrepancy due to vagaries of floating point arithmetic.
		
		>>> # Example of providing the optional output parameter
		>>> out2 = np.sinh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.sinh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function sinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		sqrt(x[, out])
		
		Return the positive square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, optional
		    Alternate array object in which to put the result; if provided, it
		    must have the same shape as `x`
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		
		See Also
		--------
		lib.scimath.sqrt
		    A version which returns complex numbers when given negative reals.
		
		Notes
		-----
		*sqrt* has--consistent with common convention--as its branch cut the
		real "interval" [`-inf`, 0), and is continuous from above on it.
		A branch cut is a curve in the complex plane across which a given
		complex function fails to be continuous.
		
		Examples
		--------
		>>> np.sqrt([1,4,9])
		array([ 1.,  2.,  3.])
		
		>>> np.sqrt([4, -1, -3+4J])
		array([ 2.+0.j,  0.+1.j,  1.+2.j])
		
		>>> np.sqrt([4, -1, numpy.inf])
		array([  2.,  NaN,  Inf])
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tanh(x[, out])
		
		Compute hyperbolic tangent element-wise.
		
		Equivalent to ``np.sinh(x)/np.cosh(x)`` or ``-1j * np.tan(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic tangent values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		.. [1] M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		       New York, NY: Dover, 1972, pg. 83.
		       http://www.math.sfu.ca/~cbm/aands/
		
		.. [2] Wikipedia, "Hyperbolic function",
		       http://en.wikipedia.org/wiki/Hyperbolic_function
		
		Examples
		--------
		>>> np.tanh((0, np.pi*1j, np.pi*1j/2))
		array([ 0. +0.00000000e+00j,  0. -1.22460635e-16j,  0. +1.63317787e+16j])
		
		>>> # Example of providing the optional output parameter illustrating
		>>> # that what is returned is a reference to said parameter
		>>> out2 = np.tanh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.tanh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function tanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
}