/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_nn_ops;
@:pythonImport("tensorflow.python.ops.gen_nn_ops") extern class Gen_nn_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __batch_norm_with_global_normalization_grad_outputs : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __fused_batch_norm_outputs : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __softmax_cross_entropy_with_logits_outputs : Dynamic;
	static public var __sparse_softmax_cross_entropy_with_logits_outputs : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __top_k_outputs : Dynamic;
	static public var __top_kv2_outputs : Dynamic;
	/**
		Performs average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the sliding window for each dimension of `value`.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of `value`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
		  The average pooled output tensor.
	**/
	static public function _avg_pool(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of average pooling function.
		
		Args:
		  orig_input_shape: A `Tensor` of type `int32`.
		    The original input dimensions.
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Output backprop of shape `[batch, depth, rows, cols, channels]`.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`. The backprop for input.
	**/
	static public function _avg_pool3d_grad(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of the average pooling function.
		
		Args:
		  orig_input_shape: A `Tensor` of type `int32`.
		    1-D.  Shape of the original input to `avg_pool`.
		  grad: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.  Gradients w.r.t.
		    the output of `avg_pool`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the sliding window for each dimension of the input.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the input.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
		  4-D.  Gradients w.r.t. the input of `avg_pool`.
	**/
	static public function _avg_pool_grad(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		This op is deprecated. Prefer `tf.nn.batch_normalization`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    A 4D input Tensor.
		  m: A `Tensor`. Must have the same type as `t`.
		    A 1D mean Tensor with size matching the last dimension of t.
		    This is the first output from tf.nn.moments,
		    or a saved moving average thereof.
		  v: A `Tensor`. Must have the same type as `t`.
		    A 1D variance Tensor with size matching the last dimension of t.
		    This is the second output from tf.nn.moments,
		    or a saved moving average thereof.
		  beta: A `Tensor`. Must have the same type as `t`.
		    A 1D beta Tensor with size matching the last dimension of t.
		    An offset to be added to the normalized tensor.
		  gamma: A `Tensor`. Must have the same type as `t`.
		    A 1D gamma Tensor with size matching the last dimension of t.
		    If "scale_after_normalization" is true, this tensor will be multiplied
		    with the normalized tensor.
		  variance_epsilon: A `float`. A small float number to avoid dividing by 0.
		  scale_after_normalization: A `bool`.
		    A bool indicating whether the resulted tensor
		    needs to be multiplied with gamma.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function _batch_norm_with_global_normalization(t:Dynamic, m:Dynamic, v:Dynamic, beta:Dynamic, gamma:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradients for batch normalization.
		
		This op is deprecated. See `tf.nn.batch_normalization`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    A 4D input Tensor.
		  m: A `Tensor`. Must have the same type as `t`.
		    A 1D mean Tensor with size matching the last dimension of t.
		    This is the first output from tf.nn.moments,
		    or a saved moving average thereof.
		  v: A `Tensor`. Must have the same type as `t`.
		    A 1D variance Tensor with size matching the last dimension of t.
		    This is the second output from tf.nn.moments,
		    or a saved moving average thereof.
		  gamma: A `Tensor`. Must have the same type as `t`.
		    A 1D gamma Tensor with size matching the last dimension of t.
		    If "scale_after_normalization" is true, this Tensor will be multiplied
		    with the normalized Tensor.
		  backprop: A `Tensor`. Must have the same type as `t`. 4D backprop Tensor.
		  variance_epsilon: A `float`. A small float number to avoid dividing by 0.
		  scale_after_normalization: A `bool`.
		    A bool indicating whether the resulted tensor
		    needs to be multiplied with gamma.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (dx, dm, dv, db, dg).
		
		  dx: A `Tensor`. Has the same type as `t`. 4D backprop tensor for input.
		  dm: A `Tensor`. Has the same type as `t`. 1D backprop tensor for mean.
		  dv: A `Tensor`. Has the same type as `t`. 1D backprop tensor for variance.
		  db: A `Tensor`. Has the same type as `t`. 1D backprop tensor for beta.
		  dg: A `Tensor`. Has the same type as `t`. 1D backprop tensor for gamma.
	**/
	static public function _batch_norm_with_global_normalization_grad(t:Dynamic, m:Dynamic, v:Dynamic, gamma:Dynamic, backprop:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds `bias` to `value`.
		
		This is a special case of `tf.add` where `bias` is restricted to be 1-D.
		Broadcasting is supported, so `value` may have any number of dimensions.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Any number of dimensions.
		  bias: A `Tensor`. Must have the same type as `value`.
		    1-D with size the last dimension of `value`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the bias tensor will be added to the last dimension
		    of the value tensor.
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		    The tensor will be added to "in_channels", the third-to-the-last
		        dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
		  Broadcasted sum of `value` and `bias`.
	**/
	static public function _bias_add(value:Dynamic, bias:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds `bias` to `value`.
		
		This is a deprecated version of BiasAdd and will be soon removed.
		
		This is a special case of `tf.add` where `bias` is restricted to be 1-D.
		Broadcasting is supported, so `value` may have any number of dimensions.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Any number of dimensions.
		  bias: A `Tensor`. Must have the same type as `value`.
		    1-D with size the last dimension of `value`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
		  Broadcasted sum of `value` and `bias`.
	**/
	static public function _bias_add_v1(value:Dynamic, bias:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients for the exponential linear (Elu) operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding Elu operation.
		  outputs: A `Tensor`. Must have the same type as `gradients`.
		    The outputs of the corresponding Elu operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
		  The gradients: `gradients * (outputs + 1)` if outputs < 0,
		  `gradients` otherwise.
	**/
	static public function _elu_grad(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradient of the FractionalAvgPool function.
		
		Unlike FractionalMaxPoolGrad, we don't need to find arg_max for
		FractionalAvgPoolGrad, we just need to evenly back-propagate each element of
		out_backprop to those indices that form the same pooling cell. Therefore, we
		just need to know the shape of original input tensor, instead of the whole
		tensor.
		
		Args:
		  orig_input_tensor_shape: A `Tensor` of type `int64`.
		    Original input tensor shape for `fractional_avg_pool`
		  out_backprop: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`.
		    4-D with shape `[batch, height, width, channels]`.  Gradients
		    w.r.t. the output of `fractional_avg_pool`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		    row pooling sequence, form pooling region with
		    col_pooling_sequence.
		  col_pooling_sequence: A `Tensor` of type `int64`.
		    column pooling sequence, form pooling region with
		    row_pooling sequence.
		  overlapping: An optional `bool`. Defaults to `False`.
		    When set to True, it means when pooling, the values at the boundary
		    of adjacent pooling cells are used by both cells. For example:
		
		    `index  0  1  2  3  4`
		
		    `value  20 5  16 3  7`
		
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used twice.
		    The result would be [41/3, 26/3] for fractional avg pooling.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `out_backprop`.
		  4-D.  Gradients w.r.t. the input of `fractional_avg_pool`.
	**/
	static public function _fractional_avg_pool_grad(orig_input_tensor_shape:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic):Dynamic;
	static public var _fractional_avg_pool_outputs : Dynamic;
	/**
		Computes gradient of the FractionalMaxPool function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`.
		    Original input for `fractional_max_pool`
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    Original output for `fractional_max_pool`
		  out_backprop: A `Tensor`. Must have the same type as `orig_input`.
		    4-D with shape `[batch, height, width, channels]`.  Gradients
		    w.r.t. the output of `fractional_max_pool`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		    row pooling sequence, form pooling region with
		    col_pooling_sequence.
		  col_pooling_sequence: A `Tensor` of type `int64`.
		    column pooling sequence, form pooling region with
		    row_pooling sequence.
		  overlapping: An optional `bool`. Defaults to `False`.
		    When set to True, it means when pooling, the values at the boundary
		    of adjacent pooling cells are used by both cells. For example:
		
		    `index  0  1  2  3  4`
		
		    `value  20 5  16 3  7`
		
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used twice.
		    The result would be [20, 16] for fractional max pooling.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
		  4-D.  Gradients w.r.t. the input of `fractional_max_pool`.
	**/
	static public function _fractional_max_pool_grad(orig_input:Dynamic, orig_output:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic):Dynamic;
	static public var _fractional_max_pool_outputs : Dynamic;
	/**
		Batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`.
		    A 4D Tensor for input data.
		  scale: A `Tensor`. Must have the same type as `x`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  offset: A `Tensor`. Must have the same type as `x`.
		    A 1D Tensor for offset, to shift to the normalized x.
		  mean: A `Tensor`. Must have the same type as `x`.
		    A 1D Tensor for population mean. Used for inference only;
		    must be empty for training.
		  variance: A `Tensor`. Must have the same type as `x`.
		    A 1D Tensor for population variance. Used for inference only;
		    must be empty for training.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string`. Defaults to `"NHWC"`.
		    The data format for x and y. Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, batch_mean, batch_variance, reserve_space_1, reserve_space_2).
		
		  y: A `Tensor`. Has the same type as `x`. A 4D Tensor for output data.
		  batch_mean: A `Tensor`. Has the same type as `x`. A 1D Tensor for the computed batch mean, to be used by TensorFlow
		    to compute the running mean.
		  batch_variance: A `Tensor`. Has the same type as `x`. A 1D Tensor for the computed batch variance, to be used by
		    TensorFlow to compute the running variance.
		  reserve_space_1: A `Tensor`. Has the same type as `x`. A 1D Tensor for the computed batch mean, to be reused
		    in the gradient computation.
		  reserve_space_2: A `Tensor`. Has the same type as `x`. A 1D Tensor for the computed batch variance (inverted variance
		    in the cuDNN case), to be used in the gradient computation.
	**/
	static public function _fused_batch_norm(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	static public var _fused_batch_norm_grad_outputs : Dynamic;
	/**
		Computes log softmax activations.
		
		For each batch `i` and class `j` we have
		
		    logsoftmax[i, j] = logits[i, j] - log(sum(exp(logits[i])))
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    2-D with shape `[batch_size, num_classes]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`. Same shape as `logits`.
	**/
	static public function _log_softmax(logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradients for Local Response Normalization.
		
		Args:
		  input_grads: A `Tensor`. Must be one of the following types: `float32`, `half`.
		    4-D with shape `[batch, height, width, channels]`.
		  input_image: A `Tensor`. Must have the same type as `input_grads`.
		    4-D with shape `[batch, height, width, channels]`.
		  output_image: A `Tensor`. Must have the same type as `input_grads`.
		    4-D with shape `[batch, height, width, channels]`.
		  depth_radius: An optional `int`. Defaults to `5`. A depth radius.
		  bias: An optional `float`. Defaults to `1`.
		    An offset (usually > 0 to avoid dividing by 0).
		  alpha: An optional `float`. Defaults to `1`.
		    A scale factor, usually positive.
		  beta: An optional `float`. Defaults to `0.5`. An exponent.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input_grads`. The gradients for LRN.
	**/
	static public function _lrn_grad(input_grads:Dynamic, input_image:Dynamic, output_image:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs max pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    4-D input to pool over.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. The max pooled output tensor.
	**/
	static public function _max_pool(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of max pooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must be one of the following types: `float32`.
		    Output backprop of shape `[batch, depth, rows, cols, channels]`.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function _max_pool3d_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    Output backprop of shape `[batch, depth, rows, cols, channels]`.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
		  Gradients of gradients w.r.t. the input to `max_pool`.
	**/
	static public function _max_pool3d_grad_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    4-D.  Gradients w.r.t. the output of `max_pool`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
		  Gradients w.r.t. the input to `max_pool`.
	**/
	static public function _max_pool_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    4-D.  Gradients of gradients w.r.t. the input of `max_pool`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
		  Gradients of gradients w.r.t. the input to `max_pool`.
	**/
	static public function _max_pool_grad_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    The original input.
		  grad: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, height, width, channels]`.  Gradients w.r.t. the
		    input of `max_pool`.
		  argmax: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The indices of the maximum values chosen for each output of `max_pool`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Gradients of gradients w.r.t. the input of `max_pool`.
	**/
	static public function _max_pool_grad_grad_with_argmax(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    The original input.
		  grad: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, height, width, channels]`.  Gradients w.r.t. the
		    output of `max_pool`.
		  argmax: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The indices of the maximum values chosen for each output of `max_pool`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Gradients w.r.t. the input of `max_pool`.
	**/
	static public function _max_pool_grad_with_argmax(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	static public var _max_pool_with_argmax_outputs : Dynamic;
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
		Computes rectified linear 6: `min(max(features, 0), 6)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function _relu6(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes rectified linear 6 gradients for a Relu6 operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    The backpropagated gradients to the corresponding Relu6 operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding Relu6 operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`. The gradients:
		  `gradients * (features > 0) * (features < 6)`.
	**/
	static public function _relu6_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes rectified linear gradients for a Relu operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    The backpropagated gradients to the corresponding Relu operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding Relu operation, OR
		    the outputs of that operation (both work equivalently).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
		  `gradients * (features > 0)`.
	**/
	static public function _relu_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax activations.
		
		For each batch `i` and class `j` we have
		
		    softmax[i, j] = exp(logits[i, j]) / sum_j(exp(logits[i, j]))
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    2-D with shape `[batch_size, num_classes]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`. Same shape as `logits`.
	**/
	static public function _softmax(logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy cost and gradients to backpropagate.
		
		Inputs are the logits, not probabilities.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    batch_size x num_classes matrix
		  labels: A `Tensor`. Must have the same type as `features`.
		    batch_size x num_classes matrix
		    The caller must ensure that each batch of labels represents a valid
		    probability distribution.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (loss, backprop).
		
		  loss: A `Tensor`. Has the same type as `features`. Per example loss (batch_size vector).
		  backprop: A `Tensor`. Has the same type as `features`. backpropagated gradients (batch_size x num_classes matrix).
	**/
	static public function _softmax_cross_entropy_with_logits(features:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softplus gradients for a softplus operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    The backpropagated gradients to the corresponding softplus operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding softplus operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
		  The gradients: `gradients / (1 + exp(-features))`.
	**/
	static public function _softplus_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softsign gradients for a softsign operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    The backpropagated gradients to the corresponding softsign operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding softsign operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
		  The gradients: `gradients / (1 + abs(-features)) ** 2`.
	**/
	static public function _softsign_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy cost and gradients to backpropagate.
		
		Unlike `SoftmaxCrossEntropyWithLogits`, this operation does not accept
		a matrix of label probabilities, but rather a single label per row
		of features.  This label is considered to have probability 1.0 for the
		given row.
		
		Inputs are the logits, not probabilities.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    batch_size x num_classes matrix
		  labels: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    batch_size vector with values in [0, num_classes).
		    This is the label for the given minibatch entry.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (loss, backprop).
		
		  loss: A `Tensor`. Has the same type as `features`. Per example loss (batch_size vector).
		  backprop: A `Tensor`. Has the same type as `features`. backpropagated gradients (batch_size x num_classes matrix).
	**/
	static public function _sparse_softmax_cross_entropy_with_logits(features:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds values and indices of the `k` largest elements for the last dimension.
		
		If the input is a vector (rank-1), finds the `k` largest entries in the vector
		and outputs their values and indices as vectors.  Thus `values[j]` is the
		`j`-th largest entry in `input`, and its index is `indices[j]`.
		
		For matrices (resp. higher rank input), computes the top `k` entries in each
		row (resp. vector along the last dimension).  Thus,
		
		    values.shape = indices.shape = input.shape[:-1] + [k]
		
		If two elements are equal, the lower-index element appears first.
		
		If `k` varies dynamically, use `TopKV2` below.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    1-D or higher with last dimension at least `k`.
		  k: An `int` that is `>= 0`.
		    Number of top elements to look for along the last dimension (along each
		    row for matrices).
		  sorted: An optional `bool`. Defaults to `True`.
		    If true the resulting `k` elements will be sorted by the values in
		    descending order.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (values, indices).
		
		  values: A `Tensor`. Has the same type as `input`. The `k` largest elements along each last dimensional slice.
		  indices: A `Tensor` of type `int32`. The indices of `values` within the last dimension of `input`.
	**/
	static public function _top_k(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds values and indices of the `k` largest elements for the last dimension.
		
		If the input is a vector (rank-1), finds the `k` largest entries in the vector
		and outputs their values and indices as vectors.  Thus `values[j]` is the
		`j`-th largest entry in `input`, and its index is `indices[j]`.
		
		For matrices (resp. higher rank input), computes the top `k` entries in each
		row (resp. vector along the last dimension).  Thus,
		
		    values.shape = indices.shape = input.shape[:-1] + [k]
		
		If two elements are equal, the lower-index element appears first.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    1-D or higher with last dimension at least `k`.
		  k: A `Tensor` of type `int32`.
		    0-D.  Number of top elements to look for along the last dimension (along each
		    row for matrices).
		  sorted: An optional `bool`. Defaults to `True`.
		    If true the resulting `k` elements will be sorted by the values in
		    descending order.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (values, indices).
		
		  values: A `Tensor`. Has the same type as `input`. The `k` largest elements along each last dimensional slice.
		  indices: A `Tensor` of type `int32`. The indices of `values` within the last dimension of `input`.
	**/
	static public function _top_kv2(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs 3D average pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, channels]` tensor to pool over.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  The average pooled output tensor.
	**/
	static public function avg_pool3d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The backward operation for "BiasAdd" on the "bias" tensor.
		
		It accumulates all the values from out_backprop into the feature dimension.
		For NHWC data format, the feature dimension is the last. For NCHW data format,
		the feature dimension is the third-to-last.
		
		Args:
		  out_backprop: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Any number of dimensions.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the bias tensor will be added to the last dimension
		    of the value tensor.
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		    The tensor will be added to "in_channels", the third-to-the-last
		        dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `out_backprop`.
		  1-D with size the feature dimension of `out_backprop`.
	**/
	static public function bias_add_grad(out_backprop:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2-D convolution given 4-D `input` and `filter` tensors.
		
		Given an input tensor of shape `[batch, in_height, in_width, in_channels]`
		and a filter / kernel tensor of shape
		`[filter_height, filter_width, in_channels, out_channels]`, this op
		performs the following:
		
		1. Flattens the filter to a 2-D matrix with shape
		   `[filter_height * filter_width * in_channels, output_channels]`.
		2. Extracts image patches from the input tensor to form a *virtual*
		   tensor of shape `[batch, out_height, out_width,
		   filter_height * filter_width * in_channels]`.
		3. For each patch, right-multiplies the filter matrix and the image patch
		   vector.
		
		In detail, with the default NHWC format,
		
		    output[b, i, j, k] =
		        sum_{di, dj, q} input[b, strides[1] * i + di, strides[2] * j + dj, q] *
		                        filter[di, dj, q, k]
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertices strides, `strides = [1, stride, stride, 1]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    A 4-D tensor. The dimension order is interpreted according to the value
		    of `data_format`, see below for details.
		  filter: A `Tensor`. Must have the same type as `input`.
		    A 4-D tensor of shape
		    `[filter_height, filter_width, in_channels, out_channels]`
		  strides: A list of `ints`.
		    1-D tensor of length 4.  The stride of the sliding window for each
		    dimension of `input`. The dimension order is determined by the value of
		      `data_format`, see below for details.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  A 4-D tensor. The dimension order is determined by the value of
		  `data_format`, see below for details.
	**/
	static public function conv2d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    4-D with shape `[batch, in_height, in_width, in_channels]`.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 4-D
		    `[filter_height, filter_width, in_channels, out_channels]` tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution. Must be in the same order as the dimension specified with
		    format.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. 4-D with shape
		  `[filter_height, filter_width, in_channels, out_channels]`.  Gradient w.r.t.
		  the `filter` input of the convolution.
	**/
	static public function conv2d_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`,
		    where `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `float32`.
		    4-D with shape
		    `[filter_height, filter_width, in_channels, out_channels]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    4-D with shape `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution. Must be in the same order as the dimension specified with
		    format.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
		  4-D with shape `[batch, in_height, in_width, in_channels]`.  Gradient
		  w.r.t. the input of the convolution.
	**/
	static public function conv2d_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 3-D convolution given 5-D `input` and `filter` tensors.
		
		In signal processing, cross-correlation is a measure of similarity of
		two waveforms as a function of a time-lag applied to one of them. This
		is also known as a sliding dot product or sliding inner-product.
		
		Our Conv3D implements a form of cross-correlation.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Shape `[batch, in_depth, in_height, in_width, in_channels]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    Shape `[filter_depth, filter_height, filter_width, in_channels,
		    out_channels]`. `in_channels` must match between `input` and `filter`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, in_channels]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    Shape `[depth, rows, cols, in_channels, out_channels]`.
		    `in_channels` must match between `input` and `filter`.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    Backprop signal of shape `[batch, out_depth, out_rows, out_cols,
		    out_channels]`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_filter(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, in_channels]`.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 5-D
		    `[filter_depth, filter_height, filter_width, in_channels, out_channels]`
		    tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    Backprop signal of shape `[batch, out_depth, out_rows, out_cols,
		    out_channels]`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_filter_v2(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, in_channels]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    Shape `[depth, rows, cols, in_channels, out_channels]`.
		    `in_channels` must match between `input` and `filter`.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    Backprop signal of shape `[batch, out_depth, out_rows, out_cols,
		    out_channels]`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_input(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `input`,
		    where `input` is a 5-D
		    `[batch, depth, rows, cols, in_channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Shape `[depth, rows, cols, in_channels, out_channels]`.
		    `in_channels` must match between `input` and `filter`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    Backprop signal of shape `[batch, out_depth, out_rows, out_cols,
		    out_channels]`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function conv3d_backprop_input_v2(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2-D depthwise convolution given 4-D `input` and `filter` tensors.
		
		Given an input tensor of shape `[batch, in_height, in_width, in_channels]`
		and a filter / kernel tensor of shape
		`[filter_height, filter_width, in_channels, channel_multiplier]`, containing
		`in_channels` convolutional filters of depth 1, `depthwise_conv2d` applies
		a different filter to each input channel (expanding from 1 channel to
		`channel_multiplier` channels for each), then concatenates the results
		together. Thus, the output has `in_channels * channel_multiplier` channels.
		
		for k in 0..in_channels-1
		  for q in 0..channel_multiplier-1
		    output[b, i, j, k * channel_multiplier + q] =
		      sum_{di, dj} input[b, strides[1] * i + di, strides[2] * j + dj, k] *
		                        filter[di, dj, k, q]
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertices strides, `strides = [1, stride, stride, 1]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  filter: A `Tensor`. Must have the same type as `input`.
		  strides: A list of `ints`.
		    1-D of length 4.  The stride of the sliding window for each dimension
		    of `input`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depthwise_conv2d_native(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    4-D with shape based on `data_format`.  For example, if
		    `data_format` is 'NHWC' then `input` is a 4-D `[batch, in_height,
		    in_width, in_channels]` tensor.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 4-D
		    `[filter_height, filter_width, in_channels, depthwise_multiplier]` tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape  based on `data_format`.
		    For example, if `data_format` is 'NHWC' then
		    out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. 4-D with shape
		  `[filter_height, filter_width, in_channels, out_channels]`.  Gradient w.r.t.
		  the `filter` input of the convolution.
	**/
	static public function depthwise_conv2d_native_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`, based
		    on `data_format`.  For example, if `data_format` is 'NHWC' then
		     `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    4-D with shape
		    `[filter_height, filter_width, in_channels, depthwise_multiplier]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    4-D with shape  based on `data_format`.
		    For example, if `data_format` is 'NHWC' then
		    out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
		  4-D with shape according to `data_format`.  For example, if
		  `data_format` is 'NHWC', output shape is `[batch, in_height,
		  in_width, in_channels]`.  Gradient w.r.t. the input of the
		  convolution.
	**/
	static public function depthwise_conv2d_native_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the grayscale dilation of 4-D `input` and 3-D `filter` tensors.
		
		The `input` tensor has shape `[batch, in_height, in_width, depth]` and the
		`filter` tensor has shape `[filter_height, filter_width, depth]`, i.e., each
		input channel is processed independently of the others with its own structuring
		function. The `output` tensor has shape
		`[batch, out_height, out_width, depth]`. The spatial dimensions of the output
		tensor depend on the `padding` algorithm. We currently only support the default
		"NHWC" `data_format`.
		
		In detail, the grayscale morphological 2-D dilation is the max-sum correlation
		(for consistency with `conv2d`, we use unmirrored filters):
		
		    output[b, y, x, c] =
		       max_{dy, dx} input[b,
		                          strides[1] * y + rates[1] * dy,
		                          strides[2] * x + rates[2] * dx,
		                          c] +
		                    filter[dy, dx, c]
		
		Max-pooling is a special case when the filter has size equal to the pooling
		kernel size and contains all zeros.
		
		Note on duality: The dilation of `input` by the `filter` is equal to the
		negation of the erosion of `-input` by the reflected `filter`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    4-D with shape `[batch, in_height, in_width, depth]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    3-D with shape `[filter_height, filter_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the input
		    tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    The input stride for atrous morphological dilation. Must be:
		    `[1, rate_height, rate_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  4-D with shape `[batch, out_height, out_width, depth]`.
	**/
	static public function dilation2d(input:Dynamic, filter:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of morphological 2-D dilation with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    4-D with shape `[batch, in_height, in_width, depth]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    3-D with shape `[filter_height, filter_width, depth]`.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, out_height, out_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The stride of the sliding window for each dimension of
		    the input tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The input stride for atrous morphological dilation.
		    Must be: `[1, rate_height, rate_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  3-D with shape `[filter_height, filter_width, depth]`.
	**/
	static public function dilation2d_backprop_filter(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of morphological 2-D dilation with respect to the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    4-D with shape `[batch, in_height, in_width, depth]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    3-D with shape `[filter_height, filter_width, depth]`.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, out_height, out_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The stride of the sliding window for each dimension of
		    the input tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The input stride for atrous morphological dilation.
		    Must be: `[1, rate_height, rate_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  4-D with shape `[batch, in_height, in_width, depth]`.
	**/
	static public function dilation2d_backprop_input(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes exponential linear: `exp(features) - 1` if < 0, `features` otherwise.
		
		See [Fast and Accurate Deep Network Learning by Exponential Linear Units (ELUs)
		](http://arxiv.org/abs/1511.07289)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function elu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs fractional average pooling on the input.
		
		Fractional average pooling is similar to Fractional max pooling in the pooling
		region generation step. The only difference is that after pooling regions are
		generated, a mean operation is performed instead of a max operation in each
		pooling region.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`.
		    4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: A list of `floats` that has length `>= 4`.
		    Pooling ratio for each dimension of `value`, currently only
		    supports row and col dimension and should be >= 1.0. For example, a valid
		    pooling ratio looks like [1.0, 1.44, 1.73, 1.0]. The first and last elements
		    must be 1.0 because we don't allow pooling on batch and channels
		    dimensions. 1.44 and 1.73 are pooling ratio on height and width dimensions
		    respectively.
		  pseudo_random: An optional `bool`. Defaults to `False`.
		    When set to True, generates the pooling sequence in a
		    pseudorandom fashion, otherwise, in a random fashion. Check paper [Benjamin
		    Graham, Fractional Max-Pooling](http://arxiv.org/abs/1412.6071) for
		    difference between pseudorandom and random.
		  overlapping: An optional `bool`. Defaults to `False`.
		    When set to True, it means when pooling, the values at the boundary
		    of adjacent pooling cells are used by both cells. For example:
		
		    `index  0  1  2  3  4`
		
		    `value  20 5  16 3  7`
		
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used twice.
		    The result would be [41/3, 26/3] for fractional avg pooling.
		  deterministic: An optional `bool`. Defaults to `False`.
		    When set to True, a fixed pooling region will be used when
		    iterating over a FractionalAvgPool node in the computation graph. Mainly used
		    in unit test to make FractionalAvgPool deterministic.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, row_pooling_sequence, col_pooling_sequence).
		
		  output: A `Tensor`. Has the same type as `value`. output tensor after fractional avg pooling.
		  row_pooling_sequence: A `Tensor` of type `int64`. row pooling sequence, needed to calculate gradient.
		  col_pooling_sequence: A `Tensor` of type `int64`. column pooling sequence, needed to calculate gradient.
	**/
	static public function fractional_avg_pool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs fractional max pooling on the input.
		
		Fractional max pooling is slightly different than regular max pooling.  In
		regular max pooling, you downsize an input set by taking the maximum value of
		smaller N x N subsections of the set (often 2x2), and try to reduce the set by
		a factor of N, where N is an integer.  Fractional max pooling, as you might
		expect from the word "fractional", means that the overall reduction ratio N
		does not have to be an integer.
		
		The sizes of the pooling regions are generated randomly but are fairly uniform.
		For example, let's look at the height dimension, and the constraints on the
		list of rows that will be pool boundaries.
		
		First we define the following:
		
		1.  input_row_length : the number of rows from the input set
		2.  output_row_length : which will be smaller than the input
		3.  alpha = input_row_length / output_row_length : our reduction ratio
		4.  K = floor(alpha)
		5.  row_pooling_sequence : this is the result list of pool boundary rows
		
		Then, row_pooling_sequence should satisfy:
		
		1.  a[0] = 0 : the first value of the sequence is 0
		2.  a[end] = input_row_length : the last value of the sequence is the size
		3.  K <= (a[i+1] - a[i]) <= K+1 : all intervals are K or K+1 size
		4.  length(row_pooling_sequence) = output_row_length+1
		
		For more details on fractional max pooling, see this paper:
		[Benjamin Graham, Fractional Max-Pooling](http://arxiv.org/abs/1412.6071)
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`.
		    4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: A list of `floats` that has length `>= 4`.
		    Pooling ratio for each dimension of `value`, currently only
		    supports row and col dimension and should be >= 1.0. For example, a valid
		    pooling ratio looks like [1.0, 1.44, 1.73, 1.0]. The first and last elements
		    must be 1.0 because we don't allow pooling on batch and channels
		    dimensions. 1.44 and 1.73 are pooling ratio on height and width dimensions
		    respectively.
		  pseudo_random: An optional `bool`. Defaults to `False`.
		    When set to True, generates the pooling sequence in a
		    pseudorandom fashion, otherwise, in a random fashion. Check paper [Benjamin
		    Graham, Fractional Max-Pooling](http://arxiv.org/abs/1412.6071) for
		    difference between pseudorandom and random.
		  overlapping: An optional `bool`. Defaults to `False`.
		    When set to True, it means when pooling, the values at the boundary
		    of adjacent pooling cells are used by both cells. For example:
		
		    `index  0  1  2  3  4`
		
		    `value  20 5  16 3  7`
		
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used twice.
		    The result would be [20, 16] for fractional max pooling.
		  deterministic: An optional `bool`. Defaults to `False`.
		    When set to True, a fixed pooling region will be used when
		    iterating over a FractionalMaxPool node in the computation graph. Mainly used
		    in unit test to make FractionalMaxPool deterministic.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, row_pooling_sequence, col_pooling_sequence).
		
		  output: A `Tensor`. Has the same type as `value`. output tensor after fractional max pooling.
		  row_pooling_sequence: A `Tensor` of type `int64`. row pooling sequence, needed to calculate gradient.
		  col_pooling_sequence: A `Tensor` of type `int64`. column pooling sequence, needed to calculate gradient.
	**/
	static public function fractional_max_pool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradient for batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  y_backprop: A `Tensor`. Must be one of the following types: `float32`.
		    A 4D Tensor for the gradient with respect to y.
		  x: A `Tensor`. Must have the same type as `y_backprop`.
		    A 4D Tensor for input data.
		  scale: A `Tensor`. Must have the same type as `y_backprop`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  reserve_space_1: A `Tensor`. Must have the same type as `y_backprop`.
		    A 1D Tensor for the computed batch mean, to be reused
		    in the gradient computation.
		  reserve_space_2: A `Tensor`. Must have the same type as `y_backprop`.
		    A 1D Tensor for the computed batch variance (inverted variance
		    in the cuDNN case), to be used in the gradient computation.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string`. Defaults to `"NHWC"`.
		    The data format for y_backprop, x, x_backprop.
		    Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (x_backprop, scale_backprop, offset_backprop, reserve_space_3, reserve_space_4).
		
		  x_backprop: A `Tensor`. Has the same type as `y_backprop`. A 4D Tensor for the gradient with respect to x.
		  scale_backprop: A `Tensor`. Has the same type as `y_backprop`. A 1D Tensor for the gradient with respect to scale.
		  offset_backprop: A `Tensor`. Has the same type as `y_backprop`. A 1D Tensor for the gradient with respect to offset.
		  reserve_space_3: A `Tensor`. Has the same type as `y_backprop`. Unused placeholder to match the mean input in FusedBatchNorm.
		  reserve_space_4: A `Tensor`. Has the same type as `y_backprop`. Unused placeholder to match the variance input
		    in FusedBatchNorm.
	**/
	static public function fused_batch_norm_grad(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs a padding as a preprocess during a convolution.
		
		Similar to FusedResizeAndPadConv2d, this op allows for an optimized
		implementation where the spatial padding transformation stage is fused with the
		im2col lookup, but in this case without the bilinear filtering required for
		resizing. Fusing the padding prevents the need to write out the intermediate
		results as whole tensors, reducing memory pressure, and we can get some latency
		gains by merging the transformation calculations.
		The data_format attribute for Conv2D isn't supported by this op, and 'NHWC'
		order is used instead.
		Internally this op uses a single per-graph scratch buffer, which means that it
		will block if multiple versions are being run in parallel. This is because this
		operator is primarily an optimization to minimize memory usage.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`.
		    4-D with shape `[batch, in_height, in_width, in_channels]`.
		  paddings: A `Tensor` of type `int32`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  filter: A `Tensor`. Must have the same type as `input`. 4-D with shape
		    `[filter_height, filter_width, in_channels, out_channels]`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		  strides: A list of `ints`.
		    1-D of length 4.  The stride of the sliding window for each dimension
		    of `input`. Must be in the same order as the dimension specified with format.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fused_pad_conv2d(input:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs a resize and padding as a preprocess during a convolution.
		
		It's often possible to do spatial transformations more efficiently as part of
		the packing stage of a convolution, so this op allows for an optimized
		implementation where these stages are fused together. This prevents the need to
		write out the intermediate results as whole tensors, reducing memory pressure,
		and we can get some latency gains by merging the transformation calculations.
		The data_format attribute for Conv2D isn't supported by this op, and defaults to
		'NHWC' order.
		Internally this op uses a single per-graph scratch buffer, which means that it
		will block if multiple versions are being run in parallel. This is because this
		operator is primarily an optimization to minimize memory usage.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`.
		    4-D with shape `[batch, in_height, in_width, in_channels]`.
		  size: A `Tensor` of type `int32`.
		    A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  paddings: A `Tensor` of type `int32`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  filter: A `Tensor`. Must have the same type as `input`. 4-D with shape
		    `[filter_height, filter_width, in_channels, out_channels]`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		  strides: A list of `ints`.
		    1-D of length 4.  The stride of the sliding window for each dimension
		    of `input`. Must be in the same order as the dimension specified with format.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  resize_align_corners: An optional `bool`. Defaults to `False`.
		    If true, rescale input by (new_height - 1) / (height - 1),
		    which exactly aligns the 4 corners of images and resized images. If false, rescale
		    by new_height / height. Treat similarly the width dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fused_resize_and_pad_conv2d(input:Dynamic, size:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?resize_align_corners:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Says whether the targets are in the top `K` predictions.
		
		This outputs a `batch_size` bool array, an entry `out[i]` is `true` if the
		prediction for the target class is among the top `k` predictions among
		all predictions for example `i`. Note that the behavior of `InTopK` differs
		from the `TopK` op in its handling of ties; if multiple classes have the
		same prediction value and straddle the top-`k` boundary, all of those
		classes are considered to be in the top `k`.
		
		More formally, let
		
		  \\(predictions_i\\) be the predictions for all classes for example `i`,
		  \\(targets_i\\) be the target class for example `i`,
		  \\(out_i\\) be the output for example `i`,
		
		$$out_i = predictions_{i, targets_i} \in TopKIncludingTies(predictions_i)$$
		
		Args:
		  predictions: A `Tensor` of type `float32`.
		    A `batch_size` x `classes` tensor.
		  targets: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `batch_size` vector of class ids.
		  k: An `int`. Number of top elements to look at for computing precision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`. Computed Precision at `k` as a `bool Tensor`.
	**/
	static public function in_top_k(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		L2 Loss.
		
		Computes half the L2 norm of a tensor without the `sqrt`:
		
		    output = sum(t ** 2) / 2
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    Typically 2-D, but may have any dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`. 0-D.
	**/
	static public function l2_loss(t:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Local Response Normalization.
		
		The 4-D `input` tensor is treated as a 3-D array of 1-D vectors (along the last
		dimension), and each vector is normalized independently.  Within a given vector,
		each component is divided by the weighted, squared sum of inputs within
		`depth_radius`.  In detail,
		
		    sqr_sum[a, b, c, d] =
		        sum(input[a, b, c, d - depth_radius : d + depth_radius + 1] ** 2)
		    output = input / (bias + alpha * sqr_sum) ** beta
		
		For details, see [Krizhevsky et al., ImageNet classification with deep
		convolutional neural networks (NIPS 2012)](http://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks).
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `half`.
		    4-D.
		  depth_radius: An optional `int`. Defaults to `5`.
		    0-D.  Half-width of the 1-D normalization window.
		  bias: An optional `float`. Defaults to `1`.
		    An offset (usually positive to avoid dividing by 0).
		  alpha: An optional `float`. Defaults to `1`.
		    A scale factor, usually positive.
		  beta: An optional `float`. Defaults to `0.5`. An exponent.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function lrn(input:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs 3D max pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`.
		    Shape `[batch, depth, rows, cols, channels]` tensor to pool over.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. The max pooled output tensor.
	**/
	static public function max_pool3d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs max pooling on the input and outputs both max values and indices.
		
		The indices in `argmax` are flattened, so that a maximum value at position
		`[b, y, x, c]` becomes flattened index
		`((b * height + y) * width + x) * channels + c`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    4-D with shape `[batch, height, width, channels]`.  Input to pool over.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  Targmax: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, argmax).
		
		  output: A `Tensor`. Has the same type as `input`. The max pooled output tensor.
		  argmax: A `Tensor` of type `Targmax`. 4-D.  The flattened indices of the max values chosen for each output.
	**/
	static public function max_pool_with_argmax(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?Targmax:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Computes rectified linear: `max(features, 0)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function relu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softplus: `log(exp(features) + 1)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function softplus(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softsign: `features / (abs(features) + 1)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function softsign(features:Dynamic, ?name:Dynamic):Dynamic;
}