/* This file is generated, do not edit! */
package tensorflow.contrib.rpc.python.ops.gen_rpc_op;
@:pythonImport("tensorflow.contrib.rpc.python.ops.gen_rpc_op") extern class Gen_rpc_op_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _try_rpc_outputs : Dynamic;
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
		  address: A `Tensor` of type `string`.
		  method: A `Tensor` of type `string`.
		  request: A `Tensor` of type `string`.
		  protocol: An optional `string`. Defaults to `""`.
		  fail_fast: An optional `bool`. Defaults to `True`.
		  timeout_in_ms: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function rpc(address:Dynamic, method:Dynamic, request:Dynamic, ?protocol:Dynamic, ?fail_fast:Dynamic, ?timeout_in_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function rpc
	**/
	static public function rpc_eager_fallback(address:Dynamic, method:Dynamic, request:Dynamic, ?protocol:Dynamic, ?fail_fast:Dynamic, ?timeout_in_ms:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  address: A `Tensor` of type `string`.
		  method: A `Tensor` of type `string`.
		  request: A `Tensor` of type `string`.
		  protocol: An optional `string`. Defaults to `""`.
		  fail_fast: An optional `bool`. Defaults to `True`.
		  timeout_in_ms: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (response, status_code, status_message).
		
		  response: A `Tensor` of type `string`.
		  status_code: A `Tensor` of type `int32`.
		  status_message: A `Tensor` of type `string`.
	**/
	static public function try_rpc(address:Dynamic, method:Dynamic, request:Dynamic, ?protocol:Dynamic, ?fail_fast:Dynamic, ?timeout_in_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function try_rpc
	**/
	static public function try_rpc_eager_fallback(address:Dynamic, method:Dynamic, request:Dynamic, ?protocol:Dynamic, ?fail_fast:Dynamic, ?timeout_in_ms:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}