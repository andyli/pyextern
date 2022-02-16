/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_nccl_ops;
@:pythonImport("tensorflow.python.ops.gen_nccl_ops") extern class Gen_nccl_ops_Module {
	/**
		Outputs a tensor containing the reduction across all input tensors.
		
		Outputs a tensor containing the reduction across all input tensors passed to ops
		within the same `shared_name.
		
		The graph should be constructed so if one op runs with shared_name value `c`,
		then `num_devices` ops will run with shared_name value `c`.  Failure to do so
		will cause the graph execution to fail to complete.
		
		input: the input to the reduction
		data: the value of the reduction across all `num_devices` devices.
		reduction: the reduction operation to perform.
		num_devices: The number of devices participating in this reduction.
		shared_name: Identifier that shared between ops of the same reduction.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		  reduction: A `string` from: `"min", "max", "prod", "sum"`.
		  num_devices: An `int`.
		  shared_name: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function NcclAllReduce(input:Dynamic, reduction:Dynamic, num_devices:Dynamic, shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sends `input` to all devices that are connected to the output.
		
		Sends `input` to all devices that are connected to the output.
		
		The graph should be constructed so that all ops connected to the output have a
		valid device assignment, and the op itself is assigned one of these devices.
		
		input: The input to the broadcast.
		output: The same as input.
		shape: The shape of the input tensor.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function NcclBroadcast(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reduces `input` from `num_devices` using `reduction` to a single device.
		
		Reduces `input` from `num_devices` using `reduction` to a single device.
		
		The graph should be constructed so that all inputs have a valid device
		assignment, and the op itself is assigned one of these devices.
		
		input: The input to the reduction.
		data: the value of the reduction across all `num_devices` devices.
		reduction: the reduction operation to perform.
		
		Args:
		  input: A list of at least 1 `Tensor` objects with the same type in: `half`, `float32`, `float64`, `int32`, `int64`.
		  reduction: A `string` from: `"min", "max", "prod", "sum"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function NcclReduce(input:Dynamic, reduction:Dynamic, ?name:Dynamic):Dynamic;
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
		Outputs a tensor containing the reduction across all input tensors.
		
		Outputs a tensor containing the reduction across all input tensors passed to ops
		within the same `shared_name.
		
		The graph should be constructed so if one op runs with shared_name value `c`,
		then `num_devices` ops will run with shared_name value `c`.  Failure to do so
		will cause the graph execution to fail to complete.
		
		input: the input to the reduction
		data: the value of the reduction across all `num_devices` devices.
		reduction: the reduction operation to perform.
		num_devices: The number of devices participating in this reduction.
		shared_name: Identifier that shared between ops of the same reduction.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		  reduction: A `string` from: `"min", "max", "prod", "sum"`.
		  num_devices: An `int`.
		  shared_name: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function nccl_all_reduce(input:Dynamic, reduction:Dynamic, num_devices:Dynamic, shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function nccl_all_reduce_eager_fallback(input:Dynamic, reduction:Dynamic, num_devices:Dynamic, shared_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Sends `input` to all devices that are connected to the output.
		
		Sends `input` to all devices that are connected to the output.
		
		The graph should be constructed so that all ops connected to the output have a
		valid device assignment, and the op itself is assigned one of these devices.
		
		input: The input to the broadcast.
		output: The same as input.
		shape: The shape of the input tensor.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		  shape: A `tf.TensorShape` or list of `ints`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function nccl_broadcast(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function nccl_broadcast_eager_fallback(input:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Reduces `input` from `num_devices` using `reduction` to a single device.
		
		Reduces `input` from `num_devices` using `reduction` to a single device.
		
		The graph should be constructed so that all inputs have a valid device
		assignment, and the op itself is assigned one of these devices.
		
		input: The input to the reduction.
		data: the value of the reduction across all `num_devices` devices.
		reduction: the reduction operation to perform.
		
		Args:
		  input: A list of at least 1 `Tensor` objects with the same type in: `half`, `float32`, `float64`, `int32`, `int64`.
		  reduction: A `string` from: `"min", "max", "prod", "sum"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function nccl_reduce(input:Dynamic, reduction:Dynamic, ?name:Dynamic):Dynamic;
	static public function nccl_reduce_eager_fallback(input:Dynamic, reduction:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}