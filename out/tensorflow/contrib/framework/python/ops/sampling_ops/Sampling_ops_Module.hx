/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.sampling_ops;
@:pythonImport("tensorflow.contrib.framework.python.ops.sampling_ops") extern class Sampling_ops_Module {
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
		
		
		A solution for a_i in terms of the other variabes is the following:
		  ```a_i = (t_i / p_i) / max_i[t_i / p_i]```
	**/
	static public function _calculate_acceptance_probabilities(init_probs:Dynamic, target_probs:Dynamic):Dynamic;
	/**
		Estimate data distribution as labels are seen.
	**/
	static public function _estimate_data_distribution(labels:Dynamic, num_classes:Dynamic):Dynamic;
	/**
		Generates batches according to per-class-probabilities.
	**/
	static public function _get_batch_from_per_class_queues(per_class_queues:Dynamic, probs:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Accepts examples one-at-a-time based on class.
	**/
	static public function _get_stratified_batch_from_tensors(val_list:Dynamic, label:Dynamic, accept_probs:Dynamic, batch_size:Dynamic, ?queue_threads:Dynamic):Dynamic;
	/**
		Creates per-class-queues based on data and labels.
	**/
	static public function _make_per_class_queues(tensor_list:Dynamic, labels:Dynamic, num_classes:Dynamic, queue_capacity:Dynamic, threads_per_queue:Dynamic):Dynamic;
	/**
		Verify that batched inputs are well-formed.
	**/
	static public function _verify_input(tensor_list:Dynamic, labels:Dynamic, probs_list:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Stochastically creates batches based on per-class probabilities.
		
		This method discards examples. Internally, it creates one queue to amortize
		the cost of disk reads, and one queue to hold the properly-proportioned
		batch. See `stratified_sample_unknown_dist` for a function that performs
		stratified sampling with one queue per class and doesn't require knowing the
		class data-distribution ahead of time.
		
		Args:
		  tensors: List of tensors for data. All tensors are either one item or a
		      batch, according to enqueue_many.
		  labels: Tensor for label of data. Label is a single integer or a batch,
		      depending on enqueue_many. It is not a one-hot vector.
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
		  ValueError: enqueue_many is True and labels doesn't have a batch
		      dimension, or if enqueue_many is False and labels isn't a scalar.
		  ValueError: enqueue_many is True, and batch dimension on data and labels
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
		  [data_batch], labels = tf.contrib.framework.sampling_ops.stratified_sample(
		      [data], label, target_probs)
		
		  # Run batch through network.
		  ...
	**/
	static public function stratified_sample(tensors:Dynamic, labels:Dynamic, target_probs:Dynamic, batch_size:Dynamic, ?init_probs:Dynamic, ?enqueue_many:Dynamic, ?queue_capacity:Dynamic, ?threads_per_queue:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stochastically creates batches based on per-class probabilities.
		
		**NOTICE** This sampler can be significantly slower than `stratified_sample`
		due to each thread discarding all examples not in its assigned class.
		
		This uses a number of threads proportional to the number of classes. See
		`stratified_sample` for an implementation that discards fewer examples and
		uses a fixed number of threads. This function's only advantage over
		`stratified_sample` is that the class data-distribution doesn't need to be
		known ahead of time.
		
		Args:
		  tensors: List of tensors for data. All tensors are either one item or a
		      batch, according to enqueue_many.
		  labels: Tensor for label of data. Label is a single integer or a batch,
		      depending on enqueue_many. It is not a one-hot vector.
		  probs: Target class probabilities. An object whose type has a registered
		      Tensor conversion function.
		  batch_size: Size of batch to be returned.
		  enqueue_many: Bool. If true, interpret input tensors as having a batch
		      dimension.
		  queue_capacity: Capacity of each per-class queue.
		  threads_per_queue: Number of threads for each per-class queue.
		  name: Optional prefix for ops created by this function.
		Raises:
		  ValueError: enqueue_many is True and labels doesn't have a batch
		      dimension, or if enqueue_many is False and labels isn't a scalar.
		  ValueError: enqueue_many is True, and batch dimension of data and labels
		      don't match.
		  ValueError: if probs don't sum to one.
		  TFAssertion: if labels aren't integers in [0, num classes).
		Returns:
		  (data_batch, label_batch), where data_batch is a list of tensors of the same
		      length as `tensors`
		
		Example:
		  # Get tensor for a single data and label example.
		  data, label = data_provider.Get(['data', 'label'])
		
		  # Get stratified batch according to per-class probabilities.
		  init_probs = [1.0/NUM_CLASSES for _ in range(NUM_CLASSES)]
		  [data_batch], labels = (
		      tf.contrib.framework.sampling_ops.stratified_sample_unknown_dist(
		          [data], label, init_probs, 16))
		
		  # Run batch through network.
		  ...
	**/
	static public function stratified_sample_unknown_dist(tensors:Dynamic, labels:Dynamic, probs:Dynamic, batch_size:Dynamic, ?enqueue_many:Dynamic, ?queue_capacity:Dynamic, ?threads_per_queue:Dynamic, ?name:Dynamic):Dynamic;
}