/* This file is generated, do not edit! */
package tensorflow.contrib.nccl.ops.gen_nccl_ops;
@:pythonImport("tensorflow.contrib.nccl.ops.gen_nccl_ops") extern class Gen_nccl_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
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
		Outputs a tensor containing the reduction across all input tensors passed to ops
		
		within the same `shared_name.
		
		The graph should be constructed so if one op runs with shared_name value `c`,
		then `num_devices` ops will run with shared_name value `c`.  Failure to do so
		will cause the graph execution to fail to complete.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`.
		    the input to the reduction
		  reduction: A `string` from: `"min", "max", "prod", "sum"`.
		    the reduction operation to perform.
		  num_devices: An `int`.
		    The number of devices participating in this reduction.
		  shared_name: A `string`.
		    Identifier that shared between ops of the same reduction.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  the value of the reduction across all `num_devices` devices.
	**/
	static public function nccl_all_reduce(input:Dynamic, reduction:Dynamic, num_devices:Dynamic, shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sends data of shape `shape` from the NcclBroadcastSend op registered in the
		
		same `shared_name`.
		
		The graph should be constructed so that one device runs `NcclBroadcastSend` and
		`num_devices-1` devices run NcclBroadcastRecv ops with shared_name value `c`.
		Failure to do so will cause the graph execution to fail to complete.
		
		Args:
		  shape: A `Tensor` of type `int64`. The shape of the output.
		  T: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.int64`.
		  num_devices: An `int`.
		    The number of devices participating in this reduction.
		  shared_name: A `string`.
		    Identifier that is shared between ops of the same broadcast.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `T`.
		  The broadcast data received from the NcclBroadcastSend op.
	**/
	static public function nccl_broadcast_recv(shape:Dynamic, T:Dynamic, num_devices:Dynamic, shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sends `input` to the NcclBroadcastRecv ops registered in the same `shared_name`.
		
		The graph should be constructed so that one device runs `NcclBroadcastSend` and
		`num_devices-1` devices run NcclBroadcastRecv ops with shared_name value `c`.
		Failure to do so will cause the graph execution to fail to complete.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`.
		    The input to the broadcast
		  num_devices: An `int`.
		    The number of devices participating in this reduction.
		  shared_name: A `string`.
		    Identifier that is shared between ops of the same broadcast.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function nccl_broadcast_send(input:Dynamic, num_devices:Dynamic, shared_name:Dynamic, ?name:Dynamic):Dynamic;
}