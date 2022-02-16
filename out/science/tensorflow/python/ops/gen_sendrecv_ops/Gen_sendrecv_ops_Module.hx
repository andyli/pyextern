/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_sendrecv_ops;
@:pythonImport("tensorflow.python.ops.gen_sendrecv_ops") extern class Gen_sendrecv_ops_Module {
	/**
		Receives the named tensor from send_device on recv_device.
		
		Args:
		  tensor_type: A `tf.DType`.
		  tensor_name: A `string`. The name of the tensor to receive.
		  send_device: A `string`. The name of the device sending the tensor.
		  send_device_incarnation: An `int`. The current incarnation of send_device.
		  recv_device: A `string`. The name of the device receiving the tensor.
		  client_terminated: An optional `bool`. Defaults to `False`.
		    If set to true, this indicates that the node was added
		    to the graph as a result of a client-side feed or fetch of Tensor data,
		    in which case the corresponding send or recv is expected to be managed
		    locally by the caller.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `tensor_type`.
	**/
	static public function Recv(tensor_type:Dynamic, tensor_name:Dynamic, send_device:Dynamic, send_device_incarnation:Dynamic, recv_device:Dynamic, ?client_terminated:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sends the named tensor from send_device to recv_device.
		
		Args:
		  tensor: A `Tensor`. The tensor to send.
		  tensor_name: A `string`. The name of the tensor to send.
		  send_device: A `string`. The name of the device sending the tensor.
		  send_device_incarnation: An `int`. The current incarnation of send_device.
		  recv_device: A `string`. The name of the device receiving the tensor.
		  client_terminated: An optional `bool`. Defaults to `False`.
		    If set to true, this indicates that the node was added
		    to the graph as a result of a client-side feed or fetch of Tensor data,
		    in which case the corresponding send or recv is expected to be managed
		    locally by the caller.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function Send(tensor:Dynamic, tensor_name:Dynamic, send_device:Dynamic, send_device_incarnation:Dynamic, recv_device:Dynamic, ?client_terminated:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		Receives the named tensor from send_device on recv_device.
		
		Args:
		  tensor_type: A `tf.DType`.
		  tensor_name: A `string`. The name of the tensor to receive.
		  send_device: A `string`. The name of the device sending the tensor.
		  send_device_incarnation: An `int`. The current incarnation of send_device.
		  recv_device: A `string`. The name of the device receiving the tensor.
		  client_terminated: An optional `bool`. Defaults to `False`.
		    If set to true, this indicates that the node was added
		    to the graph as a result of a client-side feed or fetch of Tensor data,
		    in which case the corresponding send or recv is expected to be managed
		    locally by the caller.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `tensor_type`.
	**/
	static public function recv(tensor_type:Dynamic, tensor_name:Dynamic, send_device:Dynamic, send_device_incarnation:Dynamic, recv_device:Dynamic, ?client_terminated:Dynamic, ?name:Dynamic):Dynamic;
	static public function recv_eager_fallback(tensor_type:Dynamic, tensor_name:Dynamic, send_device:Dynamic, send_device_incarnation:Dynamic, recv_device:Dynamic, client_terminated:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Sends the named tensor from send_device to recv_device.
		
		Args:
		  tensor: A `Tensor`. The tensor to send.
		  tensor_name: A `string`. The name of the tensor to send.
		  send_device: A `string`. The name of the device sending the tensor.
		  send_device_incarnation: An `int`. The current incarnation of send_device.
		  recv_device: A `string`. The name of the device receiving the tensor.
		  client_terminated: An optional `bool`. Defaults to `False`.
		    If set to true, this indicates that the node was added
		    to the graph as a result of a client-side feed or fetch of Tensor data,
		    in which case the corresponding send or recv is expected to be managed
		    locally by the caller.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function send(tensor:Dynamic, tensor_name:Dynamic, send_device:Dynamic, send_device_incarnation:Dynamic, recv_device:Dynamic, ?client_terminated:Dynamic, ?name:Dynamic):Dynamic;
	static public function send_eager_fallback(tensor:Dynamic, tensor_name:Dynamic, send_device:Dynamic, send_device_incarnation:Dynamic, recv_device:Dynamic, client_terminated:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}