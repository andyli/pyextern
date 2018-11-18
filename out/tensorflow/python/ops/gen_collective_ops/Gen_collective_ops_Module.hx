/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_collective_ops;
@:pythonImport("tensorflow.python.ops.gen_collective_ops") extern class Gen_collective_ops_Module {
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
	/**
		Receives a tensor value broadcast from another device.
		
		Args:
		  T: A `tf.DType` from: `tf.float32, tf.half, tf.float64, tf.int32, tf.int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `T`.
	**/
	static public function collective_bcast_recv(T:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function collective_bcast_recv
	**/
	static public function collective_bcast_recv_eager_fallback(T:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Broadcasts a tensor value to one or more other devices.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function collective_bcast_send(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function collective_bcast_send
	**/
	static public function collective_bcast_send_eager_fallback(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Mutually reduces multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  merge_op: A `string` from: `"Min", "Max", "Mul", "Add"`.
		  final_op: A `string` from: `"Id", "Div"`.
		  subdiv_offsets: A list of `ints`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function collective_reduce(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, merge_op:Dynamic, final_op:Dynamic, subdiv_offsets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function collective_reduce
	**/
	static public function collective_reduce_eager_fallback(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, merge_op:Dynamic, final_op:Dynamic, subdiv_offsets:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}