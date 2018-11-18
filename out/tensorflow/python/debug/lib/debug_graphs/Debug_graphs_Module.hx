/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_graphs;
@:pythonImport("tensorflow.python.debug.lib.debug_graphs") extern class Debug_graphs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Infer device name from a partition GraphDef.
	**/
	static public function _infer_device_name(graph_def:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function get_node_name(element_name:Dynamic):Dynamic;
	/**
		Get the output slot number from the name of a graph element.
		
		If element_name is a node name without output slot at the end, 0 will be
		assumed.
		
		Args:
		  element_name: (`str`) name of the graph element in question.
		
		Returns:
		  (`int`) output slot number.
	**/
	static public function get_output_slot(element_name:Dynamic):Dynamic;
	/**
		Determine whether a node name is that of a debug Copy node.
		
		Such nodes are inserted by TensorFlow core upon request in
		RunOptions.debug_options.debug_tensor_watch_opts.
		
		Args:
		  node_name: Name of the node.
		
		Returns:
		  A bool indicating whether the input argument is the name of a debug Copy
		  node.
	**/
	static public function is_copy_node(node_name:Dynamic):Dynamic;
	/**
		Determine whether a node name is that of a debug node.
		
		Such nodes are inserted by TensorFlow core upon request in
		RunOptions.debug_options.debug_tensor_watch_opts.
		
		Args:
		  node_name: Name of the node.
		
		Returns:
		  A bool indicating whether the input argument is the name of a debug node.
	**/
	static public function is_debug_node(node_name:Dynamic):Dynamic;
	/**
		Parse the name of a debug node.
		
		Args:
		  node_name: Name of the debug node.
		
		Returns:
		  1. Name of the watched node, as a str.
		  2. Output slot index of the watched tensor, as an int.
		  3. Index of the debug node, as an int.
		  4. Name of the debug op, as a str, e.g, "DebugIdentity".
		
		Raises:
		  ValueError: If the input node name is not a valid debug node name.
	**/
	static public function parse_debug_node_name(node_name:Dynamic):Dynamic;
	/**
		Get the node name from a string that can be node or tensor name.
		
		Args:
		  name: An input node name (e.g., "node_a") or tensor name (e.g.,
		    "node_a:0"), as a str.
		
		Returns:
		  1) The node name, as a str. If the input name is a tensor name, i.e.,
		    consists of a colon, the final colon and the following output slot
		    will be stripped.
		  2) If the input name is a tensor name, the output slot, as an int. If
		    the input name is not a tensor name, None.
	**/
	static public function parse_node_or_tensor_name(name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reconstruct original (non-debugger-decorated) partition GraphDef.
		
		This method strips the input `tf.GraphDef` of the Copy* and Debug*-type nodes
		inserted by the debugger.
		
		The reconstructed partition graph is identical to the original (i.e.,
		  non-debugger-decorated) partition graph except in the following respects:
		    1) The exact names of the runtime-inserted internal nodes may differ.
		       These include _Send, _Recv, _HostSend, _HostRecv, _Retval ops.
		    2) As a consequence of 1, the nodes that receive input directly from such
		       send- and recv-type ops will have different input names.
		    3) The parallel_iteration attribute of while-loop Enter ops are set to 1.
		
		Args:
		  debug_graph_def: The debugger-decorated `tf.GraphDef`, with the
		    debugger-inserted Copy* and Debug* nodes.
		
		Returns:
		  The reconstructed `tf.GraphDef` stripped of the debugger-inserted nodes.
	**/
	static public function reconstruct_non_debug_graph_def(debug_graph_def:Dynamic):Dynamic;
}