/* This file is generated, do not edit! */
package tensorflow.contrib.rpc.python.ops.rpc_op;
@:pythonImport("tensorflow.contrib.rpc.python.ops.rpc_op") extern class Rpc_op_Module {
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
	static public var print_function : Dynamic;
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
}