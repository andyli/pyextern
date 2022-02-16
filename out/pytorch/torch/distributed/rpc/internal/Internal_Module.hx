/* This file is generated, do not edit! */
package torch.distributed.rpc.internal;
@:pythonImport("torch.distributed.rpc.internal") extern class Internal_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Builds the key that RPC calls are profiled with using the autograd profiler.
		This will be the name of the corresponding Event recorded in the profiler.
		
		Args:
		    exec_type (RPCExecMode): Type of RPC/RRef call
		    func_name (str): Name of function being profiled.
		    current_worker_name (str): Name of current worker.
		    dst_worker_name (str): Name of the destination worker.
		
		Returns:
		    String representing profiling key
	**/
	static public function _build_rpc_profiling_key(exec_type:Dynamic, func_name:Dynamic, current_worker_name:Dynamic, dst_worker_name:Dynamic):Dynamic;
	/**
		_get_current_rpc_agent() -> torch._C._distributed_rpc.RpcAgent
	**/
	static public function _get_current_rpc_agent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _handle_exception(result:Dynamic):Dynamic;
	static public var _internal_rpc_pickler : Dynamic;
	/**
		This function is exclusively called from C++.
		See ``torch/csrc/distributed/rpc/python_rpc_handler.cpp``.
		
		Runs a Python UDF and returns its return value.
		Wraps any exception in ``RemoteException`` if the function raises.
	**/
	static public function _run_function(python_udf:Dynamic):Dynamic;
	/**
		This function should be called from RPC/RRef functions to create a
		RecordFunction object for profiling. This function also runs the before
		callbacks that start the profiling, though the user is responsible for
		running the appropriate callbacks when the function to be profiled finishes.
		
		Args:
		    exec_type (RPCExecMode): Type of RPC/RRef call
		    func_name (str): Name of function being profiled.
		    current_worker_name (str): Name of current worker.
		    dest_worker_name (str): Name of the destination worker.
		
		Returns:
		    An instance of `torch.autograd._RecordFunction`.
	**/
	static public function _start_record_function(exec_type:Dynamic, func_name:Dynamic, current_worker_name:Dynamic, dest_worker_name:Dynamic):Dynamic;
	static public var _thread_local_tensor_tables : Dynamic;
	static public function deserialize(binary_data:Dynamic, tensor_table:Dynamic):Dynamic;
	static public function serialize(obj:Dynamic):Dynamic;
}