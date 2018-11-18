/* This file is generated, do not edit! */
package tensorflow.python.estimator.run_config;
@:pythonImport("tensorflow.python.estimator.run_config", "RunConfig") extern class RunConfig {
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
		
		All distributed training related properties `cluster_spec`, `is_chief`,
		`master` , `num_worker_replicas`, `num_ps_replicas`, `task_id`, and
		`task_type` are set based on the `TF_CONFIG` environment variable, if the
		pertinent information is present. The `TF_CONFIG` environment variable is a
		JSON object with attributes: `cluster` and `task`.
		
		`cluster` is a JSON serialized version of `ClusterSpec`'s Python dict from
		`server_lib.py`, mapping task types (usually one of the `TaskType` enums) to
		a list of task addresses.
		
		`task` has two attributes: `type` and `index`, where `type` can be any of
		the task types in `cluster`. When `TF_CONFIG` contains said information,
		the following properties are set on this class:
		
		* `cluster_spec` is parsed from `TF_CONFIG['cluster']`. Defaults to {}. If
		  present, must have one and only one node in the `chief` attribute of
		  `cluster_spec`.
		* `task_type` is set to `TF_CONFIG['task']['type']`. Must set if
		  `cluster_spec` is present; must be `worker` (the default value) if
		  `cluster_spec` is not set.
		* `task_id` is set to `TF_CONFIG['task']['index']`. Must set if
		  `cluster_spec` is present; must be 0 (the default value) if
		  `cluster_spec` is not set.
		* `master` is determined by looking up `task_type` and `task_id` in the
		  `cluster_spec`. Defaults to ''.
		* `num_ps_replicas` is set by counting the number of nodes listed
		  in the `ps` attribute of `cluster_spec`. Defaults to 0.
		* `num_worker_replicas` is set by counting the number of nodes listed
		  in the `worker` and `chief` attributes of `cluster_spec`. Defaults to 1.
		* `is_chief` is determined based on `task_type` and `cluster`.
		
		There is a special node with `task_type` as `evaluator`, which is not part
		of the (training) `cluster_spec`. It handles the distributed evaluation job.
		
		Example of non-chief node:
		```
		  cluster = {'chief': ['host0:2222'],
		             'ps': ['host1:2222', 'host2:2222'],
		             'worker': ['host3:2222', 'host4:2222', 'host5:2222']}
		  os.environ['TF_CONFIG'] = json.dumps(
		      {'cluster': cluster,
		       'task': {'type': 'worker', 'index': 1}})
		  config = RunConfig()
		  assert config.master == 'host4:2222'
		  assert config.task_id == 1
		  assert config.num_ps_replicas == 2
		  assert config.num_worker_replicas == 4
		  assert config.cluster_spec == server_lib.ClusterSpec(cluster)
		  assert config.task_type == 'worker'
		  assert not config.is_chief
		```
		
		Example of chief node:
		```
		  cluster = {'chief': ['host0:2222'],
		             'ps': ['host1:2222', 'host2:2222'],
		             'worker': ['host3:2222', 'host4:2222', 'host5:2222']}
		  os.environ['TF_CONFIG'] = json.dumps(
		      {'cluster': cluster,
		       'task': {'type': 'chief', 'index': 0}})
		  config = RunConfig()
		  assert config.master == 'host0:2222'
		  assert config.task_id == 0
		  assert config.num_ps_replicas == 2
		  assert config.num_worker_replicas == 4
		  assert config.cluster_spec == server_lib.ClusterSpec(cluster)
		  assert config.task_type == 'chief'
		  assert config.is_chief
		```
		
		Example of evaluator node (evaluator is not part of training cluster):
		```
		  cluster = {'chief': ['host0:2222'],
		             'ps': ['host1:2222', 'host2:2222'],
		             'worker': ['host3:2222', 'host4:2222', 'host5:2222']}
		  os.environ['TF_CONFIG'] = json.dumps(
		      {'cluster': cluster,
		       'task': {'type': 'evaluator', 'index': 0}})
		  config = RunConfig()
		  assert config.master == ''
		  assert config.evaluator_master == ''
		  assert config.task_id == 0
		  assert config.num_ps_replicas == 0
		  assert config.num_worker_replicas == 0
		  assert config.cluster_spec == {}
		  assert config.task_type == 'evaluator'
		  assert not config.is_chief
		```
		
		N.B.: If `save_checkpoints_steps` or `save_checkpoints_secs` is set,
		`keep_checkpoint_max` might need to be adjusted accordingly, especially in
		distributed training. For example, setting `save_checkpoints_secs` as 60
		without adjusting `keep_checkpoint_max` (defaults to 5) leads to situation
		that checkpoint would be garbage collected after 5 minutes. In distributed
		training, the evaluation job starts asynchronously and might fail to load or
		find the checkpoint due to race condition.
		
		Args:
		  model_dir: directory where model parameters, graph, etc are saved. If
		    `PathLike` object, the path will be resolved. If `None`, will use a
		    default value set by the Estimator.
		  tf_random_seed: Random seed for TensorFlow initializers.
		    Setting this value allows consistency between reruns.
		  save_summary_steps: Save summaries every this many steps.
		  save_checkpoints_steps: Save checkpoints every this many steps. Can not be
		      specified with `save_checkpoints_secs`.
		  save_checkpoints_secs: Save checkpoints every this many seconds. Can not
		      be specified with `save_checkpoints_steps`. Defaults to 600 seconds if
		      both `save_checkpoints_steps` and `save_checkpoints_secs` are not set
		      in constructor.  If both `save_checkpoints_steps` and
		      `save_checkpoints_secs` are None, then checkpoints are disabled.
		  session_config: a ConfigProto used to set session parameters, or None.
		  keep_checkpoint_max: The maximum number of recent checkpoint files to
		    keep. As new files are created, older files are deleted. If None or 0,
		    all checkpoint files are kept. Defaults to 5 (that is, the 5 most recent
		    checkpoint files are kept.)
		  keep_checkpoint_every_n_hours: Number of hours between each checkpoint
		    to be saved. The default value of 10,000 hours effectively disables
		    the feature.
		  log_step_count_steps: The frequency, in number of global steps, that the
		    global step/sec and the loss will be logged during training.
		  train_distribute: An optional instance of
		    `tf.contrib.distribute.DistributionStrategy`. If specified,
		    then Estimator will distribute the user's model during training,
		    according to the policy specified by that strategy. Setting
		    `experimental_distribute.train_distribute` is preferred.
		  device_fn: A callable invoked for every `Operation` that takes the
		    `Operation` and returns the device string. If `None`, defaults to
		    the device function returned by `tf.train.replica_device_setter`
		    with round-robin strategy.
		  protocol: An optional argument which specifies the protocol used when
		    starting server. None means default to grpc.
		  eval_distribute: An optional instance of
		    `tf.contrib.distribute.DistributionStrategy`. If specified,
		    then Estimator will distribute the user's model during evaluation,
		    according to the policy specified by that strategy. Setting
		    `experimental_distribute.eval_distribute` is preferred.
		  experimental_distribute: an optional
		    `tf.contrib.distribute.DistributeConfig` object specifying
		    DistributionStrategy-related configuration. The `train_distribute` and
		    `eval_distribute` can be passed as parameters to `RunConfig` or set in
		    `experimental_distribute` but not both.
		
		Raises:
		  ValueError: If both `save_checkpoints_steps` and `save_checkpoints_secs`
		  are set.
	**/
	@:native("__init__")
	public function ___init__(?model_dir:Dynamic, ?tf_random_seed:Dynamic, ?save_summary_steps:Dynamic, ?save_checkpoints_steps:Dynamic, ?save_checkpoints_secs:Dynamic, ?session_config:Dynamic, ?keep_checkpoint_max:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?log_step_count_steps:Dynamic, ?train_distribute:Dynamic, ?device_fn:Dynamic, ?protocol:Dynamic, ?eval_distribute:Dynamic, ?experimental_distribute:Dynamic):Dynamic;
	/**
		Constructs a RunConfig.
		
		All distributed training related properties `cluster_spec`, `is_chief`,
		`master` , `num_worker_replicas`, `num_ps_replicas`, `task_id`, and
		`task_type` are set based on the `TF_CONFIG` environment variable, if the
		pertinent information is present. The `TF_CONFIG` environment variable is a
		JSON object with attributes: `cluster` and `task`.
		
		`cluster` is a JSON serialized version of `ClusterSpec`'s Python dict from
		`server_lib.py`, mapping task types (usually one of the `TaskType` enums) to
		a list of task addresses.
		
		`task` has two attributes: `type` and `index`, where `type` can be any of
		the task types in `cluster`. When `TF_CONFIG` contains said information,
		the following properties are set on this class:
		
		* `cluster_spec` is parsed from `TF_CONFIG['cluster']`. Defaults to {}. If
		  present, must have one and only one node in the `chief` attribute of
		  `cluster_spec`.
		* `task_type` is set to `TF_CONFIG['task']['type']`. Must set if
		  `cluster_spec` is present; must be `worker` (the default value) if
		  `cluster_spec` is not set.
		* `task_id` is set to `TF_CONFIG['task']['index']`. Must set if
		  `cluster_spec` is present; must be 0 (the default value) if
		  `cluster_spec` is not set.
		* `master` is determined by looking up `task_type` and `task_id` in the
		  `cluster_spec`. Defaults to ''.
		* `num_ps_replicas` is set by counting the number of nodes listed
		  in the `ps` attribute of `cluster_spec`. Defaults to 0.
		* `num_worker_replicas` is set by counting the number of nodes listed
		  in the `worker` and `chief` attributes of `cluster_spec`. Defaults to 1.
		* `is_chief` is determined based on `task_type` and `cluster`.
		
		There is a special node with `task_type` as `evaluator`, which is not part
		of the (training) `cluster_spec`. It handles the distributed evaluation job.
		
		Example of non-chief node:
		```
		  cluster = {'chief': ['host0:2222'],
		             'ps': ['host1:2222', 'host2:2222'],
		             'worker': ['host3:2222', 'host4:2222', 'host5:2222']}
		  os.environ['TF_CONFIG'] = json.dumps(
		      {'cluster': cluster,
		       'task': {'type': 'worker', 'index': 1}})
		  config = RunConfig()
		  assert config.master == 'host4:2222'
		  assert config.task_id == 1
		  assert config.num_ps_replicas == 2
		  assert config.num_worker_replicas == 4
		  assert config.cluster_spec == server_lib.ClusterSpec(cluster)
		  assert config.task_type == 'worker'
		  assert not config.is_chief
		```
		
		Example of chief node:
		```
		  cluster = {'chief': ['host0:2222'],
		             'ps': ['host1:2222', 'host2:2222'],
		             'worker': ['host3:2222', 'host4:2222', 'host5:2222']}
		  os.environ['TF_CONFIG'] = json.dumps(
		      {'cluster': cluster,
		       'task': {'type': 'chief', 'index': 0}})
		  config = RunConfig()
		  assert config.master == 'host0:2222'
		  assert config.task_id == 0
		  assert config.num_ps_replicas == 2
		  assert config.num_worker_replicas == 4
		  assert config.cluster_spec == server_lib.ClusterSpec(cluster)
		  assert config.task_type == 'chief'
		  assert config.is_chief
		```
		
		Example of evaluator node (evaluator is not part of training cluster):
		```
		  cluster = {'chief': ['host0:2222'],
		             'ps': ['host1:2222', 'host2:2222'],
		             'worker': ['host3:2222', 'host4:2222', 'host5:2222']}
		  os.environ['TF_CONFIG'] = json.dumps(
		      {'cluster': cluster,
		       'task': {'type': 'evaluator', 'index': 0}})
		  config = RunConfig()
		  assert config.master == ''
		  assert config.evaluator_master == ''
		  assert config.task_id == 0
		  assert config.num_ps_replicas == 0
		  assert config.num_worker_replicas == 0
		  assert config.cluster_spec == {}
		  assert config.task_type == 'evaluator'
		  assert not config.is_chief
		```
		
		N.B.: If `save_checkpoints_steps` or `save_checkpoints_secs` is set,
		`keep_checkpoint_max` might need to be adjusted accordingly, especially in
		distributed training. For example, setting `save_checkpoints_secs` as 60
		without adjusting `keep_checkpoint_max` (defaults to 5) leads to situation
		that checkpoint would be garbage collected after 5 minutes. In distributed
		training, the evaluation job starts asynchronously and might fail to load or
		find the checkpoint due to race condition.
		
		Args:
		  model_dir: directory where model parameters, graph, etc are saved. If
		    `PathLike` object, the path will be resolved. If `None`, will use a
		    default value set by the Estimator.
		  tf_random_seed: Random seed for TensorFlow initializers.
		    Setting this value allows consistency between reruns.
		  save_summary_steps: Save summaries every this many steps.
		  save_checkpoints_steps: Save checkpoints every this many steps. Can not be
		      specified with `save_checkpoints_secs`.
		  save_checkpoints_secs: Save checkpoints every this many seconds. Can not
		      be specified with `save_checkpoints_steps`. Defaults to 600 seconds if
		      both `save_checkpoints_steps` and `save_checkpoints_secs` are not set
		      in constructor.  If both `save_checkpoints_steps` and
		      `save_checkpoints_secs` are None, then checkpoints are disabled.
		  session_config: a ConfigProto used to set session parameters, or None.
		  keep_checkpoint_max: The maximum number of recent checkpoint files to
		    keep. As new files are created, older files are deleted. If None or 0,
		    all checkpoint files are kept. Defaults to 5 (that is, the 5 most recent
		    checkpoint files are kept.)
		  keep_checkpoint_every_n_hours: Number of hours between each checkpoint
		    to be saved. The default value of 10,000 hours effectively disables
		    the feature.
		  log_step_count_steps: The frequency, in number of global steps, that the
		    global step/sec and the loss will be logged during training.
		  train_distribute: An optional instance of
		    `tf.contrib.distribute.DistributionStrategy`. If specified,
		    then Estimator will distribute the user's model during training,
		    according to the policy specified by that strategy. Setting
		    `experimental_distribute.train_distribute` is preferred.
		  device_fn: A callable invoked for every `Operation` that takes the
		    `Operation` and returns the device string. If `None`, defaults to
		    the device function returned by `tf.train.replica_device_setter`
		    with round-robin strategy.
		  protocol: An optional argument which specifies the protocol used when
		    starting server. None means default to grpc.
		  eval_distribute: An optional instance of
		    `tf.contrib.distribute.DistributionStrategy`. If specified,
		    then Estimator will distribute the user's model during evaluation,
		    according to the policy specified by that strategy. Setting
		    `experimental_distribute.eval_distribute` is preferred.
		  experimental_distribute: an optional
		    `tf.contrib.distribute.DistributeConfig` object specifying
		    DistributionStrategy-related configuration. The `train_distribute` and
		    `eval_distribute` can be passed as parameters to `RunConfig` or set in
		    `experimental_distribute` but not both.
		
		Raises:
		  ValueError: If both `save_checkpoints_steps` and `save_checkpoints_secs`
		  are set.
	**/
	public function new(?model_dir:Dynamic, ?tf_random_seed:Dynamic, ?save_summary_steps:Dynamic, ?save_checkpoints_steps:Dynamic, ?save_checkpoints_secs:Dynamic, ?session_config:Dynamic, ?keep_checkpoint_max:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?log_step_count_steps:Dynamic, ?train_distribute:Dynamic, ?device_fn:Dynamic, ?protocol:Dynamic, ?eval_distribute:Dynamic, ?experimental_distribute:Dynamic):Void;
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
	/**
		Optional `tf.contrib.distribute.DistributionStrategy` for training.
		    
	**/
	public var train_distribute : Dynamic;
}