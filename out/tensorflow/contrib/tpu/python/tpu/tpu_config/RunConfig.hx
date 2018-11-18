/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_config;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_config", "RunConfig") extern class RunConfig {
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
		Constructs a RunConfig.
		
		Args:
		  tpu_config: the TPUConfig that specifies TPU-specific configuration.
		  evaluation_master: a string. The address of the master to use for eval.
		    Defaults to master if not set.
		  master: a string. The address of the master to use for training.
		  cluster: a ClusterResolver
		  **kwargs: keyword config parameters.
		
		Raises:
		  ValueError: if cluster is not None and the provided session_config has a
		    cluster_def already.
	**/
	@:native("__init__")
	public function ___init__(?tpu_config:Dynamic, ?evaluation_master:Dynamic, ?master:Dynamic, ?cluster:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Constructs a RunConfig.
		
		Args:
		  tpu_config: the TPUConfig that specifies TPU-specific configuration.
		  evaluation_master: a string. The address of the master to use for eval.
		    Defaults to master if not set.
		  master: a string. The address of the master to use for training.
		  cluster: a ClusterResolver
		  **kwargs: keyword config parameters.
		
		Raises:
		  ValueError: if cluster is not None and the provided session_config has a
		    cluster_def already.
	**/
	public function new(?tpu_config:Dynamic, ?evaluation_master:Dynamic, ?master:Dynamic, ?cluster:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _estimator_api_names : Dynamic;
	static public var _estimator_api_names_v1 : Dynamic;
	/**
		Returns None or tf.ConfigProto instance with default device_filters set.
		
		Device filters are set such that chief/master and worker communicates with
		only ps. session_config=None for evaluators or any other TaskType.
	**/
	public function _get_default_session_config_distributed():Dynamic;
	/**
		Initialize distributed properties based on `tf_config`.
	**/
	public function _init_distributed_setting_from_environment_var(tf_config:Dynamic):Dynamic;
	/**
		Initialize distributed properties for legacy cluster with `master`.
	**/
	public function _init_distributed_setting_from_environment_var_with_master(tf_config:Dynamic):Dynamic;
	/**
		Overwrites the session_config for distributed training.
		
		The default overwrite is optimized for between-graph training. Subclass
		should override this method if necessary.
	**/
	public function _maybe_overwrite_session_config_for_distributed_training():Dynamic;
	/**
		See `replace`.
		
		N.B.: This implementation assumes that for key named "foo", the underlying
		property the RunConfig holds is "_foo" (with one leading underscore).
		
		Args:
		  config: The RunConfig to replace the values of.
		  allowed_properties_list: The property name list allowed to be replaced.
		  **kwargs: keyword named properties with new values.
		
		Raises:
		  ValueError: If any property name in `kwargs` does not exist or is not
		    allowed to be replaced, or both `save_checkpoints_steps` and
		    `save_checkpoints_secs` are set.
		
		Returns:
		  a new instance of `RunConfig`.
	**/
	static public function _replace(config:Dynamic, ?allowed_properties_list:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var cluster : Dynamic;
	public var cluster_spec : Dynamic;
	/**
		Returns the device_fn.
		
		If device_fn is not `None`, it overrides the default
		device function used in `Estimator`.
		Otherwise the default one is used.
	**/
	public var device_fn : Dynamic;
	/**
		Optional `tf.contrib.distribute.DistributionStrategy` for evaluation.
		    
	**/
	public var eval_distribute : Dynamic;
	public var evaluation_master : Dynamic;
	/**
		The global id in the training cluster.
		
		All global ids in the training cluster are assigned from an increasing
		sequence of consecutive integers. The first id is 0.
		
		Note: Task id (the property field `task_id`) is tracking the index of the
		node among all nodes with the SAME task type. For example, given the cluster
		definition as follows:
		
		```
		  cluster = {'chief': ['host0:2222'],
		             'ps': ['host1:2222', 'host2:2222'],
		             'worker': ['host3:2222', 'host4:2222', 'host5:2222']}
		```
		
		Nodes with task type `worker` can have id 0, 1, 2.  Nodes with task type
		`ps` can have id, 0, 1. So, `task_id` is not unique, but the pair
		(`task_type`, `task_id`) can uniquely determine a node in the cluster.
		
		Global id, i.e., this field, is tracking the index of the node among ALL
		nodes in the cluster. It is uniquely assigned.  For example, for the cluster
		spec given above, the global ids are assigned as:
		```
		  task_type  | task_id  |  global_id
		  --------------------------------
		  chief      | 0        |  0
		  worker     | 0        |  1
		  worker     | 1        |  2
		  worker     | 2        |  3
		  ps         | 0        |  4
		  ps         | 1        |  5
		```
		
		Returns:
		  An integer id.
	**/
	public var global_id_in_cluster : Dynamic;
	public var is_chief : Dynamic;
	public var keep_checkpoint_every_n_hours : Dynamic;
	public var keep_checkpoint_max : Dynamic;
	public var log_step_count_steps : Dynamic;
	public var master : Dynamic;
	public var model_dir : Dynamic;
	public var num_ps_replicas : Dynamic;
	public var num_worker_replicas : Dynamic;
	/**
		Returns the optional protocol value.
	**/
	public var protocol : Dynamic;
	/**
		Returns a new instance of `RunConfig` replacing specified properties.
		
		Only the properties in the following list are allowed to be replaced:
		
		  - `model_dir`,
		  - `tf_random_seed`,
		  - `save_summary_steps`,
		  - `save_checkpoints_steps`,
		  - `save_checkpoints_secs`,
		  - `session_config`,
		  - `keep_checkpoint_max`,
		  - `keep_checkpoint_every_n_hours`,
		  - `log_step_count_steps`,
		  - `train_distribute`,
		  - `device_fn`,
		  - `protocol`.
		  - `eval_distribute`,
		  - `experimental_distribute`,
		
		In addition, either `save_checkpoints_steps` or `save_checkpoints_secs`
		can be set (should not be both).
		
		Args:
		  **kwargs: keyword named properties with new values.
		
		Raises:
		  ValueError: If any property name in `kwargs` does not exist or is not
		    allowed to be replaced, or both `save_checkpoints_steps` and
		    `save_checkpoints_secs` are set.
		
		Returns:
		  a new instance of `RunConfig`.
	**/
	public function replace(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var save_checkpoints_secs : Dynamic;
	public var save_checkpoints_steps : Dynamic;
	public var save_summary_steps : Dynamic;
	/**
		Returns the platform defined (in TF_CONFIG) service dict.
	**/
	public var service : Dynamic;
	public var session_config : Dynamic;
	public var task_id : Dynamic;
	public var task_type : Dynamic;
	public var tf_random_seed : Dynamic;
	public var tpu_config : Dynamic;
	/**
		Optional `tf.contrib.distribute.DistributionStrategy` for training.
		    
	**/
	public var train_distribute : Dynamic;
}