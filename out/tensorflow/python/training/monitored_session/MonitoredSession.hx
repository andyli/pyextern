/* This file is generated, do not edit! */
package tensorflow.python.training.monitored_session;
@:pythonImport("tensorflow.python.training.monitored_session", "MonitoredSession") extern class MonitoredSession {
	/**
		Factory for the _RecoverableSession.
	**/
	static public function _CoordinatedSessionCreator(session_creator:Dynamic, hooks:Dynamic, stop_grace_period_secs:Dynamic):Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exception_type:Dynamic, exception_value:Dynamic, traceback:Dynamic):Dynamic;
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
		Sets up a Monitored or Hooked Session.
		
		Args:
		  session_creator: A factory object to create session. Typically a
		    `ChiefSessionCreator` or a `WorkerSessionCreator`.
		  hooks: An iterable of `SessionRunHook' objects.
		  should_recover: A bool. Indicates whether to recover from `AbortedError`
		    and `UnavailableError` or not.
		  stop_grace_period_secs: Number of seconds given to threads to stop after
		    `close()` has been called.
	**/
	@:native("__init__")
	public function ___init__(?session_creator:Dynamic, ?hooks:Dynamic, ?stop_grace_period_secs:Dynamic):Dynamic;
	/**
		Sets up a Monitored or Hooked Session.
		
		Args:
		  session_creator: A factory object to create session. Typically a
		    `ChiefSessionCreator` or a `WorkerSessionCreator`.
		  hooks: An iterable of `SessionRunHook' objects.
		  should_recover: A bool. Indicates whether to recover from `AbortedError`
		    and `UnavailableError` or not.
		  stop_grace_period_secs: Number of seconds given to threads to stop after
		    `close()` has been called.
	**/
	public function new(?session_creator:Dynamic, ?hooks:Dynamic, ?stop_grace_period_secs:Dynamic):Void;
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
	public function _close_internal(?exception_type:Dynamic):Dynamic;
	/**
		Return True if the supervised session is closed.  For tests only.
		
		Returns:
		  A boolean.
	**/
	public function _is_closed():Dynamic;
	public function _tf_sess():Dynamic;
	public function close():Dynamic;
	/**
		The graph that was launched in this session.
	**/
	public var graph : Dynamic;
	/**
		Run ops in the monitored session.
		
		This method is completely compatible with the `tf.Session.run()` method.
		
		Args:
		  fetches: Same as `tf.Session.run()`.
		  feed_dict: Same as `tf.Session.run()`.
		  options: Same as `tf.Session.run()`.
		  run_metadata: Same as `tf.Session.run()`.
		
		Returns:
		  Same as `tf.Session.run()`.
	**/
	public function run(fetches:Dynamic, ?feed_dict:Dynamic, ?options:Dynamic, ?run_metadata:Dynamic):Dynamic;
	public function should_stop():Dynamic;
}