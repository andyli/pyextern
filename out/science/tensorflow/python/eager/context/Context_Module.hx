/* This file is generated, do not edit! */
package tensorflow.python.eager.context;
@:pythonImport("tensorflow.python.eager.context") extern class Context_Module {
	static public var ASYNC : Dynamic;
	static public var DEVICE_PLACEMENT_EXPLICIT : Dynamic;
	static public var DEVICE_PLACEMENT_SILENT : Dynamic;
	static public var DEVICE_PLACEMENT_SILENT_FOR_INT32 : Dynamic;
	static public var DEVICE_PLACEMENT_WARN : Dynamic;
	static public var EAGER_MODE : Dynamic;
	static public var GRAPH_MODE : Dynamic;
	static public var SYNC : Dynamic;
	static public var _KEEP_ALIVE_SECS : Dynamic;
	static public var _MAXINT32 : Dynamic;
	static public var _RUN_EAGER_OP_AS_FUNCTION_ENABLED : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _context : Dynamic;
	static public var _context_id_counter : Dynamic;
	static public var _context_lock : Dynamic;
	static public function _create_context():Dynamic;
	static public var _device_parsing_cache : Dynamic;
	static public var _python_eager_context_create_counter : Dynamic;
	/**
		Clears and re-initializes the singleton context.
		
		Should only be used for testing.
	**/
	static public function _reset_context():Dynamic;
	static public function _set_context(ctx:Dynamic):Dynamic;
	static public function _set_context_locked(ctx:Dynamic):Dynamic;
	static public var _starting_device_spec : Dynamic;
	static public var _tensor_caches_map : Dynamic;
	static public function _tmp_in_graph_mode():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Add a function definition to the context.
	**/
	static public function add_function(fdef:Dynamic):Dynamic;
	/**
		Returns the anonymous shared name.
		
		In eager mode we create anonymous resources to avoid spurious sharing issues.
		The runtime generates a unique name on our behalf when the reserved
		anonymous shared name is used as a shared name.
		
		Returns:
		  The anonymous shared name.
	**/
	static public function anonymous_name():Dynamic;
	/**
		Clear pending operations and error statuses in async execution.
		
		In async execution mode, an error in op/function execution can lead to errors
		in subsequent ops/functions that are scheduled but not yet executed. Calling
		this method clears all pending operations and reset the async execution state.
		
		Example:
		
		```
		while True:
		  try:
		    # Step function updates the metric `loss` internally
		    train_step_fn()
		  except tf.errors.OutOfRangeError:
		    tf.experimental.async_clear_error()
		    break
		logging.info('loss = %s', loss.numpy())
		```
	**/
	static public function async_clear_error():Dynamic;
	/**
		Context manager for grouping async operations.
		
		Ops/function calls inside the scope can return before finishing the actual
		execution. When exiting the async scope, a synchronization barrier will be
		automatically added to ensure the completion of all async op and function
		execution, potentially raising exceptions if async execution results in
		an error state.
		
		Users may write the following code to asynchronously invoke `train_step_fn`
		and log the `loss` metric for every `num_steps` steps in a training loop.
		`train_step_fn` internally consumes data using `iterator.get_next()`, and may
		throw OutOfRangeError when running out of data. In the case:
		
		```
		try:
		  with tf.experimental.async_scope():
		    for _ in range(num_steps):
		      # Step function updates the metric `loss` internally
		      train_step_fn()
		except tf.errors.OutOfRangeError:
		  tf.experimental.async_clear_error()
		logging.info('loss = %s', loss.numpy())
		```
		
		Yields:
		  Context manager for grouping async operations.
	**/
	static public function async_scope():Dynamic;
	/**
		Sync all async operations and raise any errors during execution.
		
		In async execution mode, an op/function call can return before finishing the
		actual execution. Calling this method creates a synchronization barrier for
		all async op and function execution. It only returns when all pending nodes
		are finished, potentially raising exceptions if async execution results in
		an error state. It is a no-op if the context is not initialized.
	**/
	static public function async_wait():Dynamic;
	static public function check_alive(worker_name:Dynamic):Dynamic;
	/**
		Collects a flat list of pre- or post-optimization graphs.
		
		The collected graphs include device placements, which can be useful for
		testing.
		
		Usage:
		
		```
		@def_function.function
		def f(x):
		  return x + constant_op.constant(1.)
		
		with context.collect_graphs() as graphs:
		  with ops.device("CPU:0"):
		    f(constant_op.constant(1.))
		
		graph, = graphs  # `graph` contains a single GraphDef for inspection
		```
		
		Args:
		  optimized: whether to collect optimized graphs or non-optimized graphs
		
		Yields:
		  A list of GraphDefs, populated when the context manager exits.
	**/
	static public function collect_graphs(?optimized:Dynamic):Dynamic;
	/**
		Returns current context (or None if one hasn't been initialized).
	**/
	static public function context():Dynamic;
	/**
		Returns current context (or None if one hasn't been initialized).
	**/
	static public function context_safe():Dynamic;
	static public var default_execution_mode : Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	/**
		Context-manager to force placement of operations and Tensors on a device.
		
		Example:
		```python
		with tf.device('gpu:0'):
		  with tf.device('cpu:0'):
		    shape = tf.constant([], dtype=tf.int32)
		  x = tf.random.truncated_normal(shape, tf.float32)
		```
		will ensure that the `shape` Tensor is on CPU but the `truncated_normal`
		operation runs on GPU 0.
		
		Args:
		  name: Name of the device (see context().devices()), or None to perform
		    automatic placement.
		
		Returns:
		  Context manager for setting the device.
	**/
	static public function device(name:Dynamic):Dynamic;
	/**
		Context manager for setting device placement policy for current thread.
	**/
	static public function device_policy(policy:Dynamic):Dynamic;
	/**
		Disables graph collection of executed functions.
	**/
	static public function disable_graph_collection():Dynamic;
	static public function disable_run_eager_op_as_function():Dynamic;
	/**
		Disables tracing of op execution via RunMetadata.
	**/
	static public function disable_run_metadata():Dynamic;
	static public var division : Dynamic;
	/**
		Context-manager to enable eager execution for the current thread.
	**/
	static public function eager_mode():Dynamic;
	/**
		Enables graph collection of executed functions.
		
		To retrieve the accumulated graphs call context.export_run_metadata()
		and to stop collecting graphs call context.disable_graph_collection().
	**/
	static public function enable_graph_collection():Dynamic;
	/**
		Execute elementary eager ops (non-function) wrapped in a call op.
		
		This should be functionally equivalent to running the eager op's kernel
		directly (the default) but reduces the number of codepaths for executing
		TF2 programs in the runtime, thereby improving consistency (in terms of
		optimizations and rewrites for instance) and maintainability.
	**/
	static public function enable_run_eager_op_as_function():Dynamic;
	/**
		Enables tracing of op execution via RunMetadata.
		
		To retrieve the accumulated metadata call context.export_run_metadata()
		and to stop tracing call context.disable_run_metadata().
	**/
	static public function enable_run_metadata():Dynamic;
	/**
		Initialize the context.
	**/
	static public function ensure_initialized():Dynamic;
	/**
		Checks whether the current thread has eager execution enabled.
		
		Eager execution is enabled by default and this API returns `True`
		in most of cases. However, this API might return `False` in the following use
		cases.
		
		*  Executing inside `tf.function`, unless under `tf.init_scope` or
		   `tf.config.run_functions_eagerly(True)` is previously called.
		*  Executing inside a transformation function for `tf.dataset`.
		*  `tf.compat.v1.disable_eager_execution()` is called.
		
		General case:
		
		>>> print(tf.executing_eagerly())
		True
		
		Inside `tf.function`:
		
		>>> @tf.function
		... def fn():
		...   with tf.init_scope():
		...     print(tf.executing_eagerly())
		...   print(tf.executing_eagerly())
		>>> fn()
		True
		False
		
		Inside `tf.function` after `tf.config.run_functions_eagerly(True)` is called:
		
		>>> tf.config.run_functions_eagerly(True)
		>>> @tf.function
		... def fn():
		...   with tf.init_scope():
		...     print(tf.executing_eagerly())
		...   print(tf.executing_eagerly())
		>>> fn()
		True
		True
		>>> tf.config.run_functions_eagerly(False)
		
		Inside a transformation function for `tf.dataset`:
		
		>>> def data_fn(x):
		...   print(tf.executing_eagerly())
		...   return x
		>>> dataset = tf.data.Dataset.range(100)
		>>> dataset = dataset.map(data_fn)
		False
		
		Returns:
		  `True` if the current thread has eager execution enabled.
	**/
	static public function executing_eagerly():Dynamic;
	/**
		Checks whether the current thread has eager execution enabled.
		
		Eager execution is typically enabled via
		`tf.compat.v1.enable_eager_execution`, but may also be enabled within the
		context of a Python function via tf.contrib.eager.py_func.
		
		When eager execution is enabled, returns `True` in most cases. However,
		this API might return `False` in the following use cases.
		
		*  Executing inside `tf.function`, unless under `tf.init_scope` or
		   `tf.config.run_functions_eagerly(True)` is previously called.
		*  Executing inside a transformation function for `tf.dataset`.
		*  `tf.compat.v1.disable_eager_execution()` is called.
		
		>>> tf.compat.v1.enable_eager_execution()
		
		General case:
		
		>>> print(tf.executing_eagerly())
		True
		
		Inside `tf.function`:
		
		>>> @tf.function
		... def fn():
		...   with tf.init_scope():
		...     print(tf.executing_eagerly())
		...   print(tf.executing_eagerly())
		>>> fn()
		True
		False
		
		Inside `tf.function`
		after  `tf.config.run_functions_eagerly(True)` is called:
		
		>>> tf.config.run_functions_eagerly(True)
		>>> @tf.function
		... def fn():
		...   with tf.init_scope():
		...     print(tf.executing_eagerly())
		...   print(tf.executing_eagerly())
		>>> fn()
		True
		True
		>>> tf.config.run_functions_eagerly(False)
		
		Inside a transformation function for `tf.dataset`:
		
		>>> def data_fn(x):
		...   print(tf.executing_eagerly())
		...   return x
		>>> dataset = tf.data.Dataset.range(100)
		>>> dataset = dataset.map(data_fn)
		False
		
		Returns:
		  `True` if the current thread has eager execution enabled.
	**/
	static public function executing_eagerly_v1():Dynamic;
	/**
		Context manager for setting execution mode for current thread.
	**/
	static public function execution_mode(mode:Dynamic):Dynamic;
	/**
		Context manager for changing executor for current thread.
		
		Args:
		  e: A Executor to execute eager ops under this scope. Setting it to None will
		    switch back to use the default executor for the context.
		
		Yields:
		  Context manager for setting the executor for current thread.
	**/
	static public function executor_scope(e:Dynamic):Dynamic;
	/**
		Returns a RunMetadata proto with accumulated information.
		
		The returned protocol buffer contains information since the most recent call
		to either enable_run_metadata or export_run_metadata.
		
		Returns:
		  A RunMetadata protocol buffer.
	**/
	static public function export_run_metadata():Dynamic;
	/**
		Context manager for setting the executor of eager defined functions.
		
		Eager defined functions are functions decorated by tf.contrib.eager.defun.
		
		Args:
		  executor_type: a string for the name of the executor to be used to execute
		    functions defined by tf.contrib.eager.defun.
		
		Yields:
		  Context manager for setting the executor of eager defined functions.
	**/
	static public function function_executor_type(executor_type:Dynamic):Dynamic;
	/**
		Get the ConfigProto of Context.
		
		Returns:
		  The ConfigProto of Context.
	**/
	static public function get_config():Dynamic;
	/**
		Get the device name for the current thread.
		
		Returns:
		  The device name for the current thread.
	**/
	static public function get_device_name():Dynamic;
	/**
		Get the Executor of the current thread.
		
		Returns:
		  The Executor of the current thread.
	**/
	static public function get_executor():Dynamic;
	static public function get_function_def(name:Dynamic):Dynamic;
	/**
		Get if device placements are logged.
		
		Returns:
		  If device placements are logged.
	**/
	static public function get_log_device_placement():Dynamic;
	static public function get_server_def():Dynamic;
	/**
		Returns the eager mode seed.
	**/
	static public function global_seed():Dynamic;
	/**
		Context-manager to disable eager execution for the current thread.
	**/
	static public function graph_mode():Dynamic;
	/**
		Use executing_eagerly() instead. This function will be removed.
	**/
	static public function in_eager_mode():Dynamic;
	/**
		Initialize the virtual devices.
	**/
	static public function initialize_logical_devices():Dynamic;
	/**
		Returns the operation seed generated based on global seed.
	**/
	static public function internal_operation_seed():Dynamic;
	/**
		Returns true if current thread is in async mode.
	**/
	static public function is_async():Dynamic;
	/**
		Returns true if TFRT should be enabled.
	**/
	static public function is_tfrt_enabled():Dynamic;
	/**
		Get the number of available GPU devices.
		
		Returns:
		  The number of available GPU devices.
	**/
	static public function num_gpus():Dynamic;
	static public var print_function : Dynamic;
	/**
		Calls TFE_RegisterCustomDevice to register a custom device with Python.
		
		Enables using C extensions specifying a custom device from Python. See the
		experimental eager C API in tensorflow/c/eager/c_api_experimental.h for
		details.
		
		Note that custom devices are not currently supported inside `tf.function`s.
		
		Args:
		  device_capsule: A PyCapsule with the name set to 'TFE_CustomDevice'
		    containing a pointer to a TFE_CustomDevice struct. The capsule retains
		    ownership of the memory.
		  device_name: A string indicating the name to register the custom device
		    under, e.g. '/job:localhost/replica:0/task:0/device:CUSTOM:0'. It may
		    subsequently be passed to `with tf.device(...):`.
		  device_info_capsule: A PyCapsule with the name set to
		    'TFE_CustomDevice_DeviceInfo' containing a pointer to a device-specific
		    struct with the initial state of the custom device (the void* device_info
		    argument to TFE_RegisterCustomDevice). This method takes ownership of the
		    memory and clears the capsule destructor.
	**/
	static public function register_custom_device(device_capsule:Dynamic, device_name:Dynamic, device_info_capsule:Dynamic):Dynamic;
	/**
		Remove a function from the context.
	**/
	static public function remove_function(name:Dynamic):Dynamic;
	static public function run_eager_op_as_function_enabled():Dynamic;
	/**
		Name of the current scope.
	**/
	static public function scope_name():Dynamic;
	/**
		Sets execution mode for the current thread.
	**/
	static public function set_execution_mode(mode:Dynamic):Dynamic;
	/**
		Sets the eager mode seed.
	**/
	static public function set_global_seed(seed:Dynamic):Dynamic;
	/**
		Turns logging for device placement decisions on or off.
		
		Operations execute on a particular device, producing and consuming tensors on
		that device. This may change the performance of the operation or require
		TensorFlow to copy data to or from an accelerator, so knowing where operations
		execute is useful for debugging performance issues.
		
		For more advanced profiling, use the [TensorFlow
		profiler](https://www.tensorflow.org/guide/profiler).
		
		Device placement for operations is typically controlled by a `tf.device`
		scope, but there are exceptions, for example operations on a `tf.Variable`
		which follow the initial placement of the variable. Turning off soft device
		placement (with `tf.config.set_soft_device_placement`) provides more explicit
		control.
		
		>>> tf.debugging.set_log_device_placement(True)
		>>> tf.ones([])
		>>> # [...] op Fill in device /job:localhost/replica:0/task:0/device:GPU:0
		>>> with tf.device("CPU"):
		...  tf.ones([])
		>>> # [...] op Fill in device /job:localhost/replica:0/task:0/device:CPU:0
		>>> tf.debugging.set_log_device_placement(False)
		
		Turning on `tf.debugging.set_log_device_placement` also logs the placement of
		ops inside `tf.function` when the function is called.
		
		Args:
		  enabled: Whether to enabled device placement logging.
	**/
	static public function set_log_device_placement(enabled:Dynamic):Dynamic;
	static public function set_server_def(server_def:Dynamic):Dynamic;
	/**
		Set if soft device placements should be allowed.
		
		Args:
		  enabled: Whether to enable soft device placement.
	**/
	static public function set_soft_device_placement(enabled:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function update_server_def(server_def:Dynamic):Dynamic;
}