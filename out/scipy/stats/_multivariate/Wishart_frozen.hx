/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate", "wishart_frozen") extern class Wishart_frozen {
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
	public function ___init__(df:Dynamic, scale:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(df:Dynamic, scale:Dynamic, ?seed:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Compute the differential entropy of the Wishart.
		
		Parameters
		----------
		
		
		Returns
		-------
		h : scalar
		    Entropy of the Wishart distribution
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	public function entropy():Dynamic;
	/**
		Log of the inverse Wishart probability density function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		    Each quantile must be a symmetric positive definite matrix.
		
		
		Returns
		-------
		pdf : ndarray
		    Log of the probability density function evaluated at `x`
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	public function logpdf(x:Dynamic):Dynamic;
	/**
		Mean of the inverse Wishart distribution
		
		Only valid if the degrees of freedom are greater than the dimension of
		the scale matrix plus one.
		
		Parameters
		----------
		
		
		Returns
		-------
		mean : float or None
		    The mean of the distribution
	**/
	public function mean():Dynamic;
	/**
		Mode of the inverse Wishart distribution
		
		Parameters
		----------
		
		
		Returns
		-------
		mode : float
		    The Mode of the distribution
	**/
	public function mode():Float;
	/**
		Inverse Wishart probability density function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		    Each quantile must be a symmetric positive definite matrix.
		
		
		
		Returns
		-------
		pdf : ndarray
		    Probability density function evaluated at `x`
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	public function pdf(x:Dynamic):Dynamic;
	public var random_state : Dynamic;
	/**
		Draw random samples from an inverse Wishart distribution.
		
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
		rvs : ndarray
		    Random variates of shape (`size`) + (`dim`, `dim), where `dim` is
		    the dimension of the scale matrix.
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	public function rvs(?size:Dynamic, ?random_state:Dynamic):Dynamic;
	/**
		Variance of the inverse Wishart distribution
		
		Only valid if the degrees of freedom are greater than the dimension of
		the scale matrix plus three.
		
		Parameters
		----------
		
		
		Returns
		-------
		var : float
		    The variance of the distribution
	**/
	@:native("var")
	public function _var():Float;
}