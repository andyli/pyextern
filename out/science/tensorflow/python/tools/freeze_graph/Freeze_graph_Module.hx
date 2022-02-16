/* This file is generated, do not edit! */
package tensorflow.python.tools.freeze_graph;
@:pythonImport("tensorflow.python.tools.freeze_graph") extern class Freeze_graph_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Determines if the graph has any variables.
		
		Args:
		  sess: TensorFlow Session.
		
		Returns:
		  Bool.
	**/
	static public function _has_no_variables(sess:Dynamic):Dynamic;
	/**
		Parses input tensorflow graph into GraphDef proto.
	**/
	static public function _parse_input_graph_proto(input_graph:Dynamic, input_binary:Dynamic):Dynamic;
	/**
		Parses input tensorflow graph into MetaGraphDef proto.
	**/
	static public function _parse_input_meta_graph_proto(input_graph:Dynamic, input_binary:Dynamic):Dynamic;
	/**
		Parses input tensorflow Saver into SaverDef proto.
	**/
	static public function _parse_input_saver_proto(input_saver:Dynamic, input_binary:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Converts all variables in a graph and checkpoint into constants.
		
		Args:
		  input_graph: A `GraphDef` file to load.
		  input_saver: A TensorFlow Saver file.
		  input_binary: A Bool. True means input_graph is .pb, False indicates .pbtxt.
		  input_checkpoint: The prefix of a V1 or V2 checkpoint, with V2 taking
		    priority.  Typically the result of `Saver.save()` or that of
		    `tf.train.latest_checkpoint()`, regardless of sharded/non-sharded or
		    V1/V2.
		  output_node_names: The name(s) of the output nodes, comma separated.
		  restore_op_name: Unused.
		  filename_tensor_name: Unused.
		  output_graph: String where to write the frozen `GraphDef`.
		  clear_devices: A Bool whether to remove device specifications.
		  initializer_nodes: Comma separated list of initializer nodes to run before
		                     freezing.
		  variable_names_whitelist: The set of variable names to convert (optional, by
		                            default, all variables are converted),
		  variable_names_denylist: The set of variable names to omit converting
		                            to constants (optional).
		  input_meta_graph: A `MetaGraphDef` file to load (optional).
		  input_saved_model_dir: Path to the dir with TensorFlow 'SavedModel' file and
		                         variables (optional).
		  saved_model_tags: Group of comma separated tag(s) of the MetaGraphDef to
		                    load, in string format.
		  checkpoint_version: Tensorflow variable file format (saver_pb2.SaverDef.V1
		                      or saver_pb2.SaverDef.V2).
		Returns:
		  String that is the location of frozen GraphDef.
	**/
	static public function freeze_graph(input_graph:Dynamic, input_saver:Dynamic, input_binary:Dynamic, input_checkpoint:Dynamic, output_node_names:Dynamic, restore_op_name:Dynamic, filename_tensor_name:Dynamic, output_graph:Dynamic, clear_devices:Dynamic, initializer_nodes:Dynamic, ?variable_names_whitelist:Dynamic, ?variable_names_denylist:Dynamic, ?input_meta_graph:Dynamic, ?input_saved_model_dir:Dynamic, ?saved_model_tags:Dynamic, ?checkpoint_version:Dynamic):Dynamic;
	/**
		Converts all variables in a graph and checkpoint into constants.
		
		Args:
		  input_graph_def: A `GraphDef`.
		  input_saver_def: A `SaverDef` (optional).
		  input_checkpoint: The prefix of a V1 or V2 checkpoint, with V2 taking
		    priority.  Typically the result of `Saver.save()` or that of
		    `tf.train.latest_checkpoint()`, regardless of sharded/non-sharded or
		    V1/V2.
		  output_node_names: The name(s) of the output nodes, comma separated.
		  restore_op_name: Unused.
		  filename_tensor_name: Unused.
		  output_graph: String where to write the frozen `GraphDef`.
		  clear_devices: A Bool whether to remove device specifications.
		  initializer_nodes: Comma separated string of initializer nodes to run before
		                     freezing.
		  variable_names_whitelist: The set of variable names to convert (optional, by
		                            default, all variables are converted).
		  variable_names_denylist: The set of variable names to omit converting
		                            to constants (optional).
		  input_meta_graph_def: A `MetaGraphDef` (optional),
		  input_saved_model_dir: Path to the dir with TensorFlow 'SavedModel' file
		                         and variables (optional).
		  saved_model_tags: Group of comma separated tag(s) of the MetaGraphDef to
		                    load, in string format (optional).
		  checkpoint_version: Tensorflow variable file format (saver_pb2.SaverDef.V1
		                      or saver_pb2.SaverDef.V2)
		
		Returns:
		  Location of the output_graph_def.
	**/
	static public function freeze_graph_with_def_protos(input_graph_def:Dynamic, input_saver_def:Dynamic, input_checkpoint:Dynamic, output_node_names:Dynamic, restore_op_name:Dynamic, filename_tensor_name:Dynamic, output_graph:Dynamic, clear_devices:Dynamic, initializer_nodes:Dynamic, ?variable_names_whitelist:Dynamic, ?variable_names_denylist:Dynamic, ?input_meta_graph_def:Dynamic, ?input_saved_model_dir:Dynamic, ?saved_model_tags:Dynamic, ?checkpoint_version:Dynamic):Dynamic;
	static public function main(unused_args:Dynamic, flags:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Main function of freeze_graph.
	**/
	static public function run_main():Dynamic;
}