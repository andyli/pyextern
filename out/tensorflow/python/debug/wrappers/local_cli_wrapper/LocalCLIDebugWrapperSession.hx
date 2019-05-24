/* This file is generated, do not edit! */
package tensorflow.python.debug.wrappers.local_cli_wrapper;
@:pythonImport("tensorflow.python.debug.wrappers.local_cli_wrapper", "LocalCLIDebugWrapperSession") extern class LocalCLIDebugWrapperSession {
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
		Constructor of LocalCLIDebugWrapperSession.
		
		Args:
		  sess: The TensorFlow `Session` object being wrapped.
		  dump_root: (`str`) optional path to the dump root directory. Must be a
		    directory that does not exist or an empty directory. If the directory
		    does not exist, it will be created by the debugger core during debug
		    `run()` calls and removed afterwards. If `None`, the debug dumps will
		    be at tfdbg_<random_string> under the system temp directory.
		  log_usage: (`bool`) whether the usage of this class is to be logged.
		  ui_type: (`str`) requested UI type. Currently supported:
		    (curses | readline)
		  thread_name_filter: Regular-expression white list for thread name. See
		    the doc of `BaseDebugWrapperSession` for details.
		
		Raises:
		  ValueError: If dump_root is an existing and non-empty directory or if
		    dump_root is a file.
	**/
	@:native("__init__")
	public function ___init__(sess:Dynamic, ?dump_root:Dynamic, ?log_usage:Dynamic, ?ui_type:Dynamic, ?thread_name_filter:Dynamic):Dynamic;
	/**
		Constructor of LocalCLIDebugWrapperSession.
		
		Args:
		  sess: The TensorFlow `Session` object being wrapped.
		  dump_root: (`str`) optional path to the dump root directory. Must be a
		    directory that does not exist or an empty directory. If the directory
		    does not exist, it will be created by the debugger core during debug
		    `run()` calls and removed afterwards. If `None`, the debug dumps will
		    be at tfdbg_<random_string> under the system temp directory.
		  log_usage: (`bool`) whether the usage of this class is to be logged.
		  ui_type: (`str`) requested UI type. Currently supported:
		    (curses | readline)
		  thread_name_filter: Regular-expression white list for thread name. See
		    the doc of `BaseDebugWrapperSession` for details.
		
		Raises:
		  ValueError: If dump_root is an existing and non-empty directory or if
		    dump_root is a file.
	**/
	public function new(sess:Dynamic, ?dump_root:Dynamic, ?log_usage:Dynamic, ?ui_type:Dynamic, ?thread_name_filter:Dynamic):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
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
	public function _exit_if_requested_by_user():Dynamic;
	/**
		Get the debug_urls value for the current run() call.
		
		Returns:
		  debug_urls: (list of str) Debug URLs for the current run() call.
		    Currently, the list consists of only one URL that is a file:// URL.
	**/
	public function _get_run_debug_urls():Dynamic;
	public function _initialize_argparsers():Dynamic;
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
	/**
		Launch the interactive command-line interface.
		
		Returns:
		  The OnRunStartResponse specified by the user using the "run" command.
	**/
	public function _launch_cli():Dynamic;
	public function _make_callable_from_options(callable_options:Dynamic):Dynamic;
	/**
		Command handler for "invoke_stepper" command during on-run-start.
	**/
	public function _on_run_start_step_handler(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Prepare (but not launch) the CLI for run-start.
	**/
	public function _prep_cli_for_run_start():Dynamic;
	/**
		Prepare (but not launch) CLI for run-end, with debug dump from the run.
		
		Args:
		  debug_dump: (debug_data.DebugDumpDir) The debug dump directory from this
		    run.
		  tf_error: (None or OpError) OpError that happened during the run() call
		    (if any).
		  passed_filter: (None or str) Name of the tensor filter that just passed
		    and caused the preparation of this run-end CLI (if any).
		  passed_filter_exclude_node_names: (None or str) Regular expression used
		    with the tensor filter to exclude ops with names matching the regular
		    expresssion.
	**/
	public function _prep_debug_cli_for_run_end(debug_dump:Dynamic, tf_error:Dynamic, passed_filter:Dynamic, passed_filter_exclude_node_names:Dynamic):Dynamic;
	public function _prep_profile_cli_for_run_end(py_graph:Dynamic, run_metadata:Dynamic):Dynamic;
	public function _print_feed_handler(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	public function _register_this_run_info(curses_cli:Dynamic):Dynamic;
	public function _remove_dump_root():Dynamic;
	/**
		Command handler for "run" command during on-run-start.
	**/
	public function _run_handler(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	public function _run_info_handler(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Update the internal state with regard to run() call history.
		
		Args:
		  run_call_count: (int) Number of run() calls that have occurred.
		  fetches: a node/tensor or a list of node/tensor that are the fetches of
		    the run() call. This is the same as the fetches argument to the run()
		    call.
		  feed_dict: None of a dict. This is the feed_dict argument to the run()
		    call.
		  is_callable_runner: (bool) whether a runner returned by
		    Session.make_callable is being run.
	**/
	public function _update_run_calls_state(run_call_count:Dynamic, fetches:Dynamic, feed_dict:Dynamic, ?is_callable_runner:Dynamic):Dynamic;
	/**
		Add a tensor filter.
		
		Args:
		  filter_name: (`str`) name of the filter.
		  tensor_filter: (`callable`) the filter callable. See the doc string of
		    `DebugDumpDir.find()` for more details about its signature.
	**/
	public function add_tensor_filter(filter_name:Dynamic, tensor_filter:Dynamic):Dynamic;
	public function as_default():Dynamic;
	public function close():Dynamic;
	/**
		The underlying TensorFlow graph, to be used in building Operations.
	**/
	public var graph : Dynamic;
	public var graph_def : Dynamic;
	public function increment_run_call_count():Dynamic;
	/**
		Overrides method in base class to implement interactive node stepper.
		
		Args:
		  node_stepper: (`stepper.NodeStepper`) The underlying NodeStepper API
		    object.
		  restore_variable_values_on_exit: (`bool`) Whether any variables whose
		    values have been altered during this node-stepper invocation should be
		    restored to their old values when this invocation ends.
		
		Returns:
		  The same return values as the `Session.run()` call on the same fetches as
		    the NodeStepper.
	**/
	public function invoke_node_stepper(node_stepper:Dynamic, ?restore_variable_values_on_exit:Dynamic):Dynamic;
	public function list_devices(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function make_callable(fetches:Dynamic, ?feed_list:Dynamic, ?accept_options:Dynamic):Dynamic;
	/**
		Overrides on-run-end callback.
		
		Actions taken:
		  1) Load the debug dump.
		  2) Bring up the Analyzer CLI.
		
		Args:
		  request: An instance of OnSessionInitRequest.
		
		Returns:
		  An instance of OnSessionInitResponse.
	**/
	public function on_run_end(request:Dynamic):Dynamic;
	/**
		Overrides on-run-start callback.
		
		Invoke the CLI to let user choose what action to take:
		  `run` / `invoke_stepper`.
		
		Args:
		  request: An instance of `OnRunStartRequest`.
		
		Returns:
		  An instance of `OnRunStartResponse`.
	**/
	public function on_run_start(request:Dynamic):Dynamic;
	/**
		Overrides on-session-init callback.
		
		Args:
		  request: An instance of `OnSessionInitRequest`.
		
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