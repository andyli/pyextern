/* This file is generated, do not edit! */
package tensorflow.python.framework.device;
@:pythonImport("tensorflow.python.framework.device") extern class Device_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _cache_lock : Dynamic;
	static public var _cached_device_functions : Dynamic;
	static public var _cached_device_specs : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns a canonical name for the given `DeviceSpec` or device name.
	**/
	static public function canonical_name(device:Dynamic):Dynamic;
	/**
		Check that a device spec is valid.
		
		Args:
		  spec: a string.
		
		Raises:
		  An exception if the spec is invalid.
	**/
	static public function check_valid(spec:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a device function that merges devices specifications.
		
		This can be used to merge partial specifications of devices. The
		innermost setting for a device field takes precedence. For example:
		
		  with tf.device(merge_device("/device:GPU:0"))
		    # Nodes created here have device "/device:GPU:0"
		    with tf.device(merge_device("/job:worker")):
		      # Nodes created here have device "/job:worker/device:GPU:0"
		      with tf.device(merge_device("/device:CPU:0")):
		        # Nodes created here have device "/job:worker/device:CPU:0"
		        with tf.device(merge_device("/job:ps")):
		          # Nodes created here have device "/job:ps/device:CPU:0"
		
		Args:
		  spec: A `DeviceSpec` or a device spec string (partially) describing the
		    device that should be used for all nodes created in the scope of
		    the returned device function's with block.
		
		Returns:
		  A device function with the above-described behavior.
		
		Raises:
		  ValueError: if the spec was not valid.
	**/
	static public function merge_device(spec:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}