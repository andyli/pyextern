/* This file is generated, do not edit! */
package tensorflow.python.ops.nn_ops;
@:pythonImport("tensorflow.python.ops.nn_ops") extern class Nn_ops_Module {
	/**
		Performs average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
	**/
	static public function AvgPool(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs 3D average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize` window in
		`value`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
	**/
	static public function AvgPool3D(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of average pooling function.
		
		Args:
		  orig_input_shape: A `Tensor` of type `int32`.
		    The original input dimensions.
		  grad: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
	static public function AvgPool3DGrad(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of the average pooling function.
		
		Args:
		  orig_input_shape: A `Tensor` of type `int32`.
		    1-D.  Shape of the original input to `avg_pool`.
		  grad: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
	**/
	static public function AvgPoolGrad(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		This op is deprecated. Prefer `tf.nn.batch_normalization`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
	static public function BatchNormWithGlobalNormalization(t:Dynamic, m:Dynamic, v:Dynamic, beta:Dynamic, gamma:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradients for batch normalization.
		
		This op is deprecated. See `tf.nn.batch_normalization`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		
		  dx: A `Tensor`. Has the same type as `t`.
		  dm: A `Tensor`. Has the same type as `t`.
		  dv: A `Tensor`. Has the same type as `t`.
		  db: A `Tensor`. Has the same type as `t`.
		  dg: A `Tensor`. Has the same type as `t`.
	**/
	static public function BatchNormWithGlobalNormalizationGrad(t:Dynamic, m:Dynamic, v:Dynamic, gamma:Dynamic, backprop:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds `bias` to `value`.
		
		This is a special case of `tf.add` where `bias` is restricted to be 1-D.
		Broadcasting is supported, so `value` may have any number of dimensions.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
	**/
	static public function BiasAdd(value:Dynamic, bias:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The backward operation for "BiasAdd" on the "bias" tensor.
		
		It accumulates all the values from out_backprop into the feature dimension.
		For NHWC data format, the feature dimension is the last. For NCHW data format,
		the feature dimension is the third-to-last.
		
		Args:
		  out_backprop: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
	**/
	static public function BiasAddGrad(out_backprop:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds `bias` to `value`.
		
		This is a deprecated version of BiasAdd and will be soon removed.
		
		This is a special case of `tf.add` where `bias` is restricted to be 1-D.
		Broadcasting is supported, so `value` may have any number of dimensions.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Any number of dimensions.
		  bias: A `Tensor`. Must have the same type as `value`.
		    1-D with size the last dimension of `value`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
	**/
	static public function BiasAddV1(value:Dynamic, bias:Dynamic, ?name:Dynamic):Dynamic;
	static public var CONV_TRANSPOSE_OPS : Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`.
		    A 4-D tensor. The dimension order is interpreted according to the value
		    of `data_format`, see below for details.
		  filter: A `Tensor`. Must have the same type as `input`.
		    A 4-D tensor of shape
		    `[filter_height, filter_width, in_channels, out_channels]`
		  strides: A list of `ints`.
		    1-D tensor of length 4.  The stride of the sliding window for each
		    dimension of `input`. The dimension order is determined by the value of
		    `data_format`, see below for details.
		  padding: A `string` from: `"SAME", "VALID", "EXPLICIT"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  explicit_paddings: An optional list of `ints`. Defaults to `[]`.
		    If `padding` is `"EXPLICIT"`, the list of explicit padding amounts. For the ith
		    dimension, the amount of padding inserted before and after the dimension is
		    `explicit_paddings[2 * i]` and `explicit_paddings[2 * i + 1]`, respectively. If
		    `padding` is not `"EXPLICIT"`, `explicit_paddings` must be empty.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Conv2D(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
		  padding: A `string` from: `"SAME", "VALID", "EXPLICIT"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  explicit_paddings: An optional list of `ints`. Defaults to `[]`.
		    If `padding` is `"EXPLICIT"`, the list of explicit padding amounts. For the ith
		    dimension, the amount of padding inserted before and after the dimension is
		    `explicit_paddings[2 * i]` and `explicit_paddings[2 * i + 1]`, respectively. If
		    `padding` is not `"EXPLICIT"`, `explicit_paddings` must be empty.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Conv2DBackpropFilter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`,
		    where `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`.
		    4-D with shape
		    `[filter_height, filter_width, in_channels, out_channels]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    4-D with shape `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution. Must be in the same order as the dimension specified with
		    format.
		  padding: A `string` from: `"SAME", "VALID", "EXPLICIT"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  explicit_paddings: An optional list of `ints`. Defaults to `[]`.
		    If `padding` is `"EXPLICIT"`, the list of explicit padding amounts. For the ith
		    dimension, the amount of padding inserted before and after the dimension is
		    `explicit_paddings[2 * i]` and `explicit_paddings[2 * i + 1]`, respectively. If
		    `padding` is not `"EXPLICIT"`, `explicit_paddings` must be empty.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function Conv2DBackpropInput(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 3-D convolution given 5-D `input` and `filter` tensors.
		
		In signal processing, cross-correlation is a measure of similarity of
		two waveforms as a function of a time-lag applied to one of them. This
		is also known as a sliding dot product or sliding inner-product.
		
		Our Conv3D implements a form of cross-correlation.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Conv3D(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Conv3DBackpropFilter(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Conv3DBackpropFilterV2(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Conv3DBackpropInput(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    An integer vector representing the tensor shape of `input`,
		    where `input` is a 5-D
		    `[batch, depth, rows, cols, in_channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function Conv3DBackpropInputV2(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the dimension index in the destination data format given the one in
		
		the source data format.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor with each element as a dimension index in source data format.
		    Must be in the range [-4, 4).
		  src_format: An optional `string`. Defaults to `"NHWC"`.
		    source data format.
		  dst_format: An optional `string`. Defaults to `"NCHW"`.
		    destination data format.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function DataFormatDimMap(x:Dynamic, ?src_format:Dynamic, ?dst_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Permute input tensor from `src_format` to `dst_format`.
		
		Input tensor must be a vector of size 4, or a 4x2 tensor.
		
		For example, with `src_format` of `NHWC`, `dst_format` of `NCHW`, and inputs:
		```
		[1, 2, 3, 4]
		```
		and
		```
		[[1, 2, 3, 4],
		 [5, 6, 7, 8]]
		```
		, the outputs will be (respectively):
		```
		[1, 4, 2, 3]
		```
		and
		```
		[[1, 4, 2, 3],
		 [5, 8, 6, 7]]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Vector of size 4 or Tensor of shape (4, 2) in source data format.
		  src_format: An optional `string`. Defaults to `"NHWC"`.
		    source data format.
		  dst_format: An optional `string`. Defaults to `"NCHW"`.
		    destination data format.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function DataFormatVecPermute(x:Dynamic, ?src_format:Dynamic, ?dst_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2-D depthwise convolution given 4-D `input` and `filter` tensors.
		
		Given an input tensor of shape `[batch, in_height, in_width, in_channels]`
		and a filter / kernel tensor of shape
		`[filter_height, filter_width, in_channels, channel_multiplier]`, containing
		`in_channels` convolutional filters of depth 1, `depthwise_conv2d` applies
		a different filter to each input channel (expanding from 1 channel to
		`channel_multiplier` channels for each), then concatenates the results
		together. Thus, the output has `in_channels * channel_multiplier` channels.
		
		```
		for k in 0..in_channels-1
		  for q in 0..channel_multiplier-1
		    output[b, i, j, k * channel_multiplier + q] =
		      sum_{di, dj} input[b, strides[1] * i + di, strides[2] * j + dj, k] *
		                        filter[di, dj, k, q]
		```
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertices strides, `strides = [1, stride, stride, 1]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  filter: A `Tensor`. Must have the same type as `input`.
		  strides: A list of `ints`.
		    1-D of length 4.  The stride of the sliding window for each dimension
		    of `input`.
		  padding: A `string` from: `"SAME", "VALID", "EXPLICIT"`.
		    The type of padding algorithm to use.
		  explicit_paddings: An optional list of `ints`. Defaults to `[]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function DepthwiseConv2dNative(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
		  padding: A `string` from: `"SAME", "VALID", "EXPLICIT"`.
		    The type of padding algorithm to use.
		  explicit_paddings: An optional list of `ints`. Defaults to `[]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function DepthwiseConv2dNativeBackpropFilter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`, based
		    on `data_format`.  For example, if `data_format` is 'NHWC' then
		     `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
		  padding: A `string` from: `"SAME", "VALID", "EXPLICIT"`.
		    The type of padding algorithm to use.
		  explicit_paddings: An optional list of `ints`. Defaults to `[]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function DepthwiseConv2dNativeBackpropInput(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function Dilation2D(input:Dynamic, filter:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of morphological 2-D dilation with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function Dilation2DBackpropFilter(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of morphological 2-D dilation with respect to the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function Dilation2DBackpropInput(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the exponential linear function.
		
		The ELU function is defined as:
		
		 * $ e ^ x - 1 $ if $ x < 0 $
		 * $ x $ if $ x >= 0 $
		
		Examples:
		
		>>> tf.nn.elu(1.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		>>> tf.nn.elu(0.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.0>
		>>> tf.nn.elu(-1000.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=-1.0>
		
		See [Fast and Accurate Deep Network Learning by Exponential Linear Units (ELUs)
		](http://arxiv.org/abs/1511.07289)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function Elu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients for the exponential linear (Elu) operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding Elu operation.
		  outputs: A `Tensor`. Must have the same type as `gradients`.
		    The outputs of the corresponding Elu operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function EluGrad(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
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
		
		  output: A `Tensor`. Has the same type as `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
	**/
	static public function FractionalAvgPool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function FractionalAvgPoolGrad(orig_input_tensor_shape:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic):Dynamic;
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
		
		  output: A `Tensor`. Has the same type as `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
	**/
	static public function FractionalMaxPool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function FractionalMaxPoolGrad(orig_input:Dynamic, orig_output:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic):Dynamic;
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
		  exponential_avg_factor: An optional `float`. Defaults to `1`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    The data format for x and y. Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, batch_mean, batch_variance, reserve_space_1, reserve_space_2).
		
		  y: A `Tensor`. Has the same type as `x`.
		  batch_mean: A `Tensor`. Has the same type as `x`.
		  batch_variance: A `Tensor`. Has the same type as `x`.
		  reserve_space_1: A `Tensor`. Has the same type as `x`.
		  reserve_space_2: A `Tensor`. Has the same type as `x`.
	**/
	static public function FusedBatchNorm(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?exponential_avg_factor:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
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
		    When is_training is True, a 1D Tensor for the computed batch
		    mean to be reused in gradient computation. When is_training is
		    False, a 1D Tensor for the population mean to be reused in both
		    1st and 2nd order gradient computation.
		  reserve_space_2: A `Tensor`. Must have the same type as `y_backprop`.
		    When is_training is True, a 1D Tensor for the computed batch
		    variance (inverted variance in the cuDNN case) to be reused in
		    gradient computation. When is_training is False, a 1D Tensor
		    for the population variance to be reused in both 1st and 2nd
		    order gradient computation.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    The data format for y_backprop, x, x_backprop.
		    Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (x_backprop, scale_backprop, offset_backprop, reserve_space_3, reserve_space_4).
		
		  x_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  scale_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  offset_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  reserve_space_3: A `Tensor`. Has the same type as `y_backprop`.
		  reserve_space_4: A `Tensor`. Has the same type as `y_backprop`.
	**/
	static public function FusedBatchNormGrad(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradient for batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  y_backprop: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    A 4D Tensor for the gradient with respect to y.
		  x: A `Tensor`. Must have the same type as `y_backprop`.
		    A 4D Tensor for input data.
		  scale: A `Tensor` of type `float32`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  reserve_space_1: A `Tensor`. Must be one of the following types: `float32`.
		    When is_training is True, a 1D Tensor for the computed batch
		    mean to be reused in gradient computation. When is_training is
		    False, a 1D Tensor for the population mean to be reused in both
		    1st and 2nd order gradient computation.
		  reserve_space_2: A `Tensor`. Must have the same type as `reserve_space_1`.
		    When is_training is True, a 1D Tensor for the computed batch
		    variance (inverted variance in the cuDNN case) to be reused in
		    gradient computation. When is_training is False, a 1D Tensor
		    for the population variance to be reused in both 1st and 2nd
		    order gradient computation.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    The data format for y_backprop, x, x_backprop.
		    Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (x_backprop, scale_backprop, offset_backprop, reserve_space_3, reserve_space_4).
		
		  x_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  scale_backprop: A `Tensor`. Has the same type as `reserve_space_1`.
		  offset_backprop: A `Tensor`. Has the same type as `reserve_space_1`.
		  reserve_space_3: A `Tensor`. Has the same type as `reserve_space_1`.
		  reserve_space_4: A `Tensor`. Has the same type as `reserve_space_1`.
	**/
	static public function FusedBatchNormGradV2(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradient for batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  y_backprop: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    A 4D Tensor for the gradient with respect to y.
		  x: A `Tensor`. Must have the same type as `y_backprop`.
		    A 4D Tensor for input data.
		  scale: A `Tensor` of type `float32`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  reserve_space_1: A `Tensor`. Must be one of the following types: `float32`.
		    When is_training is True, a 1D Tensor for the computed batch
		    mean to be reused in gradient computation. When is_training is
		    False, a 1D Tensor for the population mean to be reused in both
		    1st and 2nd order gradient computation.
		  reserve_space_2: A `Tensor`. Must have the same type as `reserve_space_1`.
		    When is_training is True, a 1D Tensor for the computed batch
		    variance (inverted variance in the cuDNN case) to be reused in
		    gradient computation. When is_training is False, a 1D Tensor
		    for the population variance to be reused in both 1st and 2nd
		    order gradient computation.
		  reserve_space_3: A `Tensor`. Must have the same type as `reserve_space_1`.
		    When is_training is True, a 1D Tensor for some intermediate results to be reused
		    in gradient computation. When is_training is False, a dummy empty Tensor will be
		    created.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NDHWC", "NCDHW"`. Defaults to `"NHWC"`.
		    The data format for y_backprop, x, x_backprop.
		    Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (x_backprop, scale_backprop, offset_backprop, reserve_space_4, reserve_space_5).
		
		  x_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  scale_backprop: A `Tensor`. Has the same type as `reserve_space_1`.
		  offset_backprop: A `Tensor`. Has the same type as `reserve_space_1`.
		  reserve_space_4: A `Tensor`. Has the same type as `reserve_space_1`.
		  reserve_space_5: A `Tensor`. Has the same type as `reserve_space_1`.
	**/
	static public function FusedBatchNormGradV3(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, reserve_space_3:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    A 4D Tensor for input data.
		  scale: A `Tensor`. Must be one of the following types: `float32`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  offset: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for offset, to shift to the normalized x.
		  mean: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for population mean. Used for inference only;
		    must be empty for training.
		  variance: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for population variance. Used for inference only;
		    must be empty for training.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  exponential_avg_factor: An optional `float`. Defaults to `1`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    The data format for x and y. Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, batch_mean, batch_variance, reserve_space_1, reserve_space_2).
		
		  y: A `Tensor`. Has the same type as `x`.
		  batch_mean: A `Tensor`. Has the same type as `scale`.
		  batch_variance: A `Tensor`. Has the same type as `scale`.
		  reserve_space_1: A `Tensor`. Has the same type as `scale`.
		  reserve_space_2: A `Tensor`. Has the same type as `scale`.
	**/
	static public function FusedBatchNormV2(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?exponential_avg_factor:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    A 4D Tensor for input data.
		  scale: A `Tensor`. Must be one of the following types: `float32`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  offset: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for offset, to shift to the normalized x.
		  mean: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for population mean. Used for inference only;
		    must be empty for training.
		  variance: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for population variance. Used for inference only;
		    must be empty for training.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  exponential_avg_factor: An optional `float`. Defaults to `1`.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NDHWC", "NCDHW"`. Defaults to `"NHWC"`.
		    The data format for x and y. Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, batch_mean, batch_variance, reserve_space_1, reserve_space_2, reserve_space_3).
		
		  y: A `Tensor`. Has the same type as `x`.
		  batch_mean: A `Tensor`. Has the same type as `scale`.
		  batch_variance: A `Tensor`. Has the same type as `scale`.
		  reserve_space_1: A `Tensor`. Has the same type as `scale`.
		  reserve_space_2: A `Tensor`. Has the same type as `scale`.
		  reserve_space_3: A `Tensor`. Has the same type as `scale`.
	**/
	static public function FusedBatchNormV3(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?exponential_avg_factor:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
	static public function FusedPadConv2D(input:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
		    If true, the centers of the 4 corner pixels of the input and output tensors are
		    aligned, preserving the values at the corner pixels. Defaults to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function FusedResizeAndPadConv2D(input:Dynamic, size:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?resize_align_corners:Dynamic, ?name:Dynamic):Dynamic;
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
		  A `Tensor` of type `bool`.
	**/
	static public function InTopK(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
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
		  k: A `Tensor`. Must have the same type as `targets`.
		    Number of top elements to look at for computing precision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function InTopKV2(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves a batch of isotonic regression problems.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    A (batch_size, dim)-tensor holding a batch of inputs.
		  output_dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    Dtype of output.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, segments).
		
		  output: A `Tensor` of type `output_dtype`.
		  segments: A `Tensor` of type `int32`.
	**/
	static public function IsotonicRegression(input:Dynamic, ?output_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		L2 Loss.
		
		Computes half the L2 norm of a tensor without the `sqrt`:
		
		    output = sum(t ** 2) / 2
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Typically 2-D, but may have any dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function L2Loss(t:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
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
	static public function LRN(input:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradients for Local Response Normalization.
		
		Args:
		  input_grads: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
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
		  A `Tensor`. Has the same type as `input_grads`.
	**/
	static public function LRNGrad(input_grads:Dynamic, input_image:Dynamic, output_image:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes rectified linear: `max(features, features * alpha)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  alpha: An optional `float`. Defaults to `0.2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function LeakyRelu(features:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes rectified linear gradients for a LeakyRelu operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding LeakyRelu operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding LeakyRelu operation,
		    OR the outputs of that operation (both work equivalently).
		  alpha: An optional `float`. Defaults to `0.2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function LeakyReluGrad(gradients:Dynamic, features:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes log softmax activations.
		
		For each batch `i` and class `j` we have
		
		    logsoftmax[i, j] = logits[i, j] - log(sum(exp(logits[i])))
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    2-D with shape `[batch_size, num_classes]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`.
	**/
	static public function LogSoftmax(logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs max pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `qint8`.
		    4-D input to pool over.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID", "EXPLICIT"`.
		    The type of padding algorithm to use.
		  explicit_paddings: An optional list of `ints`. Defaults to `[]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MaxPool(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs 3D max pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
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
	**/
	static public function MaxPool3D(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of 3D max pooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
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
	static public function MaxPool3DGrad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function MaxPool3DGradGrad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		  padding: A `string` from: `"SAME", "VALID", "EXPLICIT"`.
		    The type of padding algorithm to use.
		  explicit_paddings: An optional list of `ints`. Defaults to `[]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
	**/
	static public function MaxPoolGrad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function MaxPoolGradGrad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    4-D.  Gradients of gradients w.r.t. the input of `max_pool`.
		  ksize: A `Tensor` of type `int32`.
		    The size of the window for each dimension of the input tensor.
		  strides: A `Tensor` of type `int32`.
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
	**/
	static public function MaxPoolGradGradV2(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		  include_batch_in_index: An optional `bool`. Defaults to `False`.
		    Whether to include batch dimension in flattened index of `argmax`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MaxPoolGradGradWithArgmax(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?include_batch_in_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    4-D.  Gradients w.r.t. the output of `max_pool`.
		  ksize: A `Tensor` of type `int32`.
		    The size of the window for each dimension of the input tensor.
		  strides: A `Tensor` of type `int32`.
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
	**/
	static public function MaxPoolGradV2(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		  include_batch_in_index: An optional `bool`. Defaults to `False`.
		    Whether to include batch dimension in flattened index of `argmax`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MaxPoolGradWithArgmax(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?include_batch_in_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs max pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `qint8`.
		    4-D input to pool over.
		  ksize: A `Tensor` of type `int32`.
		    The size of the window for each dimension of the input tensor.
		  strides: A `Tensor` of type `int32`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MaxPoolV2(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs max pooling on the input and outputs both max values and indices.
		
		The indices in `argmax` are flattened, so that a maximum value at position
		`[b, y, x, c]` becomes flattened index:
		`(y * width + x) * channels + c` if `include_batch_in_index` is False;
		`((b * height + y) * width + x) * channels + c` if `include_batch_in_index` is True.
		
		The indices returned are always in `[0, height) x [0, width)` before flattening,
		even if padding is involved and the mathematically correct answer is outside
		(either negative or too large).  This is a bug, but fixing it is difficult to do
		in a safe backwards compatible way, especially due to flattening.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D with shape `[batch, height, width, channels]`.  Input to pool over.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  Targmax: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  include_batch_in_index: An optional `bool`. Defaults to `False`.
		    Whether to include batch dimension in flattened index of `argmax`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, argmax).
		
		  output: A `Tensor`. Has the same type as `input`.
		  argmax: A `Tensor` of type `Targmax`.
	**/
	static public function MaxPoolWithArgmax(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?Targmax:Dynamic, ?include_batch_in_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds values of the `n`-th order statistic for the last dimension.
		
		If the input is a vector (rank-1), finds the entries which is the nth-smallest
		value in the vector and outputs their values as scalar tensor.
		
		For matrices (resp. higher rank input), computes the entries which is the
		nth-smallest value in each row (resp. vector along the last dimension). Thus,
		
		    values.shape = input.shape[:-1]
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    1-D or higher with last dimension at least `n+1`.
		  n: A `Tensor` of type `int32`.
		    0-D. Position of sorted vector to select along the last dimension (along
		    each row for matrices). Valid range of n is `[0, input.shape[:-1])`
		  reverse: An optional `bool`. Defaults to `False`.
		    When set to True, find the nth-largest value in the vector and vice
		    versa.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function NthElement(input:Dynamic, n:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces the average pool of the input tensor for quantized types.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
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
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedAvgPool(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Quantized Batch normalization.
		
		This op is deprecated and will be removed in the future. Prefer
		`tf.nn.batch_normalization`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
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
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
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
	static public function QuantizedBatchNormWithGlobalNormalization(t:Dynamic, t_min:Dynamic, t_max:Dynamic, m:Dynamic, m_min:Dynamic, m_max:Dynamic, v:Dynamic, v_min:Dynamic, v_max:Dynamic, beta:Dynamic, beta_min:Dynamic, beta_max:Dynamic, gamma:Dynamic, gamma_min:Dynamic, gamma_max:Dynamic, out_type:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds Tensor 'bias' to Tensor 'input' for Quantized types.
		
		Broadcasts the values of bias on dimensions 0..N-2 of 'input'.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    A 1D bias Tensor with size matching the last dimension of 'input'.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  min_bias: A `Tensor` of type `float32`.
		    The float value that the lowest quantized bias value represents.
		  max_bias: A `Tensor` of type `float32`.
		    The float value that the highest quantized bias value represents.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_out, max_out).
		
		  output: A `Tensor` of type `out_type`.
		  min_out: A `Tensor` of type `float32`.
		  max_out: A `Tensor` of type `float32`.
	**/
	static public function QuantizedBiasAdd(input:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_bias:Dynamic, max_bias:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2D convolution given quantized 4D input and filter tensors.
		
		The inputs are quantized tensors where the lowest value represents the real
		number of the associated minimum, and the highest represents the maximum.
		This means that you can only interpret the quantized output in the same way, by
		taking the returned minimum and maximum values into account.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
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
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2D(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DAndRelu(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DAndReluAndRequantize(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DAndRequantize(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes QuantizedConv2D per channel.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original filter tensor.
		  min_input: A `Tensor` of type `float32`.
		    The minimum value of the input tensor
		  max_input: A `Tensor` of type `float32`.
		    The maximum value of the input tensor.
		  min_filter: A `Tensor` of type `float32`.
		    The minimum value of the filter tensor.
		  max_filter: A `Tensor` of type `float32`.
		    The maximum value of the filter tensor.
		  strides: A list of `ints`. list of stride values.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    The quantized type of output tensor that needs to be converted.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    list of dilation values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DPerChannel(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor` of type `float32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DWithBias(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor` of type `float32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DWithBiasAndRelu(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DWithBiasAndReluAndRequantize(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DWithBiasAndRequantize(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  summand: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_summand: A `Tensor` of type `float32`.
		  max_summand: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DWithBiasSignedSumAndReluAndRequantize(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, summand:Dynamic, min_summand:Dynamic, max_summand:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor` of type `float32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  summand: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DWithBiasSumAndRelu(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, summand:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  summand: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_summand: A `Tensor` of type `float32`.
		  max_summand: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedConv2DWithBiasSumAndReluAndRequantize(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, summand:Dynamic, min_summand:Dynamic, max_summand:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes quantized depthwise Conv2D.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original filter tensor.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the minimum quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the maximum quantized filter value represents.
		  strides: A list of `ints`. List of stride values.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    The type of the output.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    List of dilation values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedDepthwiseConv2D(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes quantized depthwise Conv2D with Bias.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original filter tensor.
		  bias: A `Tensor` of type `float32`. The original bias tensor.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the minimum quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the maximum quantized filter value represents.
		  strides: A list of `ints`. List of stride values.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    The type of the output.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    List of dilation values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedDepthwiseConv2DWithBias(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes quantized depthwise Conv2D with Bias and Relu.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original filter tensor.
		  bias: A `Tensor` of type `float32`. The original bias tensor.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the minimum quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the maximum quantized filter value represents.
		  strides: A list of `ints`. List of stride values.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    The type of the output.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    List of dilation values.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedDepthwiseConv2DWithBiasAndRelu(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes quantized depthwise Conv2D with Bias, Relu and Requantize.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original filter tensor.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		    The original bias tensor.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the minimum quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the maximum quantized filter value represents.
		  min_freezed_output: A `Tensor` of type `float32`.
		    The minimum float value of the output tensor.
		  max_freezed_output: A `Tensor` of type `float32`.
		    The maximum float value of the output tensor.
		  strides: A list of `ints`. List of stride values.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		    The type of the output.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    List of dilation values.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedDepthwiseConv2DWithBiasAndReluAndRequantize(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs a quantized matrix multiplication of `a` by the matrix `b` with bias
		add.
		
		  The inputs must be two-dimensional matrices and 1D bias vector. And the inner
		  dimension of `a` (after being transposed if `transpose_a` is non-zero) must
		  match the outer dimension of `b` (after being transposed if `transposed_b` is
		  non-zero). Then do broadcast add operation with bias values on the matrix
		  multiplication result. The bias size must match inner dimension of `b`.
		
		  Args:
		    a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied. Must be a two-dimensional tensor of type `quint8`.
		    b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied and must be a two-dimensional tensor of type `qint8`.
		    bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		      A 1D bias tensor with size matching inner dimension of `b` (after being
		      transposed if `transposed_b` is non-zero).
		    min_a: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `a` value represents.
		    max_a: A `Tensor` of type `float32`.
		      The float value that the highest quantized `a` value represents.
		    min_b: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `b` value represents.
		    max_b: A `Tensor` of type `float32`.
		      The float value that the highest quantized `b` value represents.
		    Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    transpose_a: An optional `bool`. Defaults to `False`.
		      If true, `a` is transposed before multiplication.
		    transpose_b: An optional `bool`. Defaults to `False`.
		      If true, `b` is transposed before multiplication.
		    input_quant_mode: An optional `string` from: `"MIN_FIRST", "SCALED"`. Defaults to `"MIN_FIRST"`.
		      Input data quantization mode. Either MIN_FIRST(default) or SCALED.
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (out, min_out, max_out).
		
		    out: A `Tensor` of type `Toutput`.
		    min_out: A `Tensor` of type `float32`.
		    max_out: A `Tensor` of type `float32`.
		  
	**/
	static public function QuantizedMatMulWithBias(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?input_quant_mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_a: A `Tensor` of type `float32`.
		  max_a: A `Tensor` of type `float32`.
		  min_b: A `Tensor` of type `float32`.
		  max_b: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  Toutput: A `tf.DType` from: `tf.float32`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		  transpose_b: An optional `bool`. Defaults to `False`.
		  input_quant_mode: An optional `string` from: `"MIN_FIRST", "SCALED"`. Defaults to `"MIN_FIRST"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Toutput`.
	**/
	static public function QuantizedMatMulWithBiasAndDequantize(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?input_quant_mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Perform a quantized matrix multiplication of  `a` by the matrix `b` with bias
		add and relu fusion.
		
		  The inputs must be two-dimensional matrices and 1D bias vector. And the inner
		  dimension of `a` (after being transposed if `transpose_a` is non-zero) must
		  match the outer dimension of `b` (after being transposed if `transposed_b` is
		  non-zero). Then do broadcast add operation with bias values on the matrix
		  multiplication result. The bias size must match inner dimension of `b`. Then do
		  relu activation to get non-negative result.
		
		  Args:
		    a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied. Must be a two-dimensional tensor of type `quint8`.
		    b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied and must be a two-dimensional tensor of type `qint8`.
		    bias: A `Tensor` of type `float32`.
		      A 1D bias tensor with size matching with inner dimension of `b` (after being
		      transposed if `transposed_b` is non-zero).
		    min_a: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `a` value represents.
		    max_a: A `Tensor` of type `float32`.
		      The float value that the highest quantized `a` value represents.
		    min_b: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `b` value represents.
		    max_b: A `Tensor` of type `float32`.
		      The float value that the highest quantized `b` value represents.
		    Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    transpose_a: An optional `bool`. Defaults to `False`.
		      If true, `a` is transposed before multiplication.
		    transpose_b: An optional `bool`. Defaults to `False`.
		      If true, `b` is transposed before multiplication.
		    input_quant_mode: An optional `string` from: `"MIN_FIRST", "SCALED"`. Defaults to `"MIN_FIRST"`.
		      Input data quantization mode. Either MIN_FIRST(default) or SCALED.
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (out, min_out, max_out).
		
		    out: A `Tensor` of type `Toutput`.
		    min_out: A `Tensor` of type `float32`.
		    max_out: A `Tensor` of type `float32`.
		  
	**/
	static public function QuantizedMatMulWithBiasAndRelu(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?input_quant_mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Perform a quantized matrix multiplication of  `a` by the matrix `b` with bias
		add and relu and requantize fusion.
		
		  The inputs must be two-dimensional matrices and 1D bias vector. And the inner
		  dimension of `a` (after being transposed if `transpose_a` is non-zero) must
		  match the outer dimension of `b` (after being transposed if `transposed_b` is
		  non-zero). Then do broadcast add operation with bias values on the matrix
		  multiplication result. The bias size must match inner dimension of `b`.  Then do
		  relu activation to get non-negative result. Then do requantize operation to get
		  final uint8 result.
		
		  Args:
		    a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied. Must be a two-dimensional tensor of type `quint8`.
		    b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied and must be a two-dimensional tensor of type `qint8`.
		    bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		      A 1D bias tensor with size matching with inner dimension of `b` (after being
		      transposed if `transposed_b` is non-zero).
		    min_a: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `a` value represents.
		    max_a: A `Tensor` of type `float32`.
		      The float value that the highest quantized `a` value represents.
		    min_b: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `b` value represents.
		    max_b: A `Tensor` of type `float32`.
		      The float value that the highest quantized `b` value represents.
		    min_freezed_output: A `Tensor` of type `float32`.
		      The float value that the highest quantized output value after requantize.
		    max_freezed_output: A `Tensor` of type `float32`.
		    Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		    transpose_a: An optional `bool`. Defaults to `False`.
		      If true, `a` is transposed before multiplication.
		    transpose_b: An optional `bool`. Defaults to `False`.
		      If true, `b` is transposed before multiplication.
		    input_quant_mode: An optional `string` from: `"MIN_FIRST", "SCALED"`. Defaults to `"MIN_FIRST"`.
		      Input data quantization mode. Either MIN_FIRST(default) or SCALED.
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (out, min_out, max_out).
		
		    out: A `Tensor` of type `Toutput`.
		    min_out: A `Tensor` of type `float32`.
		    max_out: A `Tensor` of type `float32`.
		  
	**/
	static public function QuantizedMatMulWithBiasAndReluAndRequantize(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?input_quant_mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_a: A `Tensor` of type `float32`.
		  max_a: A `Tensor` of type `float32`.
		  min_b: A `Tensor` of type `float32`.
		  max_b: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		  transpose_b: An optional `bool`. Defaults to `False`.
		  input_quant_mode: An optional `string` from: `"MIN_FIRST", "SCALED"`. Defaults to `"MIN_FIRST"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, min_out, max_out).
		
		  out: A `Tensor` of type `Toutput`.
		  min_out: A `Tensor` of type `float32`.
		  max_out: A `Tensor` of type `float32`.
	**/
	static public function QuantizedMatMulWithBiasAndRequantize(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?input_quant_mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces the max pool of the input tensor for quantized types.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
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
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function QuantizedMaxPool(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear: `max(features, 0)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		
		  activations: A `Tensor` of type `out_type`.
		  min_activations: A `Tensor` of type `float32`.
		  max_activations: A `Tensor` of type `float32`.
	**/
	static public function QuantizedRelu(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear 6: `min(max(features, 0), 6)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		
		  activations: A `Tensor` of type `out_type`.
		  min_activations: A `Tensor` of type `float32`.
		  max_activations: A `Tensor` of type `float32`.
	**/
	static public function QuantizedRelu6(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear X: `min(max(features, 0), max_value)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  max_value: A `Tensor` of type `float32`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		
		  activations: A `Tensor` of type `out_type`.
		  min_activations: A `Tensor` of type `float32`.
		  max_activations: A `Tensor` of type `float32`.
	**/
	static public function QuantizedReluX(features:Dynamic, max_value:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes rectified linear: `max(features, 0)`.
		
		See: https://en.wikipedia.org/wiki/Rectifier_(neural_networks)
		Example usage:
		>>> tf.nn.relu([-2., 0., 3.]).numpy()
		array([0., 0., 3.], dtype=float32)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `qint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function Relu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes rectified linear 6: `min(max(features, 0), 6)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function Relu6(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes rectified linear 6 gradients for a Relu6 operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The backpropagated gradients to the corresponding Relu6 operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding Relu6 operation, or
		    its output; using either one produces the same result.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function Relu6Grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes rectified linear gradients for a Relu operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The backpropagated gradients to the corresponding Relu operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding Relu operation, OR
		    the outputs of that operation (both work equivalently).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function ReluGrad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes scaled exponential linear: `scale * alpha * (exp(features) - 1)`
		
		if < 0, `scale * features` otherwise.
		
		To be used together with
		`initializer = tf.variance_scaling_initializer(factor=1.0, mode='FAN_IN')`.
		For correct dropout, use `tf.contrib.nn.alpha_dropout`.
		
		See [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function Selu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients for the scaled exponential linear (Selu) operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding Selu operation.
		  outputs: A `Tensor`. Must have the same type as `gradients`.
		    The outputs of the corresponding Selu operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function SeluGrad(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax activations.
		
		For each batch `i` and class `j` we have
		
		    $$softmax[i, j] = exp(logits[i, j]) / sum_j(exp(logits[i, j]))$$
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    2-D with shape `[batch_size, num_classes]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`.
	**/
	static public function Softmax(logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy cost and gradients to backpropagate.
		
		Inputs are the logits, not probabilities.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    batch_size x num_classes matrix
		  labels: A `Tensor`. Must have the same type as `features`.
		    batch_size x num_classes matrix
		    The caller must ensure that each batch of labels represents a valid
		    probability distribution.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (loss, backprop).
		
		  loss: A `Tensor`. Has the same type as `features`.
		  backprop: A `Tensor`. Has the same type as `features`.
	**/
	static public function SoftmaxCrossEntropyWithLogits(features:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function Softplus(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softplus gradients for a softplus operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding softplus operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding softplus operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function SoftplusGrad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softsign: `features / (abs(features) + 1)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function Softsign(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softsign gradients for a softsign operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding softsign operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding softsign operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function SoftsignGrad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy cost and gradients to backpropagate.
		
		Unlike `SoftmaxCrossEntropyWithLogits`, this operation does not accept
		a matrix of label probabilities, but rather a single label per row
		of features.  This label is considered to have probability 1.0 for the
		given row.
		
		Inputs are the logits, not probabilities.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    batch_size x num_classes matrix
		  labels: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    batch_size vector with values in [0, num_classes).
		    This is the label for the given minibatch entry.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (loss, backprop).
		
		  loss: A `Tensor`. Has the same type as `features`.
		  backprop: A `Tensor`. Has the same type as `features`.
	**/
	static public function SparseSoftmaxCrossEntropyWithLogits(features:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		
		  values: A `Tensor`. Has the same type as `input`.
		  indices: A `Tensor` of type `int32`.
	**/
	static public function TopK(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		
		  values: A `Tensor`. Has the same type as `input`.
		  indices: A `Tensor` of type `int32`.
	**/
	static public function TopKV2(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
	static public var _CHANNELS_LAST_FORMATS : Dynamic;
	static public var _XENT_DEPRECATION : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calculates the computing needed for BiasAdd.
	**/
	static public function _calc_bias_add_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Calculates the compute resources needed for Conv3D.
	**/
	static public function _calc_conv3d_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Calculates the compute resources needed for Conv2D.
	**/
	static public function _calc_conv_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Calculates the compute resources needed for DepthwiseConv2dNative.
	**/
	static public function _calc_depthwise_conv_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Calculates the compute resources needed for Dilation2D.
	**/
	static public function _calc_dilation2d_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Helper function for `convolution_internal`; handles expanded batches.
	**/
	static public function _conv2d_expanded_batch(input:Dynamic, filters:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic):Dynamic;
	/**
		Helper function for `conv3d`; handles expanded batches.
	**/
	static public function _conv3d_expanded_batch(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Shared implementation of the various dropout functions.
		
		Args:
		  x: same as the namesake in `dropout_v2`.
		  rate: same as the namesake in `dropout_v2`.
		  noise_shape: same as the namesake in `dropout_v2`.
		  uniform_sampler: a callable of signature `(shape, dtype) ->
		    Tensor`, used to generate a tensor of uniformly-distributed
		    random numbers, of the given shape and dtype.
		  dummy_rng_step: a callable of signature `() -> None`, to make a
		    dummy RNG call in the fast path. In the fast path where rate is
		    0, we don't need to generate random numbers, but some samplers
		    still require you to make an RNG call, to make sure that RNG
		    states won't depend on whether the fast path is taken.
		  name: same as the namesake in `dropout_v2`.
		  default_name: a default name in case `name` is `None`.
		
		Returns:
		  A Tensor of the same shape and dtype of `x`.
	**/
	static public function _dropout(x:Dynamic, rate:Dynamic, noise_shape:Dynamic, uniform_sampler:Dynamic, dummy_rng_step:Dynamic, name:Dynamic, default_name:Dynamic):Dynamic;
	static public function _ensure_xent_args(name:Dynamic, sentinel:Dynamic, labels:Dynamic, logits:Dynamic):Dynamic;
	/**
		Flattens logits' outer dimensions and keep its last dimension.
	**/
	static public function _flatten_outer_dims(logits:Dynamic):Dynamic;
	static public function _get_noise_shape(x:Dynamic, noise_shape:Dynamic):Dynamic;
	/**
		Formats a value input for gen_nn_ops.
	**/
	static public function _get_sequence(value:Dynamic, n:Dynamic, channel_index:Dynamic, name:Dynamic):Dynamic;
	/**
		Helper function for verifying strides and dilation_rate arguments.
		
		This is used by `convolution` and `pool`.
		
		Args:
		  num_spatial_dims: int
		  strides: Optional.  List of N ints >= 1.  Defaults to [1]*N.  If any value
		    of strides is > 1, then all values of dilation_rate must be 1.
		  dilation_rate: Optional.  List of N ints >= 1.  Defaults to [1]*N.  If any
		    value of dilation_rate is > 1, then all values of strides must be 1.
		
		Returns:
		  Normalized (strides, dilation_rate) as int32 numpy arrays of shape
		  [num_spatial_dims].
		
		Raises:
		  ValueError: if the parameters are invalid.
	**/
	static public function _get_strides_and_dilation_rate(num_spatial_dims:Dynamic, strides:Dynamic, dilation_rate:Dynamic):Dynamic;
	/**
		Computes sums of N-D convolutions (actually cross correlation).
		
		It is required that 1 <= N <= 3.
		
		This is used to implement the more generic `convolution` function, which
		extends the interface of this function with a `dilation_rate` parameter.
		
		Args:
		
		  input: Rank N+2 tensor of type T of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if `data_format`
		    does not start with `"NC"`, or
		    `[batch_size, in_channels] + input_spatial_shape` if `data_format` starts
		    with `"NC"`.
		  filter: Rank N+2 tensor of type T of shape
		    `filter_spatial_shape + [in_channels, out_channels]`.  Rank of either
		    `input` or `filter` must be known.
		  padding: Padding method to use, must be either "VALID" or "SAME".
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  strides: Sequence of N positive integers, defaults to `[1] * N`.
		  name: Name prefix to use.
		
		Returns:
		  Rank N+2 tensor of type T of shape
		  `[batch_size] + output_spatial_shape + [out_channels]`, where
		  if padding == "SAME":
		    output_spatial_shape = input_spatial_shape
		  if padding == "VALID":
		    output_spatial_shape = input_spatial_shape - filter_spatial_shape + 1.
		
		Raises:
		  ValueError: if ranks are incompatible.
	**/
	static public function _non_atrous_convolution(input:Dynamic, filter:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?strides:Dynamic, ?name:Dynamic):Dynamic;
	static public function _sparse_softmax_cross_entropy_with_rank_2_logits(logits:Dynamic, labels:Dynamic, name:Dynamic):Dynamic;
	/**
		Returns an `adjusted` version of `orig` based on `spatial_dims`.
		
		Tensor of the same type as `orig` and with shape
		`[max(spatial_dims), ...]` where:
		
		  adjusted[spatial_dims[i] - 1, ...] = orig[i, ...]
		
		for 0 <= i < len(spatial_dims), and
		
		  adjusted[j, ...] = fill_value
		
		for j != spatial_dims[i] - 1 for some i.
		
		If `orig` is a constant value, then the result will be a constant value.
		
		Args:
		  orig: Tensor of rank > max(spatial_dims).
		  fill_value: Numpy scalar (of same data type as `orig) specifying the fill
		    value for non-spatial dimensions.
		  spatial_dims: See with_space_to_batch.
		
		Returns:
		  `adjusted` tensor.
	**/
	static public function _with_space_to_batch_adjust(orig:Dynamic, fill_value:Dynamic, spatial_dims:Dynamic):Dynamic;
	/**
		Helper function to compute base_paddings.
	**/
	static public function _with_space_to_batch_base_paddings(filter_shape:Dynamic, num_spatial_dims:Dynamic, rate_or_const_rate:Dynamic):Dynamic;
	/**
		Helper function for ops that accept and return 2d inputs of same shape.
		
		It reshapes and transposes the inputs into a 2-D Tensor and then invokes
		the given function. The output would be transposed and reshaped back.
		If the given function returns a tuple of tensors, each of them will be
		transposed and reshaped.
		
		Args:
		  inputs: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  compute_op: The function to wrap. Must accept the input tensor as its first
		    arugment, and a second keyword argument `name`.
		  dim: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same shape as inputs. If compute_op returns multiple
		    tensors, each of them have the same shape as the input.
		Raises:
		  InvalidArgumentError: if `inputs` is empty or `dim` is beyond the last
		    dimension of `inputs`.
	**/
	static public function _wrap_2d_function(inputs:Dynamic, compute_op:Dynamic, ?dim:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Atrous convolution (a.k.a. convolution with holes or dilated convolution).
		
		This function is a simpler wrapper around the more general
		`tf.nn.convolution`, and exists only for backwards compatibility. You can
		use `tf.nn.convolution` to perform 1-D, 2-D, or 3-D atrous convolution.
		
		
		Computes a 2-D atrous convolution, also known as convolution with holes or
		dilated convolution, given 4-D `value` and `filters` tensors. If the `rate`
		parameter is equal to one, it performs regular 2-D convolution. If the `rate`
		parameter is greater than one, it performs convolution with holes, sampling
		the input values every `rate` pixels in the `height` and `width` dimensions.
		This is equivalent to convolving the input with a set of upsampled filters,
		produced by inserting `rate - 1` zeros between two consecutive values of the
		filters along the `height` and `width` dimensions, hence the name atrous
		convolution or convolution with holes (the French word trous means holes in
		English).
		
		More specifically:
		
		```
		output[batch, height, width, out_channel] =
		    sum_{dheight, dwidth, in_channel} (
		        filters[dheight, dwidth, in_channel, out_channel] *
		        value[batch, height + rate*dheight, width + rate*dwidth, in_channel]
		    )
		```
		
		Atrous convolution allows us to explicitly control how densely to compute
		feature responses in fully convolutional networks. Used in conjunction with
		bilinear interpolation, it offers an alternative to `conv2d_transpose` in
		dense prediction tasks such as semantic image segmentation, optical flow
		computation, or depth estimation. It also allows us to effectively enlarge
		the field of view of filters without increasing the number of parameters or
		the amount of computation.
		
		For a description of atrous convolution and how it can be used for dense
		feature extraction, please see: (Chen et al., 2015). The same operation is
		investigated further in (Yu et al., 2016). Previous works that effectively
		use atrous convolution in different ways are, among others,
		(Sermanet et al., 2014) and (Giusti et al., 2013).
		Atrous convolution is also closely related to the so-called noble identities
		in multi-rate signal processing.
		
		There are many different ways to implement atrous convolution (see the refs
		above). The implementation here reduces
		
		```python
		    atrous_conv2d(value, filters, rate, padding=padding)
		```
		
		to the following three operations:
		
		```python
		    paddings = ...
		    net = space_to_batch(value, paddings, block_size=rate)
		    net = conv2d(net, filters, strides=[1, 1, 1, 1], padding="VALID")
		    crops = ...
		    net = batch_to_space(net, crops, block_size=rate)
		```
		
		Advanced usage. Note the following optimization: A sequence of `atrous_conv2d`
		operations with identical `rate` parameters, 'SAME' `padding`, and filters
		with odd heights/ widths:
		
		```python
		    net = atrous_conv2d(net, filters1, rate, padding="SAME")
		    net = atrous_conv2d(net, filters2, rate, padding="SAME")
		    ...
		    net = atrous_conv2d(net, filtersK, rate, padding="SAME")
		```
		
		can be equivalently performed cheaper in terms of computation and memory as:
		
		```python
		    pad = ...  # padding so that the input dims are multiples of rate
		    net = space_to_batch(net, paddings=pad, block_size=rate)
		    net = conv2d(net, filters1, strides=[1, 1, 1, 1], padding="SAME")
		    net = conv2d(net, filters2, strides=[1, 1, 1, 1], padding="SAME")
		    ...
		    net = conv2d(net, filtersK, strides=[1, 1, 1, 1], padding="SAME")
		    net = batch_to_space(net, crops=pad, block_size=rate)
		```
		
		because a pair of consecutive `space_to_batch` and `batch_to_space` ops with
		the same `block_size` cancel out when their respective `paddings` and `crops`
		inputs are identical.
		
		Args:
		  value: A 4-D `Tensor` of type `float`. It needs to be in the default "NHWC"
		    format. Its shape is `[batch, in_height, in_width, in_channels]`.
		  filters: A 4-D `Tensor` with the same type as `value` and shape
		    `[filter_height, filter_width, in_channels, out_channels]`. `filters`'
		    `in_channels` dimension must match that of `value`. Atrous convolution is
		    equivalent to standard convolution with upsampled filters with effective
		    height `filter_height + (filter_height - 1) * (rate - 1)` and effective
		    width `filter_width + (filter_width - 1) * (rate - 1)`, produced by
		    inserting `rate - 1` zeros along consecutive elements across the
		    `filters`' spatial dimensions.
		  rate: A positive int32. The stride with which we sample input values across
		    the `height` and `width` dimensions. Equivalently, the rate by which we
		    upsample the filter values by inserting zeros across the `height` and
		    `width` dimensions. In the literature, the same parameter is sometimes
		    called `input stride` or `dilation`.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		  Output shape with `'VALID'` padding is:
		
		      [batch, height - 2 * (filter_width - 1),
		       width - 2 * (filter_height - 1), out_channels].
		
		  Output shape with `'SAME'` padding is:
		
		      [batch, height, width, out_channels].
		
		Raises:
		  ValueError: If input/output depth does not match `filters`' shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
		
		References:
		  Multi-Scale Context Aggregation by Dilated Convolutions:
		    [Yu et al., 2016](https://arxiv.org/abs/1511.07122)
		    ([pdf](https://arxiv.org/pdf/1511.07122.pdf))
		  Semantic Image Segmentation with Deep Convolutional Nets and Fully
		  Connected CRFs:
		    [Chen et al., 2015](http://arxiv.org/abs/1412.7062)
		    ([pdf](https://arxiv.org/pdf/1412.7062))
		  OverFeat - Integrated Recognition, Localization and Detection using
		  Convolutional Networks:
		    [Sermanet et al., 2014](https://arxiv.org/abs/1312.6229)
		    ([pdf](https://arxiv.org/pdf/1312.6229.pdf))
		  Fast Image Scanning with Deep Max-Pooling Convolutional Neural Networks:
		    [Giusti et al., 2013]
		    (https://ieeexplore.ieee.org/abstract/document/6738831)
		    ([pdf](https://arxiv.org/pdf/1302.1700.pdf))
	**/
	static public function atrous_conv2d(value:Dynamic, filters:Dynamic, rate:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `atrous_conv2d`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is really the transpose (gradient) of
		`atrous_conv2d` rather than an actual deconvolution.
		
		Args:
		  value: A 4-D `Tensor` of type `float`. It needs to be in the default `NHWC`
		    format. Its shape is `[batch, in_height, in_width, in_channels]`.
		  filters: A 4-D `Tensor` with the same type as `value` and shape
		    `[filter_height, filter_width, out_channels, in_channels]`. `filters`'
		    `in_channels` dimension must match that of `value`. Atrous convolution is
		    equivalent to standard convolution with upsampled filters with effective
		    height `filter_height + (filter_height - 1) * (rate - 1)` and effective
		    width `filter_width + (filter_width - 1) * (rate - 1)`, produced by
		    inserting `rate - 1` zeros along consecutive elements across the
		    `filters`' spatial dimensions.
		  output_shape: A 1-D `Tensor` of shape representing the output shape of the
		    deconvolution op, of form `[batch, out_height, out_width, out_channels]`.
		  rate: A positive int32. The stride with which we sample input values across
		    the `height` and `width` dimensions. Equivalently, the rate by which we
		    upsample the filter values by inserting zeros across the `height` and
		    `width` dimensions. In the literature, the same parameter is sometimes
		    called `input stride` or `dilation`.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filters`' shape, or if
		    padding is other than `'VALID'` or `'SAME'`, or if the `rate` is less
		    than one, or if the output_shape is not a tensor with 4 elements.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function atrous_conv2d_transpose(value:Dynamic, filters:Dynamic, output_shape:Dynamic, rate:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  value: A 4-D `Tensor` of shape `[batch, height, width, channels]` and type
		    `float32`, `float64`, `qint8`, `quint8`, or `qint32`.
		  ksize: An int or list of `ints` that has length `1`, `2` or `4`. The size of
		    the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: Optional name for the operation.
		  input: Alias for value.
		
		Returns:
		  A `Tensor` with the same type as `value`.  The average pooled output tensor.
	**/
	static public function avg_pool(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Performs the average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Note internally this op reshapes and uses the underlying 2d operation.
		
		Args:
		  input: A 3-D `Tensor` of the format specified by `data_format`.
		  ksize: An int or list of `ints` that has length `1` or `3`. The size of the
		    window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1` or `3`. The stride of
		    the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: An optional string from: "NWC", "NCW". Defaults to "NWC".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function avg_pool1d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  input: A 4-D `Tensor` of shape `[batch, height, width, channels]` and type
		    `float32`, `float64`, `qint8`, `quint8`, or `qint32`.
		  ksize: An int or list of `ints` that has length `1`, `2` or `4`. The size of
		    the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same type as `value`.  The average pooled output tensor.
	**/
	static public function avg_pool2d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  input: A 5-D `Tensor` of shape `[batch, height, width, channels]` and type
		    `float32`, `float64`, `qint8`, `quint8`, or `qint32`.
		  ksize: An int or list of `ints` that has length `1`, `3` or `5`. The size of
		    the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `3` or `5`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string. 'NDHWC' and 'NCDHW' are supported.
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same type as `value`.  The average pooled output tensor.
	**/
	static public function avg_pool3d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function avg_pool3d_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients of average pooling function.
		
		Args:
		  orig_input_shape: A `Tensor` of type `int32`.
		    The original input dimensions.
		  grad: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
	static public function avg_pool3d_grad(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function avg_pool3d_grad_eager_fallback(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function avg_pool_eager_fallback(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients of the average pooling function.
		
		Args:
		  orig_input_shape: A `Tensor` of type `int32`.
		    1-D.  Shape of the original input to `avg_pool`.
		  grad: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
	**/
	static public function avg_pool_grad(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function avg_pool_grad_eager_fallback(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs the avg pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  input:  Tensor of rank N+2, of shape `[batch_size] + input_spatial_shape +
		    [num_channels]` if `data_format` does not start with "NC" (default), or
		    `[batch_size, num_channels] + input_spatial_shape` if data_format starts
		    with "NC". Pooling happens over the spatial dimensions only.
		  ksize: An int or list of `ints` that has length `1`, `N` or `N+2`. The size
		    of the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `N` or `N+2`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string. Specifies the channel dimension. For N=1 it can be
		    either "NWC" (default) or "NCW", for N=2 it can be either "NHWC" (default)
		    or "NCHW" and for N=3 either "NDHWC" (default) or "NCDHW".
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The average pooled output tensor.
	**/
	static public function avg_pool_v2(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradients for batch normalization.
		
		This op is deprecated. See `tf.nn.batch_normalization`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		
		  dx: A `Tensor`. Has the same type as `t`.
		  dm: A `Tensor`. Has the same type as `t`.
		  dv: A `Tensor`. Has the same type as `t`.
		  db: A `Tensor`. Has the same type as `t`.
		  dg: A `Tensor`. Has the same type as `t`.
	**/
	static public function batch_norm_with_global_normalization_grad(t:Dynamic, m:Dynamic, v:Dynamic, gamma:Dynamic, backprop:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_norm_with_global_normalization_grad_eager_fallback(t:Dynamic, m:Dynamic, v:Dynamic, gamma:Dynamic, backprop:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Adds `bias` to `value`.
		
		This is (mostly) a special case of `tf.add` where `bias` is restricted to 1-D.
		Broadcasting is supported, so `value` may have any number of dimensions.
		Unlike `tf.add`, the type of `bias` is allowed to differ from `value` in the
		case where both types are quantized.
		
		Args:
		  value: A `Tensor` with type `float`, `double`, `int64`, `int32`, `uint8`,
		    `int16`, `int8`, `complex64`, or `complex128`.
		  bias: A 1-D `Tensor` with size matching the channel dimension of `value`.
		    Must be the same type as `value` unless `value` is a quantized type,
		    in which case a different quantized type may be used.
		  data_format: A string. 'N...C' and 'NC...' are supported. If `None` (the
		    default) is specified then 'N..C' is assumed.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError if data format is unrecognized, if `value` has less than two
		  dimensions when `data_format` is 'N..C'/`None` or `value` has less
		  then three dimensions when `data_format` is `NC..`, if `bias` does not
		  have exactly one dimension (is a vector), or if the size of `bias`
		  does not match the size of the channel dimension of `value`.
	**/
	static public function bias_add(value:Dynamic, bias:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function bias_add_eager_fallback(value:Dynamic, bias:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		The backward operation for "BiasAdd" on the "bias" tensor.
		
		It accumulates all the values from out_backprop into the feature dimension.
		For NHWC data format, the feature dimension is the last. For NCHW data format,
		the feature dimension is the third-to-last.
		
		Args:
		  out_backprop: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
	**/
	static public function bias_add_grad(out_backprop:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function bias_add_grad_eager_fallback(out_backprop:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Adds `bias` to `value`.
		
		This is a deprecated version of bias_add and will soon to be removed.
		
		This is (mostly) a special case of `tf.add` where `bias` is restricted to 1-D.
		Broadcasting is supported, so `value` may have any number of dimensions.
		Unlike `tf.add`, the type of `bias` is allowed to differ from `value` in the
		case where both types are quantized.
		
		Args:
		  value: A `Tensor` with type `float`, `double`, `int64`, `int32`, `uint8`,
		    `int16`, `int8`, `complex64`, or `complex128`.
		  bias: A 1-D `Tensor` with size matching the last dimension of `value`.
		    Must be the same type as `value` unless `value` is a quantized type,
		    in which case a different quantized type may be used.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `value`.
	**/
	static public function bias_add_v1(value:Dynamic, bias:Dynamic, ?name:Dynamic):Dynamic;
	static public function bias_add_v1_eager_fallback(value:Dynamic, bias:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes a 1-D convolution of input with rank `>=3` and a `3-D` filter. (deprecated argument values) (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(data_format='NCHW')`. They will be removed in a future version.
		Instructions for updating:
		`NCHW` for data_format is deprecated, use `NCW` instead
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(data_format='NHWC')`. They will be removed in a future version.
		Instructions for updating:
		`NHWC` for data_format is deprecated, use `NWC` instead
		
		Given an input tensor of shape
		  `batch_shape + [in_width, in_channels]`
		if `data_format` is `"NWC"`, or
		  `batch_shape + [in_channels, in_width]`
		if `data_format` is `"NCW"`,
		and a filter / kernel tensor of shape
		`[filter_width, in_channels, out_channels]`, this op reshapes
		the arguments to pass them to `conv2d` to perform the equivalent
		convolution operation.
		
		Internally, this op reshapes the input tensors and invokes `tf.nn.conv2d`.
		For example, if `data_format` does not start with "NC", a tensor of shape
		  `batch_shape + [in_width, in_channels]`
		is reshaped to
		  `batch_shape + [1, in_width, in_channels]`,
		and the filter is reshaped to
		  `[1, filter_width, in_channels, out_channels]`.
		The result is then reshaped back to
		  `batch_shape + [out_width, out_channels]`
		\(where out_width is a function of the stride and padding as in conv2d\) and
		returned to the caller.
		
		Args:
		  value: A Tensor of rank at least 3. Must be of type `float16`, `float32`, or
		    `float64`.
		  filters: A Tensor of rank at least 3.  Must have the same type as `value`.
		  stride: An int or list of `ints` that has length `1` or `3`.  The number of
		    entries by which the filter is moved right at each step.
		  padding: 'SAME' or 'VALID'
		  use_cudnn_on_gpu: An optional `bool`.  Defaults to `True`.
		  data_format: An optional `string` from `"NWC", "NCW"`.  Defaults to `"NWC"`,
		    the data is stored in the order of `batch_shape + [in_width,
		    in_channels]`.  The `"NCW"` format stores data as `batch_shape +
		    [in_channels, in_width]`.
		  name: A name for the operation (optional).
		  input: Alias for value.
		  dilations: An int or list of `ints` that has length `1` or `3` which
		    defaults to 1. The dilation factor for each dimension of input. If set to
		    k > 1, there will be k-1 skipped cells between each filter element on that
		    dimension. Dilations in the batch and depth dimensions must be 1.
		
		Returns:
		  A `Tensor`.  Has the same type as input.
		
		Raises:
		  ValueError: if `data_format` is invalid.
	**/
	static public function conv1d(?value:Dynamic, ?filters:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?input:Dynamic, ?dilations:Dynamic):Dynamic;
	/**
		The transpose of `conv1d`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is actually the transpose (gradient) of `conv1d`
		rather than an actual deconvolution.
		
		Args:
		  input: A 3-D `Tensor` of type `float` and shape
		    `[batch, in_width, in_channels]` for `NWC` data format or
		    `[batch, in_channels, in_width]` for `NCW` data format.
		  filters: A 3-D `Tensor` with the same type as `input` and shape
		    `[filter_width, output_channels, in_channels]`.  `filter`'s
		    `in_channels` dimension must match that of `input`.
		  output_shape: A 1-D `Tensor`, containing three elements, representing the
		    output shape of the deconvolution op.
		  strides: An int or list of `ints` that has length `1` or `3`.  The number of
		    entries by which the filter is moved right at each step.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string. `'NWC'` and `'NCW'` are supported.
		  dilations: An int or list of `ints` that has length `1` or `3` which
		    defaults to 1. The dilation factor for each dimension of input. If set to
		    k > 1, there will be k-1 skipped cells between each filter element on that
		    dimension. Dilations in the batch and depth dimensions must be 1.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `input`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, if
		    `output_shape` is not at 3-element vector, if `padding` is other than
		    `'VALID'` or `'SAME'`, or if `data_format` is invalid.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function conv1d_transpose(input:Dynamic, filters:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 1-D convolution given 3-D input and filter tensors.
		
		Given an input tensor of shape
		  `batch_shape + [in_width, in_channels]`
		if `data_format` is `"NWC"`, or
		  `batch_shape + [in_channels, in_width]`
		if `data_format` is `"NCW"`,
		and a filter / kernel tensor of shape
		`[filter_width, in_channels, out_channels]`, this op reshapes
		the arguments to pass them to `conv2d` to perform the equivalent
		convolution operation.
		
		Internally, this op reshapes the input tensors and invokes `tf.nn.conv2d`.
		For example, if `data_format` does not start with `"NC"`, a tensor of shape
		  `batch_shape + [in_width, in_channels]`
		is reshaped to
		  `batch_shape + [1, in_width, in_channels]`,
		and the filter is reshaped to
		  `[1, filter_width, in_channels, out_channels]`.
		The result is then reshaped back to
		  `batch_shape + [out_width, out_channels]`
		\(where out_width is a function of the stride and padding as in conv2d\) and
		returned to the caller.
		
		Args:
		  input: A Tensor of rank at least 3. Must be of type `float16`, `float32`, or
		    `float64`.
		  filters: A Tensor of rank at least 3.  Must have the same type as `input`.
		  stride: An int or list of `ints` that has length `1` or `3`.  The number of
		    entries by which the filter is moved right at each step.
		  padding: 'SAME' or 'VALID'. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: An optional `string` from `"NWC", "NCW"`.  Defaults to `"NWC"`,
		    the data is stored in the order of
		    `batch_shape + [in_width, in_channels]`.  The `"NCW"` format stores data
		    as `batch_shape + [in_channels, in_width]`.
		  dilations: An int or list of `ints` that has length `1` or `3` which
		    defaults to 1. The dilation factor for each dimension of input. If set to
		    k > 1, there will be k-1 skipped cells between each filter element on that
		    dimension. Dilations in the batch and depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.  Has the same type as input.
		
		Raises:
		  ValueError: if `data_format` is invalid.
	**/
	static public function conv1d_v2(input:Dynamic, filters:Dynamic, stride:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
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
		        sum_{di, dj, q} input[b, strides[1] * i + di, strides[2] * j + dj, q]
		                        * filter[di, dj, q, k]
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types:
		    `half`, `bfloat16`, `float32`, `float64`.
		    A 4-D tensor. The dimension order is interpreted according to the value
		    of `data_format`, see below for details.
		  filter: A `Tensor`. Must have the same type as `input`.
		    A 4-D tensor of shape
		    `[filter_height, filter_width, in_channels, out_channels]`
		  strides: An int or list of `ints` that has length `1`, `2` or `4`.  The
		    stride of the sliding window for each dimension of `input`. If a single
		    value is given it is replicated in the `H` and `W` dimension. By default
		    the `N` and `C` dimensions are set to 1. The dimension order is determined
		    by the value of `data_format`, see below for details.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. When explicit padding is used and
		    data_format is `"NHWC"`, this should be in the form `[[0, 0], [pad_top,
		    pad_bottom], [pad_left, pad_right], [0, 0]]`. When explicit padding used
		    and data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`.
		    Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An int or list of `ints` that has length `1`, `2` or `4`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the `H` and `W` dimension. By
		    default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details. Dilations in the batch and depth dimensions if a 4-d tensor
		    must be 1.
		  name: A name for the operation (optional).
		  filters: Alias for filter.
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv2d(input:Dynamic, ?filter:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?filters:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types:
		    `half`, `bfloat16`, `float32`, `float64`.
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
		    of the convolution. Must be in the same order as the dimension specified
		    with format.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. When explicit padding is used and
		    data_format is `"NHWC"`, this should be in the form `[[0, 0], [pad_top,
		    pad_bottom], [pad_left, pad_right], [0, 0]]`. When explicit padding used
		    and data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`.
		    Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by
		    the value of `data_format`, see above for details. Dilations in the batch
		    and depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv2d_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function conv2d_backprop_filter_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, use_cudnn_on_gpu:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`,
		    where `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types:
		    `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape
		    `[filter_height, filter_width, in_channels, out_channels]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    4-D with shape `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution. Must be in the same order as the dimension specified
		    with format.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. When explicit padding is used and
		    data_format is `"NHWC"`, this should be in the form `[[0, 0], [pad_top,
		    pad_bottom], [pad_left, pad_right], [0, 0]]`. When explicit padding used
		    and data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`.
		    Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by
		    the value of `data_format`, see above for details. Dilations in the batch
		    and depth dimensions must be 1.
		  name: A name for the operation (optional).
		  filters: Alias for filter.
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function conv2d_backprop_input(input_sizes:Dynamic, ?filter:Dynamic, ?out_backprop:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?filters:Dynamic):Dynamic;
	static public function conv2d_backprop_input_eager_fallback(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, use_cudnn_on_gpu:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function conv2d_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, use_cudnn_on_gpu:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		The transpose of `conv2d`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is really the transpose (gradient) of `conv2d`
		rather than an actual deconvolution.
		
		Args:
		  value: A 4-D `Tensor` of type `float` and shape
		    `[batch, height, width, in_channels]` for `NHWC` data format or
		    `[batch, in_channels, height, width]` for `NCHW` data format.
		  filter: A 4-D `Tensor` with the same type as `value` and shape
		    `[height, width, output_channels, in_channels]`.  `filter`'s
		    `in_channels` dimension must match that of `value`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`.  The
		    stride of the sliding window for each dimension of `input`. If a single
		    value is given it is replicated in the `H` and `W` dimension. By default
		    the `N` and `C` dimensions are set to 0. The dimension order is determined
		    by the value of `data_format`, see below for details.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: Optional name for the returned tensor.
		  input: Alias for value.
		  filters: Alias for filter.
		  dilations: An int or list of `ints` that has length `1`, `2` or `4`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the `H` and `W` dimension. By
		    default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details. Dilations in the batch and depth dimensions if a 4-d tensor
		    must be 1.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function conv2d_transpose(?value:Dynamic, ?filter:Dynamic, ?output_shape:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?input:Dynamic, ?filters:Dynamic, ?dilations:Dynamic):Dynamic;
	/**
		The transpose of `conv2d`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is really the transpose (gradient) of
		`atrous_conv2d` rather than an actual deconvolution.
		
		Args:
		  input: A 4-D `Tensor` of type `float` and shape `[batch, height, width,
		    in_channels]` for `NHWC` data format or `[batch, in_channels, height,
		    width]` for `NCHW` data format.
		  filters: A 4-D `Tensor` with the same type as `input` and shape `[height,
		    width, output_channels, in_channels]`.  `filter`'s `in_channels` dimension
		    must match that of `input`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`.  The
		    stride of the sliding window for each dimension of `input`. If a single
		    value is given it is replicated in the `H` and `W` dimension. By default
		    the `N` and `C` dimensions are set to 0. The dimension order is determined
		    by the value of `data_format`, see below for details.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.  When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  dilations: An int or list of `ints` that has length `1`, `2` or `4`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the `H` and `W` dimension. By
		    default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details. Dilations in the batch and depth dimensions if a 4-d tensor
		    must be 1.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `input`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function conv2d_transpose_v2(input:Dynamic, filters:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2-D convolution given `input` and 4-D `filters` tensors.
		
		The `input` tensor may have rank `4` or higher, where shape dimensions `[:-3]`
		are considered batch dimensions (`batch_shape`).
		
		Given an input tensor of shape
		`batch_shape + [in_height, in_width, in_channels]` and a filter / kernel
		tensor of shape `[filter_height, filter_width, in_channels, out_channels]`,
		this op performs the following:
		
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
		horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		
		Usage Example:
		
		>>> x_in = np.array([[
		...   [[2], [1], [2], [0], [1]],
		...   [[1], [3], [2], [2], [3]],
		...   [[1], [1], [3], [3], [0]],
		...   [[2], [2], [0], [1], [1]],
		...   [[0], [0], [3], [1], [2]], ]])
		>>> kernel_in = np.array([
		...  [ [[2, 0.1]], [[3, 0.2]] ],
		...  [ [[0, 0.3]],[[1, 0.4]] ], ])
		>>> x = tf.constant(x_in, dtype=tf.float32)
		>>> kernel = tf.constant(kernel_in, dtype=tf.float32)
		>>> tf.nn.conv2d(x, kernel, strides=[1, 1, 1, 1], padding='VALID')
		<tf.Tensor: shape=(1, 4, 4, 2), dtype=float32, numpy=..., dtype=float32)>
		
		Args:
		  input: A `Tensor`. Must be one of the following types:
		    `half`, `bfloat16`, `float32`, `float64`.
		    A Tensor of rank at least 4. The dimension order is interpreted according
		    to the value of `data_format`; with the all-but-inner-3 dimensions acting
		    as batch dimensions. See below for details.
		  filters: A `Tensor`. Must have the same type as `input`.
		    A 4-D tensor of shape
		    `[filter_height, filter_width, in_channels, out_channels]`
		  strides: An int or list of `ints` that has length `1`, `2` or `4`.  The
		    stride of the sliding window for each dimension of `input`. If a single
		    value is given it is replicated in the `H` and `W` dimension. By default
		    the `N` and `C` dimensions are set to 1. The dimension order is determined
		    by the value of `data_format`, see below for details.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`.
		    Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        `batch_shape + [height, width, channels]`.
		    Alternatively, the format could be "NCHW", the data storage order of:
		        `batch_shape + [channels, height, width]`.
		  dilations: An int or list of `ints` that has length `1`, `2` or `4`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the `H` and `W` dimension. By
		    default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details. Dilations in the batch and depth dimensions if a 4-d tensor
		    must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input` and the same outer batch shape.
	**/
	static public function conv2d_v2(input:Dynamic, filters:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 3-D convolution given 5-D `input` and `filter` tensors.
		
		In signal processing, cross-correlation is a measure of similarity of
		two waveforms as a function of a time-lag applied to one of them. This
		is also known as a sliding dot product or sliding inner-product.
		
		Our Conv3D implements a form of cross-correlation.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_filter(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function conv3d_backprop_filter_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_filter_v2(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function conv3d_backprop_filter_v2_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_input(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function conv3d_backprop_input_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    An integer vector representing the tensor shape of `input`,
		    where `input` is a 5-D
		    `[batch, depth, rows, cols, in_channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function conv3d_backprop_input_v2(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function conv3d_backprop_input_v2_eager_fallback(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function conv3d_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		The transpose of `conv3d`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is really the transpose (gradient) of `conv3d`
		rather than an actual deconvolution.
		
		Args:
		  value: A 5-D `Tensor` of type `float` and shape
		    `[batch, depth, height, width, in_channels]`.
		  filter: A 5-D `Tensor` with the same type as `value` and shape
		    `[depth, height, width, output_channels, in_channels]`.  `filter`'s
		    `in_channels` dimension must match that of `value`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: A list of ints. The stride of the sliding window for each
		    dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string, either `'NDHWC'` or `'NCDHW`' specifying the layout
		    of the input and output tensors. Defaults to `'NDHWC'`.
		  name: Optional name for the returned tensor.
		  input: Alias of value.
		  filters: Alias of filter.
		  dilations: An int or list of `ints` that has length `1`, `3` or `5`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the `D`, `H` and `W` dimension.
		    By default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details. Dilations in the batch and depth dimensions if a 5-d tensor
		    must be 1.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function conv3d_transpose(value:Dynamic, ?filter:Dynamic, ?output_shape:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?input:Dynamic, ?filters:Dynamic, ?dilations:Dynamic):Dynamic;
	/**
		The transpose of `conv3d`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is really the transpose (gradient) of `conv3d`
		rather than an actual deconvolution.
		
		Args:
		  input: A 5-D `Tensor` of type `float` and shape `[batch, depth, height,
		    width, in_channels]` for `NDHWC` data format or `[batch, in_channels,
		    depth, height, width]` for `NCDHW` data format.
		  filters: A 5-D `Tensor` with the same type as `input` and shape `[depth,
		    height, width, output_channels, in_channels]`.  `filter`'s `in_channels`
		    dimension must match that of `input`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: An int or list of `ints` that has length `1`, `3` or `5`.  The
		    stride of the sliding window for each dimension of `input`. If a single
		    value is given it is replicated in the `D`, `H` and `W` dimension. By
		    default the `N` and `C` dimensions are set to 0. The dimension order is
		    determined by the value of `data_format`, see below for details.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string. 'NDHWC' and 'NCDHW' are supported.
		  dilations: An int or list of `ints` that has length `1`, `3` or `5`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the `D`, `H` and `W` dimension.
		    By default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details. Dilations in the batch and depth dimensions if a 5-d tensor
		    must be 1.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `input`.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function conv3d_transpose_v2(input:Dynamic, filters:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 3-D convolution given 5-D `input` and `filter` tensors.
		
		In signal processing, cross-correlation is a measure of similarity of
		two waveforms as a function of a time-lag applied to one of them. This
		is also known as a sliding dot product or sliding inner-product.
		
		Our Conv3D implements a form of cross-correlation.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_v1(input:Dynamic, ?filter:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?filters:Dynamic):Dynamic;
	/**
		Computes a 3-D convolution given 5-D `input` and `filters` tensors.
		
		In signal processing, cross-correlation is a measure of similarity of
		two waveforms as a function of a time-lag applied to one of them. This
		is also known as a sliding dot product or sliding inner-product.
		
		Our Conv3D implements a form of cross-correlation.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Shape `[batch, in_depth, in_height, in_width, in_channels]`.
		  filters: A `Tensor`. Must have the same type as `input`.
		    Shape `[filter_depth, filter_height, filter_width, in_channels,
		    out_channels]`. `in_channels` must match between `input` and `filters`.
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
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_v2(input:Dynamic, filters:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `convolution`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is really the transpose (gradient) of `conv3d`
		rather than an actual deconvolution.
		
		Args:
		  input: An N+2 dimensional `Tensor` of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC". It must be one of the following types:
		    `half`, `bfloat16`, `float32`, `float64`.
		  filters: An N+2 dimensional `Tensor` with the same type as `input` and
		    shape `spatial_filter_shape + [in_channels, out_channels]`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: An int or list of `ints` that has length `1`, `N` or `N+2`.  The
		    stride of the sliding window for each dimension of `input`. If a single
		    value is given it is replicated in the spatial dimensions. By default
		    the `N` and `C` dimensions are set to 0. The dimension order is determined
		    by the value of `data_format`, see below for details.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  dilations: An int or list of `ints` that has length `1`, `N` or `N+2`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the spatial dimensions. By
		    default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details.
		  name: A name for the operation (optional). If not specified "conv_transpose"
		    is used.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function conv_transpose(input:Dynamic, filters:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts Python padding to C++ padding for ops which take EXPLICIT padding.
		
		Args:
		  padding: the `padding` argument for a Python op which supports EXPLICIT
		    padding.
		  expected_length: Expected number of entries in the padding list when
		    explicit padding is used.
		
		Returns:
		  (padding, explicit_paddings) pair, which should be passed as attributes to a
		  C++ op.
		
		Raises:
		  ValueError: If padding is invalid.
	**/
	static public function convert_padding(padding:Dynamic, ?expected_length:Dynamic):Dynamic;
	/**
		Computes sums of N-D convolutions (actually cross-correlation).
		
		This also supports either output striding via the optional `strides` parameter
		or atrous convolution (also known as convolution with holes or dilated
		convolution, based on the French word "trous" meaning holes in English) via
		the optional `dilation_rate` parameter.  Currently, however, output striding
		is not supported for atrous convolutions.
		
		Specifically, in the case that `data_format` does not start with "NC", given
		a rank (N+2) `input` Tensor of shape
		
		  [num_batches,
		   input_spatial_shape[0],
		   ...,
		   input_spatial_shape[N-1],
		   num_input_channels],
		
		a rank (N+2) `filter` Tensor of shape
		
		  [spatial_filter_shape[0],
		   ...,
		   spatial_filter_shape[N-1],
		   num_input_channels,
		   num_output_channels],
		
		an optional `dilation_rate` tensor of shape [N] (defaulting to [1]*N)
		specifying the filter upsampling/input downsampling rate, and an optional list
		of N `strides` (defaulting [1]*N), this computes for each N-D spatial output
		position (x[0], ..., x[N-1]):
		
		```
		  output[b, x[0], ..., x[N-1], k] =
		      sum_{z[0], ..., z[N-1], q}
		          filter[z[0], ..., z[N-1], q, k] *
		          padded_input[b,
		                       x[0]*strides[0] + dilation_rate[0]*z[0],
		                       ...,
		                       x[N-1]*strides[N-1] + dilation_rate[N-1]*z[N-1],
		                       q]
		```
		where b is the index into the batch, k is the output channel number, q is the
		input channel number, and z is the N-D spatial offset within the filter. Here,
		`padded_input` is obtained by zero padding the input using an effective
		spatial filter shape of `(spatial_filter_shape-1) * dilation_rate + 1` and
		output striding `strides`.
		
		In the case that `data_format` does start with `"NC"`, the `input` and output
		(but not the `filter`) are simply transposed as follows:
		
		  convolution(input, data_format, **kwargs) =
		    tf.transpose(convolution(tf.transpose(input, [0] + range(2,N+2) + [1]),
		                             **kwargs),
		                 [0, N+1] + range(1, N+1))
		
		It is required that 1 <= N <= 3.
		
		Args:
		  input: An (N+2)-D `Tensor` of type `T`, of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  filter: An (N+2)-D `Tensor` with the same type as `input` and shape
		    `spatial_filter_shape + [in_channels, out_channels]`.
		  padding: A string, either `"VALID"` or `"SAME"`. The padding algorithm.
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input when the strides are 1. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  strides: Optional.  Sequence of N ints >= 1.  Specifies the output stride.
		    Defaults to [1]*N.  If any value of strides is > 1, then all values of
		    dilation_rate must be 1.
		  dilation_rate: Optional.  Sequence of N ints >= 1.  Specifies the filter
		    upsampling/input downsampling rate.  In the literature, the same parameter
		    is sometimes called `input stride` or `dilation`.  The effective filter
		    size used for the convolution will be `spatial_filter_shape +
		    (spatial_filter_shape - 1) * (rate - 1)`, obtained by inserting
		    (dilation_rate[i]-1) zeros between consecutive elements of the original
		    filter in each spatial dimension i.  If any value of dilation_rate is > 1,
		    then all values of strides must be 1.
		  name: Optional name for the returned tensor.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		
		Returns:
		  A `Tensor` with the same type as `input` of shape
		
		      `[batch_size] + output_spatial_shape + [out_channels]`
		
		  if data_format is None or does not start with "NC", or
		
		      `[batch_size, out_channels] + output_spatial_shape`
		
		  if data_format starts with "NC",
		  where `output_spatial_shape` depends on the value of `padding`.
		
		  If padding == "SAME":
		    output_spatial_shape[i] = ceil(input_spatial_shape[i] / strides[i])
		
		  If padding == "VALID":
		    output_spatial_shape[i] =
		      ceil((input_spatial_shape[i] -
		            (spatial_filter_shape[i]-1) * dilation_rate[i])
		           / strides[i]).
		
		Raises:
		  ValueError: If input/output depth does not match `filter` shape, if padding
		    is other than `"VALID"` or `"SAME"`, or if data_format is invalid.
	**/
	static public function convolution(input:Dynamic, filter:Dynamic, padding:Dynamic, ?strides:Dynamic, ?dilation_rate:Dynamic, ?name:Dynamic, ?data_format:Dynamic, ?filters:Dynamic, ?dilations:Dynamic):Dynamic;
	/**
		Internal function which performs rank agnostic convolution.
		
		Args:
		  input: See `convolution`.
		  filters: See `convolution`.
		  strides: See `convolution`.
		  padding: See `convolution`.
		  data_format: See `convolution`.
		  dilations: See `convolution`.
		  name: See `convolution`.
		  call_from_convolution: See `convolution`.
		  num_spatial_dims: (Optional.).  It is a integer describing the
		    rank of the spatial dimensions.  For `1-D`, `2-D` and `3-D` convolutions,
		    the value of `num_spatial_dims` is `1`, `2`, and `3`, respectively.
		    This argument is only required to disambiguate the rank of `batch_shape`
		    when `filter_shape.ndims is None` and `len(batch_shape) > 1`.  For
		    backwards compatibility, if `num_spatial_dims is None` and
		   `filter_shape.ndims is None`, then `len(batch_shape)` is assumed to be
		   `1` (i.e., the input is expected to be
		   `[batch_size, num_channels] + input_spatial_shape`
		   or `[batch_size] + input_spatial_shape + [num_channels]`.
		
		Returns:
		  A tensor of shape and dtype matching that of `input`.
		
		Raises:
		  ValueError: If input and filter both have unknown shapes, or if
		    `num_spatial_dims` is provided and incompatible with the value
		    estimated from `filters.shape`.
	**/
	static public function convolution_internal(input:Dynamic, filters:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?call_from_convolution:Dynamic, ?num_spatial_dims:Dynamic):Dynamic;
	/**
		Computes sums of N-D convolutions (actually cross-correlation).
		
		This also supports either output striding via the optional `strides` parameter
		or atrous convolution (also known as convolution with holes or dilated
		convolution, based on the French word "trous" meaning holes in English) via
		the optional `dilations` parameter.  Currently, however, output striding
		is not supported for atrous convolutions.
		
		Specifically, in the case that `data_format` does not start with "NC", given
		a rank (N+2) `input` Tensor of shape
		
		  [num_batches,
		   input_spatial_shape[0],
		   ...,
		   input_spatial_shape[N-1],
		   num_input_channels],
		
		a rank (N+2) `filters` Tensor of shape
		
		  [spatial_filter_shape[0],
		   ...,
		   spatial_filter_shape[N-1],
		   num_input_channels,
		   num_output_channels],
		
		an optional `dilations` tensor of shape [N] (defaulting to [1]*N)
		specifying the filter upsampling/input downsampling rate, and an optional list
		of N `strides` (defaulting [1]*N), this computes for each N-D spatial output
		position (x[0], ..., x[N-1]):
		
		```
		  output[b, x[0], ..., x[N-1], k] =
		      sum_{z[0], ..., z[N-1], q}
		          filter[z[0], ..., z[N-1], q, k] *
		          padded_input[b,
		                       x[0]*strides[0] + dilation_rate[0]*z[0],
		                       ...,
		                       x[N-1]*strides[N-1] + dilation_rate[N-1]*z[N-1],
		                       q]
		```
		where b is the index into the batch, k is the output channel number, q is the
		input channel number, and z is the N-D spatial offset within the filter. Here,
		`padded_input` is obtained by zero padding the input using an effective
		spatial filter shape of `(spatial_filter_shape-1) * dilation_rate + 1` and
		output striding `strides`.
		
		In the case that `data_format` does start with `"NC"`, the `input` and output
		(but not the `filters`) are simply transposed as follows:
		
		  convolution(input, data_format, **kwargs) =
		    tf.transpose(convolution(tf.transpose(input, [0] + range(2,N+2) + [1]),
		                             **kwargs),
		                 [0, N+1] + range(1, N+1))
		
		It is required that 1 <= N <= 3.
		
		Args:
		  input: An (N+2)-D `Tensor` of type `T`, of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  filters: An (N+2)-D `Tensor` with the same type as `input` and shape
		    `spatial_filter_shape + [in_channels, out_channels]`.
		  padding: A string, either `"VALID"` or `"SAME"`. The padding algorithm.
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input when the strides are 1. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  strides: Optional.  Sequence of N ints >= 1.  Specifies the output stride.
		    Defaults to [1]*N.  If any value of strides is > 1, then all values of
		    dilation_rate must be 1.
		  dilations: Optional.  Sequence of N ints >= 1.  Specifies the filter
		    upsampling/input downsampling rate.  In the literature, the same parameter
		    is sometimes called `input stride` or `dilation`.  The effective filter
		    size used for the convolution will be `spatial_filter_shape +
		    (spatial_filter_shape - 1) * (rate - 1)`, obtained by inserting
		    (dilation_rate[i]-1) zeros between consecutive elements of the original
		    filter in each spatial dimension i.  If any value of dilation_rate is > 1,
		    then all values of strides must be 1.
		  name: Optional name for the returned tensor.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		
		Returns:
		  A `Tensor` with the same type as `input` of shape
		
		      `[batch_size] + output_spatial_shape + [out_channels]`
		
		  if data_format is None or does not start with "NC", or
		
		      `[batch_size, out_channels] + output_spatial_shape`
		
		  if data_format starts with "NC",
		  where `output_spatial_shape` depends on the value of `padding`.
		
		  If padding == "SAME":
		    output_spatial_shape[i] = ceil(input_spatial_shape[i] / strides[i])
		
		  If padding == "VALID":
		    output_spatial_shape[i] =
		      ceil((input_spatial_shape[i] -
		            (spatial_filter_shape[i]-1) * dilation_rate[i])
		           / strides[i]).
		
		Raises:
		  ValueError: If input/output depth does not match `filters` shape, if padding
		    is other than `"VALID"` or `"SAME"`, or if data_format is invalid.
	**/
	static public function convolution_v2(input:Dynamic, filters:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Concatenated ReLU.
		
		Concatenates a ReLU which selects only the positive part of the activation
		with a ReLU which selects only the *negative* part of the activation.
		Note that as a result this non-linearity doubles the depth of the activations.
		Source: [Understanding and Improving Convolutional Neural Networks via
		Concatenated Rectified Linear Units. W. Shang, et
		al.](https://arxiv.org/abs/1603.05201)
		
		Args:
		  features: A `Tensor` with type `float`, `double`, `int32`, `int64`, `uint8`,
		    `int16`, or `int8`.
		  name: A name for the operation (optional).
		  axis: The axis that the output values are concatenated along. Default is -1.
		
		Returns:
		  A `Tensor` with the same type as `features`.
		
		References:
		  Understanding and Improving Convolutional Neural Networks via Concatenated
		  Rectified Linear Units:
		    [Shang et al., 2016](http://proceedings.mlr.press/v48/shang16)
		    ([pdf](http://proceedings.mlr.press/v48/shang16.pdf))
	**/
	static public function crelu(features:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes Concatenated ReLU.
		
		Concatenates a ReLU which selects only the positive part of the activation
		with a ReLU which selects only the *negative* part of the activation.
		Note that as a result this non-linearity doubles the depth of the activations.
		Source: [Understanding and Improving Convolutional Neural Networks via
		Concatenated Rectified Linear Units. W. Shang, et
		al.](https://arxiv.org/abs/1603.05201)
		
		Args:
		  features: A `Tensor` with type `float`, `double`, `int32`, `int64`, `uint8`,
		    `int16`, or `int8`.
		  name: A name for the operation (optional).
		  axis: The axis that the output values are concatenated along. Default is -1.
		
		Returns:
		  A `Tensor` with the same type as `features`.
		
		References:
		  Understanding and Improving Convolutional Neural Networks via Concatenated
		  Rectified Linear Units:
		    [Shang et al., 2016](http://proceedings.mlr.press/v48/shang16)
		    ([pdf](http://proceedings.mlr.press/v48/shang16.pdf))
	**/
	static public function crelu_v2(features:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the dimension index in the destination data format given the one in
		
		the source data format.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor with each element as a dimension index in source data format.
		    Must be in the range [-4, 4).
		  src_format: An optional `string`. Defaults to `"NHWC"`.
		    source data format.
		  dst_format: An optional `string`. Defaults to `"NCHW"`.
		    destination data format.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function data_format_dim_map(x:Dynamic, ?src_format:Dynamic, ?dst_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function data_format_dim_map_eager_fallback(x:Dynamic, src_format:Dynamic, dst_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Permute input tensor from `src_format` to `dst_format`.
		
		Input tensor must be a vector of size 4, or a 4x2 tensor.
		
		For example, with `src_format` of `NHWC`, `dst_format` of `NCHW`, and inputs:
		```
		[1, 2, 3, 4]
		```
		and
		```
		[[1, 2, 3, 4],
		 [5, 6, 7, 8]]
		```
		, the outputs will be (respectively):
		```
		[1, 4, 2, 3]
		```
		and
		```
		[[1, 4, 2, 3],
		 [5, 8, 6, 7]]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Vector of size 4 or Tensor of shape (4, 2) in source data format.
		  src_format: An optional `string`. Defaults to `"NHWC"`.
		    source data format.
		  dst_format: An optional `string`. Defaults to `"NCHW"`.
		    destination data format.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function data_format_vec_permute(x:Dynamic, ?src_format:Dynamic, ?dst_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function data_format_vec_permute_eager_fallback(x:Dynamic, src_format:Dynamic, dst_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decorator for marking specific function arguments as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument. It has the following format:
		
		  Calling <function> (from <module>) with <arg> is deprecated and will be
		  removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> includes the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  *deprecated_arg_names_or_tuples: String or 2-Tuple (String,
		    ok_val).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		  **kwargs: If `warn_once=False` is passed, every call with a deprecated
		    argument will log a warning. The default behavior is to only warn the
		    first time the function is called with any given deprecated argument.
		    All other kwargs raise `ValueError`.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, the second element of a deprecated_tuple is not a
		    list, or if a kwarg other than `warn_once` is passed.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Looks up deprecated argument name and ensures both are not used.
		
		Args:
		  new_name: new name of argument
		  new_value: value of new argument (or None if not used)
		  old_name: old name of argument
		  old_value: value of old argument (or None if not used)
		Returns:
		  The effective argument that should be used.
		Raises:
		  ValueError: if new_value and old_value are both non-null
	**/
	static public function deprecated_argument_lookup(new_name:Dynamic, new_value:Dynamic, old_name:Dynamic, old_value:Dynamic):Dynamic;
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
		Computes a 2-D depthwise convolution.
		
		Given an input tensor of shape `[batch, in_height, in_width, in_channels]`
		and a filter / kernel tensor of shape
		`[filter_height, filter_width, in_channels, channel_multiplier]`, containing
		`in_channels` convolutional filters of depth 1, `depthwise_conv2d` applies
		a different filter to each input channel (expanding from 1 channel to
		`channel_multiplier` channels for each), then concatenates the results
		together. Thus, the output has `in_channels * channel_multiplier` channels.
		
		```
		for k in 0..in_channels-1
		  for q in 0..channel_multiplier-1
		    output[b, i, j, k * channel_multiplier + q] =
		      sum_{di, dj} input[b, strides[1] * i + di, strides[2] * j + dj, k] *
		                        filter[di, dj, k, q]
		```
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertices strides, `strides = [1, stride, stride, 1]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`,
		    `float32`, `float64`.
		  filter: A `Tensor`. Must have the same type as `input`.
		  strides: A list of `ints`. 1-D of length 4.  The stride of the sliding
		    window for each dimension of `input`.
		  padding: Controls how to pad the image before applying the convolution. Can
		    be the string `"SAME"` or `"VALID"` indicating the type of padding
		    algorithm to use, or a list indicating the explicit paddings at the start
		    and end of each dimension. When explicit padding is used and data_format
		    is `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to
		    `"NHWC"`. Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of: [batch, height,
		      width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		      [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`. 1-D
		    tensor of length 4.  The dilation factor for each dimension of `input`. If
		    set to k > 1, there will be k-1 skipped cells between each filter element
		    on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depthwise_conv2d_native(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`,
		    `float32`, `float64`. 4-D with shape based on `data_format`.  For example,
		    if `data_format` is 'NHWC' then `input` is a 4-D `[batch, in_height,
		    in_width, in_channels]` tensor.
		  filter_sizes: A `Tensor` of type `int32`. An integer vector representing the
		    tensor shape of `filter`, where `filter` is a 4-D `[filter_height,
		    filter_width, in_channels, depthwise_multiplier]` tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`. 4-D with shape
		    based on `data_format`. For example, if `data_format` is 'NHWC' then
		    out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`. The stride of the sliding window for each
		    dimension of the input of the convolution.
		  padding: Controls how to pad the image before applying the convolution. Can
		    be the string `"SAME"` or `"VALID"` indicating the type of padding
		    algorithm to use, or a list indicating the explicit paddings at the start
		    and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to
		    `"NHWC"`. Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of: [batch, height,
		      width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		      [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`. 1-D
		    tensor of length 4.  The dilation factor for each dimension of `input`. If
		    set to k > 1, there will be k-1 skipped cells between each filter element
		    on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depthwise_conv2d_native_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function depthwise_conv2d_native_backprop_filter_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`. An integer vector representing the
		    shape of `input`, based on `data_format`.  For example, if `data_format`
		    is 'NHWC' then `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`,
		    `float32`, `float64`. 4-D with shape `[filter_height, filter_width,
		    in_channels, depthwise_multiplier]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`. 4-D with
		    shape  based on `data_format`. For example, if `data_format` is 'NHWC'
		    then out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`. The stride of the sliding window for each
		    dimension of the input of the convolution.
		  padding: Controls how to pad the image before applying the convolution. Can
		    be the string `"SAME"` or `"VALID"` indicating the type of padding
		    algorithm to use, or a list indicating the explicit paddings at the start
		    and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to
		    `"NHWC"`. Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of: [batch, height,
		      width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		      [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`. 1-D
		    tensor of length 4.  The dilation factor for each dimension of `input`. If
		    set to k > 1, there will be k-1 skipped cells between each filter element
		    on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function depthwise_conv2d_native_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function depthwise_conv2d_native_backprop_input_eager_fallback(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function depthwise_conv2d_native_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function dilation2d(input:Dynamic, filter:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of morphological 2-D dilation with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function dilation2d_backprop_filter(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	static public function dilation2d_backprop_filter_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient of morphological 2-D dilation with respect to the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function dilation2d_backprop_input(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	static public function dilation2d_backprop_input_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function dilation2d_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function dilation2d_v1(input:Dynamic, ?filter:Dynamic, ?strides:Dynamic, ?rates:Dynamic, ?padding:Dynamic, ?name:Dynamic, ?filters:Dynamic, ?dilations:Dynamic):Dynamic;
	/**
		Computes the grayscale dilation of 4-D `input` and 3-D `filters` tensors.
		
		The `input` tensor has shape `[batch, in_height, in_width, depth]` and the
		`filters` tensor has shape `[filter_height, filter_width, depth]`, i.e., each
		input channel is processed independently of the others with its own
		structuring function. The `output` tensor has shape
		`[batch, out_height, out_width, depth]`. The spatial dimensions of the output
		tensor depend on the `padding` algorithm. We currently only support the
		default "NHWC" `data_format`.
		
		In detail, the grayscale morphological 2-D dilation is the max-sum correlation
		(for consistency with `conv2d`, we use unmirrored filters):
		
		    output[b, y, x, c] =
		       max_{dy, dx} input[b,
		                          strides[1] * y + rates[1] * dy,
		                          strides[2] * x + rates[2] * dx,
		                          c] +
		                    filters[dy, dx, c]
		
		Max-pooling is a special case when the filter has size equal to the pooling
		kernel size and contains all zeros.
		
		Note on duality: The dilation of `input` by the `filters` is equal to the
		negation of the erosion of `-input` by the reflected `filters`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		    `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`,
		    `uint32`, `uint64`.
		    4-D with shape `[batch, in_height, in_width, depth]`.
		  filters: A `Tensor`. Must have the same type as `input`.
		    3-D with shape `[filter_height, filter_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the input
		    tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A `string`, only `"NHWC"` is currently supported.
		  dilations: A list of `ints` that has length `>= 4`.
		    The input stride for atrous morphological dilation. Must be:
		    `[1, rate_height, rate_width, 1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function dilation2d_v2(input:Dynamic, filters:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes dropout. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_prob)`. They will be removed in a future version.
		Instructions for updating:
		Please use `rate` instead of `keep_prob`. Rate should be set to `rate = 1 - keep_prob`.
		
		For each element of `x`, with probability `rate`, outputs `0`, and otherwise
		scales up the input by `1 / (1-rate)`. The scaling is such that the expected
		sum is unchanged.
		
		By default, each element is kept or dropped independently.  If `noise_shape`
		is specified, it must be
		[broadcastable](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		to the shape of `x`, and only dimensions with `noise_shape[i] == shape(x)[i]`
		will make independent decisions.  For example, if `shape(x) = [k, l, m, n]`
		and `noise_shape = [k, 1, 1, n]`, each batch and channel component will be
		kept independently and each row and column will be kept or not kept together.
		
		Args:
		  x: A floating point tensor.
		  keep_prob: (deprecated) A deprecated alias for `(1-rate)`.
		  noise_shape: A 1-D integer `Tensor`, representing the
		    shape for randomly generated keep/drop flags.
		  seed: A Python integer. Used to create random seeds. See
		    `tf.random.set_seed` for behavior.
		  name: A name for this operation (optional).
		  rate: A scalar `Tensor` with the same type as `x`. The probability that each
		    element of `x` is discarded.
		
		Returns:
		  A Tensor of the same shape of `x`.
		
		Raises:
		  ValueError: If `rate` is not in `[0, 1)` or if `x` is not a floating
		    point tensor.
	**/
	static public function dropout(x:Dynamic, ?keep_prob:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?rate:Dynamic):Dynamic;
	/**
		Computes dropout: randomly sets elements to zero to prevent overfitting.
		
		Warning: You should consider using
		`tf.nn.experimental.stateless_dropout` instead of this function. The
		difference between `tf.nn.experimental.stateless_dropout` and this
		function is analogous to the difference between
		`tf.random.stateless_uniform` and `tf.random.uniform`. Please see
		[Random number
		generation](https://www.tensorflow.org/guide/random_numbers) guide
		for a detailed description of the various RNG systems in TF. As the
		guide states, legacy stateful RNG ops like `tf.random.uniform` and
		`tf.nn.dropout` are not deprecated yet but highly discouraged,
		because their states are hard to control.
		
		Note: The behavior of dropout has changed between TensorFlow 1.x and 2.x.
		When converting 1.x code, please use named arguments to ensure behavior stays
		consistent.
		
		See also: `tf.keras.layers.Dropout` for a dropout layer.
		
		[Dropout](https://arxiv.org/abs/1207.0580) is useful for regularizing DNN
		models. Inputs elements are randomly set to zero (and the other elements are
		rescaled). This encourages each node to be independently useful, as it cannot
		rely on the output of other nodes.
		
		More precisely: With probability `rate` elements of `x` are set to `0`.
		The remaining elements are scaled up by `1.0 / (1 - rate)`, so that the
		expected value is preserved.
		
		>>> tf.random.set_seed(0)
		>>> x = tf.ones([3,5])
		>>> tf.nn.dropout(x, rate = 0.5, seed = 1).numpy()
		array([[2., 0., 0., 2., 2.],
		     [2., 2., 2., 2., 2.],
		     [2., 0., 2., 0., 2.]], dtype=float32)
		
		>>> tf.random.set_seed(0)
		>>> x = tf.ones([3,5])
		>>> tf.nn.dropout(x, rate = 0.8, seed = 1).numpy()
		array([[0., 0., 0., 5., 5.],
		     [0., 5., 0., 5., 0.],
		     [5., 0., 5., 0., 5.]], dtype=float32)
		
		>>> tf.nn.dropout(x, rate = 0.0) == x
		<tf.Tensor: shape=(3, 5), dtype=bool, numpy=
		  array([[ True,  True,  True,  True,  True],
		         [ True,  True,  True,  True,  True],
		         [ True,  True,  True,  True,  True]])>
		
		
		By default, each element is kept or dropped independently.  If `noise_shape`
		is specified, it must be
		[broadcastable](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		to the shape of `x`, and only dimensions with `noise_shape[i] == shape(x)[i]`
		will make independent decisions. This is useful for dropping whole
		channels from an image or sequence. For example:
		
		>>> tf.random.set_seed(0)
		>>> x = tf.ones([3,10])
		>>> tf.nn.dropout(x, rate = 2/3, noise_shape=[1,10], seed=1).numpy()
		array([[0., 0., 0., 3., 3., 0., 3., 3., 3., 0.],
		     [0., 0., 0., 3., 3., 0., 3., 3., 3., 0.],
		     [0., 0., 0., 3., 3., 0., 3., 3., 3., 0.]], dtype=float32)
		
		Args:
		  x: A floating point tensor.
		  rate: A scalar `Tensor` with the same type as x. The probability
		    that each element is dropped. For example, setting rate=0.1 would drop
		    10% of input elements.
		  noise_shape: A 1-D integer `Tensor`, representing the
		    shape for randomly generated keep/drop flags.
		  seed: A Python integer. Used to create random seeds. See
		    `tf.random.set_seed` for behavior.
		  name: A name for this operation (optional).
		
		Returns:
		  A Tensor of the same shape of `x`.
		
		Raises:
		  ValueError: If `rate` is not in `[0, 1)` or if `x` is not a floating point
		    tensor. `rate=1` is disallowed, because the output would be all zeros,
		    which is likely not what was intended.
	**/
	static public function dropout_v2(x:Dynamic, rate:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the exponential linear function.
		
		The ELU function is defined as:
		
		 * $ e ^ x - 1 $ if $ x < 0 $
		 * $ x $ if $ x >= 0 $
		
		Examples:
		
		>>> tf.nn.elu(1.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		>>> tf.nn.elu(0.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.0>
		>>> tf.nn.elu(-1000.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=-1.0>
		
		See [Fast and Accurate Deep Network Learning by Exponential Linear Units (ELUs)
		](http://arxiv.org/abs/1511.07289)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function elu(features:Dynamic, ?name:Dynamic):Dynamic;
	static public function elu_eager_fallback(features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients for the exponential linear (Elu) operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding Elu operation.
		  outputs: A `Tensor`. Must have the same type as `gradients`.
		    The outputs of the corresponding Elu operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function elu_grad(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
	static public function elu_grad_eager_fallback(gradients:Dynamic, outputs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the grayscale erosion of 4-D `value` and 3-D `kernel` tensors.
		
		The `value` tensor has shape `[batch, in_height, in_width, depth]` and the
		`kernel` tensor has shape `[kernel_height, kernel_width, depth]`, i.e.,
		each input channel is processed independently of the others with its own
		structuring function. The `output` tensor has shape
		`[batch, out_height, out_width, depth]`. The spatial dimensions of the
		output tensor depend on the `padding` algorithm. We currently only support the
		default "NHWC" `data_format`.
		
		In detail, the grayscale morphological 2-D erosion is given by:
		
		    output[b, y, x, c] =
		       min_{dy, dx} value[b,
		                          strides[1] * y - rates[1] * dy,
		                          strides[2] * x - rates[2] * dx,
		                          c] -
		                    kernel[dy, dx, c]
		
		Duality: The erosion of `value` by the `kernel` is equal to the negation of
		the dilation of `-value` by the reflected `kernel`.
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, in_height, in_width, depth]`.
		  kernel: A `Tensor`. Must have the same type as `value`.
		    3-D with shape `[kernel_height, kernel_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The stride of the sliding window for each dimension of
		    the input tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The input stride for atrous morphological dilation.
		    Must be: `[1, rate_height, rate_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional). If not specified "erosion2d"
		    is used.
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
		  4-D with shape `[batch, out_height, out_width, depth]`.
		Raises:
		  ValueError: If the `value` depth does not match `kernel`' shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
	**/
	static public function erosion2d(value:Dynamic, kernel:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the grayscale erosion of 4-D `value` and 3-D `filters` tensors.
		
		The `value` tensor has shape `[batch, in_height, in_width, depth]` and the
		`filters` tensor has shape `[filters_height, filters_width, depth]`, i.e.,
		each input channel is processed independently of the others with its own
		structuring function. The `output` tensor has shape
		`[batch, out_height, out_width, depth]`. The spatial dimensions of the
		output tensor depend on the `padding` algorithm. We currently only support the
		default "NHWC" `data_format`.
		
		In detail, the grayscale morphological 2-D erosion is given by:
		
		    output[b, y, x, c] =
		       min_{dy, dx} value[b,
		                          strides[1] * y - dilations[1] * dy,
		                          strides[2] * x - dilations[2] * dx,
		                          c] -
		                    filters[dy, dx, c]
		
		Duality: The erosion of `value` by the `filters` is equal to the negation of
		the dilation of `-value` by the reflected `filters`.
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, in_height, in_width, depth]`.
		  filters: A `Tensor`. Must have the same type as `value`.
		    3-D with shape `[filters_height, filters_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The stride of the sliding window for each dimension of
		    the input tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A `string`, only `"NHWC"` is currently supported.
		  dilations: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The input stride for atrous morphological dilation.
		    Must be: `[1, rate_height, rate_width, 1]`.
		  name: A name for the operation (optional). If not specified "erosion2d"
		    is used.
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
		  4-D with shape `[batch, out_height, out_width, depth]`.
		
		Raises:
		  ValueError: If the `value` depth does not match `filters`' shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
	**/
	static public function erosion2d_v2(value:Dynamic, filters:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs fractional average pooling on the input. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		`seed2` and `deterministic` args are deprecated.  Use fractional_avg_pool_v2.
		
		This is a deprecated version of `fractional_avg_pool`.
		
		Fractional average pooling is similar to Fractional max pooling in the pooling
		region generation step. The only difference is that after pooling regions are
		generated, a mean operation is performed instead of a max operation in each
		pooling region.
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: A list of `floats` that has length >= 4.  Pooling ratio for
		    each dimension of `value`, currently only supports row and col dimension
		    and should be >= 1.0. For example, a valid pooling ratio looks like [1.0,
		    1.44, 1.73, 1.0]. The first and last elements must be 1.0 because we don't
		    allow pooling on batch and channels dimensions.  1.44 and 1.73 are pooling
		    ratio on height and width dimensions respectively.
		  pseudo_random: An optional `bool`.  Defaults to `False`. When set to `True`,
		    generates the pooling sequence in a pseudorandom fashion, otherwise, in a
		    random fashion. Check paper (Graham, 2015) for difference between
		    pseudorandom and random.
		  overlapping: An optional `bool`.  Defaults to `False`.  When set to `True`,
		    it means when pooling, the values at the boundary of adjacent pooling
		    cells are used by both cells. For example:
		    `index  0  1  2  3  4`
		    `value  20 5  16 3  7`
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used
		    twice.  The result would be [20, 16] for fractional avg pooling.
		  deterministic: An optional `bool`.  Deprecated; use `fractional_avg_pool_v2`
		    instead.
		  seed: An optional `int`.  Defaults to `0`.  If set to be non-zero, the
		    random number generator is seeded by the given seed.  Otherwise it is
		    seeded by a random seed.
		  seed2: An optional `int`.  Deprecated; use `fractional_avg_pool_v2` instead.
		  name: A name for the operation (optional).
		
		Returns:
		A tuple of `Tensor` objects (`output`, `row_pooling_sequence`,
		`col_pooling_sequence`).
		  output: Output `Tensor` after fractional avg pooling.  Has the same type as
		    `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
		
		References:
		  Fractional Max-Pooling:
		    [Graham, 2015](https://arxiv.org/abs/1412.6071)
		    ([pdf](https://arxiv.org/pdf/1412.6071.pdf))
	**/
	static public function fractional_avg_pool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function fractional_avg_pool_eager_fallback(value:Dynamic, pooling_ratio:Dynamic, pseudo_random:Dynamic, overlapping:Dynamic, deterministic:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	**/
	static public function fractional_avg_pool_grad(orig_input_tensor_shape:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic):Dynamic;
	static public function fractional_avg_pool_grad_eager_fallback(orig_input_tensor_shape:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, overlapping:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs fractional average pooling on the input.
		
		Fractional average pooling is similar to Fractional max pooling in the pooling
		region generation step. The only difference is that after pooling regions are
		generated, a mean operation is performed instead of a max operation in each
		pooling region.
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: A list of `floats` that has length >= 4.  Pooling ratio for
		    each dimension of `value`, currently only supports row and col dimension
		    and should be >= 1.0. For example, a valid pooling ratio looks like [1.0,
		    1.44, 1.73, 1.0]. The first and last elements must be 1.0 because we don't
		    allow pooling on batch and channels dimensions.  1.44 and 1.73 are pooling
		    ratio on height and width dimensions respectively.
		  pseudo_random: An optional `bool`.  Defaults to `False`. When set to `True`,
		    generates the pooling sequence in a pseudorandom fashion, otherwise, in a
		    random fashion. Check paper (Graham, 2015) for difference between
		    pseudorandom and random.
		  overlapping: An optional `bool`.  Defaults to `False`.  When set to `True`,
		    it means when pooling, the values at the boundary of adjacent pooling
		    cells are used by both cells. For example:
		    `index  0  1  2  3  4`
		    `value  20 5  16 3  7`
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used
		    twice.  The result would be [20, 16] for fractional avg pooling.
		  seed: An optional `int`.  Defaults to `0`.  If set to be non-zero, the
		    random number generator is seeded by the given seed.  Otherwise it is
		    seeded by a random seed.
		  name: A name for the operation (optional).
		
		Returns:
		A tuple of `Tensor` objects (`output`, `row_pooling_sequence`,
		`col_pooling_sequence`).
		  output: Output `Tensor` after fractional avg pooling.  Has the same type as
		    `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
		
		References:
		  Fractional Max-Pooling:
		    [Graham, 2015](https://arxiv.org/abs/1412.6071)
		    ([pdf](https://arxiv.org/pdf/1412.6071.pdf))
	**/
	static public function fractional_avg_pool_v2(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs fractional max pooling on the input. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		`seed2` and `deterministic` args are deprecated.  Use fractional_max_pool_v2.
		
		This is a deprecated version of `fractional_max_pool`.
		
		Fractional max pooling is slightly different than regular max pooling.  In
		regular max pooling, you downsize an input set by taking the maximum value of
		smaller N x N subsections of the set (often 2x2), and try to reduce the set by
		a factor of N, where N is an integer.  Fractional max pooling, as you might
		expect from the word "fractional", means that the overall reduction ratio N
		does not have to be an integer.
		
		The sizes of the pooling regions are generated randomly but are fairly
		uniform.  For example, let's look at the height dimension, and the constraints
		on the list of rows that will be pool boundaries.
		
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
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: A list of `floats` that has length >= 4.  Pooling ratio for
		    each dimension of `value`, currently only supports row and col dimension
		    and should be >= 1.0. For example, a valid pooling ratio looks like [1.0,
		    1.44, 1.73, 1.0]. The first and last elements must be 1.0 because we don't
		    allow pooling on batch and channels dimensions.  1.44 and 1.73 are pooling
		    ratio on height and width dimensions respectively.
		  pseudo_random: An optional `bool`.  Defaults to `False`. When set to `True`,
		    generates the pooling sequence in a pseudorandom fashion, otherwise, in a
		    random fashion. Check (Graham, 2015) for difference between
		    pseudorandom and random.
		  overlapping: An optional `bool`.  Defaults to `False`.  When set to `True`,
		    it means when pooling, the values at the boundary of adjacent pooling
		    cells are used by both cells. For example:
		    `index  0  1  2  3  4`
		    `value  20 5  16 3  7`
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used
		    twice.  The result would be [20, 16] for fractional max pooling.
		  deterministic: An optional `bool`.  Deprecated; use `fractional_max_pool_v2`
		    instead.
		  seed: An optional `int`.  Defaults to `0`.  If set to be non-zero, the
		    random number generator is seeded by the given seed.  Otherwise it is
		    seeded by a random seed.
		  seed2: An optional `int`.  Deprecated; use `fractional_max_pool_v2` instead.
		  name: A name for the operation (optional).
		
		Returns:
		A tuple of `Tensor` objects (`output`, `row_pooling_sequence`,
		`col_pooling_sequence`).
		  output: Output `Tensor` after fractional max pooling.  Has the same type as
		    `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
		
		References:
		  Fractional Max-Pooling:
		    [Graham, 2015](https://arxiv.org/abs/1412.6071)
		    ([pdf](https://arxiv.org/pdf/1412.6071.pdf))
	**/
	static public function fractional_max_pool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function fractional_max_pool_eager_fallback(value:Dynamic, pooling_ratio:Dynamic, pseudo_random:Dynamic, overlapping:Dynamic, deterministic:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	**/
	static public function fractional_max_pool_grad(orig_input:Dynamic, orig_output:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic):Dynamic;
	static public function fractional_max_pool_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, overlapping:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs fractional max pooling on the input.
		
		Fractional max pooling is slightly different than regular max pooling.  In
		regular max pooling, you downsize an input set by taking the maximum value of
		smaller N x N subsections of the set (often 2x2), and try to reduce the set by
		a factor of N, where N is an integer.  Fractional max pooling, as you might
		expect from the word "fractional", means that the overall reduction ratio N
		does not have to be an integer.
		
		The sizes of the pooling regions are generated randomly but are fairly
		uniform.  For example, let's look at the height dimension, and the constraints
		on the list of rows that will be pool boundaries.
		
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
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: An int or list of `ints` that has length `1`, `2` or `4`.
		    Pooling ratio for each dimension of `value`, currently only supports row
		    and col dimension and should be >= 1.0. For example, a valid pooling ratio
		    looks like [1.0, 1.44, 1.73, 1.0]. The first and last elements must be 1.0
		    because we don't allow pooling on batch and channels dimensions.  1.44 and
		    1.73 are pooling ratio on height and width dimensions respectively.
		  pseudo_random: An optional `bool`.  Defaults to `False`. When set to `True`,
		    generates the pooling sequence in a pseudorandom fashion, otherwise, in a
		    random fashion. Check paper (Graham, 2015) for difference between
		    pseudorandom and random.
		  overlapping: An optional `bool`.  Defaults to `False`.  When set to `True`,
		    it means when pooling, the values at the boundary of adjacent pooling
		    cells are used by both cells. For example:
		    `index  0  1  2  3  4`
		    `value  20 5  16 3  7`
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used
		    twice.  The result would be [20, 16] for fractional max pooling.
		  seed: An optional `int`.  Defaults to `0`.  If set to be non-zero, the
		    random number generator is seeded by the given seed.  Otherwise it is
		    seeded by a random seed.
		  name: A name for the operation (optional).
		
		Returns:
		A tuple of `Tensor` objects (`output`, `row_pooling_sequence`,
		`col_pooling_sequence`).
		  output: Output `Tensor` after fractional max pooling.  Has the same type as
		    `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
		
		References:
		  Fractional Max-Pooling:
		    [Graham, 2015](https://arxiv.org/abs/1412.6071)
		    ([pdf](https://arxiv.org/pdf/1412.6071.pdf))
	**/
	static public function fractional_max_pool_v2(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		    When is_training is True, a 1D Tensor for the computed batch
		    mean to be reused in gradient computation. When is_training is
		    False, a 1D Tensor for the population mean to be reused in both
		    1st and 2nd order gradient computation.
		  reserve_space_2: A `Tensor`. Must have the same type as `y_backprop`.
		    When is_training is True, a 1D Tensor for the computed batch
		    variance (inverted variance in the cuDNN case) to be reused in
		    gradient computation. When is_training is False, a 1D Tensor
		    for the population variance to be reused in both 1st and 2nd
		    order gradient computation.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    The data format for y_backprop, x, x_backprop.
		    Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (x_backprop, scale_backprop, offset_backprop, reserve_space_3, reserve_space_4).
		
		  x_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  scale_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  offset_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  reserve_space_3: A `Tensor`. Has the same type as `y_backprop`.
		  reserve_space_4: A `Tensor`. Has the same type as `y_backprop`.
	**/
	static public function fused_batch_norm_grad(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	static public function fused_batch_norm_grad_eager_fallback(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, epsilon:Dynamic, data_format:Dynamic, is_training:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Gradient for batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  y_backprop: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    A 4D Tensor for the gradient with respect to y.
		  x: A `Tensor`. Must have the same type as `y_backprop`.
		    A 4D Tensor for input data.
		  scale: A `Tensor` of type `float32`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  reserve_space_1: A `Tensor`. Must be one of the following types: `float32`.
		    When is_training is True, a 1D Tensor for the computed batch
		    mean to be reused in gradient computation. When is_training is
		    False, a 1D Tensor for the population mean to be reused in both
		    1st and 2nd order gradient computation.
		  reserve_space_2: A `Tensor`. Must have the same type as `reserve_space_1`.
		    When is_training is True, a 1D Tensor for the computed batch
		    variance (inverted variance in the cuDNN case) to be reused in
		    gradient computation. When is_training is False, a 1D Tensor
		    for the population variance to be reused in both 1st and 2nd
		    order gradient computation.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    The data format for y_backprop, x, x_backprop.
		    Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (x_backprop, scale_backprop, offset_backprop, reserve_space_3, reserve_space_4).
		
		  x_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  scale_backprop: A `Tensor`. Has the same type as `reserve_space_1`.
		  offset_backprop: A `Tensor`. Has the same type as `reserve_space_1`.
		  reserve_space_3: A `Tensor`. Has the same type as `reserve_space_1`.
		  reserve_space_4: A `Tensor`. Has the same type as `reserve_space_1`.
	**/
	static public function fused_batch_norm_grad_v2(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	static public function fused_batch_norm_grad_v2_eager_fallback(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, epsilon:Dynamic, data_format:Dynamic, is_training:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Gradient for batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  y_backprop: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    A 4D Tensor for the gradient with respect to y.
		  x: A `Tensor`. Must have the same type as `y_backprop`.
		    A 4D Tensor for input data.
		  scale: A `Tensor` of type `float32`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  reserve_space_1: A `Tensor`. Must be one of the following types: `float32`.
		    When is_training is True, a 1D Tensor for the computed batch
		    mean to be reused in gradient computation. When is_training is
		    False, a 1D Tensor for the population mean to be reused in both
		    1st and 2nd order gradient computation.
		  reserve_space_2: A `Tensor`. Must have the same type as `reserve_space_1`.
		    When is_training is True, a 1D Tensor for the computed batch
		    variance (inverted variance in the cuDNN case) to be reused in
		    gradient computation. When is_training is False, a 1D Tensor
		    for the population variance to be reused in both 1st and 2nd
		    order gradient computation.
		  reserve_space_3: A `Tensor`. Must have the same type as `reserve_space_1`.
		    When is_training is True, a 1D Tensor for some intermediate results to be reused
		    in gradient computation. When is_training is False, a dummy empty Tensor will be
		    created.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NDHWC", "NCDHW"`. Defaults to `"NHWC"`.
		    The data format for y_backprop, x, x_backprop.
		    Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (x_backprop, scale_backprop, offset_backprop, reserve_space_4, reserve_space_5).
		
		  x_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  scale_backprop: A `Tensor`. Has the same type as `reserve_space_1`.
		  offset_backprop: A `Tensor`. Has the same type as `reserve_space_1`.
		  reserve_space_4: A `Tensor`. Has the same type as `reserve_space_1`.
		  reserve_space_5: A `Tensor`. Has the same type as `reserve_space_1`.
	**/
	static public function fused_batch_norm_grad_v3(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, reserve_space_3:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	static public function fused_batch_norm_grad_v3_eager_fallback(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, reserve_space_3:Dynamic, epsilon:Dynamic, data_format:Dynamic, is_training:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    A 4D Tensor for input data.
		  scale: A `Tensor`. Must be one of the following types: `float32`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  offset: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for offset, to shift to the normalized x.
		  mean: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for population mean. Used for inference only;
		    must be empty for training.
		  variance: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for population variance. Used for inference only;
		    must be empty for training.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  exponential_avg_factor: An optional `float`. Defaults to `1`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    The data format for x and y. Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, batch_mean, batch_variance, reserve_space_1, reserve_space_2).
		
		  y: A `Tensor`. Has the same type as `x`.
		  batch_mean: A `Tensor`. Has the same type as `scale`.
		  batch_variance: A `Tensor`. Has the same type as `scale`.
		  reserve_space_1: A `Tensor`. Has the same type as `scale`.
		  reserve_space_2: A `Tensor`. Has the same type as `scale`.
	**/
	static public function fused_batch_norm_v2(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?exponential_avg_factor:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	static public function fused_batch_norm_v2_eager_fallback(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, epsilon:Dynamic, exponential_avg_factor:Dynamic, data_format:Dynamic, is_training:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    A 4D Tensor for input data.
		  scale: A `Tensor`. Must be one of the following types: `float32`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  offset: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for offset, to shift to the normalized x.
		  mean: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for population mean. Used for inference only;
		    must be empty for training.
		  variance: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for population variance. Used for inference only;
		    must be empty for training.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  exponential_avg_factor: An optional `float`. Defaults to `1`.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NDHWC", "NCDHW"`. Defaults to `"NHWC"`.
		    The data format for x and y. Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, batch_mean, batch_variance, reserve_space_1, reserve_space_2, reserve_space_3).
		
		  y: A `Tensor`. Has the same type as `x`.
		  batch_mean: A `Tensor`. Has the same type as `scale`.
		  batch_variance: A `Tensor`. Has the same type as `scale`.
		  reserve_space_1: A `Tensor`. Has the same type as `scale`.
		  reserve_space_2: A `Tensor`. Has the same type as `scale`.
		  reserve_space_3: A `Tensor`. Has the same type as `scale`.
	**/
	static public function fused_batch_norm_v3(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?exponential_avg_factor:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	static public function fused_batch_norm_v3_eager_fallback(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, epsilon:Dynamic, exponential_avg_factor:Dynamic, data_format:Dynamic, is_training:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
	static public function fused_pad_conv2d_eager_fallback(input:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
		    If true, the centers of the 4 corner pixels of the input and output tensors are
		    aligned, preserving the values at the corner pixels. Defaults to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fused_resize_and_pad_conv2d(input:Dynamic, size:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?resize_align_corners:Dynamic, ?name:Dynamic):Dynamic;
	static public function fused_resize_and_pad_conv2d_eager_fallback(input:Dynamic, size:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, resize_align_corners:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute the Gaussian Error Linear Unit (GELU) activation function.
		
		Gaussian error linear unit (GELU) computes
		`x * P(X <= x)`, where `P(X) ~ N(0, 1)`.
		The (GELU) nonlinearity weights inputs by their value, rather than gates
		inputs by their sign as in ReLU.
		
		For example:
		
		>>> x = tf.constant([-3.0, -1.0, 0.0, 1.0, 3.0], dtype=tf.float32)
		>>> y = tf.nn.gelu(x)
		>>> y.numpy()
		array([-0.00404951, -0.15865529,  0.        ,  0.8413447 ,  2.9959507 ],
		    dtype=float32)
		>>> y = tf.nn.gelu(x, approximate=True)
		>>> y.numpy()
		array([-0.00363752, -0.15880796,  0.        ,  0.841192  ,  2.9963627 ],
		    dtype=float32)
		
		Args:
		  features: A `Tensor` representing preactivation values.
		  approximate: An optional `bool`. Defaults to `False`. Whether to enable
		    approximation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `features`.
		
		References:
		  [Gaussian Error Linear Units (GELUs)](https://arxiv.org/abs/1606.08415).
	**/
	static public function gelu(features:Dynamic, ?approximate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Says whether the targets are in the top `K` predictions.
		
		This outputs a `batch_size` bool array, an entry `out[i]` is `true` if the
		prediction for the target class is finite (not inf, -inf, or nan) and among
		the top `k` predictions among all predictions for example `i`. Note that the
		behavior of `InTopK` differs from the `TopK` op in its handling of ties; if
		multiple classes have the same prediction value and straddle the top-`k`
		boundary, all of those classes are considered to be in the top `k`.
		
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
	static public function in_top_k_eager_fallback(predictions:Dynamic, targets:Dynamic, k:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Says whether the targets are in the top `K` predictions.
		
		This outputs a `batch_size` bool array, an entry `out[i]` is `true` if the
		prediction for the target class is finite (not inf, -inf, or nan) and among
		the top `k` predictions among all predictions for example `i`. Note that the
		behavior of `InTopK` differs from the `TopK` op in its handling of ties; if
		multiple classes have the same prediction value and straddle the top-`k`
		boundary, all of those classes are considered to be in the top `k`.
		
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
	static public function in_top_k_v2(targets:Dynamic, predictions:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
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
		  k: A `Tensor`. Must have the same type as `targets`.
		    Number of top elements to look at for computing precision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function in_top_kv2(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	static public function in_top_kv2_eager_fallback(predictions:Dynamic, targets:Dynamic, k:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Solves isotonic regression problems along the given axis.
		
		For each vector x, the problem solved is
		
		$$\argmin_{y_1 >= y_2 >= ... >= y_n} \sum_i (x_i - y_i)^2.$$
		
		As the solution is component-wise constant, a second tensor is returned that
		encodes the segments. The problems are solved over the given axis.
		
		Consider the following example, where we solve a batch of two problems. The
		first input is [3, 1, 2], while the second [1, 3, 4] (as the axis is 1).
		>>> x = tf.constant([[3, 1, 2], [1, 3, 4]], dtype=tf.float32)
		>>> y, segments = tf.nn.isotonic_regression(x, axis=1)
		>>> y  # The solution.
		<tf.Tensor: shape=(2, 3), dtype=float32, numpy=
		array([[3.       , 1.5      , 1.5      ],
		       [2.6666667, 2.6666667, 2.6666667]], dtype=float32)>
		
		Note that the first solution has two blocks [2] and [1.5, 1.5]. The second
		solution is constant, and thus has a single segment. These segments are
		exactly what the second returned tensor encodes:
		
		>>> segments
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[0, 1, 1],
		       [0, 0, 0]], dtype=int32)>
		
		
		Args:
		  inputs: A tensor holding the inputs.
		  decreasing: If set to False, the inequalities in the optimizing constrained
		    are flipped.
		  axis: The axis along which the problems should be solved.
		
		Returns:
		  output: The solutions, same shape as type as the input.
		  segments: An int32 tensor, same shape as the input indicating the segments
		    that have the same value. Specifically, those positions that have the same
		    value correspond to the same segment. These values start at zero, and are
		    monotonously increasing for each solution.
	**/
	static public function isotonic_regression(inputs:Dynamic, ?decreasing:Dynamic, ?axis:Dynamic):Dynamic;
	static public function isotonic_regression_eager_fallback(input:Dynamic, output_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		L2 Loss.
		
		Computes half the L2 norm of a tensor without the `sqrt`:
		
		    output = sum(t ** 2) / 2
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Typically 2-D, but may have any dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function l2_loss(t:Dynamic, ?name:Dynamic):Dynamic;
	static public function l2_loss_eager_fallback(t:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute the Leaky ReLU activation function.
		
		Source: [Rectifier Nonlinearities Improve Neural Network Acoustic Models.
		AL Maas, AY Hannun, AY Ng - Proc. ICML, 2013]
		(https://ai.stanford.edu/~amaas/papers/relu_hybrid_icml2013_final.pdf).
		
		Args:
		  features: A `Tensor` representing preactivation values. Must be one of
		    the following types: `float16`, `float32`, `float64`, `int32`, `int64`.
		  alpha: Slope of the activation function at x < 0.
		  name: A name for the operation (optional).
		
		Returns:
		  The activation value.
		
		References:
		  Rectifier Nonlinearities Improve Neural Network Acoustic Models:
		    [Maas et al., 2013]
		    (http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.693.1422)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.693.1422&rep=rep1&type=pdf))
	**/
	static public function leaky_relu(features:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	static public function leaky_relu_eager_fallback(features:Dynamic, alpha:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes rectified linear gradients for a LeakyRelu operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding LeakyRelu operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding LeakyRelu operation,
		    OR the outputs of that operation (both work equivalently).
		  alpha: An optional `float`. Defaults to `0.2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function leaky_relu_grad(gradients:Dynamic, features:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	static public function leaky_relu_grad_eager_fallback(gradients:Dynamic, features:Dynamic, alpha:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
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
	static public function local_response_normalization(input:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes log softmax activations. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		For each batch `i` and class `j` we have
		
		    logsoftmax = logits - log(reduce_sum(exp(logits), axis))
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		  dim: Deprecated alias for `axis`.
		
		Returns:
		  A `Tensor`. Has the same type as `logits`. Same shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function log_softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	static public function log_softmax_eager_fallback(logits:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes log softmax activations.
		
		For each batch `i` and class `j` we have
		
		    logsoftmax = logits - log(reduce_sum(exp(logits), axis))
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`. Same shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function log_softmax_v2(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
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
	static public function lrn_eager_fallback(input:Dynamic, depth_radius:Dynamic, bias:Dynamic, alpha:Dynamic, beta:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Gradients for Local Response Normalization.
		
		Args:
		  input_grads: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
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
		  A `Tensor`. Has the same type as `input_grads`.
	**/
	static public function lrn_grad(input_grads:Dynamic, input_image:Dynamic, output_image:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	static public function lrn_grad_eager_fallback(input_grads:Dynamic, input_image:Dynamic, output_image:Dynamic, depth_radius:Dynamic, bias:Dynamic, alpha:Dynamic, beta:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs the max pooling on the input.
		
		Args:
		  value: A 4-D `Tensor` of the format specified by `data_format`.
		  ksize: An int or list of `ints` that has length `1`, `2` or `4`.
		    The size of the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`.
		    The stride of the sliding window for each dimension of the input tensor.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. When explicit padding is used and
		    data_format is `"NHWC"`, this should be in the form `[[0, 0], [pad_top,
		    pad_bottom], [pad_left, pad_right], [0, 0]]`. When explicit padding used
		    and data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`. When using explicit
		    padding, the size of the paddings cannot be greater than the sliding
		    window size.
		  data_format: A string. 'NHWC', 'NCHW' and 'NCHW_VECT_C' are supported.
		  name: Optional name for the operation.
		  input: Alias for value.
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Performs the max pooling on the input.
		
		Note internally this op reshapes and uses the underlying 2d operation.
		
		Args:
		  input: A 3-D `Tensor` of the format specified by `data_format`.
		  ksize: An int or list of `ints` that has length `1` or `3`. The size of the
		    window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1` or `3`. The stride of
		    the sliding window for each dimension of the input tensor.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NWC"`, this should be in the form `[[0, 0], [pad_left, pad_right], [0,
		    0]]`. When explicit padding used and data_format is `"NCW"`, this should
		    be in the form `[[0, 0], [0, 0], [pad_left, pad_right]]`. When using
		    explicit padding, the size of the paddings cannot be greater than the
		    sliding window size.
		  data_format: An optional string from: "NWC", "NCW". Defaults to "NWC".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool1d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the max pooling on the input.
		
		Args:
		  input: A 4-D `Tensor` of the format specified by `data_format`.
		  ksize: An int or list of `ints` that has length `1`, `2` or `4`. The size of
		    the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`. When using explicit
		    padding, the size of the paddings cannot be greater than the sliding
		    window size.
		  data_format: A string. 'NHWC', 'NCHW' and 'NCHW_VECT_C' are supported.
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool2d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the max pooling on the input.
		
		Args:
		  input: A 5-D `Tensor` of the format specified by `data_format`.
		  ksize: An int or list of `ints` that has length `1`, `3` or `5`. The size of
		    the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `3` or `5`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: An optional string from: "NDHWC", "NCDHW". Defaults to "NDHWC".
		    The data format of the input and output data. With the default format
		    "NDHWC", the data is stored in the order of: [batch, in_depth, in_height,
		      in_width, in_channels]. Alternatively, the format could be "NCDHW", the
		    data storage order is: [batch, in_channels, in_depth, in_height,
		      in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool3d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool3d_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients of 3D max pooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
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
	static public function max_pool3d_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool3d_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function max_pool3d_grad_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool3d_grad_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function max_pool_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		  padding: A `string` from: `"SAME", "VALID", "EXPLICIT"`.
		    The type of padding algorithm to use.
		  explicit_paddings: An optional list of `ints`. Defaults to `[]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
	**/
	static public function max_pool_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
	**/
	static public function max_pool_grad_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool_grad_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    4-D.  Gradients of gradients w.r.t. the input of `max_pool`.
		  ksize: A `Tensor` of type `int32`.
		    The size of the window for each dimension of the input tensor.
		  strides: A `Tensor` of type `int32`.
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
	**/
	static public function max_pool_grad_grad_v2(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool_grad_grad_v2_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		  include_batch_in_index: An optional `bool`. Defaults to `False`.
		    Whether to include batch dimension in flattened index of `argmax`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function max_pool_grad_grad_with_argmax(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?include_batch_in_index:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool_grad_grad_with_argmax_eager_fallback(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, include_batch_in_index:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    4-D.  Gradients w.r.t. the output of `max_pool`.
		  ksize: A `Tensor` of type `int32`.
		    The size of the window for each dimension of the input tensor.
		  strides: A `Tensor` of type `int32`.
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
	**/
	static public function max_pool_grad_v2(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool_grad_v2_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		  include_batch_in_index: An optional `bool`. Defaults to `False`.
		    Whether to include batch dimension in flattened index of `argmax`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function max_pool_grad_with_argmax(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?include_batch_in_index:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool_grad_with_argmax_eager_fallback(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, include_batch_in_index:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs max pooling on the input.
		
		For a given window of `ksize`, takes the maximum value within that window.
		Used for reducing computation and preventing overfitting.
		
		Consider an example of pooling with 2x2, non-overlapping windows:
		
		>>> matrix = tf.constant([
		...     [0, 0, 1, 7],
		...     [0, 2, 0, 0],
		...     [5, 2, 0, 0],
		...     [0, 0, 9, 8],
		... ])
		>>> reshaped = tf.reshape(matrix, (1, 4, 4, 1))
		>>> tf.nn.max_pool(reshaped, ksize=2, strides=2, padding="SAME")
		<tf.Tensor: shape=(1, 2, 2, 1), dtype=int32, numpy=
		array([[[[2],
		         [7]],
		        [[5],
		         [9]]]], dtype=int32)>
		
		We can adjust the window size using the `ksize` parameter. For example, if we
		were to expand the window to 3:
		
		>>> tf.nn.max_pool(reshaped, ksize=3, strides=2, padding="SAME")
		<tf.Tensor: shape=(1, 2, 2, 1), dtype=int32, numpy=
		array([[[[5],
		         [7]],
		        [[9],
		         [9]]]], dtype=int32)>
		
		We've now picked up two additional large numbers (5 and 9) in two of the
		pooled spots.
		
		Note that our windows are now overlapping, since we're still moving by 2 units
		on each iteration. This is causing us to see the same 9 repeated twice, since
		it is part of two overlapping windows.
		
		We can adjust how far we move our window with each iteration using the
		`strides` parameter. Updating this to the same value as our window size
		eliminates the overlap:
		
		>>> tf.nn.max_pool(reshaped, ksize=3, strides=3, padding="SAME")
		<tf.Tensor: shape=(1, 2, 2, 1), dtype=int32, numpy=
		array([[[[2],
		         [7]],
		        [[5],
		         [9]]]], dtype=int32)>
		
		Because the window does not neatly fit into our input, padding is added around
		the edges, giving us the same result as when we used a 2x2 window. We can skip
		padding altogether and simply drop the windows that do not fully fit into our
		input by instead passing `"VALID"` to the `padding` argument:
		
		>>> tf.nn.max_pool(reshaped, ksize=3, strides=3, padding="VALID")
		<tf.Tensor: shape=(1, 1, 1, 1), dtype=int32, numpy=array([[[[5]]]],
		 dtype=int32)>
		
		Now we've grabbed the largest value in the 3x3 window starting from the upper-
		left corner. Since no other windows fit in our input, they are dropped.
		
		Args:
		  input:  Tensor of rank N+2, of shape `[batch_size] + input_spatial_shape +
		    [num_channels]` if `data_format` does not start with "NC" (default), or
		    `[batch_size, num_channels] + input_spatial_shape` if data_format starts
		    with "NC". Pooling happens over the spatial dimensions only.
		  ksize: An int or list of `ints` that has length `1`, `N` or `N+2`. The size
		    of the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `N` or `N+2`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`. When using explicit
		    padding, the size of the paddings cannot be greater than the sliding
		    window size.
		  data_format: A string. Specifies the channel dimension. For N=1 it can be
		    either "NWC" (default) or "NCW", for N=2 it can be either "NHWC" (default)
		    or "NCHW" and for N=3 either "NDHWC" (default) or "NCDHW".
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool_v2(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool_v2_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs max pooling on the input and outputs both max values and indices.
		
		The indices in `argmax` are flattened, so that a maximum value at position
		`[b, y, x, c]` becomes flattened index:
		`(y * width + x) * channels + c` if `include_batch_in_index` is False;
		`((b * height + y) * width + x) * channels + c` if `include_batch_in_index` is True.
		
		The indices returned are always in `[0, height) x [0, width)` before flattening,
		even if padding is involved and the mathematically correct answer is outside
		(either negative or too large).  This is a bug, but fixing it is difficult to do
		in a safe backwards compatible way, especially due to flattening.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D with shape `[batch, height, width, channels]`.  Input to pool over.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  Targmax: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  include_batch_in_index: An optional `bool`. Defaults to `False`.
		    Whether to include batch dimension in flattened index of `argmax`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, argmax).
		
		  output: A `Tensor`. Has the same type as `input`.
		  argmax: A `Tensor` of type `Targmax`.
	**/
	static public function max_pool_with_argmax(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?Targmax:Dynamic, ?include_batch_in_index:Dynamic, ?name:Dynamic):Dynamic;
	static public function max_pool_with_argmax_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, Targmax:Dynamic, include_batch_in_index:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs max pooling on the input and outputs both max values and indices.
		
		The indices in `argmax` are flattened, so that a maximum value at position
		`[b, y, x, c]` becomes flattened index:
		`(y * width + x) * channels + c` if `include_batch_in_index` is False;
		`((b * height + y) * width + x) * channels + c` if `include_batch_in_index` is True.
		
		The indices returned are always in `[0, height) x [0, width)` before flattening,
		even if padding is involved and the mathematically correct answer is outside
		(either negative or too large).  This is a bug, but fixing it is difficult to do
		in a safe backwards compatible way, especially due to flattening.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D with shape `[batch, height, width, channels]`.  Input to pool over.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  Targmax: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  include_batch_in_index: An optional `bool`. Defaults to `False`.
		    Whether to include batch dimension in flattened index of `argmax`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, argmax).
		
		  output: A `Tensor`. Has the same type as `input`.
		  argmax: A `Tensor` of type `Targmax`.
	**/
	static public function max_pool_with_argmax_v1(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?Targmax:Dynamic, ?name:Dynamic, ?output_dtype:Dynamic, ?include_batch_in_index:Dynamic):Dynamic;
	/**
		Performs max pooling on the input and outputs both max values and indices.
		
		The indices in `argmax` are flattened, so that a maximum value at position
		`[b, y, x, c]` becomes flattened index: `(y * width + x) * channels + c` if
		`include_batch_in_index` is False;
		`((b * height + y) * width + x) * channels + c`
		if `include_batch_in_index` is True.
		
		The indices returned are always in `[0, height) x [0, width)` before
		flattening, even if padding is involved and the mathematically correct answer
		is outside (either negative or too large).  This is a bug, but fixing it is
		difficult to do in a safe backwards compatible way, especially due to
		flattening.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		    `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`,
		    `uint32`, `uint64`.
		    4-D with shape `[batch, height, width, channels]`.  Input to pool over.
		  ksize: An int or list of `ints` that has length `1`, `2` or `4`.
		    The size of the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: An optional `string`, must be set to `"NHWC"`. Defaults to
		    `"NHWC"`.
		    Specify the data format of the input and output data.
		  output_dtype: An optional `tf.DType` from: `tf.int32, tf.int64`.
		    Defaults to `tf.int64`.
		    The dtype of the returned argmax tensor.
		  include_batch_in_index: An optional `boolean`. Defaults to `False`.
		    Whether to include batch dimension in flattened index of `argmax`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, argmax).
		
		  output: A `Tensor`. Has the same type as `input`.
		  argmax: A `Tensor` of type `output_dtype`.
	**/
	static public function max_pool_with_argmax_v2(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?output_dtype:Dynamic, ?include_batch_in_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds values of the `n`-th smallest value for the last dimension.
		
		Note that n is zero-indexed.
		
		If the input is a vector (rank-1), finds the entries which is the nth-smallest
		value in the vector and outputs their values as scalar tensor.
		
		For matrices (resp. higher rank input), computes the entries which is the
		nth-smallest value in each row (resp. vector along the last dimension). Thus,
		
		    values.shape = input.shape[:-1]
		
		Args:
		  input: 1-D or higher `Tensor` with last dimension at least `n+1`.
		  n: A `Tensor` of type `int32`.
		    0-D. Position of sorted vector to select along the last dimension (along
		    each row for matrices). Valid range of n is `[0, input.shape[:-1])`
		  reverse: An optional `bool`. Defaults to `False`.
		    When set to True, find the nth-largest value in the vector and vice
		    versa.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  The `n`-th order statistic along each last dimensional slice.
	**/
	static public function nth_element(input:Dynamic, n:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	static public function nth_element_eager_fallback(input:Dynamic, n:Dynamic, reverse:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs an N-D pooling operation.
		
		In the case that `data_format` does not start with "NC", computes for
		    0 <= b < batch_size,
		    0 <= x[i] < output_spatial_shape[i],
		    0 <= c < num_channels:
		
		```
		  output[b, x[0], ..., x[N-1], c] =
		    REDUCE_{z[0], ..., z[N-1]}
		      input[b,
		            x[0] * strides[0] - pad_before[0] + dilation_rate[0]*z[0],
		            ...
		            x[N-1]*strides[N-1] - pad_before[N-1] + dilation_rate[N-1]*z[N-1],
		            c],
		```
		
		where the reduction function REDUCE depends on the value of `pooling_type`,
		and pad_before is defined based on the value of `padding` as described in
		the "returns" section of `tf.nn.convolution` for details.
		The reduction never includes out-of-bounds positions.
		
		In the case that `data_format` starts with `"NC"`, the `input` and output are
		simply transposed as follows:
		
		```
		  pool(input, data_format, **kwargs) =
		    tf.transpose(pool(tf.transpose(input, [0] + range(2,N+2) + [1]),
		                      **kwargs),
		                 [0, N+1] + range(1, N+1))
		```
		
		Args:
		  input: Tensor of rank N+2, of shape
		    `[batch_size] + input_spatial_shape + [num_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, num_channels] + input_spatial_shape` if data_format starts
		    with "NC".  Pooling happens over the spatial dimensions only.
		  window_shape: Sequence of N ints >= 1.
		  pooling_type: Specifies pooling operation, must be "AVG" or "MAX".
		  padding: The padding algorithm, must be "SAME" or "VALID".
		    See the "returns" section of `tf.nn.convolution` for details.
		  dilation_rate: Optional.  Dilation rate.  List of N ints >= 1.
		    Defaults to [1]*N.  If any value of dilation_rate is > 1, then all values
		    of strides must be 1.
		  strides: Optional.  Sequence of N ints >= 1.  Defaults to [1]*N.
		    If any value of strides is > 1, then all values of dilation_rate must be
		    1.
		  name: Optional. Name of the op.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  dilations: Alias for dilation_rate
		
		Returns:
		  Tensor of rank N+2, of shape
		    [batch_size] + output_spatial_shape + [num_channels]
		
		  if data_format is None or does not start with "NC", or
		
		    [batch_size, num_channels] + output_spatial_shape
		
		  if data_format starts with "NC",
		  where `output_spatial_shape` depends on the value of padding:
		
		  If padding = "SAME":
		    output_spatial_shape[i] = ceil(input_spatial_shape[i] / strides[i])
		
		  If padding = "VALID":
		    output_spatial_shape[i] =
		      ceil((input_spatial_shape[i] - (window_shape[i] - 1) * dilation_rate[i])
		           / strides[i]).
		
		Raises:
		  ValueError: if arguments are invalid.
	**/
	static public function pool(input:Dynamic, window_shape:Dynamic, pooling_type:Dynamic, padding:Dynamic, ?dilation_rate:Dynamic, ?strides:Dynamic, ?name:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic):Dynamic;
	/**
		Performs an N-D pooling operation.
		
		In the case that `data_format` does not start with "NC", computes for
		    0 <= b < batch_size,
		    0 <= x[i] < output_spatial_shape[i],
		    0 <= c < num_channels:
		
		```
		  output[b, x[0], ..., x[N-1], c] =
		    REDUCE_{z[0], ..., z[N-1]}
		      input[b,
		            x[0] * strides[0] - pad_before[0] + dilation_rate[0]*z[0],
		            ...
		            x[N-1]*strides[N-1] - pad_before[N-1] + dilation_rate[N-1]*z[N-1],
		            c],
		```
		
		where the reduction function REDUCE depends on the value of `pooling_type`,
		and pad_before is defined based on the value of `padding` as described in
		the "returns" section of `tf.nn.convolution` for details.
		The reduction never includes out-of-bounds positions.
		
		In the case that `data_format` starts with `"NC"`, the `input` and output are
		simply transposed as follows:
		
		```
		  pool(input, data_format, **kwargs) =
		    tf.transpose(pool(tf.transpose(input, [0] + range(2,N+2) + [1]),
		                      **kwargs),
		                 [0, N+1] + range(1, N+1))
		```
		
		Args:
		  input: Tensor of rank N+2, of shape `[batch_size] + input_spatial_shape +
		    [num_channels]` if data_format does not start with "NC" (default), or
		    `[batch_size, num_channels] + input_spatial_shape` if data_format starts
		    with "NC".  Pooling happens over the spatial dimensions only.
		  window_shape: Sequence of N ints >= 1.
		  pooling_type: Specifies pooling operation, must be "AVG" or "MAX".
		  strides: Optional. Sequence of N ints >= 1.  Defaults to [1]*N. If any value of
		    strides is > 1, then all values of dilation_rate must be 1.
		  padding: The padding algorithm, must be "SAME" or "VALID". Defaults to "SAME".
		    See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW". For
		    N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  dilations: Optional.  Dilation rate.  List of N ints >= 1. Defaults to
		    [1]*N.  If any value of dilation_rate is > 1, then all values of strides
		    must be 1.
		  name: Optional. Name of the op.
		
		Returns:
		  Tensor of rank N+2, of shape
		    [batch_size] + output_spatial_shape + [num_channels]
		
		  if data_format is None or does not start with "NC", or
		
		    [batch_size, num_channels] + output_spatial_shape
		
		  if data_format starts with "NC",
		  where `output_spatial_shape` depends on the value of padding:
		
		  If padding = "SAME":
		    output_spatial_shape[i] = ceil(input_spatial_shape[i] / strides[i])
		
		  If padding = "VALID":
		    output_spatial_shape[i] =
		      ceil((input_spatial_shape[i] - (window_shape[i] - 1) * dilation_rate[i])
		           / strides[i]).
		
		Raises:
		  ValueError: if arguments are invalid.
	**/
	static public function pool_v2(input:Dynamic, window_shape:Dynamic, pooling_type:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Produces the average pool of the input tensor for quantized types.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
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
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_avg_pool(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_avg_pool_eager_fallback(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Quantized Batch normalization.
		
		This op is deprecated and will be removed in the future. Prefer
		`tf.nn.batch_normalization`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
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
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
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
	static public function quantized_batch_norm_with_global_normalization_eager_fallback(t:Dynamic, t_min:Dynamic, t_max:Dynamic, m:Dynamic, m_min:Dynamic, m_max:Dynamic, v:Dynamic, v_min:Dynamic, v_max:Dynamic, beta:Dynamic, beta_min:Dynamic, beta_max:Dynamic, gamma:Dynamic, gamma_min:Dynamic, gamma_max:Dynamic, out_type:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Adds Tensor 'bias' to Tensor 'input' for Quantized types.
		
		Broadcasts the values of bias on dimensions 0..N-2 of 'input'.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    A 1D bias Tensor with size matching the last dimension of 'input'.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  min_bias: A `Tensor` of type `float32`.
		    The float value that the lowest quantized bias value represents.
		  max_bias: A `Tensor` of type `float32`.
		    The float value that the highest quantized bias value represents.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_out, max_out).
		
		  output: A `Tensor` of type `out_type`.
		  min_out: A `Tensor` of type `float32`.
		  max_out: A `Tensor` of type `float32`.
	**/
	static public function quantized_bias_add(input:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_bias:Dynamic, max_bias:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_bias_add_eager_fallback(input:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_bias:Dynamic, max_bias:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes a 2D convolution given quantized 4D input and filter tensors.
		
		The inputs are quantized tensors where the lowest value represents the real
		number of the associated minimum, and the highest represents the maximum.
		This means that you can only interpret the quantized output in the same way, by
		taking the returned minimum and maximum values into account.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
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
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_and_relu(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_and_relu_and_requantize(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_conv2d_and_relu_and_requantize_eager_fallback(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function quantized_conv2d_and_relu_eager_fallback(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_and_requantize(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_conv2d_and_requantize_eager_fallback(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function quantized_conv2d_eager_fallback(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes QuantizedConv2D per channel.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original filter tensor.
		  min_input: A `Tensor` of type `float32`.
		    The minimum value of the input tensor
		  max_input: A `Tensor` of type `float32`.
		    The maximum value of the input tensor.
		  min_filter: A `Tensor` of type `float32`.
		    The minimum value of the filter tensor.
		  max_filter: A `Tensor` of type `float32`.
		    The maximum value of the filter tensor.
		  strides: A list of `ints`. list of stride values.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    The quantized type of output tensor that needs to be converted.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    list of dilation values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_per_channel(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_conv2d_per_channel_eager_fallback(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor` of type `float32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_with_bias(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor` of type `float32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_with_bias_and_relu(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_with_bias_and_relu_and_requantize(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_conv2d_with_bias_and_relu_and_requantize_eager_fallback(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function quantized_conv2d_with_bias_and_relu_eager_fallback(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_with_bias_and_requantize(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_conv2d_with_bias_and_requantize_eager_fallback(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function quantized_conv2d_with_bias_eager_fallback(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  summand: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_summand: A `Tensor` of type `float32`.
		  max_summand: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_with_bias_signed_sum_and_relu_and_requantize(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, summand:Dynamic, min_summand:Dynamic, max_summand:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_conv2d_with_bias_signed_sum_and_relu_and_requantize_eager_fallback(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, summand:Dynamic, min_summand:Dynamic, max_summand:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor` of type `float32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  summand: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_with_bias_sum_and_relu(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, summand:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_input: A `Tensor` of type `float32`.
		  max_input: A `Tensor` of type `float32`.
		  min_filter: A `Tensor` of type `float32`.
		  max_filter: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  summand: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_summand: A `Tensor` of type `float32`.
		  max_summand: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d_with_bias_sum_and_relu_and_requantize(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, summand:Dynamic, min_summand:Dynamic, max_summand:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_conv2d_with_bias_sum_and_relu_and_requantize_eager_fallback(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, summand:Dynamic, min_summand:Dynamic, max_summand:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function quantized_conv2d_with_bias_sum_and_relu_eager_fallback(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, summand:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes quantized depthwise Conv2D.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original filter tensor.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the minimum quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the maximum quantized filter value represents.
		  strides: A list of `ints`. List of stride values.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    The type of the output.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    List of dilation values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_depthwise_conv2d(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_depthwise_conv2d_eager_fallback(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes quantized depthwise Conv2D with Bias.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original filter tensor.
		  bias: A `Tensor` of type `float32`. The original bias tensor.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the minimum quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the maximum quantized filter value represents.
		  strides: A list of `ints`. List of stride values.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    The type of the output.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    List of dilation values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_depthwise_conv2d_with_bias(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes quantized depthwise Conv2D with Bias and Relu.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original filter tensor.
		  bias: A `Tensor` of type `float32`. The original bias tensor.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the minimum quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the maximum quantized filter value represents.
		  strides: A list of `ints`. List of stride values.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    The type of the output.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    List of dilation values.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_depthwise_conv2d_with_bias_and_relu(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes quantized depthwise Conv2D with Bias, Relu and Requantize.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original filter tensor.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		    The original bias tensor.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the minimum quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the maximum quantized filter value represents.
		  min_freezed_output: A `Tensor` of type `float32`.
		    The minimum float value of the output tensor.
		  max_freezed_output: A `Tensor` of type `float32`.
		    The maximum float value of the output tensor.
		  strides: A list of `ints`. List of stride values.
		  padding: A `string` from: `"SAME", "VALID"`.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		    The type of the output.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    List of dilation values.
		  padding_list: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_depthwise_conv2d_with_bias_and_relu_and_requantize(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?padding_list:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_depthwise_conv2d_with_bias_and_relu_and_requantize_eager_fallback(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function quantized_depthwise_conv2d_with_bias_and_relu_eager_fallback(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, padding_list:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function quantized_depthwise_conv2d_with_bias_eager_fallback(input:Dynamic, filter:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, out_type:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs a quantized matrix multiplication of `a` by the matrix `b` with bias
		add.
		
		  The inputs must be two-dimensional matrices and 1D bias vector. And the inner
		  dimension of `a` (after being transposed if `transpose_a` is non-zero) must
		  match the outer dimension of `b` (after being transposed if `transposed_b` is
		  non-zero). Then do broadcast add operation with bias values on the matrix
		  multiplication result. The bias size must match inner dimension of `b`.
		
		  Args:
		    a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied. Must be a two-dimensional tensor of type `quint8`.
		    b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied and must be a two-dimensional tensor of type `qint8`.
		    bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		      A 1D bias tensor with size matching inner dimension of `b` (after being
		      transposed if `transposed_b` is non-zero).
		    min_a: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `a` value represents.
		    max_a: A `Tensor` of type `float32`.
		      The float value that the highest quantized `a` value represents.
		    min_b: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `b` value represents.
		    max_b: A `Tensor` of type `float32`.
		      The float value that the highest quantized `b` value represents.
		    Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    transpose_a: An optional `bool`. Defaults to `False`.
		      If true, `a` is transposed before multiplication.
		    transpose_b: An optional `bool`. Defaults to `False`.
		      If true, `b` is transposed before multiplication.
		    input_quant_mode: An optional `string` from: `"MIN_FIRST", "SCALED"`. Defaults to `"MIN_FIRST"`.
		      Input data quantization mode. Either MIN_FIRST(default) or SCALED.
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (out, min_out, max_out).
		
		    out: A `Tensor` of type `Toutput`.
		    min_out: A `Tensor` of type `float32`.
		    max_out: A `Tensor` of type `float32`.
		  
	**/
	static public function quantized_mat_mul_with_bias(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?input_quant_mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_a: A `Tensor` of type `float32`.
		  max_a: A `Tensor` of type `float32`.
		  min_b: A `Tensor` of type `float32`.
		  max_b: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  Toutput: A `tf.DType` from: `tf.float32`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		  transpose_b: An optional `bool`. Defaults to `False`.
		  input_quant_mode: An optional `string` from: `"MIN_FIRST", "SCALED"`. Defaults to `"MIN_FIRST"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Toutput`.
	**/
	static public function quantized_mat_mul_with_bias_and_dequantize(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?input_quant_mode:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_mat_mul_with_bias_and_dequantize_eager_fallback(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, Toutput:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, input_quant_mode:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Perform a quantized matrix multiplication of  `a` by the matrix `b` with bias
		add and relu fusion.
		
		  The inputs must be two-dimensional matrices and 1D bias vector. And the inner
		  dimension of `a` (after being transposed if `transpose_a` is non-zero) must
		  match the outer dimension of `b` (after being transposed if `transposed_b` is
		  non-zero). Then do broadcast add operation with bias values on the matrix
		  multiplication result. The bias size must match inner dimension of `b`. Then do
		  relu activation to get non-negative result.
		
		  Args:
		    a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied. Must be a two-dimensional tensor of type `quint8`.
		    b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied and must be a two-dimensional tensor of type `qint8`.
		    bias: A `Tensor` of type `float32`.
		      A 1D bias tensor with size matching with inner dimension of `b` (after being
		      transposed if `transposed_b` is non-zero).
		    min_a: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `a` value represents.
		    max_a: A `Tensor` of type `float32`.
		      The float value that the highest quantized `a` value represents.
		    min_b: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `b` value represents.
		    max_b: A `Tensor` of type `float32`.
		      The float value that the highest quantized `b` value represents.
		    Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		    transpose_a: An optional `bool`. Defaults to `False`.
		      If true, `a` is transposed before multiplication.
		    transpose_b: An optional `bool`. Defaults to `False`.
		      If true, `b` is transposed before multiplication.
		    input_quant_mode: An optional `string` from: `"MIN_FIRST", "SCALED"`. Defaults to `"MIN_FIRST"`.
		      Input data quantization mode. Either MIN_FIRST(default) or SCALED.
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (out, min_out, max_out).
		
		    out: A `Tensor` of type `Toutput`.
		    min_out: A `Tensor` of type `float32`.
		    max_out: A `Tensor` of type `float32`.
		  
	**/
	static public function quantized_mat_mul_with_bias_and_relu(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?input_quant_mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Perform a quantized matrix multiplication of  `a` by the matrix `b` with bias
		add and relu and requantize fusion.
		
		  The inputs must be two-dimensional matrices and 1D bias vector. And the inner
		  dimension of `a` (after being transposed if `transpose_a` is non-zero) must
		  match the outer dimension of `b` (after being transposed if `transposed_b` is
		  non-zero). Then do broadcast add operation with bias values on the matrix
		  multiplication result. The bias size must match inner dimension of `b`.  Then do
		  relu activation to get non-negative result. Then do requantize operation to get
		  final uint8 result.
		
		  Args:
		    a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied. Must be a two-dimensional tensor of type `quint8`.
		    b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		      A matrix to be multiplied and must be a two-dimensional tensor of type `qint8`.
		    bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		      A 1D bias tensor with size matching with inner dimension of `b` (after being
		      transposed if `transposed_b` is non-zero).
		    min_a: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `a` value represents.
		    max_a: A `Tensor` of type `float32`.
		      The float value that the highest quantized `a` value represents.
		    min_b: A `Tensor` of type `float32`.
		      The float value that the lowest quantized `b` value represents.
		    max_b: A `Tensor` of type `float32`.
		      The float value that the highest quantized `b` value represents.
		    min_freezed_output: A `Tensor` of type `float32`.
		      The float value that the highest quantized output value after requantize.
		    max_freezed_output: A `Tensor` of type `float32`.
		    Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		    transpose_a: An optional `bool`. Defaults to `False`.
		      If true, `a` is transposed before multiplication.
		    transpose_b: An optional `bool`. Defaults to `False`.
		      If true, `b` is transposed before multiplication.
		    input_quant_mode: An optional `string` from: `"MIN_FIRST", "SCALED"`. Defaults to `"MIN_FIRST"`.
		      Input data quantization mode. Either MIN_FIRST(default) or SCALED.
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (out, min_out, max_out).
		
		    out: A `Tensor` of type `Toutput`.
		    min_out: A `Tensor` of type `float32`.
		    max_out: A `Tensor` of type `float32`.
		  
	**/
	static public function quantized_mat_mul_with_bias_and_relu_and_requantize(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?input_quant_mode:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_mat_mul_with_bias_and_relu_and_requantize_eager_fallback(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, Toutput:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, input_quant_mode:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function quantized_mat_mul_with_bias_and_relu_eager_fallback(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, Toutput:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, input_quant_mode:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `qint32`.
		  min_a: A `Tensor` of type `float32`.
		  max_a: A `Tensor` of type `float32`.
		  min_b: A `Tensor` of type `float32`.
		  max_b: A `Tensor` of type `float32`.
		  min_freezed_output: A `Tensor` of type `float32`.
		  max_freezed_output: A `Tensor` of type `float32`.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		  transpose_b: An optional `bool`. Defaults to `False`.
		  input_quant_mode: An optional `string` from: `"MIN_FIRST", "SCALED"`. Defaults to `"MIN_FIRST"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, min_out, max_out).
		
		  out: A `Tensor` of type `Toutput`.
		  min_out: A `Tensor` of type `float32`.
		  max_out: A `Tensor` of type `float32`.
	**/
	static public function quantized_mat_mul_with_bias_and_requantize(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?input_quant_mode:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_mat_mul_with_bias_and_requantize_eager_fallback(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, min_freezed_output:Dynamic, max_freezed_output:Dynamic, Toutput:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, input_quant_mode:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function quantized_mat_mul_with_bias_eager_fallback(a:Dynamic, b:Dynamic, bias:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, Toutput:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, input_quant_mode:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Produces the max pool of the input tensor for quantized types.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
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
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_max_pool(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_max_pool_eager_fallback(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear: `max(features, 0)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		
		  activations: A `Tensor` of type `out_type`.
		  min_activations: A `Tensor` of type `float32`.
		  max_activations: A `Tensor` of type `float32`.
	**/
	static public function quantized_relu(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear 6: `min(max(features, 0), 6)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		
		  activations: A `Tensor` of type `out_type`.
		  min_activations: A `Tensor` of type `float32`.
		  max_activations: A `Tensor` of type `float32`.
	**/
	static public function quantized_relu6(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_relu6_eager_fallback(features:Dynamic, min_features:Dynamic, max_features:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function quantized_relu_eager_fallback(features:Dynamic, min_features:Dynamic, max_features:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear X: `min(max(features, 0), max_value)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  max_value: A `Tensor` of type `float32`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		
		  activations: A `Tensor` of type `out_type`.
		  min_activations: A `Tensor` of type `float32`.
		  max_activations: A `Tensor` of type `float32`.
	**/
	static public function quantized_relu_x(features:Dynamic, max_value:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_relu_x_eager_fallback(features:Dynamic, max_value:Dynamic, min_features:Dynamic, max_features:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes rectified linear: `max(features, 0)`.
		
		See: https://en.wikipedia.org/wiki/Rectifier_(neural_networks)
		Example usage:
		>>> tf.nn.relu([-2., 0., 3.]).numpy()
		array([0., 0., 3.], dtype=float32)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `qint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function relu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Rectified Linear 6: `min(max(features, 0), 6)`.
		
		Args:
		  features: A `Tensor` with type `float`, `double`, `int32`, `int64`, `uint8`,
		    `int16`, or `int8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `features`.
		
		References:
		  Convolutional Deep Belief Networks on CIFAR-10:
		    Krizhevsky et al., 2010
		    ([pdf](http://www.cs.utoronto.ca/~kriz/conv-cifar10-aug2010.pdf))
	**/
	static public function relu6(features:Dynamic, ?name:Dynamic):Dynamic;
	static public function relu6_eager_fallback(features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes rectified linear 6 gradients for a Relu6 operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The backpropagated gradients to the corresponding Relu6 operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding Relu6 operation, or
		    its output; using either one produces the same result.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function relu6_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	static public function relu6_grad_eager_fallback(gradients:Dynamic, features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function relu_eager_fallback(features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes rectified linear gradients for a Relu operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The backpropagated gradients to the corresponding Relu operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding Relu operation, OR
		    the outputs of that operation (both work equivalently).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function relu_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	static public function relu_grad_eager_fallback(gradients:Dynamic, features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes scaled exponential linear: `scale * alpha * (exp(features) - 1)`
		
		if < 0, `scale * features` otherwise.
		
		To be used together with
		`initializer = tf.variance_scaling_initializer(factor=1.0, mode='FAN_IN')`.
		For correct dropout, use `tf.contrib.nn.alpha_dropout`.
		
		See [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function selu(features:Dynamic, ?name:Dynamic):Dynamic;
	static public function selu_eager_fallback(features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients for the scaled exponential linear (Selu) operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding Selu operation.
		  outputs: A `Tensor`. Must have the same type as `gradients`.
		    The outputs of the corresponding Selu operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function selu_grad(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
	static public function selu_grad_eager_fallback(gradients:Dynamic, outputs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes softmax activations.
		
		Used for multi-class predictions. The sum of all outputs generated by softmax
		is 1.
		
		This function performs the equivalent of
		
		    softmax = tf.exp(logits) / tf.reduce_sum(tf.exp(logits), axis)
		
		Example usage:
		
		>>> softmax = tf.nn.softmax([-1, 0., 1.])
		>>> softmax
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([0.09003057, 0.24472848, 0.66524094], dtype=float32)>
		>>> sum(softmax)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type and shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy between `logits` and `labels`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		
		Future major versions of TensorFlow will allow gradients to flow
		into the labels input on backprop by default.
		
		See `tf.nn.softmax_cross_entropy_with_logits_v2`.
		
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		**NOTE:**  While the classes are mutually exclusive, their probabilities
		need not be.  All that is required is that each row of `labels` is
		a valid probability distribution.  If they are not, the computation of the
		gradient will be incorrect.
		
		If using exclusive `labels` (wherein one and only
		one class is true at a time), see `sparse_softmax_cross_entropy_with_logits`.
		
		**WARNING:** This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits and labels of shape
		`[batch_size, num_classes]`, but higher dimensions are supported, with
		the `dim` argument specifying the class dimension.
		
		Backpropagation will happen only into `logits`.  To calculate a cross entropy
		loss that allows backpropagation into both `logits` and `labels`, see
		`tf.nn.softmax_cross_entropy_with_logits_v2`.
		
		**Note that to avoid confusion, it is required to pass only named arguments to
		this function.**
		
		Args:
		  _sentinel: Used to prevent positional parameters. Internal, do not use.
		  labels: Each vector along the class dimension should hold a valid
		    probability distribution e.g. for the case in which labels are of shape
		    `[batch_size, num_classes]`, each row of `labels[i]` must be a valid
		    probability distribution.
		  logits: Per-label activations, typically a linear output. These activation
		    energies are interpreted as unnormalized log probabilities.
		  dim: The class dimension. Defaulted to -1 which is the last dimension.
		  name: A name for the operation (optional).
		  axis: Alias for dim.
		
		Returns:
		  A `Tensor` that contains the softmax cross entropy loss. Its type is the
		  same as `logits` and its shape is the same as `labels` except that it does
		  not have the last dimension of `labels`.
	**/
	static public function softmax_cross_entropy_with_logits(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?dim:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	static public function softmax_cross_entropy_with_logits_eager_fallback(features:Dynamic, labels:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy between `logits` and `labels`.
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		**NOTE:**  While the classes are mutually exclusive, their probabilities
		need not be.  All that is required is that each row of `labels` is
		a valid probability distribution.  If they are not, the computation of the
		gradient will be incorrect.
		
		If using exclusive `labels` (wherein one and only
		one class is true at a time), see `sparse_softmax_cross_entropy_with_logits`.
		
		Usage:
		
		>>> logits = [[4.0, 2.0, 1.0], [0.0, 5.0, 1.0]]
		>>> labels = [[1.0, 0.0, 0.0], [0.0, 0.8, 0.2]]
		>>> tf.nn.softmax_cross_entropy_with_logits(labels=labels, logits=logits)
		<tf.Tensor: shape=(2,), dtype=float32,
		numpy=array([0.16984604, 0.82474494], dtype=float32)>
		
		**WARNING:** This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits and labels of shape
		`[batch_size, num_classes]`, but higher dimensions are supported, with
		the `axis` argument specifying the class dimension.
		
		`logits` and `labels` must have the same dtype (either `float16`, `float32`,
		or `float64`).
		
		Backpropagation will happen into both `logits` and `labels`.  To disallow
		backpropagation into `labels`, pass label tensors through `tf.stop_gradient`
		before feeding it to this function.
		
		**Note that to avoid confusion, it is required to pass only named arguments to
		this function.**
		
		Args:
		  labels: Each vector along the class dimension should hold a valid
		    probability distribution e.g. for the case in which labels are of shape
		    `[batch_size, num_classes]`, each row of `labels[i]` must be a valid
		    probability distribution.
		  logits: Per-label activations, typically a linear output. These activation
		    energies are interpreted as unnormalized log probabilities.
		  axis: The class dimension. Defaulted to -1 which is the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that contains the softmax cross entropy loss. Its type is the
		  same as `logits` and its shape is the same as `labels` except that it does
		  not have the last dimension of `labels`.
	**/
	static public function softmax_cross_entropy_with_logits_v2(labels:Dynamic, logits:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy between `logits` and `labels`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		**NOTE:**  While the classes are mutually exclusive, their probabilities
		need not be.  All that is required is that each row of `labels` is
		a valid probability distribution.  If they are not, the computation of the
		gradient will be incorrect.
		
		If using exclusive `labels` (wherein one and only
		one class is true at a time), see `sparse_softmax_cross_entropy_with_logits`.
		
		**WARNING:** This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits and labels of shape
		`[batch_size, num_classes]`, but higher dimensions are supported, with
		the `axis` argument specifying the class dimension.
		
		`logits` and `labels` must have the same dtype (either `float16`, `float32`,
		or `float64`).
		
		Backpropagation will happen into both `logits` and `labels`.  To disallow
		backpropagation into `labels`, pass label tensors through `tf.stop_gradient`
		before feeding it to this function.
		
		**Note that to avoid confusion, it is required to pass only named arguments to
		this function.**
		
		Args:
		  labels: Each vector along the class dimension should hold a valid
		    probability distribution e.g. for the case in which labels are of shape
		    `[batch_size, num_classes]`, each row of `labels[i]` must be a valid
		    probability distribution.
		  logits: Unscaled log probabilities.
		  axis: The class dimension. Defaulted to -1 which is the last dimension.
		  name: A name for the operation (optional).
		  dim: Deprecated alias for axis.
		
		Returns:
		  A `Tensor` that contains the softmax cross entropy loss. Its type is the
		  same as `logits` and its shape is the same as `labels` except that it does
		  not have the last dimension of `labels`.
	**/
	static public function softmax_cross_entropy_with_logits_v2_helper(labels:Dynamic, logits:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	static public function softmax_eager_fallback(logits:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes softmax activations.
		
		Used for multi-class predictions. The sum of all outputs generated by softmax
		is 1.
		
		This function performs the equivalent of
		
		    softmax = tf.exp(logits) / tf.reduce_sum(tf.exp(logits), axis)
		
		Example usage:
		
		>>> softmax = tf.nn.softmax([-1, 0., 1.])
		>>> softmax
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([0.09003057, 0.24472848, 0.66524094], dtype=float32)>
		>>> sum(softmax)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type and shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function softmax_v2(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function softplus(features:Dynamic, ?name:Dynamic):Dynamic;
	static public function softplus_eager_fallback(features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes softplus gradients for a softplus operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding softplus operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding softplus operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function softplus_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	static public function softplus_grad_eager_fallback(gradients:Dynamic, features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes softsign: `features / (abs(features) + 1)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function softsign(features:Dynamic, ?name:Dynamic):Dynamic;
	static public function softsign_eager_fallback(features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes softsign gradients for a softsign operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding softsign operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding softsign operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function softsign_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	static public function softsign_grad_eager_fallback(gradients:Dynamic, features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes sparse softmax cross entropy between `logits` and `labels`.
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		**NOTE:**  For this operation, the probability of a given label is considered
		exclusive.  That is, soft classes are not allowed, and the `labels` vector
		must provide a single specific index for the true class for each row of
		`logits` (each minibatch entry).  For soft softmax classification with
		a probability distribution for each entry, see
		`softmax_cross_entropy_with_logits_v2`.
		
		**WARNING:** This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits of shape
		`[batch_size, num_classes]` and have labels of shape
		`[batch_size]`, but higher dimensions are supported, in which
		case the `dim`-th dimension is assumed to be of size `num_classes`.
		`logits` must have the dtype of `float16`, `float32`, or `float64`, and
		`labels` must have the dtype of `int32` or `int64`.
		
		**Note that to avoid confusion, it is required to pass only named arguments to
		this function.**
		
		Args:
		  _sentinel: Used to prevent positional parameters. Internal, do not use.
		  labels: `Tensor` of shape `[d_0, d_1, ..., d_{r-1}]` (where `r` is rank of
		    `labels` and result) and dtype `int32` or `int64`. Each entry in `labels`
		    must be an index in `[0, num_classes)`. Other values will raise an
		    exception when this op is run on CPU, and return `NaN` for corresponding
		    loss and gradient rows on GPU.
		  logits: Per-label activations (typically a linear output) of shape
		    `[d_0, d_1, ..., d_{r-1}, num_classes]` and dtype `float16`, `float32`, or
		    `float64`. These activation energies are interpreted as unnormalized log
		    probabilities.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `labels` and of the same type as `logits`
		  with the softmax cross entropy loss.
		
		Raises:
		  ValueError: If logits are scalars (need to have rank >= 1) or if the rank
		    of the labels is not equal to the rank of the logits minus one.
	**/
	static public function sparse_softmax_cross_entropy_with_logits(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_softmax_cross_entropy_with_logits_eager_fallback(features:Dynamic, labels:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes sparse softmax cross entropy between `logits` and `labels`.
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		Note:  For this operation, the probability of a given label is considered
		exclusive.  That is, soft classes are not allowed, and the `labels` vector
		must provide a single specific index for the true class for each row of
		`logits` (each minibatch entry).  For soft softmax classification with
		a probability distribution for each entry, see
		`softmax_cross_entropy_with_logits_v2`.
		
		Warning: This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits of shape
		`[batch_size, num_classes]` and have labels of shape
		`[batch_size]`, but higher dimensions are supported, in which
		case the `dim`-th dimension is assumed to be of size `num_classes`.
		`logits` must have the dtype of `float16`, `float32`, or `float64`, and
		`labels` must have the dtype of `int32` or `int64`.
		
		>>> logits = tf.constant([[2., -5., .5, -.1],
		...                       [0., 0., 1.9, 1.4],
		...                       [-100., 100., -100., -100.]])
		>>> labels = tf.constant([0, 3, 1])
		>>> tf.nn.sparse_softmax_cross_entropy_with_logits(
		...     labels=labels, logits=logits).numpy()
		array([0.29750752, 1.1448325 , 0.        ], dtype=float32)
		
		To avoid confusion, passing only named arguments to this function is
		recommended.
		
		Args:
		  labels: `Tensor` of shape `[d_0, d_1, ..., d_{r-1}]` (where `r` is rank of
		    `labels` and result) and dtype `int32` or `int64`. Each entry in `labels`
		    must be an index in `[0, num_classes)`. Other values will raise an
		    exception when this op is run on CPU, and return `NaN` for corresponding
		    loss and gradient rows on GPU.
		  logits: Unscaled log probabilities of shape `[d_0, d_1, ..., d_{r-1},
		    num_classes]` and dtype `float16`, `float32`, or `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `labels` and of the same type as `logits`
		  with the softmax cross entropy loss.
		
		Raises:
		  ValueError: If logits are scalars (need to have rank >= 1) or if the rank
		    of the labels is not equal to the rank of the logits minus one.
	**/
	static public function sparse_softmax_cross_entropy_with_logits_v2(labels:Dynamic, logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `unsqueeze_batch(op(squeeze_batch(inp)))`.
		
		Where `squeeze_batch` reshapes `inp` to shape
		`[prod(inp.shape[:-inner_rank])] + inp.shape[-inner_rank:]`
		and `unsqueeze_batch` does the reverse reshape but on the output.
		
		Args:
		  inp: A tensor with dims `batch_shape + inner_shape` where `inner_shape`
		    is length `inner_rank`.
		  op: A callable that takes a single input tensor and returns a single.
		    output tensor.
		  inner_rank: A python integer.
		  name: A string.
		
		Returns:
		  `unsqueeze_batch_op(squeeze_batch(inp))`.
	**/
	static public function squeeze_batch_dims(inp:Dynamic, op:Dynamic, inner_rank:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes dropout: randomly sets elements to zero to prevent overfitting.
		
		[Dropout](https://arxiv.org/abs/1207.0580) is useful for regularizing DNN
		models. Inputs elements are randomly set to zero (and the other elements are
		rescaled). This encourages each node to be independently useful, as it cannot
		rely on the output of other nodes.
		
		More precisely: With probability `rate` elements of `x` are set to `0`.
		The remaining elements are scaled up by `1.0 / (1 - rate)`, so that the
		expected value is preserved.
		
		>>> x = tf.ones([3,5])
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.5, seed=[1, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[2., 0., 2., 0., 0.],
		       [0., 0., 2., 0., 2.],
		       [0., 0., 0., 0., 2.]], dtype=float32)>
		
		>>> x = tf.ones([3,5])
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.8, seed=[1, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[5., 0., 0., 0., 0.],
		       [0., 0., 0., 0., 5.],
		       [0., 0., 0., 0., 5.]], dtype=float32)>
		
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.0, seed=[1, 0]) == x
		<tf.Tensor: shape=(3, 5), dtype=bool, numpy=
		array([[ True,  True,  True,  True,  True],
		       [ True,  True,  True,  True,  True],
		       [ True,  True,  True,  True,  True]])>
		
		
		This function is a stateless version of `tf.nn.dropout`, in the
		sense that no matter how many times you call this function, the same
		`seed` will lead to the same results, and different `seed` will lead
		to different results.
		
		>>> x = tf.ones([3,5])
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.8, seed=[1, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[5., 0., 0., 0., 0.],
		       [0., 0., 0., 0., 5.],
		       [0., 0., 0., 0., 5.]], dtype=float32)>
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.8, seed=[1, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[5., 0., 0., 0., 0.],
		       [0., 0., 0., 0., 5.],
		       [0., 0., 0., 0., 5.]], dtype=float32)>
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.8, seed=[2, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[5., 0., 0., 0., 0.],
		       [0., 0., 0., 5., 0.],
		       [0., 0., 0., 0., 0.]], dtype=float32)>
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.8, seed=[2, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[5., 0., 0., 0., 0.],
		       [0., 0., 0., 5., 0.],
		       [0., 0., 0., 0., 0.]], dtype=float32)>
		
		Compare the above results to those of `tf.nn.dropout` below. The
		second time `tf.nn.dropout` is called with the same seed, it will
		give a different output.
		
		>>> tf.random.set_seed(0)
		>>> x = tf.ones([3,5])
		>>> tf.nn.dropout(x, rate=0.8, seed=1)
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[0., 0., 0., 5., 5.],
		       [0., 5., 0., 5., 0.],
		       [5., 0., 5., 0., 5.]], dtype=float32)>
		>>> tf.nn.dropout(x, rate=0.8, seed=1)
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[0., 0., 0., 0., 0.],
		       [0., 0., 0., 5., 0.],
		       [0., 0., 0., 0., 0.]], dtype=float32)>
		>>> tf.nn.dropout(x, rate=0.8, seed=2)
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[0., 0., 0., 0., 0.],
		       [0., 5., 0., 5., 0.],
		       [0., 0., 0., 0., 0.]], dtype=float32)>
		>>> tf.nn.dropout(x, rate=0.8, seed=2)
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[0., 0., 0., 0., 0.],
		       [5., 0., 5., 0., 5.],
		       [0., 5., 0., 0., 5.]], dtype=float32)>
		
		The difference between this function and `tf.nn.dropout` is
		analogous to the difference between `tf.random.stateless_uniform`
		and `tf.random.uniform`. Please see [Random number
		generation](https://www.tensorflow.org/guide/random_numbers) guide
		for a detailed description of the various RNG systems in TF. As the
		guide states, legacy stateful RNG ops like `tf.random.uniform` and
		`tf.nn.dropout` are not deprecated yet but highly discouraged,
		because their states are hard to control.
		
		By default, each element is kept or dropped independently.  If `noise_shape`
		is specified, it must be
		[broadcastable](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		to the shape of `x`, and only dimensions with `noise_shape[i] == shape(x)[i]`
		will make independent decisions. This is useful for dropping whole
		channels from an image or sequence. For example:
		
		>>> x = tf.ones([3,10])
		>>> tf.nn.experimental.stateless_dropout(x, rate=2/3, noise_shape=[1,10],
		...                                      seed=[1, 0])
		<tf.Tensor: shape=(3, 10), dtype=float32, numpy=
		array([[3., 0., 0., 0., 0., 0., 0., 3., 0., 3.],
		       [3., 0., 0., 0., 0., 0., 0., 3., 0., 3.],
		       [3., 0., 0., 0., 0., 0., 0., 3., 0., 3.]], dtype=float32)>
		
		Args:
		  x: A floating point tensor.
		  rate: A scalar `Tensor` with the same type as x. The probability
		    that each element is dropped. For example, setting rate=0.1 would drop
		    10% of input elements.
		  seed: An integer tensor of shape `[2]`. The seed of the random numbers.
		  rng_alg: The algorithm used to generate the random numbers
		    (default to `"auto_select"`). See the `alg` argument of
		    `tf.random.stateless_uniform` for the supported values.
		  noise_shape: A 1-D integer `Tensor`, representing the
		    shape for randomly generated keep/drop flags.
		  name: A name for this operation.
		
		Returns:
		  A Tensor of the same shape and dtype of `x`.
		
		Raises:
		  ValueError: If `rate` is not in `[0, 1)` or if `x` is not a floating point
		    tensor. `rate=1` is disallowed, because the output would be all zeros,
		    which is likely not what was intended.
	**/
	static public function stateless_dropout(x:Dynamic, rate:Dynamic, seed:Dynamic, ?rng_alg:Dynamic, ?noise_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Finds values and indices of the `k` largest entries for the last dimension.
		
		If the input is a vector (rank=1), finds the `k` largest entries in the vector
		and outputs their values and indices as vectors.  Thus `values[j]` is the
		`j`-th largest entry in `input`, and its index is `indices[j]`.
		
		>>> result = tf.math.top_k([1, 2, 98, 1, 1, 99, 3, 1, 3, 96, 4, 1],
		...                         k=3)
		>>> result.values.numpy()
		array([99, 98, 96], dtype=int32)
		>>> result.indices.numpy()
		array([5, 2, 9], dtype=int32)
		
		For matrices (resp. higher rank input), computes the top `k` entries in each
		row (resp. vector along the last dimension).  Thus,
		
		>>> input = tf.random.normal(shape=(3,4,5,6))
		>>> k = 2
		>>> values, indices  = tf.math.top_k(input, k=k)
		>>> values.shape.as_list()
		[3, 4, 5, 2]
		>>>
		>>> values.shape == indices.shape == input.shape[:-1] + [k]
		True
		
		The indices can be used to `gather` from a tensor who's shape matches `input`.
		
		>>> gathered_values = tf.gather(input, indices, batch_dims=-1)
		>>> assert tf.reduce_all(gathered_values == values)
		
		If two elements are equal, the lower-index element appears first.
		
		>>> result = tf.math.top_k([1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0],
		...                        k=3)
		>>> result.indices.numpy()
		array([0, 1, 3], dtype=int32)
		
		Args:
		  input: 1-D or higher `Tensor` with last dimension at least `k`.
		  k: 0-D `int32` `Tensor`.  Number of top elements to look for along the last
		    dimension (along each row for matrices).
		  sorted: If true the resulting `k` elements will be sorted by the values in
		    descending order.
		  name: Optional name for the operation.
		
		Returns:
		  A tuple with two named fields:
		  values: The `k` largest elements along each last dimensional slice.
		  indices: The indices of `values` within the last dimension of `input`.
	**/
	static public function top_k(input:Dynamic, ?k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
	static public function top_k_eager_fallback(input:Dynamic, k:Dynamic, sorted:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		
		  values: A `Tensor`. Has the same type as `input`.
		  indices: A `Tensor` of type `int32`.
	**/
	static public function top_kv2(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
	static public function top_kv2_eager_fallback(input:Dynamic, k:Dynamic, sorted:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs `op` on the space-to-batch representation of `input`.
		
		This has the effect of transforming sliding window operations into the
		corresponding "atrous" operation in which the input is sampled at the
		specified `dilation_rate`.
		
		In the special case that `dilation_rate` is uniformly 1, this simply returns:
		
		  op(input, num_spatial_dims, padding)
		
		Otherwise, it returns:
		
		  batch_to_space_nd(
		    op(space_to_batch_nd(input, adjusted_dilation_rate, adjusted_paddings),
		       num_spatial_dims,
		       "VALID")
		    adjusted_dilation_rate,
		    adjusted_crops),
		
		where:
		
		  adjusted_dilation_rate is an int64 tensor of shape [max(spatial_dims)],
		  adjusted_{paddings,crops} are int64 tensors of shape [max(spatial_dims), 2]
		
		defined as follows:
		
		We first define two int64 tensors `paddings` and `crops` of shape
		`[num_spatial_dims, 2]` based on the value of `padding` and the spatial
		dimensions of the `input`:
		
		If `padding = "VALID"`, then:
		
		  paddings, crops = required_space_to_batch_paddings(
		    input_shape[spatial_dims],
		    dilation_rate)
		
		If `padding = "SAME"`, then:
		
		  dilated_filter_shape =
		    filter_shape + (filter_shape - 1) * (dilation_rate - 1)
		
		  paddings, crops = required_space_to_batch_paddings(
		    input_shape[spatial_dims],
		    dilation_rate,
		    [(dilated_filter_shape - 1) // 2,
		     dilated_filter_shape - 1 - (dilated_filter_shape - 1) // 2])
		
		Because `space_to_batch_nd` and `batch_to_space_nd` assume that the spatial
		dimensions are contiguous starting at the second dimension, but the specified
		`spatial_dims` may not be, we must adjust `dilation_rate`, `paddings` and
		`crops` in order to be usable with these operations.  For a given dimension,
		if the block size is 1, and both the starting and ending padding and crop
		amounts are 0, then space_to_batch_nd effectively leaves that dimension alone,
		which is what is needed for dimensions not part of `spatial_dims`.
		Furthermore, `space_to_batch_nd` and `batch_to_space_nd` handle this case
		efficiently for any number of leading and trailing dimensions.
		
		For 0 <= i < len(spatial_dims), we assign:
		
		  adjusted_dilation_rate[spatial_dims[i] - 1] = dilation_rate[i]
		  adjusted_paddings[spatial_dims[i] - 1, :] = paddings[i, :]
		  adjusted_crops[spatial_dims[i] - 1, :] = crops[i, :]
		
		All unassigned values of `adjusted_dilation_rate` default to 1, while all
		unassigned values of `adjusted_paddings` and `adjusted_crops` default to 0.
		
		Note in the case that `dilation_rate` is not uniformly 1, specifying "VALID"
		padding is equivalent to specifying `padding = "SAME"` with a filter_shape of
		`[1]*N`.
		
		Advanced usage. Note the following optimization: A sequence of
		`with_space_to_batch` operations with identical (not uniformly 1)
		`dilation_rate` parameters and "VALID" padding
		
		  net = with_space_to_batch(net, dilation_rate, "VALID", op_1)
		  ...
		  net = with_space_to_batch(net, dilation_rate, "VALID", op_k)
		
		can be combined into a single `with_space_to_batch` operation as follows:
		
		  def combined_op(converted_input, num_spatial_dims, _):
		    result = op_1(converted_input, num_spatial_dims, "VALID")
		    ...
		    result = op_k(result, num_spatial_dims, "VALID")
		
		  net = with_space_to_batch(net, dilation_rate, "VALID", combined_op)
		
		This eliminates the overhead of `k-1` calls to `space_to_batch_nd` and
		`batch_to_space_nd`.
		
		Similarly, a sequence of `with_space_to_batch` operations with identical (not
		uniformly 1) `dilation_rate` parameters, "SAME" padding, and odd filter
		dimensions
		
		  net = with_space_to_batch(net, dilation_rate, "SAME", op_1, filter_shape_1)
		  ...
		  net = with_space_to_batch(net, dilation_rate, "SAME", op_k, filter_shape_k)
		
		can be combined into a single `with_space_to_batch` operation as follows:
		
		  def combined_op(converted_input, num_spatial_dims, _):
		    result = op_1(converted_input, num_spatial_dims, "SAME")
		    ...
		    result = op_k(result, num_spatial_dims, "SAME")
		
		  net = with_space_to_batch(net, dilation_rate, "VALID", combined_op)
		
		Args:
		  input: Tensor of rank > max(spatial_dims).
		  dilation_rate: int32 Tensor of *known* shape [num_spatial_dims].
		  padding: str constant equal to "VALID" or "SAME"
		  op: Function that maps (input, num_spatial_dims, padding) -> output
		  filter_shape: If padding = "SAME", specifies the shape of the convolution
		    kernel/pooling window as an integer Tensor of shape [>=num_spatial_dims].
		    If padding = "VALID", filter_shape is ignored and need not be specified.
		  spatial_dims: Monotonically increasing sequence of `num_spatial_dims`
		    integers (which are >= 1) specifying the spatial dimensions of `input`
		    and output.  Defaults to: `range(1, num_spatial_dims+1)`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		
		Returns:
		  The output Tensor as described above, dimensions will vary based on the op
		  provided.
		
		Raises:
		  ValueError: if `padding` is invalid or the arguments are incompatible.
		  ValueError: if `spatial_dims` are invalid.
	**/
	static public function with_space_to_batch(input:Dynamic, dilation_rate:Dynamic, padding:Dynamic, op:Dynamic, ?filter_shape:Dynamic, ?spatial_dims:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Computes matmul(x, weights) + biases.
		
		Args:
		  x: a 2D tensor.  Dimensions typically: batch, in_units
		  weights: a 2D tensor.  Dimensions typically: in_units, out_units
		  biases: a 1D tensor.  Dimensions: out_units
		  name: A name for the operation (optional).  If not specified
		    "xw_plus_b" is used.
		
		Returns:
		  A 2-D Tensor computing matmul(x, weights) + biases.
		  Dimensions typically: batch, out_units.
	**/
	static public function xw_plus_b(x:Dynamic, weights:Dynamic, biases:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes matmul(x, weights) + biases.
		
		This is a deprecated version of that will soon be removed.
		
		Args:
		  x: a 2D tensor.  Dimensions typically: batch, in_units
		  weights: a 2D tensor.  Dimensions typically: in_units, out_units
		  biases: a 1D tensor.  Dimensions: out_units
		  name: A name for the operation (optional).  If not specified
		    "xw_plus_b_v1" is used.
		
		Returns:
		  A 2-D Tensor computing matmul(x, weights) + biases.
		  Dimensions typically: batch, out_units.
	**/
	static public function xw_plus_b_v1(x:Dynamic, weights:Dynamic, biases:Dynamic, ?name:Dynamic):Dynamic;
}