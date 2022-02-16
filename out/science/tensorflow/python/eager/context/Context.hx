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
		Creates a new Context.
		
		Args:
		  config: (Optional.) A `ConfigProto` protocol buffer with configuration
		    options for the Context. Note that a lot of these options may be
		    currently unimplemented or irrelevant when eager execution is enabled.
		  device_policy: (Optional.) What policy to use when trying to run an
		    operation on a device with inputs which are not on that device. When set
		    to None, an appropriate value will be picked automatically. The value
		    picked may change between TensorFlow releases.  Defaults to
		    DEVICE_PLACEMENT_SILENT.
		    Valid values:
		    - DEVICE_PLACEMENT_EXPLICIT: raises an error if the placement is not
		      correct.
		    - DEVICE_PLACEMENT_WARN: copies the tensors which are not on the right
		      device but raises a warning.
		    - DEVICE_PLACEMENT_SILENT: silently copies the tensors. This might hide
		      performance problems.
		    - DEVICE_PLACEMENT_SILENT_FOR_INT32: silently copies int32 tensors,
		      raising errors on the other ones.
		  execution_mode: (Optional.) Policy controlling how operations dispatched
		    are actually executed. When set to None, an appropriate value will be
		    picked automatically. The value picked may change between TensorFlow
		    releases.
		    Valid values:
		    - SYNC: executes each operation synchronously.
		    - ASYNC: executes each operation asynchronously. These operations may
		      return "non-ready" handles.
		  server_def: (Optional.) A tensorflow::ServerDef proto. Enables execution
		    on remote devices. GrpcServers need to be started by creating an
		    identical server_def to this, and setting the appropriate task_indexes,
		    so that the servers can communicate. It will then be possible to execute
		    operations on remote devices.
		
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
		    operation on a device with inputs which are not on that device. When set
		    to None, an appropriate value will be picked automatically. The value
		    picked may change between TensorFlow releases.  Defaults to
		    DEVICE_PLACEMENT_SILENT.
		    Valid values:
		    - DEVICE_PLACEMENT_EXPLICIT: raises an error if the placement is not
		      correct.
		    - DEVICE_PLACEMENT_WARN: copies the tensors which are not on the right
		      device but raises a warning.
		    - DEVICE_PLACEMENT_SILENT: silently copies the tensors. This might hide
		      performance problems.
		    - DEVICE_PLACEMENT_SILENT_FOR_INT32: silently copies int32 tensors,
		      raising errors on the other ones.
		  execution_mode: (Optional.) Policy controlling how operations dispatched
		    are actually executed. When set to None, an appropriate value will be
		    picked automatically. The value picked may change between TensorFlow
		    releases.
		    Valid values:
		    - SYNC: executes each operation synchronously.
		    - ASYNC: executes each operation asynchronously. These operations may
		      return "non-ready" handles.
		  server_def: (Optional.) A tensorflow::ServerDef proto. Enables execution
		    on remote devices. GrpcServers need to be started by creating an
		    identical server_def to this, and setting the appropriate task_indexes,
		    so that the servers can communicate. It will then be possible to execute
		    operations on remote devices.
		
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
	public function _clear_caches():Dynamic;
	/**
		Build the GPUOptions proto.
	**/
	public function _compute_gpu_options():Dynamic;
	public var _devices : Dynamic;
	public var _handle : Dynamic;
	/**
		Import config if passed in during construction.
		
		If Context was created with a ConfigProto such as when calling
		tf.compat.v1.enable_eager_execution(), then we need to pull out the
		various pieces we might be replacing and import then into our internal
		class representation.
	**/
	public function _import_config():Dynamic;
	/**
		Helper to initialize devices.
	**/
	public function _initialize_logical_devices():Dynamic;
	/**
		Gets local devices visible to the system.
		
		Args:
		  reinitialize: If True, reinitializes self._physical_devices  so that
		    dynamic registered devices will also be visible to the python front-end.
	**/
	public function _initialize_physical_devices(?reinitialize:Dynamic):Dynamic;
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
	public function _set_device(device_name:Dynamic, device_spec:Dynamic):Dynamic;
	/**
		Set a global eager mode seed for random ops.
	**/
	public function _set_global_seed(seed:Dynamic):Dynamic;
	/**
		Abort the collective ops.
		
		This is intended to be used when a peer failure is detected, which allows
		the user to handle the case instead of hanging. This aborts all on-going
		collectives. After all subsequent collectives error immediately, and you
		need to reset_context() to use collectives again.
		
		Args:
		  code: a `tf.errors` error code.
		  message: a string. The error message.
	**/
	public function abort_collective_ops(code:Dynamic, message:Dynamic):Dynamic;
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
		Add a post-op callback to the context.
		
		A post-op callback is invoked immediately after an eager operation or
		function has finished execution or after a op has been added to a graph,
		providing access to the op's type, name input and output tensors. Multiple
		op callbacks can be added, in which case the callbacks will be invoked in
		the order in which they are added.
		
		Args:
		  callback: a callable of the signature `f(op_type, inputs, attrs, outputs,
		    op_name=None, graph=None)`. See doc strings in `op_callbacks.py` for
		    details on the function signature and its semantics.
	**/
	public function add_op_callback(callback:Dynamic):Dynamic;
	/**
		Checks whether a remote worker is alive or not.
		
		Args:
		  worker_name: a string representing the remote worker. It must be a fully
		  specified name like "/job:worker/replica:0/task:0".
		
		Returns:
		  a boolean indicating whether the remote worker is alive or not.
		
		Raises:
		  ValueError: if context is not initialized.
	**/
	public function check_alive(worker_name:Dynamic):Dynamic;
	/**
		Check collective peer health.
		
		This probes each task to see if they're still alive. Note that restarted
		tasks are considered a different one, and they're considered not healthy.
		
		This should only be used in multi client multi worker training.
		
		Args:
		  task: a task string, must be in the format of /job:xxx/replica:0/task:N.
		  timeout_in_ms: an integer, the timeout. If zero, there's no timeout.
		
		Raises:
		  tf.errors.UnavailableError: when a peer is down.
		  tf.errors.FailedPreconditionError: when a peer is a different one from the
		    one this task has talked to, e.g. the peer has restarted.
		  tf.errors.InvalidArgumentError: when the task string is invalid.
	**/
	public function check_collective_ops_peer_health(task:Dynamic, timeout_in_ms:Dynamic):Dynamic;
	/**
		Clear errors in both local executors and remote workers.
		
		After receiving errors from remote workers, additional requests on the fly
		could further taint the status on the remote workers due to the async nature
		of remote execution. Calling this method block on waiting for all pending
		nodes in remote executors to finish and clear their error statuses.
		
		Raises:
		  ValueError: if context is not initialized.
	**/
	public function clear_executor_errors():Dynamic;
	/**
		Clear kernel cache and reset all stateful kernels.
	**/
	public function clear_kernel_cache():Dynamic;
	/**
		Return the ConfigProto with all runtime deltas applied.
	**/
	public var config : Dynamic;
	/**
		Configure collective ops.
		
		  Collective group leader is necessary for collective ops to run, other
		  configurations are mainly for the purpose of performance.
		
		Args:
		  collective_leader: a device string for collective leader, e.g.
		    "/job:worker/replica:0/task:0"; empty string means local execution of
		      collective ops.
		  scoped_allocator_enabled_ops: a tuple or a list of op names for scoped
		    allocator to run with.
		  use_nccl_communication: whether to use nccl communication for collective
		    ops.
		  device_filters: a tuple or a list of device strings. If set, corresponding
		    task can only see the devices filtered by these device filters.
		
		Raises:
		  RuntimeError: if this method is not called at program startup.
	**/
	public function configure_collective_ops(?collective_leader:Dynamic, ?scoped_allocator_enabled_ops:Dynamic, ?use_nccl_communication:Dynamic, ?device_filters:Dynamic):Dynamic;
	/**
		Returns a stack of context switches.
	**/
	public var context_switches : Dynamic;
	public var coordination_service : Dynamic;
	public function delete_config_key_value(key:Dynamic):Dynamic;
	/**
		Context-manager to force placement of operations and Tensors on a device.
		
		Args:
		  name: Name of the device or None to get default placement.
		
		Returns:
		  Context manager that forces device placement.
		
		Raises:
		  ValueError: If name is not a string or is an invalid device name.
		  RuntimeError: If device scopes are not properly nested.
	**/
	public function device(name:Dynamic):Dynamic;
	/**
		Returns the device name for the current thread.
	**/
	public var device_name : Dynamic;
	public var device_policy : Dynamic;
	/**
		Returns the device spec for the current thread.
	**/
	public var device_spec : Dynamic;
	/**
		List of the names of devices available to execute operations.
	**/
	public function devices():Dynamic;
	/**
		Disables graph collection of executed functions.
	**/
	public function disable_graph_collection():Dynamic;
	/**
		Disables tracing of op execution via RunMetadata.
	**/
	public function disable_run_metadata():Dynamic;
	/**
		Enable distributed collective ops with an appropriate server_def.
		
		Args:
		  server_def: A tensorflow::ServerDef proto. Enables execution on remote
		    devices.
		
		Raises:
		  ValueError: if server_def is None.
		  RuntimeError: if this method is not called at program startup.
	**/
	public function enable_collective_ops(server_def:Dynamic):Dynamic;
	public function enable_coordination_service(service_type:Dynamic):Dynamic;
	/**
		Enables graph collection of executed functions.
		
		To retrieve the accumulated graphs call context.export_run_metadata()
		and to stop collecting graphs call context.disable_graph_collection().
	**/
	public function enable_graph_collection():Dynamic;
	public var enable_mlir_bridge : Dynamic;
	public var enable_mlir_graph_optimization : Dynamic;
	/**
		Enables tracing of op execution via RunMetadata.
		
		To retrieve the accumulated metadata call context.export_run_metadata()
		and to stop tracing call context.disable_run_metadata().
	**/
	public function enable_run_metadata():Dynamic;
	/**
		Enables XLA:CPU and XLA:GPU devices registration. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		XLA:CPU and XLA:GPU devices are deprecated
	**/
	public function enable_xla_devices():Dynamic;
	/**
		Initialize handle and devices if not already done so.
	**/
	public function ensure_initialized():Dynamic;
	/**
		Returns True if current thread has eager executing enabled.
	**/
	public function executing_eagerly():Dynamic;
	/**
		Gets execution mode for current thread.
	**/
	public var execution_mode : Dynamic;
	public var executor : Dynamic;
	/**
		Returns a RunMetadata proto with accumulated information.
		
		The returned protocol buffer contains information since the most recent call
		to either enable_run_metadata or export_run_metadata.
		
		Returns:
		  A RunMetadata protocol buffer. Or None if not enabled.
	**/
	public function export_run_metadata():Dynamic;
	/**
		Returns function call options for current thread.
		
		Note that the returned object is still referenced by the eager context.
		
		Returns: the FunctionCallOptions for current thread.
	**/
	public var function_call_options : Dynamic;
	public function get_compiler_ir(device_name:Dynamic, function_name:Dynamic, args:Dynamic, ?stage:Dynamic):Dynamic;
	public function get_config_key_value(key:Dynamic):Dynamic;
	/**
		Returns details about a physical devices.
		
		Args:
		  device: A `tf.config.PhysicalDevice` returned by
		    `tf.config.list_physical_devices` or `tf.config.get_visible_devices`.
		
		Returns:
		  A dict with string keys.
	**/
	public function get_device_details(device:Dynamic):Dynamic;
	/**
		Get a function definition from the context.
		
		Args:
		  name: function signature name.
		
		Returns:
		  The requested FunctionDef.
		
		Raises:
		  tf.errors.NotFoundError: if name is not the name of a registered function.
	**/
	public function get_function_def(name:Dynamic):Dynamic;
	/**
		Get the virtual device configuration for a PhysicalDevice.
	**/
	public function get_logical_device_configuration(dev:Dynamic):Dynamic;
	/**
		Get if memory growth is enabled for a PhysicalDevice.
	**/
	public function get_memory_growth(dev:Dynamic):Dynamic;
	/**
		Returns a dict of memory info for the device.
	**/
	public function get_memory_info(dev:Dynamic):Dynamic;
	/**
		Get experimental options for the optimizer.
		
		Returns:
		  Dictionary of current option values
	**/
	public function get_optimizer_experimental_options():Dynamic;
	public function get_server_def():Dynamic;
	/**
		Get the list of visible devices.
	**/
	public function get_visible_devices(?device_type:Dynamic):Dynamic;
	/**
		Check if a function `name` is registered.
	**/
	public function has_function(name:Dynamic):Dynamic;
	public function host_address_space():Dynamic;
	public var inter_op_parallelism_threads : Dynamic;
	public var intra_op_parallelism_threads : Dynamic;
	public var invoking_op_callbacks : Dynamic;
	public function is_async():Dynamic;
	/**
		Get a list of names of registered functions.
		
		Returns:
		  A set of names of all registered functions for the context.
	**/
	public function list_function_names():Dynamic;
	/**
		Return logical devices.
	**/
	public function list_logical_devices(?device_type:Dynamic):Dynamic;
	/**
		List local devices visible to the system.
		
		This API allows a client to query the devices before they have been
		initialized by the eager runtime. Additionally a user can filter by device
		type, to get only CPUs or GPUs.
		
		Args:
		  device_type: Optional device type to limit results to
		
		Returns:
		  List of PhysicalDevice objects.
	**/
	public function list_physical_devices(?device_type:Dynamic):Dynamic;
	public var log_device_placement : Dynamic;
	/**
		The number of GPUs available to execute operations.
	**/
	public function num_gpus():Dynamic;
	/**
		Per-device cache for scalars.
	**/
	public function ones_rank_cache():Dynamic;
	public var op_callbacks : Dynamic;
	public var optimizer_jit : Dynamic;
	/**
		Pack multiple `EagerTensor`s of the same dtype and shape.
		
		Args:
		  tensors: a list of EagerTensors to pack.
		
		Returns:
		  A packed EagerTensor.
	**/
	public function pack_eager_tensors(tensors:Dynamic):Dynamic;
	/**
		Calls TFE_RegisterCustomDevice. See the non-member function.
	**/
	public function register_custom_device(device_capsule:Dynamic, device_name:Dynamic, device_info_capsule:Dynamic):Dynamic;
	/**
		Gets local devices visible to the system.
	**/
	public function reinitialize_physical_devices():Dynamic;
	/**
		Remove a function from the context.
		
		Once removed, the function cannot be executed anymore.
		
		Args:
		  name: function signature name.
	**/
	public function remove_function(name:Dynamic):Dynamic;
	/**
		Remove an already-registered op callback.
		
		Args:
		  callback: The op callback to be removed.
		
		Raises:
		  KeyError: If `callback` is not already registered.
	**/
	public function remove_op_callback(callback:Dynamic):Dynamic;
	/**
		Report error to other members in a multi-client cluster.
		
		Args:
		  error_code: a `tf.errors` error code.
		  error_message: a string. The error message.
	**/
	public function report_error_to_cluster(error_code:Dynamic, error_message:Dynamic):Dynamic;
	/**
		Resets the tracked memory stats for the device.
	**/
	public function reset_memory_stats(dev:Dynamic):Dynamic;
	/**
		Returns scope name for the current thread.
	**/
	public var scope_name : Dynamic;
	public function set_config_key_value(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Set virtual CPU devices in context.
		
		If virtual CPU devices are already configured at context initialization
		by tf.config.set_logical_device_configuration(), this method should not be
		called.
		
		Args:
		  num_cpus: Number of virtual CPUs.
		  prefix: Device name prefix.
		
		Raises:
		 RuntimeError: If virtual CPUs are already configured at context
		 initialization.
	**/
	public function set_logical_cpu_devices(num_cpus:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Set the virtual device configuration for a PhysicalDevice.
	**/
	public function set_logical_device_configuration(dev:Dynamic, virtual_devices:Dynamic):Dynamic;
	/**
		Set if memory growth should be enabled for a PhysicalDevice.
	**/
	public function set_memory_growth(dev:Dynamic, enable:Dynamic):Dynamic;
	/**
		Set experimental options for the optimizer.
		
		Args:
		  options: Dictionary of options to modify
	**/
	public function set_optimizer_experimental_options(options:Dynamic):Dynamic;
	/**
		Allow setting a server_def on the context.
		
		When a server def is replaced, it effectively clears a bunch of caches
		within the context. If you attempt to use a tensor object that was pointing
		to a tensor on the remote device, it will raise an error.
		
		Args:
		  server_def: A tensorflow::ServerDef proto. Enables execution on remote
		    devices.
		  keep_alive_secs: Num. seconds after which the remote end will hang up. As
		    long as the client is still alive, the server state for the context will
		    be kept alive. If the client is killed (or there is some failure), the
		    server will clean up its context keep_alive_secs after the final RPC it
		    receives.
		
		Raises:
		  ValueError: if server_def is None.
	**/
	public function set_server_def(server_def:Dynamic, ?keep_alive_secs:Dynamic):Dynamic;
	/**
		Set the list of visible devices.
	**/
	public function set_visible_devices(devices:Dynamic, ?device_type:Dynamic):Dynamic;
	public var soft_device_placement : Dynamic;
	/**
		Sync both local executors and the ones on remote workers.
		
		In async execution mode, local function calls can return before the
		corresponding remote op/function execution requests are completed. Calling
		this method creates a synchronization barrier for remote executors. It only
		returns when all remote pending nodes are finished, potentially with errors
		if any remote executors are in error state.
		
		Raises:
		  ValueError: if context is not initialized.
	**/
	public function sync_executors():Dynamic;
	/**
		Update a server_def on the context.
		
		Args:
		  server_def: A tensorflow::ServerDef proto. Enables execution on remote
		    devices.
		  keep_alive_secs: Num. seconds after which the remote end will hang up. As
		    long as the client is still alive, the server state for the context will
		    be kept alive. If the client is killed (or there is some failure), the
		    server will clean up its context keep_alive_secs after the final RPC it
		    receives.
		
		Raises:
		  ValueError: if server_def is None.
	**/
	public function update_server_def(server_def:Dynamic, ?keep_alive_secs:Dynamic):Dynamic;
	public var use_tfrt : Dynamic;
	public var use_tfrt_distributed_runtime : Dynamic;
	/**
		Per-device cache for scalars.
	**/
	public function zeros_cache():Dynamic;
}