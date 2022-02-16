/* This file is generated, do not edit! */
package tensorflow.python.distribute.coordinator.cluster_coordinator;
@:pythonImport("tensorflow.python.distribute.coordinator.cluster_coordinator") extern class Cluster_coordinator_Module {
	static public var _CLOSURE_QUEUE_MAX_SIZE : Dynamic;
	static public var _JOB_WORKER_STRING_IDENTIFIER : Dynamic;
	static public var _RPC_ERROR_FROM_PS : Dynamic;
	static public var _WORKER_MAXIMUM_RECOVERY_SEC : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Raises if any element of `structured` is a RemoteValue.
	**/
	static public function _disallow_remote_value_as_input(structured:Dynamic):Dynamic;
	/**
		Return a set of potentially failing ps instances from error message.
	**/
	static public function _extract_failed_ps_instances(err_msg:Dynamic):Dynamic;
	/**
		Whether the error is considered a parameter server failure.
	**/
	static public function _is_ps_failure(error:Dynamic):Dynamic;
	/**
		Whether the error is considered a worker failure.
	**/
	static public function _is_worker_failure(error:Dynamic):Dynamic;
	static public function _maybe_as_type_spec(val:Dynamic):Dynamic;
	/**
		Gets the value of `val` if it is a `RemoteValue`.
	**/
	static public function _maybe_get_remote_value(val:Dynamic):Dynamic;
	/**
		Attempts to return errors from `RemoteValue`s. Rebuilds them if needed.
	**/
	static public function _maybe_rebuild_remote_values(worker:Dynamic, structure:Dynamic):Dynamic;
	/**
		Selects the worker slice of each of the items in `structured`.
	**/
	static public function _select_worker_slice(worker_id:Dynamic, structured:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}