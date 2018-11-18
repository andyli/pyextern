/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.prefetching_ops_v2;
@:pythonImport("tensorflow.contrib.distribute.python.prefetching_ops_v2") extern class Prefetching_ops_v2_Module {
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
		A transformation that prefetches dataset values to the given `devices`.
		
		NOTE: Although the transformation creates a `tf.data.Dataset`, the
		transformation must be the final `Dataset` in the input pipeline.
		
		Args:
		  devices: A nested structure of devices on which to prefetch the data. It can
		    be a single device name, or a tuple or list of device names.
		  buffer_size: (Optional.) The number of elements to buffer on each device.
		    Defaults to an automatically chosen value.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function prefetch_to_devices(devices:Dynamic, ?buffer_size:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}