/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_nn_ops;
@:pythonImport("tensorflow.python.ops.gen_nn_ops") extern class Gen_nn_ops_Module {
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function _batch_norm_with_global_normalization(t:Dynamic, m:Dynamic, v:Dynamic, beta:Dynamic, gamma:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	static public function _batch_norm_with_global_normalization_eager_fallback(t:Dynamic, m:Dynamic, v:Dynamic, beta:Dynamic, gamma:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_conv3d_backprop_filter_v2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_elu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_l2_loss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_lrn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_relu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_selu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_softsign(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function _fused_batch_norm(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?exponential_avg_factor:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	static public function _fused_batch_norm_eager_fallback(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, epsilon:Dynamic, exponential_avg_factor:Dynamic, data_format:Dynamic, is_training:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function avg_pool(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function bias_add_v1(value:Dynamic, bias:Dynamic, ?name:Dynamic):Dynamic;
	static public function bias_add_v1_eager_fallback(value:Dynamic, bias:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function conv2d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function conv2d_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function conv2d_backprop_filter_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, use_cudnn_on_gpu:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function conv2d_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function conv2d_backprop_input_eager_fallback(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, use_cudnn_on_gpu:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function conv2d_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, use_cudnn_on_gpu:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function depthwise_conv2d_native(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function depthwise_conv2d_native_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public function depthwise_conv2d_native_backprop_filter_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, explicit_paddings:Dynamic, data_format:Dynamic, dilations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function depthwise_conv2d_native_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function in_top_k(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	static public function in_top_k_eager_fallback(predictions:Dynamic, targets:Dynamic, k:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function isotonic_regression(input:Dynamic, ?output_dtype:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes rectified linear: `max(features, features * alpha)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  alpha: An optional `float`. Defaults to `0.2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
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
	static public function log_softmax(logits:Dynamic, ?name:Dynamic):Dynamic;
	static public function log_softmax_eager_fallback(logits:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function max_pool(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?explicit_paddings:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function nth_element(input:Dynamic, n:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	static public function nth_element_eager_fallback(input:Dynamic, n:Dynamic, reverse:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Computes rectified linear 6: `min(max(features, 0), 6)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
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
		
		For each batch `i` and class `j` we have
		
		    $$softmax[i, j] = exp(logits[i, j]) / sum_j(exp(logits[i, j]))$$
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    2-D with shape `[batch_size, num_classes]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`.
	**/
	static public function softmax(logits:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function softmax_cross_entropy_with_logits(features:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
	static public function softmax_cross_entropy_with_logits_eager_fallback(features:Dynamic, labels:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function softmax_eager_fallback(logits:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_softmax_cross_entropy_with_logits(features:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_softmax_cross_entropy_with_logits_eager_fallback(features:Dynamic, labels:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function top_k(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
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
}