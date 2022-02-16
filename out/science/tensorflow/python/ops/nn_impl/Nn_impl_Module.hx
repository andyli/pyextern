/* This file is generated, do not edit! */
package tensorflow.python.ops.nn_impl;
@:pythonImport("tensorflow.python.ops.nn_impl") extern class Nn_impl_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for nce_loss and sampled_softmax_loss functions.
		
		Computes sampled output training logits and labels suitable for implementing
		e.g. noise-contrastive estimation (see nce_loss) or sampled softmax (see
		sampled_softmax_loss).
		
		Note: In the case where num_true > 1, we assign to each target class
		the target probability 1 / num_true so that the target probabilities
		sum to 1 per-example.
		
		Args:
		  weights: A `Tensor` of shape `[num_classes, dim]`, or a list of `Tensor`
		      objects whose concatenation along dimension 0 has shape
		      `[num_classes, dim]`.  The (possibly-partitioned) class embeddings.
		  biases: A `Tensor` of shape `[num_classes]`.  The (possibly-partitioned)
		      class biases.
		  labels: A `Tensor` of type `int64` and shape `[batch_size,
		      num_true]`. The target classes.  Note that this format differs from
		      the `labels` argument of `nn.softmax_cross_entropy_with_logits`.
		  inputs: A `Tensor` of shape `[batch_size, dim]`.  The forward
		      activations of the input network.
		  num_sampled: An `int`.  The number of classes to randomly sample per batch.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: a tuple of (`sampled_candidates`, `true_expected_count`,
		      `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		      (if None, we default to `log_uniform_candidate_sampler`)
		  subtract_log_q: A `bool`.  whether to subtract the log expected count of
		      the labels in the sample to get the logits of the true labels.
		      Default is True.  Turn off for Negative Sampling.
		  remove_accidental_hits:  A `bool`.  whether to remove "accidental hits"
		      where a sampled class equals one of the target classes.  Default is
		      False.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		      if `len(weights) > 1`. Currently `"div"` and `"mod"` are supported.
		      Default is `"mod"`. See `tf.nn.embedding_lookup` for more details.
		  name: A name for the operation (optional).
		  seed: random seed for candidate sampling. Default to None, which doesn't set
		      the op-level random seed for candidate sampling.
		Returns:
		  out_logits: `Tensor` object with shape
		      `[batch_size, num_true + num_sampled]`, for passing to either
		      `nn.sigmoid_cross_entropy_with_logits` (NCE) or
		      `nn.softmax_cross_entropy_with_logits` (sampled softmax).
		  out_labels: A Tensor object with the same shape as `out_logits`.
	**/
	static public function _compute_sampled_logits(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?subtract_log_q:Dynamic, ?remove_accidental_hits:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Same as math_ops.count_nonzero.
		
		The reduction is done in dtype, which can be faster for 32-bit dtypes.
		
		Args:
		    input_tensor: numeric tensor
		    dtype: reduction dtype
		
		Returns:
		    number of nonzero values with type dtype
	**/
	static public function _count_nonzero(input_tensor:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns a vector summing up each row of the matrix x.
	**/
	static public function _sum_rows(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Batch normalization.
		
		This op is deprecated. See `tf.nn.batch_normalization`.
		
		Args:
		  t: A 4D input Tensor.
		  m: A 1D mean Tensor with size matching the last dimension of t.
		    This is the first output from tf.nn.moments,
		    or a saved moving average thereof.
		  v: A 1D variance Tensor with size matching the last dimension of t.
		    This is the second output from tf.nn.moments,
		    or a saved moving average thereof.
		  beta: A 1D beta Tensor with size matching the last dimension of t.
		    An offset to be added to the normalized tensor.
		  gamma: A 1D gamma Tensor with size matching the last dimension of t.
		    If "scale_after_normalization" is true, this tensor will be multiplied
		    with the normalized tensor.
		  variance_epsilon: A small float number to avoid dividing by 0.
		  scale_after_normalization: A bool indicating whether the resulted tensor
		    needs to be multiplied with gamma.
		  name: A name for this operation (optional).
		  input: Alias for t.
		  mean: Alias for m.
		  variance: Alias for v.
		
		Returns:
		   A batch-normalized `t`.
		
		References:
		  Batch Normalization - Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift:
		    [Ioffe et al., 2015](http://proceedings.mlr.press/v37/ioffe15.html)
		    ([pdf](http://proceedings.mlr.press/v37/ioffe15.pdf))
	**/
	static public function batch_norm_with_global_normalization(?t:Dynamic, ?m:Dynamic, ?v:Dynamic, ?beta:Dynamic, ?gamma:Dynamic, ?variance_epsilon:Dynamic, ?scale_after_normalization:Dynamic, ?name:Dynamic, ?input:Dynamic, ?mean:Dynamic, ?variance:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		This op is deprecated. See `tf.nn.batch_normalization`.
		
		Args:
		  input: A 4D input Tensor.
		  mean: A 1D mean Tensor with size matching the last dimension of t.
		    This is the first output from tf.nn.moments,
		    or a saved moving average thereof.
		  variance: A 1D variance Tensor with size matching the last dimension of t.
		    This is the second output from tf.nn.moments,
		    or a saved moving average thereof.
		  beta: A 1D beta Tensor with size matching the last dimension of t.
		    An offset to be added to the normalized tensor.
		  gamma: A 1D gamma Tensor with size matching the last dimension of t.
		    If "scale_after_normalization" is true, this tensor will be multiplied
		    with the normalized tensor.
		  variance_epsilon: A small float number to avoid dividing by 0.
		  scale_after_normalization: A bool indicating whether the resulted tensor
		    needs to be multiplied with gamma.
		  name: A name for this operation (optional).
		
		Returns:
		   A batch-normalized `t`.
		
		References:
		  Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift:
		    [Ioffe et al., 2015](http://proceedings.mlr.press/v37/ioffe15.html)
		    ([pdf](http://proceedings.mlr.press/v37/ioffe15.pdf))
	**/
	static public function batch_norm_with_global_normalization_v2(input:Dynamic, mean:Dynamic, variance:Dynamic, beta:Dynamic, gamma:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		Normalizes a tensor by `mean` and `variance`, and applies (optionally) a
		`scale` \\(\gamma\\) to it, as well as an `offset` \\(\beta\\):
		
		\\(\frac{\gamma(x-\mu)}{\sigma}+\beta\\)
		
		`mean`, `variance`, `offset` and `scale` are all expected to be of one of two
		shapes:
		
		  * In all generality, they can have the same number of dimensions as the
		    input `x`, with identical sizes as `x` for the dimensions that are not
		    normalized over (the 'depth' dimension(s)), and dimension 1 for the
		    others which are being normalized over.
		    `mean` and `variance` in this case would typically be the outputs of
		    `tf.nn.moments(..., keepdims=True)` during training, or running averages
		    thereof during inference.
		  * In the common case where the 'depth' dimension is the last dimension in
		    the input tensor `x`, they may be one dimensional tensors of the same
		    size as the 'depth' dimension.
		    This is the case for example for the common `[batch, depth]` layout of
		    fully-connected layers, and `[batch, height, width, depth]` for
		    convolutions.
		    `mean` and `variance` in this case would typically be the outputs of
		    `tf.nn.moments(..., keepdims=False)` during training, or running averages
		    thereof during inference.
		
		See equation 11 in Algorithm 2 of source:
		[Batch Normalization: Accelerating Deep Network Training by
		Reducing Internal Covariate Shift; S. Ioffe, C. Szegedy]
		(http://arxiv.org/abs/1502.03167).
		
		Args:
		  x: Input `Tensor` of arbitrary dimensionality.
		  mean: A mean `Tensor`.
		  variance: A variance `Tensor`.
		  offset: An offset `Tensor`, often denoted \\(\beta\\) in equations, or
		    None. If present, will be added to the normalized tensor.
		  scale: A scale `Tensor`, often denoted \\(\gamma\\) in equations, or
		    `None`. If present, the scale is applied to the normalized tensor.
		  variance_epsilon: A small float number to avoid dividing by 0.
		  name: A name for this operation (optional).
		
		Returns:
		  the normalized, scaled, offset tensor.
		
		References:
		  Batch Normalization - Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift:
		    [Ioffe et al., 2015](http://arxiv.org/abs/1502.03167)
		    ([pdf](http://proceedings.mlr.press/v37/ioffe15.pdf))
	**/
	static public function batch_normalization(x:Dynamic, mean:Dynamic, variance:Dynamic, offset:Dynamic, scale:Dynamic, variance_epsilon:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scales per-example losses with sample_weights and computes their average.
		
		Usage with distribution strategy and custom training loop:
		
		```python
		with strategy.scope():
		  def compute_loss(labels, predictions, sample_weight=None):
		
		    # If you are using a `Loss` class instead, set reduction to `NONE` so that
		    # we can do the reduction afterwards and divide by global batch size.
		    per_example_loss = tf.keras.losses.sparse_categorical_crossentropy(
		        labels, predictions)
		
		    # Compute loss that is scaled by sample_weight and by global batch size.
		    return tf.nn.compute_average_loss(
		        per_example_loss,
		        sample_weight=sample_weight,
		        global_batch_size=GLOBAL_BATCH_SIZE)
		```
		
		Args:
		  per_example_loss: Per-example loss.
		  sample_weight: Optional weighting for each example.
		  global_batch_size: Optional global batch size value. Defaults to (size of
		    first dimension of `losses`) * (number of replicas).
		
		Returns:
		  Scalar loss value.
	**/
	static public function compute_average_loss(per_example_loss:Dynamic, ?sample_weight:Dynamic, ?global_batch_size:Dynamic):Dynamic;
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
		Depthwise 2-D convolution.
		
		Given a 4D input tensor ('NHWC' or 'NCHW' data formats)
		and a filter tensor of shape
		`[filter_height, filter_width, in_channels, channel_multiplier]`
		containing `in_channels` convolutional filters of depth 1, `depthwise_conv2d`
		applies a different filter to each input channel (expanding from 1 channel
		to `channel_multiplier` channels for each), then concatenates the results
		together.  The output has `in_channels * channel_multiplier` channels.
		
		In detail, with the default NHWC format,
		
		    output[b, i, j, k * channel_multiplier + q] = sum_{di, dj}
		         filter[di, dj, k, q] * input[b, strides[1] * i + rate[0] * di,
		                                         strides[2] * j + rate[1] * dj, k]
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the
		same horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		If any value in `rate` is greater than 1, we perform atrous depthwise
		convolution, in which case all values in the `strides` tensor must be equal
		to 1.
		
		Usage Example:
		
		>>> x = np.array([
		...     [1., 2.],
		...     [3., 4.],
		...     [5., 6.]
		... ], dtype=np.float32).reshape((1, 3, 2, 1))
		>>> kernel = np.array([
		...     [1., 2.],
		...     [3., 4]
		... ], dtype=np.float32).reshape((2, 1, 1, 2))
		>>> tf.compat.v1.nn.depthwise_conv2d(x, kernel, strides=[1, 1, 1, 1],
		...                                  padding='VALID').numpy()
		  array([[[[10., 14.],
		           [14., 20.]],
		          [[18., 26.],
		           [22., 32.]]]], dtype=float32)
		
		>>> tf.compat.v1.nn.depthwise_conv2d(x, kernel, strides=[1, 1, 1, 1],
		...                                  padding=[[0, 0], [1, 0], [1, 0], [0, 0]]
		...                                 ).numpy()
		  array([[[[ 0.,  0.],
		           [ 3.,  4.],
		           [ 6.,  8.]],
		          [[ 0.,  0.],
		           [10., 14.],
		           [14., 20.]],
		          [[ 0.,  0.],
		           [18., 26.],
		           [22., 32.]]]], dtype=float32)
		
		Args:
		  input: 4-D with shape according to `data_format`.
		  filter: 4-D with shape
		    `[filter_height, filter_width, in_channels, channel_multiplier]`.
		  strides: 1-D of size 4.  The stride of the sliding window for each
		    dimension of `input`.
		  padding: Controls how to pad the image before applying the convolution. Can
		    be the string `"SAME"` or `"VALID"` indicating the type of padding
		    algorithm to use, or a list indicating the explicit paddings at the start
		    and end of each dimension. When explicit padding is used and data_format
		    is `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  rate: 1-D of size 2. The dilation rate in which we sample input values
		    across the `height` and `width` dimensions in atrous convolution. If it is
		    greater than 1, then all values of strides must be 1.
		  name: A name for this operation (optional).
		  data_format: The data format for input. Either "NHWC" (default) or "NCHW".
		  dilations: Alias of rate.
		
		Returns:
		  A 4-D `Tensor` with shape according to `data_format`.  E.g., for
		  "NHWC" format, shape is
		  `[batch, out_height, out_width, in_channels * channel_multiplier].`
	**/
	static public function depthwise_conv2d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?rate:Dynamic, ?name:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic):Dynamic;
	/**
		Depthwise 2-D convolution.
		
		Given a 4D input tensor ('NHWC' or 'NCHW' data formats)
		and a filter tensor of shape
		`[filter_height, filter_width, in_channels, channel_multiplier]`
		containing `in_channels` convolutional filters of depth 1, `depthwise_conv2d`
		applies a different filter to each input channel (expanding from 1 channel
		to `channel_multiplier` channels for each), then concatenates the results
		together.  The output has `in_channels * channel_multiplier` channels.
		
		In detail, with the default NHWC format,
		
		    output[b, i, j, k * channel_multiplier + q] = sum_{di, dj}
		         filter[di, dj, k, q] * input[b, strides[1] * i + rate[0] * di,
		                                         strides[2] * j + rate[1] * dj, k]
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the
		same horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		If any value in `rate` is greater than 1, we perform atrous depthwise
		convolution, in which case all values in the `strides` tensor must be equal
		to 1.
		
		Usage Example:
		
		>>> x = np.array([
		...     [1., 2.],
		...     [3., 4.],
		...     [5., 6.]
		... ], dtype=np.float32).reshape((1, 3, 2, 1))
		>>> kernel = np.array([
		...     [1., 2.],
		...     [3., 4]
		... ], dtype=np.float32).reshape((2, 1, 1, 2))
		>>> tf.nn.depthwise_conv2d(x, kernel, strides=[1, 1, 1, 1],
		...                        padding='VALID').numpy()
		  array([[[[10., 14.],
		           [14., 20.]],
		          [[18., 26.],
		           [22., 32.]]]], dtype=float32)
		
		>>> tf.nn.depthwise_conv2d(x, kernel, strides=[1, 1, 1, 1],
		...                        padding=[[0, 0], [1, 0], [1, 0], [0, 0]]).numpy()
		  array([[[[ 0.,  0.],
		           [ 3.,  4.],
		           [ 6.,  8.]],
		          [[ 0.,  0.],
		           [10., 14.],
		           [14., 20.]],
		          [[ 0.,  0.],
		           [18., 26.],
		           [22., 32.]]]], dtype=float32)
		
		Args:
		  input: 4-D with shape according to `data_format`.
		  filter: 4-D with shape
		    `[filter_height, filter_width, in_channels, channel_multiplier]`.
		  strides: 1-D of size 4.  The stride of the sliding window for each
		    dimension of `input`.
		  padding: Controls how to pad the image before applying the convolution. Can
		    be the string `"SAME"` or `"VALID"` indicating the type of padding
		    algorithm to use, or a list indicating the explicit paddings at the start
		    and end of each dimension. When explicit padding is used and data_format
		    is `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: The data format for input. Either "NHWC" (default) or "NCHW".
		  dilations: 1-D of size 2. The dilation rate in which we sample input values
		    across the `height` and `width` dimensions in atrous convolution. If it is
		    greater than 1, then all values of strides must be 1.
		  name: A name for this operation (optional).
		
		Returns:
		  A 4-D `Tensor` with shape according to `data_format`.  E.g., for
		  "NHWC" format, shape is
		  `[batch, out_height, out_width, in_channels * channel_multiplier].`
	**/
	static public function depthwise_conv2d_v2(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Batch normalization.
		
		
		See Source: [Batch Normalization: Accelerating Deep Network Training by
		Reducing Internal Covariate Shift; S. Ioffe, C. Szegedy]
		(http://arxiv.org/abs/1502.03167).
		
		Args:
		  x: Input `Tensor` of 4 or 5 dimensions.
		  scale: A `Tensor` of 1 dimension for scaling.
		  offset: A `Tensor` of 1 dimension for bias.
		  mean: A `Tensor` of 1 dimension for population mean. The shape and meaning
		        of this argument depends on the value of is_training and
		        exponential_avg_factor as follows:
		        is_training==False (inference):
		          Mean must be a `Tensor` of the same shape as scale containing the
		          estimated population mean computed during training.
		        is_training==True and exponential_avg_factor == 1.0:
		          Mean must be None.
		        is_training==True and exponential_avg_factor != 1.0:
		          Mean must be a `Tensor` of the same shape as scale containing the
		          exponential running mean.
		  variance: A `Tensor` of 1 dimension for population variance. The shape and
		        meaning of this argument depends on the value of is_training and
		        exponential_avg_factor as follows:
		        is_training==False (inference):
		          Variance must be a `Tensor` of the same shape as scale containing
		          the estimated population variance computed during training.
		        is_training==True and exponential_avg_factor == 1.0:
		          Variance must be None.
		        is_training==True and exponential_avg_factor != 1.0:
		          Variance must be a `Tensor` of the same shape as scale containing
		          the exponential running variance.
		  epsilon: A small float number added to the variance of x.
		  data_format: The data format for x. Support "NHWC" (default) or "NCHW" for
		               4D tenors and "NDHWC" or "NCDHW" for 5D tensors.
		  is_training: A bool value to specify if the operation is used for
		               training or inference.
		  name: A name for this operation (optional).
		  exponential_avg_factor: A float number (usually between 0 and 1) used
		                          for controlling the decay of the running
		                          population average of mean and variance.
		                          If set to 1.0, the current batch average is
		                          returned.
		
		Returns:
		  y: A 4D or 5D Tensor for the normalized, scaled, offsetted x.
		  running_mean: A 1D Tensor for the exponential running mean of x.
		                The output value is (1 - exponential_avg_factor) * mean +
		                exponential_avg_factor * batch_mean), where batch_mean
		                is the mean of the current batch in x.
		  running_var: A 1D Tensor for the exponential running variance
		               The output value is (1 - exponential_avg_factor) * variance +
		               exponential_avg_factor * batch_variance), where batch_variance
		               is the variance of the current batch in x.
		
		References:
		  Batch Normalization - Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift:
		    [Ioffe et al., 2015](http://proceedings.mlr.press/v37/ioffe15.html)
		    ([pdf](http://proceedings.mlr.press/v37/ioffe15.pdf))
	**/
	static public function fused_batch_norm(x:Dynamic, scale:Dynamic, offset:Dynamic, ?mean:Dynamic, ?variance:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic, ?exponential_avg_factor:Dynamic):Dynamic;
	/**
		Normalizes along dimension `axis` using an L2 norm. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		For a 1-D tensor with `axis = 0`, computes
		
		    output = x / sqrt(max(sum(x**2), epsilon))
		
		For `x` with more dimensions, independently normalizes each 1-D slice along
		dimension `axis`.
		
		1-D tensor example:
		>>> x = tf.constant([3.0, 4.0])
		>>> tf.math.l2_normalize(x).numpy()
		array([0.6, 0.8], dtype=float32)
		
		2-D tensor example:
		>>> x = tf.constant([[3.0], [4.0]])
		>>> tf.math.l2_normalize(x, 0).numpy()
		array([[0.6],
		     [0.8]], dtype=float32)
		
		>>> x = tf.constant([[3.0], [4.0]])
		>>> tf.math.l2_normalize(x, 1).numpy()
		array([[1.],
		     [1.]], dtype=float32)
		
		Args:
		  x: A `Tensor`.
		  axis: Dimension along which to normalize.  A scalar or a vector of
		    integers.
		  epsilon: A lower bound value for the norm. Will use `sqrt(epsilon)` as the
		    divisor if `norm < sqrt(epsilon)`.
		  name: A name for this operation (optional).
		  dim: Deprecated, do not use.
		
		Returns:
		  A `Tensor` with the same shape as `x`.
	**/
	static public function l2_normalize(x:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes log Poisson loss given `log_input`.
		
		Gives the log-likelihood loss between the prediction and the target under the
		assumption that the target has a Poisson distribution.
		Caveat: By default, this is not the exact loss, but the loss minus a
		  constant term [log(z!)]. That has no effect for optimization, but
		  does not play well with relative loss comparisons. To compute an
		  approximation of the log factorial term, specify
		  compute_full_loss=True to enable Stirling's Approximation.
		
		For brevity, let `c = log(x) = log_input`, `z = targets`.  The log Poisson
		loss is
		
		      -log(exp(-x) * (x^z) / z!)
		    = -log(exp(-x) * (x^z)) + log(z!)
		    ~ -log(exp(-x)) - log(x^z) [+ z * log(z) - z + 0.5 * log(2 * pi * z)]
		        [ Note the second term is the Stirling's Approximation for log(z!).
		          It is invariant to x and does not affect optimization, though
		          important for correct relative loss comparisons. It is only
		          computed when compute_full_loss == True. ]
		    = x - z * log(x) [+ z * log(z) - z + 0.5 * log(2 * pi * z)]
		    = exp(c) - z * c [+ z * log(z) - z + 0.5 * log(2 * pi * z)]
		
		Args:
		  targets: A `Tensor` of the same type and shape as `log_input`.
		  log_input: A `Tensor` of type `float32` or `float64`.
		  compute_full_loss: whether to compute the full loss. If false, a constant
		    term is dropped in favor of more efficient optimization.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `log_input` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `log_input` and `targets` do not have the same shape.
	**/
	static public function log_poisson_loss(targets:Dynamic, log_input:Dynamic, ?compute_full_loss:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate the mean and variance of `x`.
		
		The mean and variance are calculated by aggregating the contents of `x`
		across `axes`.  If `x` is 1-D and `axes = [0]` this is just the mean
		and variance of a vector.
		
		Note: shift is currently not used; the true mean is computed and used.
		
		When using these moments for batch normalization (see
		`tf.nn.batch_normalization`):
		
		 * for so-called "global normalization", used with convolutional filters with
		   shape `[batch, height, width, depth]`, pass `axes=[0, 1, 2]`.
		 * for simple batch normalization pass `axes=[0]` (batch only).
		
		Args:
		  x: A `Tensor`.
		  axes: Array of ints.  Axes along which to compute mean and
		    variance.
		  shift: Not used in the current implementation
		  name: Name used to scope the operations that compute the moments.
		  keep_dims: produce moments with the same dimensionality as the input.
		  keepdims: Alias to keep_dims.
		
		Returns:
		  Two `Tensor` objects: `mean` and `variance`.
	**/
	static public function moments(x:Dynamic, axes:Dynamic, ?shift:Dynamic, ?name:Dynamic, ?keep_dims:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Calculates the mean and variance of `x`.
		
		The mean and variance are calculated by aggregating the contents of `x`
		across `axes`.  If `x` is 1-D and `axes = [0]` this is just the mean
		and variance of a vector.
		
		Note: shift is currently not used; the true mean is computed and used.
		
		When using these moments for batch normalization (see
		`tf.nn.batch_normalization`):
		
		 * for so-called "global normalization", used with convolutional filters with
		   shape `[batch, height, width, depth]`, pass `axes=[0, 1, 2]`.
		 * for simple batch normalization pass `axes=[0]` (batch only).
		
		Args:
		  x: A `Tensor`.
		  axes: Array of ints.  Axes along which to compute mean and
		    variance.
		  shift: Not used in the current implementation.
		  keepdims: produce moments with the same dimensionality as the input.
		  name: Name used to scope the operations that compute the moments.
		
		Returns:
		  Two `Tensor` objects: `mean` and `variance`.
	**/
	static public function moments_v2(x:Dynamic, axes:Dynamic, ?shift:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes and returns the noise-contrastive estimation training loss.
		
		A common use case is to use this method for training, and calculate the full
		sigmoid loss for evaluation or inference. In this case, you must set
		`partition_strategy="div"` for the two losses to be consistent, as in the
		following example:
		
		```python
		if mode == "train":
		  loss = tf.nn.nce_loss(
		      weights=weights,
		      biases=biases,
		      labels=labels,
		      inputs=inputs,
		      ...,
		      partition_strategy="div")
		elif mode == "eval":
		  logits = tf.matmul(inputs, tf.transpose(weights))
		  logits = tf.nn.bias_add(logits, biases)
		  labels_one_hot = tf.one_hot(labels, n_classes)
		  loss = tf.nn.sigmoid_cross_entropy_with_logits(
		      labels=labels_one_hot,
		      logits=logits)
		  loss = tf.reduce_sum(loss, axis=1)
		```
		
		Note: By default this uses a log-uniform (Zipfian) distribution for sampling,
		so your labels must be sorted in order of decreasing frequency to achieve
		good results.  For more details, see
		`tf.random.log_uniform_candidate_sampler`.
		
		Note: In the case where `num_true` > 1, we assign to each target class
		the target probability 1 / `num_true` so that the target probabilities
		sum to 1 per-example.
		
		Note: It would be useful to allow a variable number of target classes per
		example.  We hope to provide this functionality in a future release.
		For now, if you have a variable number of target classes, you can pad them
		out to a constant number by either repeating them or by padding
		with an otherwise unused class.
		
		Args:
		  weights: A `Tensor` of shape `[num_classes, dim]`, or a list of `Tensor`
		      objects whose concatenation along dimension 0 has shape
		      [num_classes, dim].  The (possibly-partitioned) class embeddings.
		  biases: A `Tensor` of shape `[num_classes]`.  The class biases.
		  labels: A `Tensor` of type `int64` and shape `[batch_size,
		      num_true]`. The target classes.
		  inputs: A `Tensor` of shape `[batch_size, dim]`.  The forward
		      activations of the input network.
		  num_sampled: An `int`.  The number of negative classes to randomly sample
		      per batch. This single sample of negative classes is evaluated for each
		      element in the batch.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: a tuple of (`sampled_candidates`, `true_expected_count`,
		      `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		      (if None, we default to `log_uniform_candidate_sampler`)
		  remove_accidental_hits:  A `bool`.  Whether to remove "accidental hits"
		      where a sampled class equals one of the target classes.  If set to
		      `True`, this is a "Sampled Logistic" loss instead of NCE, and we are
		      learning to generate log-odds instead of log probabilities. See
		      our Candidate Sampling Algorithms Reference
		      ([pdf](https://www.tensorflow.org/extras/candidate_sampling.pdf)).
		      Default is False.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		      if `len(weights) > 1`. Currently `"div"` and `"mod"` are supported.
		      Default is `"mod"`. See `tf.nn.embedding_lookup` for more details.
		  name: A name for the operation (optional).
		
		Returns:
		  A `batch_size` 1-D tensor of per-example NCE losses.
		
		References:
		  Noise-contrastive estimation - A new estimation principle for unnormalized
		  statistical models:
		    [Gutmann et al., 2010](http://proceedings.mlr.press/v9/gutmann10a)
		    ([pdf](http://proceedings.mlr.press/v9/gutmann10a/gutmann10a.pdf))
	**/
	static public function nce_loss(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes and returns the noise-contrastive estimation training loss.
		
		See [Noise-contrastive estimation: A new estimation principle for
		unnormalized statistical
		models](http://www.jmlr.org/proceedings/papers/v9/gutmann10a/gutmann10a.pdf).
		Also see our [Candidate Sampling Algorithms
		Reference](https://www.tensorflow.org/extras/candidate_sampling.pdf)
		
		A common use case is to use this method for training, and calculate the full
		sigmoid loss for evaluation or inference as in the following example:
		
		```python
		if mode == "train":
		  loss = tf.nn.nce_loss(
		      weights=weights,
		      biases=biases,
		      labels=labels,
		      inputs=inputs,
		      ...)
		elif mode == "eval":
		  logits = tf.matmul(inputs, tf.transpose(weights))
		  logits = tf.nn.bias_add(logits, biases)
		  labels_one_hot = tf.one_hot(labels, n_classes)
		  loss = tf.nn.sigmoid_cross_entropy_with_logits(
		      labels=labels_one_hot,
		      logits=logits)
		  loss = tf.reduce_sum(loss, axis=1)
		```
		
		Note: when doing embedding lookup on `weights` and `bias`, "div" partition
		strategy will be used. Support for other partition strategy will be added
		later.
		
		Note: By default this uses a log-uniform (Zipfian) distribution for sampling,
		so your labels must be sorted in order of decreasing frequency to achieve
		good results.  For more details, see
		`tf.random.log_uniform_candidate_sampler`.
		
		Note: In the case where `num_true` > 1, we assign to each target class
		the target probability 1 / `num_true` so that the target probabilities
		sum to 1 per-example.
		
		Note: It would be useful to allow a variable number of target classes per
		example.  We hope to provide this functionality in a future release.
		For now, if you have a variable number of target classes, you can pad them
		out to a constant number by either repeating them or by padding
		with an otherwise unused class.
		
		Args:
		  weights: A `Tensor` of shape `[num_classes, dim]`, or a list of `Tensor`
		    objects whose concatenation along dimension 0 has shape [num_classes,
		    dim].  The (possibly-partitioned) class embeddings.
		  biases: A `Tensor` of shape `[num_classes]`.  The class biases.
		  labels: A `Tensor` of type `int64` and shape `[batch_size, num_true]`. The
		    target classes.
		  inputs: A `Tensor` of shape `[batch_size, dim]`.  The forward activations of
		    the input network.
		  num_sampled: An `int`.  The number of negative classes to randomly sample
		    per batch. This single sample of negative classes is evaluated for each
		    element in the batch.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: a tuple of (`sampled_candidates`, `true_expected_count`,
		    `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		    (if None, we default to `log_uniform_candidate_sampler`)
		  remove_accidental_hits:  A `bool`.  Whether to remove "accidental hits"
		    where a sampled class equals one of the target classes.  If set to `True`,
		    this is a "Sampled Logistic" loss instead of NCE, and we are learning to
		    generate log-odds instead of log probabilities.  See our [Candidate
		    Sampling Algorithms Reference]
		      (https://www.tensorflow.org/extras/candidate_sampling.pdf). Default is
		        False.
		  name: A name for the operation (optional).
		
		Returns:
		  A `batch_size` 1-D tensor of per-example NCE losses.
	**/
	static public function nce_loss_v2(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Normalizes `tensor` along dimension `axis` using specified norm.
		
		This uses `tf.linalg.norm` to compute the norm along `axis`.
		
		This function can compute several different vector norms (the 1-norm, the
		Euclidean or 2-norm, the inf-norm, and in general the p-norm for p > 0) and
		matrix norms (Frobenius, 1-norm, 2-norm and inf-norm).
		
		Args:
		  tensor: `Tensor` of types `float32`, `float64`, `complex64`, `complex128`
		  ord: Order of the norm. Supported values are `'fro'`, `'euclidean'`, `1`,
		    `2`, `np.inf` and any positive real number yielding the corresponding
		    p-norm. Default is `'euclidean'` which is equivalent to Frobenius norm if
		    `tensor` is a matrix and equivalent to 2-norm for vectors.
		    Some restrictions apply: a) The Frobenius norm `'fro'` is not defined for
		      vectors, b) If axis is a 2-tuple (matrix norm), only `'euclidean'`,
		      '`fro'`, `1`, `2`, `np.inf` are supported. See the description of `axis`
		      on how to compute norms for a batch of vectors or matrices stored in a
		      tensor.
		  axis: If `axis` is `None` (the default), the input is considered a vector
		    and a single vector norm is computed over the entire set of values in the
		    tensor, i.e. `norm(tensor, ord=ord)` is equivalent to
		    `norm(reshape(tensor, [-1]), ord=ord)`. If `axis` is a Python integer, the
		    input is considered a batch of vectors, and `axis` determines the axis in
		    `tensor` over which to compute vector norms. If `axis` is a 2-tuple of
		    Python integers it is considered a batch of matrices and `axis` determines
		    the axes in `tensor` over which to compute a matrix norm.
		    Negative indices are supported. Example: If you are passing a tensor that
		      can be either a matrix or a batch of matrices at runtime, pass
		      `axis=[-2,-1]` instead of `axis=None` to make sure that matrix norms are
		      computed.
		  name: The name of the op.
		
		Returns:
		  normalized: A normalized `Tensor` with the same shape as `tensor`.
		  norm: The computed norms with the same shape and dtype `tensor` but the
		    final axis is 1 instead. Same as running
		    `tf.cast(tf.linalg.norm(tensor, ord, axis keepdims=True), tensor.dtype)`.
		
		Raises:
		  ValueError: If `ord` or `axis` is invalid.
	**/
	static public function normalize(tensor:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate the mean and variance of based on the sufficient statistics.
		
		Args:
		  counts: A `Tensor` containing the total count of the data (one value).
		  mean_ss: A `Tensor` containing the mean sufficient statistics: the (possibly
		    shifted) sum of the elements to average over.
		  variance_ss: A `Tensor` containing the variance sufficient statistics: the
		    (possibly shifted) squared sum of the data to compute the variance over.
		  shift: A `Tensor` containing the value by which the data is shifted for
		    numerical stability, or `None` if no shift was performed.
		  name: Name used to scope the operations that compute the moments.
		
		Returns:
		  Two `Tensor` objects: `mean` and `variance`.
	**/
	static public function normalize_moments(counts:Dynamic, mean_ss:Dynamic, variance_ss:Dynamic, shift:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes Relu(x * weight + biases).
		
		Args:
		  x: a 2D tensor.  Dimensions typically: batch, in_units
		  weights: a 2D tensor.  Dimensions typically: in_units, out_units
		  biases: a 1D tensor.  Dimensions: out_units
		  name: A name for the operation (optional).  If not specified
		    "nn_relu_layer" is used.
		
		Returns:
		  A 2-D Tensor computing relu(matmul(x, weights) + biases).
		  Dimensions typically: batch, out_units.
	**/
	static public function relu_layer(x:Dynamic, weights:Dynamic, biases:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes and returns the sampled softmax training loss.
		
		This is a faster way to train a softmax classifier over a huge number of
		classes.
		
		This operation is for training only.  It is generally an underestimate of
		the full softmax loss.
		
		A common use case is to use this method for training, and calculate the full
		softmax loss for evaluation or inference. In this case, you must set
		`partition_strategy="div"` for the two losses to be consistent, as in the
		following example:
		
		```python
		if mode == "train":
		  loss = tf.nn.sampled_softmax_loss(
		      weights=weights,
		      biases=biases,
		      labels=labels,
		      inputs=inputs,
		      ...,
		      partition_strategy="div")
		elif mode == "eval":
		  logits = tf.matmul(inputs, tf.transpose(weights))
		  logits = tf.nn.bias_add(logits, biases)
		  labels_one_hot = tf.one_hot(labels, n_classes)
		  loss = tf.nn.softmax_cross_entropy_with_logits(
		      labels=labels_one_hot,
		      logits=logits)
		```
		
		See our Candidate Sampling Algorithms Reference
		([pdf](https://www.tensorflow.org/extras/candidate_sampling.pdf)).
		Also see Section 3 of (Jean et al., 2014) for the math.
		
		Args:
		  weights: A `Tensor` of shape `[num_classes, dim]`, or a list of `Tensor`
		      objects whose concatenation along dimension 0 has shape
		      [num_classes, dim].  The (possibly-sharded) class embeddings.
		  biases: A `Tensor` of shape `[num_classes]`.  The class biases.
		  labels: A `Tensor` of type `int64` and shape `[batch_size,
		      num_true]`. The target classes.  Note that this format differs from
		      the `labels` argument of `nn.softmax_cross_entropy_with_logits`.
		  inputs: A `Tensor` of shape `[batch_size, dim]`.  The forward
		      activations of the input network.
		  num_sampled: An `int`.  The number of classes to randomly sample per batch.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: a tuple of (`sampled_candidates`, `true_expected_count`,
		      `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		      (if None, we default to `log_uniform_candidate_sampler`)
		  remove_accidental_hits:  A `bool`.  whether to remove "accidental hits"
		      where a sampled class equals one of the target classes.  Default is
		      True.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		      if `len(weights) > 1`. Currently `"div"` and `"mod"` are supported.
		      Default is `"mod"`. See `tf.nn.embedding_lookup` for more details.
		  name: A name for the operation (optional).
		  seed: random seed for candidate sampling. Default to None, which doesn't set
		      the op-level random seed for candidate sampling.
		
		Returns:
		  A `batch_size` 1-D tensor of per-example sampled softmax losses.
		
		References:
		  On Using Very Large Target Vocabulary for Neural Machine Translation:
		    [Jean et al., 2014]
		    (https://aclanthology.coli.uni-saarland.de/papers/P15-1001/p15-1001)
		    ([pdf](http://aclweb.org/anthology/P15-1001))
	**/
	static public function sampled_softmax_loss(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Computes and returns the sampled softmax training loss.
		
		This is a faster way to train a softmax classifier over a huge number of
		classes.
		
		This operation is for training only.  It is generally an underestimate of
		the full softmax loss.
		
		A common use case is to use this method for training, and calculate the full
		softmax loss for evaluation or inference as in the following example:
		
		```python
		if mode == "train":
		  loss = tf.nn.sampled_softmax_loss(
		      weights=weights,
		      biases=biases,
		      labels=labels,
		      inputs=inputs,
		      ...)
		elif mode == "eval":
		  logits = tf.matmul(inputs, tf.transpose(weights))
		  logits = tf.nn.bias_add(logits, biases)
		  labels_one_hot = tf.one_hot(labels, n_classes)
		  loss = tf.nn.softmax_cross_entropy_with_logits(
		      labels=labels_one_hot,
		      logits=logits)
		```
		
		See our [Candidate Sampling Algorithms Reference]
		(https://www.tensorflow.org/extras/candidate_sampling.pdf)
		
		Also see Section 3 of [Jean et al., 2014](http://arxiv.org/abs/1412.2007)
		([pdf](http://arxiv.org/pdf/1412.2007.pdf)) for the math.
		
		Note: when doing embedding lookup on `weights` and `bias`, "div" partition
		strategy will be used. Support for other partition strategy will be added
		later.
		
		Args:
		  weights: A `Tensor` of shape `[num_classes, dim]`, or a list of `Tensor`
		    objects whose concatenation along dimension 0 has shape [num_classes,
		    dim].  The (possibly-sharded) class embeddings.
		  biases: A `Tensor` of shape `[num_classes]`.  The class biases.
		  labels: A `Tensor` of type `int64` and shape `[batch_size, num_true]`. The
		    target classes.  Note that this format differs from the `labels` argument
		    of `nn.softmax_cross_entropy_with_logits`.
		  inputs: A `Tensor` of shape `[batch_size, dim]`.  The forward activations of
		    the input network.
		  num_sampled: An `int`.  The number of classes to randomly sample per batch.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: a tuple of (`sampled_candidates`, `true_expected_count`,
		    `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		    (if None, we default to `log_uniform_candidate_sampler`)
		  remove_accidental_hits:  A `bool`.  whether to remove "accidental hits"
		    where a sampled class equals one of the target classes.  Default is True.
		  seed: random seed for candidate sampling. Default to None, which doesn't set
		    the op-level random seed for candidate sampling.
		  name: A name for the operation (optional).
		
		Returns:
		  A `batch_size` 1-D tensor of per-example sampled softmax losses.
	**/
	static public function sampled_softmax_loss_v2(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scales the sum of the given regularization losses by number of replicas.
		
		Usage with distribution strategy and custom training loop:
		
		```python
		with strategy.scope():
		  def compute_loss(self, label, predictions):
		    per_example_loss = tf.keras.losses.sparse_categorical_crossentropy(
		        labels, predictions)
		
		    # Compute loss that is scaled by sample_weight and by global batch size.
		    loss = tf.nn.compute_average_loss(
		        per_example_loss,
		        sample_weight=sample_weight,
		        global_batch_size=GLOBAL_BATCH_SIZE)
		
		    # Add scaled regularization losses.
		    loss += tf.nn.scale_regularization_loss(tf.nn.l2_loss(weights))
		    return loss
		```
		
		Args:
		  regularization_loss: Regularization loss.
		
		Returns:
		  Scalar loss value.
	**/
	static public function scale_regularization_loss(regularization_loss:Dynamic):Dynamic;
	/**
		2-D convolution with separable filters.
		
		Performs a depthwise convolution that acts separately on channels followed by
		a pointwise convolution that mixes channels.  Note that this is separability
		between dimensions `[1, 2]` and `3`, not spatial separability between
		dimensions `1` and `2`.
		
		In detail, with the default NHWC format,
		
		    output[b, i, j, k] = sum_{di, dj, q, r}
		        input[b, strides[1] * i + di, strides[2] * j + dj, q] *
		        depthwise_filter[di, dj, q, r] *
		        pointwise_filter[0, 0, q * channel_multiplier + r, k]
		
		`strides` controls the strides for the depthwise convolution only, since
		the pointwise convolution has implicit strides of `[1, 1, 1, 1]`.  Must have
		`strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		If any value in `rate` is greater than 1, we perform atrous depthwise
		convolution, in which case all values in the `strides` tensor must be equal
		to 1.
		
		Args:
		  input: 4-D `Tensor` with shape according to `data_format`.
		  depthwise_filter: 4-D `Tensor` with shape
		    `[filter_height, filter_width, in_channels, channel_multiplier]`.
		    Contains `in_channels` convolutional filters of depth 1.
		  pointwise_filter: 4-D `Tensor` with shape
		    `[1, 1, channel_multiplier * in_channels, out_channels]`.  Pointwise
		    filter to mix channels after `depthwise_filter` has convolved spatially.
		  strides: 1-D of size 4.  The strides for the depthwise convolution for
		    each dimension of `input`.
		  padding: Controls how to pad the image before applying the depthwise
		    convolution. Can be the string `"SAME"` or `"VALID"` indicating the type
		    of padding algorithm to use, or a Python list indicating the explicit
		    paddings at the start and end of each dimension. When explicit padding is
		    used and data_format is `"NHWC"`, this should be in the form `[[0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right], [0, 0]]`. When explicit
		    padding used and data_format is `"NCHW"`, this should be in the form
		    `[[0, 0], [0, 0], [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  rate: 1-D of size 2. The dilation rate in which we sample input values
		    across the `height` and `width` dimensions in atrous convolution. If it is
		    greater than 1, then all values of strides must be 1.
		  name: A name for this operation (optional).
		  data_format: The data format for input. Either "NHWC" (default) or "NCHW".
		  dilations: Alias of rate.
		
		Returns:
		  A 4-D `Tensor` with shape according to 'data_format'. For
		    example, with data_format="NHWC", shape is [batch, out_height,
		    out_width, out_channels].
	**/
	static public function separable_conv2d(input:Dynamic, depthwise_filter:Dynamic, pointwise_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?rate:Dynamic, ?name:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic):Dynamic;
	/**
		2-D convolution with separable filters.
		
		Performs a depthwise convolution that acts separately on channels followed by
		a pointwise convolution that mixes channels.  Note that this is separability
		between dimensions `[1, 2]` and `3`, not spatial separability between
		dimensions `1` and `2`.
		
		In detail, with the default NHWC format,
		
		    output[b, i, j, k] = sum_{di, dj, q, r}
		        input[b, strides[1] * i + di, strides[2] * j + dj, q] *
		        depthwise_filter[di, dj, q, r] *
		        pointwise_filter[0, 0, q * channel_multiplier + r, k]
		
		`strides` controls the strides for the depthwise convolution only, since
		the pointwise convolution has implicit strides of `[1, 1, 1, 1]`.  Must have
		`strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		If any value in `rate` is greater than 1, we perform atrous depthwise
		convolution, in which case all values in the `strides` tensor must be equal
		to 1.
		
		Args:
		  input: 4-D `Tensor` with shape according to `data_format`.
		  depthwise_filter: 4-D `Tensor` with shape `[filter_height, filter_width,
		    in_channels, channel_multiplier]`. Contains `in_channels` convolutional
		    filters of depth 1.
		  pointwise_filter: 4-D `Tensor` with shape `[1, 1, channel_multiplier *
		    in_channels, out_channels]`.  Pointwise filter to mix channels after
		    `depthwise_filter` has convolved spatially.
		  strides: 1-D of size 4.  The strides for the depthwise convolution for each
		    dimension of `input`.
		  padding: Controls how to pad the image before applying the depthwise
		    convolution. Can be the string `"SAME"` or `"VALID"` indicating the type
		    of padding algorithm to use, or a Python list indicating the explicit
		    paddings at the start and end of each dimension. When explicit padding is
		    used and data_format is `"NHWC"`, this should be in the form `[[0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right], [0, 0]]`. When explicit
		    padding used and data_format is `"NCHW"`, this should be in the form
		    `[[0, 0], [0, 0], [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: The data format for input. Either "NHWC" (default) or "NCHW".
		  dilations: 1-D of size 2. The dilation rate in which we sample input values
		    across the `height` and `width` dimensions in atrous convolution. If it is
		    greater than 1, then all values of strides must be 1.
		  name: A name for this operation (optional).
		
		Returns:
		  A 4-D `Tensor` with shape according to 'data_format'. For
		    example, with data_format="NHWC", shape is [batch, out_height,
		    out_width, out_channels].
	**/
	static public function separable_conv2d_v2(input:Dynamic, depthwise_filter:Dynamic, pointwise_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sigmoid cross entropy given `logits`.
		
		Measures the probability error in tasks with two outcomes in which each
		outcome is independent and need not have a fully certain label. For instance,
		one could perform a regression where the probability of an event happening is
		known and used as a label. This loss may also be used for binary
		classification, where labels are either zero or one.
		
		For brevity, let `x = logits`, `z = labels`.  The logistic loss is
		
		      z * -log(sigmoid(x)) + (1 - z) * -log(1 - sigmoid(x))
		    = z * -log(1 / (1 + exp(-x))) + (1 - z) * -log(exp(-x) / (1 + exp(-x)))
		    = z * log(1 + exp(-x)) + (1 - z) * (-log(exp(-x)) + log(1 + exp(-x)))
		    = z * log(1 + exp(-x)) + (1 - z) * (x + log(1 + exp(-x))
		    = (1 - z) * x + log(1 + exp(-x))
		    = x - x * z + log(1 + exp(-x))
		
		For x < 0, to avoid overflow in exp(-x), we reformulate the above
		
		      x - x * z + log(1 + exp(-x))
		    = log(exp(x)) - x * z + log(1 + exp(-x))
		    = - x * z + log(1 + exp(x))
		
		Hence, to ensure stability and avoid overflow, the implementation uses this
		equivalent formulation
		
		    max(x, 0) - x * z + log(1 + exp(-abs(x)))
		
		`logits` and `labels` must have the same type and shape.
		
		>>> logits = tf.constant([1., -1., 0., 1., -1., 0., 0.])
		>>> labels = tf.constant([0., 0., 0., 1., 1., 1., 0.5])
		>>> tf.nn.sigmoid_cross_entropy_with_logits(
		...     labels=labels, logits=logits).numpy()
		array([1.3132617, 0.3132617, 0.6931472, 0.3132617, 1.3132617, 0.6931472,
		       0.6931472], dtype=float32)
		
		Compared to the losses which handle multiple outcomes,
		`tf.nn.softmax_cross_entropy_with_logits` for general multi-class
		classification and `tf.nn.sparse_softmax_cross_entropy_with_logits` for more
		efficient multi-class classification with hard labels,
		`sigmoid_cross_entropy_with_logits` is a slight simplification for binary
		classification:
		
		      sigmoid(x) = softmax([x, 0])[0]
		
		$$\frac{1}{1 + e^{-x}} = \frac{e^x}{e^x + e^0}$$
		
		While `sigmoid_cross_entropy_with_logits` works for soft binary labels
		(probabilities between 0 and 1), it can also be used for binary classification
		where the labels are hard. There is an equivalence between all three symbols
		in this case, with a probability 0 indicating the second class or 1 indicating
		the first class:
		
		>>> sigmoid_logits = tf.constant([1., -1., 0.])
		>>> softmax_logits = tf.stack([sigmoid_logits, tf.zeros_like(sigmoid_logits)],
		...                           axis=-1)
		>>> soft_binary_labels = tf.constant([1., 1., 0.])
		>>> soft_multiclass_labels = tf.stack(
		...     [soft_binary_labels, 1. - soft_binary_labels], axis=-1)
		>>> hard_labels = tf.constant([0, 0, 1])
		>>> tf.nn.sparse_softmax_cross_entropy_with_logits(
		...     labels=hard_labels, logits=softmax_logits).numpy()
		array([0.31326166, 1.3132616 , 0.6931472 ], dtype=float32)
		>>> tf.nn.softmax_cross_entropy_with_logits(
		...     labels=soft_multiclass_labels, logits=softmax_logits).numpy()
		array([0.31326166, 1.3132616, 0.6931472], dtype=float32)
		>>> tf.nn.sigmoid_cross_entropy_with_logits(
		...     labels=soft_binary_labels, logits=sigmoid_logits).numpy()
		array([0.31326166, 1.3132616, 0.6931472], dtype=float32)
		
		Args:
		  labels: A `Tensor` of the same type and shape as `logits`. Between 0 and 1,
		    inclusive.
		  logits: A `Tensor` of type `float32` or `float64`. Any real number.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `logits` and `labels` do not have the same shape.
	**/
	static public function sigmoid_cross_entropy_with_logits(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sigmoid cross entropy given `logits`.
		
		Measures the probability error in tasks with two outcomes in which each
		outcome is independent and need not have a fully certain label. For instance,
		one could perform a regression where the probability of an event happening is
		known and used as a label. This loss may also be used for binary
		classification, where labels are either zero or one.
		
		For brevity, let `x = logits`, `z = labels`.  The logistic loss is
		
		      z * -log(sigmoid(x)) + (1 - z) * -log(1 - sigmoid(x))
		    = z * -log(1 / (1 + exp(-x))) + (1 - z) * -log(exp(-x) / (1 + exp(-x)))
		    = z * log(1 + exp(-x)) + (1 - z) * (-log(exp(-x)) + log(1 + exp(-x)))
		    = z * log(1 + exp(-x)) + (1 - z) * (x + log(1 + exp(-x))
		    = (1 - z) * x + log(1 + exp(-x))
		    = x - x * z + log(1 + exp(-x))
		
		For x < 0, to avoid overflow in exp(-x), we reformulate the above
		
		      x - x * z + log(1 + exp(-x))
		    = log(exp(x)) - x * z + log(1 + exp(-x))
		    = - x * z + log(1 + exp(x))
		
		Hence, to ensure stability and avoid overflow, the implementation uses this
		equivalent formulation
		
		    max(x, 0) - x * z + log(1 + exp(-abs(x)))
		
		`logits` and `labels` must have the same type and shape.
		
		>>> logits = tf.constant([1., -1., 0., 1., -1., 0., 0.])
		>>> labels = tf.constant([0., 0., 0., 1., 1., 1., 0.5])
		>>> tf.nn.sigmoid_cross_entropy_with_logits(
		...     labels=labels, logits=logits).numpy()
		array([1.3132617, 0.3132617, 0.6931472, 0.3132617, 1.3132617, 0.6931472,
		       0.6931472], dtype=float32)
		
		Compared to the losses which handle multiple outcomes,
		`tf.nn.softmax_cross_entropy_with_logits` for general multi-class
		classification and `tf.nn.sparse_softmax_cross_entropy_with_logits` for more
		efficient multi-class classification with hard labels,
		`sigmoid_cross_entropy_with_logits` is a slight simplification for binary
		classification:
		
		      sigmoid(x) = softmax([x, 0])[0]
		
		$$\frac{1}{1 + e^{-x}} = \frac{e^x}{e^x + e^0}$$
		
		While `sigmoid_cross_entropy_with_logits` works for soft binary labels
		(probabilities between 0 and 1), it can also be used for binary classification
		where the labels are hard. There is an equivalence between all three symbols
		in this case, with a probability 0 indicating the second class or 1 indicating
		the first class:
		
		>>> sigmoid_logits = tf.constant([1., -1., 0.])
		>>> softmax_logits = tf.stack([sigmoid_logits, tf.zeros_like(sigmoid_logits)],
		...                           axis=-1)
		>>> soft_binary_labels = tf.constant([1., 1., 0.])
		>>> soft_multiclass_labels = tf.stack(
		...     [soft_binary_labels, 1. - soft_binary_labels], axis=-1)
		>>> hard_labels = tf.constant([0, 0, 1])
		>>> tf.nn.sparse_softmax_cross_entropy_with_logits(
		...     labels=hard_labels, logits=softmax_logits).numpy()
		array([0.31326166, 1.3132616 , 0.6931472 ], dtype=float32)
		>>> tf.nn.softmax_cross_entropy_with_logits(
		...     labels=soft_multiclass_labels, logits=softmax_logits).numpy()
		array([0.31326166, 1.3132616, 0.6931472], dtype=float32)
		>>> tf.nn.sigmoid_cross_entropy_with_logits(
		...     labels=soft_binary_labels, logits=sigmoid_logits).numpy()
		array([0.31326166, 1.3132616, 0.6931472], dtype=float32)
		
		Args:
		  labels: A `Tensor` of the same type and shape as `logits`. Between 0 and 1,
		    inclusive.
		  logits: A `Tensor` of type `float32` or `float64`. Any real number.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `logits` and `labels` do not have the same shape.
	**/
	static public function sigmoid_cross_entropy_with_logits_v2(?labels:Dynamic, ?logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate the sufficient statistics for the mean and variance of `x`.
		
		These sufficient statistics are computed using the one pass algorithm on
		an input that's optionally shifted. See:
		https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance#Computing_shifted_data
		
		For example:
		>>> t = [[1, 2, 3], [4, 5, 6]]
		>>> sufficient_statistics(t, [1])
		(<tf.Tensor: shape=(), dtype=int32, numpy=3>, <tf.Tensor: shape=(2,),
		dtype=int32, numpy=array([ 6, 15], dtype=int32)>, <tf.Tensor: shape=(2,),
		dtype=int32, numpy=array([14, 77], dtype=int32)>, None)
		>>> sufficient_statistics(t, [-1])
		(<tf.Tensor: shape=(), dtype=int32, numpy=3>, <tf.Tensor: shape=(2,),
		dtype=int32, numpy=array([ 6, 15], dtype=int32)>, <tf.Tensor: shape=(2,),
		dtype=int32, numpy=array([14, 77], dtype=int32)>, None)
		
		Args:
		  x: A `Tensor`.
		  axes: Array of ints. Axes along which to compute mean and variance. As in
		    Python, the axes can also be negative numbers. A negative axis is
		    interpreted as counting from the end of the rank, i.e., axis +
		    rank(values)-th dimension.
		  shift: A `Tensor` containing the value by which to shift the data for
		    numerical stability, or `None` if no shift is to be performed. A shift
		    close to the true mean provides the most numerically stable results.
		  keep_dims: produce statistics with the same dimensionality as the input.
		  name: Name used to scope the operations that compute the sufficient stats.
		  keepdims: Alias for keep_dims.
		
		Returns:
		  Four `Tensor` objects of the same type as `x`:
		
		  * the count (number of elements to average over).
		  * the (possibly shifted) sum of the elements in the array.
		  * the (possibly shifted) sum of squares of the elements in the array.
		  * the shift by which the mean must be corrected or None if `shift` is None.
	**/
	static public function sufficient_statistics(x:Dynamic, axes:Dynamic, ?shift:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Calculate the sufficient statistics for the mean and variance of `x`.
		
		These sufficient statistics are computed using the one pass algorithm on
		an input that's optionally shifted. See:
		https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance#Computing_shifted_data
		
		Args:
		  x: A `Tensor`.
		  axes: Array of ints. Axes along which to compute mean and variance.
		  shift: A `Tensor` containing the value by which to shift the data for
		    numerical stability, or `None` if no shift is to be performed. A shift
		    close to the true mean provides the most numerically stable results.
		  keepdims: produce statistics with the same dimensionality as the input.
		  name: Name used to scope the operations that compute the sufficient stats.
		
		Returns:
		  Four `Tensor` objects of the same type as `x`:
		
		  * the count (number of elements to average over).
		  * the (possibly shifted) sum of the elements in the array.
		  * the (possibly shifted) sum of squares of the elements in the array.
		  * the shift by which the mean must be corrected or None if `shift` is None.
	**/
	static public function sufficient_statistics_v2(x:Dynamic, axes:Dynamic, ?shift:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the SiLU or Swish activation function: `x * sigmoid(x)`.
		
		The SiLU activation function was introduced in "Gaussian Error Linear Units
		(GELUs)" [Hendrycks et al. 2016](https://arxiv.org/abs/1606.08415) and
		"Sigmoid-Weighted Linear Units for Neural Network Function Approximation in
		Reinforcement Learning"
		[Elfwing et al. 2017](https://arxiv.org/abs/1702.03118) and was independently
		discovered (and called swish) in "Searching for Activation Functions"
		[Ramachandran et al. 2017](https://arxiv.org/abs/1710.05941)
		
		Args:
		  features: A `Tensor` representing preactivation values.
		
		Returns:
		  The activation value.
	**/
	static public function swish(features:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes a weighted cross entropy. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(targets)`. They will be removed in a future version.
		Instructions for updating:
		targets is deprecated, use labels instead
		
		This is like `sigmoid_cross_entropy_with_logits()` except that `pos_weight`,
		allows one to trade off recall and precision by up- or down-weighting the
		cost of a positive error relative to a negative error.
		
		The usual cross-entropy cost is defined as:
		
		    labels * -log(sigmoid(logits)) +
		        (1 - labels) * -log(1 - sigmoid(logits))
		
		A value `pos_weight > 1` decreases the false negative count, hence increasing
		the recall.
		Conversely setting `pos_weight < 1` decreases the false positive count and
		increases the precision.
		This can be seen from the fact that `pos_weight` is introduced as a
		multiplicative coefficient for the positive labels term
		in the loss expression:
		
		    labels * -log(sigmoid(logits)) * pos_weight +
		        (1 - labels) * -log(1 - sigmoid(logits))
		
		For brevity, let `x = logits`, `z = labels`, `q = pos_weight`.
		The loss is:
		
		      qz * -log(sigmoid(x)) + (1 - z) * -log(1 - sigmoid(x))
		    = qz * -log(1 / (1 + exp(-x))) + (1 - z) * -log(exp(-x) / (1 + exp(-x)))
		    = qz * log(1 + exp(-x)) + (1 - z) * (-log(exp(-x)) + log(1 + exp(-x)))
		    = qz * log(1 + exp(-x)) + (1 - z) * (x + log(1 + exp(-x))
		    = (1 - z) * x + (qz +  1 - z) * log(1 + exp(-x))
		    = (1 - z) * x + (1 + (q - 1) * z) * log(1 + exp(-x))
		
		Setting `l = (1 + (q - 1) * z)`, to ensure stability and avoid overflow,
		the implementation uses
		
		    (1 - z) * x + l * (log(1 + exp(-abs(x))) + max(-x, 0))
		
		`logits` and `labels` must have the same type and shape.
		
		Args:
		  labels: A `Tensor` of the same type and shape as `logits`.
		  logits: A `Tensor` of type `float32` or `float64`.
		  pos_weight: A coefficient to use on the positive examples.
		  name: A name for the operation (optional).
		  targets: Deprecated alias for labels.
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  weighted logistic losses.
		
		Raises:
		  ValueError: If `logits` and `labels` do not have the same shape.
	**/
	static public function weighted_cross_entropy_with_logits(?labels:Dynamic, ?logits:Dynamic, ?pos_weight:Dynamic, ?name:Dynamic, ?targets:Dynamic):Dynamic;
	/**
		Computes a weighted cross entropy.
		
		This is like `sigmoid_cross_entropy_with_logits()` except that `pos_weight`,
		allows one to trade off recall and precision by up- or down-weighting the
		cost of a positive error relative to a negative error.
		
		The usual cross-entropy cost is defined as:
		
		    labels * -log(sigmoid(logits)) +
		        (1 - labels) * -log(1 - sigmoid(logits))
		
		A value `pos_weight > 1` decreases the false negative count, hence increasing
		the recall.
		Conversely setting `pos_weight < 1` decreases the false positive count and
		increases the precision.
		This can be seen from the fact that `pos_weight` is introduced as a
		multiplicative coefficient for the positive labels term
		in the loss expression:
		
		    labels * -log(sigmoid(logits)) * pos_weight +
		        (1 - labels) * -log(1 - sigmoid(logits))
		
		For brevity, let `x = logits`, `z = labels`, `q = pos_weight`.
		The loss is:
		
		      qz * -log(sigmoid(x)) + (1 - z) * -log(1 - sigmoid(x))
		    = qz * -log(1 / (1 + exp(-x))) + (1 - z) * -log(exp(-x) / (1 + exp(-x)))
		    = qz * log(1 + exp(-x)) + (1 - z) * (-log(exp(-x)) + log(1 + exp(-x)))
		    = qz * log(1 + exp(-x)) + (1 - z) * (x + log(1 + exp(-x))
		    = (1 - z) * x + (qz +  1 - z) * log(1 + exp(-x))
		    = (1 - z) * x + (1 + (q - 1) * z) * log(1 + exp(-x))
		
		Setting `l = (1 + (q - 1) * z)`, to ensure stability and avoid overflow,
		the implementation uses
		
		    (1 - z) * x + l * (log(1 + exp(-abs(x))) + max(-x, 0))
		
		`logits` and `labels` must have the same type and shape.
		
		>>> labels = tf.constant([1., 0.5, 0.])
		>>> logits = tf.constant([1.5, -0.1, -10.])
		>>> tf.nn.weighted_cross_entropy_with_logits(
		...     labels=labels, logits=logits, pos_weight=tf.constant(1.5)).numpy()
		array([3.0211994e-01, 8.8049585e-01, 4.5776367e-05], dtype=float32)
		>>> tf.nn.weighted_cross_entropy_with_logits(
		...     labels=labels, logits=logits, pos_weight=tf.constant(0.5)).numpy()
		array([1.00706644e-01, 5.08297503e-01, 4.57763672e-05], dtype=float32)
		
		Args:
		  labels: A `Tensor` of the same type and shape as `logits`, with values
		    between 0 and 1 inclusive.
		  logits: A `Tensor` of type `float32` or `float64`, any real numbers.
		  pos_weight: A coefficient to use on the positive examples, typically a
		    scalar but otherwise broadcastable to the shape of `logits`. Its value
		    should be non-negative.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  weighted logistic losses.
		
		Raises:
		  ValueError: If `logits` and `labels` do not have the same shape.
	**/
	static public function weighted_cross_entropy_with_logits_v2(labels:Dynamic, logits:Dynamic, pos_weight:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the frequency-weighted mean and variance of `x`.
		
		Args:
		  x: A tensor.
		  axes: 1-d tensor of int32 values; these are the axes along which
		    to compute mean and variance.
		  frequency_weights: A tensor of positive weights which can be
		    broadcast with x.
		  name: Name used to scope the operation.
		  keep_dims: Produce moments with the same dimensionality as the input.
		  keepdims: Alias of keep_dims.
		
		Returns:
		  Two tensors: `weighted_mean` and `weighted_variance`.
	**/
	static public function weighted_moments(x:Dynamic, axes:Dynamic, frequency_weights:Dynamic, ?name:Dynamic, ?keep_dims:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns the frequency-weighted mean and variance of `x`.
		
		Args:
		  x: A tensor.
		  axes: 1-d tensor of int32 values; these are the axes along which
		    to compute mean and variance.
		  frequency_weights: A tensor of positive weights which can be
		    broadcast with x.
		  keepdims: Produce moments with the same dimensionality as the input.
		  name: Name used to scope the operation.
		
		Returns:
		  Two tensors: `weighted_mean` and `weighted_variance`.
	**/
	static public function weighted_moments_v2(x:Dynamic, axes:Dynamic, frequency_weights:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the fraction of zeros in `value`.
		
		If `value` is empty, the result is `nan`.
		
		This is useful in summaries to measure and report sparsity.  For example,
		
		```python
		    z = tf.nn.relu(...)
		    summ = tf.compat.v1.summary.scalar('sparsity', tf.nn.zero_fraction(z))
		```
		
		Args:
		  value: A tensor of numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  The fraction of zeros in `value`, with type `float32`.
	**/
	static public function zero_fraction(value:Dynamic, ?name:Dynamic):Dynamic;
}