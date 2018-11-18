/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate", "multinomial_gen") extern class Multinomial_gen {
	/**
		Create a frozen multinomial distribution.
		
		See `multinomial_frozen` for more information.
	**/
	public function __call__(n:Dynamic, p:Dynamic, ?seed:Dynamic):Dynamic;
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
	public function _checkresult(result:Dynamic, cond:Dynamic, bad_value:Dynamic):Dynamic;
	public function _get_random_state(random_state:Dynamic):Dynamic;
	public function _logpmf(x:Dynamic, n:Dynamic, p:Dynamic):Dynamic;
	/**
		Return: n_, p_, npcond.
		
		n_ and p_ are arrays of the correct shape; npcond is a boolean array
		flagging values out of the domain.
	**/
	public function _process_parameters(n:Dynamic, p:Dynamic):Dynamic;
	/**
		Return: x_, xcond.
		
		x_ is an int array; xcond is a boolean array flagging values out of the
		domain.
	**/
	public function _process_quantiles(x:Dynamic, n:Dynamic, p:Dynamic):Dynamic;
	/**
		Covariance matrix of the multinomial distribution.
		
		Parameters
		----------
		n : int
		    Number of trials
		p : array_like
		    Probability of a trial falling into each category; should sum to 1
		
		Returns
		-------
		cov : ndarray
		    The covariance matrix of the distribution
	**/
	public function cov(n:Dynamic, p:Dynamic):Dynamic;
	/**
		Compute the entropy of the multinomial distribution.
		
		The entropy is computed using this expression:
		
		.. math::
		
		    f(x) = - \log n! - n\sum_{i=1}^k p_i \log p_i +
		    \sum_{i=1}^k \sum_{x=0}^n \binom n x p_i^x(1-p_i)^{n-x} \log x!
		
		Parameters
		----------
		%(_doc_default_callparams)s
		
		Returns
		-------
		h : scalar
		    Entropy of the Multinomial distribution
		
		Notes
		-----
		%(_doc_callparams_note)s
	**/
	public function entropy(n:Dynamic, p:Dynamic):Dynamic;
	/**
		Log of the Multinomial probability mass function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		    Each quantile must be a symmetric positive definite matrix.
		n : int
		    Number of trials
		p : array_like
		    Probability of a trial falling into each category; should sum to 1
		
		Returns
		-------
		logpmf : ndarray or scalar
		    Log of the probability mass function evaluated at `x`
		
		Notes
		-----
		`n` should be a positive integer. Each element of `p` should be in the
		interval :math:`[0,1]` and the elements should sum to 1. If they do not sum to
		1, the last element of the `p` array is not used and is replaced with the
		remaining probability left over from the earlier elements.
	**/
	public function logpmf(x:Dynamic, n:Dynamic, p:Dynamic):Dynamic;
	/**
		Mean of the Multinomial distribution
		
		Parameters
		----------
		n : int
		    Number of trials
		p : array_like
		    Probability of a trial falling into each category; should sum to 1
		
		Returns
		-------
		mean : float
		    The mean of the distribution
	**/
	public function mean(n:Dynamic, p:Dynamic):Float;
	/**
		Multinomial probability mass function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		    Each quantile must be a symmetric positive definite matrix.
		n : int
		    Number of trials
		p : array_like
		    Probability of a trial falling into each category; should sum to 1
		
		Returns
		-------
		pmf : ndarray or scalar
		    Probability density function evaluated at `x`
		
		Notes
		-----
		`n` should be a positive integer. Each element of `p` should be in the
		interval :math:`[0,1]` and the elements should sum to 1. If they do not sum to
		1, the last element of the `p` array is not used and is replaced with the
		remaining probability left over from the earlier elements.
	**/
	public function pmf(x:Dynamic, n:Dynamic, p:Dynamic):Dynamic;
	/**
		Get or set the RandomState object for generating random variates.
		
		This can be either None or an existing RandomState object.
		
		If None (or np.random), use the RandomState singleton used by np.random.
		If already a RandomState instance, use it.
		If an int, use a new RandomState instance seeded with seed.
	**/
	public var random_state : Dynamic;
	/**
		Draw random samples from a Multinomial distribution.
		
		Parameters
		----------
		n : int
		    Number of trials
		p : array_like
		    Probability of a trial falling into each category; should sum to 1
		size : integer or iterable of integers, optional
		    Number of samples to draw (default 1).
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Returns
		-------
		rvs : ndarray or scalar
		    Random variates of shape (`size`, `len(p)`)
		
		Notes
		-----
		`n` should be a positive integer. Each element of `p` should be in the
		interval :math:`[0,1]` and the elements should sum to 1. If they do not sum to
		1, the last element of the `p` array is not used and is replaced with the
		remaining probability left over from the earlier elements.
	**/
	public function rvs(n:Dynamic, p:Dynamic, ?size:Dynamic, ?random_state:Dynamic):Dynamic;
}