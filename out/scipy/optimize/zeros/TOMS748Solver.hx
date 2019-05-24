/* This file is generated, do not edit! */
package scipy.optimize.zeros;
@:pythonImport("scipy.optimize.zeros", "TOMS748Solver") extern class TOMS748Solver {
	static public var _K_MAX : Dynamic;
	static public var _K_MIN : Dynamic;
	static public var _MU : Dynamic;
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
		Call the user-supplied function, update book-keeping
	**/
	public function _callf(x:Dynamic, ?error:Dynamic):Dynamic;
	public function _update_bracket(c:Dynamic, fc:Dynamic):Dynamic;
	public function configure(xtol:Dynamic, rtol:Dynamic, maxiter:Dynamic, disp:Dynamic, k:Dynamic):Dynamic;
	/**
		Package the result and statistics into a tuple.
	**/
	public function get_result(x:Dynamic, ?flag:Dynamic):Dynamic;
	/**
		Determine the current status.
	**/
	public function get_status():Dynamic;
	/**
		Perform one step in the algorithm.
		
		Implements Algorithm 4.1(k=1) or 4.2(k=2) in [APS1995]
	**/
	public function iterate():Dynamic;
	/**
		Solve f(x) = 0 given an interval containing a zero.
	**/
	public function solve(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?k:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Prepare for the iterations.
	**/
	public function start(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic):Dynamic;
}