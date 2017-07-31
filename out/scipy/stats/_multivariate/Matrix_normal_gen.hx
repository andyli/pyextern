/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate", "matrix_normal_gen") extern class Matrix_normal_gen {
	/**
		Create a frozen matrix normal distribution.
		
		See `matrix_normal_frozen` for more information.
	**/
	public function __call__(?mean:Dynamic, ?rowcov:Dynamic, ?colcov:Dynamic, ?seed:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?seed:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _get_random_state(random_state:Dynamic):Dynamic;
	/**
		Parameters
		----------
		dims : tuple
		    Dimensions of the matrix variates
		X : ndarray
		    Points at which to evaluate the log of the probability
		    density function
		mean : ndarray
		    Mean of the distribution
		row_prec_rt : ndarray
		    A decomposition such that np.dot(row_prec_rt, row_prec_rt.T)
		    is the inverse of the among-row covariance matrix
		log_det_rowcov : float
		    Logarithm of the determinant of the among-row covariance matrix
		col_prec_rt : ndarray
		    A decomposition such that np.dot(col_prec_rt, col_prec_rt.T)
		    is the inverse of the among-column covariance matrix
		log_det_colcov : float
		    Logarithm of the determinant of the among-column covariance matrix
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'logpdf' instead.
	**/
	public function _logpdf(dims:Dynamic, X:Dynamic, mean:Dynamic, row_prec_rt:Dynamic, log_det_rowcov:Dynamic, col_prec_rt:Dynamic, log_det_colcov:Dynamic):Dynamic;
	/**
		Infer dimensionality from mean or covariance matrices. Handle
		defaults. Ensure compatible dimensions.
	**/
	public function _process_parameters(mean:Dynamic, rowcov:Dynamic, colcov:Dynamic):Dynamic;
	/**
		Adjust quantiles array so that last two axes labels the components of
		each data point.
	**/
	public function _process_quantiles(X:Dynamic, dims:Dynamic):Dynamic;
	/**
		Log of the matrix normal probability density function.
		
		Parameters
		----------
		X : array_like
		    Quantiles, with the last two axes of `X` denoting the components.
		mean : array_like, optional
		    Mean of the distribution (default: `None`)
		rowcov : array_like, optional
		    Among-row covariance matrix of the distribution (default: `1`)
		colcov : array_like, optional
		    Among-column covariance matrix of the distribution (default: `1`)
		
		Returns
		-------
		logpdf : ndarray
		    Log of the probability density function evaluated at `X`
		
		Notes
		-----
		If `mean` is set to `None` then a matrix of zeros is used for the mean.
		    The dimensions of this matrix are inferred from the shape of `rowcov` and
		    `colcov`, if these are provided, or set to `1` if ambiguous.
		
		    `rowcov` and `colcov` can be two-dimensional array_likes specifying the
		    covariance matrices directly. Alternatively, a one-dimensional array will
		    be be interpreted as the entries of a diagonal matrix, and a scalar or
		    zero-dimensional array will be interpreted as this value times the
		    identity matrix.
		    
	**/
	public function logpdf(X:Dynamic, ?mean:Dynamic, ?rowcov:Dynamic, ?colcov:Dynamic):Dynamic;
	/**
		Matrix normal probability density function.
		
		Parameters
		----------
		X : array_like
		    Quantiles, with the last two axes of `X` denoting the components.
		mean : array_like, optional
		    Mean of the distribution (default: `None`)
		rowcov : array_like, optional
		    Among-row covariance matrix of the distribution (default: `1`)
		colcov : array_like, optional
		    Among-column covariance matrix of the distribution (default: `1`)
		
		Returns
		-------
		pdf : ndarray
		    Probability density function evaluated at `X`
		
		Notes
		-----
		If `mean` is set to `None` then a matrix of zeros is used for the mean.
		    The dimensions of this matrix are inferred from the shape of `rowcov` and
		    `colcov`, if these are provided, or set to `1` if ambiguous.
		
		    `rowcov` and `colcov` can be two-dimensional array_likes specifying the
		    covariance matrices directly. Alternatively, a one-dimensional array will
		    be be interpreted as the entries of a diagonal matrix, and a scalar or
		    zero-dimensional array will be interpreted as this value times the
		    identity matrix.
		    
	**/
	public function pdf(X:Dynamic, ?mean:Dynamic, ?rowcov:Dynamic, ?colcov:Dynamic):Dynamic;
	/**
		Get or set the RandomState object for generating random variates.
		
		This can be either None or an existing RandomState object.
		
		If None (or np.random), use the RandomState singleton used by np.random.
		If already a RandomState instance, use it.
		If an int, use a new RandomState instance seeded with seed.
	**/
	public var random_state : Dynamic;
	/**
		Draw random samples from a matrix normal distribution.
		
		Parameters
		----------
		mean : array_like, optional
		    Mean of the distribution (default: `None`)
		rowcov : array_like, optional
		    Among-row covariance matrix of the distribution (default: `1`)
		colcov : array_like, optional
		    Among-column covariance matrix of the distribution (default: `1`)
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
		If `mean` is set to `None` then a matrix of zeros is used for the mean.
		    The dimensions of this matrix are inferred from the shape of `rowcov` and
		    `colcov`, if these are provided, or set to `1` if ambiguous.
		
		    `rowcov` and `colcov` can be two-dimensional array_likes specifying the
		    covariance matrices directly. Alternatively, a one-dimensional array will
		    be be interpreted as the entries of a diagonal matrix, and a scalar or
		    zero-dimensional array will be interpreted as this value times the
		    identity matrix.
		    
	**/
	public function rvs(?mean:Dynamic, ?rowcov:Dynamic, ?colcov:Dynamic, ?size:Dynamic, ?random_state:Dynamic):Dynamic;
}