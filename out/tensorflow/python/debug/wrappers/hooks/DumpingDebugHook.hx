/* This file is generated, do not edit! */
package tensorflow.python.debug.wrappers.hooks;
@:pythonImport("tensorflow.python.debug.wrappers.hooks", "DumpingDebugHook") extern class DumpingDebugHook {
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
	public function __exit__(exec_type:Dynamic, exec_value:Dynamic, exec_tb:Dynamic):Dynamic;
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
		Create a local debugger command-line interface (CLI) hook.
		
		Args:
		  session_root: See doc of
		    `dumping_wrapper.DumpingDebugWrapperSession.__init__`.
		  watch_fn: See doc of
		    `dumping_wrapper.DumpingDebugWrapperSession.__init__`.
		  thread_name_filter: Regular-expression white list for threads on which the
		    wrapper session will be active. See doc of `BaseDebugWrapperSession` for
		    more details.
		  log_usage: (bool) Whether usage is to be logged.
	**/
	@:native("__init__")
	public function ___init__(session_root:Dynamic, ?watch_fn:Dynamic, ?thread_name_filter:Dynamic, ?log_usage:Dynamic):Dynamic;
	/**
		Create a local debugger command-line interface (CLI) hook.
		
		Args:
		  session_root: See doc of
		    `dumping_wrapper.DumpingDebugWrapperSession.__init__`.
		  watch_fn: See doc of
		    `dumping_wrapper.DumpingDebugWrapperSession.__init__`.
		  thread_name_filter: Regular-expression white list for threads on which the
		    wrapper session will be active. See doc of `BaseDebugWrapperSession` for
		    more details.
		  log_usage: (bool) Whether usage is to be logged.
	**/
	public function new(session_root:Dynamic, ?watch_fn:Dynamic, ?thread_name_filter:Dynamic, ?log_usage:Dynamic):Void;
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
		Modify a RunOptions object for debug tensor watching.
		
		Specifies request for outputting partition graphs. Adds
		debug_tensor_watch_opts with proper debug URLs.
		
		Args:
		  run_options: (RunOptions) the modified RunOptions object.
		  debug_urls: (list of str) debug URLs to be entered in run_options.
		    debug_tensor_watch_opts.
		  debug_ops: (str or list of str) debug op(s) to be used by the debugger.
		  node_name_regex_whitelist: Regular-expression whitelist for node
		    name.
		  op_type_regex_whitelist: Regular-expression whitelist for op type.
		  tensor_dtype_regex_whitelist: Regular-expression whitelist for tensor
		    dtype.
		  tolerate_debug_op_creation_failures: Whether debug op creation failures
		    are to be tolerated.
	**/
	public function _decorate_run_options_for_debug(run_options:Dynamic, debug_urls:Dynamic, ?debug_ops:Dynamic, ?node_name_regex_whitelist:Dynamic, ?op_type_regex_whitelist:Dynamic, ?tensor_dtype_regex_whitelist:Dynamic, ?tolerate_debug_op_creation_failures:Dynamic):Dynamic;
	/**
		Modify a RunOptions object for profiling TensorFlow graph execution.
		
		Args:
		  run_options: (RunOptions) the modified RunOptions object.
	**/
	public function _decorate_run_options_for_profile(run_options:Dynamic):Dynamic;
	public function _is_disabled_thread():Dynamic;
	/**
		Get the debug_urls, and node/op whitelists for the current run() call.
		
		Args:
		  fetches: Same as the `fetches` argument to `Session.run()`.
		  feed_dict: Same as the `feed_dict argument` to `Session.run()`.
		
		Returns:
		  debug_urls: (str or list of str) Debug URLs for the current run() call.
		    Currently, the list consists of only one URL that is a file:// URL.
		  watch_options: (WatchOptions) The return value of a watch_fn, containing
		    options including debug_ops, and whitelists.
	**/
	public function _prepare_run_watch_config(fetches:Dynamic, feed_dict:Dynamic):Dynamic;
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
	public function as_default():Dynamic;
	/**
		Called before each call to run().
		
		You can return from this call a `SessionRunArgs` object indicating ops or
		tensors to add to the upcoming `run()` call.  These ops/tensors will be run
		together with the ops/tensors originally passed to the original run() call.
		The run args you return can also contain feeds to be added to the run()
		call.
		
		The `run_context` argument is a `SessionRunContext` that provides
		information about the upcoming `run()` call: the originally requested
		op/tensors, the TensorFlow Session.
		
		At this point graph is finalized and you can not add ops.
		
		Args:
		  run_context: A `SessionRunContext` object.
		
		Returns:
		  None or a `SessionRunArgs` object.
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
	public function close():Dynamic;
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
	/**
		The underlying TensorFlow graph, to be used in building Operations.
	**/
	public var graph : Dynamic;
	public var graph_def : Dynamic;
	/**
		See doc of BaseDebugWrapperSession.invoke_node_stepper.
	**/
	public function invoke_node_stepper(node_stepper:Dynamic, ?restore_variable_values_on_exit:Dynamic):Dynamic;
	/**
		See doc of BaseDebugWrapperSession.on_run_end.
	**/
	public function on_run_end(request:Dynamic):Dynamic;
	/**
		See doc of BaseDebugWrapperSession.on_run_start.
	**/
	public function on_run_start(request:Dynamic):Dynamic;
	/**
		See doc of BaseDebugWrapperSession.on_run_start.
	**/
	public function on_session_init(request:Dynamic):Dynamic;
	/**
		Continues the execution with additional feeds and fetches.
	**/
	public function partial_run(handle:Dynamic, fetches:Dynamic, ?feed_dict:Dynamic):Dynamic;
	/**
		Sets up the feeds and fetches for partial runs in the session.
	**/
	public function partial_run_setup(fetches:Dynamic, ?feeds:Dynamic):Dynamic;
	/**
		Implementation of abstrat method in superclass.
		
		See doc of `NonInteractiveDebugWrapperSession.prepare_run_debug_urls()`
		for details. This implentation creates a run-specific subdirectory under
		self._session_root and stores information regarding run `fetches` and
		`feed_dict.keys()` in the subdirectory.
		
		Args:
		  fetches: Same as the `fetches` argument to `Session.run()`
		  feed_dict: Same as the `feed_dict` argument to `Session.run()`
		
		Returns:
		  debug_urls: (`str` or `list` of `str`) file:// debug URLs to be used in
		    this `Session.run()` call.
	**/
	public function prepare_run_debug_urls(fetches:Dynamic, feed_dict:Dynamic):Dynamic;
	/**
		Wrapper around Session.run() that inserts tensor watch options.
		
		Args:
		  fetches: Same as the `fetches` arg to regular `Session.run()`.
		  feed_dict: Same as the `feed_dict` arg to regular `Session.run()`.
		  options: Same as the `options` arg to regular `Session.run()`.
		  run_metadata: Same as the `run_metadata` arg to regular `Session.run()`.
		
		Returns:
		  Simply forwards the output of the wrapped `Session.run()` call.
		
		Raises:
		  ValueError: On invalid `OnRunStartAction` value.
	**/
	public function run(fetches:Dynamic, ?feed_dict:Dynamic, ?options:Dynamic, ?run_metadata:Dynamic):Dynamic;
	/**
		The TensorFlow process to which this session will connect.
	**/
	public var sess_str : Dynamic;
	public var session : Dynamic;
}