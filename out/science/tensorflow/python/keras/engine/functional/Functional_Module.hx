/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.functional;
@:pythonImport("tensorflow.python.keras.engine.functional") extern class Functional_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		This method topologically sorts nodes in order from inputs to outputs.
		
		It uses a depth-first search to topologically sort nodes that appear in the
		_keras_history connectivity metadata of `outputs`.
		
		Args:
		  outputs: the output tensors whose _keras_history metadata should be walked.
		  This may be an arbitrary nested structure.
		
		Returns:
		  A tuple like (ordered_nodes, layer_to_first_traversal_index)
		  ordered_nodes: list of nodes appearing in the keras history, topologically
		    sorted from original inputs to the `outputs`.
		    (If outputs have different sets of ancestors, the inputs to one output
		    may appear after a different output).
		  layer_to_first_traversal_index:
		    A dict mapping layer to the traversal index in the DFS where it is
		    seen. Note: if a layer is shared by several nodes, the dict will only
		    store the index corresponding to the *first* time the layer seen.
	**/
	static public function _build_map(outputs:Dynamic):Dynamic;
	/**
		Recursive helper for `_build_map`.
	**/
	static public function _build_map_helper(tensor:Dynamic, finished_nodes:Dynamic, nodes_in_progress:Dynamic, nodes_in_decreasing_depth:Dynamic, layer_indices:Dynamic):Dynamic;
	static public function _make_node_key(layer_name:Dynamic, node_index:Dynamic):Dynamic;
	/**
		Validates a network's topology and gather its layers and nodes.
		
		Args:
		  inputs: List of input tensors.
		  outputs: List of outputs tensors.
		
		Returns:
		  A tuple `(nodes, nodes_by_depth, layers, layers_by_depth)`.
		  - nodes: list of Node instances.
		  - nodes_by_depth: dict mapping ints (depth) to lists of node instances.
		  - layers: list of Layer instances.
		  - layers_by_depth: dict mapping ints (depth) to lists of layer instances.
		
		Raises:
		  ValueError: In case the network is not valid (e.g. disconnected graph).
	**/
	static public function _map_graph_network(inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Returns the nodes and layers in the topology from `inputs` to `outputs`.
		
		Args:
		  inputs: List of input tensors.
		  outputs: List of output tensors.
		
		Returns:
		  A tuple of List{Node] and List[Layer].
	**/
	static public function _map_subgraph_network(inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Returns True if the first layer node should not be saved or loaded.
	**/
	static public function _should_skip_first_node(layer:Dynamic):Dynamic;
	/**
		Adds layers that are not connected to the outputs to the model.
	**/
	static public function connect_ancillary_layers(model:Dynamic, created_layers:Dynamic):Dynamic;
	/**
		Builds the config, which consists of the node graph and serialized layers.
		
		Args:
		  network: A Network object.
		  serialize_layer_fn: Function used to serialize layers.
		
		Returns:
		  Config dictionary.
	**/
	static public function get_network_config(network:Dynamic, ?serialize_layer_fn:Dynamic):Dynamic;
	/**
		Reconstructs graph from config object.
		
		Args:
		  config: Dictionary returned from Network.get_config()
		  custom_objects: Optional dictionary mapping names (strings) to custom
		    classes or functions to be considered during deserialization.
		  created_layers: Optional dictionary mapping names to Layer objects. Any
		    layer not in this dictionary will be created and added to the dict.
		    This function will add new nodes to all layers (excluding InputLayers),
		    instead of re-using pre-existing nodes in the layers.
		
		Returns:
		  Tuple of (input tensors, output tensors, dictionary of created layers)
	**/
	static public function reconstruct_from_config(config:Dynamic, ?custom_objects:Dynamic, ?created_layers:Dynamic):Dynamic;
	static public function shape_with_no_batch_size(x:Dynamic):Dynamic;
}