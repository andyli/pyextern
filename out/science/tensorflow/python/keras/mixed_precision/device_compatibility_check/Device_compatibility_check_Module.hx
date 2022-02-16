/* This file is generated, do not edit! */
package tensorflow.python.keras.mixed_precision.device_compatibility_check;
@:pythonImport("tensorflow.python.keras.mixed_precision.device_compatibility_check") extern class Device_compatibility_check_Module {
	static public var _COMPAT_CHECK_OK_PREFIX : Dynamic;
	static public var _COMPAT_CHECK_PREFIX : Dynamic;
	static public var _COMPAT_CHECK_WARNING_PREFIX : Dynamic;
	static public var _COMPAT_CHECK_WARNING_SUFFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Groups together consecutive identical strings.
		
		For example, given:
		    ['GPU 1', 'GPU 2', 'GPU 2', 'GPU 3', 'GPU 3', 'GPU 3']
		This function returns:
		    ['GPU 1', 'GPU 2 (x2)', 'GPU 3 (x3)']
		
		Args:
		  device_strs: A list of strings, each representing a device.
		
		Returns:
		  A copy of the input, but identical consecutive strings are merged into a
		  single string.
	**/
	static public function _dedup_strings(device_strs:Dynamic):Dynamic;
	/**
		Logs a compatibility check if the devices support the policy.
		
		Currently only logs for the policy mixed_float16.
		
		Args:
		  policy_name: The name of the dtype policy.
		  gpu_details_list: A list of dicts, one dict per GPU. Each dict
		    is the device details for a GPU, as returned by
		    `tf.config.experimental.get_device_details()`.
	**/
	static public function _log_device_compatibility_check(policy_name:Dynamic, gpu_details_list:Dynamic):Dynamic;
	static public var _logged_compatibility_check : Dynamic;
	/**
		Logs a compatibility check if the devices support the policy.
		
		Currently only logs for the policy mixed_float16. A log is shown only the
		first time this function is called.
		
		Args:
		  policy_name: The name of the dtype policy.
	**/
	static public function log_device_compatibility_check(policy_name:Dynamic):Dynamic;
}