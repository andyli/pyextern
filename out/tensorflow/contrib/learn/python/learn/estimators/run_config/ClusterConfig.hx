/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.run_config;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.run_config", "ClusterConfig") extern class ClusterConfig {
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
		Constructor.
		
		Sets the properties `cluster_spec`, `is_chief`, `master` (if `None` in the
		args), `num_ps_replicas`, `task_id`, and `task_type` based on the
		`TF_CONFIG` environment variable, if the pertinent information is
		present. The `TF_CONFIG` environment variable is a JSON object with
		attributes: `cluster`, `environment`, and `task`.
		
		`cluster` is a JSON serialized version of `ClusterSpec`'s Python dict from
		`server_lib.py`, mapping task types (usually one of the TaskType enums) to a
		list of task addresses.
		
		`environment` specifies the runtime environment for the job (usually one of
		the `Environment` enums). Defaults to `LOCAL`.
		
		`task` has two attributes: `type` and `index`, where `type` can be any of
		the task types in `cluster`. When `TF_CONFIG` contains said information, the
		following properties are set on this class:
		
		* `task_type` is set to `TF_CONFIG['task']['type']`. Defaults to `None`.
		* `task_id` is set to `TF_CONFIG['task']['index']`. Defaults to 0.
		* `cluster_spec` is parsed from `TF_CONFIG['cluster']`. Defaults to {}.
		* `master` is determined by looking up `task_type` and `task_id` in the
		  `cluster_spec`. Defaults to ''.
		* `num_ps_replicas` is set by counting the number of nodes listed
		  in the `ps` attribute of `cluster_spec`. Defaults to 0.
		* `num_worker_replicas` is set by counting the number of nodes listed
		  in the `worker` attribute of `cluster_spec`. Defaults to 0.
		* `is_chief` is deteremined based on `task_type`, `type_id`, and
		  `environment`.
		
		Example:
		```
		  cluster = {'ps': ['host1:2222', 'host2:2222'],
		             'worker': ['host3:2222', 'host4:2222', 'host5:2222']}
		  os.environ['TF_CONFIG'] = json.dumps(
		      {'cluster': cluster,
		       'task': {'type': 'worker', 'index': 1}})
		  config = ClusterConfig()
		  assert config.master == 'host4:2222'
		  assert config.task_id == 1
		  assert config.num_ps_replicas == 2
		  assert config.num_worker_replicas == 3
		  assert config.cluster_spec == server_lib.ClusterSpec(cluster)
		  assert config.task_type == 'worker'
		  assert not config.is_chief
		```
		
		Args:
		  master: TensorFlow master. Defaults to empty string for local.
		  evaluation_master: The master on which to perform evaluation.
	**/
	@:native("__init__")
	public function ___init__(?master:Dynamic, ?evaluation_master:Dynamic):Dynamic;
	/**
		Constructor.
		
		Sets the properties `cluster_spec`, `is_chief`, `master` (if `None` in the
		args), `num_ps_replicas`, `task_id`, and `task_type` based on the
		`TF_CONFIG` environment variable, if the pertinent information is
		present. The `TF_CONFIG` environment variable is a JSON object with
		attributes: `cluster`, `environment`, and `task`.
		
		`cluster` is a JSON serialized version of `ClusterSpec`'s Python dict from
		`server_lib.py`, mapping task types (usually one of the TaskType enums) to a
		list of task addresses.
		
		`environment` specifies the runtime environment for the job (usually one of
		the `Environment` enums). Defaults to `LOCAL`.
		
		`task` has two attributes: `type` and `index`, where `type` can be any of
		the task types in `cluster`. When `TF_CONFIG` contains said information, the
		following properties are set on this class:
		
		* `task_type` is set to `TF_CONFIG['task']['type']`. Defaults to `None`.
		* `task_id` is set to `TF_CONFIG['task']['index']`. Defaults to 0.
		* `cluster_spec` is parsed from `TF_CONFIG['cluster']`. Defaults to {}.
		* `master` is determined by looking up `task_type` and `task_id` in the
		  `cluster_spec`. Defaults to ''.
		* `num_ps_replicas` is set by counting the number of nodes listed
		  in the `ps` attribute of `cluster_spec`. Defaults to 0.
		* `num_worker_replicas` is set by counting the number of nodes listed
		  in the `worker` attribute of `cluster_spec`. Defaults to 0.
		* `is_chief` is deteremined based on `task_type`, `type_id`, and
		  `environment`.
		
		Example:
		```
		  cluster = {'ps': ['host1:2222', 'host2:2222'],
		             'worker': ['host3:2222', 'host4:2222', 'host5:2222']}
		  os.environ['TF_CONFIG'] = json.dumps(
		      {'cluster': cluster,
		       'task': {'type': 'worker', 'index': 1}})
		  config = ClusterConfig()
		  assert config.master == 'host4:2222'
		  assert config.task_id == 1
		  assert config.num_ps_replicas == 2
		  assert config.num_worker_replicas == 3
		  assert config.cluster_spec == server_lib.ClusterSpec(cluster)
		  assert config.task_type == 'worker'
		  assert not config.is_chief
		```
		
		Args:
		  master: TensorFlow master. Defaults to empty string for local.
		  evaluation_master: The master on which to perform evaluation.
	**/
	public function new(?master:Dynamic, ?evaluation_master:Dynamic):Void;
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
	public var cluster_spec : Dynamic;
	public var environment : Dynamic;
	public var evaluation_master : Dynamic;
	/**
		Returns task index from `TF_CONFIG` environmental variable.
		
		If you have a ClusterConfig instance, you can just access its task_id
		property instead of calling this function and re-parsing the environmental
		variable.
		
		Returns:
		  `TF_CONFIG['task']['index']`. Defaults to 0.
	**/
	static public function get_task_id():Dynamic;
	public var is_chief : Dynamic;
	public var master : Dynamic;
	public var num_ps_replicas : Dynamic;
	public var num_worker_replicas : Dynamic;
	public var task_id : Dynamic;
	public var task_type : Dynamic;
}