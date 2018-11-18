/* This file is generated, do not edit! */
package scipy.optimize._trustregion_exact;
@:pythonImport("scipy.optimize._trustregion_exact", "IterativeSubproblem") extern class IterativeSubproblem {
	static public var EPS : Dynamic;
	static public var UPDATE_COEFF : Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(p:Dynamic):Dynamic;
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
	public function ___init__(x:Dynamic, fun:Dynamic, jac:Dynamic, hess:Dynamic, ?hessp:Dynamic, ?k_easy:Dynamic, ?k_hard:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(x:Dynamic, fun:Dynamic, jac:Dynamic, hess:Dynamic, ?hessp:Dynamic, ?k_easy:Dynamic, ?k_hard:Dynamic):Void;
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
		Given a trust radius, return a good initial guess for
		the damping factor, the lower bound and the upper bound.
		The values were chosen accordingly to the guidelines on
		section 7.3.8 (p. 192) from [1]_.
	**/
	public function _initial_values(tr_radius:Dynamic):Dynamic;
	/**
		Value of objective function at current iteration.
	**/
	public var fun : Dynamic;
	/**
		Solve the scalar quadratic equation ||z + t d|| == trust_radius.
		This is like a line-sphere intersection.
		Return the two values of t, sorted from low to high.
	**/
	public function get_boundaries_intersections(z:Dynamic, d:Dynamic, trust_radius:Dynamic):Dynamic;
	/**
		Value of hessian of objective function at current iteration.
	**/
	public var hess : Dynamic;
	public function hessp(p:Dynamic):Dynamic;
	/**
		Value of jacobian of objective function at current iteration.
	**/
	public var jac : Dynamic;
	/**
		Magniture of jacobian of objective function at current iteration.
	**/
	public var jac_mag : Dynamic;
	/**
		Solve quadratic subproblem
	**/
	public function solve(tr_radius:Dynamic):Dynamic;
}