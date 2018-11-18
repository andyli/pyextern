/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_context;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_context", "TPUContext") extern class TPUContext {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(internal_ctx:Dynamic, ?input_device:Dynamic, ?invocation_index:Dynamic, ?call_from_input_fn:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(internal_ctx:Dynamic, ?input_device:Dynamic, ?invocation_index:Dynamic, ?call_from_input_fn:Dynamic):Void;
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
		The current host index for the TPU system.
	**/
	public var current_host : Dynamic;
	/**
		The configuration of the current input_fn invocation.
		
		The configuration depends on `TPUConfig.per_host_input_for_training`. See
		`TPUConfig` for details.
		
		Only set in params dict of input_fn
		
		Returns:
		  A tuple of
		    1. Device spec string: String, is the current CPU host where the
		       input_fn is invoked.
		    2. Current invocation index: Int, 0-based index of the input_fn
		       invocation. See next item for details.
		    3. Total invocation count: Int, the total number of times to invoke the
		       input_fn on all CPU hosts. Each invocation will be passed with a new
		       `TPUContext` instance with current invocation index set properly.
		    4. Total number of replicas consumed by current_invocation: Int, the
		       number of replicas fed by the data returned by current input_fn. For
		       example, for per_core input pipeline deployment
		       and non-model-parallelism, total invocation count is equal to
		       the number of cores in the system and num replicas consumed by
		       current invocation is 1. For per-host v2 input pipeline deployment,
		       total invocation count is equal to the number of hosts in the system
		       and num replicas consumed by current invocation is equal to number of
		       cores per host.
		
		Raises:
		  RuntimeError: If this method must not be called from input_fn.
	**/
	public function current_input_fn_deployment():Dynamic;
	/**
		Returns device_assignment object.
	**/
	public var device_assignment : Dynamic;
	/**
		Returns the tuple of (CPU device and device ordinal) for replica.
		
		This should be used for full replicate for non-model-parallelism.
		
		Args:
		   replica_id: Int, the replica index.
		
		Returns:
		   A tuple of device spec for CPU device and int device ordinal.
	**/
	public function device_for_replica(replica_id:Dynamic):Dynamic;
	/**
		The number of hosts for the TPU system.
	**/
	public var num_hosts : Dynamic;
	/**
		The number of replicas for each host.
	**/
	public var num_of_replicas_per_host : Dynamic;
	/**
		The total number of replicas.
		
		For non-model-parallelism, num_replicas should be the total num of TPU
		cores in the system.
		
		Returns:
		  The number of replicas.
	**/
	public var num_replicas : Dynamic;
	/**
		Returns the TPU host place function.
		
		The place function takes host_id as the input and returns the TF device
		for the correspoding host.
	**/
	public var tpu_host_placement_function : Dynamic;
}