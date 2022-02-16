/* This file is generated, do not edit! */
package tensorflow.python.training.monitored_session;
@:pythonImport("tensorflow.python.training.monitored_session", "_HookedSession") extern class _HookedSession {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initializes a _HookedSession object.
		
		Args:
		  sess: A `tf.compat.v1.Session` or a `_WrappedSession` object.
		  hooks: An iterable of `SessionRunHook' objects.
	**/
	@:native("__init__")
	public function ___init__(sess:Dynamic, hooks:Dynamic):Dynamic;
	/**
		Initializes a _HookedSession object.
		
		Args:
		  sess: A `tf.compat.v1.Session` or a `_WrappedSession` object.
		  hooks: An iterable of `SessionRunHook' objects.
	**/
	public function new(sess:Dynamic, hooks:Dynamic):Void;
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
		Calls hooks.before_run and handles requests from hooks.
	**/
	public function _call_hook_before_run(run_context:Dynamic, fetch_dict:Dynamic, user_feed_dict:Dynamic, options:Dynamic):Dynamic;
	/**
		See base class.
	**/
	public function _check_stop():Dynamic;
	/**
		Merge two instances of RunOptions into the first one.
		
		During the merger, the numerical fields including trace_level,
		timeout_in_ms, inter_op_thread_pool are set to the larger one of the two.
		The boolean value is set to the logical OR of the two.
		debug_tensor_watch_opts of the original options is extended with that from
		the incoming one.
		
		Args:
		  options: The options to merge into.
		  incoming_options: The options to be merged into the first argument.
	**/
	public function _merge_run_options(options:Dynamic, incoming_options:Dynamic):Dynamic;
	public function _raise_if_feeds_intersects(feeds1:Dynamic, feeds2:Dynamic, message:Dynamic):Dynamic;
	public function close():Dynamic;
	public var graph : Dynamic;
	/**
		See base class.
	**/
	public function run(fetches:Dynamic, ?feed_dict:Dynamic, ?options:Dynamic, ?run_metadata:Dynamic):Dynamic;
	public function run_step_fn(step_fn:Dynamic, raw_session:Dynamic, run_with_hooks:Dynamic):Dynamic;
	public var sess_str : Dynamic;
	/**
		Return true if this session should not be used anymore.
		
		Always return True if the session was closed.
		
		Returns:
		  True if the session should stop, False otherwise.
	**/
	public function should_stop():Dynamic;
}