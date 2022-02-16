/* This file is generated, do not edit! */
package tensorflow.compat.v2.config.experimental;
@:pythonImport("tensorflow.compat.v2.config.experimental") extern class Experimental_Module {
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
		Disables experimental MLIR-Based TensorFlow Compiler Bridge.
	**/
	static public function disable_mlir_bridge():Dynamic;
	/**
		Disables experimental MLIR-Based TensorFlow Compiler Optimizations.
	**/
	static public function disable_mlir_graph_optimization():Dynamic;
	/**
		Enables experimental MLIR-Based TensorFlow Compiler Bridge.
		
		DO NOT USE, DEV AND TESTING ONLY AT THE MOMENT.
		
		NOTE: MLIR-Based TensorFlow Compiler is under active development and has
		missing features, please refrain from using. This API exists for development
		and testing only.
		
		TensorFlow Compiler Bridge (TF Bridge) is responsible for translating parts
		of TensorFlow graph into a form that can be accepted as an input by a backend
		compiler such as XLA.
	**/
	static public function enable_mlir_bridge():Dynamic;
	/**
		Enables experimental MLIR-Based TensorFlow Compiler Optimizations.
		
		DO NOT USE, DEV AND TESTING ONLY AT THE MOMENT.
		
		NOTE: MLIR-Based TensorFlow Compiler is under active development and has
		missing features, please refrain from using. This API exists for development
		and testing only.
		
		TensorFlow Compiler Optimizations are responsible general graph level
		optimizations that in the current stack mostly done by Grappler graph
		optimizers.
	**/
	static public function enable_mlir_graph_optimization():Dynamic;
	/**
		Enable or disable the use of TensorFloat-32 on supported hardware.
		
		[TensorFloat-32](https://blogs.nvidia.com/blog/2020/05/14/tensorfloat-32-precision-format),
		or TF32 for short, is a math mode for NVIDIA Ampere GPUs. TensorFloat-32
		execution causes certain float32 ops, such as matrix multiplications and
		convolutions, to run much faster on Ampere GPUs but with reduced precision.
		This reduced precision should not impact convergence of deep learning models
		in practice.
		
		TensorFloat-32 is enabled by default. TensorFloat-32 is only supported on
		Ampere GPUs, so all other hardware will use the full float32 precision
		regardless of whether TensorFloat-32 is enabled or not. If you want to use the
		full float32 precision on Ampere, you can disable TensorFloat-32 execution
		with this function. For example:
		
		```python
		x = tf.fill((2, 2), 1.0001)
		y = tf.fill((2, 2), 1.)
		# TensorFloat-32 is enabled, so matmul is run with reduced precision
		print(tf.linalg.matmul(x, y))  # [[2., 2.], [2., 2.]]
		tf.config.experimental.enable_tensor_float_32_execution(False)
		# Matmul is run with full precision
		print(tf.linalg.matmul(x, y))  # [[2.0002, 2.0002], [2.0002, 2.0002]]
		```
		
		To check whether TensorFloat-32 execution is currently enabled, use
		`tf.config.experimental.tensor_float_32_execution_enabled`.
		
		If TensorFloat-32 is enabled, float32 inputs of supported ops, such as
		`tf.linalg.matmul`, will be rounded from 23 bits of precision to 10 bits of
		precision in most cases. This allows the ops to execute much faster by
		utilizing the GPU's tensor cores. TensorFloat-32 has the same dynamic range as
		float32, meaning it is no more likely to underflow or overflow than float32.
		Ops still use float32 accumulation when TensorFloat-32 is enabled. Enabling or
		disabling TensorFloat-32 only affects Ampere GPUs and subsequent GPUs that
		support TensorFloat-32.
		
		Note TensorFloat-32 is not always used in supported ops, as only inputs of
		certain shapes are supported. Support for more input shapes and more ops may
		be added in the future. As a result, precision of float32 ops may decrease in
		minor versions of TensorFlow.
		
		TensorFloat-32 is also used for some complex64 ops. Currently, TensorFloat-32
		is used in fewer cases for complex64 as it is for float32.
		
		Args:
		  enabled: Bool indicating whether to enable TensorFloat-32 execution.
	**/
	static public function enable_tensor_float_32_execution(enabled:Dynamic):Dynamic;
	/**
		Returns details about a physical devices.
		
		This API takes in a `tf.config.PhysicalDevice` returned by
		`tf.config.list_physical_devices`. It returns a dict with string keys
		containing various details about the device. Each key is only supported by a
		subset of devices, so you should not assume the returned dict will have any
		particular key.
		
		>>> gpu_devices = tf.config.list_physical_devices('GPU')
		>>> if gpu_devices:
		...   details = tf.config.experimental.get_device_details(gpu_devices[0])
		...   details.get('device_name', 'Unknown GPU')
		
		Currently, details are only returned for GPUs. This function returns an
		empty dict if passed a non-GPU device.
		
		The returned dict may have the following keys:
		* `'device_name'`: A human-readable name of the device as a string, e.g.
		  "Titan V". Unlike `tf.config.PhysicalDevice.name`, this will be the same for
		  multiple devices if each device is the same model. Currently only available
		  for GPUs.
		* `'compute_capability'`: The
		  [compute capability](https://developer.nvidia.com/cuda-gpus) of the device
		  as a tuple of two ints, in the form `(major_version, minor_version)`. Only
		  available for NVIDIA GPUs
		
		Note: This is similar to `tf.sysconfig.get_build_info` in that both functions
		can return information relating to GPUs. However, this function returns
		run-time information about a specific device (such as a GPU's compute
		capability), while `tf.sysconfig.get_build_info` returns compile-time
		information about how TensorFlow was built (such as what version of CUDA
		TensorFlow was built for).
		
		Args:
		  device: A `tf.config.PhysicalDevice` returned by
		    `tf.config.list_physical_devices` or `tf.config.get_visible_devices`.
		
		Returns:
		  A dict with string keys.
	**/
	static public function get_device_details(device:Dynamic):Dynamic;
	/**
		Gets the current device policy.
		
		The device policy controls how operations requiring inputs on a specific
		device (e.g., on GPU:0) handle inputs on a different device (e.g. GPU:1).
		
		This function only gets the device policy for the current thread. Any
		subsequently started thread will again use the default policy.
		
		Returns:
		  Current thread device policy
	**/
	static public function get_device_policy():Dynamic;
	/**
		Get if memory growth is enabled for a `PhysicalDevice`.
		
		If memory growth is enabled for a `PhysicalDevice`, the runtime initialization
		will not allocate all memory on the device.
		
		For example:
		
		>>> physical_devices = tf.config.list_physical_devices('GPU')
		>>> try:
		...   tf.config.experimental.set_memory_growth(physical_devices[0], True)
		...   assert tf.config.experimental.get_memory_growth(physical_devices[0])
		... except:
		...   # Invalid device or cannot modify virtual devices once initialized.
		...   pass
		
		Args:
		  device: `PhysicalDevice` to query
		
		Returns:
		  A boolean indicating the memory growth setting for the `PhysicalDevice`.
		
		Raises:
		  ValueError: Invalid `PhysicalDevice` specified.
	**/
	static public function get_memory_growth(device:Dynamic):Dynamic;
	/**
		Get memory info for the chosen device, as a dict.
		
		This function returns a dict containing information about the device's memory
		usage. For example:
		
		>>> if tf.config.list_physical_devices('GPU'):
		...   # Returns a dict in the form {'current': <current mem usage>,
		...   #                             'peak': <peak mem usage>}
		...   tf.config.experimental.get_memory_info('GPU:0')
		
		Currently returns the following keys:
		  - `'current'`: The current memory used by the device, in bytes.
		  - `'peak'`: The peak memory used by the device across the run of the
		      program, in bytes. Can be reset with
		      `tf.config.experimental.reset_memory_stats`.
		
		More keys may be added in the future, including device-specific keys.
		
		Currently only supports GPU and TPU. If called on a CPU device, an exception
		will be raised.
		
		For GPUs, TensorFlow will allocate all the memory by default, unless changed
		with `tf.config.experimental.set_memory_growth`. The dict specifies only the
		current and peak memory that TensorFlow is actually using, not the memory that
		TensorFlow has allocated on the GPU.
		
		Args:
		  device: Device string to get the memory information for, e.g. `"GPU:0"`,
		  `"TPU:0"`. See https://www.tensorflow.org/api_docs/python/tf/device for
		    specifying device strings.
		
		Returns:
		  A dict with keys `'current'` and `'peak'`, specifying the current and peak
		  memory usage respectively.
		
		Raises:
		  ValueError: No device found with the device name, like '"nonexistent"'.
		  ValueError: Invalid device name, like '"GPU"', '"CPU:GPU"', '"CPU:"'.
		  ValueError: Multiple devices matched with the device name.
		  ValueError: Memory statistics not tracked, like '"CPU:0"'.
	**/
	static public function get_memory_info(device:Dynamic):Dynamic;
	/**
		Get the current memory usage, in bytes, for the chosen device. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.config.experimental.get_memory_info(device)['current'] instead.
		
		This function is deprecated in favor of
		`tf.config.experimental.get_memory_info`. Calling this function is equivalent
		to calling `tf.config.experimental.get_memory_info()['current']`.
		
		See https://www.tensorflow.org/api_docs/python/tf/device for specifying device
		strings.
		
		For example:
		
		>>> gpu_devices = tf.config.list_physical_devices('GPU')
		>>> if gpu_devices:
		...   tf.config.experimental.get_memory_usage('GPU:0')
		
		Does not work for CPU.
		
		For GPUs, TensorFlow will allocate all the memory by default, unless changed
		with `tf.config.experimental.set_memory_growth`. This function only returns
		the memory that TensorFlow is actually using, not the memory that TensorFlow
		has allocated on the GPU.
		
		Args:
		  device: Device string to get the bytes in use for, e.g. `"GPU:0"`
		
		Returns:
		  Total memory usage in bytes.
		
		Raises:
		  ValueError: Non-existent or CPU device specified.
	**/
	static public function get_memory_usage(device:Dynamic):Dynamic;
	/**
		Gets whether operations are executed synchronously or asynchronously.
		
		TensorFlow can execute operations synchronously or asynchronously. If
		asynchronous execution is enabled, operations may return "non-ready" handles.
		
		Returns:
		  Current thread execution mode
	**/
	static public function get_synchronous_execution():Dynamic;
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
	static public function get_virtual_device_configuration(device:Dynamic):Dynamic;
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
		Resets the tracked memory stats for the chosen device.
		
		This function sets the tracked peak memory for a device to the device's
		current memory usage. This allows you to measure the peak memory usage for a
		specific part of your program. For example:
		
		>>> if tf.config.list_physical_devices('GPU'):
		...   # Sets the peak memory to the current memory.
		...   tf.config.experimental.reset_memory_stats('GPU:0')
		...   # Creates the first peak memory usage.
		...   x1 = tf.ones(1000 * 1000, dtype=tf.float64)
		...   del x1 # Frees the memory referenced by `x1`.
		...   peak1 = tf.config.experimental.get_memory_info('GPU:0')['peak']
		...   # Sets the peak memory to the current memory again.
		...   tf.config.experimental.reset_memory_stats('GPU:0')
		...   # Creates the second peak memory usage.
		...   x2 = tf.ones(1000 * 1000, dtype=tf.float32)
		...   del x2
		...   peak2 = tf.config.experimental.get_memory_info('GPU:0')['peak']
		...   assert peak2 < peak1  # tf.float32 consumes less memory than tf.float64.
		
		Currently only supports GPU and TPU. If called on a CPU device, an exception
		will be raised.
		
		Args:
		  device: Device string to reset the memory stats, e.g. `"GPU:0"`, `"TPU:0"`.
		    See https://www.tensorflow.org/api_docs/python/tf/device for specifying
		    device strings.
		
		Raises:
		  ValueError: No device found with the device name, like '"nonexistent"'.
		  ValueError: Invalid device name, like '"GPU"', '"CPU:GPU"', '"CPU:"'.
		  ValueError: Multiple devices matched with the device name.
		  ValueError: Memory statistics not tracked or clearing memory statistics not
		    supported, like '"CPU:0"'.
	**/
	static public function reset_memory_stats(device:Dynamic):Dynamic;
	/**
		Sets the current thread device policy.
		
		The device policy controls how operations requiring inputs on a specific
		device (e.g., on GPU:0) handle inputs on a different device (e.g. GPU:1).
		
		When using the default, an appropriate policy will be picked automatically.
		The default policy may change over time.
		
		This function only sets the device policy for the current thread. Any
		subsequently started thread will again use the default policy.
		
		Args:
		  device_policy: A device policy.
		    Valid values:
		    - None: Switch to a system default.
		    - 'warn': Copies the tensors which are not on the right device and logs a
		      warning.
		    - 'explicit': Raises an error if the placement is not as required.
		    - 'silent': Silently copies the tensors. Note that this may hide
		      performance problems as there is no notification provided when
		      operations are blocked on the tensor being copied between devices.
		    - 'silent_for_int32': silently copies `int32` tensors, raising errors on
		      the other ones.
		
		Raises:
		    ValueError: If an invalid `device_policy` is passed.
	**/
	static public function set_device_policy(device_policy:Dynamic):Dynamic;
	/**
		Set if memory growth should be enabled for a `PhysicalDevice`.
		
		If memory growth is enabled for a `PhysicalDevice`, the runtime initialization
		will not allocate all memory on the device. Memory growth cannot be configured
		on a `PhysicalDevice` with virtual devices configured.
		
		For example:
		
		>>> physical_devices = tf.config.list_physical_devices('GPU')
		>>> try:
		...   tf.config.experimental.set_memory_growth(physical_devices[0], True)
		... except:
		...   # Invalid device or cannot modify virtual devices once initialized.
		...   pass
		
		Args:
		  device: `PhysicalDevice` to configure
		  enable: (Boolean) Whether to enable or disable memory growth
		
		Raises:
		  ValueError: Invalid `PhysicalDevice` specified.
		  RuntimeError: Runtime is already initialized.
	**/
	static public function set_memory_growth(device:Dynamic, enable:Dynamic):Dynamic;
	/**
		Specifies whether operations are executed synchronously or asynchronously.
		
		TensorFlow can execute operations synchronously or asynchronously. If
		asynchronous execution is enabled, operations may return "non-ready" handles.
		
		When `enable` is set to None, an appropriate value will be picked
		automatically. The value picked may change between TensorFlow releases.
		
		Args:
		  enable: Whether operations should be dispatched synchronously.
		    Valid values:
		    - None: sets the system default.
		    - True: executes each operation synchronously.
		    - False: executes each operation asynchronously.
	**/
	static public function set_synchronous_execution(enable:Dynamic):Dynamic;
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
	static public function set_virtual_device_configuration(device:Dynamic, logical_devices:Dynamic):Dynamic;
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
	/**
		Returns whether TensorFloat-32 is enabled.
		
		By default, TensorFloat-32 is enabled, but this can be changed with
		`tf.config.experimental.enable_tensor_float_32_execution`.
		
		Returns:
		  True if TensorFloat-32 is enabled (the default) and False otherwise
	**/
	static public function tensor_float_32_execution_enabled():Dynamic;
}