/* This file is generated, do not edit! */
package scipy.integrate._ivp.rk;
@:pythonImport("scipy.integrate._ivp.rk", "RungeKutta") extern class RungeKutta {
	static public var A : Dynamic;
	static public var B : Dynamic;
	static public var C : Dynamic;
	static public var E : Dynamic;
	static public var P : Dynamic;
	static public var TOO_SMALL_STEP : Dynamic;
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
	public function ___init__(fun:Dynamic, t0:Dynamic, y0:Dynamic, t_bound:Dynamic, ?max_step:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?vectorized:Dynamic, ?first_step:Dynamic, ?extraneous:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(fun:Dynamic, t0:Dynamic, y0:Dynamic, t_bound:Dynamic, ?max_step:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?vectorized:Dynamic, ?first_step:Dynamic, ?extraneous:python.KwArgs<Dynamic>):Void;
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
	public function _dense_output_impl():Dynamic;
	public function _step_impl():Dynamic;
	/**
		Compute a local interpolant over the last successful step.
		
		Returns
		-------
		sol : `DenseOutput`
		    Local interpolant over the last successful step.
	**/
	public function dense_output():Dynamic;
	static public var n_stages : Dynamic;
	static public var order : Dynamic;
	/**
		Perform one integration step.
		
		Returns
		-------
		message : string or None
		    Report from the solver. Typically a reason for a failure if
		    `self.status` is 'failed' after the step was taken or None
		    otherwise.
	**/
	public function step():Dynamic;
	public var step_size : Dynamic;
}