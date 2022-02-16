/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_graphs;
@:pythonImport("tensorflow.python.debug.lib.debug_graphs", "DebugGraph") extern class DebugGraph {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(debug_graph_def:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(debug_graph_def:Dynamic, ?device_name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Find all Copy nodes in the loaded graph.
	**/
	public function _get_copy_nodes():Dynamic;
	/**
		Determine whether an input of an op is ref-type.
		
		Args:
		  node: A `NodeDef`.
		
		Returns:
		  A list of the arg names (as strs) that are ref-type.
	**/
	public function _get_ref_args(node:Dynamic):Dynamic;
	/**
		Populate the map from node name to recipient(s) of its output(s).
		
		This method also populates the input map based on reversed ref edges.
	**/
	public function _populate_recipient_maps():Dynamic;
	/**
		Process a node from the debug GraphDef.
		
		Args:
		  node: (NodeDef) A partition-graph node to be processed.
		
		Raises:
		  ValueError: If duplicate node names are encountered.
	**/
	public function _process_debug_graph_node(node:Dynamic):Dynamic;
	/**
		Prune control edges related to the debug ops.
	**/
	public function _prune_control_edges_of_debug_ops():Dynamic;
	/**
		Prune nodes out of input and recipient maps.
		
		Args:
		  nodes_to_prune: (`list` of `str`) Names of the nodes to be pruned.
	**/
	public function _prune_nodes_from_input_and_recipient_maps(nodes_to_prune:Dynamic):Dynamic;
	/**
		Prune (non-control) edges related to debug ops.
		
		Prune the Copy ops and associated _Send ops inserted by the debugger out
		from the non-control inputs and output recipients map. Replace the inputs
		and recipients with original ones.
	**/
	public function _prune_non_control_edges_of_debug_ops():Dynamic;
	/**
		Reconstruct non-debug GraphDef.
		
		Non-debug GraphDef means the original GraphDef without the Copy* and Debug
		nodes inserted by the debugger.
	**/
	public function _reconstruct_non_debug_graph_def():Dynamic;
	/**
		The debugger-decorated GraphDef.
	**/
	public var debug_graph_def : Dynamic;
	public var device_name : Dynamic;
	public var node_attributes : Dynamic;
	public var node_ctrl_inputs : Dynamic;
	public var node_ctrl_recipients : Dynamic;
	public var node_devices : Dynamic;
	public var node_inputs : Dynamic;
	public var node_op_types : Dynamic;
	public var node_recipients : Dynamic;
	public var node_reversed_ref_inputs : Dynamic;
	/**
		The GraphDef without the Copy* and Debug* nodes added by the debugger.
	**/
	public var non_debug_graph_def : Dynamic;
}