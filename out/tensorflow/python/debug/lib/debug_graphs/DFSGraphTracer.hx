/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_graphs;
@:pythonImport("tensorflow.python.debug.lib.debug_graphs", "DFSGraphTracer") extern class DFSGraphTracer {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructor of _DFSGraphTracer.
		
		Args:
		  input_lists: A list of dicts. Each dict is an adjacency (input) map from
		    the recipient node name as the key and the list of input node names
		    as the value.
		  skip_node_names: Optional: a list of node names to skip tracing.
		  destination_node_name: Optional: destination node name. If not `None`, it
		    should be the name of a destination not as a str and the graph tracing
		    will raise GraphTracingReachedDestination as soon as the node has been
		    reached.
		
		Raises:
		  GraphTracingReachedDestination: if stop_at_node_name is not None and
		    the specified node is reached.
	**/
	@:native("__init__")
	public function ___init__(input_lists:Dynamic, ?skip_node_names:Dynamic, ?destination_node_name:Dynamic):Dynamic;
	/**
		Constructor of _DFSGraphTracer.
		
		Args:
		  input_lists: A list of dicts. Each dict is an adjacency (input) map from
		    the recipient node name as the key and the list of input node names
		    as the value.
		  skip_node_names: Optional: a list of node names to skip tracing.
		  destination_node_name: Optional: destination node name. If not `None`, it
		    should be the name of a destination not as a str and the graph tracing
		    will raise GraphTracingReachedDestination as soon as the node has been
		    reached.
		
		Raises:
		  GraphTracingReachedDestination: if stop_at_node_name is not None and
		    the specified node is reached.
	**/
	public function new(input_lists:Dynamic, ?skip_node_names:Dynamic, ?destination_node_name:Dynamic):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function depth_list():Dynamic;
	public function inputs():Dynamic;
	/**
		Trace inputs.
		
		Args:
		  graph_element_name: Name of the node or an output tensor of the node, as a
		    str.
		
		Raises:
		  GraphTracingReachedDestination: if destination_node_name of this tracer
		    object is not None and the specified node is reached.
	**/
	public function trace(graph_element_name:Dynamic):Dynamic;
}