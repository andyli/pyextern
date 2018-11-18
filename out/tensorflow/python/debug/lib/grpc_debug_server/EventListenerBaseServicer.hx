/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.grpc_debug_server;
@:pythonImport("tensorflow.python.debug.lib.grpc_debug_server", "EventListenerBaseServicer") extern class EventListenerBaseServicer {
	/**
		Implementation of the SendEvents service method.
		
		This method receives streams of Event protos from the client, and processes
		them in ways specified in the on_event() callback. The stream is
		bi-directional, but currently only the client-to-server stream (i.e., the
		stream from the debug ops to the server) is used.
		
		Args:
		  request_iterator: The incoming stream of Event protos.
		  context: Server context.
		
		Raises:
		  ValueError: If there are more than one core metadata events.
		
		Yields:
		  An empty stream of responses.
	**/
	public function SendEvents(request_iterator:Dynamic, context:Dynamic):Dynamic;
	/**
		Base implementation of the handling of SendSourceFiles calls.
		
		The base implementation does nothing with the incoming request.
		Override in an implementation of the server if necessary.
		
		Args:
		  request: A `DebuggedSourceFiles` proto, containing the path, content, size
		    and last-modified timestamp of source files.
		  context: Server context.
		
		Returns:
		  A `EventReply` proto.
	**/
	public function SendSourceFiles(request:Dynamic, context:Dynamic):Dynamic;
	/**
		Base implementation of the handling of SendTracebacks calls.
		
		The base implementation does nothing with the incoming request.
		Override in an implementation of the server if necessary.
		
		Args:
		  request: A `CallTraceback` proto, containing information about the
		    type (e.g., graph vs. eager execution) and source-code traceback of the
		    call and (any) associated `tf.Graph`s.
		  context: Server context.
		
		Returns:
		  A `EventReply` proto.
	**/
	public function SendTracebacks(request:Dynamic, context:Dynamic):Dynamic;
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
		Constructor.
		
		Args:
		  server_port: (int) Port number to bind to.
		  stream_handler_class: A class of the base class
		    `EventListenerBaseStreamHandler` that will be used to constructor
		    stream handler objects during `SendEvents` calls.
	**/
	@:native("__init__")
	public function ___init__(server_port:Dynamic, stream_handler_class:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  server_port: (int) Port number to bind to.
		  stream_handler_class: A class of the base class
		    `EventListenerBaseStreamHandler` that will be used to constructor
		    stream handler objects during `SendEvents` calls.
	**/
	public function new(server_port:Dynamic, stream_handler_class:Dynamic):Void;
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
	/**
		Dequeue and process all the queued debug-op state change protos.
		
		Include all the debug-op state change protos in a `EventReply` proto.
		
		Args:
		  event_reply: An `EventReply` to add the `DebugOpStateChange` protos to,
		    or `None`.
		
		Returns:
		  An `EventReply` proto with the dequeued `DebugOpStateChange` protos (if
		    any) added.
	**/
	public function _process_debug_op_state_changes(?event_reply:Dynamic):Dynamic;
	/**
		Process an Event proto containing a chunk of encoded GraphDef.
		
		Args:
		  event: the Event proto containing the chunk of encoded GraphDef.
		  graph_def_chunks: A dict mapping keys for GraphDefs (i.e.,
		  "<graph_def_hash>,<device_name>,<wall_time>") to a list of chunks of
		  encoded GraphDefs.
		
		Returns:
		  If all chunks of the GraphDef have arrived,
		    return decoded GraphDef proto, device name, wall_time.
		  Otherwise,
		    return None, None, None.
	**/
	public function _process_encoded_graph_def_in_chunks(event:Dynamic, graph_def_chunks:Dynamic):Dynamic;
	public function _process_graph_def(graph_def:Dynamic):Dynamic;
	/**
		Possibly reassemble event chunks.
		
		Due to gRPC's message size limit, a large tensor can be encapsulated in
		multiple Event proto chunks to be sent through the debugger stream. This
		method keeps track of the chunks that have arrived, reassemble all chunks
		corresponding to a tensor when they have arrived and return the reassembled
		Event proto.
		
		Args:
		  event: The single Event proto that has arrived.
		  tensor_chunks: A dict used to keep track of the Event protos that have
		    arrived but haven't been reassembled.
		
		Returns:
		  If all Event protos corresponding to a tensor have arrived, returns the
		  reassembled Event proto. Otherwise, return None.
	**/
	public function _process_tensor_event_in_chunks(event:Dynamic, tensor_chunks:Dynamic):Dynamic;
	/**
		Get a set of the currently-activated breakpoints.
		
		Returns:
		  A `set` of 3-tuples: (node_name, output_slot, debug_op), e.g.,
		    {("MatMul", 0, "DebugIdentity")}.
	**/
	public var breakpoints : Dynamic;
	/**
		Get the list of debug watches with attribute gated_grpc=True.
		
		Since the server receives `GraphDef` from the debugged runtime, it can only
		return such debug watches that it has received so far.
		
		Returns:
		  A `list` of `DebugWatch` `namedtuples` representing the debug watches with
		  gated_grpc=True. Each `namedtuple` element has the attributes:
		    `node_name` as a `str`,
		    `output_slot` as an `int`,
		    `debug_op` as a `str`.
	**/
	public function gated_grpc_debug_watches():Dynamic;
	/**
		Request disabling a debug tensor watchpoint or breakpoint.
		
		This is the opposite of `request_watch()`.
		
		Args:
		  node_name: (`str`) name of the node that the to-be-watched tensor belongs
		    to, e.g., "hidden/Weights".
		  output_slot: (`int`) output slot index of the tensor to watch.
		  debug_op: (`str`) name of the debug op to enable. This should not include
		    any attribute substrings.
	**/
	public function request_unwatch(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic):Dynamic;
	/**
		Request enabling a debug tensor watchpoint or breakpoint.
		
		This will let the server send a EventReply to the client side
		(i.e., the debugged TensorFlow runtime process) to request adding a watch
		key (i.e., <node_name>:<output_slot>:<debug_op>) to the list of enabled
		watch keys. The list applies only to debug ops with the attribute
		gated_grpc=True.
		
		To disable the watch, use `request_unwatch()`.
		
		Args:
		  node_name: (`str`) name of the node that the to-be-watched tensor belongs
		    to, e.g., "hidden/Weights".
		  output_slot: (`int`) output slot index of the tensor to watch.
		  debug_op: (`str`) name of the debug op to enable. This should not include
		    any attribute substrings.
		  breakpoint: (`bool`) Iff `True`, the debug op will block and wait until it
		    receives an `EventReply` response from the server. The `EventReply`
		    proto may carry a TensorProto that modifies the value of the debug op's
		    output tensor.
	**/
	public function request_watch(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic, ?breakpoint:Dynamic):Dynamic;
	/**
		Start running the server.
		
		Args:
		  blocking: If `True`, block until `stop_server()` is invoked.
		
		Raises:
		  ValueError: If server stop has already been requested, or if the server
		    has already started running.
	**/
	public function run_server(?blocking:Dynamic):Dynamic;
	/**
		Request server stopping.
		
		Once stopped, server cannot be stopped or started again. This method is
		non-blocking. Call `wait()` on the returned event to block until the server
		has completely stopped.
		
		Args:
		  grace: Grace period in seconds to be used when calling `server.stop()`.
		
		Raises:
		  ValueError: If server stop has already been requested, or if the server
		    has not started running yet.
		
		Returns:
		  A threading.Event that will be set when the server has completely stopped.
	**/
	public function stop_server(?grace:Dynamic):Dynamic;
}