/* This file is generated, do not edit! */
package tensorflow.lite.python.op_hint;
@:pythonImport("tensorflow.lite.python.op_hint") extern class Op_hint_Module {
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
		  graph_def: A graph_def to use as input (that has call obviously).
		  function_def_nodes: Nodes inside the function def those are not connected to
		    the graph.
		  is_last_run: Whether it is the last run for a given pass (for OpHint has
		    children).
		
		Returns:
		  A new transformed graph-def that has call as a stub (single op).
		
		Note: after this process, the graph_def can no longer be loaded into
		    the tensorflow runtime, so all future manipulations are done in graph_def
		    level.
	**/
	static public function _convert_single_op_hint_to_stub(call:Dynamic, graph_def:Dynamic, ?function_def_nodes:Dynamic, ?is_last_run:Dynamic):Dynamic;
	/**
		Extracts useful information from the graph and returns them.
	**/
	static public function _extract_graph_summary(graph_def:Dynamic):Dynamic;
	static public function _extract_topology_sequence_mapping(nodes:Dynamic):Dynamic;
	/**
		Look at the all the input nodes and return a list of LiteFuncCall objs.
		
		Args:
		  nodes: A TensorFlow graph_def to look for LiteFuncCalls.
		
		Returns:
		  a list of `LifeFuncCall` objects in the form
	**/
	static public function _find_all_hints_in_nodes(nodes:Dynamic):Dynamic;
	/**
		Find all children hints.
		
		For a given OpHint, we find all children hints inside it, we also copy all the
		nodes inside function defs (if applicable) to the original graph_def, they are
		returned in a list as well.
		
		Args:
		  call: Parent OpHint that contains children ophints.
		  graph_def: Original graph def.
		
		Returns:
		  Ordered children hints inside the parent ophint; new graph def that contains
		  nodes inside function defs (if applicable); nodes inside function defs.
	**/
	static public function _find_children_hints(call:Dynamic, graph_def:Dynamic):Dynamic;
	/**
		Find children hints and all nodes inside the while loop.
		
		Args:
		  function_def: Function def of the while loop.
		  nodes_mapping: While loop input_arg : real node name.
		
		Returns:
		  Ordered children hints and all re-mapped nodes inside the while loop.
	**/
	static public function _find_children_hints_in_while_loop(function_def:Dynamic, nodes_mapping:Dynamic):Dynamic;
	static public function _get_correct_mapping(original_index:Dynamic, nodes:Dynamic):Dynamic;
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
	static public function _tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Converts a graphdef with LiteOp hints into stub operations. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please follow instructions under https://www.tensorflow.org/lite/convert/operation_fusion for operationfusion in tflite.
		
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
	/**
		Find all Ophints output nodes in the graph.
		
		This is used to get all the output nodes those are ophinted, it is important
		for operation like convert_variables_to_constants keep all ophints structure.
		Note: only one of session or graph_def should be used, not both.
		Why this can be useful? Some TensorFlow ops (e.g. bidirectional rnn), can
		generate multiple outputs for unfused subgraph. If not all output nodes are
		consumed, graph optimization can potentially drop the unused nodes and cause
		ophints in an invalid states (due to missing ophinted output nodes). So it's
		important for us to find all those hinted output nodes and make sure they're
		not discarded away.
		
		Args:
		  session: A TensorFlow session that contains the graph to convert.
		  graph_def: A graph def that we should convert.
		
		Returns:
		  A list of OpHints output nodes.
		Raises:
		  ValueError: If both session and graph_def are provided.
	**/
	static public function find_all_hinted_output_nodes(?session:Dynamic, ?graph_def:Dynamic):Dynamic;
	static public function is_ophint_converted(graph_def:Dynamic):Dynamic;
}