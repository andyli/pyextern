/* This file is generated, do not edit! */
package tensorflow.python.eager.profiler;
@:pythonImport("tensorflow.python.eager.profiler") extern class Profiler_Module {
	static public var _EVENT_FILE_SUFFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _profiler : Dynamic;
	static public var _profiler_lock : Dynamic;
	static public var _run_num : Dynamic;
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
		Create an empty event file if not already exists. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2020-07-01.
		Instructions for updating:
		`tf.python.eager.profiler` has deprecated, use `tf.profiler` instead.
		
		This event file indicates that we have a plugins/profile/ directory in the
		current logdir.
		
		Args:
		  logdir: log directory.
	**/
	static public function maybe_create_event_file(logdir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Save profile result to TensorBoard logdir. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2020-07-01.
		Instructions for updating:
		`tf.python.eager.profiler` has deprecated, use `tf.profiler` instead.
		
		Args:
		  logdir: log directory read by TensorBoard.
		  result: profiling result returned by stop().
	**/
	static public function save(logdir:Dynamic, result:Dynamic):Dynamic;
	/**
		Start profiling. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2020-07-01.
		Instructions for updating:
		use `tf.profiler.experimental.start` instead.
		
		Raises:
		  ProfilerAlreadyRunningError: If another profiling session is running.
	**/
	static public function start():Dynamic;
	/**
		Start a profiler grpc server that listens to given port. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2020-07-01.
		Instructions for updating:
		use `tf.profiler.experimental.server.start`.
		
		The profiler server will keep the program running even the training finishes.
		Please shutdown the server with CTRL-C. It can be used in both eager mode and
		graph mode. The service defined in
		tensorflow/core/profiler/profiler_service.proto. Please use
		tensorflow/contrib/tpu/profiler/capture_tpu_profile to capture tracable
		file following https://cloud.google.com/tpu/docs/cloud-tpu-tools#capture_trace
		
		Args:
		  port: port profiler server listens to.
	**/
	static public function start_profiler_server(port:Dynamic):Dynamic;
	/**
		Stop current profiling session and return its result. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2020-07-01.
		Instructions for updating:
		use `tf.profiler.experimental.stop` instead.
		
		Returns:
		  A binary string of tensorflow.tpu.Trace. User can write the string
		  to file for offline analysis by tensorboard.
		
		Raises:
		  ProfilerNotRunningError: If there is no active profiling session.
	**/
	static public function stop():Dynamic;
}