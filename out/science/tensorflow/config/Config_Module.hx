/* This file is generated, do not edit! */
package tensorflow.config;
@:pythonImport("tensorflow.config") extern class Config_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function experimental_connect_to_cluster(cluster_spec_or_resolver:Dynamic, ?job_name:Dynamic, ?task_index:Dynamic, ?protocol:Dynamic, ?make_master_device_default:Dynamic, ?cluster_device_filters:Dynamic):Dynamic;
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
	static public function experimental_connect_to_host(?remote_host:Dynamic, ?job_name:Dynamic):Dynamic;
	/**
		Returns the value of the `experimental_run_functions_eagerly` setting. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.config.functions_run_eagerly instead of the experimental version.
	**/
	static public function experimental_functions_run_eagerly():Dynamic;
	/**
		Enables / disables eager execution of `tf.function`s. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.config.run_functions_eagerly` instead of the experimental version.
		
		Calling `tf.config.experimental_run_functions_eagerly(True)` will make all
		invocations of `tf.function` run eagerly instead of running as a traced graph
		function.
		
		See `tf.config.run_functions_eagerly` for an example.
		
		Note: This flag has no effect on functions passed into tf.data transformations
		as arguments. tf.data functions are never executed eagerly and are always
		executed as a compiled Tensorflow Graph.
		
		Args:
		  run_eagerly: Boolean. Whether to run functions eagerly.
	**/
	static public function experimental_run_functions_eagerly(run_eagerly:Dynamic):Dynamic;
	/**
		Returns the value of the `run_functions_eagerly` setting.
	**/
	static public function functions_run_eagerly():Dynamic;
	/**
		Get the virtual device configuration for a `tf.config.PhysicalDevice`.
		
		Returns the list of `tf.config.LogicalDeviceConfiguration`
		objects previously configured by a call to
		`tf.config.set_logical_device_configuration`.
		
		For example:
		
		>>> physical_devices = tf.config.list_physical_devices('CPU')
		>>> assert len(physical_devices) == 1, "No CPUs found"
		>>> configs = tf.config.get_logical_device_configuration(
		...   physical_devices[0])
		>>> try:
		...   assert configs is None
		...   tf.config.set_logical_device_configuration(
		...     physical_devices[0],
		...     [tf.config.LogicalDeviceConfiguration(),
		...      tf.config.LogicalDeviceConfiguration()])
		...   configs = tf.config.get_logical_device_configuration(
		...     physical_devices[0])
		...   assert len(configs) == 2
		... except:
		...   # Cannot modify virtual devices once initialized.
		...   pass
		
		Args:
		  device: `PhysicalDevice` to query
		
		Returns:
		  List of `tf.config.LogicalDeviceConfiguration` objects or
		  `None` if no virtual device configuration has been set for this physical
		  device.
	**/
	static public function get_logical_device_configuration(device:Dynamic):Dynamic;
	/**
		Get if soft device placement is enabled.
		
		If enabled, an op will be placed on CPU if any of the following are true
		  1. there's no GPU implementation for the OP
		  2. no GPU devices are known or registered
		  3. need to co-locate with reftype input(s) which are from CPU
		
		If disabled, the placement is strict and CPU fallback is not allowed.
		An error is raised when an Op cannot be placed onto its intended device.
		
		Returns:
		  If soft placement is enabled.
	**/
	static public function get_soft_device_placement():Dynamic;
	/**
		Get the list of visible physical devices.
		
		Returns the list of `PhysicalDevice`s currently marked as visible to the
		runtime. A visible device will have at least one `LogicalDevice` associated
		with it once the runtime is initialized.
		
		The following example verifies all visible GPUs have been disabled:
		
		>>> physical_devices = tf.config.list_physical_devices('GPU')
		>>> try:
		...   # Disable all GPUS
		...   tf.config.set_visible_devices([], 'GPU')
		...   visible_devices = tf.config.get_visible_devices()
		...   for device in visible_devices:
		...     assert device.device_type != 'GPU'
		... except:
		...   # Invalid device or cannot modify virtual devices once initialized.
		...   pass
		
		Args:
		  device_type: (optional string) Only include devices matching this device
		    type. For example "CPU" or "GPU".
		
		Returns:
		  List of visible `PhysicalDevice`s
	**/
	static public function get_visible_devices(?device_type:Dynamic):Dynamic;
	/**
		Return a list of logical devices created by runtime.
		
		Logical devices may correspond to physical devices or remote devices in the
		cluster. Operations and tensors may be placed on these devices by using the
		`name` of the `tf.config.LogicalDevice`.
		
		Calling `tf.config.list_logical_devices` triggers the runtime to configure any
		`tf.config.PhysicalDevice` visible to the runtime, thereby preventing
		further configuration. To avoid runtime initialization, call
		`tf.config.list_physical_devices` instead.
		
		For example:
		
		>>> logical_devices = tf.config.list_logical_devices('GPU')
		>>> if len(logical_devices) > 0:
		...   # Allocate on GPU:0
		...   with tf.device(logical_devices[0].name):
		...     one = tf.constant(1)
		...   # Allocate on GPU:1
		...   with tf.device(logical_devices[1].name):
		...     two = tf.constant(2)
		
		Args:
		  device_type: (optional string) Only include devices matching this device
		    type. For example "CPU" or "GPU".
		
		Returns:
		  List of initialized `LogicalDevice`s
	**/
	static public function list_logical_devices(?device_type:Dynamic):Dynamic;
	/**
		Return a list of physical devices visible to the host runtime.
		
		Physical devices are hardware devices present on the host machine. By default
		all discovered CPU and GPU devices are considered visible.
		
		This API allows querying the physical hardware resources prior to runtime
		initialization. Thus, giving an opportunity to call any additional
		configuration APIs. This is in contrast to `tf.config.list_logical_devices`,
		which triggers runtime initialization in order to list the configured devices.
		
		The following example lists the number of visible GPUs on the host.
		
		>>> physical_devices = tf.config.list_physical_devices('GPU')
		>>> print("Num GPUs:", len(physical_devices))
		Num GPUs: ...
		
		However, the number of GPUs available to the runtime may change during runtime
		initialization due to marking certain devices as not visible or configuring
		multiple logical devices.
		
		Args:
		  device_type: (optional string) Only include devices matching this device
		    type. For example "CPU" or "GPU".
		
		Returns:
		  List of discovered `tf.config.PhysicalDevice` objects
	**/
	static public function list_physical_devices(?device_type:Dynamic):Dynamic;
	/**
		Enables / disables eager execution of `tf.function`s.
		
		Calling `tf.config.run_functions_eagerly(True)` will make all
		invocations of `tf.function` run eagerly instead of running as a traced graph
		function.
		
		This can be useful for debugging.
		
		>>> def my_func(a):
		...  print("Python side effect")
		...  return a + a
		>>> a_fn = tf.function(my_func)
		
		>>> # A side effect the first time the function is traced
		>>> a_fn(tf.constant(1))
		Python side effect
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		
		>>> # No further side effect, as the traced function is called
		>>> a_fn(tf.constant(2))
		<tf.Tensor: shape=(), dtype=int32, numpy=4>
		
		>>> # Now, switch to eager running
		>>> tf.config.run_functions_eagerly(True)
		>>> # Side effect, as the function is called directly
		>>> a_fn(tf.constant(2))
		Python side effect
		<tf.Tensor: shape=(), dtype=int32, numpy=4>
		
		>>> # Turn this back off
		>>> tf.config.run_functions_eagerly(False)
		
		Note: This flag has no effect on functions passed into tf.data transformations
		as arguments. tf.data functions are never executed eagerly and are always
		executed as a compiled Tensorflow Graph.
		
		Args:
		  run_eagerly: Boolean. Whether to run functions eagerly.
	**/
	static public function run_functions_eagerly(run_eagerly:Dynamic):Dynamic;
	/**
		Set the logical device configuration for a `tf.config.PhysicalDevice`.
		
		A visible `tf.config.PhysicalDevice` will by default have a single
		`tf.config.LogicalDevice` associated with it once the runtime is initialized.
		Specifying a list of `tf.config.LogicalDeviceConfiguration` objects allows
		multiple devices to be created on the same `tf.config.PhysicalDevice`.
		
		Logical device configurations can be modified by calling this function as
		long as the runtime is uninitialized. After the runtime is initialized
		calling this function raises a RuntimeError.
		
		The following example splits the CPU into 2 logical devices:
		
		>>> physical_devices = tf.config.list_physical_devices('CPU')
		>>> assert len(physical_devices) == 1, "No CPUs found"
		>>> # Specify 2 virtual CPUs. Note currently memory limit is not supported.
		>>> try:
		...   tf.config.set_logical_device_configuration(
		...     physical_devices[0],
		...     [tf.config.LogicalDeviceConfiguration(),
		...      tf.config.LogicalDeviceConfiguration()])
		...   logical_devices = tf.config.list_logical_devices('CPU')
		...   assert len(logical_devices) == 2
		...
		...   tf.config.set_logical_device_configuration(
		...     physical_devices[0],
		...     [tf.config.LogicalDeviceConfiguration(),
		...      tf.config.LogicalDeviceConfiguration(),
		...      tf.config.LogicalDeviceConfiguration(),
		...      tf.config.LogicalDeviceConfiguration()])
		... except:
		...   # Cannot modify logical devices once initialized.
		...   pass
		
		The following example splits the GPU into 2 logical devices with 100 MB each:
		
		>>> physical_devices = tf.config.list_physical_devices('GPU')
		>>> try:
		...   tf.config.set_logical_device_configuration(
		...     physical_devices[0],
		...     [tf.config.LogicalDeviceConfiguration(memory_limit=100),
		...      tf.config.LogicalDeviceConfiguration(memory_limit=100)])
		...
		...   logical_devices = tf.config.list_logical_devices('GPU')
		...   assert len(logical_devices) == len(physical_devices) + 1
		...
		...   tf.config.set_logical_device_configuration(
		...     physical_devices[0],
		...     [tf.config.LogicalDeviceConfiguration(memory_limit=10),
		...      tf.config.LogicalDeviceConfiguration(memory_limit=10)])
		... except:
		...   # Invalid device or cannot modify logical devices once initialized.
		...   pass
		
		Args:
		  device: The `PhysicalDevice` to configure.
		  logical_devices: (optional) List of `tf.config.LogicalDeviceConfiguration`
		    objects to allocate for the specified `PhysicalDevice`. If None, the
		    default configuration will be used.
		
		Raises:
		  ValueError: If argument validation fails.
		  RuntimeError: Runtime is already initialized.
	**/
	static public function set_logical_device_configuration(device:Dynamic, logical_devices:Dynamic):Dynamic;
	/**
		Set if soft device placement is enabled.
		
		If enabled, an op will be placed on CPU if any of the following are true
		  1. there's no GPU implementation for the OP
		  2. no GPU devices are known or registered
		  3. need to co-locate with reftype input(s) which are from CPU
		
		Args:
		  enabled: Whether to enable soft placement.
	**/
	static public function set_soft_device_placement(enabled:Dynamic):Dynamic;
	/**
		Set the list of visible devices.
		
		Specifies which `PhysicalDevice` objects are visible to the runtime.
		TensorFlow will only allocate memory and place operations on visible
		physical devices, as otherwise no `LogicalDevice` will be created on them.
		By default all discovered devices are marked as visible.
		
		The following example demonstrates disabling the first GPU on the machine.
		
		>>> physical_devices = tf.config.list_physical_devices('GPU')
		>>> try:
		...   # Disable first GPU
		...   tf.config.set_visible_devices(physical_devices[1:], 'GPU')
		...   logical_devices = tf.config.list_logical_devices('GPU')
		...   # Logical device was not created for first GPU
		...   assert len(logical_devices) == len(physical_devices) - 1
		... except:
		...   # Invalid device or cannot modify virtual devices once initialized.
		...   pass
		
		Args:
		  devices: List of `PhysicalDevice`s to make visible
		  device_type: (optional) Only configure devices matching this device type.
		    For example "CPU" or "GPU". Other devices will be left unaltered.
		
		Raises:
		  ValueError: If argument validation fails.
		  RuntimeError: Runtime is already initialized.
	**/
	static public function set_visible_devices(devices:Dynamic, ?device_type:Dynamic):Dynamic;
}