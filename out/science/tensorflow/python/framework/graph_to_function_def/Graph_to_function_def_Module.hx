/* This file is generated, do not edit! */
package tensorflow.python.framework.graph_to_function_def;
@:pythonImport("tensorflow.python.framework.graph_to_function_def") extern class Graph_to_function_def_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts an op to a function def node and add it to `func`.
	**/
	static public function _add_op_node(op:Dynamic, func:Dynamic, input_dict:Dynamic):Dynamic;
	/**
		Create a mapping from graph tensor names to function tensor names.
	**/
	static public function _create_input_dict(function_graph:Dynamic, func_arg_placeholders:Dynamic, ?initial_value:Dynamic):Dynamic;
	static public function _get_node_def(op:Dynamic):Dynamic;
	static public function _get_op_def(op:Dynamic):Dynamic;
	/**
		Checks whether any output of this op is in func_arg_placeholders.
	**/
	static public function _is_in_placeholders(op:Dynamic, func_arg_placeholders:Dynamic):Dynamic;
	static public function _make_argname_from_tensor_name(name:Dynamic):Dynamic;
	/**
		Convert tensor t to an argdef, with a specified name or a unique name.
	**/
	static public function _tensor_to_argdef(t:Dynamic, ?name:Dynamic, ?used_names:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns `graph` as a `FunctionDef` protocol buffer.
		
		This method creates a [`FunctionDef`](
		https://www.tensorflow.org/code/tensorflow/core/framework/function.proto)
		protocol buffer that contains all the ops in `operations`.  The
		operations become the body of the function.
		
		The arguments `inputs` and `outputs` will be listed as the inputs
		and outputs tensors of the function.  They must be lists of
		tensors present in the graph.  The lists can optionally be empty.
		
		Args:
		  graph: Graph.
		  operations: the operations to put in the function. Must be a subset of
		   the operations in the graph.
		  inputs: List of tensors. Inputs to the function.
		  outputs: List of tensors. Outputs of the function.
		  out_names: Optional list of string names for the outputs.
		
		Returns:
		  A FunctionDef protocol buffer.
		
		Raises:
		  ValueError: if out_names is specified and the wrong length.
	**/
	static public function graph_to_function_def(graph:Dynamic, operations:Dynamic, inputs:Dynamic, outputs:Dynamic, ?out_names:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}