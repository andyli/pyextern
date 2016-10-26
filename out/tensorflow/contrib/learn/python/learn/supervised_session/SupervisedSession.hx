/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.supervised_session;
@:pythonImport("tensorflow.contrib.learn.python.learn.supervised_session", "SupervisedSession") extern class SupervisedSession {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(master:Dynamic, ?is_chief:Dynamic, ?checkpoint_dir:Dynamic, ?monitors:Dynamic, ?scaffold:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(master:Dynamic, ?is_chief:Dynamic, ?checkpoint_dir:Dynamic, ?monitors:Dynamic, ?scaffold:Dynamic, ?config:Dynamic):Void;
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
		Factory for the RecoverableSession.
		
		Returns:
		  A session, initialized or recovered as needed.
	**/
	public function _create_session():Dynamic;
	/**
		Return True if the supervised session is closed.  For tests only.
		
		Returns:
		  A boolean.
	**/
	public function _is_closed():Dynamic;
	public function close():Dynamic;
	/**
		Run ops in the supervised session.
		
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
	public var scaffold : Dynamic;
	public var session : Dynamic;
	public function should_stop():Dynamic;
	/**
		Saves current graph.
	**/
	public function write_graph():Dynamic;
}