/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.framework.graph_util;
@:pythonImport("tensorflow.contrib.framework.python.framework.graph_util") extern class Graph_util_Module {
	static public var __all__ : Dynamic;
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
	static public function _node_name(n:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Fuse subgraph between input_nodes and output_nodes into a single custom op.
		
		Args:
		  graph_def: A graph_pb2.GraphDef proto.
		  input_nodes: input nodes to the subgraph to be fused.
		  output_nodes: output nodes to the subgraph to be fused.
		  output_dtypes: A list of output datatypes for the custom op
		  output_quantized: A boolean flag that indicates if output is quantized
		  op_name: fused op name.
		  op_type: fused op type.
		Returns:
		  The GraphDef of the new graph.
		
		Raises:
		  TypeError: If 'graph_def' is not a graph_pb2.GraphDef proto.
	**/
	static public function fuse_op(graph_def:Dynamic, input_nodes:Dynamic, output_nodes:Dynamic, output_dtypes:Dynamic, output_quantized:Dynamic, op_name:Dynamic, op_type:Dynamic):Dynamic;
	/**
		Get placeholders of a graph.
		
		For example:
		
		```python
		a = tf.placeholder(dtype=tf.float32, shape=[2, 2], name='a')
		a = tf.placeholder(dtype=tf.int32, shape=[3, 2], name='b')
		
		tf.contrib.framework.get_placeholders(tf.get_default_graph())
		# Returns:
		#  [<tf.Tensor 'a:0' shape=(2, 2) dtype=float32>,
		#   <tf.Tensor 'b:0' shape=(3, 2) dtype=int32>]
		```
		
		Args:
		  graph: A tf.Graph.
		Returns:
		  A list contains all placeholders of given graph.
		
		Raises:
		  TypeError: If `graph` is not a tensorflow graph.
	**/
	static public function get_placeholders(graph:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}