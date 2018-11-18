/* This file is generated, do not edit! */
package tensorflow._api.v1.graph_util;
@:pythonImport("tensorflow._api.v1.graph_util") extern class Graph_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Replaces all the variables in a graph with constants of the same values.
		
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
	**/
	static public function convert_variables_to_constants(sess:Dynamic, input_graph_def:Dynamic, output_node_names:Dynamic, ?variable_names_whitelist:Dynamic, ?variable_names_blacklist:Dynamic):Dynamic;
	/**
		Extract the subgraph that can reach any of the nodes in 'dest_nodes'.
		
		Args:
		  graph_def: A graph_pb2.GraphDef proto.
		  dest_nodes: A list of strings specifying the destination node names.
		Returns:
		  The GraphDef of the sub-graph.
		
		Raises:
		  TypeError: If 'graph_def' is not a graph_pb2.GraphDef proto.
	**/
	static public function extract_sub_graph(graph_def:Dynamic, dest_nodes:Dynamic):Dynamic;
	/**
		Imports the graph from `graph_def` into the current default `Graph`. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		Please file an issue at https://github.com/tensorflow/tensorflow/issues if you depend on this feature.
		
		This function provides a way to import a serialized TensorFlow
		[`GraphDef`](https://www.tensorflow.org/code/tensorflow/core/framework/graph.proto)
		protocol buffer, and extract individual objects in the `GraphDef` as
		`tf.Tensor` and `tf.Operation` objects. Once extracted,
		these objects are placed into the current default `Graph`. See
		`tf.Graph.as_graph_def` for a way to create a `GraphDef`
		proto.
		
		Args:
		  graph_def: A `GraphDef` proto containing operations to be imported into
		    the default graph.
		  input_map: A dictionary mapping input names (as strings) in `graph_def`
		    to `Tensor` objects. The values of the named input tensors in the
		    imported graph will be re-mapped to the respective `Tensor` values.
		  return_elements: A list of strings containing operation names in
		    `graph_def` that will be returned as `Operation` objects; and/or
		    tensor names in `graph_def` that will be returned as `Tensor` objects.
		  name: (Optional.) A prefix that will be prepended to the names in
		    `graph_def`. Note that this does not apply to imported function names.
		    Defaults to `"import"`.
		  op_dict: (Optional.) Deprecated, do not use.
		  producer_op_list: (Optional.) An `OpList` proto with the (possibly stripped)
		    list of `OpDef`s used by the producer of the graph. If provided,
		    unrecognized attrs for ops in `graph_def` that have their default value
		    according to `producer_op_list` will be removed. This will allow some more
		    `GraphDef`s produced by later binaries to be accepted by earlier binaries.
		
		Returns:
		  A list of `Operation` and/or `Tensor` objects from the imported graph,
		  corresponding to the names in `return_elements`.
		
		Raises:
		  TypeError: If `graph_def` is not a `GraphDef` proto,
		    `input_map` is not a dictionary mapping strings to `Tensor` objects,
		    or `return_elements` is not a list of strings.
		  ValueError: If `input_map`, or `return_elements` contains names that
		    do not appear in `graph_def`, or `graph_def` is not well-formed (e.g.
		    it refers to an unknown tensor).
	**/
	static public function import_graph_def(graph_def:Dynamic, ?input_map:Dynamic, ?return_elements:Dynamic, ?name:Dynamic, ?op_dict:Dynamic, ?producer_op_list:Dynamic):Dynamic;
	/**
		Returns True if the given node_def must run on CPU, otherwise False.
		
		Args:
		  node: The node to be assigned to a device. Could be either an ops.Operation
		    or NodeDef.
		  pin_variables_on_cpu: If True, this function will return False if node_def
		    represents a variable-related op.
		
		Returns:
		  True if the given node must run on CPU, otherwise False.
	**/
	static public function must_run_on_cpu(node:Dynamic, ?pin_variables_on_cpu:Dynamic):Dynamic;
	/**
		Prunes out nodes that aren't needed for inference.
		
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
		Convenience function to get a shape from a NodeDef's input string.
	**/
	static public function tensor_shape_from_node_def_name(graph:Dynamic, input_name:Dynamic):Dynamic;
}