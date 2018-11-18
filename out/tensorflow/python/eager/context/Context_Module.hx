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
	static public var _MAXINT32 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _context : Dynamic;
	static public var _context_lock : Dynamic;
	static public var _device_parsing_cache : Dynamic;
	static public function _initialize_context():Dynamic;
	static public function _tmp_in_graph_mode():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Clears errors raised during ASYNC execution mode.
	**/
	static public function async_clear_error():Dynamic;
	/**
		Waits for ops dispatched in ASYNC mode to finish.
	**/
	static public function async_wait():Dynamic;
	/**
		Returns a singleton context object.
	**/
	static public function context():Dynamic;
	/**
		Returns current context (or None if one hasn't been initialized).
	**/
	static public function context_safe():Dynamic;
	static public var default_execution_mode : Dynamic;
	/**
		Context-manager to force placement of operations and Tensors on a device.
		
		Example:
		```python
		with tfe.device('gpu:0'):
		  with tfe.device('cpu:0'):
		    shape = tf.constant([], dtype=tf.int32)
		  x = tf.truncated_normal(shape, tf.float32)
		```
		will ensure that the `shape` Tensor is on CPU but the `truncated_normal`
		operation runs on GPU 0.
		
		Args:
		  name: Name of the device (see context().devices()), or None to
		    perform automatic placement.
		
		Returns:
		  Context manager for setting the device.
	**/
	static public function device(name:Dynamic):Dynamic;
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
		Enables tracing of op execution via RunMetadata.
		
		To retrieve the accumulated metadata call context.export_run_metadata()
		and to stop tracing call context.disable_run_metadata().
	**/
	static public function enable_run_metadata():Dynamic;
	/**
		Returns True if the current thread has eager execution enabled.
		
		Eager execution is typically enabled via `tf.enable_eager_execution`,
		but may also be enabled within the context of a Python function via
		tf.contrib.eager.py_func.
	**/
	static public function executing_eagerly():Dynamic;
	/**
		Context manager for setting execution mode for current thread.
	**/
	static public function execution_mode(mode:Dynamic):Dynamic;
	/**
		Returns a RunMetadata proto with accumulated information.
		
		The returned protocol buffer contains information since the most recent call
		to either enable_run_metadata or export_run_metadata.
		
		Returns:
		  A RunMetadata protocol buffer.
	**/
	static public function export_run_metadata():Dynamic;
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
		Returns the operation seed generated based on global seed.
	**/
	static public function internal_operation_seed():Dynamic;
	/**
		List the names of the available devices.
		
		Returns:
		  Names of the available devices, as a `list`.
	**/
	static public function list_devices():Dynamic;
	/**
		ContextManager for creating hierarchical name scopes.
	**/
	static public function namescope(name:Dynamic):Dynamic;
	/**
		Get the number of available GPU devices.
		
		Returns:
		  The number of available GPU devices.
	**/
	static public function num_gpus():Dynamic;
	static public var print_function : Dynamic;
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
	static public function set_server_def(server_def:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}