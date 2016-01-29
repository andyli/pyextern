/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate", "matrix_normal_frozen") extern class Matrix_normal_frozen {
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
		Create a frozen matrix normal distribution.
		
		Parameters
		----------
		%(_matnorm_doc_default_callparams)s
		seed : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Examples
		--------
		>>> from scipy.stats import matrix_normal
		
		>>> distn = matrix_normal(mean=np.zeros((3,3)))
		>>> X = distn.rvs(); X
		array([[-0.02976962,  0.93339138, -0.09663178],
		       [ 0.67405524,  0.28250467, -0.93308929],
		       [-0.31144782,  0.74535536,  1.30412916]])
		>>> distn.pdf(X)
		2.5160642368346784e-05
		>>> distn.logpdf(X)
		-10.590229595124615
	**/
	@:native("__init__")
	public function ___init__(?mean:Dynamic, ?rowcov:Dynamic, ?colcov:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Create a frozen matrix normal distribution.
		
		Parameters
		----------
		%(_matnorm_doc_default_callparams)s
		seed : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Examples
		--------
		>>> from scipy.stats import matrix_normal
		
		>>> distn = matrix_normal(mean=np.zeros((3,3)))
		>>> X = distn.rvs(); X
		array([[-0.02976962,  0.93339138, -0.09663178],
		       [ 0.67405524,  0.28250467, -0.93308929],
		       [-0.31144782,  0.74535536,  1.30412916]])
		>>> distn.pdf(X)
		2.5160642368346784e-05
		>>> distn.logpdf(X)
		-10.590229595124615
	**/
	public function new(?mean:Dynamic, ?rowcov:Dynamic, ?colcov:Dynamic, ?seed:Dynamic):Void;
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
		Log of the matrix normal probability density function.
		
		Parameters
		----------
		X : array_like
		    Quantiles, with the last two axes of `X` denoting the components.
		
		
		Returns
		-------
		logpdf : ndarray
		    Log of the probability density function evaluated at `X`
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	public function logpdf(X:Dynamic):Dynamic;
	/**
		Matrix normal probability density function.
		
		Parameters
		----------
		X : array_like
		    Quantiles, with the last two axes of `X` denoting the components.
		
		
		Returns
		-------
		pdf : ndarray
		    Probability density function evaluated at `X`
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	public function pdf(X:Dynamic):Dynamic;
	public var random_state : Dynamic;
	/**
		Draw random samples from a matrix normal distribution.
		
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
		    Random variates of size (`size`, `dims`), where `dims` is the
		    dimension of the random matrices.
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	public function rvs(?size:Dynamic, ?random_state:Dynamic):Dynamic;
}