/* This file is generated, do not edit! */
package tensorflow.python.profiler.tfprof_logger;
@:pythonImport("tensorflow.python.profiler.tfprof_logger") extern class Tfprof_logger_Module {
	static public var REGISTERED_FLOP_STATS : Dynamic;
	static public var TRAINABLE_VARIABLES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Fill Tensor shapes in 'graph' with run time shape from 'run_meta'.
	**/
	static public function _fill_missing_graph_shape(graph:Dynamic, run_meta:Dynamic):Dynamic;
	/**
		Extract trainable model parameters and FLOPs for ops from a Graph.
		
		Args:
		  graph: tf.Graph.
		  run_meta: RunMetadata proto used to complete shape information.
		  add_trace: Whether to add op trace information.
		  add_trainable_var: Whether to assign tf.compat.v1.trainable_variables() op
		    type '_trainable_variables'.
		Returns:
		  logged_ops: dict mapping from op_name to OpLogEntry.
		  string_to_id: dict mapping from string to id.
	**/
	static public function _get_logged_ops(graph:Dynamic, ?run_meta:Dynamic, ?add_trace:Dynamic, ?add_trainable_var:Dynamic):Dynamic;
	/**
		Maps string to id.
	**/
	static public function _str_id(s:Dynamic, str_to_id:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Merge the tfprof default extra info with caller's op_log.
		
		Args:
		  graph: tf.Graph. If None and eager execution is not enabled, use
		      default graph.
		  op_log: OpLogProto proto.
		  run_meta: RunMetadata proto used to complete shape information.
		  add_trace: Whether to add op trace information.
		  add_trainable_var: Whether to assign tf.compat.v1.trainable_variables() op
		    type '_trainable_variables'.
		Returns:
		  tmp_op_log: Merged OpLogProto proto.
	**/
	static public function merge_default_with_oplog(graph:Dynamic, ?op_log:Dynamic, ?run_meta:Dynamic, ?add_trace:Dynamic, ?add_trainable_var:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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