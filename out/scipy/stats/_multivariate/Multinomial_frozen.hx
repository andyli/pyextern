/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate", "multinomial_frozen") extern class Multinomial_frozen {
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
	public function ___init__(n:Dynamic, p:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(n:Dynamic, p:Dynamic, ?seed:Dynamic):Void;
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
	/**
		Covariance matrix of the multinomial distribution.
		
		Parameters
		----------
		
		
		Returns
		-------
		cov : ndarray
		    The covariance matrix of the distribution
	**/
	public function cov():Dynamic;
	public function entropy():Dynamic;
	/**
		Log of the Multinomial probability mass function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		
		
		Returns
		-------
		logpmf : ndarray or scalar
		    Log of the probability mass function evaluated at `x`
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	public function logpmf(x:Dynamic):Dynamic;
	/**
		Mean of the Multinomial distribution
		
		Parameters
		----------
		
		
		Returns
		-------
		mean : float
		    The mean of the distribution
	**/
	public function mean():Float;
	/**
		Multinomial probability mass function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		
		
		Returns
		-------
		pmf : ndarray or scalar
		    Probability density function evaluated at `x`
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	public function pmf(x:Dynamic):Dynamic;
	public var random_state : Dynamic;
	/**
		Draw random samples from a Multinomial distribution.
		
		Parameters
		----------
		
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
		See class definition for a detailed description of parameters.
	**/
	public function rvs(?size:Dynamic, ?random_state:Dynamic):Dynamic;
}