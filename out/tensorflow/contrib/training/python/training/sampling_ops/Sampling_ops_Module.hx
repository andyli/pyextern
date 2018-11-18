/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.sampling_ops;
@:pythonImport("tensorflow.contrib.training.python.training.sampling_ops") extern class Sampling_ops_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calculate the per-class acceptance rates.
		
		Args:
		  init_probs: The class probabilities of the data.
		  target_probs: The desired class proportion in minibatches.
		Returns:
		  A list of the per-class acceptance probabilities.
		
		This method is based on solving the following analysis:
		
		Let F be the probability of a rejection (on any example).
		Let p_i be the proportion of examples in the data in class i (init_probs)
		Let a_i is the rate the rejection sampler should *accept* class i
		Let t_i is the target proportion in the minibatches for class i (target_probs)
		
		```
		F = sum_i(p_i * (1-a_i))
		  = 1 - sum_i(p_i * a_i)     using sum_i(p_i) = 1
		```
		
		An example with class `i` will be accepted if `k` rejections occur, then an
		example with class `i` is seen by the rejector, and it is accepted. This can
		be written as follows:
		
		```
		t_i = sum_k=0^inf(F^k * p_i * a_i)
		    = p_i * a_j / (1 - F)    using geometric series identity, since 0 <= F < 1
		    = p_i * a_i / sum_j(p_j * a_j)        using F from above
		```
		
		Note that the following constraints hold:
		```
		0 <= p_i <= 1, sum_i(p_i) = 1
		0 <= a_i <= 1
		0 <= t_i <= 1, sum_i(t_i) = 1
		```
		
		
		A solution for a_i in terms of the other variables is the following:
		  ```a_i = (t_i / p_i) / max_i[t_i / p_i]```
	**/
	static public function _calculate_acceptance_probabilities(init_probs:Dynamic, target_probs:Dynamic):Dynamic;
	/**
		Estimate data distribution as labels are seen.
	**/
	static public function _estimate_data_distribution(labels:Dynamic, num_classes:Dynamic, ?smoothing_constant:Dynamic):Dynamic;
	/**
		Verify that batched data inputs are well-formed.
	**/
	static public function _verify_data_inputs(tensor_list:Dynamic):Dynamic;
	/**
		Verify that batched inputs are well-formed.
	**/
	static public function _verify_input(tensor_list:Dynamic, labels:Dynamic, probs_list:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Stochastically creates batches by rejection sampling.
		
		Each list of non-batched tensors is evaluated by `accept_prob_fn`, to produce
		a scalar tensor between 0 and 1. This tensor corresponds to the probability of
		being accepted. When `batch_size` tensor groups have been accepted, the batch
		queue will return a mini-batch.
		
		Args:
		  tensors: List of tensors for data. All tensors are either one item or a
		      batch, according to enqueue_many.
		  accept_prob_fn: A python lambda that takes a non-batch tensor from each
		      item in `tensors`, and produces a scalar tensor.
		  batch_size: Size of batch to be returned.
		  queue_threads: The number of threads for the queue that will hold the final
		    batch.
		  enqueue_many: Bool. If true, interpret input tensors as having a batch
		      dimension.
		  prebatch_capacity: Capacity for the large queue that is used to convert
		    batched tensors to single examples.
		  prebatch_threads: Number of threads for the large queue that is used to
		    convert batched tensors to single examples.
		  runtime_checks: Bool. If true, insert runtime checks on the output of
		      `accept_prob_fn`. Using `True` might have a performance impact.
		  name: Optional prefix for ops created by this function.
		Raises:
		  ValueError: enqueue_many is True and labels doesn't have a batch
		      dimension, or if enqueue_many is False and labels isn't a scalar.
		  ValueError: enqueue_many is True, and batch dimension on data and labels
		      don't match.
		  ValueError: if a zero initial probability class has a nonzero target
		      probability.
		Returns:
		  A list of tensors of the same length as `tensors`, with batch dimension
		  `batch_size`.
		
		Example:
		  # Get tensor for a single data and label example.
		  data, label = data_provider.Get(['data', 'label'])
		
		  # Get stratified batch according to data tensor.
		  accept_prob_fn = lambda x: (tf.tanh(x[0]) + 1) / 2
		  data_batch = tf.contrib.training.rejection_sample(
		      [data, label], accept_prob_fn, 16)
		
		  # Run batch through network.
		  ...
	**/
	static public function rejection_sample(tensors:Dynamic, accept_prob_fn:Dynamic, batch_size:Dynamic, ?queue_threads:Dynamic, ?enqueue_many:Dynamic, ?prebatch_capacity:Dynamic, ?prebatch_threads:Dynamic, ?runtime_checks:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stochastically creates batches based on per-class probabilities.
		
		This method discards examples. Internally, it creates one queue to amortize
		the cost of disk reads, and one queue to hold the properly-proportioned
		batch.
		
		Args:
		  tensors: List of tensors for data. All tensors are either one item or a
		      batch, according to enqueue_many.
		  labels: Tensor for label of data. Label is a single integer or a batch,
		      depending on `enqueue_many`. It is not a one-hot vector.
		  target_probs: Target class proportions in batch. An object whose type has a
		      registered Tensor conversion function.
		  batch_size: Size of batch to be returned.
		  init_probs: Class proportions in the data. An object whose type has a
		      registered Tensor conversion function, or `None` for estimating the
		      initial distribution.
		  enqueue_many: Bool. If true, interpret input tensors as having a batch
		      dimension.
		  queue_capacity: Capacity of the large queue that holds input examples.
		  threads_per_queue: Number of threads for the large queue that holds input
		      examples and for the final queue with the proper class proportions.
		  name: Optional prefix for ops created by this function.
		Raises:
		  ValueError: If `tensors` isn't iterable.
		  ValueError: `enqueue_many` is True and labels doesn't have a batch
		      dimension, or if `enqueue_many` is False and labels isn't a scalar.
		  ValueError: `enqueue_many` is True, and batch dimension on data and labels
		      don't match.
		  ValueError: if probs don't sum to one.
		  ValueError: if a zero initial probability class has a nonzero target
		      probability.
		  TFAssertion: if labels aren't integers in [0, num classes).
		Returns:
		  (data_batch, label_batch), where data_batch is a list of tensors of the same
		      length as `tensors`
		
		Example:
		  # Get tensor for a single data and label example.
		  data, label = data_provider.Get(['data', 'label'])
		
		  # Get stratified batch according to per-class probabilities.
		  target_probs = [...distribution you want...]
		  [data_batch], labels = tf.contrib.training.stratified_sample(
		      [data], label, target_probs)
		
		  # Run batch through network.
		  ...
	**/
	static public function stratified_sample(tensors:Dynamic, labels:Dynamic, target_probs:Dynamic, batch_size:Dynamic, ?init_probs:Dynamic, ?enqueue_many:Dynamic, ?queue_capacity:Dynamic, ?threads_per_queue:Dynamic, ?name:Dynamic):Dynamic;
}