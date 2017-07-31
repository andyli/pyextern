/* This file is generated, do not edit! */
package tensorflow.python.debug.wrappers.grpc_wrapper;
@:pythonImport("tensorflow.python.debug.wrappers.grpc_wrapper", "GrpcDebugWrapperSession") extern class GrpcDebugWrapperSession {
	static public var _GRPC_URL_PREFIX : Dynamic;
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
		Constructor of DumpingDebugWrapperSession.
		
		Args:
		  sess: The TensorFlow `Session` object being wrapped.
		  grpc_debug_server_addresses: (`str` or `list` of `str`) Single or a list
		    of the gRPC debug server addresses, in the format of
		    <host:port>, without the "grpc://" prefix. For example:
		      "localhost:7000",
		      ["localhost:7000", "192.168.0.2:8000"]
		  watch_fn: (`Callable`) A Callable that can be used to define per-run
		    debug ops and watched tensors. See the doc of
		    `NonInteractiveDebugWrapperSession.__init__()` for details.
		  thread_name_filter: Regular-expression white list for threads on which the
		    wrapper session will be active. See doc of `BaseDebugWrapperSession` for
		    more details.
		  log_usage: (`bool`) whether the usage of this class is to be logged.
		
		Raises:
		   TypeError: If `grpc_debug_server_addresses` is not a `str` or a `list`
		     of `str`.
	**/
	@:native("__init__")
	public function ___init__(sess:Dynamic, grpc_debug_server_addresses:Dynamic, ?watch_fn:Dynamic, ?thread_name_filter:Dynamic, ?log_usage:Dynamic):Dynamic;
	/**
		Constructor of DumpingDebugWrapperSession.
		
		Args:
		  sess: The TensorFlow `Session` object being wrapped.
		  grpc_debug_server_addresses: (`str` or `list` of `str`) Single or a list
		    of the gRPC debug server addresses, in the format of
		    <host:port>, without the "grpc://" prefix. For example:
		      "localhost:7000",
		      ["localhost:7000", "192.168.0.2:8000"]
		  watch_fn: (`Callable`) A Callable that can be used to define per-run
		    debug ops and watched tensors. See the doc of
		    `NonInteractiveDebugWrapperSession.__init__()` for details.
		  thread_name_filter: Regular-expression white list for threads on which the
		    wrapper session will be active. See doc of `BaseDebugWrapperSession` for
		    more details.
		  log_usage: (`bool`) whether the usage of this class is to be logged.
		
		Raises:
		   TypeError: If `grpc_debug_server_addresses` is not a `str` or a `list`
		     of `str`.
	**/
	public function new(sess:Dynamic, grpc_debug_server_addresses:Dynamic, ?watch_fn:Dynamic, ?thread_name_filter:Dynamic, ?log_usage:Dynamic):Void;
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
	public function as_default():Dynamic;
	public function close():Dynamic;
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
		Implementation of abstract method in superclass.
		
		See doc of `NonInteractiveDebugWrapperSession.prepare_run_debug_urls()`
		for details.
		
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