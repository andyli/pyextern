/* This file is generated, do not edit! */
package scipy.stats._discrete_distns;
@:pythonImport("scipy.stats._discrete_distns", "binom_gen") extern class Binom_gen {
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
	public function __call__(args:Dynamic, kwds:Dynamic):Dynamic;
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
	public function ___init__(?a:Dynamic, ?b:Dynamic, ?name:Dynamic, ?badvalue:Dynamic, ?moment_tol:Dynamic, ?values:Dynamic, ?inc:Dynamic, ?longname:Dynamic, ?shapes:Dynamic, ?extradoc:Dynamic, ?seed:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function _argcheck(n:Dynamic, p:Dynamic):Dynamic;
	public function _cdf(x:Dynamic, n:Dynamic, p:Dynamic):Dynamic;
	public function _cdf_single(k:Dynamic, args:Dynamic):Dynamic;
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
	public function _entropy(n:Dynamic, p:Dynamic):Dynamic;
	public function _isf(q:Dynamic, args:Dynamic):Dynamic;
	public function _logcdf(x:Dynamic, args:Dynamic):Dynamic;
	public function _logpmf(x:Dynamic, n:Dynamic, p:Dynamic):Dynamic;
	public function _logsf(x:Dynamic, args:Dynamic):Dynamic;
	public function _munp(n:Dynamic, args:Dynamic):Dynamic;
	public function _nonzero(k:Dynamic, args:Dynamic):Dynamic;
	public function _pmf(x:Dynamic, n:Dynamic, p:Dynamic):Dynamic;
	public function _ppf(q:Dynamic, n:Dynamic, p:Dynamic):Dynamic;
	public function _rvs(n:Dynamic, p:Dynamic):Dynamic;
	public function _sf(x:Dynamic, n:Dynamic, p:Dynamic):Dynamic;
	public function _stats(n:Dynamic, p:Dynamic, ?moments:Dynamic):Dynamic;
	/**
		Cumulative distribution function of the given RV.
		
		Parameters
		----------
		k : array_like, int
		    Quantiles.
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    Location parameter (default=0).
		
		Returns
		-------
		cdf : ndarray
		    Cumulative distribution function evaluated at `k`.
	**/
	public function cdf(k:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
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
	public function entropy(args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Calculate expected value of a function with respect to the distribution
		for discrete distribution.
		
		Parameters
		----------
		func : callable, optional
		    Function for which the expectation value is calculated.
		    Takes only one argument.
		    The default is the identity mapping f(k) = k.
		args : tuple, optional
		    Shape parameters of the distribution.
		loc : float, optional
		    Location parameter.
		    Default is 0.
		lb, ub : int, optional
		    Lower and upper bound for integration, default is set to the
		    support of the distribution, inclusive (``ul <= k <= ub``).
		conditional : bool, optional
		    If true then the expectation is corrected by the conditional
		    probability of the summation interval. The return value is the
		    expectation of the function, `func`, conditional on being in
		    the given interval (k such that ``ul <= k <= ub``).
		    Default is False.
		
		Returns
		-------
		expect : float
		    Expected value.
		
		Notes
		-----
		* function is not vectorized
		* accuracy: uses self.moment_tol as stopping criterium
		  for heavy tailed distribution e.g. zipf(4), accuracy for
		  mean, variance in example is only 1e-5,
		  increasing precision (moment_tol) makes zipf very slow
		* suppnmin=100 internal parameter for minimum number of points to
		  evaluate could be added as keyword parameter, to evaluate functions
		  with non-monotonic shapes, points include integers in (-suppnmin,
		  suppnmin)
		* uses maxcount=1000 limits the number of points that are evaluated
		  to break loop for infinite sums
		  (a maximum of suppnmin+1000 positive plus suppnmin+1000 negative
		  integers are evaluated)
	**/
	public function expect(?func:Dynamic, ?args:Dynamic, ?loc:Dynamic, ?lb:Dynamic, ?ub:Dynamic, ?conditional:Dynamic):Dynamic;
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
	public function freeze(args:Dynamic, kwds:Dynamic):Dynamic;
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
	public function interval(alpha:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Inverse survival function (inverse of `sf`) at q of the given RV.
		
		Parameters
		----------
		q : array_like
		    Upper tail probability.
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    Location parameter (default=0).
		
		Returns
		-------
		k : ndarray or scalar
		    Quantile corresponding to the upper tail probability, q.
	**/
	public function isf(q:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Log of the cumulative distribution function at k of the given RV.
		
		Parameters
		----------
		k : array_like, int
		    Quantiles.
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    Location parameter (default=0).
		
		Returns
		-------
		logcdf : array_like
		    Log of the cumulative distribution function evaluated at k.
	**/
	public function logcdf(k:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Log of the probability mass function at k of the given RV.
		
		Parameters
		----------
		k : array_like
		    Quantiles.
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    Location parameter. Default is 0.
		
		Returns
		-------
		logpmf : array_like
		    Log of the probability mass function evaluated at k.
	**/
	public function logpmf(k:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Log of the survival function of the given RV.
		
		Returns the log of the "survival function," defined as 1 - `cdf`,
		evaluated at `k`.
		
		Parameters
		----------
		k : array_like
		    Quantiles.
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    Location parameter (default=0).
		
		Returns
		-------
		logsf : ndarray
		    Log of the survival function evaluated at `k`.
	**/
	public function logsf(k:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
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
	public function mean(args:Dynamic, kwds:Dynamic):Dynamic;
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
	public function median(args:Dynamic, kwds:Dynamic):Dynamic;
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
	public function moment(n:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Probability mass function at k of the given RV.
		
		Parameters
		----------
		k : array_like
		    Quantiles.
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information)
		loc : array_like, optional
		    Location parameter (default=0).
		
		Returns
		-------
		pmf : array_like
		    Probability mass function evaluated at k
	**/
	public function pmf(k:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Percent point function (inverse of `cdf`) at q of the given RV.
		
		Parameters
		----------
		q : array_like
		    Lower tail probability.
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    Location parameter (default=0).
		
		Returns
		-------
		k : array_like
		    Quantile corresponding to the lower tail probability, q.
	**/
	public function ppf(q:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
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
		size : int or tuple of ints, optional
		    Defining number of random variates (Default is 1).  Note that `size`
		    has to be given as keyword, not as positional argument.
		random_state : None or int or ``np.random.RandomState`` instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None, rely on ``self.random_state``.
		    Default is None.
		
		Returns
		-------
		rvs : ndarray or scalar
		    Random variates of given `size`.
	**/
	public function rvs(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Survival function (1 - `cdf`) at k of the given RV.
		
		Parameters
		----------
		k : array_like
		    Quantiles.
		arg1, arg2, arg3,... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    Location parameter (default=0).
		
		Returns
		-------
		sf : array_like
		    Survival function evaluated at k.
	**/
	public function sf(k:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
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
	public function stats(args:Dynamic, kwds:Dynamic):Dynamic;
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
	public function std(args:Dynamic, kwds:Dynamic):Dynamic;
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
	public function _var(args:Dynamic, kwds:Dynamic):Dynamic;
}