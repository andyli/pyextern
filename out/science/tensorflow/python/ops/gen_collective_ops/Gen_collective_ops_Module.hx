/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_collective_ops;
@:pythonImport("tensorflow.python.ops.gen_collective_ops") extern class Gen_collective_ops_Module {
	/**
		Mutually exchanges multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `half`, `float64`, `int32`, `int64`.
		  communicator: A `Tensor` of type `resource`.
		  group_assignment: A `Tensor` of type `int32`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function CollectiveAllToAllV3(input:Dynamic, communicator:Dynamic, group_assignment:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Receives a tensor value broadcast from another device.
		
		Args:
		  T: A `tf.DType` from: `tf.bool, tf.float32, tf.half, tf.float64, tf.int32, tf.int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `T`.
	**/
	static public function CollectiveBcastRecv(T:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Receives a tensor value broadcast from another device.
		
		Args:
		  group_size: A `Tensor` of type `int32`.
		  group_key: A `Tensor` of type `int32`.
		  instance_key: A `Tensor` of type `int32`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  T: A `tf.DType` from: `tf.bool, tf.float32, tf.half, tf.float64, tf.int32, tf.int64`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `T`.
	**/
	static public function CollectiveBcastRecvV2(group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, T:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Broadcasts a tensor value to one or more other devices.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bool`, `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function CollectiveBcastSend(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Broadcasts a tensor value to one or more other devices.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bool`, `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: A `Tensor` of type `int32`.
		  group_key: A `Tensor` of type `int32`.
		  instance_key: A `Tensor` of type `int32`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function CollectiveBcastSendV2(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Mutually accumulates multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function CollectiveGather(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Mutually accumulates multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: A `Tensor` of type `int32`.
		  group_key: A `Tensor` of type `int32`.
		  instance_key: A `Tensor` of type `int32`.
		  ordering_token: A list of `Tensor` objects with type `resource`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function CollectiveGatherV2(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ordering_token:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initializes a group for collective operations.
		
		Args:
		  group_key: A `Tensor` of type `int32`.
		  rank: A `Tensor` of type `int32`.
		  group_size: A `Tensor` of type `int32`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function CollectiveInitializeCommunicator(group_key:Dynamic, rank:Dynamic, group_size:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Mutually reduces multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  merge_op: A `string` from: `"Min", "Max", "Mul", "Add"`.
		  final_op: A `string` from: `"Id", "Div"`.
		  subdiv_offsets: A list of `ints`.
		  wait_for: An optional list of `ints`. Defaults to `[]`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function CollectiveReduce(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, merge_op:Dynamic, final_op:Dynamic, subdiv_offsets:Dynamic, ?wait_for:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Mutually reduces multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: A `Tensor` of type `int32`.
		  group_key: A `Tensor` of type `int32`.
		  instance_key: A `Tensor` of type `int32`.
		  ordering_token: A list of `Tensor` objects with type `resource`.
		  merge_op: A `string` from: `"Min", "Max", "Mul", "Add"`.
		  final_op: A `string` from: `"Id", "Div"`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  max_subdivs_per_device: An optional `int`. Defaults to `-1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function CollectiveReduceV2(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ordering_token:Dynamic, merge_op:Dynamic, final_op:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?max_subdivs_per_device:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Mutually reduces multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `half`, `float64`, `int32`, `int64`.
		  communicator: A `Tensor` of type `resource`.
		  group_assignment: A `Tensor` of type `int32`.
		  reduction: A `string` from: `"Min", "Max", "Mul", "Add"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function CollectiveReduceV3(input:Dynamic, communicator:Dynamic, group_assignment:Dynamic, reduction:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Mutually exchanges multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `half`, `float64`, `int32`, `int64`.
		  communicator: A `Tensor` of type `resource`.
		  group_assignment: A `Tensor` of type `int32`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function collective_all_to_all_v3(input:Dynamic, communicator:Dynamic, group_assignment:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_all_to_all_v3_eager_fallback(input:Dynamic, communicator:Dynamic, group_assignment:Dynamic, timeout_seconds:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Receives a tensor value broadcast from another device.
		
		Args:
		  T: A `tf.DType` from: `tf.bool, tf.float32, tf.half, tf.float64, tf.int32, tf.int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `T`.
	**/
	static public function collective_bcast_recv(T:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_bcast_recv_eager_fallback(T:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, communication_hint:Dynamic, timeout_seconds:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Receives a tensor value broadcast from another device.
		
		Args:
		  group_size: A `Tensor` of type `int32`.
		  group_key: A `Tensor` of type `int32`.
		  instance_key: A `Tensor` of type `int32`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  T: A `tf.DType` from: `tf.bool, tf.float32, tf.half, tf.float64, tf.int32, tf.int64`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `T`.
	**/
	static public function collective_bcast_recv_v2(group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, T:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_bcast_recv_v2_eager_fallback(group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, T:Dynamic, communication_hint:Dynamic, timeout_seconds:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Broadcasts a tensor value to one or more other devices.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bool`, `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function collective_bcast_send(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_bcast_send_eager_fallback(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, communication_hint:Dynamic, timeout_seconds:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Broadcasts a tensor value to one or more other devices.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bool`, `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: A `Tensor` of type `int32`.
		  group_key: A `Tensor` of type `int32`.
		  instance_key: A `Tensor` of type `int32`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function collective_bcast_send_v2(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_bcast_send_v2_eager_fallback(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, communication_hint:Dynamic, timeout_seconds:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Mutually accumulates multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function collective_gather(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_gather_eager_fallback(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, shape:Dynamic, communication_hint:Dynamic, timeout_seconds:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Mutually accumulates multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: A `Tensor` of type `int32`.
		  group_key: A `Tensor` of type `int32`.
		  instance_key: A `Tensor` of type `int32`.
		  ordering_token: A list of `Tensor` objects with type `resource`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function collective_gather_v2(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ordering_token:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_gather_v2_eager_fallback(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ordering_token:Dynamic, communication_hint:Dynamic, timeout_seconds:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Initializes a group for collective operations.
		
		Args:
		  group_key: A `Tensor` of type `int32`.
		  rank: A `Tensor` of type `int32`.
		  group_size: A `Tensor` of type `int32`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function collective_initialize_communicator(group_key:Dynamic, rank:Dynamic, group_size:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_initialize_communicator_eager_fallback(group_key:Dynamic, rank:Dynamic, group_size:Dynamic, communication_hint:Dynamic, timeout_seconds:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Mutually reduces multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: An `int`.
		  group_key: An `int`.
		  instance_key: An `int`.
		  merge_op: A `string` from: `"Min", "Max", "Mul", "Add"`.
		  final_op: A `string` from: `"Id", "Div"`.
		  subdiv_offsets: A list of `ints`.
		  wait_for: An optional list of `ints`. Defaults to `[]`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function collective_reduce(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, merge_op:Dynamic, final_op:Dynamic, subdiv_offsets:Dynamic, ?wait_for:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_reduce_eager_fallback(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, merge_op:Dynamic, final_op:Dynamic, subdiv_offsets:Dynamic, wait_for:Dynamic, communication_hint:Dynamic, timeout_seconds:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Mutually reduces multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `half`, `float64`, `int32`, `int64`.
		  group_size: A `Tensor` of type `int32`.
		  group_key: A `Tensor` of type `int32`.
		  instance_key: A `Tensor` of type `int32`.
		  ordering_token: A list of `Tensor` objects with type `resource`.
		  merge_op: A `string` from: `"Min", "Max", "Mul", "Add"`.
		  final_op: A `string` from: `"Id", "Div"`.
		  communication_hint: An optional `string`. Defaults to `"auto"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  max_subdivs_per_device: An optional `int`. Defaults to `-1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function collective_reduce_v2(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ordering_token:Dynamic, merge_op:Dynamic, final_op:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic, ?max_subdivs_per_device:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_reduce_v2_eager_fallback(input:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ordering_token:Dynamic, merge_op:Dynamic, final_op:Dynamic, communication_hint:Dynamic, timeout_seconds:Dynamic, max_subdivs_per_device:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Mutually reduces multiple tensors of identical type and shape.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `half`, `float64`, `int32`, `int64`.
		  communicator: A `Tensor` of type `resource`.
		  group_assignment: A `Tensor` of type `int32`.
		  reduction: A `string` from: `"Min", "Max", "Mul", "Add"`.
		  timeout_seconds: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function collective_reduce_v3(input:Dynamic, communicator:Dynamic, group_assignment:Dynamic, reduction:Dynamic, ?timeout_seconds:Dynamic, ?name:Dynamic):Dynamic;
	static public function collective_reduce_v3_eager_fallback(input:Dynamic, communicator:Dynamic, group_assignment:Dynamic, reduction:Dynamic, timeout_seconds:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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