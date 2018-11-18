/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_context;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_context", "_InternalTPUContext") extern class _InternalTPUContext {
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
	public function ___init__(config:Dynamic, train_batch_size:Dynamic, eval_batch_size:Dynamic, predict_batch_size:Dynamic, use_tpu:Dynamic, ?eval_on_tpu:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(config:Dynamic, train_batch_size:Dynamic, eval_batch_size:Dynamic, predict_batch_size:Dynamic, use_tpu:Dynamic, ?eval_on_tpu:Dynamic):Void;
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
	public function _assert_mode():Dynamic;
	/**
		Gets the (maybe cached) TPU device assignment.
	**/
	public function _get_device_assignment():Dynamic;
	public function _get_master_address():Dynamic;
	/**
		Gets the (maybe cached) TPU system metadata.
	**/
	public function _get_tpu_system_metadata():Dynamic;
	/**
		Determines whether the input_fn and model_fn should be invoked on CPU.
	**/
	public function _is_running_on_cpu(is_export_mode:Dynamic):Dynamic;
	/**
		Validates the configuration based on the TPU system metadata.
	**/
	public function _validate_tpu_configuration():Dynamic;
	/**
		Returns the shard batch size for `input_fn`.
	**/
	public var batch_size_for_input_fn : Dynamic;
	/**
		Returns the shard batch size for `model_fn`.
	**/
	public var batch_size_for_model_fn : Dynamic;
	public var config : Dynamic;
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
	public var global_batch_size : Dynamic;
	public var input_partition_dims : Dynamic;
	/**
		Return true if input_fn should be run in the full_replicae config.
	**/
	public function is_input_broadcast_with_iterators():Dynamic;
	/**
		Return true if input_fn should be run in the per-host v2 config.
	**/
	public function is_input_per_host_with_iterators():Dynamic;
	/**
		Return true if input_fn is invoked per-core (other than per-host).
	**/
	public function is_input_sharded_per_core():Dynamic;
	/**
		Determines whether the input_fn and model_fn should be invoked on CPU.
		
		This API also validates user provided configuration, such as batch size,
		according the lazy initialized TPU system metadata.
		
		Args:
		  is_export_mode: Indicates whether the current mode is for exporting the
		    model, when mode == PREDICT. Only with this bool, we could
		    tell whether user is calling the Estimator.predict or
		    Estimator.export_savedmodel, which are running on TPU and CPU
		    respectively. Parent class Estimator does not distinguish these two.
		
		Returns:
		  bool, whether current input_fn or model_fn should be running on CPU.
		
		Raises:
		  ValueError: any configuration is invalid.
	**/
	public function is_running_on_cpu(?is_export_mode:Dynamic):Dynamic;
	/**
		Returns the job name to use to place TPU computations on.
		
		Returns:
		  A string containing the job name, or None if no job should be specified.
		
		Raises:
		  ValueError: If the user needs to specify a tpu_job_name, because we are
		    unable to infer the job name automatically, or if the user-specified job
		    names are inappropriate.
	**/
	public var master_job : Dynamic;
	public var mode : Dynamic;
	public var model_parallelism_enabled : Dynamic;
	public var num_cores : Dynamic;
	public var num_hosts : Dynamic;
	public var num_of_cores_per_host : Dynamic;
	/**
		Return the number of replicas per host.
	**/
	public var num_of_replicas_per_host : Dynamic;
	public var num_replicas : Dynamic;
	/**
		Returns a TPU device placement Fn.
	**/
	public var tpu_device_placement_function : Dynamic;
	/**
		Returns the TPU host place function.
	**/
	public var tpu_host_placement_function : Dynamic;
	/**
		Returns the TPU ordinal fn.
	**/
	public function tpu_ordinal_function(host_id:Dynamic):Dynamic;
	public function with_mode(mode:Dynamic):Dynamic;
}