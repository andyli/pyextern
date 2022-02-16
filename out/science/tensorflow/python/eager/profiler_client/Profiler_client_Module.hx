/* This file is generated, do not edit! */
package tensorflow.python.eager.profiler_client;
@:pythonImport("tensorflow.python.eager.profiler_client") extern class Profiler_client_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		Sends grpc requests to profiler server to perform on-demand monitoring. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2020-07-01.
		Instructions for updating:
		use `tf.profiler.experimental.client.monitor`.
		
		This method will block caller thread until receives monitoring result.
		
		Args:
		  service_addr: Address of profiler service e.g. localhost:6009.
		  duration_ms: Duration of tracing or monitoring in ms.
		  monitoring_level: Choose a monitoring level between 1 and 2 to monitor your
		    job. Level 2 is more verbose than level 1 and shows more metrics.
		  display_timestamp: Set to true to display timestamp in monitoring result.
		
		Returns:
		  A string of monitoring output.
	**/
	static public function monitor(service_addr:Dynamic, duration_ms:Dynamic, ?monitoring_level:Dynamic, ?display_timestamp:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Sends grpc requests to profiler server to perform on-demand profiling. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2020-07-01.
		Instructions for updating:
		use `tf.profiler.experimental.client.trace`.
		
		This method will block caller thread until receives tracing result.
		
		Args:
		  service_addr: Address of profiler service e.g. localhost:6009.
		  logdir: Path of TensorBoard log directory e.g. /tmp/tb_log.
		  duration_ms: Duration of tracing or monitoring in ms.
		  worker_list: The list of worker TPUs that we are about to profile in the
		    current session. (TPU only)
		  include_dataset_ops: Set to false to profile longer traces.
		  num_tracing_attempts: Automatically retry N times when no trace event is
		    collected.
		
		Raises:
		  UnavailableError: If no trace event is collected.
	**/
	static public function start_tracing(service_addr:Dynamic, logdir:Dynamic, duration_ms:Dynamic, ?worker_list:Dynamic, ?include_dataset_ops:Dynamic, ?num_tracing_attempts:Dynamic):Dynamic;
}