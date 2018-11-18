/* This file is generated, do not edit! */
package scipy.sparse.linalg._expm_multiply;
@:pythonImport("scipy.sparse.linalg._expm_multiply", "LazyOperatorNormInfo") extern class LazyOperatorNormInfo {
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
		Provide the operator and some norm-related information.
		
		Parameters
		----------
		A : linear operator
		    The operator of interest.
		A_1_norm : float, optional
		    The exact 1-norm of A.
		ell : int, optional
		    A technical parameter controlling norm estimation quality.
		scale : int, optional
		    If specified, return the norms of scale*A instead of A.
	**/
	@:native("__init__")
	public function ___init__(A:Dynamic, ?A_1_norm:Dynamic, ?ell:Dynamic, ?scale:Dynamic):Dynamic;
	/**
		Provide the operator and some norm-related information.
		
		Parameters
		----------
		A : linear operator
		    The operator of interest.
		A_1_norm : float, optional
		    The exact 1-norm of A.
		ell : int, optional
		    A technical parameter controlling norm estimation quality.
		scale : int, optional
		    If specified, return the norms of scale*A instead of A.
	**/
	public function new(A:Dynamic, ?A_1_norm:Dynamic, ?ell:Dynamic, ?scale:Dynamic):Void;
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
		Lazily compute max(d(p), d(p+1)).
	**/
	public function alpha(p:Dynamic):Dynamic;
	/**
		Lazily estimate d_p(A) ~= || A^p ||^(1/p) where ||.|| is the 1-norm.
	**/
	public function d(p:Dynamic):Dynamic;
	/**
		Compute the exact 1-norm.
	**/
	public function onenorm():Dynamic;
	/**
		Set the scale parameter.
	**/
	public function set_scale(scale:Dynamic):Dynamic;
}