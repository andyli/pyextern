/* This file is generated, do not edit! */
package torch.distributed.rpc.backend_registry;
@:pythonImport("torch.distributed.rpc.backend_registry") extern class Backend_registry_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _backend_type_doc : Dynamic;
	static public function _backend_type_repr(self:Dynamic):Dynamic;
	static public function _init_process_group(store:Dynamic, rank:Dynamic, world_size:Dynamic):Dynamic;
	static public function _tensorpipe_construct_rpc_backend_options_handler(rpc_timeout:Dynamic, init_method:Dynamic, ?num_worker_threads:Dynamic, ?_transports:Dynamic, ?_channels:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _tensorpipe_exchange_and_check_all_device_maps(my_name:Dynamic, my_device_count:Dynamic, my_device_maps:Dynamic, my_devices:Dynamic, group:Dynamic):Dynamic;
	static public function _tensorpipe_init_backend_handler(store:Dynamic, name:Dynamic, rank:Dynamic, world_size:Dynamic, rpc_backend_options:Dynamic):Dynamic;
	static public function _tensorpipe_validate_devices(devices:Dynamic, device_count:Dynamic):Dynamic;
	/**
		Checks if backend_name is registered as an RPC backend.
		
		Args:
		    backend_name (str): string to identify the RPC backend.
		Returns:
		    True if the backend has been registered with ``register_backend``, else
		    False.
	**/
	static public function backend_registered(backend_name:Dynamic):Dynamic;
	static public function construct_rpc_backend_options(backend:Dynamic, ?rpc_timeout:Dynamic, ?init_method:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function init_backend(backend:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Registers a new RPC backend.
		
		Args:
		    backend_name (str): backend string to identify the handler.
		    construct_rpc_backend_options_handler (function):
		        Handler that is invoked when
		        rpc_backend.construct_rpc_backend_options(**dict) is called.
		    init_backend_handler (function): Handler that is invoked when the
		        `_init_rpc_backend()` function is called with a backend.
		         This returns the agent.
	**/
	static public function register_backend(backend_name:Dynamic, construct_rpc_backend_options_handler:Dynamic, init_backend_handler:Dynamic):Dynamic;
}