/* This file is generated, do not edit! */
package scipy.optimize._trustregion_dogleg;
@:pythonImport("scipy.optimize._trustregion_dogleg", "DoglegSubproblem") extern class DoglegSubproblem {
	/**
		Call self as a function.
	**/
	public function __call__(p:Dynamic):Dynamic;
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
	public function __init__(x:Dynamic, fun:Dynamic, jac:Dynamic, ?hess:Dynamic, ?hessp:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		The Cauchy point is minimal along the direction of steepest descent.
	**/
	public function cauchy_point():Dynamic;
	/**
		Value of objective function at current iteration.
	**/
	static public var fun : Dynamic;
	/**
		Solve the scalar quadratic equation ||z + t d|| == trust_radius.
		This is like a line-sphere intersection.
		Return the two values of t, sorted from low to high.
	**/
	public function get_boundaries_intersections(z:Dynamic, d:Dynamic, trust_radius:Dynamic):Dynamic;
	/**
		Value of hessian of objective function at current iteration.
	**/
	static public var hess : Dynamic;
	public function hessp(p:Dynamic):Dynamic;
	/**
		Value of jacobian of objective function at current iteration.
	**/
	static public var jac : Dynamic;
	/**
		Magniture of jacobian of objective function at current iteration.
	**/
	static public var jac_mag : Dynamic;
	/**
		The Newton point is a global minimum of the approximate function.
	**/
	public function newton_point():Dynamic;
	/**
		Minimize a function using the dog-leg trust-region algorithm.
		
		This algorithm requires function values and first and second derivatives.
		It also performs a costly Hessian decomposition for most iterations,
		and the Hessian is required to be positive definite.
		
		Parameters
		----------
		trust_radius : float
		    We are allowed to wander only this far away from the origin.
		
		Returns
		-------
		p : ndarray
		    The proposed step.
		hits_boundary : bool
		    True if the proposed step is on the boundary of the trust region.
		
		Notes
		-----
		The Hessian is required to be positive definite.
		
		References
		----------
		.. [1] Jorge Nocedal and Stephen Wright,
		       Numerical Optimization, second edition,
		       Springer-Verlag, 2006, page 73.
	**/
	public function solve(trust_radius:Dynamic):Dynamic;
}