/* This file is generated, do not edit! */
package tensorflow.python.training.device_setter;
@:pythonImport("tensorflow.python.training.device_setter") extern class Device_setter_Module {
	static public var STANDARD_PS_OPS : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Return a `device function` to use when building a Graph for replicas.
		
		Device Functions are used in `with tf.device(device_function):` statement to
		automatically assign devices to `Operation` objects as they are constructed,
		Device constraints are added from the inner-most context first, working
		outwards. The merging behavior adds constraints to fields that are yet unset
		by a more inner context. Currently the fields are (job, task, cpu/gpu).
		
		If `cluster` is `None`, and `ps_tasks` is 0, the returned function is a no-op.
		Otherwise, the value of `ps_tasks` is derived from `cluster`.
		
		By default, only Variable ops are placed on ps tasks, and the placement
		strategy is round-robin over all ps tasks. A custom `ps_strategy` may be used
		to do more intelligent placement, such as
		`tf.contrib.training.GreedyLoadBalancingStrategy`.
		
		For example,
		
		```python
		# To build a cluster with two ps jobs on hosts ps0 and ps1, and 3 worker
		# jobs on hosts worker0, worker1 and worker2.
		cluster_spec = {
		    "ps": ["ps0:2222", "ps1:2222"],
		    "worker": ["worker0:2222", "worker1:2222", "worker2:2222"]}
		with
		tf.device(tf.compat.v1.train.replica_device_setter(cluster=cluster_spec)):
		  # Build your graph
		  v1 = tf.Variable(...)  # assigned to /job:ps/task:0
		  v2 = tf.Variable(...)  # assigned to /job:ps/task:1
		  v3 = tf.Variable(...)  # assigned to /job:ps/task:0
		# Run compute
		```
		
		Args:
		  ps_tasks: Number of tasks in the `ps` job.  Ignored if `cluster` is
		    provided.
		  ps_device: String.  Device of the `ps` job.  If empty no `ps` job is used.
		    Defaults to `ps`.
		  worker_device: String.  Device of the `worker` job.  If empty no `worker`
		    job is used.
		  merge_devices: `Boolean`. If `True`, merges or only sets a device if the
		    device constraint is completely unset. merges device specification rather
		    than overriding them.
		  cluster: `ClusterDef` proto or `ClusterSpec`.
		  ps_ops: List of strings representing `Operation` types that need to be
		    placed on `ps` devices.  If `None`, defaults to `STANDARD_PS_OPS`.
		  ps_strategy: A callable invoked for every ps `Operation` (i.e. matched by
		    `ps_ops`), that takes the `Operation` and returns the ps task index to
		    use.  If `None`, defaults to a round-robin strategy across all `ps`
		    devices.
		
		Returns:
		  A function to pass to `tf.device()`.
		
		Raises:
		  TypeError if `cluster` is not a dictionary or `ClusterDef` protocol buffer,
		  or if `ps_strategy` is provided but not a callable.
	**/
	static public function replica_device_setter(?ps_tasks:Dynamic, ?ps_device:Dynamic, ?worker_device:Dynamic, ?merge_devices:Dynamic, ?cluster:Dynamic, ?ps_ops:Dynamic, ?ps_strategy:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}