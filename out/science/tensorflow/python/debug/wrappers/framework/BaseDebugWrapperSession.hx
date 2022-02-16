/* This file is generated, do not edit! */
package tensorflow.python.debug.wrappers.framework;
@:pythonImport("tensorflow.python.debug.wrappers.framework", "BaseDebugWrapperSession") extern class BaseDebugWrapperSession {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exec_type:Dynamic, exec_value:Dynamic, exec_tb:Dynamic):Dynamic;
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
		Constructor of `BaseDebugWrapperSession`.
		
		Args:
		  sess: An (unwrapped) TensorFlow session instance. It should be a subtype
		    of `BaseSession` or `tf.MonitoredSession`.
		  thread_name_filter: Regular-expression filter (allowlist) for name(s) of
		    thread(s) on which the wrapper session will be active. This regular
		    expression is used in a start-anchored fashion on the thread name, i.e.,
		    by applying the `match` method of the compiled pattern. The default
		    `None` means that the wrapper session will be active on all threads.
		    E.g., r"MainThread$", r"QueueRunnerThread.*".
		  pass_through_operrors: If True, all captured OpErrors will be
		    propagated.  By default this captures all OpErrors.
		
		Raises:
		  ValueError: On invalid `OnSessionInitAction` value.
		  NotImplementedError: If a non-DirectSession sess object is received.
	**/
	@:native("__init__")
	public function ___init__(sess:Dynamic, ?thread_name_filter:Dynamic, ?pass_through_operrors:Dynamic):Dynamic;
	/**
		Constructor of `BaseDebugWrapperSession`.
		
		Args:
		  sess: An (unwrapped) TensorFlow session instance. It should be a subtype
		    of `BaseSession` or `tf.MonitoredSession`.
		  thread_name_filter: Regular-expression filter (allowlist) for name(s) of
		    thread(s) on which the wrapper session will be active. This regular
		    expression is used in a start-anchored fashion on the thread name, i.e.,
		    by applying the `match` method of the compiled pattern. The default
		    `None` means that the wrapper session will be active on all threads.
		    E.g., r"MainThread$", r"QueueRunnerThread.*".
		  pass_through_operrors: If True, all captured OpErrors will be
		    propagated.  By default this captures all OpErrors.
		
		Raises:
		  ValueError: On invalid `OnSessionInitAction` value.
		  NotImplementedError: If a non-DirectSession sess object is received.
	**/
	public function new(sess:Dynamic, ?thread_name_filter:Dynamic, ?pass_through_operrors:Dynamic):Void;
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
	static public var _abc_impl : Dynamic;
	/**
		Modify a RunOptions object for debug tensor watching.
		
		Specifies request for outputting partition graphs. Adds
		debug_tensor_watch_opts with proper debug URLs.
		
		Args:
		  run_options: (RunOptions) the modified RunOptions object.
		  debug_urls: (list of str) debug URLs to be entered in run_options.
		    debug_tensor_watch_opts.
		  debug_ops: (str or list of str) debug op(s) to be used by the debugger.
		  node_name_regex_allowlist: Regular-expression allowlist for node
		    name.
		  op_type_regex_allowlist: Regular-expression allowlist for op type.
		  tensor_dtype_regex_allowlist: Regular-expression allowlist for tensor
		    dtype.
		  tolerate_debug_op_creation_failures: Whether debug op creation failures
		    are to be tolerated.
	**/
	public function _decorate_run_options_for_debug(run_options:Dynamic, debug_urls:Dynamic, ?debug_ops:Dynamic, ?node_name_regex_allowlist:Dynamic, ?op_type_regex_allowlist:Dynamic, ?tensor_dtype_regex_allowlist:Dynamic, ?tolerate_debug_op_creation_failures:Dynamic):Dynamic;
	/**
		Modify a RunOptions object for profiling TensorFlow graph execution.
		
		Args:
		  run_options: (RunOptions) the modified RunOptions object.
	**/
	public function _decorate_run_options_for_profile(run_options:Dynamic):Dynamic;
	public function _is_disabled_thread():Dynamic;
	/**
		Indicates whether disk usage is reset after each Session.run.
		
		Subclasses that clean up the disk usage after every run should
		override this protected method.
		
		Returns:
		  (`bool`) Whether the disk usage amount is reset to zero after
		    each Session.run.
	**/
	public function _is_disk_usage_reset_each_run():Dynamic;
	public function _make_callable_from_options(callable_options:Dynamic):Dynamic;
	/**
		Perform a session.run() or callable with debugging.
	**/
	public function _run_with_debugging(run_start_resp:Dynamic, fetches:Dynamic, feed_dict:Dynamic, options:Dynamic, run_metadata:Dynamic, callable_runner:Dynamic, callable_runner_args:Dynamic, callable_options:Dynamic):Dynamic;
	/**
		Perform a session.run() or callable with profiling.
	**/
	public function _run_with_profiling(run_start_resp:Dynamic, fetches:Dynamic, feed_dict:Dynamic, options:Dynamic, run_metadata:Dynamic, callable_runner:Dynamic, callable_runner_args:Dynamic, callable_options:Dynamic):Dynamic;
	public function as_default():Dynamic;
	public function close():Dynamic;
	/**
		The underlying TensorFlow graph, to be used in building Operations.
	**/
	public var graph : Dynamic;
	public var graph_def : Dynamic;
	public function increment_run_call_count():Dynamic;
	public function list_devices(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function make_callable(fetches:Dynamic, ?feed_list:Dynamic, ?accept_options:Dynamic):Dynamic;
	/**
		Callback invoked on run() calls to the debug-wrapper session.
		
		This is a blocking callback.
		The invocation happens right before the wrapper exits its run() call.
		
		Args:
		  request: (`OnRunEndRequest`) callback request object carrying information
		    such as the actual action performed by the session wrapper for the
		    run() call.
		
		Returns:
		  An instance of `OnRunStartResponse`.
	**/
	public function on_run_end(request:Dynamic):Dynamic;
	/**
		Callback invoked on run() calls to the debug-wrapper session.
		
		This is a blocking callback.
		The invocation happens after the wrapper's run() call is entered,
		after an increment of run call counter.
		
		Args:
		  request: (`OnRunStartRequest`) callback request object carrying
		    information about the run call such as the fetches, feed dict, run
		    options, run metadata, and how many `run()` calls to this wrapper
		    session have occurred.
		
		Returns:
		  An instance of `OnRunStartResponse`, carrying information to
		    debug URLs used to watch the tensors.
	**/
	public function on_run_start(request:Dynamic):Dynamic;
	/**
		Callback invoked during construction of the debug-wrapper session.
		
		This is a blocking callback.
		The invocation happens right before the constructor ends.
		
		Args:
		  request: (`OnSessionInitRequest`) callback request carrying information
		    such as the session being wrapped.
		
		Returns:
		  An instance of `OnSessionInitResponse`.
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
	public function reset(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrapper around Session.run() that inserts tensor watch options.
		
		Args:
		  fetches: Same as the `fetches` arg to regular `Session.run()`.
		  feed_dict: Same as the `feed_dict` arg to regular `Session.run()`.
		  options: Same as the `options` arg to regular `Session.run()`.
		  run_metadata: Same as the `run_metadata` arg to regular `Session.run()`.
		  callable_runner: A `callable` returned by `Session.make_callable()`.
		    If not `None`, `fetches` and `feed_dict` must both be `None`.
		    Mutually exclusive with `callable_options`.
		  callable_runner_args: An optional list of arguments to `callable_runner`
		    or for `callable_options`.
		  callable_options: An instance of `config_pb2.CallableOptions`, to be
		    used with `Session._make_callable_from_options()`. Mutually exclusive
		    with `callable_runner`.
		
		Returns:
		  Simply forwards the output of the wrapped `Session.run()` call.
		
		Raises:
		  ValueError: On invalid `OnRunStartAction` value. Or if `callable_runner`
		    is not `None` and either or both of `fetches` and `feed_dict` is `None`.
	**/
	public function run(fetches:Dynamic, ?feed_dict:Dynamic, ?options:Dynamic, ?run_metadata:Dynamic, ?callable_runner:Dynamic, ?callable_runner_args:Dynamic, ?callable_options:Dynamic):Dynamic;
	public var run_call_count : Dynamic;
	public function run_step_fn(step_fn:Dynamic):Dynamic;
	/**
		The TensorFlow process to which this session will connect.
	**/
	public var sess_str : Dynamic;
	public var session : Dynamic;
	public function should_stop():Dynamic;
}