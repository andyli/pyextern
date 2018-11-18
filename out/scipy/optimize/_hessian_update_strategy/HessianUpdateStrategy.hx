/* This file is generated, do not edit! */
package scipy.optimize._hessian_update_strategy;
@:pythonImport("scipy.optimize._hessian_update_strategy", "HessianUpdateStrategy") extern class HessianUpdateStrategy {
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Compute the product of the internal matrix with the given vector.
		
		Parameters
		----------
		p : array_like
		    1-d array representing a vector.
		
		Returns
		-------
		Hp : array
		    1-d  represents the result of multiplying the approximation matrix
		    by vector p.
	**/
	public function dot(p:Dynamic):Array<Dynamic>;
	/**
		Return current internal matrix.
		
		Returns
		-------
		H : ndarray, shape (n, n)
		    Dense matrix containing either the Hessian
		    or its inverse (depending on how 'approx_type'
		    is defined).
	**/
	public function get_matrix():Dynamic;
	/**
		Initialize internal matrix.
		
		Allocate internal memory for storing and updating
		the Hessian or its inverse.
		
		Parameters
		----------
		n : int
		    Problem dimension.
		approx_type : {'hess', 'inv_hess'}
		    Selects either the Hessian or the inverse Hessian.
		    When set to 'hess' the Hessian will be stored and updated.
		    When set to 'inv_hess' its inverse will be used instead.
	**/
	public function initialize(n:Dynamic, approx_type:Dynamic):Dynamic;
	/**
		Update internal matrix.
		
		Update Hessian matrix or its inverse (depending on how 'approx_type'
		is defined) using information about the last evaluated points.
		
		Parameters
		----------
		delta_x : ndarray
		    The difference between two points the gradient
		    function have been evaluated at: ``delta_x = x2 - x1``.
		delta_grad : ndarray
		    The difference between the gradients:
		    ``delta_grad = grad(x2) - grad(x1)``.
	**/
	public function update(delta_x:Dynamic, delta_grad:Dynamic):Dynamic;
}