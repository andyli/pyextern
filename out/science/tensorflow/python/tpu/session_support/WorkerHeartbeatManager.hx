/* This file is generated, do not edit! */
package tensorflow.python.tpu.session_support;
@:pythonImport("tensorflow.python.tpu.session_support", "WorkerHeartbeatManager") extern class WorkerHeartbeatManager {
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
		Construct a new WorkerHeartbeatManager.
		
		(Prefer using `WorkerHeartbeatManager.from_devices` when possible.)
		
		Args:
		  session: `tf.compat.v1.Session`, session to use for heartbeat operations.
		  devices: `list[string]` Set of devices to connect to.
		  heartbeat_ops: `list[tf.Operation]` Heartbeat operations.
		  request_placeholder: `tf.Placeholder[String]` Placeholder used to specify
		    the WorkerHeartbeatRequest protocol buffer.
	**/
	@:native("__init__")
	public function ___init__(session:Dynamic, devices:Dynamic, heartbeat_ops:Dynamic, request_placeholder:Dynamic):Dynamic;
	/**
		Construct a new WorkerHeartbeatManager.
		
		(Prefer using `WorkerHeartbeatManager.from_devices` when possible.)
		
		Args:
		  session: `tf.compat.v1.Session`, session to use for heartbeat operations.
		  devices: `list[string]` Set of devices to connect to.
		  heartbeat_ops: `list[tf.Operation]` Heartbeat operations.
		  request_placeholder: `tf.Placeholder[String]` Placeholder used to specify
		    the WorkerHeartbeatRequest protocol buffer.
	**/
	public function new(session:Dynamic, devices:Dynamic, heartbeat_ops:Dynamic, request_placeholder:Dynamic):Void;
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
		Configure heartbeat manager for all devices.
		
		Args:
		  message: `event_pb2.WorkerHeartbeatRequest`
		Returns: `None`
	**/
	public function configure(message:Dynamic):Dynamic;
	/**
		Construct a heartbeat manager for the given devices.
	**/
	static public function from_devices(session:Dynamic, devices:Dynamic):Dynamic;
	/**
		Ping all workers, returning manager containing lame workers (or None).
	**/
	public function lame_workers():Dynamic;
	public function num_workers():Dynamic;
	/**
		Ping all workers, returning the parsed status results.
	**/
	public function ping(?request:Dynamic, ?timeout_in_ms:Dynamic):Dynamic;
	/**
		Shutdown all workers after `shutdown_timeout_secs`.
	**/
	public function shutdown(?wait_time_in_ms:Dynamic, ?exit_code:Dynamic):Dynamic;
}