/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate", "multivariate_normal_frozen") extern class Multivariate_normal_frozen {
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
		Create a frozen multivariate normal distribution.
		
		Parameters
		----------
		mean : array_like, optional
		    Mean of the distribution (default zero)
		cov : array_like, optional
		    Covariance matrix of the distribution (default one)
		allow_singular : bool, optional
		    If this flag is True then tolerate a singular
		    covariance matrix (default False).
		seed : None or int or np.random.RandomState instance, optional
		    This parameter defines the RandomState object to use for drawing
		    random variates.
		    If None (or np.random), the global np.random state is used.
		    If integer, it is used to seed the local RandomState instance
		    Default is None.
		
		Examples
		--------
		When called with the default parameters, this will create a 1D random
		variable with mean 0 and covariance 1:
		
		>>> from scipy.stats import multivariate_normal
		>>> r = multivariate_normal()
		>>> r.mean
		array([ 0.])
		>>> r.cov
		array([[1.]])
	**/
	@:native("__init__")
	public function ___init__(?mean:Dynamic, ?cov:Dynamic, ?allow_singular:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Create a frozen multivariate normal distribution.
		
		Parameters
		----------
		mean : array_like, optional
		    Mean of the distribution (default zero)
		cov : array_like, optional
		    Covariance matrix of the distribution (default one)
		allow_singular : bool, optional
		    If this flag is True then tolerate a singular
		    covariance matrix (default False).
		seed : None or int or np.random.RandomState instance, optional
		    This parameter defines the RandomState object to use for drawing
		    random variates.
		    If None (or np.random), the global np.random state is used.
		    If integer, it is used to seed the local RandomState instance
		    Default is None.
		
		Examples
		--------
		When called with the default parameters, this will create a 1D random
		variable with mean 0 and covariance 1:
		
		>>> from scipy.stats import multivariate_normal
		>>> r = multivariate_normal()
		>>> r.mean
		array([ 0.])
		>>> r.cov
		array([[1.]])
	**/
	public function new(?mean:Dynamic, ?cov:Dynamic, ?allow_singular:Dynamic, ?seed:Dynamic):Void;
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
		Computes the differential entropy of the multivariate normal.
		
		Returns
		-------
		h : scalar
		    Entropy of the multivariate normal distribution
	**/
	public function entropy():Dynamic;
	/**
		Log of the multivariate normal probability density function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		
		
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
		Multivariate normal probability density function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		
		
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
		Draw random samples from a multivariate normal distribution.
		
		Parameters
		----------
		
		size : integer, optional
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
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	public function rvs(?size:Dynamic, ?random_state:Dynamic):Dynamic;
}