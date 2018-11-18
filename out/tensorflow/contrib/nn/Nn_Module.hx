/* This file is generated, do not edit! */
package tensorflow.contrib.nn;
@:pythonImport("tensorflow.contrib.nn") extern class Nn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes alpha dropout.
		
		Alpha Dropout is a dropout that maintains the self-normalizing property. For
		an input with zero mean and unit standard deviation, the output of
		Alpha Dropout maintains the original mean and standard deviation of the input.
		
		See [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
		
		Args:
		  x: A tensor.
		  keep_prob: A scalar `Tensor` with the same type as x. The probability
		    that each element is kept.
		  noise_shape: A 1-D `Tensor` of type `int32`, representing the
		    shape for randomly generated keep/drop flags.
		  seed: A Python integer. Used to create random seeds. See
		    `tf.set_random_seed` for behavior.
		  name: A name for this operation (optional).
		
		Returns:
		  A Tensor of the same shape of `x`.
		
		Raises:
		  ValueError: If `keep_prob` is not in `(0, 1]`.
	**/
	static public function alpha_dropout(x:Dynamic, keep_prob:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes sigmoid cross entropy given `logits`.
		
		This function diffs from tf.nn.sigmoid_cross_entropy_with_logits only in the
		argument order.
		
		Measures the probability error in discrete classification tasks in which each
		class is independent and not mutually exclusive.  For instance, one could
		perform multilabel classification where a picture can contain both an elephant
		and a dog at the same time.
		
		For brevity, let `x = logits`, `z = targets`.  The logistic loss is
		
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
		
		`logits` and `targets` must have the same type and shape.
		
		Args:
		  logits: A `Tensor` of type `float32` or `float64`.
		  targets: A `Tensor` of the same type and shape as `logits`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `logits` and `targets` do not have the same shape.
	**/
	static public function deprecated_flipped_sigmoid_cross_entropy_with_logits(logits:Dynamic, targets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy between `logits` and `labels`.
		
		This function diffs from tf.nn.softmax_cross_entropy_with_logits only in the
		argument order.
		
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
		
		`logits` and `labels` must have the same shape `[batch_size, num_classes]`
		and the same dtype (either `float16`, `float32`, or `float64`).
		
		Args:
		  logits: Unscaled log probabilities.
		  labels: Each row `labels[i]` must be a valid probability distribution.
		  dim: The class dimension. Defaulted to -1 which is the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A 1-D `Tensor` of length `batch_size` of the same type as `logits` with the
		  softmax cross entropy loss.
	**/
	static public function deprecated_flipped_softmax_cross_entropy_with_logits(logits:Dynamic, labels:Dynamic, ?dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sparse softmax cross entropy between `logits` and `labels`.
		
		This function diffs from tf.nn.sparse_softmax_cross_entropy_with_logits only
		in the argument order.
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		**NOTE:**  For this operation, the probability of a given label is considered
		exclusive.  That is, soft classes are not allowed, and the `labels` vector
		must provide a single specific index for the true class for each row of
		`logits` (each minibatch entry).  For soft softmax classification with
		a probability distribution for each entry, see
		`softmax_cross_entropy_with_logits`.
		
		**WARNING:** This op expects unscaled logits, since it performs a softmax
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits of shape `[batch_size, num_classes]` and
		labels of shape `[batch_size]`. But higher dimensions are supported.
		
		Args:
		
		  logits: Unscaled log probabilities of rank `r` and shape
		    `[d_0, d_1, ..., d_{r-2}, num_classes]` and dtype `float32` or `float64`.
		  labels: `Tensor` of shape `[d_0, d_1, ..., d_{r-2}]` and dtype `int32` or
		    `int64`. Each entry in `labels` must be an index in `[0, num_classes)`.
		    Other values will raise an exception when this op is run on CPU, and
		    return `NaN` for corresponding corresponding loss and gradient rows
		    on GPU.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `labels` and of the same type as `logits`
		  with the softmax cross entropy loss.
		
		Raises:
		  ValueError: If logits are scalars (need to have rank >= 1) or if the rank
		    of the labels is not equal to the rank of the logits minus one.
	**/
	static public function deprecated_flipped_sparse_softmax_cross_entropy_with_logits(logits:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes softmax loss using rank-based adaptive resampling.
		
		This has been shown to improve rank loss after training compared to
		`tf.nn.sampled_softmax_loss`. For a description of the algorithm and some
		experimental results, please see: [TAPAS: Two-pass Approximate Adaptive
		Sampling for Softmax](https://arxiv.org/abs/1707.03073).
		
		Sampling follows two phases:
		* In the first phase, `num_sampled` classes are selected using
		  `tf.nn.learned_unigram_candidate_sampler` or supplied `sampled_values`.
		  The logits are calculated on those sampled classes. This phases is
		  similar to `tf.nn.sampled_softmax_loss`.
		* In the second phase, the `num_resampled` classes with highest predicted
		  probability are kept. Probabilities are
		  `LogSumExp(logits / resampling_temperature)`, where the sum is over
		  `inputs`.
		
		The `resampling_temperature` parameter controls the "adaptiveness" of the
		resampling. At lower temperatures, resampling is more adaptive because it
		picks more candidates close to the predicted classes. A common strategy is
		to decrease the temperature as training proceeds.
		
		See `tf.nn.sampled_softmax_loss` for more documentation on sampling and
		for typical default values for some of the parameters.
		
		This operation is for training only. It is generally an underestimate of
		the full softmax loss.
		
		A common use case is to use this method for training, and calculate the full
		softmax loss for evaluation or inference. In this case, you must set
		`partition_strategy="div"` for the two losses to be consistent, as in the
		following example:
		
		```python
		if mode == "train":
		  loss = rank_sampled_softmax_loss(
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
		
		Args:
		  weights: A `Tensor` or `PartitionedVariable` of shape `[num_classes, dim]`,
		      or a list of `Tensor` objects whose concatenation along dimension 0
		      has shape [num_classes, dim]. The (possibly-sharded) class embeddings.
		  biases: A `Tensor` or `PartitionedVariable` of shape `[num_classes]`.
		      The (possibly-sharded) class biases.
		  labels: A `Tensor` of type `int64` and shape `[batch_size,
		      num_true]`. The target classes. Note that this format differs from
		      the `labels` argument of `nn.softmax_cross_entropy_with_logits`.
		  inputs: A `Tensor` of shape `[batch_size, dim]`. The forward
		      activations of the input network.
		  num_sampled: An `int`. The number of classes to randomly sample per batch.
		  num_resampled: An `int`. The number of classes to select from the
		      `num_sampled` classes using the adaptive resampling algorithm. Must be
		      less than `num_sampled`.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: A tuple of (`sampled_candidates`, `true_expected_count`,
		      `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		      If None, default to `nn.learned_unigram_candidate_sampler`.
		  resampling_temperature: A scalar `Tensor` with the temperature parameter
		      for the adaptive resampling algorithm.
		  remove_accidental_hits: A `bool`. Whether to remove "accidental hits"
		      where a sampled class equals one of the target classes.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		      if `len(weights) > 1`. Currently `"div"` and `"mod"` are supported.
		      See `tf.nn.embedding_lookup` for more details.
		  name: A name for the operation (optional).
		
		Returns:
		  A `batch_size` 1-D tensor of per-example sampled softmax losses.
		
		Raises:
		  ValueError: If `num_sampled <= num_resampled`.
	**/
	static public function rank_sampled_softmax_loss(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_resampled:Dynamic, num_classes:Dynamic, num_true:Dynamic, sampled_values:Dynamic, resampling_temperature:Dynamic, remove_accidental_hits:Dynamic, partition_strategy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes and returns the sampled sparse softmax training loss.
		
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
		  loss = tf.nn.sampled_sparse_softmax_loss(
		      weights=weights,
		      biases=biases,
		      labels=labels,
		      inputs=inputs,
		      ...,
		      partition_strategy="div")
		elif mode == "eval":
		  logits = tf.matmul(inputs, tf.transpose(weights))
		  logits = tf.nn.bias_add(logits, biases)
		  loss = tf.nn.sparse_softmax_cross_entropy_with_logits(
		      labels=tf.squeeze(labels),
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
		  labels: A `Tensor` of type `int64` and shape `[batch_size, 1]`.
		      The index of the single target class for each row of logits.  Note that
		      this format differs from the `labels` argument of
		      `nn.sparse_softmax_cross_entropy_with_logits`.
		  inputs: A `Tensor` of shape `[batch_size, dim]`.  The forward
		      activations of the input network.
		  num_sampled: An `int`.  The number of classes to randomly sample per batch.
		  num_classes: An `int`. The number of possible classes.
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
	static public function sampled_sparse_softmax_loss(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `y = alpha * ln(1 + exp(x / alpha))` or `min(y, clip)`.
		
		This can be seen as a softplus applied to the scaled input, with the output
		appropriately scaled. As `alpha` tends to 0, `scaled_softplus(x, alpha)` tends
		to `relu(x)`. The clipping is optional. As alpha->0, scaled_softplus(x, alpha)
		tends to relu(x), and scaled_softplus(x, alpha, clip=6) tends to relu6(x).
		
		Note: the gradient for this operation is defined to depend on the backprop
		inputs as well as the outputs of this operation.
		
		Args:
		  x: A `Tensor` of inputs.
		  alpha: A `Tensor`, indicating the amount of smoothness. The caller
		      must ensure that `alpha > 0`.
		  clip: (optional) A `Tensor`, the upper bound to clip the values.
		  name: A name for the scope of the operations (optional).
		
		Returns:
		  A tensor of the size and type determined by broadcasting of the inputs.
	**/
	static public function scaled_softplus(x:Dynamic, alpha:Dynamic, ?clip:Dynamic, ?name:Dynamic):Dynamic;
}