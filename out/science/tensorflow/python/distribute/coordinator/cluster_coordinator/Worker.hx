/* This file is generated, do not edit! */
package tensorflow.python.distribute.coordinator.cluster_coordinator;
@:pythonImport("tensorflow.python.distribute.coordinator.cluster_coordinator", "Worker") extern class Worker {
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
	public function ___init__(worker_index:Dynamic, device_name:Dynamic, cluster:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(worker_index:Dynamic, device_name:Dynamic, cluster:Dynamic):Void;
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
		Delay if corresponding env vars are set.
	**/
	public function _maybe_delay():Dynamic;
	/**
		Runs a closure with preemption handling.
	**/
	public function _process_closure(closure:Dynamic):Dynamic;
	/**
		Function running in a worker thread to process closure queues.
	**/
	public function _process_queue():Dynamic;
	public function _register_resource(resource_remote_value:Dynamic):Dynamic;
	public function _set_dead():Dynamic;
	public function _set_resources_aborted():Dynamic;
	/**
		Synchronously creates a per-worker resource represented by a `RemoteValue`.
		
		Args:
		  function: the resource function to be run remotely. It should be a
		    `tf.function`, a concrete function or a Python function.
		  args: positional arguments to be passed to the function.
		  kwargs: keyword arguments to be passed to the function.
		
		Returns:
		  one or several RemoteValue objects depending on the function return
		  values.
	**/
	public function create_resource(_function:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Ensure the worker thread is closed.
	**/
	public function stop():Dynamic;
}