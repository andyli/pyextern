/* This file is generated, do not edit! */
package scipy.stats._continuous_distns;
@:pythonImport("scipy.stats._continuous_distns", "frechet_l_gen") extern class Frechet_l_gen {
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function __call__(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	public function _open_support_mask(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
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
	public function _support_mask(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function _unpack_loc_scale(theta:Dynamic):Dynamic;
	/**
		Return the current version of _ctor_param, possibly updated by user.
		
		Used by freezing and pickling.
		Keep this in sync with the signature of __init__.
	**/
	public function _updated_ctor_param():Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function cdf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function entropy(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function expect(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function fit(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function fit_loc_scale(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function freeze(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function interval(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function isf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function logcdf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function logpdf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function logsf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function mean(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function median(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function moment(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function nnlf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function pdf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function ppf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Get or set the RandomState object for generating random variates.
		
		This can be either None or an existing RandomState object.
		
		If None (or np.random), use the RandomState singleton used by np.random.
		If already a RandomState instance, use it.
		If an int, use a new RandomState instance seeded with seed.
	**/
	public var random_state : Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function rvs(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function sf(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function stats(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	static public function std(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		`frechet_l` is deprecated!
		The distribution `frechet_l` is a synonym for `weibull_max`; this historical
		usage is deprecated because of possible confusion with the (quite different)
		Frechet distribution.  To preserve the existing behavior of the program, use
		`scipy.stats.weibull_max`.  For the Frechet distribution (i.e. the Type II
		extreme value distribution), use `scipy.stats.invweibull`.
	**/
	@:native("var")
	static public function _var(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
}