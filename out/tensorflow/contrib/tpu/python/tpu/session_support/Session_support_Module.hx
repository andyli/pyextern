/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.session_support;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.session_support") extern class Session_support_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a heartbeat op or None if heartbeats are not supported by device.
	**/
	static public function _make_heartbeat_op(session:Dynamic, device:Dynamic, request_ph:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return a list of devices for each worker in the system.
	**/
	static public function all_worker_devices(session:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}