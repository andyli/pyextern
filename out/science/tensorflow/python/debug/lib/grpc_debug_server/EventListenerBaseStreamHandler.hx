/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.grpc_debug_server;
@:pythonImport("tensorflow.python.debug.lib.grpc_debug_server", "EventListenerBaseStreamHandler") extern class EventListenerBaseStreamHandler {
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
		Constructor of EventListenerBaseStreamHandler.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Constructor of EventListenerBaseStreamHandler.
	**/
	public function new():Void;
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
		Callback for core metadata.
		
		Args:
		  event: The Event proto that carries a JSON string in its
		    `log_message.message` field.
		
		Returns:
		  `None` or an `EventReply` proto to be sent back to the client. If `None`,
		  an `EventReply` proto construct with the default no-arg constructor will
		  be sent back to the client.
	**/
	public function on_core_metadata_event(event:Dynamic):Dynamic;
	/**
		Callback for Event proto received through the gRPC stream.
		
		This Event proto carries a GraphDef, encoded as bytes, in its graph_def
		field.
		
		Args:
		  graph_def: A GraphDef object.
		  device_name: Name of the device on which the graph was created.
		  wall_time: An epoch timestamp (in microseconds) for the graph.
		
		Returns:
		  `None` or an `EventReply` proto to be sent back to the client. If `None`,
		  an `EventReply` proto construct with the default no-arg constructor will
		  be sent back to the client.
	**/
	public function on_graph_def(graph_def:Dynamic, device_name:Dynamic, wall_time:Dynamic):Dynamic;
	/**
		Callback for Event proto received through the gRPC stream.
		
		This Event proto carries a Tensor in its summary.value[0] field.
		
		Args:
		  event: The Event proto from the stream to be processed.
	**/
	public function on_value_event(event:Dynamic):Dynamic;
}