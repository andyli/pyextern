/* This file is generated, do not edit! */
package tensorflow.contrib.tfprof.tfprof_logger;
@:pythonImport("tensorflow.contrib.tfprof.tfprof_logger") extern class Tfprof_logger_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Log provided 'op_log', and add additional model information below.
		
		  The API also assigns ops in tf.trainable_variables() an op type called
		  '_trainable_variables'.
		  The API also logs 'flops' statistics for ops with op.RegisterStatistics()
		  defined. flops calculation depends on Tensor shapes defined in 'graph',
		  which might not be complete. 'run_meta', if provided, completes the shape
		  information with best effort.
		
		Args:
		  graph: tf.Graph. If None and eager execution is not enabled, use
		      default graph.
		  log_dir: directory to write the log file.
		  op_log: (Optional) OpLogProto proto to be written. If not provided, an new
		      one is created.
		  run_meta: (Optional) RunMetadata proto that helps flops computation using
		      run time shape information.
		  add_trace: Whether to add python code trace information.
		      Used to support "code" view.
	**/
	static public function _write_op_log(graph:Dynamic, log_dir:Dynamic, ?op_log:Dynamic, ?run_meta:Dynamic, ?add_trace:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-01-01.
		Instructions for updating:
		Use `tf.profiler.write_op_log. go/tfprof`
	**/
	static public function write_op_log(graph:Dynamic, log_dir:Dynamic, ?op_log:Dynamic, ?run_meta:Dynamic, ?add_trace:Dynamic):Dynamic;
}