/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate", "dirichlet_gen") extern class Dirichlet_gen {
	/**
		Call self as a function.
	**/
	public function __call__(alpha:Dynamic, ?seed:Dynamic):Dynamic;
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
	public function ___init__(?seed:Dynamic):Dynamic;
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
	public function _get_random_state(random_state:Dynamic):Dynamic;
	/**
		Parameters
		----------
		x : ndarray
		    Points at which to evaluate the log of the probability
		    density function
		%(_dirichlet_doc_default_callparams)s
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'logpdf' instead.
	**/
	public function _logpdf(x:Dynamic, alpha:Dynamic):Dynamic;
	/**
		Compute the differential entropy of the dirichlet distribution.
		
		Parameters
		----------
		alpha : array_like
		    The concentration parameters. The number of entries determines the
		    dimensionality of the distribution.
		
		Returns
		-------
		h : scalar
		    Entropy of the Dirichlet distribution
	**/
	public function entropy(alpha:Dynamic):Dynamic;
	/**
		Log of the Dirichlet probability density function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		alpha : array_like
		    The concentration parameters. The number of entries determines the
		    dimensionality of the distribution.
		
		Returns
		-------
		pdf : ndarray
		    Log of the probability density function evaluated at `x`.
	**/
	public function logpdf(x:Dynamic, alpha:Dynamic):Dynamic;
	/**
		Compute the mean of the dirichlet distribution.
		
		Parameters
		----------
		alpha : array_like
		    The concentration parameters. The number of entries determines the
		    dimensionality of the distribution.
		
		Returns
		-------
		mu : scalar
		    Mean of the Dirichlet distribution
	**/
	public function mean(alpha:Dynamic):Dynamic;
	/**
		The Dirichlet probability density function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		alpha : array_like
		    The concentration parameters. The number of entries determines the
		    dimensionality of the distribution.
		
		Returns
		-------
		pdf : ndarray
		    The probability density function evaluated at `x`.
	**/
	public function pdf(x:Dynamic, alpha:Dynamic):Dynamic;
	/**
		Get or set the RandomState object for generating random variates.
		
		This can be either None or an existing RandomState object.
		
		If None (or np.random), use the RandomState singleton used by np.random.
		If already a RandomState instance, use it.
		If an int, use a new RandomState instance seeded with seed.
	**/
	public var random_state : Dynamic;
	/**
		Draw random samples from a Dirichlet distribution.
		
		Parameters
		----------
		alpha : array_like
		    The concentration parameters. The number of entries determines the
		    dimensionality of the distribution.
		size : int, optional
		    Number of samples to draw (default 1).
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Returns
		-------
		rvs : ndarray or scalar
		    Random variates of size (`size`, `N`), where `N` is the
		    dimension of the random variable.
	**/
	public function rvs(alpha:Dynamic, ?size:Dynamic, ?random_state:Dynamic):Dynamic;
	/**
		Compute the variance of the dirichlet distribution.
		
		Parameters
		----------
		alpha : array_like
		    The concentration parameters. The number of entries determines the
		    dimensionality of the distribution.
		
		Returns
		-------
		v : scalar
		    Variance of the Dirichlet distribution
	**/
	@:native("var")
	public function _var(alpha:Dynamic):Dynamic;
}