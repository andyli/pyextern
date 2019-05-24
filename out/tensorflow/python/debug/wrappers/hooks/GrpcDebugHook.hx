/* This file is generated, do not edit! */
package tensorflow.python.debug.wrappers.hooks;
@:pythonImport("tensorflow.python.debug.wrappers.hooks", "GrpcDebugHook") extern class GrpcDebugHook {
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
		Constructs a GrpcDebugHook.
		
		Args:
		  grpc_debug_server_addresses: (`list` of `str`) A list of the gRPC debug
		    server addresses, in the format of <host:port>, with or without the
		    "grpc://" prefix. For example: ["localhost:7000", "192.168.0.2:8000"]
		  watch_fn: A function that allows for customizing which ops to watch at
		    which specific steps. See doc of
		    `dumping_wrapper.DumpingDebugWrapperSession.__init__` for details.
		  thread_name_filter: Regular-expression white list for threads on which the
		    wrapper session will be active. See doc of `BaseDebugWrapperSession` for
		    more details.
		  log_usage: (bool) Whether usage is to be logged.
	**/
	@:native("__init__")
	public function ___init__(grpc_debug_server_addresses:Dynamic, ?watch_fn:Dynamic, ?thread_name_filter:Dynamic, ?log_usage:Dynamic):Dynamic;
	/**
		Constructs a GrpcDebugHook.
		
		Args:
		  grpc_debug_server_addresses: (`list` of `str`) A list of the gRPC debug
		    server addresses, in the format of <host:port>, with or without the
		    "grpc://" prefix. For example: ["localhost:7000", "192.168.0.2:8000"]
		  watch_fn: A function that allows for customizing which ops to watch at
		    which specific steps. See doc of
		    `dumping_wrapper.DumpingDebugWrapperSession.__init__` for details.
		  thread_name_filter: Regular-expression white list for threads on which the
		    wrapper session will be active. See doc of `BaseDebugWrapperSession` for
		    more details.
		  log_usage: (bool) Whether usage is to be logged.
	**/
	public function new(grpc_debug_server_addresses:Dynamic, ?watch_fn:Dynamic, ?thread_name_filter:Dynamic, ?log_usage:Dynamic):Void;
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
	static public var _estimator_api_names : Dynamic;
	static public var _estimator_api_names_v1 : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Called when new TensorFlow session is created.
		
		This is called to signal the hooks that a new session has been created. This
		has two essential differences with the situation in which `begin` is called:
		
		* When this is called, the graph is finalized and ops can no longer be added
		    to the graph.
		* This method will also be called as a result of recovering a wrapped
		    session, not only at the beginning of the overall session.
		
		Args:
		  session: A TensorFlow Session that has been created.
		  coord: A Coordinator object which keeps track of all threads.
	**/
	public function after_create_session(session:Dynamic, coord:Dynamic):Dynamic;
	/**
		Called after each call to run().
		
		The `run_values` argument contains results of requested ops/tensors by
		`before_run()`.
		
		The `run_context` argument is the same one send to `before_run` call.
		`run_context.request_stop()` can be called to stop the iteration.
		
		If `session.run()` raises any exceptions then `after_run()` is not called.
		
		Args:
		  run_context: A `SessionRunContext` object.
		  run_values: A SessionRunValues object.
	**/
	public function after_run(run_context:Dynamic, run_values:Dynamic):Dynamic;
	/**
		Called right before a session is run.
		
		Args:
		  run_context: A session_run_hook.SessionRunContext. Encapsulates
		    information on the run.
		
		Returns:
		  A session_run_hook.SessionRunArgs object.
	**/
	public function before_run(run_context:Dynamic):Dynamic;
	/**
		Called once before using the session.
		
		When called, the default graph is the one that will be launched in the
		session.  The hook can modify the graph by adding new operations to it.
		After the `begin()` call the graph will be finalized and the other callbacks
		can not modify the graph anymore. Second call of `begin()` on the same
		graph, should not change the graph.
	**/
	public function begin():Dynamic;
	/**
		Called at the end of session.
		
		The `session` argument can be used in case the hook wants to run final ops,
		such as saving a last checkpoint.
		
		If `session.run()` raises exception other than OutOfRangeError or
		StopIteration then `end()` is not called.
		Note the difference between `end()` and `after_run()` behavior when
		`session.run()` raises OutOfRangeError or StopIteration. In that case
		`end()` is called but `after_run()` is not called.
		
		Args:
		  session: A TensorFlow Session that will be soon closed.
	**/
	public function end(session:Dynamic):Dynamic;
}