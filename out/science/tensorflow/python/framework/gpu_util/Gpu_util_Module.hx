/* This file is generated, do not edit! */
package tensorflow.python.framework.gpu_util;
@:pythonImport("tensorflow.python.framework.gpu_util") extern class Gpu_util_Module {
	static public var _PHYSICAL_DEVICE_DESCRIPTION_REGEX : Dynamic;
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
		Returns the GpuInfo given a DeviceAttributes proto.
		
		Args:
		  device_attrs: A DeviceAttributes proto.
		
		Returns
		  A gpu_info tuple. Both fields are None if `device_attrs` does not have a
		  valid physical_device_desc field.
	**/
	static public function compute_capability_from_device_desc(device_attrs:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}