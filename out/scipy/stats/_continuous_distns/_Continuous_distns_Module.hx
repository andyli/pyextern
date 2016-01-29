/* This file is generated, do not edit! */
package scipy.stats._continuous_distns;
@:pythonImport("scipy.stats._continuous_distns") extern class _Continuous_distns_Module {
	static public var _EULER : Dynamic;
	static public var _LOGXMAX : Dynamic;
	static public var _XMAX : Dynamic;
	static public var _XMIN : Dynamic;
	static public var _ZETA3 : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _beta_mle_a(a:Dynamic, b:Dynamic, n:Dynamic, s1:Dynamic):Dynamic;
	static public function _beta_mle_ab(theta:Dynamic, n:Dynamic, s1:Dynamic, s2:Dynamic):Dynamic;
	static public function _digammainv(y:Dynamic):Dynamic;
	static public var _distn_gen_names : Dynamic;
	static public var _distn_names : Dynamic;
	/**
		kurtosis is fourth central moment / variance**2 - 3
	**/
	static public function _kurtosis(data:Dynamic):Dynamic;
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
	static public function _lognorm_logpdf(x:Dynamic, s:Dynamic):Dynamic;
	static public function _ncx2_cdf(x:Dynamic, df:Dynamic, nc:Dynamic):Dynamic;
	static public function _ncx2_log_pdf(x:Dynamic, df:Dynamic, nc:Dynamic):Dynamic;
	static public function _ncx2_pdf(x:Dynamic, df:Dynamic, nc:Dynamic):Dynamic;
	static public function _norm_cdf(x:Dynamic):Dynamic;
	static public function _norm_isf(q:Dynamic):Dynamic;
	static public function _norm_logcdf(x:Dynamic):Dynamic;
	static public function _norm_logpdf(x:Dynamic):Dynamic;
	static public function _norm_logsf(x:Dynamic):Dynamic;
	static public function _norm_pdf(x:Dynamic):Dynamic;
	static public var _norm_pdf_C : Dynamic;
	static public var _norm_pdf_logC : Dynamic;
	static public function _norm_ppf(q:Dynamic):Dynamic;
	static public function _norm_sf(x:Dynamic):Dynamic;
	/**
		skew is third central moment / variance**(1.5)
	**/
	static public function _skew(data:Dynamic):Dynamic;
	/**
		Kurtosis of the Tukey Lambda distribution.
		
		Parameters
		----------
		lam : array_like
		    The lambda values at which to compute the variance.
		
		Returns
		-------
		v : ndarray
		    The variance.  For lam < -0.25, the variance is not defined, so
		    np.nan is returned.  For lam = 0.25, np.inf is returned.
	**/
	static public function _tlkurt(lam:Dynamic):Dynamic;
	/**
		Variance of the Tukey Lambda distribution.
		
		Parameters
		----------
		lam : array_like
		    The lambda values at which to compute the variance.
		
		Returns
		-------
		v : ndarray
		    The variance.  For lam < -0.5, the variance is not defined, so
		    np.nan is returned.  For lam = 0.5, np.inf is returned.
		
		Notes
		-----
		In an interval around lambda=0, this function uses the [4,4] Pade
		approximation to compute the variance.  Otherwise it uses the standard
		formula (http://en.wikipedia.org/wiki/Tukey_lambda_distribution).  The
		Pade approximation is used because the standard formula has a removable
		discontinuity at lambda = 0, and does not produce accurate numerical
		results near lambda = 0.
	**/
	static public function _tlvar(lam:Dynamic):Dynamic;
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
		Test whether any array element along a given axis evaluates to True.
		
		Returns single boolean unless `axis` is not ``None``
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical OR reduction is performed.
		    The default (`axis` = `None`) is to perform a logical OR over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output and its type is preserved
		    (e.g., if it is of type float, then it will remain so, returning
		    1.0 for True and 0.0 for False, regardless of the type of `a`).
		    See `doc.ufuncs` (Section "Output arguments") for details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		any : bool or ndarray
		    A new boolean or `ndarray` is returned unless `out` is specified,
		    in which case a reference to `out` is returned.
		
		See Also
		--------
		ndarray.any : equivalent method
		
		all : Test whether all elements along a given axis evaluate to True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity evaluate
		to `True` because these are not equal to zero.
		
		Examples
		--------
		>>> np.any([[True, False], [True, True]])
		True
		
		>>> np.any([[True, False], [False, False]], axis=0)
		array([ True, False], dtype=bool)
		
		>>> np.any([-1, 0, 5])
		True
		
		>>> np.any(np.nan)
		True
		
		>>> o=np.array([False])
		>>> z=np.any([-1, 4, 5], out=o)
		>>> z, o
		(array([ True], dtype=bool), array([ True], dtype=bool))
		>>> # Check now that z is a reference to o
		>>> z is o
		True
		>>> id(z), id(o) # identity of z and o              # doctest: +SKIP
		(191614240, 191614240)
	**/
	static public function any(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range <http://docs.python.org/lib/built-in-funcs.html>`_ function,
		but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use ``linspace`` for these cases.
		
		Parameters
		----------
		start : number, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : number
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : number, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified, `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		See Also
		--------
		linspace : Evenly spaced numbers with careful handling of endpoints.
		ogrid: Arrays of evenly spaced numbers in N-dimensions.
		mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
		Examples
		--------
		>>> np.arange(3)
		array([0, 1, 2])
		>>> np.arange(3.0)
		array([ 0.,  1.,  2.])
		>>> np.arange(3,7)
		array([3, 4, 5, 6])
		>>> np.arange(3,7,2)
		array([3, 5])
	**/
	static public function arange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arcsin(x[, out])
		
		Inverse sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    `y`-coordinate on the unit circle.
		
		out : ndarray, optional
		    Array of the same shape as `x`, in which to store the results.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		
		Returns
		-------
		angle : ndarray
		    The inverse sine of each element in `x`, in radians and in the
		    closed interval ``[-pi/2, pi/2]``.  If `x` is a scalar, a scalar
		    is returned, otherwise an array.
		
		See Also
		--------
		sin, cos, arccos, tan, arctan, arctan2, emath.arcsin
		
		Notes
		-----
		`arcsin` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that :math:`sin(z) = x`.  The convention is to
		return the angle `z` whose real part lies in [-pi/2, pi/2].
		
		For real-valued input data types, *arcsin* always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arcsin` is a complex analytic function that
		has, by convention, the branch cuts [-inf, -1] and [1, inf]  and is
		continuous from above on the former and from below on the latter.
		
		The inverse sine is also known as `asin` or sin^{-1}.
		
		References
		----------
		Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
		10th printing, New York: Dover, 1964, pp. 79ff.
		http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		>>> np.arcsin(1)     # pi/2
		1.5707963267948966
		>>> np.arcsin(-1)    # -pi/2
		-1.5707963267948966
		>>> np.arcsin(0)
		0.0
	**/
	static public function arcsin(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		arctan(x[, out])
		
		Trigonometric inverse tangent, element-wise.
		
		The inverse of tan, so that if ``y = tan(x)`` then ``x = arctan(y)``.
		
		Parameters
		----------
		x : array_like
		    Input values.  `arctan` is applied to each element of `x`.
		
		Returns
		-------
		out : ndarray
		    Out has the same shape as `x`.  Its real part is in
		    ``[-pi/2, pi/2]`` (``arctan(+/-inf)`` returns ``+/-pi/2``).
		    It is a scalar if `x` is a scalar.
		
		See Also
		--------
		arctan2 : The "four quadrant" arctan of the angle formed by (`x`, `y`)
		    and the positive `x`-axis.
		angle : Argument of complex values.
		
		Notes
		-----
		`arctan` is a multi-valued function: for each `x` there are infinitely
		many numbers `z` such that tan(`z`) = `x`.  The convention is to return
		the angle `z` whose real part lies in [-pi/2, pi/2].
		
		For real-valued input data types, `arctan` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arctan` is a complex analytic function that
		has [`1j, infj`] and [`-1j, -infj`] as branch cuts, and is continuous
		from the left on the former and from the right on the latter.
		
		The inverse tangent is also known as `atan` or tan^{-1}.
		
		References
		----------
		Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
		10th printing, New York: Dover, 1964, pp. 79.
		http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		We expect the arctan of 0 to be 0, and of 1 to be pi/4:
		
		>>> np.arctan([0, 1])
		array([ 0.        ,  0.78539816])
		
		>>> np.pi/4
		0.78539816339744828
		
		Plot arctan:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-10, 10)
		>>> plt.plot(x, np.arctan(x))
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function arctan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctanh(x[, out])
		
		Inverse hyperbolic tangent element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Array of the same shape as `x`.
		
		See Also
		--------
		emath.arctanh
		
		Notes
		-----
		`arctanh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `tanh(z) = x`. The convention is to return
		the `z` whose imaginary part lies in `[-pi/2, pi/2]`.
		
		For real-valued input data types, `arctanh` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arctanh` is a complex analytical function
		that has branch cuts `[-1, -inf]` and `[1, inf]` and is continuous from
		above on the former and from below on the latter.
		
		The inverse hyperbolic tangent is also known as `atanh` or ``tanh^-1``.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       http://en.wikipedia.org/wiki/Arctanh
		
		Examples
		--------
		>>> np.arctanh([0, -0.5])
		array([ 0.        , -0.54930614])
	**/
	static public function arctanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
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
		boxcox(x1, x2[, out])
		
		boxcox(x, lmbda)
		
		Compute the Box-Cox transformation.
		
		The Box-Cox transformation is::
		
		    y = (x**lmbda - 1) / lmbda  if lmbda != 0
		        log(x)                  if lmbda == 0
		
		Returns `nan` if ``x < 0``.
		Returns `-inf` if ``x == 0`` and ``lmbda < 0``.
		
		Parameters
		----------
		x : array_like
		    Data to be transformed.
		lmbda : array_like
		    Power parameter of the Box-Cox transform.
		
		Returns
		-------
		y : array
		    Transformed data.
		
		Notes
		-----
		
		.. versionadded:: 0.14.0
		
		Examples
		--------
		>>> from scipy.special import boxcox
		>>> boxcox([1, 4, 10], 2.5)
		array([   0.        ,   12.4       ,  126.09110641])
		>>> boxcox(2, [0, 1, 2])
		array([ 0.69314718,  1.        ,  1.5       ])
	**/
	static public function boxcox(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		boxcox1p(x1, x2[, out])
		
		boxcox1p(x, lmbda)
		
		Compute the Box-Cox transformation of 1 + `x`.
		
		The Box-Cox transformation computed by `boxcox1p` is::
		
		    y = ((1+x)**lmbda - 1) / lmbda  if lmbda != 0
		        log(1+x)                    if lmbda == 0
		
		Returns `nan` if ``x < -1``.
		Returns `-inf` if ``x == -1`` and ``lmbda < 0``.
		
		Parameters
		----------
		x : array_like
		    Data to be transformed.
		lmbda : array_like
		    Power parameter of the Box-Cox transform.
		
		Returns
		-------
		y : array
		    Transformed data.
		
		Notes
		-----
		
		.. versionadded:: 0.14.0
		
		Examples
		--------
		>>> from scipy.special import boxcox1p
		>>> boxcox1p(1e-4, [0, 0.5, 1])
		array([  9.99950003e-05,   9.99975001e-05,   1.00000000e-04])
		>>> boxcox1p([0.01, 0.1], 0.25)
		array([ 0.00996272,  0.09645476])
	**/
	static public function boxcox1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		chndtr(x1, x2, x3[, out])
		
		chndtr(x, df, nc)
		
		Non-central chi square cumulative distribution function
	**/
	static public function chndtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chndtrix(x1, x2, x3[, out])
		
		chndtrix(p, df, nc)
		
		Inverse to `chndtr` vs `x`
	**/
	static public function chndtrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The number of combinations of N things taken k at a time.
		
		This is often expressed as "N choose k".
		
		Parameters
		----------
		N : int, ndarray
		    Number of things.
		k : int, ndarray
		    Number of elements taken.
		exact : bool, optional
		    If `exact` is False, then floating point precision is used, otherwise
		    exact long integer is computed.
		repetition : bool, optional
		    If `repetition` is True, then the number of combinations with
		    repetition is computed.
		
		Returns
		-------
		val : int, ndarray
		    The total number of combinations.
		
		Notes
		-----
		- Array arguments accepted only for exact=False case.
		- If k > N, N < 0, or k < 0, then a 0 is returned.
		
		Examples
		--------
		>>> from scipy.special import comb
		>>> k = np.array([3, 4])
		>>> n = np.array([10, 10])
		>>> comb(n, k, exact=False)
		array([ 120.,  210.])
		>>> comb(10, 3, exact=True)
		120L
		>>> comb(10, 3, exact=True, repetition=True)
		220L
	**/
	static public function comb(N:Dynamic, k:Dynamic, ?exact:Dynamic, ?repetition:Dynamic):Dynamic;
	/**
		cos(x[, out])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding cosine values.
		
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
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> np.cos(np.array([0, np.pi/2, np.pi]))
		array([  1.00000000e+00,   6.12303177e-17,  -1.00000000e+00])
		>>>
		>>> # Example of providing the optional output parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var division : Dynamic;
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
		erfc(x[, out])
		
		erfc(x)
		
		Complementary error function, 1 - erf(x).
		
		References
		----------
		.. [1] Steven G. Johnson, Faddeeva W function implementation.
		   http://ab-initio.mit.edu/Faddeeva
	**/
	static public function erfc(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return the elements of an array that satisfy some condition.
		
		This is equivalent to ``np.compress(ravel(condition), ravel(arr))``.  If
		`condition` is boolean ``np.extract`` is equivalent to ``arr[condition]``.
		
		Note that `place` does the exact opposite of `extract`.
		
		Parameters
		----------
		condition : array_like
		    An array whose nonzero or True entries indicate the elements of `arr`
		    to extract.
		arr : array_like
		    Input array of the same size as `condition`.
		
		Returns
		-------
		extract : ndarray
		    Rank 1 array of values from `arr` where `condition` is True.
		
		See Also
		--------
		take, put, copyto, compress, place
		
		Examples
		--------
		>>> arr = np.arange(12).reshape((3, 4))
		>>> arr
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11]])
		>>> condition = np.mod(arr, 3)==0
		>>> condition
		array([[ True, False, False,  True],
		       [False, False,  True, False],
		       [False,  True, False, False]], dtype=bool)
		>>> np.extract(condition, arr)
		array([0, 3, 6, 9])
		
		
		If `condition` is boolean:
		
		>>> arr[condition]
		array([0, 3, 6, 9])
	**/
	static public function extract(condition:Dynamic, arr:Dynamic):Dynamic;
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
		gamma(x[, out])
		
		gamma(z)
		
		Gamma function
		
		The gamma function is often referred to as the generalized
		factorial since ``z*gamma(z) = gamma(z+1)`` and ``gamma(n+1) =
		n!`` for natural number *n*.
	**/
	static public function gam(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var inf : Dynamic;
	/**
		This decorator modifies the decorated function's docstring by
		replacing occurrences of '%(super)s' with the docstring of the
		method of the same name from the class `cls`.
		
		If the decorated method has no docstring, it is simply given the
		docstring of `cls`s method.
		
		Parameters
		----------
		cls : Python class or instance
		    A class with a method with the same name as the decorated method.
		    The docstring of the method in this class replaces '%(super)s' in the
		    docstring of the decorated method.
		
		Returns
		-------
		f : function
		    The decorator function that modifies the __doc__ attribute
		    of its argument.
		
		Examples
		--------
		In the following, the docstring for Bar.func created using the
		docstring of `Foo.func`.
		
		>>> class Foo(object):
		...     def func(self):
		...         '''Do something useful.'''
		...         return
		...
		>>> class Bar(Foo):
		...     @inherit_docstring_from(Foo)
		...     def func(self):
		...         '''%(super)s
		...         Do it fast.
		...         '''
		...         return
		...
		>>> b = Bar()
		>>> b.func.__doc__
		'Do something useful.
		    Do it fast.
		    '
	**/
	static public function inherit_docstring_from(cls:Dynamic):haxe.Constraints.Function;
	/**
		inv_boxcox(x1, x2[, out])
		
		inv_boxcox(y, lmbda)
		
		Compute the inverse of the Box-Cox transformation.
		
		Find ``x`` such that::
		
		    y = (x**lmbda - 1) / lmbda  if lmbda != 0
		        log(x)                  if lmbda == 0
		
		Parameters
		----------
		y : array_like
		    Data to be transformed.
		lmbda : array_like
		    Power parameter of the Box-Cox transform.
		
		Returns
		-------
		x : array
		    Transformed data.
		
		Notes
		-----
		
		.. versionadded:: 0.16.0
		
		Examples
		--------
		>>> from scipy.special import boxcox, inv_boxcox
		>>> y = boxcox([1, 4, 10], 2.5)
		>>> inv_boxcox(y, 2.5)
		array([1., 4., 10.])
	**/
	static public function inv_boxcox(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_boxcox1p(x1, x2[, out])
		
		inv_boxcox1p(y, lmbda)
		
		Compute the inverse of the Box-Cox transformation.
		
		Find ``x`` such that::
		
		    y = ((1+x)**lmbda - 1) / lmbda  if lmbda != 0
		        log(1+x)                    if lmbda == 0
		
		Parameters
		----------
		y : array_like
		    Data to be transformed.
		lmbda : array_like
		    Power parameter of the Box-Cox transform.
		
		Returns
		-------
		x : array
		    Transformed data.
		
		Notes
		-----
		
		.. versionadded:: 0.16.0
		
		Examples
		--------
		>>> from scipy.special import boxcox1p, inv_boxcox1p
		>>> y = boxcox1p([1, 4, 10], 2.5)
		>>> inv_boxcox1p(y, 2.5)
		array([1., 4., 10.])
	**/
	static public function inv_boxcox1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var nan : Dynamic;
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
	static public var pairs : Dynamic;
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
	static public var pi : Dynamic;
	/**
		Change elements of an array based on conditional and input values.
		
		Similar to ``np.copyto(arr, vals, where=mask)``, the difference is that
		`place` uses the first N elements of `vals`, where N is the number of
		True values in `mask`, while `copyto` uses the elements where `mask`
		is True.
		
		Note that `extract` does the exact opposite of `place`.
		
		Parameters
		----------
		arr : array_like
		    Array to put data into.
		mask : array_like
		    Boolean mask array. Must have the same size as `a`.
		vals : 1-D sequence
		    Values to put into `a`. Only the first N elements are used, where
		    N is the number of True values in `mask`. If `vals` is smaller
		    than N it will be repeated.
		
		See Also
		--------
		copyto, put, take, extract
		
		Examples
		--------
		>>> arr = np.arange(6).reshape(2, 3)
		>>> np.place(arr, arr>2, [44, 55])
		>>> arr
		array([[ 0,  1,  2],
		       [44, 55, 44]])
	**/
	static public function place(arr:Dynamic, mask:Dynamic, vals:Dynamic):Dynamic;
	/**
		Evaluate a polynomial at specific values.
		
		If `p` is of length N, this function returns the value:
		
		    ``p[0]*x**(N-1) + p[1]*x**(N-2) + ... + p[N-2]*x + p[N-1]``
		
		If `x` is a sequence, then `p(x)` is returned for each element of `x`.
		If `x` is another polynomial then the composite polynomial `p(x(t))`
		is returned.
		
		Parameters
		----------
		p : array_like or poly1d object
		   1D array of polynomial coefficients (including coefficients equal
		   to zero) from highest degree to the constant term, or an
		   instance of poly1d.
		x : array_like or poly1d object
		   A number, a 1D array of numbers, or an instance of poly1d, "at"
		   which to evaluate `p`.
		
		Returns
		-------
		values : ndarray or poly1d
		   If `x` is a poly1d instance, the result is the composition of the two
		   polynomials, i.e., `x` is "substituted" in `p` and the simplified
		   result is returned. In addition, the type of `x` - array_like or
		   poly1d - governs the type of the output: `x` array_like => `values`
		   array_like, `x` a poly1d object => `values` is also.
		
		See Also
		--------
		poly1d: A polynomial class.
		
		Notes
		-----
		Horner's scheme [1]_ is used to evaluate the polynomial. Even so,
		for polynomials of high degree the values may be inaccurate due to
		rounding errors. Use carefully.
		
		References
		----------
		.. [1] I. N. Bronshtein, K. A. Semendyayev, and K. A. Hirsch (Eng.
		   trans. Ed.), *Handbook of Mathematics*, New York, Van Nostrand
		   Reinhold Co., 1985, pg. 720.
		
		Examples
		--------
		>>> np.polyval([3,0,1], 5)  # 3 * 5**2 + 0 * 5**1 + 1
		76
		>>> np.polyval([3,0,1], np.poly1d(5))
		poly1d([ 76.])
		>>> np.polyval(np.poly1d([3,0,1]), 5)
		76
		>>> np.polyval(np.poly1d([3,0,1]), np.poly1d(5))
		poly1d([ 76.])
	**/
	static public function polyval(p:Dynamic, x:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	/**
		putmask(a, mask, values)
		
		Changes elements of an array based on conditional and input values.
		
		Sets ``a.flat[n] = values[n]`` for each n where ``mask.flat[n]==True``.
		
		If `values` is not the same size as `a` and `mask` then it will repeat.
		This gives behavior different from ``a[mask] = values``.
		
		Parameters
		----------
		a : array_like
		    Target array.
		mask : array_like
		    Boolean mask array. It has to be the same shape as `a`.
		values : array_like
		    Values to put into `a` where `mask` is True. If `values` is smaller
		    than `a` it will be repeated.
		
		See Also
		--------
		place, put, take, copyto
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2, 3)
		>>> np.putmask(x, x>2, x**2)
		>>> x
		array([[ 0,  1,  2],
		       [ 9, 16, 25]])
		
		If `values` is smaller than `a` it is repeated:
		
		>>> x = np.arange(5)
		>>> np.putmask(x, x>1, [-33, -44])
		>>> x
		array([  0,   1, -33, -44, -33])
	**/
	static public function putmask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a contiguous flattened array.
		
		A 1-D array, containing the elements of the input, is returned.  A copy is
		made only if needed.
		
		As of NumPy 1.10, the returned array will have the same type as the input
		array. (for example, a masked array will be returned for a masked array
		input)
		
		Parameters
		----------
		a : array_like
		    Input array.  The elements in `a` are read in the order specified by
		    `order`, and packed as a 1-D array.
		order : {'C','F', 'A', 'K'}, optional
		
		    The elements of `a` are read using this index order. 'C' means
		    to index the elements in row-major, C-style order,
		    with the last axis index changing fastest, back to the first
		    axis index changing slowest.  'F' means to index the elements
		    in column-major, Fortran-style order, with the
		    first index changing fastest, and the last index changing
		    slowest. Note that the 'C' and 'F' options take no account of
		    the memory layout of the underlying array, and only refer to
		    the order of axis indexing.  'A' means to read the elements in
		    Fortran-like index order if `a` is Fortran *contiguous* in
		    memory, C-like order otherwise.  'K' means to read the
		    elements in the order they occur in memory, except for
		    reversing the data when strides are negative.  By default, 'C'
		    index order is used.
		
		Returns
		-------
		y : array_like
		    If `a` is a matrix, y is a 1-D ndarray, otherwise y is an array of
		    the same subtype as `a`. The shape of the returned array is
		    ``(a.size,)``. Matrices are special cased for backward
		    compatibility.
		
		See Also
		--------
		ndarray.flat : 1-D iterator over an array.
		ndarray.flatten : 1-D array copy of the elements of an array
		                  in row-major order.
		ndarray.reshape : Change the shape of an array without changing its data.
		
		Notes
		-----
		In row-major, C-style order, in two dimensions, the row index
		varies the slowest, and the column index the quickest.  This can
		be generalized to multiple dimensions, where row-major order
		implies that the index along the first axis varies slowest, and
		the index along the last quickest.  The opposite holds for
		column-major, Fortran-style index ordering.
		
		When a view is desired in as many cases as possible, ``arr.reshape(-1)``
		may be preferable.
		
		Examples
		--------
		It is equivalent to ``reshape(-1, order=order)``.
		
		>>> x = np.array([[1, 2, 3], [4, 5, 6]])
		>>> print np.ravel(x)
		[1 2 3 4 5 6]
		
		>>> print x.reshape(-1)
		[1 2 3 4 5 6]
		
		>>> print np.ravel(x, order='F')
		[1 4 2 5 3 6]
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> print np.ravel(x.T)
		[1 4 2 5 3 6]
		>>> print np.ravel(x.T, order='A')
		[1 2 3 4 5 6]
		
		When ``order`` is 'K', it will preserve orderings that are neither 'C'
		nor 'F', but won't reverse axes:
		
		>>> a = np.arange(3)[::-1]; a
		array([2, 1, 0])
		>>> a.ravel(order='C')
		array([2, 1, 0])
		>>> a.ravel(order='K')
		array([2, 1, 0])
		
		>>> a = np.arange(12).reshape(2,3,2).swapaxes(1,2); a
		array([[[ 0,  2,  4],
		        [ 1,  3,  5]],
		       [[ 6,  8, 10],
		        [ 7,  9, 11]]])
		>>> a.ravel(order='C')
		array([ 0,  2,  4,  1,  3,  5,  6,  8, 10,  7,  9, 11])
		>>> a.ravel(order='K')
		array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11])
	**/
	static public function ravel(a:Dynamic, ?order:Dynamic):Dynamic;
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
		Return the shape of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		
		Returns
		-------
		shape : tuple of ints
		    The elements of the shape tuple give the lengths of the
		    corresponding array dimensions.
		
		See Also
		--------
		alen
		ndarray.shape : Equivalent array method.
		
		Examples
		--------
		>>> np.shape(np.eye(3))
		(3, 3)
		>>> np.shape([[1, 2]])
		(1, 2)
		>>> np.shape([0])
		(1,)
		>>> np.shape(0)
		()
		
		>>> a = np.array([(1, 2), (3, 4)], dtype=[('x', 'i4'), ('y', 'i4')])
		>>> np.shape(a)
		(2,)
		>>> a.shape
		(2,)
	**/
	static public function shape(a:Dynamic):Dynamic;
	/**
		sin(x[, out])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
		
		Returns
		-------
		y : array_like
		    The sine of each element of x.
		
		See Also
		--------
		arcsin, sinh, cos
		
		Notes
		-----
		The sine is one of the fundamental functions of trigonometry (the
		mathematical study of triangles).  Consider a circle of radius 1
		centered on the origin.  A ray comes in from the :math:`+x` axis, makes
		an angle at the origin (measured counter-clockwise from that axis), and
		departs from the origin.  The :math:`y` coordinate of the outgoing
		ray's intersection with the unit circle is the sine of that angle.  It
		ranges from -1 for :math:`x=3\pi / 2` to +1 for :math:`\pi / 2.`  The
		function has zeroes where the angle is a multiple of :math:`\pi`.
		Sines of angles between :math:`\pi` and :math:`2\pi` are negative.
		The numerous properties of the sine and related functions are included
		in any standard trigonometry text.
		
		Examples
		--------
		Print sine of one angle:
		
		>>> np.sin(np.pi/2.)
		1.0
		
		Print sines of an array of angles given in degrees:
		
		>>> np.sin(np.array((0., 30., 45., 60., 90.)) * np.pi / 180. )
		array([ 0.        ,  0.5       ,  0.70710678,  0.8660254 ,  1.        ])
		
		Plot the sine function:
		
		>>> import matplotlib.pylab as plt
		>>> x = np.linspace(-np.pi, np.pi, 201)
		>>> plt.plot(x, np.sin(x))
		>>> plt.xlabel('Angle [rad]')
		>>> plt.ylabel('sin(x)')
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Sum of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Elements to sum.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a sum is performed.
		    The default (`axis` = `None`) is perform a sum over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a sum is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		dtype : dtype, optional
		    The type of the returned array and of the accumulator in which
		    the elements are summed.  By default, the dtype of `a` is used.
		    An exception is when `a` has an integer type with less precision
		    than the default platform integer.  In that case, the default
		    platform integer is used instead.
		out : ndarray, optional
		    Array into which the output is placed.  By default, a new array is
		    created.  If `out` is given, it must be of the appropriate shape
		    (the shape of `a` with `axis` removed, i.e.,
		    ``numpy.delete(a.shape, axis)``).  Its type is preserved. See
		    `doc.ufuncs` (Section "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		sum_along_axis : ndarray
		    An array with the same shape as `a`, with the specified
		    axis removed.   If `a` is a 0-d array, or if `axis` is None, a scalar
		    is returned.  If an output array is specified, a reference to
		    `out` is returned.
		
		See Also
		--------
		ndarray.sum : Equivalent method.
		
		cumsum : Cumulative sum of array elements.
		
		trapz : Integration of array values using the composite trapezoidal rule.
		
		mean, average
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		The sum of an empty array is the neutral element 0:
		
		>>> np.sum([])
		0.0
		
		Examples
		--------
		>>> np.sum([0.5, 1.5])
		2.0
		>>> np.sum([0.5, 0.7, 0.2, 1.5], dtype=np.int32)
		1
		>>> np.sum([[0, 1], [0, 5]])
		6
		>>> np.sum([[0, 1], [0, 5]], axis=0)
		array([0, 6])
		>>> np.sum([[0, 1], [0, 5]], axis=1)
		array([1, 5])
		
		If the accumulator is too small, overflow occurs:
		
		>>> np.ones(128, dtype=np.int8).sum(dtype=np.int8)
		-128
	**/
	static public function sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		tan(x[, out])
		
		Compute tangent element-wise.
		
		Equivalent to ``np.sin(x)/np.cos(x)`` element-wise.
		
		Parameters
		----------
		x : array_like
		  Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		  The corresponding tangent values.
		
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
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> from math import pi
		>>> np.tan(np.array([-pi,pi/2,pi]))
		array([  1.22460635e-16,   1.63317787e+16,  -1.22460635e-16])
		>>>
		>>> # Example of providing the optional output parameter illustrating
		>>> # that what is returned is a reference to said parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function tan(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return an array of all value.
		    
	**/
	static public function valarray(shape:Dynamic, ?value:Dynamic, ?typecode:Dynamic):Dynamic;
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
		where(condition, [x, y])
		
		Return elements, either from `x` or `y`, depending on `condition`.
		
		If only `condition` is given, return ``condition.nonzero()``.
		
		Parameters
		----------
		condition : array_like, bool
		    When True, yield `x`, otherwise yield `y`.
		x, y : array_like, optional
		    Values from which to choose. `x` and `y` need to have the same
		    shape as `condition`.
		
		Returns
		-------
		out : ndarray or tuple of ndarrays
		    If both `x` and `y` are specified, the output array contains
		    elements of `x` where `condition` is True, and elements from
		    `y` elsewhere.
		
		    If only `condition` is given, return the tuple
		    ``condition.nonzero()``, the indices where `condition` is True.
		
		See Also
		--------
		nonzero, choose
		
		Notes
		-----
		If `x` and `y` are given and input arrays are 1-D, `where` is
		equivalent to::
		
		    [xv if c else yv for (c,xv,yv) in zip(condition,x,y)]
		
		Examples
		--------
		>>> np.where([[True, False], [True, True]],
		...          [[1, 2], [3, 4]],
		...          [[9, 8], [7, 6]])
		array([[1, 8],
		       [3, 4]])
		
		>>> np.where([[0, 1], [1, 0]])
		(array([0, 1]), array([1, 0]))
		
		>>> x = np.arange(9.).reshape(3, 3)
		>>> np.where( x > 5 )
		(array([2, 2, 2]), array([0, 1, 2]))
		>>> x[np.where( x > 3.0 )]               # Note: result is 1D.
		array([ 4.,  5.,  6.,  7.,  8.])
		>>> np.where(x < 5, x, -1)               # Note: broadcasting.
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -1.],
		       [-1., -1., -1.]])
		
		Find the indices of elements of `x` that are in `goodvalues`.
		
		>>> goodvalues = [3, 4, 7]
		>>> ix = np.in1d(x.ravel(), goodvalues).reshape(x.shape)
		>>> ix
		array([[False, False, False],
		       [ True,  True, False],
		       [False,  True, False]], dtype=bool)
		>>> np.where(ix)
		(array([1, 1, 2]), array([0, 1, 1]))
	**/
	static public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
}