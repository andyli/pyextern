/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_system_metadata;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_system_metadata") extern class Tpu_system_metadata_Module {
	static public var _INITIAL_TPU_SYSTEM_TIMEOUT_IN_MS : Dynamic;
	static public var _PINGING_MASTER_TIMEOUT_IN_MS : Dynamic;
	static public var _RETRY_TIMES : Dynamic;
	static public var _TPU_DEVICE_REG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Obtains TPU fabric topology.
	**/
	static public function _obtain_topology(master_address:Dynamic, cluster_def:Dynamic):Dynamic;
	/**
		Automatically detects the TPU system metadata in the system.
	**/
	static public function _query_tpu_system_metadata(master_address:Dynamic, ?cluster_def:Dynamic, ?query_topology:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a session given a timeout and a cluster configuration.
	**/
	static public function get_session_config_with_timeout(timeout_in_secs:Dynamic, cluster_def:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}