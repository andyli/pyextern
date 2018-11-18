/* This file is generated, do not edit! */
package tensorflow.contrib.lite.python.op_hint;
@:pythonImport("tensorflow.contrib.lite.python.op_hint") extern class Op_hint_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Breadth first search for reachable nodes from target nodes.
	**/
	static public function _bfs_for_reachable_nodes(target_nodes:Dynamic, name_to_input_name:Dynamic):Dynamic;
	/**
		Checks to make sure node only connects to predecessor graph through inputs.
		
		Args:
		  n: Node to check
		  reachable_by_input: Nodes that are reachable by all inputs of subgraph
		  input_nodes_set: The set of nodes that are "inputs".
		  name_to_input_name: Maps from name to the list of inputs.
		
		Raises:
		  TypeError: If the given node uses items past inputs directly.
	**/
	static public function _check_subgraph_closed(n:Dynamic, reachable_by_input:Dynamic, input_nodes_set:Dynamic, name_to_input_name:Dynamic):Dynamic;
	/**
		Converts a graph_def to a new graph_def where all op hints are stubbed.
		
		Args:
		  graph_def: A graph def that we should convert.
		  write_callback: A function pointer that can be used to write intermediate
		    steps of graph transformation (optional).
		Returns:
		  A new stubbed graph_def.
	**/
	static public function _convert_op_hints_to_stubs_helper(graph_def:Dynamic, ?write_callback:Dynamic):Dynamic;
	/**
		Given a graph_def, converts `call` into a stub and returns a new graph_def.
		
		Args:
		  call: A single function call to be converted.
		  graph_def: A graph_def to use as input (that hass call obviously).
		Returns:
		  A new transformed graph-def that has call as a stub (single op).
		
		Note: after this process, the graph_def can no longer be loaded into
		    the tensorflow runtime, so all future manipulations are done in graph_def
		    level.
	**/
	static public function _convert_single_op_hint_to_stub(call:Dynamic, graph_def:Dynamic):Dynamic;
	/**
		Extracts useful information from the graph and returns them.
	**/
	static public function _extract_graph_summary(graph_def:Dynamic):Dynamic;
	/**
		Look at the current default graph and return a list of LiteFuncCall objs.
		
		Args:
		  graphdef: A TensorFlow graph_def to look for LiteFuncCalls.
		Returns:
		  a list of `LifeFuncCall` objects in the form
	**/
	static public function _find_all_hints_in_graph_def(graphdef:Dynamic):Dynamic;
	/**
		Removes a stack->unstack pattern from in_graph_def in a returned graph.
		
		Args:
		  in_graph_def: Graph def to use as input.
		Returns:
		  Simplified tuple (graph_def, changed_something) where changed_something
		  is true if anything was done.
	**/
	static public function _remove_one_redundant_stack_unstack(in_graph_def:Dynamic):Dynamic;
	static public function _remove_redundant_stack_unstack(graph_def:Dynamic):Dynamic;
	/**
		Removes the device assignment code from a tensor.
		
		e.g. _tensor_name_base("foo:3") => "foo"
		
		Args:
		  full_tensor_name: A tensor name that is annotated with a device placement
		    (this is what tensor flow introspection gives).
		Returns:
		  A name without any device assignment.
	**/
	static public function _tensor_name_base(full_tensor_name:Dynamic):Dynamic;
	static public function _tensorflow_output_name(tensor_name:Dynamic, output_index:Dynamic):Dynamic;
	/**
		Converts a graphdef with LiteOp hints into stub operations.
		
		This is used to prepare for toco conversion of complex intrinsic usages.
		Note: only one of session or graph_def should be used, not both.
		
		Args:
		  session: A TensorFlow session that contains the graph to convert.
		  graph_def: A graph def that we should convert.
		  write_callback: A function pointer that can be used to write intermediate
		    steps of graph transformation (optional).
		Returns:
		  A new graphdef with all ops contained in OpHints being replaced by
		  a single op call with the right parameters.
		Raises:
		  ValueError: If both session and graph_def are provided.
	**/
	static public function convert_op_hints_to_stubs(?session:Dynamic, ?graph_def:Dynamic, ?write_callback:Dynamic):Dynamic;
}