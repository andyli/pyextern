/* This file is generated, do not edit! */
package tensorflow.contrib.nn.python.ops.sampling_ops;
@:pythonImport("tensorflow.contrib.nn.python.ops.sampling_ops") extern class Sampling_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		A helper function for rank_sampled_softmax_loss.
		
		This computes, for each i in `sampled_values`,
		
		    log(sum_j exp((w_i * x_j + b_i) / resampling_temperature))
		
		where w_i, b_i are the weight and bias of the i-th class, respectively,
		and j ranges over the rows of `inputs`. For efficiency, we rearrange the
		computation to
		
		    log(sum_j exp(w_i * (x_j / resampling_temperature))) +
		        b_i / resampling_temperature.
		
		This translates to the following batched computation using tensorflow ops:
		
		    reduce_logsumexp(matmul(embeddings,
		                     transpose(inputs / resampling_temperature))) +
		        biases / resampling_temperature
		
		The computation of the first term is colocated with the embeddings using
		`transform_fn` in `embedding_ops._embedding_lookup_and_transform`. The second
		term, not the bottleneck, is computed at the worker.
		
		Args:
		  weights: From `rank_sampled_softmax_loss`.
		  biases: From `rank_sampled_softmax_loss`.
		  inputs: From `rank_sampled_softmax_loss`.
		  sampled_values: A tuple of (`sampled_candidates`, `true_expected_count`,
		      `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		  num_resampled: An `int`. This many values are selected from
		      `sampled_values` using the adaptive resampling algorithm. The caller
		      must ensure that `num_resampled` is less than the size of
		      `sampled_values`.
		  resampling_temperature: A scalar `Tensor` with the temperature parameter
		      for the adaptive resampling algorithm.
		  partition_strategy: From `rank_sampled_softmax_loss`.
		
		Returns:
		  A tuple of (`resampled_candidates`, `true_expected_count`,
		      `resampled_expected_count`), similar to `sampled_values` but sampled
		      down to `num_resampled` values.
	**/
	static public function _rank_resample(weights:Dynamic, biases:Dynamic, inputs:Dynamic, sampled_values:Dynamic, num_resampled:Dynamic, resampling_temperature:Dynamic, partition_strategy:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
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
}