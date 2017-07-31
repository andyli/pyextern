/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.bijectors.affine_impl;
@:pythonImport("tensorflow.contrib.distributions.python.ops.bijectors.affine_impl", "_TriLPlusVDVTLightweightOperatorPD") extern class _TriLPlusVDVTLightweightOperatorPD {
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
		Creates an instance of _TriLPlusVDVTLightweightOperatorPD.
		
		WARNING: This object is not to be used outside of `Affine` where it is
		currently being temporarily used for refactoring purposes.
		
		Args:
		  tril: `Tensor` of shape `[B1,..,Bb, d, d]`.
		  v: `Tensor` of shape `[B1,...,Bb, d, k]`.
		  diag: `Tensor` of shape `[B1,...,Bb, k, k]` or None
		  validate_args: Python `bool` indicating whether arguments should be
		    checked for correctness.
	**/
	@:native("__init__")
	public function ___init__(tril:Dynamic, v:Dynamic, ?diag:Dynamic, ?validate_args:Dynamic):Dynamic;
	/**
		Creates an instance of _TriLPlusVDVTLightweightOperatorPD.
		
		WARNING: This object is not to be used outside of `Affine` where it is
		currently being temporarily used for refactoring purposes.
		
		Args:
		  tril: `Tensor` of shape `[B1,..,Bb, d, d]`.
		  v: `Tensor` of shape `[B1,...,Bb, d, k]`.
		  diag: `Tensor` of shape `[B1,...,Bb, k, k]` or None
		  validate_args: Python `bool` indicating whether arguments should be
		    checked for correctness.
	**/
	public function new(tril:Dynamic, v:Dynamic, ?diag:Dynamic, ?validate_args:Dynamic):Void;
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
	/**
		Computes the sandwiched term in the Woodbury identity.
		
		Computes the "`C`" in the the identity:
		   inv(M + V D V.T) = inv(M) - inv(M) V inv(C) V.T inv(M)
		where,
		   C = inv(D) + V.T inv(M) V.
		
		See: https://en.wikipedia.org/wiki/Woodbury_matrix_identity
		
		Returns:
		  woodbury_sandwich_term: A `Tensor` to be used like `C`, above.
	**/
	public function _woodbury_sandwiched_term():Dynamic;
	public var dtype : Dynamic;
	public var inputs : Dynamic;
	/**
		Returns `rank(self)`.
	**/
	public function rank():Dynamic;
	/**
		Computes (log o abs o det)(X) for matrix X.
		
		Doesn't actually do the sqrt! Named as such to agree with API.
		
		To compute det(M + V D V.T), we use the matrix determinant lemma:
		  det(Tril + V D V.T) = det(C) det(D) det(M)
		where C is defined as in `_inverse`, ie,
		  C = inv(D) + V.T inv(M) V.
		
		See: https://en.wikipedia.org/wiki/Matrix_determinant_lemma
		
		Returns:
		  log_abs_det: `Tensor`.
	**/
	public function sqrt_log_abs_det():Dynamic;
	/**
		Computes `matmul(self, x)`.
		
		Doesn't actually do the sqrt! Named as such to agree with API.
		
		Args:
		  x: `Tensor`
		
		Returns:
		  self_times_x: `Tensor`
	**/
	public function sqrt_matmul(x:Dynamic):Dynamic;
	/**
		Computes `solve(self, x)`.
		
		Doesn't actually do the sqrt! Named as such to agree with API.
		
		To compute (M + V D V.T), we use the the Woodbury matrix identity:
		  inv(M + V D V.T) = inv(M) - inv(M) V inv(C) V.T inv(M)
		where,
		  C = inv(D) + V.T inv(M) V.
		See: https://en.wikipedia.org/wiki/Woodbury_matrix_identity
		
		Args:
		  x: `Tensor`
		
		Returns:
		  inv_of_self_times_x: `Tensor`
	**/
	public function sqrt_solve(x:Dynamic):Dynamic;
	public var validate_args : Dynamic;
}