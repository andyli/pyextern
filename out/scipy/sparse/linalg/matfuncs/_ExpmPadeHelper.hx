/* This file is generated, do not edit! */
package scipy.sparse.linalg.matfuncs;
@:pythonImport("scipy.sparse.linalg.matfuncs", "_ExpmPadeHelper") extern class _ExpmPadeHelper {
	public var A10 : Dynamic;
	public var A2 : Dynamic;
	public var A4 : Dynamic;
	public var A6 : Dynamic;
	public var A8 : Dynamic;
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
		Initialize the object.
		
		Parameters
		----------
		A : a dense or sparse square numpy matrix or ndarray
		    The matrix to be exponentiated.
		structure : str, optional
		    A string describing the structure of matrix `A`.
		    Only `upper_triangular` is currently supported.
		use_exact_onenorm : bool, optional
		    If True then only the exact one-norm of matrix powers and products
		    will be used. Otherwise, the one-norm of powers and products
		    may initially be estimated.
	**/
	@:native("__init__")
	public function ___init__(A:Dynamic, ?structure:Dynamic, ?use_exact_onenorm:Dynamic):Dynamic;
	/**
		Initialize the object.
		
		Parameters
		----------
		A : a dense or sparse square numpy matrix or ndarray
		    The matrix to be exponentiated.
		structure : str, optional
		    A string describing the structure of matrix `A`.
		    Only `upper_triangular` is currently supported.
		use_exact_onenorm : bool, optional
		    If True then only the exact one-norm of matrix powers and products
		    will be used. Otherwise, the one-norm of powers and products
		    may initially be estimated.
	**/
	public function new(A:Dynamic, ?structure:Dynamic, ?use_exact_onenorm:Dynamic):Void;
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
	public var d10_loose : Dynamic;
	public var d10_tight : Dynamic;
	public var d4_loose : Dynamic;
	public var d4_tight : Dynamic;
	public var d6_loose : Dynamic;
	public var d6_tight : Dynamic;
	public var d8_loose : Dynamic;
	public var d8_tight : Dynamic;
	public function pade13_scaled(s:Dynamic):Dynamic;
	public function pade3():Dynamic;
	public function pade5():Dynamic;
	public function pade7():Dynamic;
	public function pade9():Dynamic;
}