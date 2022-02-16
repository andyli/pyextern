/* This file is generated, do not edit! */
package matplotlib.backends.backend_qt;
@:pythonImport("matplotlib.backends.backend_qt", "TimerQT") extern class TimerQT {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Parameters
		----------
		interval : int, default: 1000ms
		    The time between timer events in milliseconds.  Will be stored as
		    ``timer.interval``.
		callbacks : list[tuple[callable, tuple, dict]]
		    List of (func, args, kwargs) tuples that will be called upon
		    timer events.  This list is accessible as ``timer.callbacks`` and
		    can be manipulated directly, or the functions `add_callback` and
		    `remove_callback` can be used.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		interval : int, default: 1000ms
		    The time between timer events in milliseconds.  Will be stored as
		    ``timer.interval``.
		callbacks : list[tuple[callable, tuple, dict]]
		    List of (func, args, kwargs) tuples that will be called upon
		    timer events.  This list is accessible as ``timer.callbacks`` and
		    can be manipulated directly, or the functions `add_callback` and
		    `remove_callback` can be used.
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Runs all function that have been registered as callbacks. Functions
		can return False (or 0) if they should not be called any more. If there
		are no callbacks, the timer is automatically stopped.
	**/
	public function _on_timer():Dynamic;
	/**
		Used to set interval on underlying timer object.
	**/
	public function _timer_set_interval():Dynamic;
	/**
		Used to set single shot on underlying timer object.
	**/
	public function _timer_set_single_shot():Dynamic;
	public function _timer_start():Dynamic;
	public function _timer_stop():Dynamic;
	/**
		Register *func* to be called by timer when the event fires. Any
		additional arguments provided will be passed to *func*.
		
		This function returns *func*, which makes it possible to use it as a
		decorator.
	**/
	public function add_callback(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The time between timer events, in milliseconds.
	**/
	public var interval : Dynamic;
	/**
		Remove *func* from list of callbacks.
		
		*args* and *kwargs* are optional and used to distinguish between copies
		of the same function registered to be called with different arguments.
		This behavior is deprecated.  In the future, ``*args, **kwargs`` won't
		be considered anymore; to keep a specific callback removable by itself,
		pass it to `add_callback` as a `functools.partial` object.
	**/
	public function remove_callback(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Whether this timer should stop after a single run.
	**/
	public var single_shot : Dynamic;
	/**
		Start the timer object.
		
		Parameters
		----------
		interval : int, optional
		    Timer interval in milliseconds; overrides a previously set interval
		    if provided.
	**/
	public function start(?interval:Dynamic):Dynamic;
	/**
		Stop the timer.
	**/
	public function stop():Dynamic;
}