/* This file is generated, do not edit! */
package tensorflow.distribute.experimental.rpc.kernels.gen_rpc_ops;
@:pythonImport("tensorflow.distribute.experimental.rpc.kernels.gen_rpc_ops") extern class Gen_rpc_ops_Module {
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type `resource`.
		  deleter: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function DeleteRpcFutureResource(handle:Dynamic, deleter:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  client: A `Tensor` of type `resource`.
		  method_name: A `Tensor` of type `string`.
		  args: A list of `Tensor` objects.
		  timeout_in_ms: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (future, deleter).
		
		  future: A `Tensor` of type `resource`.
		  deleter: A `Tensor` of type `variant`.
	**/
	static public function RpcCall(client:Dynamic, method_name:Dynamic, args:Dynamic, timeout_in_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  status_or: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (error_code, error).
		
		  error_code: A `Tensor` of type `int64`.
		  error: A `Tensor` of type `string`.
	**/
	static public function RpcCheckStatus(status_or:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  server_address: A `Tensor` of type `string`.
		  timeout_in_ms: A `Tensor` of type `int64`.
		  shared_name: An optional `string`. Defaults to `""`.
		  list_registered_methods: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (client, method_specs).
		
		  client: A `Tensor` of type `resource`.
		  method_specs: A `Tensor` of type `string`.
	**/
	static public function RpcClient(server_address:Dynamic, timeout_in_ms:Dynamic, ?shared_name:Dynamic, ?list_registered_methods:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  status_or: A `Tensor` of type `resource`.
		  Tout: A list of `tf.DTypes`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function RpcGetValue(status_or:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  server_address: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function RpcServer(server_address:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  server: A `Tensor` of type `resource`.
		  method_name: A `Tensor` of type `string`.
		  captured_inputs: A list of `Tensor` objects.
		  f: A function decorated with @Defun.
		  output_specs: A `string`.
		  input_specs: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function RpcServerRegister(server:Dynamic, method_name:Dynamic, captured_inputs:Dynamic, f:Dynamic, output_specs:Dynamic, ?input_specs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  server: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function RpcServerStart(server:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_delete_rpc_future_resource(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_rpc_call(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_rpc_check_status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_rpc_client(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_rpc_get_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_rpc_server(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_rpc_server_register(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_rpc_server_start(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type `resource`.
		  deleter: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function delete_rpc_future_resource(handle:Dynamic, deleter:Dynamic, ?name:Dynamic):Dynamic;
	static public function delete_rpc_future_resource_eager_fallback(handle:Dynamic, deleter:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  client: A `Tensor` of type `resource`.
		  method_name: A `Tensor` of type `string`.
		  args: A list of `Tensor` objects.
		  timeout_in_ms: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (future, deleter).
		
		  future: A `Tensor` of type `resource`.
		  deleter: A `Tensor` of type `variant`.
	**/
	static public function rpc_call(client:Dynamic, method_name:Dynamic, args:Dynamic, timeout_in_ms:Dynamic, ?name:Dynamic):Dynamic;
	static public function rpc_call_eager_fallback(client:Dynamic, method_name:Dynamic, args:Dynamic, timeout_in_ms:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  status_or: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (error_code, error).
		
		  error_code: A `Tensor` of type `int64`.
		  error: A `Tensor` of type `string`.
	**/
	static public function rpc_check_status(status_or:Dynamic, ?name:Dynamic):Dynamic;
	static public function rpc_check_status_eager_fallback(status_or:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  server_address: A `Tensor` of type `string`.
		  timeout_in_ms: A `Tensor` of type `int64`.
		  shared_name: An optional `string`. Defaults to `""`.
		  list_registered_methods: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (client, method_specs).
		
		  client: A `Tensor` of type `resource`.
		  method_specs: A `Tensor` of type `string`.
	**/
	static public function rpc_client(server_address:Dynamic, timeout_in_ms:Dynamic, ?shared_name:Dynamic, ?list_registered_methods:Dynamic, ?name:Dynamic):Dynamic;
	static public function rpc_client_eager_fallback(server_address:Dynamic, timeout_in_ms:Dynamic, shared_name:Dynamic, list_registered_methods:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  status_or: A `Tensor` of type `resource`.
		  Tout: A list of `tf.DTypes`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function rpc_get_value(status_or:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	static public function rpc_get_value_eager_fallback(status_or:Dynamic, Tout:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  server_address: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function rpc_server(server_address:Dynamic, ?name:Dynamic):Dynamic;
	static public function rpc_server_eager_fallback(server_address:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  server: A `Tensor` of type `resource`.
		  method_name: A `Tensor` of type `string`.
		  captured_inputs: A list of `Tensor` objects.
		  f: A function decorated with @Defun.
		  output_specs: A `string`.
		  input_specs: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function rpc_server_register(server:Dynamic, method_name:Dynamic, captured_inputs:Dynamic, f:Dynamic, output_specs:Dynamic, ?input_specs:Dynamic, ?name:Dynamic):Dynamic;
	static public function rpc_server_register_eager_fallback(server:Dynamic, method_name:Dynamic, captured_inputs:Dynamic, f:Dynamic, output_specs:Dynamic, input_specs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  server: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function rpc_server_start(server:Dynamic, ?name:Dynamic):Dynamic;
	static public function rpc_server_start_eager_fallback(server:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}