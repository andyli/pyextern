/* This file is generated, do not edit! */
package tensorflow.python.client.device_lib;
@:pythonImport("tensorflow.python.client.device_lib") extern class Device_lib_Module {
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
		List the available devices available in the local process.
		
		Args:
		  session_config: a session config proto or None to use the default config.
		
		Returns:
		  A list of `DeviceAttribute` protocol buffers.
	**/
	static public function list_local_devices(?session_config:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}