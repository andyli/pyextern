/* This file is generated, do not edit! */
package tensorflow.contrib.quantization.ops.gen_nn_ops;
@:pythonImport("tensorflow.contrib.quantization.ops.gen_nn_ops") extern class Gen_nn_ops_Module {
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
	static public var _quantized_avg_pool_outputs : Dynamic;
	static public var _quantized_batch_norm_with_global_normalization_outputs : Dynamic;
	static public var _quantized_bias_add_outputs : Dynamic;
	static public var _quantized_conv2d_outputs : Dynamic;
	static public var _quantized_max_pool_outputs : Dynamic;
	static public var _quantized_relu6_outputs : Dynamic;
	static public var _quantized_relu_outputs : Dynamic;
	static public var _quantized_relu_x_outputs : Dynamic;
	/**
		Produces the average pool of the input tensor for quantized types.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		    4-D with shape `[batch, height, width, channels]`.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  ksize: A list of `ints`.
		    The size of the window for each dimension of the input tensor.
		    The length must be 4 to match the number of dimensions of the input.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    tensor.  The length must be 4 to match the number of dimensions of the input.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		  output: A `Tensor`. Has the same type as `input`.
		  min_output: A `Tensor` of type `float32`. The float value that the lowest quantized output value represents.
		  max_output: A `Tensor` of type `float32`. The float value that the highest quantized output value represents.
	**/
	static public function quantized_avg_pool(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Quantized Batch normalization.
		
		This op is deprecated and will be removed in the future. Prefer
		`tf.nn.batch_normalization`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		    A 4D input Tensor.
		  t_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized input.
		  t_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized input.
		  m: A `Tensor`. Must have the same type as `t`.
		    A 1D mean Tensor with size matching the last dimension of t.
		    This is the first output from tf.nn.moments,
		    or a saved moving average thereof.
		  m_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized mean.
		  m_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized mean.
		  v: A `Tensor`. Must have the same type as `t`.
		    A 1D variance Tensor with size matching the last dimension of t.
		    This is the second output from tf.nn.moments,
		    or a saved moving average thereof.
		  v_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized variance.
		  v_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized variance.
		  beta: A `Tensor`. Must have the same type as `t`.
		    A 1D beta Tensor with size matching the last dimension of t.
		    An offset to be added to the normalized tensor.
		  beta_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized offset.
		  beta_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized offset.
		  gamma: A `Tensor`. Must have the same type as `t`.
		    A 1D gamma Tensor with size matching the last dimension of t.
		    If "scale_after_normalization" is true, this tensor will be multiplied
		    with the normalized tensor.
		  gamma_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized gamma.
		  gamma_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized gamma.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint16, tf.quint16, tf.qint32`.
		  variance_epsilon: A `float`. A small float number to avoid dividing by 0.
		  scale_after_normalization: A `bool`.
		    A bool indicating whether the resulted tensor
		    needs to be multiplied with gamma.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (result, result_min, result_max).
		  result: A `Tensor` of type `out_type`.
		  result_min: A `Tensor` of type `float32`.
		  result_max: A `Tensor` of type `float32`.
	**/
	static public function quantized_batch_norm_with_global_normalization(t:Dynamic, t_min:Dynamic, t_max:Dynamic, m:Dynamic, m_min:Dynamic, m_max:Dynamic, v:Dynamic, v_min:Dynamic, v_max:Dynamic, beta:Dynamic, beta_min:Dynamic, beta_max:Dynamic, gamma:Dynamic, gamma_min:Dynamic, gamma_max:Dynamic, out_type:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds Tensor 'bias' to Tensor 'input' for Quantized types.
		
		Broadcasts the values of bias on dimensions 0..N-2 of 'input'.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		  bias: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		    A 1D bias Tensor with size matching the last dimension of 'input'.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  min_bias: A `Tensor` of type `float32`.
		    The float value that the lowest quantized bias value represents.
		  max_bias: A `Tensor` of type `float32`.
		    The float value that the highest quantized bias value represents.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint16, tf.quint16, tf.qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_out, max_out).
		  output: A `Tensor` of type `out_type`.
		  min_out: A `Tensor` of type `float32`. The float value that the lowest quantized output value represents.
		  max_out: A `Tensor` of type `float32`. The float value that the highest quantized output value represents.
	**/
	static public function quantized_bias_add(input:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_bias:Dynamic, max_bias:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2D convolution given quantized 4D input and filter tensors.
		
		The inputs are quantized tensors where the lowest value represents the real
		number of the associated minimum, and the highest represents the maximum.
		This means that you can only interpret the quantized output in the same way, by
		taking the returned minimum and maximum values into account.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		    filter's input_depth dimension must match input's depth dimensions.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the lowest quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the highest quantized filter value represents.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint16, tf.quint16, tf.qint32`. Defaults to `tf.qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`. The float value that the lowest quantized output value represents.
		  max_output: A `Tensor` of type `float32`. The float value that the highest quantized output value represents.
	**/
	static public function quantized_conv2d(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces the max pool of the input tensor for quantized types.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		    The 4D (batch x rows x cols x depth) Tensor to MaxReduce over.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  ksize: A list of `ints`.
		    The size of the window for each dimension of the input tensor.
		    The length must be 4 to match the number of dimensions of the input.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    tensor. The length must be 4 to match the number of dimensions of the input.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		  output: A `Tensor`. Has the same type as `input`.
		  min_output: A `Tensor` of type `float32`. The float value that the lowest quantized output value represents.
		  max_output: A `Tensor` of type `float32`. The float value that the highest quantized output value represents.
	**/
	static public function quantized_max_pool(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear: `max(features, 0)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint16, tf.quint16, tf.qint32`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		  activations: A `Tensor` of type `out_type`. Has the same output shape as "features".
		  min_activations: A `Tensor` of type `float32`. The float value that the lowest quantized value represents.
		  max_activations: A `Tensor` of type `float32`. The float value that the highest quantized value represents.
	**/
	static public function quantized_relu(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear 6: `min(max(features, 0), 6)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint16, tf.quint16, tf.qint32`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		  activations: A `Tensor` of type `out_type`. Has the same output shape as "features".
		  min_activations: A `Tensor` of type `float32`. The float value that the lowest quantized value represents.
		  max_activations: A `Tensor` of type `float32`. The float value that the highest quantized value represents.
	**/
	static public function quantized_relu6(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear X: `min(max(features, 0), max_value)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		  max_value: A `Tensor` of type `float32`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint16, tf.quint16, tf.qint32`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		  activations: A `Tensor` of type `out_type`. Has the same output shape as "features".
		  min_activations: A `Tensor` of type `float32`. The float value that the lowest quantized value represents.
		  max_activations: A `Tensor` of type `float32`. The float value that the highest quantized value represents.
	**/
	static public function quantized_relu_x(features:Dynamic, max_value:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
}