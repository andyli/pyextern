/* This file is generated, do not edit! */
package tensorflow.python.tpu.session_support;
@:pythonImport("tensorflow.python.tpu.session_support") extern class Session_support_Module {
	static public var _WATCHDOG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _clone_session(session:Dynamic, ?graph:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return a list of devices for each worker in the system.
	**/
	static public function all_worker_devices(session:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Start global worker watchdog to shutdown workers on coordinator exit.
	**/
	static public function start_worker_watchdog(session:Dynamic, ?devices:Dynamic, ?ping_interval:Dynamic, ?shutdown_timeout:Dynamic):Dynamic;
	/**
		Stop global worker watchdog.
	**/
	static public function stop_worker_watchdog():Dynamic;
}