/* This file is generated, do not edit! */
package tensorflow.python.eager.context;
@:pythonImport("tensorflow.python.eager.context", "Context") extern class Context {
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
		Creates a new Context.
		
		Args:
		  config: (Optional.) A `ConfigProto` protocol buffer with configuration
		    options for the Context. Note that a lot of these options may be
		    currently unimplemented or irrelevant when eager execution is enabled.
		  device_policy: (Optional.) What policy to use when trying to run an
		     operation on a device with inputs which are not on that device.
		     When set to None, an appropriate value will be picked automatically.
		     The value picked may change between TensorFlow releases.
		
		     Defaults to tf.contrib.eager.DEVICE_PLACEMENT_SILENT_FOR_INT32.
		     Valid values:
		     - tfe.DEVICE_PLACEMENT_EXPLICIT: raises an error if the placement is
		       not correct.
		     - tfe.DEVICE_PLACEMENT_WARN: copies the tensors which are not on the
		       right device but raises a warning.
		     - tfe.DEVICE_PLACEMENT_SILENT: silently copies the tensors. This might
		       hide performance problems.
		     - tfe.DEVICE_PLACEMENT_SILENT_FOR_INT32: silently copies int32 tensors,
		       raising errors on the other ones.
		  execution_mode: (Optional.) Policy controlling how operations dispatched
		    are actually executed. When set to None, an appropriate value will be
		    picked automatically. The value picked may change between TensorFlow
		    releases.
		    Valid values:
		    - tf.contrib.eager.SYNC: executes each operation synchronously.
		    - tf.contrib.eager.ASYNC: executes each operation asynchronously. These
		      operations may return "non-ready" handles.
		  server_def: (Optional.) A tensorflow::ServerDef proto.
		    Enables execution on remote devices. GrpcServers need to be started by
		    creating an identical server_def to this, and setting the appropriate
		    task_indexes, so that the servers can communicate. It will then be
		    possible to execute operations on remote devices.
		
		Raises:
		 ValueError: If execution_mode is not valid.
	**/
	@:native("__init__")
	public function ___init__(?config:Dynamic, ?device_policy:Dynamic, ?execution_mode:Dynamic, ?server_def:Dynamic):Dynamic;
	/**
		Creates a new Context.
		
		Args:
		  config: (Optional.) A `ConfigProto` protocol buffer with configuration
		    options for the Context. Note that a lot of these options may be
		    currently unimplemented or irrelevant when eager execution is enabled.
		  device_policy: (Optional.) What policy to use when trying to run an
		     operation on a device with inputs which are not on that device.
		     When set to None, an appropriate value will be picked automatically.
		     The value picked may change between TensorFlow releases.
		
		     Defaults to tf.contrib.eager.DEVICE_PLACEMENT_SILENT_FOR_INT32.
		     Valid values:
		     - tfe.DEVICE_PLACEMENT_EXPLICIT: raises an error if the placement is
		       not correct.
		     - tfe.DEVICE_PLACEMENT_WARN: copies the tensors which are not on the
		       right device but raises a warning.
		     - tfe.DEVICE_PLACEMENT_SILENT: silently copies the tensors. This might
		       hide performance problems.
		     - tfe.DEVICE_PLACEMENT_SILENT_FOR_INT32: silently copies int32 tensors,
		       raising errors on the other ones.
		  execution_mode: (Optional.) Policy controlling how operations dispatched
		    are actually executed. When set to None, an appropriate value will be
		    picked automatically. The value picked may change between TensorFlow
		    releases.
		    Valid values:
		    - tf.contrib.eager.SYNC: executes each operation synchronously.
		    - tf.contrib.eager.ASYNC: executes each operation asynchronously. These
		      operations may return "non-ready" handles.
		  server_def: (Optional.) A tensorflow::ServerDef proto.
		    Enables execution on remote devices. GrpcServers need to be started by
		    creating an identical server_def to this, and setting the appropriate
		    task_indexes, so that the servers can communicate. It will then be
		    possible to execute operations on remote devices.
		
		Raises:
		 ValueError: If execution_mode is not valid.
	**/
	public function new(?config:Dynamic, ?device_policy:Dynamic, ?execution_mode:Dynamic, ?server_def:Dynamic):Void;
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
	public function _clear_caches():Dynamic;
	public var _devices : Dynamic;
	public var _handle : Dynamic;
	/**
		Helper to initialize devices.
	**/
	public function _initialize_devices():Dynamic;
	/**
		Initialize handle and devices.
	**/
	public function _initialize_handle_and_devices():Dynamic;
	/**
		Returns a fake operation seed.
		
		  In eager mode, user shouldn't set or depend on operation seed.
		  Here, we generate a random seed based on global seed to make
		  operation's randomness different and depend on the global seed.
		
		Returns:
		  A fake operation seed based on global seed.
	**/
	public function _internal_operation_seed():Dynamic;
	/**
		A context manager to allow setting the mode to EAGER/GRAPH.
	**/
	public function _mode(mode:Dynamic):Dynamic;
	/**
		Set a global eager mode seed for random ops.
	**/
	public function _set_global_seed(seed:Dynamic):Dynamic;
	/**
		Add a function definition to the context.
		
		Once added, the function (identified by its name) can be executed like any
		other operation.
		
		Args:
		  fn: A wrapped TF_Function (returned from TF_GraphToFunction_wrapper).
	**/
	public function add_function(fn:Dynamic):Dynamic;
	/**
		Add a function definition to the context.
		
		Once added, the function (identified by its name) can be executed like any
		other operation.
		
		Args:
		  fdef: A FunctionDef protocol buffer message.
	**/
	public function add_function_def(fdef:Dynamic):Dynamic;
	/**
		Add a post-execution callback to the context.
		
		A post-execution callback is invoked immediately after an eager operation or
		function has finished execution, providing access to the op's type, name
		input and output tensors. Multiple execution callbacks can be added, in
		which case the callbacks will be invoked in the order in which they are
		added.
		
		Args:
		  callback: a callable of the signature
		  `f(op_type, op_name, attrs, inputs, outputs)`.
		  `op_type` is the type of the operation that was just executed (e.g.,
		    `MatMul`).
		  `op_name` is the name of the operation that has was just executed. This
		    name is set by the client who created the operation and can be `None` if
		    it is unset.
		  `attrs` contains the attributes of the operation as a `tuple` of
		    alternating attribute names and attribute values.
		  `inputs` is the `list` of input `Tensor`(s) to the op.
		  `outputs` is the `list` of output `Tensor`(s) from the op.
		   Return value(s) from the callback are ignored.
	**/
	public function add_post_execution_callback(callback:Dynamic):Dynamic;
	/**
		Clears errors raised during ASYNC execution.
	**/
	public function async_clear_error():Dynamic;
	/**
		Waits for ops dispatched in ASYNC mode to finish.
	**/
	public function async_wait():Dynamic;
	/**
		Clear all post-execution callbacks added to the context.
	**/
	public function clear_post_execution_callbacks():Dynamic;
	/**
		Returns a stack of context switches.
	**/
	public var context_switches : Dynamic;
	/**
		Context-manager to force placement of operations and Tensors on a device.
		
		Args:
		  name: Name of the device or None to get default placement.
		
		Yields:
		  Nothing.
		
		Raises:
		  ValueError: If name is not a string or is an invalid device name.
	**/
	public function device(name:Dynamic):Dynamic;
	/**
		Returns the device name for the current thread.
	**/
	public var device_name : Dynamic;
	public function device_policy(policy:Dynamic):Dynamic;
	/**
		Returns the device spec for the current thread.
	**/
	public var device_spec : Dynamic;
	/**
		List of the names of devices available to execute operations.
	**/
	public function devices():Dynamic;
	/**
		Disables tracing of op execution via RunMetadata.
	**/
	public function disable_run_metadata():Dynamic;
	/**
		Enables tracing of op execution via RunMetadata.
		
		To retrieve the accumulated metadata call context.export_run_metadata()
		and to stop tracing call context.disable_run_metadata().
	**/
	public function enable_run_metadata():Dynamic;
	public function end_step():Dynamic;
	/**
		Returns True if current thread has eager executing enabled.
	**/
	public function executing_eagerly():Dynamic;
	/**
		Context manager for setting execution mode for current thread.
	**/
	public function execution_mode(mode:Dynamic):Dynamic;
	/**
		Returns a RunMetadata proto with accumulated information.
		
		The returned protocol buffer contains information since the most recent call
		to either enable_run_metadata or export_run_metadata.
		
		Returns:
		  A RunMetadata protocol buffer. Or None if not enabled.
	**/
	public function export_run_metadata():Dynamic;
	public function get_execution_mode():Dynamic;
	/**
		The number of GPUs available to execute operations.
	**/
	public function num_gpus():Dynamic;
	/**
		Per-device cache for scalars.
	**/
	public function ones_rank_cache():Dynamic;
	/**
		Get the list of post-execution callbacks added to the context.
	**/
	public var post_execution_callbacks : Dynamic;
	/**
		Per-device cache for scalars.
	**/
	public function scalar_cache():Dynamic;
	/**
		Returns scope name for the current thread.
	**/
	public var scope_name : Dynamic;
	/**
		Sets execution mode for current thread.
	**/
	public function set_execution_mode(mode:Dynamic):Dynamic;
	/**
		Allow setting a server_def on the context.
		
		When a server def is replaced, it effectively clears a bunch of caches
		within the context. If you attempt to use a tensor object that was pointing
		to a tensor on the remote device, it will raise an error.
		
		Args:
		  server_def: A tensorflow::ServerDef proto.
		    Enables execution on remote devices.
		  keep_alive_secs: Num. seconds after which the remote end will hang up.
		    As long as the client is still alive, the server state for the context
		    will be kept alive. If the client is killed (or there is some failure),
		    the server will clean up its context keep_alive_secs after the final RPC
		    it receives.
		
		Raises:
		  ValueError: if server_def is None.
	**/
	public function set_server_def(server_def:Dynamic, ?keep_alive_secs:Dynamic):Dynamic;
	public function start_step():Dynamic;
	/**
		Returns summary writer resource.
	**/
	public var summary_writer_resource : Dynamic;
	/**
		Per-device cache for scalars.
	**/
	public function zeros_cache():Dynamic;
}