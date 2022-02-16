/* This file is generated, do not edit! */
package tensorflow.python.eager.remote;
@:pythonImport("tensorflow.python.eager.remote") extern class Remote_Module {
	static public var _GRPC_PREFIX : Dynamic;
	static public var _LOCAL_MASTERS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _strip_prefix(s:Dynamic, prefix:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Connects to the given cluster.
		
		Will make devices on the cluster available to use. Note that calling this more
		than once will work, but will invalidate any tensor handles on the old remote
		devices.
		
		If the given local job name is not present in the cluster specification, it
		will be automatically added, using an unused port on the localhost.
		
		Device filters can be specified to isolate groups of remote tasks to avoid
		undesired accesses between workers. Workers accessing resources or launching
		ops / functions on filtered remote devices will result in errors (unknown
		devices). For any remote task, if no device filter is present, all cluster
		devices will be visible; if any device filter is specified, it can only
		see devices matching at least one filter. Devices on the task itself are
		always visible. Device filters can be particially specified.
		
		For example, for a cluster set up for parameter server training, the following
		device filters might be specified:
		
		```python
		cdf = tf.config.experimental.ClusterDeviceFilters()
		# For any worker, only the devices on PS nodes and itself are visible
		for i in range(num_workers):
		  cdf.set_device_filters('worker', i, ['/job:ps'])
		# Similarly for any ps, only the devices on workers and itself are visible
		for i in range(num_ps):
		  cdf.set_device_filters('ps', i, ['/job:worker'])
		
		tf.config.experimental_connect_to_cluster(cluster_def,
		                                          cluster_device_filters=cdf)
		```
		
		Args:
		  cluster_spec_or_resolver: A `ClusterSpec` or `ClusterResolver` describing
		    the cluster.
		  job_name: The name of the local job.
		  task_index: The local task index.
		  protocol: The communication protocol, such as `"grpc"`. If unspecified, will
		    use the default from `python/platform/remote_utils.py`.
		  make_master_device_default: If True and a cluster resolver is passed, will
		    automatically enter the master task device scope, which indicates the
		    master becomes the default device to run ops. It won't do anything if
		    a cluster spec is passed. Will throw an error if the caller is currently
		    already in some device scope.
		  cluster_device_filters: an instance of
		    `tf.train.experimental/ClusterDeviceFilters` that specify device filters
		    to the remote tasks in cluster.
	**/
	static public function connect_to_cluster(cluster_spec_or_resolver:Dynamic, ?job_name:Dynamic, ?task_index:Dynamic, ?protocol:Dynamic, ?make_master_device_default:Dynamic, ?cluster_device_filters:Dynamic):Dynamic;
	/**
		Connects to a single machine to enable remote execution on it.
		
		Will make devices on the remote host available to use. Note that calling this
		more than once will work, but will invalidate any tensor handles on the old
		remote devices.
		
		Using the default job_name of worker, you can schedule ops to run remotely as
		follows:
		```python
		# When eager execution is enabled, connect to the remote host.
		tf.config.experimental_connect_to_host("exampleaddr.com:9876")
		
		with ops.device("job:worker/replica:0/task:1/device:CPU:0"):
		  # The following tensors should be resident on the remote device, and the op
		  # will also execute remotely.
		  x1 = array_ops.ones([2, 2])
		  x2 = array_ops.ones([2, 2])
		  y = math_ops.matmul(x1, x2)
		```
		
		Args:
		  remote_host: a single or a list the remote server addr in host-port format.
		  job_name: The job name under which the new server will be accessible.
		
		Raises:
		  ValueError: if remote_host is None.
	**/
	static public function connect_to_remote_host(?remote_host:Dynamic, ?job_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}