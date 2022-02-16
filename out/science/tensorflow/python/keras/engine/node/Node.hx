/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.node;
@:pythonImport("tensorflow.python.keras.engine.node", "Node") extern class Node {
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
	public function ___init__(layer:Dynamic, ?call_args:Dynamic, ?call_kwargs:Dynamic, ?outputs:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(layer:Dynamic, ?call_args:Dynamic, ?call_kwargs:Dynamic, ?outputs:Dynamic):Void;
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
	public var inbound_layers : Dynamic;
	public var input_shapes : Dynamic;
	public var input_tensors : Dynamic;
	/**
		Yields tuples representing the data inbound from other nodes.
		
		Yields:
		  tuples like: (inbound_layer, node_index, tensor_index, tensor).
	**/
	public function iterate_inbound():Dynamic;
	/**
		Tensors input to this node that can be traced back to a `keras.Input`.
	**/
	public var keras_inputs : Dynamic;
	/**
		Maps Keras Tensors to computed Tensors using `tensor_dict`.
	**/
	public function map_arguments(tensor_dict:Dynamic):Dynamic;
	public var outbound_layer : Dynamic;
	public var output_shapes : Dynamic;
	public var output_tensors : Dynamic;
	/**
		Returns all the `Node`s whose output this node immediately depends on.
	**/
	public var parent_nodes : Dynamic;
	/**
		Serializes `Node` for Functional API's `get_config`.
	**/
	public function serialize(make_node_key:Dynamic, node_conversion_map:Dynamic):Dynamic;
}