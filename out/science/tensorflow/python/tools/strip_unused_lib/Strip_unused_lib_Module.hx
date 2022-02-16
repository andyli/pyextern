/* This file is generated, do not edit! */
package tensorflow.python.tools.strip_unused_lib;
@:pythonImport("tensorflow.python.tools.strip_unused_lib") extern class Strip_unused_lib_Module {
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
		Removes unused nodes from a GraphDef.
		
		Args:
		  input_graph_def: A graph with nodes we want to prune.
		  input_node_names: A list of the nodes we use as inputs.
		  output_node_names: A list of the output nodes.
		  placeholder_type_enum: The AttrValue enum for the placeholder data type, or
		      a list that specifies one value per input node name.
		
		Returns:
		  A `GraphDef` with all unnecessary ops removed.
		
		Raises:
		  ValueError: If any element in `input_node_names` refers to a tensor instead
		    of an operation.
		  KeyError: If any element in `input_node_names` is not found in the graph.
	**/
	static public function strip_unused(input_graph_def:Dynamic, input_node_names:Dynamic, output_node_names:Dynamic, placeholder_type_enum:Dynamic):Dynamic;
	/**
		Removes unused nodes from a graph file.
	**/
	static public function strip_unused_from_files(input_graph:Dynamic, input_binary:Dynamic, output_graph:Dynamic, output_binary:Dynamic, input_node_names:Dynamic, output_node_names:Dynamic, placeholder_type_enum:Dynamic):Dynamic;
}