/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_events_reader;
@:pythonImport("tensorflow.python.debug.lib.debug_events_reader", "DebuggedGraph") extern class DebuggedGraph {
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
	public function ___init__(name:Dynamic, graph_id:Dynamic, ?outer_graph_id:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic, graph_id:Dynamic, ?outer_graph_id:Dynamic):Void;
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
		Add the debugger-generated ID of a graph nested within this graph.
		
		Args:
		  inner_graph_id: The debugger-generated ID of the nested inner graph.
	**/
	public function add_inner_graph_id(inner_graph_id:Dynamic):Dynamic;
	/**
		Add an op creation data object.
		
		Args:
		  graph_op_creation_digest: A GraphOpCreationDigest data object describing
		    the creation of an op inside this graph.
	**/
	public function add_op(graph_op_creation_digest:Dynamic):Dynamic;
	/**
		Add a consuming op for this op.
		
		Args:
		  src_op_name: Name of the op of which the output tensor is being consumed.
		  src_slot: 0-based output slot of the op being consumed.
		  dst_op_name: Name of the consuming op (e.g., "Conv2D_3/BiasAdd")
		  dst_slot: 0-based input slot of the consuming op that receives the tensor
		    from this op.
	**/
	public function add_op_consumer(src_op_name:Dynamic, src_slot:Dynamic, dst_op_name:Dynamic, dst_slot:Dynamic):Dynamic;
	/**
		Get all the downstream consumers of this op.
		
		Only data (non-control) edges are tracked.
		
		Args:
		  src_op_name: Name of the op providing the tensor being consumed.
		
		Returns:
		  A list of (src_slot, dst_op_name, dst_slot) tuples. In each item of
		  the list:
		    src_slot: 0-based output slot of the op of which the output tensor
		      is being consumed.
		    dst_op_name: Name of the consuming op (e.g., "Conv2D_3/BiasAdd")
		    dst_slot: 0-based input slot of the consuming op that receives
		      the tensor from this op.
	**/
	public function get_op_consumers(src_op_name:Dynamic):Dynamic;
	/**
		Get the GraphOpCreationDigest for a op in the graph.
	**/
	public function get_op_creation_digest(op_name:Dynamic):Dynamic;
	/**
		Get the ID of a symbolic tensor in this graph.
	**/
	public function get_tensor_id(op_name:Dynamic, output_slot:Dynamic):Dynamic;
	public var graph_id : Dynamic;
	public var inner_graph_ids : Dynamic;
	public var name : Dynamic;
	public var outer_graph_id : Dynamic;
	public function to_json():Dynamic;
}