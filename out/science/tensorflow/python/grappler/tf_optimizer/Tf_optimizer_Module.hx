/* This file is generated, do not edit! */
package tensorflow.python.grappler.tf_optimizer;
@:pythonImport("tensorflow.python.grappler.tf_optimizer") extern class Tf_optimizer_Module {
	/**
		Optimize the provided metagraph.
		
		For best results, the signature_def field in `metagraph` should be populated
		with information about input (feed) and output (fetch) tensors.
		
		Args:
		  config_proto: a ConfigProto protobuf.
		  metagraph: a MetagraphDef protobuf.
		  verbose: whether to log optimization results.
		  graph_id: a string identifying this graph.
		  cluster: a grappler cluster object representing hardware resources
		      available to run this graph.
		  strip_default_attributes: whether graph node attributes having default
		      values should be removed after all the optimization passes. This
		      option is useful if the resulting graph will be executed by an older
		      process that might not know some of the recently added attributes.
	**/
	static public function OptimizeGraph(config_proto:Dynamic, metagraph:Dynamic, ?verbose:Dynamic, ?graph_id:Dynamic, ?cluster:Dynamic, ?strip_default_attributes:Dynamic):Dynamic;
	static public var _OPTIMIZE_GRAPH_CLUSTER_LOCK : Dynamic;
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
}