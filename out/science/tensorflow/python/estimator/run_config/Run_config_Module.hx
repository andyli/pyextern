/* This file is generated, do not edit! */
package tensorflow.python.estimator.run_config;
@:pythonImport("tensorflow.python.estimator.run_config") extern class Run_config_Module {
	static public var _CLUSTER_KEY : Dynamic;
	static public var _DEFAULT_REPLACEABLE_LIST : Dynamic;
	static public var _EVAL_SESSION_MASTER_KEY : Dynamic;
	static public var _GRPC_SCHEME : Dynamic;
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var _LOCAL_MASTER : Dynamic;
	static public var _MODEL_DIR_KEY : Dynamic;
	static public var _SAVE_CKPT_ERR : Dynamic;
	static public var _SERVICE_KEY : Dynamic;
	static public var _SESSION_MASTER_KEY : Dynamic;
	static public var _TASK_ENV_KEY : Dynamic;
	static public var _TASK_ID_KEY : Dynamic;
	static public var _TASK_TYPE_KEY : Dynamic;
	static public var _TF_CONFIG_ENV : Dynamic;
	static public var _USE_DEFAULT : Dynamic;
	static public var _VALID_DEVICE_FN_ARGS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Counts the number of parameter servers in cluster_spec.
	**/
	static public function _count_ps(cluster_spec:Dynamic):Dynamic;
	/**
		Counts the number of workers (including chief) in cluster_spec.
	**/
	static public function _count_worker(cluster_spec:Dynamic, chief_task_type:Dynamic):Dynamic;
	/**
		Returns the appropriate address for TensorFlow evaluation master.
	**/
	static public function _get_eval_session_master(task_type:Dynamic, tf_config:Dynamic):Dynamic;
	/**
		Returns the global id in cluster.
	**/
	static public function _get_global_id_in_cluster(cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic, chief_task_type:Dynamic):Dynamic;
	/**
		Returns `model_dir` based user provided `tf_config` or `model_dir`.
	**/
	static public function _get_model_dir(tf_config:Dynamic, model_dir:Dynamic):Dynamic;
	/**
		Returns the appropriate address for TensorFlow master.
		
		The order of precedence to determine the TF session master is as follows:
		1. If `tf_session_master` is set in TF_CONFIG environment variable, takes it.
		2. If the cluster has only one node, returns empty string ''.
		3. Returns the grpc address according to the task type and id in the cluster.
		   This is between-graph replication.
		
		Note: task_type and task_id must be validated. Typically, validated using
		`_validate_task_type_and_task_id`.
		
		Args:
		  cluster_spec: A `ClusterSpec` instance.
		  task_type: String. Task type for current node.
		  task_id: Int. Task id for current node.
		  tf_config: Dict. Python dict for the TF_CONFIG environment variable.
		
		Raises:
		  RuntimeError: If `cluster_spec` is not set.
	**/
	static public function _get_session_master(cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic, tf_config:Dynamic):Dynamic;
	/**
		Validates the properties.
	**/
	static public function _validate_properties(run_config:Dynamic):Dynamic;
	/**
		Validates the save ckpt properties.
	**/
	static public function _validate_save_ckpt_with_replaced_keys(new_copy:Dynamic, replaced_keys:Dynamic):Dynamic;
	/**
		Validates the service key.
	**/
	static public function _validate_service(service:Dynamic):Dynamic;
	/**
		Validates the task type and index in `task_env` according to cluster.
	**/
	static public function _validate_task_type_and_task_id(cluster_spec:Dynamic, task_env:Dynamic, chief_task_type:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns tf.ConfigProto instance.
	**/
	static public function get_default_session_config():Dynamic;
	static public var print_function : Dynamic;
}