/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.error_handling;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.error_handling", "ErrorRendezvous") extern class ErrorRendezvous {
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
	public function ___init__(num_sources:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(num_sources:Dynamic):Void;
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
		Context manager to report any errors within a block.
	**/
	public function catch_errors(source:Dynamic, ?session:Dynamic):Dynamic;
	/**
		Wait for up to `timeout` seconds for all error sources to finish.
		
		Preferentially raise "interesting" errors (errors not in the
		_UNINTERESTING_ERRORS) set.
		
		Args:
		  timeout_sec: Seconds to wait for other error sources.
	**/
	public function raise_errors(?timeout_sec:Dynamic):Dynamic;
	/**
		Mark execution source `source` as done.
		
		If an error was originally reported from `source` it is left intact.
		
		Args:
		  source: `str`, source being recorded
	**/
	public function record_done(source:Dynamic):Dynamic;
	/**
		Report an exception from the given source.
		
		If a session is passed, a timer will be registered to close it after a few
		seconds.  This is necessary to ensure the main training loop does not hang
		if an infeed/oufeed error occurs.  We sleep a few seconds to allow a more
		interesting error from another thread to propagate.
		
		Args:
		  source: string, source of the error
		  exc_info: Output from `sys.exc_info` (type, value, traceback)
		  session: Session to close after delay.
	**/
	public function record_error(source:Dynamic, exc_info:Dynamic, ?session:Dynamic):Dynamic;
}