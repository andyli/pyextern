/* This file is generated, do not edit! */
package tensorflow.contrib.tfprof.model_analyzer;
@:pythonImport("tensorflow.contrib.tfprof.model_analyzer") extern class Model_analyzer_Module {
	static public var ALL_ADVICE : Dynamic;
	static public var FLOAT_OPS_OPTIONS : Dynamic;
	static public var PRINT_ALL_TIMING_MEMORY : Dynamic;
	static public var TRAINABLE_VARS_PARAMS_STAT_OPTIONS : Dynamic;
	static public var _DEFAULT_ADVISE_OPTIONS : Dynamic;
	static public var _DEFAULT_PROFILE_OPTIONS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Auto profile and advise.
		
		  Builds profiles and automatically check anomalies of various
		  aspects. For more details:
		  https://github.com/tensorflow/tensorflow/tree/master/tensorflow/core/profiler/README.md
		
		Args:
		  graph: tf.Graph. If None and eager execution is not enabled, use
		      default graph.
		  run_meta: optional tensorflow.RunMetadata proto. It is necessary to
		      to support run time information profiling, such as time and memory.
		  options: see ALL_ADVICE example above. Default checks everything.
		Returns:
		  Returns AdviceProto proto
	**/
	static public function _advise(?graph:Dynamic, ?run_meta:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Profile model.
		
		  Tutorials and examples can be found in:
		  https://github.com/tensorflow/tensorflow/tree/master/tensorflow/core/profiler/README.md
		
		Args:
		  graph: tf.Graph. If None and eager execution is not enabled, use
		      default graph.
		  run_meta: optional tensorflow.RunMetadata proto. It is necessary to
		      to support run time information profiling, such as time and memory.
		  op_log: tensorflow.tfprof.OpLogProto proto. User can assign "types" to
		      graph nodes with op_log. "types" allow user to flexibly group and
		      account profiles using options['accounted_type_regexes'].
		  cmd: string. Either 'op', 'scope', 'graph' or 'code'.
		      'op' view organizes profile using operation type. (e.g. MatMul)
		      'scope' view organizes profile using graph node name scope.
		      'graph' view organizes profile using graph node inputs/outputs.
		      'code' view organizes profile using Python call stack.
		  options: A dict of options. See core/profiler/g3doc/options.md.
		Returns:
		  If cmd is 'scope' or 'graph', returns GraphNodeProto proto.
		  If cmd is 'op' or 'code', returns MultiGraphNodeProto proto.
		  Side effect: stdout/file/timeline.json depending on options['output']
	**/
	static public function _profile(?graph:Dynamic, ?run_meta:Dynamic, ?op_log:Dynamic, ?cmd:Dynamic, ?options:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-01-01.
		Instructions for updating:
		Use `tf.profiler.advise(graph, run_meta, options)`. See README.md
	**/
	static public function advise(graph:Dynamic, ?run_meta:Dynamic, ?tfprof_options:Dynamic):Dynamic;
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
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-01-01.
		Instructions for updating:
		Use `tf.profiler.profile(graph, run_meta, op_log, cmd, options)`. Build `options` with `tf.profiler.ProfileOptionBuilder`. See README.md for details
	**/
	static public function print_model_analysis(graph:Dynamic, ?run_meta:Dynamic, ?op_log:Dynamic, ?tfprof_cmd:Dynamic, ?tfprof_options:Dynamic):Dynamic;
}