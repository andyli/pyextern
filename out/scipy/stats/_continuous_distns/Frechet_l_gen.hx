/* This file is generated, do not edit! */
package scipy.stats._continuous_distns;
@:pythonImport("scipy.stats._continuous_distns", "frechet_l_gen") extern class Frechet_l_gen {
	/**
		Freeze the distribution for the given arguments.
		
		Parameters
		----------
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution.  Should include all
		    the non-optional arguments, may include ``loc`` and ``scale``.
		
		Returns
		-------
		rv_frozen : rv_frozen instance
		    The frozen distribution.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?momtype:Dynamic, ?a:Dynamic, ?b:Dynamic, ?xtol:Dynamic, ?badvalue:Dynamic, ?name:Dynamic, ?longname:Dynamic, ?shapes:Dynamic, ?extradoc:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?momtype:Dynamic, ?a:Dynamic, ?b:Dynamic, ?xtol:Dynamic, ?badvalue:Dynamic, ?name:Dynamic, ?longname:Dynamic, ?shapes:Dynamic, ?extradoc:Dynamic, ?seed:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Default check for correct values on args and keywords.
		
		Returns condition array of 1's where arguments are correct and
		 0's where they are not.
	**/
	public function _argcheck(?args:python.VarArgs<Dynamic>):Dynamic;
	public function _argcheck_rvs(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _cdf(x:Dynamic, c:Dynamic):Dynamic;
	public function _cdf_single(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Construct the parser for the shape arguments.
		
		Generates the argument-parsing functions dynamically and attaches
		them to the instance.
		Is supposed to be called in __init__ of a class for each distribution.
		
		If self.shapes is a non-empty string, interprets it as a
		comma-separated list of shape parameters.
		
		Otherwise inspects the call signatures of `meths_to_inspect`
		and constructs the argument-parsing functions from these.
		In this case also sets `shapes` and `numargs`.
	**/
	public function _construct_argparser(meths_to_inspect:Dynamic, locscale_in:Dynamic, locscale_out:Dynamic):Dynamic;
	/**
		Construct instance docstring from the default template.
	**/
	public function _construct_default_doc(?longname:Dynamic, ?extradoc:Dynamic, ?docdict:Dynamic, ?discrete:Dynamic):Dynamic;
	/**
		Construct the instance docstring with string substitutions.
	**/
	public function _construct_doc(docdict:Dynamic, ?shapes_vals:Dynamic):Dynamic;
	public function _entropy(c:Dynamic):Dynamic;
	/**
		Estimate loc and scale parameters from data accounting for support.
		
		Parameters
		----------
		data : array_like
		    Data to fit.
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		
		Returns
		-------
		Lhat : float
		    Estimated location parameter for the data.
		Shat : float
		    Estimated scale parameter for the data.
	**/
	public function _fit_loc_scale_support(data:Dynamic, ?args:python.VarArgs<Dynamic>):Float;
	public function _fitstart(data:Dynamic, ?args:Dynamic):Dynamic;
	public function _isf(q:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _logcdf(x:Dynamic, c:Dynamic):Dynamic;
	public function _logpdf(x:Dynamic, c:Dynamic):Dynamic;
	public function _logsf(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _mom0_sc(m:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _mom1_sc(m:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _mom_integ0(x:Dynamic, m:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _mom_integ1(q:Dynamic, m:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _munp(n:Dynamic, c:Dynamic):Dynamic;
	public function _nnlf(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _nnlf_and_penalty(x:Dynamic, args:Dynamic):Dynamic;
	public function _open_support_mask(x:Dynamic):Dynamic;
	public function _pdf(x:Dynamic, c:Dynamic):Dynamic;
	/**
		Return penalized negative loglikelihood function,
		i.e., - sum (log pdf(x, theta), axis=0) + penalty
		   where theta are the parameters (including loc and scale)
	**/
	public function _penalized_nnlf(theta:Dynamic, x:Dynamic):Dynamic;
	public function _ppf(q:Dynamic, c:Dynamic):Dynamic;
	public function _ppf_single(q:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _ppf_to_solve(x:Dynamic, q:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _reduce_func(args:Dynamic, kwds:Dynamic):Dynamic;
	public function _rvs(?args:python.VarArgs<Dynamic>):Dynamic;
	public function _sf(x:Dynamic, c:Dynamic):Dynamic;
	public function _stats(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	public function _support_mask(x:Dynamic):Dynamic;
	public function _unpack_loc_scale(theta:Dynamic):Dynamic;
	/**
		Return the current version of _ctor_param, possibly updated by user.
		
		Used by freezing and pickling.
		Keep this in sync with the signature of __init__.
	**/
	public function _updated_ctor_param():Dynamic;
	/**
		Cumulative distribution function of the given RV.
		
		Parameters
		----------
		x : array_like
		    quantiles
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		cdf : ndarray
		    Cumulative distribution function evaluated at `x`
	**/
	public function cdf(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Differential entropy of the RV.
		
		Parameters
		----------
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    Location parameter (default=0).
		scale : array_like, optional  (continuous distributions only).
		    Scale parameter (default=1).
		
		Notes
		-----
		Entropy is defined base `e`:
		
		>>> drv = rv_discrete(values=((0, 1), (0.5, 0.5)))
		>>> np.allclose(drv.entropy(), np.log(2.0))
		True
	**/
	public function entropy(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate expected value of a function with respect to the
		distribution.
		
		The expected value of a function ``f(x)`` with respect to a
		distribution ``dist`` is defined as::
		
		            ubound
		    E[x] = Integral(f(x) * dist.pdf(x))
		            lbound
		
		Parameters
		----------
		func : callable, optional
		    Function for which integral is calculated. Takes only one argument.
		    The default is the identity mapping f(x) = x.
		args : tuple, optional
		    Shape parameters of the distribution.
		loc : float, optional
		    Location parameter (default=0).
		scale : float, optional
		    Scale parameter (default=1).
		lb, ub : scalar, optional
		    Lower and upper bound for integration. Default is set to the
		    support of the distribution.
		conditional : bool, optional
		    If True, the integral is corrected by the conditional probability
		    of the integration interval.  The return value is the expectation
		    of the function, conditional on being in the given interval.
		    Default is False.
		
		Additional keyword arguments are passed to the integration routine.
		
		Returns
		-------
		expect : float
		    The calculated expected value.
		
		Notes
		-----
		The integration behavior of this function is inherited from
		`integrate.quad`.
	**/
	public function expect(?func:Dynamic, ?args:Dynamic, ?loc:Dynamic, ?scale:Dynamic, ?lb:Dynamic, ?ub:Dynamic, ?conditional:Dynamic, ?kwds:python.KwArgs<Dynamic>):Float;
	/**
		Return MLEs for shape (if applicable), location, and scale
		parameters from data.
		
		MLE stands for Maximum Likelihood Estimate.  Starting estimates for
		the fit are given by input arguments; for any arguments not provided
		with starting estimates, ``self._fitstart(data)`` is called to generate
		such.
		
		One can hold some parameters fixed to specific values by passing in
		keyword arguments ``f0``, ``f1``, ..., ``fn`` (for shape parameters)
		and ``floc`` and ``fscale`` (for location and scale parameters,
		respectively).
		
		Parameters
		----------
		data : array_like
		    Data to use in calculating the MLEs.
		args : floats, optional
		    Starting value(s) for any shape-characterizing arguments (those not
		    provided will be determined by a call to ``_fitstart(data)``).
		    No default value.
		kwds : floats, optional
		    Starting values for the location and scale parameters; no default.
		    Special keyword arguments are recognized as holding certain
		    parameters fixed:
		
		    - f0...fn : hold respective shape parameters fixed.
		      Alternatively, shape parameters to fix can be specified by name.
		      For example, if ``self.shapes == "a, b"``, ``fa``and ``fix_a``
		      are equivalent to ``f0``, and ``fb`` and ``fix_b`` are
		      equivalent to ``f1``.
		
		    - floc : hold location parameter fixed to specified value.
		
		    - fscale : hold scale parameter fixed to specified value.
		
		    - optimizer : The optimizer to use.  The optimizer must take ``func``,
		      and starting position as the first two arguments,
		      plus ``args`` (for extra arguments to pass to the
		      function to be optimized) and ``disp=0`` to suppress
		      output as keyword arguments.
		
		Returns
		-------
		mle_tuple : tuple of floats
		    MLEs for any shape parameters (if applicable), followed by those
		    for location and scale. For most random variables, shape statistics
		    will be returned, but there are exceptions (e.g. ``norm``).
		
		Notes
		-----
		This fit is computed by maximizing a log-likelihood function, with
		penalty applied for samples outside of range of the distribution. The
		returned answer is not guaranteed to be the globally optimal MLE, it
		may only be locally optimal, or the optimization may fail altogether.
		
		
		Examples
		--------
		
		Generate some data to fit: draw random variates from the `beta`
		distribution
		
		>>> from scipy.stats import beta
		>>> a, b = 1., 2.
		>>> x = beta.rvs(a, b, size=1000)
		
		Now we can fit all four parameters (``a``, ``b``, ``loc`` and ``scale``):
		
		>>> a1, b1, loc1, scale1 = beta.fit(x)
		
		We can also use some prior knowledge about the dataset: let's keep
		``loc`` and ``scale`` fixed:
		
		>>> a1, b1, loc1, scale1 = beta.fit(x, floc=0, fscale=1)
		>>> loc1, scale1
		(0, 1)
		
		We can also keep shape parameters fixed by using ``f``-keywords. To
		keep the zero-th shape parameter ``a`` equal 1, use ``f0=1`` or,
		equivalently, ``fa=1``:
		
		>>> a1, b1, loc1, scale1 = beta.fit(x, fa=1, floc=0, fscale=1)
		>>> a1
		1
		
		Not all distributions return estimates for the shape parameters.
		``norm`` for example just returns estimates for location and scale:
		
		>>> from scipy.stats import norm
		>>> x = norm.rvs(a, b, size=1000, random_state=123)
		>>> loc1, scale1 = norm.fit(x)
		>>> loc1, scale1
		(0.92087172783841631, 2.0015750750324668)
	**/
	public function fit(data:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Estimate loc and scale parameters from data using 1st and 2nd moments.
		
		Parameters
		----------
		data : array_like
		    Data to fit.
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		
		Returns
		-------
		Lhat : float
		    Estimated location parameter for the data.
		Shat : float
		    Estimated scale parameter for the data.
	**/
	public function fit_loc_scale(data:Dynamic, ?args:python.VarArgs<Dynamic>):Float;
	/**
		Freeze the distribution for the given arguments.
		
		Parameters
		----------
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution.  Should include all
		    the non-optional arguments, may include ``loc`` and ``scale``.
		
		Returns
		-------
		rv_frozen : rv_frozen instance
		    The frozen distribution.
	**/
	public function freeze(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Confidence interval with equal areas around the median.
		
		Parameters
		----------
		alpha : array_like of float
		    Probability that an rv will be drawn from the returned range.
		    Each value should be in the range [0, 1].
		arg1, arg2, ... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    location parameter, Default is 0.
		scale : array_like, optional
		    scale parameter, Default is 1.
		
		Returns
		-------
		a, b : ndarray of float
		    end-points of range that contain ``100 * alpha %`` of the rv's
		    possible values.
	**/
	public function interval(alpha:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Inverse survival function (inverse of `sf`) at q of the given RV.
		
		Parameters
		----------
		q : array_like
		    upper tail probability
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		x : ndarray or scalar
		    Quantile corresponding to the upper tail probability q.
	**/
	public function isf(q:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Log of the cumulative distribution function at x of the given RV.
		
		Parameters
		----------
		x : array_like
		    quantiles
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		logcdf : array_like
		    Log of the cumulative distribution function evaluated at x
	**/
	public function logcdf(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Log of the probability density function at x of the given RV.
		
		This uses a more numerically accurate calculation if available.
		
		Parameters
		----------
		x : array_like
		    quantiles
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		logpdf : array_like
		    Log of the probability density function evaluated at x
	**/
	public function logpdf(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Log of the survival function of the given RV.
		
		Returns the log of the "survival function," defined as (1 - `cdf`),
		evaluated at `x`.
		
		Parameters
		----------
		x : array_like
		    quantiles
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		logsf : ndarray
		    Log of the survival function evaluated at `x`.
	**/
	public function logsf(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Mean of the distribution.
		
		Parameters
		----------
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		mean : float
		    the mean of the distribution
	**/
	public function mean(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Float;
	/**
		Median of the distribution.
		
		Parameters
		----------
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    Location parameter, Default is 0.
		scale : array_like, optional
		    Scale parameter, Default is 1.
		
		Returns
		-------
		median : float
		    The median of the distribution.
		
		See Also
		--------
		stats.distributions.rv_discrete.ppf
		    Inverse of the CDF
	**/
	public function median(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Float;
	/**
		n-th order non-central moment of distribution.
		
		Parameters
		----------
		n : int, n >= 1
		    Order of moment.
		arg1, arg2, arg3,... : float
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
	**/
	public function moment(n:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return negative loglikelihood function.
		
		Notes
		-----
		This is ``-sum(log pdf(x, theta), axis=0)`` where `theta` are the
		parameters (including loc and scale).
	**/
	public function nnlf(theta:Dynamic, x:Dynamic):Dynamic;
	/**
		Probability density function at x of the given RV.
		
		Parameters
		----------
		x : array_like
		    quantiles
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		pdf : ndarray
		    Probability density function evaluated at x
	**/
	public function pdf(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Percent point function (inverse of `cdf`) at q of the given RV.
		
		Parameters
		----------
		q : array_like
		    lower tail probability
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		x : array_like
		    quantile corresponding to the lower tail probability q.
	**/
	public function ppf(q:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Get or set the RandomState object for generating random variates.
		
		This can be either None or an existing RandomState object.
		
		If None (or np.random), use the RandomState singleton used by np.random.
		If already a RandomState instance, use it.
		If an int, use a new RandomState instance seeded with seed.
	**/
	public var random_state : Dynamic;
	/**
		Random variates of given type.
		
		Parameters
		----------
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    Location parameter (default=0).
		scale : array_like, optional
		    Scale parameter (default=1).
		size : int or tuple of ints, optional
		    Defining number of random variates (default is 1).
		random_state : None or int or ``np.random.RandomState`` instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None, rely on ``self.random_state``.
		    Default is None.
		
		Returns
		-------
		rvs : ndarray or scalar
		    Random variates of given `size`.
	**/
	public function rvs(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Survival function (1 - `cdf`) at x of the given RV.
		
		Parameters
		----------
		x : array_like
		    quantiles
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		sf : array_like
		    Survival function evaluated at x
	**/
	public function sf(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Some statistics of the given RV.
		
		Parameters
		----------
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional (continuous RVs only)
		    scale parameter (default=1)
		moments : str, optional
		    composed of letters ['mvsk'] defining which moments to compute:
		    'm' = mean,
		    'v' = variance,
		    's' = (Fisher's) skew,
		    'k' = (Fisher's) kurtosis.
		    (default is 'mv')
		
		Returns
		-------
		stats : sequence
		    of requested moments.
	**/
	public function stats(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Standard deviation of the distribution.
		
		Parameters
		----------
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		std : float
		    standard deviation of the distribution
	**/
	public function std(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Float;
	/**
		Variance of the distribution.
		
		Parameters
		----------
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    location parameter (default=0)
		scale : array_like, optional
		    scale parameter (default=1)
		
		Returns
		-------
		var : float
		    the variance of the distribution
	**/
	@:native("var")
	public function _var(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Float;
}