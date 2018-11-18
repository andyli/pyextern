/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.network;
@:pythonImport("tensorflow.python.keras.engine.network") extern class Network_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_hdf5_filepath(filepath:Dynamic):Dynamic;
	static public function _make_node_key(layer_name:Dynamic, node_index:Dynamic):Dynamic;
	/**
		Validates a network's topology and gather its layers and nodes.
		
		Arguments:
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
	static public var absolute_import : Dynamic;
	/**
		Produces a prompt asking about overwriting a file.
		
		Arguments:
		    filepath: the path to the file to be overwritten.
		
		Returns:
		    True if we can proceed with overwrite, False otherwise.
	**/
	static public function ask_to_proceed_with_overwrite(filepath:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}