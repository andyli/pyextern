/* This file is generated, do not edit! */
package tensorflow.python.distribute.multi_worker_util;
@:pythonImport("tensorflow.python.distribute.multi_worker_util") extern class Multi_worker_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Validates `cluster_spec`.
		
		It checks:
		1) task type is one of "chief", "worker", "ps", "evaluator", or not provided
		   (None).
		2) whether there is such a task type as `task_type` in the `cluster_spec`. The
		   only exception is `evaluator`. In other words, it is still a valid
		   configuration when `task_type` is `evaluator` but it doesn't appear in
		   `cluster_spec`. This is to be compatible with `TF_CONFIG` in Estimator.
		3) whether there is at most one "chief" job.
		4) whether there is at most one "evaluator" job.
		5) whether the `task_id` is smaller than the number of tasks for that
		   particular `task_type`.
		
		Args:
		  cluster_spec: a dict, `ClusterDef` or `ClusterSpec` object to be validated.
		  task_type: string indicating the type of the task.
		  task_id: the id of the `task_type` in this cluster.
		
		Raises:
		  ValueError: if `cluster_spec` fails any check.
	**/
	static public function _validate_cluster_spec(cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return the job name for the leader of for collective ops.
		
		Args:
		  cluster_spec: a dict, `ClusterDef` or `ClusterSpec` object specifying the
		    cluster configurations.
		  task_type: the task type in the cluster.
		  task_id: the task id in the cluster.
		
		Returns:
		  a string indicating the leader job name or empty string if no need to set
		  leader job.
	**/
	static public function collective_leader(cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns whether a worker context has been entered.
	**/
	static public function has_worker_context():Dynamic;
	/**
		Returns a unique id for the task in the `task_type`'s cluster.
		
		It returns an id ranging from [0, `worker_count(task_type, task_id)`).
		
		Note: this function assumes that "evaluate" job is in its own cluster or its
		own partition of a cluster.
		
		Args:
		  cluster_spec: a dict, `ClusterDef` or `ClusterSpec` object to be validated.
		  task_type: string indicating the type of the task.
		  task_id: the id of the `task_type` in this cluster.
		
		Returns:
		  an int indicating the unique id.
		
		Throws:
		  ValueError: if `task_type` is not "chief", "worker" or "evaluator".
	**/
	static public function id_in_cluster(cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic):Dynamic;
	/**
		Returns whether the given task is chief in the cluster.
		
		Since there is at most one evaluator and the evaluator itself should be
		independent of the training cluster, the evaluator job is also a chief job on
		its own.
		
		If this is currently running under a `_WorkerContext` of distribute
		coordinator, the arguments can be omitted as the result is already available.
		
		Args:
		  cluster_spec: a dict, `ClusterDef` or `ClusterSpec` object specifying the
		    cluster configurations.
		  task_type: the task type in the cluster.
		  task_id: the task id in the cluster.
		
		Returns:
		  a boolean indicating whether the given task is chief.
		
		Raises:
		  ValueError: if `task_type` is not in the `cluster_spec` or `task_id` exceeds
		    the maximum id of the `task_type`.
	**/
	static public function is_chief(?cluster_spec:Dynamic, ?task_type:Dynamic, ?task_id:Dynamic):Dynamic;
	/**
		Makes `cluster_spec` into a `ClusterSpec` object.
		
		Args:
		  cluster_spec: a dict, ClusterDef or ClusterSpec object specifying the
		    cluster configurations.
		
		Returns:
		  a `ClusterSpec` object.
		
		Raises:
		  ValueError: if `cluster_spec` is not a dict or a `ClusterSpec` or a
		    `ClusterDef`.
	**/
	static public function normalize_cluster_spec(cluster_spec:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns whether the current worker should load checkpoints.
		
		In multi-worker training, if loading checkpoint is requested by user, or
		needed for fault-tolerance, the cluster should load checkpoint but not
		necessarily every worker in the cluster should.
		
		Returns:
		    Whether this particular worker in the cluster should load checkpoints.
	**/
	static public function should_load_checkpoint():Dynamic;
	/**
		Returns whether the current worker should save checkpoints.
		
		In multi-worker training, if saving checkpoint is requested by user, or needed
		for fault-tolerance, the cluster should save checkpoint but not necessarily
		every worker in the cluster should.
		
		TODO(rchao): Consider generalizing this util to be `should_save_file` as there
		can be other files to save such as summary.
		
		Returns:
		    Whether this particular worker in the cluster should save checkpoints.
	**/
	static public function should_save_checkpoint():Dynamic;
	static public function task_count(cluster_spec:Dynamic, task_type:Dynamic):Dynamic;
	/**
		Waits for other workers to reach the same call to this method.
	**/
	static public function wait_for_other_workers():Dynamic;
	/**
		Returns the number of workers in the cluster.
	**/
	static public function worker_count(cluster_spec:Dynamic, task_type:Dynamic):Dynamic;
}