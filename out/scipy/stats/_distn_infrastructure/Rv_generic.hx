/* This file is generated, do not edit! */
package scipy.stats._distn_infrastructure;
@:pythonImport("scipy.stats._distn_infrastructure", "rv_generic") extern class Rv_generic {
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
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?seed:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?seed:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Return the support of the (unscaled, unshifted) distribution.
		
		*Must* be overridden by distributions which have support dependent
		upon the shape parameters of the distribution.  Any such override
		*must not* set or change any of the class members, as these members
		are shared amongst all instances of the distribution.
		
		Parameters
		----------
		arg1, arg2, ... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		Returns
		-------
		a, b : numeric (float, or int or +/-np.inf)
		    end-points of the distribution's support for the specified
		    shape parameters.
	**/
	public function _get_support(?args:python.VarArgs<Dynamic>):Dynamic;
	public function _isf(q:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _logcdf(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _logsf(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _munp(n:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _open_support_mask(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _ppf(q:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _rvs(?args:python.VarArgs<Dynamic>):Dynamic;
	public function _sf(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _stats(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	public function _support_mask(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
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
		rv_discrete.ppf
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
		Return the support of the distribution.
		
		Parameters
		----------
		arg1, arg2, ... : array_like
		    The shape parameter(s) for the distribution (see docstring of the
		    instance object for more information).
		loc : array_like, optional
		    location parameter, Default is 0.
		scale : array_like, optional
		    scale parameter, Default is 1.
		Returns
		-------
		a, b : float
		    end-points of the distribution's support.
	**/
	public function support(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Float;
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