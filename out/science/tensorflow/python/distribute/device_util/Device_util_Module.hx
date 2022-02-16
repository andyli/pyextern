/* This file is generated, do not edit! */
package tensorflow.python.distribute.device_util;
@:pythonImport("tensorflow.python.distribute.device_util") extern class Device_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Canonicalize device string.
		
		If d has missing components, the rest would be deduced from the `default`
		argument or from '/replica:0/task:0/device:CPU:0'. For example:
		  If d = '/cpu:0', default='/job:worker/task:1', it returns
		    '/job:worker/replica:0/task:1/device:CPU:0'.
		  If d = '/cpu:0', default='/job:worker', it returns
		    '/job:worker/replica:0/task:0/device:CPU:0'.
		  If d = '/gpu:0', default=None, it returns
		    '/replica:0/task:0/device:GPU:0'.
		
		Note: This uses "job:localhost" as the default if executing eagerly.
		
		Args:
		  d: a device string or tf.config.LogicalDevice
		  default: a string for default device if d doesn't have all components.
		
		Returns:
		  a canonicalized device string.
	**/
	static public function canonicalize(d:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Partially canonicalize device string.
		
		This returns device string from `d` without including job and task.
		This is most useful for parameter server strategy where the device strings are
		generated on the chief, but executed on workers.
		
		 For example:
		  If d = '/cpu:0', default='/job:worker/task:1', it returns
		    '/replica:0/device:CPU:0'.
		  If d = '/cpu:0', default='/job:worker', it returns
		    '/replica:0/device:CPU:0'.
		  If d = '/gpu:0', default=None, it returns
		    '/replica:0/device:GPU:0'.
		
		Note: This uses "job:localhost" as the default if executing eagerly.
		
		Args:
		  d: a device string or tf.config.LogicalDevice
		
		Returns:
		  a partially canonicalized device string.
	**/
	static public function canonicalize_without_job_and_task(d:Dynamic):Dynamic;
	/**
		Return a string (not canonicalized) for the current device.
	**/
	static public function current():Dynamic;
	static public var division : Dynamic;
	/**
		Returns the corresponding host device for the given device.
	**/
	static public function get_host_for_device(device:Dynamic):Dynamic;
	/**
		Returns device strings for local GPUs or CPU.
	**/
	static public function local_devices_from_num_gpus(num_gpus:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Canonicalize `d` with current device as default.
	**/
	static public function resolve(d:Dynamic):Dynamic;
}