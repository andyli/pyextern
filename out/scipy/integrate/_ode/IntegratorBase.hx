/* This file is generated, do not edit! */
package scipy.integrate._ode;
@:pythonImport("scipy.integrate._ode", "IntegratorBase") extern class IntegratorBase {
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
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function acquire_new_handle():Dynamic;
	public function check_handle():Dynamic;
	static public var integrator_classes : Dynamic;
	/**
		Prepare integrator for call: allocate memory, set flags, etc.
		n - number of equations.
		has_jac - if user has supplied function for evaluating Jacobian.
	**/
	public function reset(n:Dynamic, has_jac:Dynamic):Dynamic;
	/**
		Integrate from t=t0 to t=t1 using y0 as an initial condition.
		Return 2-tuple (y1,t1) where y1 is the result and t=t1
		defines the stoppage coordinate of the result.
	**/
	public function run(f:Dynamic, jac:Dynamic, y0:Dynamic, t0:Dynamic, t1:Dynamic, f_params:Dynamic, jac_params:Dynamic):Dynamic;
	/**
		Integrate from t=t0 to t>=t1 and return (y1,t).
	**/
	public function run_relax(f:Dynamic, jac:Dynamic, y0:Dynamic, t0:Dynamic, t1:Dynamic, f_params:Dynamic, jac_params:Dynamic):Dynamic;
	static public var runner : Dynamic;
	/**
		float(x) -> floating point number
		
		Convert a string or number to a floating point number, if possible.
	**/
	static public function scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Make one integration step and return (y1,t1).
	**/
	public function step(f:Dynamic, jac:Dynamic, y0:Dynamic, t0:Dynamic, t1:Dynamic, f_params:Dynamic, jac_params:Dynamic):Dynamic;
	static public var success : Dynamic;
	static public var supports_run_relax : Dynamic;
	static public var supports_solout : Dynamic;
	static public var supports_step : Dynamic;
}