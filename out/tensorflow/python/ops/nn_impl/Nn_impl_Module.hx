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
		Returns:
		  out_logits, out_labels: `Tensor` objects each with shape
		      `[batch_size, num_true + num_sampled]`, for passing to either
		      `nn.sigmoid_cross_entropy_with_logits` (NCE) or
		      `nn.softmax_cross_entropy_with_logits` (sampled softmax).
	**/
	static public function _compute_sampled_logits(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?subtract_log_q:Dynamic, ?remove_accidental_hits:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Returns:
		   A batch-normalized `t`.
	**/
	static public function batch_norm_with_global_normalization(t:Dynamic, m:Dynamic, v:Dynamic, beta:Dynamic, gamma:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		As described in http://arxiv.org/abs/1502.03167.
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
		    `tf.nn.moments(..., keep_dims=True)` during training, or running averages
		    thereof during inference.
		  * In the common case where the 'depth' dimension is the last dimension in
		    the input tensor `x`, they may be one dimensional tensors of the same
		    size as the 'depth' dimension.
		    This is the case for example for the common `[batch, depth]` layout of
		    fully-connected layers, and `[batch, height, width, depth]` for
		    convolutions.
		    `mean` and `variance` in this case would typically be the outputs of
		    `tf.nn.moments(..., keep_dims=False)` during training, or running averages
		    thereof during inference.
		
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
	**/
	static public function batch_normalization(x:Dynamic, mean:Dynamic, variance:Dynamic, offset:Dynamic, scale:Dynamic, variance_epsilon:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Depthwise 2-D convolution.
		
		Given a 4D input tensor ('NHWC' or 'NCHW' data formats)
		and a filter tensor of shape
		`[filter_height, filter_width, in_channels, channel_multiplier]`
		containing `in_channels` convolutional filters of depth 1, `depthwise_conv2d`
		applies a different filter to each input channel (expanding from 1 channel
		to `channel_multiplier` channels for each), then concatenates the results
		together.  The output has `in_channels * channel_multiplier` channels.
		
		In detail,
		
		    output[b, i, j, k * channel_multiplier + q] = sum_{di, dj}
		         filter[di, dj, k, q] * input[b, strides[1] * i + rate[0] * di,
		                                         strides[2] * j + rate[1] * dj, k]
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the
		same horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		If any value in `rate` is greater than 1, we perform atrous depthwise
		convolution, in which case all values in the `strides` tensor must be equal
		to 1.
		
		Args:
		  input: 4-D with shape according to `data_format`.
		  filter: 4-D with shape
		    `[filter_height, filter_width, in_channels, channel_multiplier]`.
		  strides: 1-D of size 4.  The stride of the sliding window for each
		    dimension of `input`.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the @{tf.nn.convolution$comment here}
		  rate: 1-D of size 2. The dilation rate in which we sample input values
		    across the `height` and `width` dimensions in atrous convolution. If it is
		    greater than 1, then all values of strides must be 1.
		  name: A name for this operation (optional).
		  data_format: The data format for input. Either "NHWC" (default) or "NCHW".
		
		Returns:
		  A 4-D `Tensor` with shape according to `data_format`.  E.g., for
		  "NHWC" format, shape is
		  `[batch, out_height, out_width, in_channels * channel_multiplier].`
	**/
	static public function depthwise_conv2d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?rate:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Batch normalization.
		
		As described in http://arxiv.org/abs/1502.03167.
		
		Args:
		  x: Input `Tensor` of 4 dimensions.
		  scale: A `Tensor` of 1 dimension for scaling.
		  offset: A `Tensor` of 1 dimension for bias.
		  mean: A `Tensor` of 1 dimension for population mean used for inference.
		  variance: A `Tensor` of 1 dimension for population variance
		            used for inference.
		  epsilon: A small float number added to the variance of x.
		  data_format: The data format for x. Either "NHWC" (default) or "NCHW".
		  is_training: A bool value to specify if the operation is used for
		               training or inference.
		  name: A name for this operation (optional).
		
		Returns:
		  y: A 4D Tensor for the normalized, scaled, offsetted x.
		  batch_mean: A 1D Tensor for the mean of x.
		  batch_var: A 1D Tensor for the variance of x.
		
		Raises:
		  ValueError: If mean or variance is not None when is_training is True.
	**/
	static public function fused_batch_norm(x:Dynamic, scale:Dynamic, offset:Dynamic, ?mean:Dynamic, ?variance:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Normalizes along dimension `dim` using an L2 norm.
		
		For a 1-D tensor with `dim = 0`, computes
		
		    output = x / sqrt(max(sum(x**2), epsilon))
		
		For `x` with more dimensions, independently normalizes each 1-D slice along
		dimension `dim`.
		
		Args:
		  x: A `Tensor`.
		  dim: Dimension along which to normalize.  A scalar or a vector of
		    integers.
		  epsilon: A lower bound value for the norm. Will use `sqrt(epsilon)` as the
		    divisor if `norm < sqrt(epsilon)`.
		  name: A name for this operation (optional).
		
		Returns:
		  A `Tensor` with the same shape as `x`.
	**/
	static public function l2_normalize(x:Dynamic, dim:Dynamic, ?epsilon:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Note: for numerical stability, when shift=None, the true mean
		would be computed and used as shift.
		
		When using these moments for batch normalization (see
		`tf.nn.batch_normalization`):
		
		 * for so-called "global normalization", used with convolutional filters with
		   shape `[batch, height, width, depth]`, pass `axes=[0, 1, 2]`.
		 * for simple batch normalization pass `axes=[0]` (batch only).
		
		Args:
		  x: A `Tensor`.
		  axes: Array of ints.  Axes along which to compute mean and
		    variance.
		  shift: A `Tensor` containing the value by which to shift the data for
		    numerical stability, or `None` in which case the true mean of the data is
		    used as shift. A shift close to the true mean provides the most
		    numerically stable results.
		  name: Name used to scope the operations that compute the moments.
		  keep_dims: produce moments with the same dimensionality as the input.
		
		Returns:
		  Two `Tensor` objects: `mean` and `variance`.
	**/
	static public function moments(x:Dynamic, axes:Dynamic, ?shift:Dynamic, ?name:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes and returns the noise-contrastive estimation training loss.
		
		See [Noise-contrastive estimation: A new estimation principle for
		unnormalized statistical
		models](http://www.jmlr.org/proceedings/papers/v9/gutmann10a/gutmann10a.pdf).
		Also see our [Candidate Sampling Algorithms
		Reference](https://www.tensorflow.org/extras/candidate_sampling.pdf)
		
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
		@{tf.nn.log_uniform_candidate_sampler}.
		
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
		  num_sampled: An `int`.  The number of classes to randomly sample per batch.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: a tuple of (`sampled_candidates`, `true_expected_count`,
		      `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		      (if None, we default to `log_uniform_candidate_sampler`)
		  remove_accidental_hits:  A `bool`.  Whether to remove "accidental hits"
		      where a sampled class equals one of the target classes.  If set to
		      `True`, this is a "Sampled Logistic" loss instead of NCE, and we are
		      learning to generate log-odds instead of log probabilities.  See
		      our [Candidate Sampling Algorithms Reference]
		      (https://www.tensorflow.org/extras/candidate_sampling.pdf).
		      Default is False.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		      if `len(weights) > 1`. Currently `"div"` and `"mod"` are supported.
		      Default is `"mod"`. See `tf.nn.embedding_lookup` for more details.
		  name: A name for the operation (optional).
		
		Returns:
		  A `batch_size` 1-D tensor of per-example NCE losses.
	**/
	static public function nce_loss(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate the mean and variance of based on the sufficient statistics.
		
		Args:
		  counts: A `Tensor` containing a the total count of the data (one value).
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
		
		See our [Candidate Sampling Algorithms Reference]
		(https://www.tensorflow.org/extras/candidate_sampling.pdf)
		
		Also see Section 3 of [Jean et al., 2014](http://arxiv.org/abs/1412.2007)
		([pdf](http://arxiv.org/pdf/1412.2007.pdf)) for the math.
		
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
		
		Returns:
		  A `batch_size` 1-D tensor of per-example sampled softmax losses.
	**/
	static public function sampled_softmax_loss(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		2-D convolution with separable filters.
		
		Performs a depthwise convolution that acts separately on channels followed by
		a pointwise convolution that mixes channels.  Note that this is separability
		between dimensions `[1, 2]` and `3`, not spatial separability between
		dimensions `1` and `2`.
		
		In detail,
		
		    output[b, i, j, k] = sum_{di, dj, q, r]
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
		  padding: A string, either `'VALID'` or `'SAME'`.  The padding algorithm.
		    See the @{tf.nn.convolution$comment here}
		  rate: 1-D of size 2. The dilation rate in which we sample input values
		    across the `height` and `width` dimensions in atrous convolution. If it is
		    greater than 1, then all values of strides must be 1.
		  name: A name for this operation (optional).
		  data_format: The data format for input. Either "NHWC" (default) or "NCHW".
		
		Returns:
		  A 4-D `Tensor` with shape according to 'data_format'. For
		    example, with data_format="NHWC", shape is [batch, out_height,
		    out_width, out_channels].
		
		Raises:
		  ValueError: If channel_multiplier * in_channels > out_channels,
		    which means that the separable convolution is overparameterized.
	**/
	static public function separable_conv2d(input:Dynamic, depthwise_filter:Dynamic, pointwise_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?rate:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Computes sigmoid cross entropy given `logits`.
		
		Measures the probability error in discrete classification tasks in which each
		class is independent and not mutually exclusive.  For instance, one could
		perform multilabel classification where a picture can contain both an elephant
		and a dog at the same time.
		
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
		
		Args:
		  _sentinel: Used to prevent positional parameters. Internal, do not use.
		  labels: A `Tensor` of the same type and shape as `logits`.
		  logits: A `Tensor` of type `float32` or `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `logits` and `labels` do not have the same shape.
	**/
	static public function sigmoid_cross_entropy_with_logits(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?name:Dynamic):Dynamic;
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
		  keep_dims: produce statistics with the same dimensionality as the input.
		  name: Name used to scope the operations that compute the sufficient stats.
		
		Returns:
		  Four `Tensor` objects of the same type as `x`:
		
		  * the count (number of elements to average over).
		  * the (possibly shifted) sum of the elements in the array.
		  * the (possibly shifted) sum of squares of the elements in the array.
		  * the shift by which the mean must be corrected or None if `shift` is None.
	**/
	static public function sufficient_statistics(x:Dynamic, axes:Dynamic, ?shift:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a weighted cross entropy.
		
		This is like `sigmoid_cross_entropy_with_logits()` except that `pos_weight`,
		allows one to trade off recall and precision by up- or down-weighting the
		cost of a positive error relative to a negative error.
		
		The usual cross-entropy cost is defined as:
		
		    targets * -log(sigmoid(logits)) +
		        (1 - targets) * -log(1 - sigmoid(logits))
		
		The argument `pos_weight` is used as a multiplier for the positive targets:
		
		    targets * -log(sigmoid(logits)) * pos_weight +
		        (1 - targets) * -log(1 - sigmoid(logits))
		
		For brevity, let `x = logits`, `z = targets`, `q = pos_weight`.
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
		
		`logits` and `targets` must have the same type and shape.
		
		Args:
		  targets: A `Tensor` of the same type and shape as `logits`.
		  logits: A `Tensor` of type `float32` or `float64`.
		  pos_weight: A coefficient to use on the positive examples.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  weighted logistic losses.
		
		Raises:
		  ValueError: If `logits` and `targets` do not have the same shape.
	**/
	static public function weighted_cross_entropy_with_logits(targets:Dynamic, logits:Dynamic, pos_weight:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Returns:
		  Two tensors: `weighted_mean` and `weighted_variance`.
	**/
	static public function weighted_moments(x:Dynamic, axes:Dynamic, frequency_weights:Dynamic, ?name:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Returns the fraction of zeros in `value`.
		
		If `value` is empty, the result is `nan`.
		
		This is useful in summaries to measure and report sparsity.  For example,
		
		```python
		    z = tf.nn.relu(...)
		    summ = tf.summary.scalar('sparsity', tf.nn.zero_fraction(z))
		```
		
		Args:
		  value: A tensor of numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  The fraction of zeros in `value`, with type `float32`.
	**/
	static public function zero_fraction(value:Dynamic, ?name:Dynamic):Dynamic;
}