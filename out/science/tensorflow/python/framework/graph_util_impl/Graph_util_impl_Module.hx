/* This file is generated, do not edit! */
package tensorflow.python.framework.graph_util_impl;
@:pythonImport("tensorflow.python.framework.graph_util_impl") extern class Graph_util_impl_Module {
	static public var _CONTROL_FLOW_OP_NAMES_OR_IDENTITY : Dynamic;
	static public var _VARIABLE_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Assert that nodes are present in the graph.
	**/
	static public function _assert_nodes_are_present(name_to_node:Dynamic, nodes:Dynamic):Dynamic;
	/**
		Breadth first search for reachable nodes from target nodes.
	**/
	static public function _bfs_for_reachable_nodes(target_nodes:Dynamic, name_to_input_name:Dynamic):Dynamic;
	/**
		Extracts useful information from the graph and returns them.
	**/
	static public function _extract_graph_summary(graph_def:Dynamic):Dynamic;
	/**
		Decodes colocated node name and returns it without loc:@ prepended.
	**/
	static public function _get_colocated_node_name(colocated_node_name:Dynamic):Dynamic;
	/**
		Returns true if 'op' refers to a Variable node.
	**/
	static public function _is_variable_op(op:Dynamic):Dynamic;
	static public function _node_name(n:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Replaces all the variables in a graph with constants of the same values. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.compat.v1.graph_util.convert_variables_to_constants`
		
		If you have a trained graph containing Variable ops, it can be convenient to
		convert them all to Const ops holding the same values. This makes it possible
		to describe the network fully with a single GraphDef file, and allows the
		removal of a lot of ops related to loading and saving the variables.
		
		Args:
		  sess: Active TensorFlow session containing the variables.
		  input_graph_def: GraphDef object holding the network.
		  output_node_names: List of name strings for the result nodes of the graph.
		  variable_names_whitelist: The set of variable names to convert (by default,
		                            all variables are converted).
		  variable_names_blacklist: The set of variable names to omit converting
		                            to constants.
		
		Returns:
		  GraphDef containing a simplified version of the original.
		
		Raises:
		  RuntimeError: if a DT_RESOURCE op is found whose ancestor Variables are both
		    denylisted AND whitelisted for freezing.
	**/
	static public function convert_variables_to_constants(sess:Dynamic, input_graph_def:Dynamic, output_node_names:Dynamic, ?variable_names_whitelist:Dynamic, ?variable_names_blacklist:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Extract the subgraph that can reach any of the nodes in 'dest_nodes'. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.compat.v1.graph_util.extract_sub_graph`
		
		Args:
		  graph_def: A graph_pb2.GraphDef proto.
		  dest_nodes: An iterable of strings specifying the destination node names.
		Returns:
		  The GraphDef of the sub-graph.
		
		Raises:
		  TypeError: If 'graph_def' is not a graph_pb2.GraphDef proto.
	**/
	static public function extract_sub_graph(graph_def:Dynamic, dest_nodes:Dynamic):Dynamic;
	/**
		Returns True iff the graph def arguments are structurally equivalent.
		
		The notion of equivalence encoded here checks that the set of NodeDefs in
		the GraphDef's function library and main graph body are identical.
		Additionally, it checks that the functions in the function library are equal
		as sets.
		
		Example usage:
		
		```
		with tf.Graph().as_default() as g1:
		  tf.constant(1)
		
		with tf.Graph().as_default() as g2:
		  tf.constant(2)
		
		with tf.Graph().as_default() as g3:
		  tf.constant(1)
		
		assert tf.__internal__.graph_util.graph_defs_equal(g1.as_graph_def(),
		                                                   g3.as_graph_def())
		
		assert not tf.__internal__.graph_util.graph_defs_equal(g1.as_graph_def(),
		                                                       g2.as_graph_def())
		```
		
		Args:
		  graph_def_1: Instance of `graph_pb2.GraphDef` to compare.
		  graph_def_2: Instance of `graph_pb2.GraphDef` to compare.
		  treat_nan_as_equal: Boolean indicating whether or not to treat nan
		    floating-point values as equal. This is crucial for any equivalence
		    relation defined over GraphDefs, to ensure symmetry.
		
		Returns:
		  Boolean indicating structural equivalence as described above.
		
		Raises:
		  TypeError: If either of the GraphDefs are not instances of
		    `graph_pb2.GraphDef`.
	**/
	static public function graph_defs_equal(graph_def_1:Dynamic, graph_def_2:Dynamic, ?treat_nan_as_equal:Dynamic):Dynamic;
	/**
		Returns True if the given node_def must run on CPU, otherwise False. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.compat.v1.graph_util.must_run_on_cpu`
		
		Args:
		  node: The node to be assigned to a device. Could be either an ops.Operation
		    or NodeDef.
		  pin_variables_on_cpu: If True, this function will return False if node_def
		    represents a variable-related op.
		
		Returns:
		  True if the given node must run on CPU, otherwise False.
	**/
	static public function must_run_on_cpu(node:Dynamic, ?pin_variables_on_cpu:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Prunes out nodes that aren't needed for inference. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.compat.v1.graph_util.remove_training_nodes`
		
		There are nodes like Identity and CheckNumerics that are only useful
		during training, and can be removed in graphs that will be used for
		nothing but inference. Here we identify and remove them, returning an
		equivalent graph. To be specific, CheckNumerics nodes are always removed, and
		Identity nodes that aren't involved in control edges are spliced out so that
		their input and outputs are directly connected.
		
		Args:
		  input_graph: Model to analyze and prune.
		  protected_nodes: An optional list of names of nodes to be kept
		    unconditionally. This is for example useful to preserve Identity output
		    nodes.
		
		Returns:
		  A list of nodes with the unnecessary ones removed.
	**/
	static public function remove_training_nodes(input_graph:Dynamic, ?protected_nodes:Dynamic):Dynamic;
	/**
		Convenience function to get a shape from a NodeDef's input string. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.compat.v1.graph_util.tensor_shape_from_node_def_name`
	**/
	static public function tensor_shape_from_node_def_name(graph:Dynamic, input_name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}