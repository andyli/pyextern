/* This file is generated, do not edit! */
package matplotlib.backends.backend_macosx;
@:pythonImport("matplotlib.backends.backend_macosx", "TimerMac") extern class TimerMac {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Need to stop timer and possibly disconnect timer.
	**/
	public function __del__():Dynamic;
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
	public function ___init__(?interval:Dynamic, ?callbacks:Dynamic):Dynamic;
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
	public function _get_interval():Dynamic;
	public function _get_single_shot():Dynamic;
	/**
		Runs all function that have been registered as callbacks. Functions
		can return False (or 0) if they should not be called any more. If there
		are no callbacks, the timer is automatically stopped.
	**/
	public function _on_timer():Dynamic;
	public function _set_interval(interval:Dynamic):Dynamic;
	public function _set_single_shot(?ss:Dynamic):Dynamic;
	/**
		Used to set interval on underlying timer object.
	**/
	public function _timer_set_interval():Dynamic;
	/**
		Used to set single shot on underlying timer object.
	**/
	public function _timer_set_single_shot():Dynamic;
	/**
		Initialize and start the timer.
	**/
	public function _timer_start(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Stop the timer.
	**/
	public function _timer_stop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Register `func` to be called by timer when the event fires. Any
		additional arguments provided will be passed to `func`.
	**/
	public function add_callback(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var interval : Dynamic;
	/**
		Remove `func` from list of callbacks. `args` and `kwargs` are optional
		and used to distinguish between copies of the same function registered
		to be called with different arguments.
	**/
	public function remove_callback(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var single_shot : Dynamic;
	/**
		Start the timer object. `interval` is optional and will be used
		to reset the timer interval first if provided.
	**/
	public function start(?interval:Dynamic):Dynamic;
	/**
		Stop the timer.
	**/
	public function stop():Dynamic;
}