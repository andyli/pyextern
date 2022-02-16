/* This file is generated, do not edit! */
package tensorflow.python.client.timeline;
@:pythonImport("tensorflow.python.client.timeline", "_ChromeTraceFormatter") extern class _ChromeTraceFormatter {
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
		Constructs a new Chrome Trace formatter.
	**/
	@:native("__init__")
	public function ___init__(?show_memory:Dynamic):Dynamic;
	/**
		Constructs a new Chrome Trace formatter.
	**/
	public function new(?show_memory:Dynamic):Void;
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
		Creates a new Chrome Trace event.
		
		For details of the file format, see:
		https://github.com/catapult-project/catapult/blob/master/tracing/README.md
		
		Args:
		  ph:  The type of event - usually a single character.
		  category: The event category as a string.
		  name:  The event name as a string.
		  pid:  Identifier of the process generating this event as an integer.
		  tid:  Identifier of the thread generating this event as an integer.
		  timestamp:  The timestamp of this event as a long integer.
		
		Returns:
		  A JSON compatible event object.
	**/
	public function _create_event(ph:Dynamic, category:Dynamic, name:Dynamic, pid:Dynamic, tid:Dynamic, timestamp:Dynamic):Dynamic;
	/**
		Emits a record for a single counter.
		
		Args:
		  category: The event category as a string.
		  name:  The event name as a string.
		  pid:  Identifier of the process generating this event as an integer.
		  timestamp:  The timestamp of this event as a long integer.
		  counter: Name of the counter as a string.
		  value:  Value of the counter as an integer.
	**/
	public function emit_counter(category:Dynamic, name:Dynamic, pid:Dynamic, timestamp:Dynamic, counter:Dynamic, value:Dynamic):Dynamic;
	/**
		Emits a counter record for the dictionary 'counters'.
		
		Args:
		  category: The event category as a string.
		  name:  The event name as a string.
		  pid:  Identifier of the process generating this event as an integer.
		  timestamp:  The timestamp of this event as a long integer.
		  counters: Dictionary of counter values.
	**/
	public function emit_counters(category:Dynamic, name:Dynamic, pid:Dynamic, timestamp:Dynamic, counters:Dynamic):Dynamic;
	/**
		Adds a flow end event to the trace.
		
		When matched with a flow start event (with the same 'flow_id') this will
		cause the trace viewer to draw an arrow between the start and end events.
		
		Args:
		  name:  The event name as a string.
		  timestamp:  The timestamp of this event as a long integer.
		  pid:  Identifier of the process generating this event as an integer.
		  tid:  Identifier of the thread generating this event as an integer.
		  flow_id: Identifier of the flow as an integer.
	**/
	public function emit_flow_end(name:Dynamic, timestamp:Dynamic, pid:Dynamic, tid:Dynamic, flow_id:Dynamic):Dynamic;
	/**
		Adds a flow start event to the trace.
		
		When matched with a flow end event (with the same 'flow_id') this will
		cause the trace viewer to draw an arrow between the start and end events.
		
		Args:
		  name:  The event name as a string.
		  timestamp:  The timestamp of this event as a long integer.
		  pid:  Identifier of the process generating this event as an integer.
		  tid:  Identifier of the thread generating this event as an integer.
		  flow_id: Identifier of the flow as an integer.
	**/
	public function emit_flow_start(name:Dynamic, timestamp:Dynamic, pid:Dynamic, tid:Dynamic, flow_id:Dynamic):Dynamic;
	/**
		Adds an object creation event to the trace.
		
		Args:
		  category: The event category as a string.
		  name:  The event name as a string.
		  timestamp:  The timestamp of this event as a long integer.
		  pid:  Identifier of the process generating this event as an integer.
		  tid:  Identifier of the thread generating this event as an integer.
		  object_id: Identifier of the object as an integer.
	**/
	public function emit_obj_create(category:Dynamic, name:Dynamic, timestamp:Dynamic, pid:Dynamic, tid:Dynamic, object_id:Dynamic):Dynamic;
	/**
		Adds an object deletion event to the trace.
		
		Args:
		  category: The event category as a string.
		  name:  The event name as a string.
		  timestamp:  The timestamp of this event as a long integer.
		  pid:  Identifier of the process generating this event as an integer.
		  tid:  Identifier of the thread generating this event as an integer.
		  object_id: Identifier of the object as an integer.
	**/
	public function emit_obj_delete(category:Dynamic, name:Dynamic, timestamp:Dynamic, pid:Dynamic, tid:Dynamic, object_id:Dynamic):Dynamic;
	/**
		Adds an object snapshot event to the trace.
		
		Args:
		  category: The event category as a string.
		  name:  The event name as a string.
		  timestamp:  The timestamp of this event as a long integer.
		  pid:  Identifier of the process generating this event as an integer.
		  tid:  Identifier of the thread generating this event as an integer.
		  object_id: Identifier of the object as an integer.
		  snapshot:  A JSON-compatible representation of the object.
	**/
	public function emit_obj_snapshot(category:Dynamic, name:Dynamic, timestamp:Dynamic, pid:Dynamic, tid:Dynamic, object_id:Dynamic, snapshot:Dynamic):Dynamic;
	/**
		Adds a process metadata event to the trace.
		
		Args:
		  name:  The process name as a string.
		  pid:  Identifier of the process as an integer.
	**/
	public function emit_pid(name:Dynamic, pid:Dynamic):Dynamic;
	/**
		Adds a region event to the trace.
		
		Args:
		  timestamp:  The start timestamp of this region as a long integer.
		  duration:  The duration of this region as a long integer.
		  pid:  Identifier of the process generating this event as an integer.
		  tid:  Identifier of the thread generating this event as an integer.
		  category: The event category as a string.
		  name:  The event name as a string.
		  args:  A JSON-compatible dictionary of event arguments.
	**/
	public function emit_region(timestamp:Dynamic, duration:Dynamic, pid:Dynamic, tid:Dynamic, category:Dynamic, name:Dynamic, args:Dynamic):Dynamic;
	/**
		Adds a thread metadata event to the trace.
		
		Args:
		  name:  The thread name as a string.
		  pid:  Identifier of the process as an integer.
		  tid:  Identifier of the thread as an integer.
	**/
	public function emit_tid(name:Dynamic, pid:Dynamic, tid:Dynamic):Dynamic;
	/**
		Formats the chrome trace to a string.
		
		Args:
		  pretty: (Optional.)  If True, produce human-readable JSON output.
		
		Returns:
		  A JSON-formatted string in Chrome Trace format.
	**/
	public function format_to_string(?pretty:Dynamic):Dynamic;
}