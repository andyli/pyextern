/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.failure_tolerator;
@:pythonImport("tensorflow.contrib.training.python.training.failure_tolerator", "FailureTolerator") extern class FailureTolerator {
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
		Creates a FailureTolerator.
		
		The result will pause for `init_delay *
		(backoff_factor^(failure_count-1))` when re-entering `forgive()`
		after a failure.
		
		Args:
		  limit: The maximum number of suppressed, unforgiven, failures.
		  init_delay: How long to pause once the first failure is
		    encountered. Defaults to five seconds.
		  backoff_factor: Each subsequent failure grows the pause by this factor.
		  forgive_after_seconds: Failures older than this are forgiven.
		  handled_exceptions: The exceptions to forgive. Defaults to
		      `(errors.AbortedError,)`.
	**/
	@:native("__init__")
	public function ___init__(?limit:Dynamic, ?init_delay:Dynamic, ?backoff_factor:Dynamic, ?forgive_after_seconds:Dynamic, ?handled_exceptions:Dynamic):Dynamic;
	/**
		Creates a FailureTolerator.
		
		The result will pause for `init_delay *
		(backoff_factor^(failure_count-1))` when re-entering `forgive()`
		after a failure.
		
		Args:
		  limit: The maximum number of suppressed, unforgiven, failures.
		  init_delay: How long to pause once the first failure is
		    encountered. Defaults to five seconds.
		  backoff_factor: Each subsequent failure grows the pause by this factor.
		  forgive_after_seconds: Failures older than this are forgiven.
		  handled_exceptions: The exceptions to forgive. Defaults to
		      `(errors.AbortedError,)`.
	**/
	public function new(?limit:Dynamic, ?init_delay:Dynamic, ?backoff_factor:Dynamic, ?forgive_after_seconds:Dynamic, ?handled_exceptions:Dynamic):Void;
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
	/**
		Returns what the current time would be if no delays had occurred.
	**/
	public function _adjusted_now():Dynamic;
	public function _forgive_old():Dynamic;
	public function _handle_error(e:Dynamic):Dynamic;
	public function forgive():Dynamic;
}