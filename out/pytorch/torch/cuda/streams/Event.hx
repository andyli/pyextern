/* This file is generated, do not edit! */
package torch.cuda.streams;
@:pythonImport("torch.cuda.streams", "Event") extern class Event {
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
	@:native("__init__")
	public function ___init__():Dynamic;
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
	static public function __new__(cls:Dynamic, ?enable_timing:Dynamic, ?blocking:Dynamic, ?interprocess:Dynamic):Dynamic;
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
	public var _as_parameter_ : Dynamic;
	/**
		Returns the time elapsed in milliseconds after the event was
		recorded and before the end_event was recorded.
	**/
	public function elapsed_time(end_event:Dynamic):Dynamic;
	/**
		Reconstruct an event from an IPC handle on the given device.
	**/
	static public function from_ipc_handle(device:Dynamic, handle:Dynamic):Dynamic;
	/**
		Returns an IPC handle of this event. If not recorded yet, the event
		will use the current device. 
	**/
	public function ipc_handle():Dynamic;
	/**
		Checks if all work currently captured by event has completed.
		
		Returns:
		    A boolean indicating if all work currently captured by event has
		    completed.
	**/
	public function query():Dynamic;
	/**
		Records the event in a given stream.
		
		Uses ``torch.cuda.current_stream()`` if no stream is specified. The
		stream's device must match the event's device.
	**/
	public function record(?stream:Dynamic):Dynamic;
	/**
		Waits for the event to complete.
		
		Waits until the completion of all work currently captured in this event.
		This prevents the CPU thread from proceeding until the event completes.
		
		 .. note:: This is a wrapper around ``cudaEventSynchronize()``: see
		    `CUDA Event documentation`_ for more info.
	**/
	public function synchronize():Dynamic;
	/**
		Makes all future work submitted to the given stream wait for this
		event.
		
		Use ``torch.cuda.current_stream()`` if no stream is specified.
	**/
	public function wait(?stream:Dynamic):Dynamic;
}