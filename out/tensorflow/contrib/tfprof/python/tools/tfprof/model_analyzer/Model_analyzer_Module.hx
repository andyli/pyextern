/* This file is generated, do not edit! */
package tensorflow.contrib.tfprof.python.tools.tfprof.model_analyzer;
@:pythonImport("tensorflow.contrib.tfprof.python.tools.tfprof.model_analyzer") extern class Model_analyzer_Module {
	static public var FLOAT_OPS_OPTIONS : Dynamic;
	static public var PRINT_ALL_TIMING_MEMORY : Dynamic;
	static public var PRINT_PARAMS_ON_DEVICE : Dynamic;
	static public var TRAINABLE_VARS_PARAMS_STAT_OPTIONS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Print model statistics.
		
		  Prints the model statistics to stdout. Also returns the results
		  in a TFGraphNodeProto proto. See go/tfprof or run tfprof tool:
		  'bazel run third_party/tensorflow/tools/tfprof help'
		
		  Examples:
		    Show the parameter/shape statistics of tf.trainable_variables().
		      print_model_analysis(sess.graph).
		
		    Show number of float ops. Only ops with RegisterStatistics defined
		    are counted.
		      show_float_op_opts = model_analyzer.FLOAT_OPS_OPTIONS
		      print_model_analysis(sess.graph, tfprof_options=show_float_op_opts)
		
		Args:
		  graph: tf.Graph.
		  run_meta: tensorflow::RunMetadata proto. When provided, also shows valid
		            timing and memory information when 'select' option contains
		            'micros' and 'bytes'.
		  op_log: tensorflow::tfprof::OpLog proto. users can use this proto to
		          group together ops and use a op_type to select the group.
		  tfprof_cmd: string. Either 'scope', 'graph', 'code'.
		              'scope' view organize outputs using ops' name scope.
		              'graph' view organize outputs using op's inputs/outputs.
		              'code' view organize outputs using Python call stack.
		  tfprof_options: See 'tfprof help' for details.
		Returns:
		  If tfprof_cmd is 'scope' or 'graph', returns TFGraphNodeProto proto.
		  If tfprof_cmd is 'code', returns TFCodeNodeProto proto.
		  Side effect: a formatted output to stdout.
	**/
	static public function print_model_analysis(graph:Dynamic, ?run_meta:Dynamic, ?op_log:Dynamic, ?tfprof_cmd:Dynamic, ?tfprof_options:Dynamic):Dynamic;
}