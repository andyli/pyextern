/* This file is generated, do not edit! */
package tensorflow.python.profiler.profiler;
@:pythonImport("tensorflow.python.profiler.profiler") extern class Profiler_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Auto profile and advise.
		
		  Builds profiles and automatically check anomalies of various
		  aspects. For more details:
		  https://github.com/tensorflow/tensorflow/tree/master/tensorflow/core/profiler/README.md
		
		Args:
		  graph: tf.Graph. If None and eager execution is not enabled, use default
		    graph.
		  run_meta: optional tensorflow.RunMetadata proto. It is necessary to to
		    support run time information profiling, such as time and memory.
		  options: see ALL_ADVICE example above. Default checks everything.
		
		Returns:
		  Returns AdviceProto proto
	**/
	static public function advise(?graph:Dynamic, ?run_meta:Dynamic, ?options:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Profile model.
		
		  Tutorials and examples can be found in:
		  https://github.com/tensorflow/tensorflow/blob/master/tensorflow/core/profiler/g3doc/python_api.md
		
		Args:
		  graph: tf.Graph. If None and eager execution is not enabled, use default
		    graph.
		  run_meta: optional tensorflow.RunMetadata proto. It is necessary to to
		    support run time information profiling, such as time and memory.
		  op_log: tensorflow.tfprof.OpLogProto proto. User can assign "types" to graph
		    nodes with op_log. "types" allow user to flexibly group and account
		    profiles using options['accounted_type_regexes'].
		  cmd: string. Either 'op', 'scope', 'graph' or 'code'. 'op' view organizes
		    profile using operation type. (e.g. MatMul) 'scope' view organizes profile
		    using graph node name scope. 'graph' view organizes profile using graph
		    node inputs/outputs. 'code' view organizes profile using Python call
		    stack.
		  options: A dict of options. See core/profiler/g3doc/options.md.
		
		Returns:
		  If cmd is 'scope' or 'graph', returns GraphNodeProto proto.
		  If cmd is 'op' or 'code', returns MultiGraphNodeProto proto.
		  Side effect: stdout/file/timeline.json depending on options['output']
	**/
	static public function profile(?graph:Dynamic, ?run_meta:Dynamic, ?op_log:Dynamic, ?cmd:Dynamic, ?options:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Log provided 'op_log', and add additional model information below.
		
		  The API also assigns ops in tf.compat.v1.trainable_variables() an op type
		  called '_trainable_variables'.
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
	static public function write_op_log(graph:Dynamic, log_dir:Dynamic, ?op_log:Dynamic, ?run_meta:Dynamic, ?add_trace:Dynamic):Dynamic;
}