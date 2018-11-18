/* This file is generated, do not edit! */
package tensorflow.python.ops.nn_ops;
@:pythonImport("tensorflow.python.ops.nn_ops") extern class Nn_ops_Module {
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
	static public function _ensure_xent_args(name:Dynamic, sentinel:Dynamic, labels:Dynamic, logits:Dynamic):Dynamic;
	/**
		Flattens logits' outer dimensions and keep its last dimension.
	**/
	static public function _flatten_outer_dims(logits:Dynamic):Dynamic;
	static public function _get_noise_shape(x:Dynamic, noise_shape:Dynamic):Dynamic;
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
	/**
		Helper function for softmax and log_softmax.
		
		It reshapes and transposes the input logits into a 2-D Tensor and then invokes
		the tf.nn._softmax or tf.nn._log_softmax function. The output would be
		transposed and reshaped back.
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  compute_op: Either gen_nn_ops.softmax or gen_nn_ops.log_softmax
		  dim: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`. Same shape as `logits`.
		Raises:
		  InvalidArgumentError: if `logits` is empty or `dim` is beyond the last
		    dimension of `logits`.
	**/
	static public function _softmax(logits:Dynamic, compute_op:Dynamic, ?dim:Dynamic, ?name:Dynamic):Dynamic;
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
		feature extraction, please see: [Semantic Image Segmentation with Deep
		Convolutional Nets and Fully Connected CRFs](http://arxiv.org/abs/1412.7062).
		The same operation is investigated further in [Multi-Scale Context Aggregation
		by Dilated Convolutions](http://arxiv.org/abs/1511.07122). Previous works
		that effectively use atrous convolution in different ways are, among others,
		[OverFeat: Integrated Recognition, Localization and Detection using
		Convolutional Networks](http://arxiv.org/abs/1312.6229) and [Fast Image
		Scanning with Deep Max-Pooling Convolutional Neural
		Networks](http://arxiv.org/abs/1302.1700).
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
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
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
	**/
	static public function atrous_conv2d(value:Dynamic, filters:Dynamic, rate:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `atrous_conv2d`.
		
		This operation is sometimes called "deconvolution" after [Deconvolutional
		Networks](http://www.matthewzeiler.com/pubs/cvpr2010/cvpr2010.pdf), but is
		actually the transpose (gradient) of `atrous_conv2d` rather than an actual
		deconvolution.
		
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
		    deconvolution op.
		  rate: A positive int32. The stride with which we sample input values across
		    the `height` and `width` dimensions. Equivalently, the rate by which we
		    upsample the filter values by inserting zeros across the `height` and
		    `width` dimensions. In the literature, the same parameter is sometimes
		    called `input stride` or `dilation`.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filters`' shape, or if
		    padding is other than `'VALID'` or `'SAME'`, or if the `rate` is less
		    than one, or if the output_shape is not a tensor with 4 elements.
	**/
	static public function atrous_conv2d_transpose(value:Dynamic, filters:Dynamic, output_shape:Dynamic, rate:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  value: A 4-D `Tensor` of shape `[batch, height, width, channels]` and type
		    `float32`, `float64`, `qint8`, `quint8`, or `qint32`.
		  ksize: A list or tuple of 4 ints. The size of the window for each dimension
		    of the input tensor.
		  strides: A list or tuple of 4 ints. The stride of the sliding window for
		    each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same type as `value`.  The average pooled output tensor.
	**/
	static public function avg_pool(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs 3D average pooling on the input.
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function avg_pool3d
	**/
	static public function avg_pool3d_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function avg_pool3d_grad
	**/
	static public function avg_pool3d_grad_eager_fallback(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function avg_pool
	**/
	static public function avg_pool_eager_fallback(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function avg_pool_grad
	**/
	static public function avg_pool_grad_eager_fallback(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_norm_with_global_normalization_grad
	**/
	static public function batch_norm_with_global_normalization_grad_eager_fallback(t:Dynamic, m:Dynamic, v:Dynamic, gamma:Dynamic, backprop:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Adds `bias` to `value`.
		
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
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `value`.
	**/
	static public function bias_add(value:Dynamic, bias:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bias_add
	**/
	static public function bias_add_eager_fallback(value:Dynamic, bias:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function bias_add_grad
	**/
	static public function bias_add_grad_eager_fallback(out_backprop:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function bias_add_v1
	**/
	static public function bias_add_v1_eager_fallback(value:Dynamic, bias:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes a 1-D convolution given 3-D input and filter tensors. (deprecated arguments) (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		`NCHW` for data_format is deprecated, use `NCW` instead
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		`NHWC` for data_format is deprecated, use `NWC` instead
		
		Given an input tensor of shape
		  [batch, in_width, in_channels]
		if data_format is "NWC", or
		  [batch, in_channels, in_width]
		if data_format is "NCW",
		and a filter / kernel tensor of shape
		[filter_width, in_channels, out_channels], this op reshapes
		the arguments to pass them to conv2d to perform the equivalent
		convolution operation.
		
		Internally, this op reshapes the input tensors and invokes `tf.nn.conv2d`.
		For example, if `data_format` does not start with "NC", a tensor of shape
		  [batch, in_width, in_channels]
		is reshaped to
		  [batch, 1, in_width, in_channels],
		and the filter is reshaped to
		  [1, filter_width, in_channels, out_channels].
		The result is then reshaped back to
		  [batch, out_width, out_channels]
		\(where out_width is a function of the stride and padding as in conv2d\) and
		returned to the caller.
		
		Args:
		  value: A 3D `Tensor`.  Must be of type `float16`, `float32`, or `float64`.
		  filters: A 3D `Tensor`.  Must have the same type as `value`.
		  stride: An `integer`.  The number of entries by which
		    the filter is moved right at each step.
		  padding: 'SAME' or 'VALID'
		  use_cudnn_on_gpu: An optional `bool`.  Defaults to `True`.
		  data_format: An optional `string` from `"NWC", "NCW"`.  Defaults
		    to `"NWC"`, the data is stored in the order of
		    [batch, in_width, in_channels].  The `"NCW"` format stores
		    data as [batch, in_channels, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.  Has the same type as input.
		
		Raises:
		  ValueError: if `data_format` is invalid.
	**/
	static public function conv1d(value:Dynamic, filters:Dynamic, stride:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `conv1d`.
		
		This operation is sometimes called "deconvolution" after [Deconvolutional
		Networks](http://www.matthewzeiler.com/pubs/cvpr2010/cvpr2010.pdf), but is
		actually the transpose (gradient) of `conv1d` rather than an actual
		deconvolution.
		
		Args:
		  value: A 3-D `Tensor` of type `float` and shape
		    `[batch, in_width, in_channels]` for `NWC` data format or
		    `[batch, in_channels, in_width]` for `NCW` data format.
		  filter: A 3-D `Tensor` with the same type as `value` and shape
		    `[filter_width, output_channels, in_channels]`.  `filter`'s
		    `in_channels` dimension must match that of `value`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  stride: An `integer`.  The number of entries by which
		    the filter is moved right at each step.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
	**/
	static public function conv1d_transpose(value:Dynamic, filter:Dynamic, output_shape:Dynamic, stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
	static public function conv2d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
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
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
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
	static public function conv2d_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv2d_backprop_filter
	**/
	static public function conv2d_backprop_filter_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`,
		    where `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
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
	static public function conv2d_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv2d_backprop_input
	**/
	static public function conv2d_backprop_input_eager_fallback(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv2d
	**/
	static public function conv2d_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		The transpose of `conv2d`.
		
		This operation is sometimes called "deconvolution" after [Deconvolutional
		Networks](http://www.matthewzeiler.com/pubs/cvpr2010/cvpr2010.pdf), but is
		actually the transpose (gradient) of `conv2d` rather than an actual
		deconvolution.
		
		Args:
		  value: A 4-D `Tensor` of type `float` and shape
		    `[batch, height, width, in_channels]` for `NHWC` data format or
		    `[batch, in_channels, height, width]` for `NCHW` data format.
		  filter: A 4-D `Tensor` with the same type as `value` and shape
		    `[height, width, output_channels, in_channels]`.  `filter`'s
		    `in_channels` dimension must match that of `value`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: A list of ints. The stride of the sliding window for each
		    dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
	**/
	static public function conv2d_transpose(value:Dynamic, filter:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function conv3d_backprop_filter
	**/
	static public function conv3d_backprop_filter_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function conv3d_backprop_filter_v2
	**/
	static public function conv3d_backprop_filter_v2_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function conv3d_backprop_input
	**/
	static public function conv3d_backprop_input_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function conv3d_backprop_input_v2
	**/
	static public function conv3d_backprop_input_v2_eager_fallback(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv3d
	**/
	static public function conv3d_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		The transpose of `conv3d`.
		
		This operation is sometimes called "deconvolution" after [Deconvolutional
		Networks](http://www.matthewzeiler.com/pubs/cvpr2010/cvpr2010.pdf), but is
		actually the transpose (gradient) of `conv3d` rather than an actual
		deconvolution.
		
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
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
	**/
	static public function conv3d_transpose(value:Dynamic, filter:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
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
		output striding `strides` as described in the
		[comment here](https://tensorflow.org/api_guides/python/nn#Convolution).
		
		In the case that `data_format` does start with `"NC"`, the `input` and output
		(but not the `filter`) are simply transposed as follows:
		
		  convolution(input, data_format, **kwargs) =
		    tf.transpose(convolution(tf.transpose(input, [0] + range(2,N+2) + [1]),
		                             **kwargs),
		                 [0, N+1] + range(1, N+1))
		
		It is required that 1 <= N <= 3.
		
		Args:
		  input: An N-D `Tensor` of type `T`, of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  filter: An N-D `Tensor` with the same type as `input` and shape
		    `spatial_filter_shape + [in_channels, out_channels]`.
		  padding: A string, either `"VALID"` or `"SAME"`. The padding algorithm.
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
	static public function convolution(input:Dynamic, filter:Dynamic, padding:Dynamic, ?strides:Dynamic, ?dilation_rate:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
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
	**/
	static public function crelu(features:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function data_format_dim_map
	**/
	static public function data_format_dim_map_eager_fallback(x:Dynamic, ?src_format:Dynamic, ?dst_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the permuted vector/tensor in the destination data format given the
		
		one in the source data format.
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function data_format_vec_permute
	**/
	static public function data_format_vec_permute_eager_fallback(x:Dynamic, ?src_format:Dynamic, ?dst_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
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
	static public function depthwise_conv2d_native(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
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
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
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
	static public function depthwise_conv2d_native_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function depthwise_conv2d_native_backprop_filter
	**/
	static public function depthwise_conv2d_native_backprop_filter_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
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
	static public function depthwise_conv2d_native_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function depthwise_conv2d_native_backprop_input
	**/
	static public function depthwise_conv2d_native_backprop_input_eager_fallback(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function depthwise_conv2d_native
	**/
	static public function depthwise_conv2d_native_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function dilation2d_backprop_filter
	**/
	static public function dilation2d_backprop_filter_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function dilation2d_backprop_input
	**/
	static public function dilation2d_backprop_input_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function dilation2d
	**/
	static public function dilation2d_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes dropout.
		
		With probability `keep_prob`, outputs the input element scaled up by
		`1 / keep_prob`, otherwise outputs `0`.  The scaling is so that the expected
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
		  keep_prob: A scalar `Tensor` with the same type as x. The probability
		    that each element is kept.
		  noise_shape: A 1-D `Tensor` of type `int32`, representing the
		    shape for randomly generated keep/drop flags.
		  seed: A Python integer. Used to create random seeds. See
		    `tf.set_random_seed`
		    for behavior.
		  name: A name for this operation (optional).
		
		Returns:
		  A Tensor of the same shape of `x`.
		
		Raises:
		  ValueError: If `keep_prob` is not in `(0, 1]` or if `x` is not a floating
		    point tensor.
	**/
	static public function dropout(x:Dynamic, keep_prob:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes exponential linear: `exp(features) - 1` if < 0, `features` otherwise.
		
		See [Fast and Accurate Deep Network Learning by Exponential Linear Units (ELUs)
		](http://arxiv.org/abs/1511.07289)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function elu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function elu
	**/
	static public function elu_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function elu_grad
	**/
	static public function elu_grad_eager_fallback(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fractional_avg_pool
	**/
	static public function fractional_avg_pool_eager_fallback(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fractional_avg_pool_grad
	**/
	static public function fractional_avg_pool_grad_eager_fallback(orig_input_tensor_shape:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fractional_max_pool
	**/
	static public function fractional_max_pool_eager_fallback(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fractional_max_pool_grad
	**/
	static public function fractional_max_pool_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_batch_norm_grad
	**/
	static public function fused_batch_norm_grad_eager_fallback(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_batch_norm_grad_v2
	**/
	static public function fused_batch_norm_grad_v2_eager_fallback(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function fused_batch_norm_v2(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_batch_norm_v2
	**/
	static public function fused_batch_norm_v2_eager_fallback(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_pad_conv2d
	**/
	static public function fused_pad_conv2d_eager_fallback(input:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_resize_and_pad_conv2d
	**/
	static public function fused_resize_and_pad_conv2d_eager_fallback(input:Dynamic, size:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?resize_align_corners:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function in_top_k
	**/
	static public function in_top_k_eager_fallback(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function in_top_kv2
	**/
	static public function in_top_kv2_eager_fallback(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function l2_loss
	**/
	static public function l2_loss_eager_fallback(t:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compute the Leaky ReLU activation function.
		
		"Rectifier Nonlinearities Improve Neural Network Acoustic Models"
		AL Maas, AY Hannun, AY Ng - Proc. ICML, 2013
		https://ai.stanford.edu/~amaas/papers/relu_hybrid_icml2013_final.pdf
		
		Args:
		  features: A `Tensor` representing preactivation values. Must be one of
		    the following types: `float16`, `float32`, `float64`, `int32`, `int64`.
		  alpha: Slope of the activation function at x < 0.
		  name: A name for the operation (optional).
		
		Returns:
		  The activation value.
	**/
	static public function leaky_relu(features:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
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
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
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
	/**
		This is the slowpath function for Eager mode.
		This is for function log_softmax
	**/
	static public function log_softmax_eager_fallback(logits:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function lrn
	**/
	static public function lrn_eager_fallback(input:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function lrn_grad
	**/
	static public function lrn_grad_eager_fallback(input_grads:Dynamic, input_image:Dynamic, output_image:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs the max pooling on the input.
		
		Args:
		  value: A 4-D `Tensor` of the format specified by `data_format`.
		  ksize: A list or tuple of 4 ints. The size of the window for each dimension
		    of the input tensor.
		  strides: A list or tuple of 4 ints. The stride of the sliding window for
		    each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string. 'NHWC', 'NCHW' and 'NCHW_VECT_C' are supported.
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool3d
	**/
	static public function max_pool3d_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients of max pooling function.
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool3d_grad
	**/
	static public function max_pool3d_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool3d_grad_grad
	**/
	static public function max_pool3d_grad_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool
	**/
	static public function max_pool_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function max_pool_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad
	**/
	static public function max_pool_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad_grad
	**/
	static public function max_pool_grad_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad_grad_v2
	**/
	static public function max_pool_grad_grad_v2_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function max_pool_grad_grad_with_argmax(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad_grad_with_argmax
	**/
	static public function max_pool_grad_grad_with_argmax_eager_fallback(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad_v2
	**/
	static public function max_pool_grad_v2_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function max_pool_grad_with_argmax(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad_with_argmax
	**/
	static public function max_pool_grad_with_argmax_eager_fallback(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_v2
	**/
	static public function max_pool_v2_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs max pooling on the input and outputs both max values and indices.
		
		The indices in `argmax` are flattened, so that a maximum value at position
		`[b, y, x, c]` becomes flattened index
		`((b * height + y) * width + x) * channels + c`.
		
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
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, argmax).
		
		  output: A `Tensor`. Has the same type as `input`.
		  argmax: A `Tensor` of type `Targmax`.
	**/
	static public function max_pool_with_argmax(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?Targmax:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_with_argmax
	**/
	static public function max_pool_with_argmax_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?Targmax:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Finds values of the `n`-th order statistic for the last dmension.
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function nth_element
	**/
	static public function nth_element_eager_fallback(input:Dynamic, n:Dynamic, ?reverse:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function pool(input:Dynamic, window_shape:Dynamic, pooling_type:Dynamic, padding:Dynamic, ?dilation_rate:Dynamic, ?strides:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_avg_pool
	**/
	static public function quantized_avg_pool_eager_fallback(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_batch_norm_with_global_normalization
	**/
	static public function quantized_batch_norm_with_global_normalization_eager_fallback(t:Dynamic, t_min:Dynamic, t_max:Dynamic, m:Dynamic, m_min:Dynamic, m_max:Dynamic, v:Dynamic, v_min:Dynamic, v_max:Dynamic, beta:Dynamic, beta_min:Dynamic, beta_max:Dynamic, gamma:Dynamic, gamma_min:Dynamic, gamma_max:Dynamic, out_type:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_bias_add
	**/
	static public function quantized_bias_add_eager_fallback(input:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_bias:Dynamic, max_bias:Dynamic, out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function quantized_conv2d
	**/
	static public function quantized_conv2d_eager_fallback(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_max_pool
	**/
	static public function quantized_max_pool_eager_fallback(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_relu6
	**/
	static public function quantized_relu6_eager_fallback(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_relu
	**/
	static public function quantized_relu_eager_fallback(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_relu_x
	**/
	static public function quantized_relu_x_eager_fallback(features:Dynamic, max_value:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes rectified linear: `max(features, 0)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `qint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function relu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Rectified Linear 6: `min(max(features, 0), 6)`.
		
		Source: [Convolutional Deep Belief Networks on CIFAR-10. A.
		Krizhevsky](http://www.cs.utoronto.ca/~kriz/conv-cifar10-aug2010.pdf)
		
		Args:
		  features: A `Tensor` with type `float`, `double`, `int32`, `int64`, `uint8`,
		    `int16`, or `int8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `features`.
	**/
	static public function relu6(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function relu6
	**/
	static public function relu6_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function relu6_grad
	**/
	static public function relu6_grad_eager_fallback(gradients:Dynamic, features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function relu
	**/
	static public function relu_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function relu_grad
	**/
	static public function relu_grad_eager_fallback(gradients:Dynamic, features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function selu
	**/
	static public function selu_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function selu_grad
	**/
	static public function selu_grad_eager_fallback(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes softmax activations. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		This function performs the equivalent of
		
		    softmax = tf.exp(logits) / tf.reduce_sum(tf.exp(logits), axis)
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		  dim: Deprecated alias for `axis`.
		
		Returns:
		  A `Tensor`. Has the same type and shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy between `logits` and `labels`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
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
		  logits: Unscaled log probabilities.
		  dim: The class dimension. Defaulted to -1 which is the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that contains the softmax cross entropy loss. Its type is the
		  same as `logits` and its shape is the same as `labels` except that it does
		  not have the last dimension of `labels`.
	**/
	static public function softmax_cross_entropy_with_logits(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function softmax_cross_entropy_with_logits
	**/
	static public function softmax_cross_entropy_with_logits_eager_fallback(features:Dynamic, labels:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		
		**WARNING:** This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits and labels of shape
		`[batch_size, num_classes]`, but higher dimensions are supported, with
		the `dim` argument specifying the class dimension.
		
		`logits` and `labels` must have the same dtype (either `float16`, `float32`,
		or `float64`).
		
		Backpropagation will happen into both `logits` and `labels`.  To disallow
		backpropagation into `labels`, pass label tensors through `tf.stop_gradient`
		before feeding it to this function.
		
		**Note that to avoid confusion, it is required to pass only named arguments to
		this function.**
		
		Args:
		  _sentinel: Used to prevent positional parameters. Internal, do not use.
		  labels: Each vector along the class dimension should hold a valid
		    probability distribution e.g. for the case in which labels are of shape
		    `[batch_size, num_classes]`, each row of `labels[i]` must be a valid
		    probability distribution.
		  logits: Unscaled log probabilities.
		  dim: The class dimension. Defaulted to -1 which is the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that contains the softmax cross entropy loss. Its type is the
		  same as `logits` and its shape is the same as `labels` except that it does
		  not have the last dimension of `labels`.
	**/
	static public function softmax_cross_entropy_with_logits_v2(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function softmax
	**/
	static public function softmax_eager_fallback(logits:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes softplus: `log(exp(features) + 1)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function softplus(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function softplus
	**/
	static public function softplus_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function softplus_grad
	**/
	static public function softplus_grad_eager_fallback(gradients:Dynamic, features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes softsign: `features / (abs(features) + 1)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function softsign(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function softsign
	**/
	static public function softsign_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function softsign_grad
	**/
	static public function softsign_grad_eager_fallback(gradients:Dynamic, features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		
		A common use case is to have logits and labels of shape
		`[batch_size, num_classes]`, but higher dimensions are supported, in which
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
		  logits: Unscaled log probabilities of shape
		    `[d_0, d_1, ..., d_{r-1}, num_classes]` and dtype `float16`, `float32`, or
		    `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `labels` and of the same type as `logits`
		  with the softmax cross entropy loss.
		
		Raises:
		  ValueError: If logits are scalars (need to have rank >= 1) or if the rank
		    of the labels is not equal to the rank of the logits minus one.
	**/
	static public function sparse_softmax_cross_entropy_with_logits(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_softmax_cross_entropy_with_logits
	**/
	static public function sparse_softmax_cross_entropy_with_logits_eager_fallback(features:Dynamic, labels:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Finds values and indices of the `k` largest entries for the last dimension.
		
		If the input is a vector (rank=1), finds the `k` largest entries in the vector
		and outputs their values and indices as vectors.  Thus `values[j]` is the
		`j`-th largest entry in `input`, and its index is `indices[j]`.
		
		For matrices (resp. higher rank input), computes the top `k` entries in each
		row (resp. vector along the last dimension).  Thus,
		
		    values.shape = indices.shape = input.shape[:-1] + [k]
		
		If two elements are equal, the lower-index element appears first.
		
		Args:
		  input: 1-D or higher `Tensor` with last dimension at least `k`.
		  k: 0-D `int32` `Tensor`.  Number of top elements to look for along the last
		    dimension (along each row for matrices).
		  sorted: If true the resulting `k` elements will be sorted by the values in
		    descending order.
		  name: Optional name for the operation.
		
		Returns:
		  values: The `k` largest elements along each last dimensional slice.
		  indices: The indices of `values` within the last dimension of `input`.
	**/
	static public function top_k(input:Dynamic, ?k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function top_k
	**/
	static public function top_k_eager_fallback(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function top_kv2
	**/
	static public function top_kv2_eager_fallback(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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