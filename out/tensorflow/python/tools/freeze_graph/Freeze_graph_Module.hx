/* This file is generated, do not edit! */
package tensorflow.python.tools.freeze_graph;
@:pythonImport("tensorflow.python.tools.freeze_graph") extern class Freeze_graph_Module {
	static public var FLAGS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Parser input tensorflow graph into GraphDef proto.
	**/
	static public function _parse_input_graph_proto(input_graph:Dynamic, input_binary:Dynamic):Dynamic;
	/**
		Parser input tensorflow Saver into SaverDef proto.
	**/
	static public function _parse_input_saver_proto(input_saver:Dynamic, input_binary:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Converts all variables in a graph and checkpoint into constants.
	**/
	static public function freeze_graph(input_graph:Dynamic, input_saver:Dynamic, input_binary:Dynamic, input_checkpoint:Dynamic, output_node_names:Dynamic, restore_op_name:Dynamic, filename_tensor_name:Dynamic, output_graph:Dynamic, clear_devices:Dynamic, initializer_nodes:Dynamic, ?variable_names_blacklist:Dynamic):Dynamic;
	/**
		Converts all variables in a graph and checkpoint into constants.
	**/
	static public function freeze_graph_with_def_protos(input_graph_def:Dynamic, input_saver_def:Dynamic, input_checkpoint:Dynamic, output_node_names:Dynamic, restore_op_name:Dynamic, filename_tensor_name:Dynamic, output_graph:Dynamic, clear_devices:Dynamic, initializer_nodes:Dynamic, ?variable_names_blacklist:Dynamic):Dynamic;
	static public function main(unused_args:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}