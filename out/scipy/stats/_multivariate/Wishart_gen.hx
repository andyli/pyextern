/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate", "wishart_gen") extern class Wishart_gen {
	/**
		Create a frozen Wishart distribution.
		
		See `wishart_frozen` for more information.
	**/
	public function __call__(?df:Dynamic, ?scale:Dynamic, ?seed:Dynamic):Dynamic;
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
	/**
		Compute Cholesky decomposition and determine (log(det(scale)).
		
		Parameters
		----------
		scale : ndarray
		    Scale matrix.
		
		Returns
		-------
		c_decomp : ndarray
		    The Cholesky decomposition of `scale`.
		logdet : scalar
		    The log of the determinant of `scale`.
		
		Notes
		-----
		This computation of ``logdet`` is equivalent to
		``np.linalg.slogdet(scale)``.  It is ~2x faster though.
	**/
	public function _cholesky_logdet(scale:Dynamic):Dynamic;
	/**
		Parameters
		----------
		dim : int
		    Dimension of the scale matrix
		df : int
		    Degrees of freedom
		log_det_scale : float
		    Logarithm of the determinant of the scale matrix
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'entropy' instead.
	**/
	public function _entropy(dim:Dynamic, df:Dynamic, log_det_scale:Dynamic):Dynamic;
	public function _get_random_state(random_state:Dynamic):Dynamic;
	/**
		Parameters
		----------
		x : ndarray
		    Points at which to evaluate the log of the probability
		    density function
		dim : int
		    Dimension of the scale matrix
		df : int
		    Degrees of freedom
		scale : ndarray
		    Scale matrix
		log_det_scale : float
		    Logarithm of the determinant of the scale matrix
		C : ndarray
		    Cholesky factorization of the scale matrix, lower triagular.
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'logpdf' instead.
	**/
	public function _logpdf(x:Dynamic, dim:Dynamic, df:Dynamic, scale:Dynamic, log_det_scale:Dynamic, C:Dynamic):Dynamic;
	/**
		Parameters
		----------
		dim : int
		    Dimension of the scale matrix
		%(_doc_default_callparams)s
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'mean' instead.
	**/
	public function _mean(dim:Dynamic, df:Dynamic, scale:Dynamic):Dynamic;
	/**
		Parameters
		----------
		dim : int
		    Dimension of the scale matrix
		%(_doc_default_callparams)s
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'mode' instead.
	**/
	public function _mode(dim:Dynamic, df:Dynamic, scale:Dynamic):Dynamic;
	public function _process_parameters(df:Dynamic, scale:Dynamic):Dynamic;
	/**
		Adjust quantiles array so that last axis labels the components of
		each data point.
	**/
	public function _process_quantiles(x:Dynamic, dim:Dynamic):Dynamic;
	public function _process_size(size:Dynamic):Dynamic;
	/**
		Parameters
		----------
		n : integer
		    Number of variates to generate
		shape : iterable
		    Shape of the variates to generate
		dim : int
		    Dimension of the scale matrix
		df : int
		    Degrees of freedom
		scale : ndarray
		    Scale matrix
		C : ndarray
		    Cholesky factorization of the scale matrix, lower triangular.
		%(_doc_random_state)s
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'rvs' instead.
	**/
	public function _rvs(n:Dynamic, shape:Dynamic, dim:Dynamic, df:Dynamic, C:Dynamic, random_state:Dynamic):Dynamic;
	/**
		Parameters
		----------
		n : integer
		    Number of variates to generate
		shape : iterable
		    Shape of the variates to generate
		dim : int
		    Dimension of the scale matrix
		df : int
		    Degrees of freedom
		random_state : np.random.RandomState instance
		    RandomState used for drawing the random variates.
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'rvs' instead.
	**/
	public function _standard_rvs(n:Dynamic, shape:Dynamic, dim:Dynamic, df:Dynamic, random_state:Dynamic):Dynamic;
	/**
		Parameters
		----------
		dim : int
		    Dimension of the scale matrix
		%(_doc_default_callparams)s
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'var' instead.
	**/
	public function _var(dim:Dynamic, df:Dynamic, scale:Dynamic):Dynamic;
	/**
		Compute the differential entropy of the Wishart.
		
		Parameters
		----------
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		
		Returns
		-------
		h : scalar
		    Entropy of the Wishart distribution
		
		Notes
		-----
	**/
	public function entropy(df:Dynamic, scale:Dynamic):Dynamic;
	/**
		Log of the Wishart probability density function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		    Each quantile must be a symmetric positive definite matrix.
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		
		Returns
		-------
		pdf : ndarray
		    Log of the probability density function evaluated at `x`
		
		Notes
		-----
	**/
	public function logpdf(x:Dynamic, df:Dynamic, scale:Dynamic):Dynamic;
	/**
		Mean of the Wishart distribution
		
		Parameters
		----------
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		
		Returns
		-------
		mean : float
		    The mean of the distribution
	**/
	public function mean(df:Dynamic, scale:Dynamic):Float;
	/**
		Mode of the Wishart distribution
		
		Only valid if the degrees of freedom are greater than the dimension of
		the scale matrix.
		
		Parameters
		----------
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		
		Returns
		-------
		mode : float or None
		    The Mode of the distribution
	**/
	public function mode(df:Dynamic, scale:Dynamic):Dynamic;
	/**
		Wishart probability density function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		    Each quantile must be a symmetric positive definite matrix.
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		
		Returns
		-------
		pdf : ndarray
		    Probability density function evaluated at `x`
		
		Notes
		-----
	**/
	public function pdf(x:Dynamic, df:Dynamic, scale:Dynamic):Dynamic;
	/**
		Get or set the RandomState object for generating random variates.
		
		This can be either None or an existing RandomState object.
		
		If None (or np.random), use the RandomState singleton used by np.random.
		If already a RandomState instance, use it.
		If an int, use a new RandomState instance seeded with seed.
	**/
	public var random_state : Dynamic;
	/**
		Draw random samples from a Wishart distribution.
		
		Parameters
		----------
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
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
	**/
	public function rvs(df:Dynamic, scale:Dynamic, ?size:Dynamic, ?random_state:Dynamic):Dynamic;
}