/* This file is generated, do not edit! */
package tensorflow.contrib.receptive_field.receptive_field_api;
@:pythonImport("tensorflow.contrib.receptive_field.receptive_field_api") extern class Receptive_field_api_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes receptive field (RF) parameters from a Graph or GraphDef object.
		
		The algorithm stops the calculation of the receptive field whenever it
		encounters an operation in the list `stop_propagation`. Stopping the
		calculation early can be useful to calculate the receptive field of a
		subgraph such as a single branch of the
		[inception network](https://arxiv.org/abs/1512.00567).
		
		Args:
		  graph_def: Graph or GraphDef object.
		  input_node: Name of the input node or Tensor object from graph.
		  output_node: Name of the output node or Tensor object from graph.
		  stop_propagation: List of operations or scope names for which to stop the
		    propagation of the receptive field.
		  input_resolution: 2D list. If the input resolution to the model is fixed and
		    known, this may be set. This is helpful for cases where the RF parameters
		    vary depending on the input resolution (this happens since SAME padding in
		    tensorflow depends on input resolution in general). If this is None, it is
		    assumed that the input resolution is unknown, so some RF parameters may be
		    unknown (depending on the model architecture).
		
		Returns:
		  rf_size_x: Receptive field size of network in the horizontal direction, with
		    respect to specified input and output.
		  rf_size_y: Receptive field size of network in the vertical direction, with
		    respect to specified input and output.
		  effective_stride_x: Effective stride of network in the horizontal direction,
		    with respect to specified input and output.
		  effective_stride_y: Effective stride of network in the vertical direction,
		    with respect to specified input and output.
		  effective_padding_x: Effective padding of network in the horizontal
		    direction, with respect to specified input and output.
		  effective_padding_y: Effective padding of network in the vertical
		    direction, with respect to specified input and output.
		
		Raises:
		  ValueError: If network is not aligned or if either input or output nodes
		    cannot be found. For network criterion alignment, see
		    photos/vision/features/delf/g3doc/rf_computation.md
	**/
	static public function compute_receptive_field_from_graph_def(graph_def:Dynamic, input_node:Dynamic, output_node:Dynamic, ?stop_propagation:Dynamic, ?input_resolution:Dynamic):Dynamic;
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
}