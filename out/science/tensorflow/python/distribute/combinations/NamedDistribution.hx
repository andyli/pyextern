/* This file is generated, do not edit! */
package tensorflow.python.distribute.combinations;
@:pythonImport("tensorflow.python.distribute.combinations", "NamedDistribution") extern class NamedDistribution {
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
		Initialize NamedDistribution.
		
		Args:
		  name: Name that will be a part of the name of the test case.
		  distribution_fn: A callable that creates a `tf.distribute.Strategy`.
		  required_gpus: The number of GPUs that the strategy requires. Only one of
		  `required_gpus` and `required_physical_gpus` should be set.
		  required_physical_gpus: Number of physical GPUs required. Only one of
		  `required_gpus` and `required_physical_gpus` should be set.
		  required_tpu: Whether the strategy requires TPU.
		  use_cloud_tpu: Whether the strategy requires cloud TPU.
		  has_chief: Whether the strategy requires a chief worker.
		  num_workers: The number of workers that the strategy requires.
		  num_ps: The number of parameter servers.
		  share_gpu: Whether to share GPUs among workers.
		  pool_runner_fn: An optional callable that returns a MultiProcessPoolRunner
		    to run the test.
		  no_xla: Whether to skip in XLA tests.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, distribution_fn:Dynamic, ?required_gpus:Dynamic, ?required_physical_gpus:Dynamic, ?required_tpu:Dynamic, ?use_cloud_tpu:Dynamic, ?has_chief:Dynamic, ?num_workers:Dynamic, ?num_ps:Dynamic, ?share_gpu:Dynamic, ?pool_runner_fn:Dynamic, ?no_xla:Dynamic):Dynamic;
	/**
		Initialize NamedDistribution.
		
		Args:
		  name: Name that will be a part of the name of the test case.
		  distribution_fn: A callable that creates a `tf.distribute.Strategy`.
		  required_gpus: The number of GPUs that the strategy requires. Only one of
		  `required_gpus` and `required_physical_gpus` should be set.
		  required_physical_gpus: Number of physical GPUs required. Only one of
		  `required_gpus` and `required_physical_gpus` should be set.
		  required_tpu: Whether the strategy requires TPU.
		  use_cloud_tpu: Whether the strategy requires cloud TPU.
		  has_chief: Whether the strategy requires a chief worker.
		  num_workers: The number of workers that the strategy requires.
		  num_ps: The number of parameter servers.
		  share_gpu: Whether to share GPUs among workers.
		  pool_runner_fn: An optional callable that returns a MultiProcessPoolRunner
		    to run the test.
		  no_xla: Whether to skip in XLA tests.
	**/
	public function new(name:Dynamic, distribution_fn:Dynamic, ?required_gpus:Dynamic, ?required_physical_gpus:Dynamic, ?required_tpu:Dynamic, ?use_cloud_tpu:Dynamic, ?has_chief:Dynamic, ?num_workers:Dynamic, ?num_ps:Dynamic, ?share_gpu:Dynamic, ?pool_runner_fn:Dynamic, ?no_xla:Dynamic):Void;
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
	public var runner : Dynamic;
	public var strategy : Dynamic;
}