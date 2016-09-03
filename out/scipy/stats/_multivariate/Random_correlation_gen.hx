/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate", "random_correlation_gen") extern class Random_correlation_gen {
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
		Computes a 2x2 Givens matrix to put 1's on the diagonal for the input matrix.
		
		The input matrix is a 2x2 symmetric matrix M = [ aii aij ; aij ajj ].
		
		The output matrix g is a 2x2 anti-symmetric matrix of the form [ c s ; -s c ];
		the elements c and s are returned.
		
		Applying the output matrix to the input matrix (as b=g.T M g)
		results in a matrix with bii=1, provided tr(M) - det(M) >= 1
		and floating point issues do not occur. Otherwise, some other
		valid rotation is returned. When tr(M)==2, also bjj=1.
	**/
	public function _givens_to_1(aii:Dynamic, ajj:Dynamic, aij:Dynamic):Dynamic;
	public function _process_parameters(eigs:Dynamic, tol:Dynamic):Dynamic;
	/**
		Given a psd matrix m, rotate to put one's on the diagonal, turning it
		into a correlation matrix.  This also requires the trace equal the
		dimensionality. Note: modifies input matrix
	**/
	public function _to_corr(m:Dynamic):Dynamic;
	/**
		Get or set the RandomState object for generating random variates.
		
		This can be either None or an existing RandomState object.
		
		If None (or np.random), use the RandomState singleton used by np.random.
		If already a RandomState instance, use it.
		If an int, use a new RandomState instance seeded with seed.
	**/
	public var random_state : Dynamic;
	/**
		Draw random correlation matrices
		
		Parameters
		----------
		eigs : 1d ndarray
		    Eigenvalues of correlation matrix
		tol : float, optional
		    Tolerance for input parameter checks
		diag_tol : float, optional
		    Tolerance for deviation of the diagonal of the resulting
		    matrix. Default: 1e-7
		
		Raises
		------
		RuntimeError
		    Floating point error prevented generating a valid correlation
		    matrix.
		
		Returns
		-------
		rvs : ndarray or scalar
		    Random size N-dimensional matrices, dimension (size, dim, dim),
		    each having eigenvalues eigs.
	**/
	public function rvs(eigs:Dynamic, ?random_state:Dynamic, ?tol:Dynamic, ?diag_tol:Dynamic):Dynamic;
}