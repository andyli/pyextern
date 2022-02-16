/* This file is generated, do not edit! */
package tensorflow.python.eager.lift_to_graph;
@:pythonImport("tensorflow.python.eager.lift_to_graph") extern class Lift_to_graph_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _as_operation(op_or_tensor:Dynamic):Dynamic;
	static public function _constant_inputs(op_or_tensor:Dynamic):Dynamic;
	/**
		Copy an op directly to a given graph.
		
		Generally `op`'s inputs should already have been copied. If this is not the
		case, for example with v1 while_loops, then `_copy_non_source` inserts
		placeholders for the unavailable Tensors and returns a list of required
		mutations.
		
		Args:
		  op: The op to be copied.
		  graph: The destination graph.
		  op_map: A dict mapping ops and tensors in the old graph to the new one.
		  base_graph: The graph we're copying from, for any necessary functions.
		Returns:
		  A tuple of (required_inputs, required_control_inputs):
		    required_inputs:
		      A list of `_InputMutation` tuples containing inputs to `copied_op` which
		      must be updated once `old_graph_tensor` has been copied.
		    required_control_inputs:
		      A list of `_ControlMutation` tuples containing control inputs to
		      `copied_op` which must be added once `old_graph_op` has been copied.
	**/
	static public function _copy_non_source(op:Dynamic, graph:Dynamic, op_map:Dynamic, base_graph:Dynamic):Dynamic;
	/**
		Create a source in a graph based on a Tensor from a different graph.
		
		This function creates a placeholder analog of `s` in a graph with the
		following behavior:
		
		1) If s is a captured Tensor or Variable and handle_captures is set to True,
		   simply capture it in the new graph as well.
		
		2) If s is a PlaceholderWithDefault whose default is a constant, preserve
		   said default in the new graph.
		
		3) When applicable, copy resource variable metadata from `s` to the newly
		   created placeholder.
		
		Args:
		  s: The source of interest.
		  graph: The destination graph.
		  op_map: A dict mapping ops and tensors in the old graph to the new one.
		  handle_captures: A boolean indicating whether to re-capture s in the new
		    graph or simply create a vanilla placeholder.
		  inverse_captures: A dict mapping s back to the Tensor or Variable that it
		    captures.
		  base_graph: The graph being copied from.
	**/
	static public function _copy_source(s:Dynamic, graph:Dynamic, op_map:Dynamic, handle_captures:Dynamic, inverse_captures:Dynamic, base_graph:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Copies the tensor and all its inputs recursively to the outer graph.
		
		Args:
		  tensors: The Tensors to lift.
		  graph: The graph to lift to.
		  sources: Optional sequence of nodes to start from. If omitted the whole
		    subgraph which feeds into `init_tensor` is lifted.
		  disallowed_placeholders: An optional set of ops which may not appear in the
		    lifted graph. Defaults to all placeholders.
		  add_sources: A boolean indicating whether placeholders which are not in
		    sources should be allowed.
		  handle_captures: A boolean indicating whether to re-capture s in the new
		    graph or simply create a vanilla placeholder.
		  base_graph: The graph from which to lift ops. This will be inferred if not
		    specified.
		  op_map: A map contains all the existing nodes that have been lifted to the
		    destination graph, so they won't be lifted and copied again.
		
		Returns:
		  A mapping from ops in the current default graph to ops in `graph`.
		
		Raises:
		  UnliftableError: If a placeholder blocks lifting.
	**/
	static public function lift_to_graph(tensors:Dynamic, graph:Dynamic, ?sources:Dynamic, ?disallowed_placeholders:Dynamic, ?add_sources:Dynamic, ?handle_captures:Dynamic, ?base_graph:Dynamic, ?op_map:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}