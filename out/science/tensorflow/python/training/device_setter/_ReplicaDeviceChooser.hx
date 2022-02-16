/* This file is generated, do not edit! */
package tensorflow.python.training.device_setter;
@:pythonImport("tensorflow.python.training.device_setter", "_ReplicaDeviceChooser") extern class _ReplicaDeviceChooser {
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
		Create a new `_ReplicaDeviceChooser`.
		
		Args:
		  ps_tasks: Number of tasks in the `ps` job.
		  ps_device: String.  Name of the `ps` job.
		  worker_device: String.  Name of the `worker` job.
		  merge_devices: Boolean. Set to True to allow merging of device specs.
		  ps_ops: List of strings representing `Operation` types that need to be
		    placed on `ps` devices.
		  ps_strategy: A callable invoked for every ps `Operation` (i.e. matched by
		    `ps_ops`), that takes the `Operation` and returns the ps task index to
		    use.
	**/
	@:native("__init__")
	public function ___init__(ps_tasks:Dynamic, ps_device:Dynamic, worker_device:Dynamic, merge_devices:Dynamic, ps_ops:Dynamic, ps_strategy:Dynamic):Dynamic;
	/**
		Create a new `_ReplicaDeviceChooser`.
		
		Args:
		  ps_tasks: Number of tasks in the `ps` job.
		  ps_device: String.  Name of the `ps` job.
		  worker_device: String.  Name of the `worker` job.
		  merge_devices: Boolean. Set to True to allow merging of device specs.
		  ps_ops: List of strings representing `Operation` types that need to be
		    placed on `ps` devices.
		  ps_strategy: A callable invoked for every ps `Operation` (i.e. matched by
		    `ps_ops`), that takes the `Operation` and returns the ps task index to
		    use.
	**/
	public function new(ps_tasks:Dynamic, ps_device:Dynamic, worker_device:Dynamic, merge_devices:Dynamic, ps_ops:Dynamic, ps_strategy:Dynamic):Void;
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
		Choose a device for `op`.
		
		Args:
		  op: an `Operation`.
		
		Returns:
		  The device to use for the `Operation`.
	**/
	public function device_function(op:Dynamic):Dynamic;
}