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
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns whether the given task is chief in the cluster.
		
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
	static public function is_chief(cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic):Dynamic;
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
}