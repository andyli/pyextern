/* This file is generated, do not edit! */
package tensorflow.contrib.receptive_field.python.util.graph_compute_order;
@:pythonImport("tensorflow.contrib.receptive_field.python.util.graph_compute_order") extern class Graph_compute_order_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes output resolution, given input resolution and layer parameters.
		
		Note that this computation is done only over one dimension (eg, x or y).
		If any of the inputs is None, returns None.
		
		Args:
		  input_spatial_resolution: Input spatial resolution (int).
		  kernel_size: Kernel size (int).
		  stride: Stride (int).
		  total_padding: Total padding to be applied (int).
		Returns:
		  output_resolution: Output dimension (int) or None.
	**/
	static public function _compute_output_resolution(input_spatial_resolution:Dynamic, kernel_size:Dynamic, stride:Dynamic, total_padding:Dynamic):Dynamic;
	/**
		Traverses the graph recursively to compute its topological order.
		
		Optionally, the function may also compute the input and output feature map
		resolutions at each node. In this case, input_node_name and input_node_size
		must be set. Note that if a node's op type is unknown, the input and output
		resolutions are ignored and set to None.
		
		Args:
		  name_to_node: Dict keyed by node name, each entry containing the node's
		    NodeDef.
		  current: Current node name.
		  node_info: Map of nodes we've already traversed, containing their _node_info
		    information.
		  input_node_name: Name of node with fixed input resolution (optional).
		  input_node_size: Fixed input resolution to use (optional).
		Returns:
		  order: Order in topological sort for 'current'.
		  input_size: Tensor spatial resolution at input of current node.
		  output_size: Tensor spatial resolution at output of current node.
	**/
	static public function _get_computed_nodes(name_to_node:Dynamic, current:Dynamic, node_info:Dynamic, ?input_node_name:Dynamic, ?input_node_size:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Computes order of computation for a given CNN graph.
		
		Optionally, the function may also compute the input and output feature map
		resolutions at each node. In this case, input_node_name and input_node_size
		must be set. Note that if a node's op type is unknown, the input and output
		resolutions are ignored and set to None.
		
		Args:
		  graph_def: GraphDef object.
		  input_node_name: Name of node with fixed input resolution (optional). This
		    is usually the node name for the input image in a CNN.
		  input_node_size: 2D list of integers, fixed input resolution to use
		    (optional). This is usually the input resolution used for the input image
		    in a CNN (common examples are: [224, 224], [299, 299], [321, 321]).
		Returns:
		  node_info: Default dict keyed by node name, mapping to a named tuple with
		    the following fields:
		    - order: Integer denoting topological order;
		    - node: NodeDef for the given node;
		    - input_size: 2D list of integers, denoting the input spatial resolution
		      to the node;
		    - output_size: 2D list of integers, denoting the output spatial resolution
		      of the node.
		  name_to_node: Dict keyed by node name, each entry containing the node's
		    NodeDef.
	**/
	static public function get_compute_order(graph_def:Dynamic, ?input_node_name:Dynamic, ?input_node_size:Dynamic):Dynamic;
	/**
		Helper function to parse GraphDef's nodes.
		
		It returns a dict mapping from node name to NodeDef.
		
		Args:
		  graph_def: A GraphDef object.
		
		Returns:
		  name_to_node: Dict keyed by node name, each entry containing the node's
		    NodeDef.
	**/
	static public function parse_graph_nodes(graph_def:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}