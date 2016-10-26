/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.run_config;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.run_config", "RunConfig") extern class RunConfig {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		  master: TensorFlow master. Empty string (the default) for local.
		  task: Task id of the replica running the training (default: 0).
		  num_ps_replicas: Number of parameter server tasks to use (default: 0).
		  num_cores: Number of cores to be used (default: 4).
		  log_device_placement: Log the op placement to devices (default: False).
		  gpu_memory_fraction: Fraction of GPU memory used by the process on
		    each GPU uniformly on the same machine.
		  tf_random_seed: Random seed for TensorFlow initializers.
		    Setting this value allows consistency between reruns.
		  save_summary_steps: Save summaries every this many steps.
		  save_checkpoints_secs: Save checkpoints every this many seconds.
		  keep_checkpoint_max: The maximum number of recent checkpoint files to
		    keep. As new files are created, older files are deleted. If None or 0,
		    all checkpoint files are kept. Defaults to 5 (that is, the 5 most recent
		    checkpoint files are kept.)
		  keep_checkpoint_every_n_hours: Number of hours between each checkpoint
		    to be saved. The default value of 10,000 hours effectively disables
		    the feature.
	**/
	@:native("__init__")
	public function ___init__(?master:Dynamic, ?task:Dynamic, ?num_ps_replicas:Dynamic, ?num_cores:Dynamic, ?log_device_placement:Dynamic, ?gpu_memory_fraction:Dynamic, ?tf_random_seed:Dynamic, ?save_summary_steps:Dynamic, ?save_checkpoints_secs:Dynamic, ?keep_checkpoint_max:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  master: TensorFlow master. Empty string (the default) for local.
		  task: Task id of the replica running the training (default: 0).
		  num_ps_replicas: Number of parameter server tasks to use (default: 0).
		  num_cores: Number of cores to be used (default: 4).
		  log_device_placement: Log the op placement to devices (default: False).
		  gpu_memory_fraction: Fraction of GPU memory used by the process on
		    each GPU uniformly on the same machine.
		  tf_random_seed: Random seed for TensorFlow initializers.
		    Setting this value allows consistency between reruns.
		  save_summary_steps: Save summaries every this many steps.
		  save_checkpoints_secs: Save checkpoints every this many seconds.
		  keep_checkpoint_max: The maximum number of recent checkpoint files to
		    keep. As new files are created, older files are deleted. If None or 0,
		    all checkpoint files are kept. Defaults to 5 (that is, the 5 most recent
		    checkpoint files are kept.)
		  keep_checkpoint_every_n_hours: Number of hours between each checkpoint
		    to be saved. The default value of 10,000 hours effectively disables
		    the feature.
	**/
	public function new(?master:Dynamic, ?task:Dynamic, ?num_ps_replicas:Dynamic, ?num_cores:Dynamic, ?log_device_placement:Dynamic, ?gpu_memory_fraction:Dynamic, ?tf_random_seed:Dynamic, ?save_summary_steps:Dynamic, ?save_checkpoints_secs:Dynamic, ?keep_checkpoint_max:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}