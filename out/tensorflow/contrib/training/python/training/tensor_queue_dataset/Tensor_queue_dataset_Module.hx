/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.tensor_queue_dataset;
@:pythonImport("tensorflow.contrib.training.python.training.tensor_queue_dataset") extern class Tensor_queue_dataset_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Enqueue components into queue from `PrependFromQueueAndPaddedBatchDataset`.
		
		The components' dtypes and shapes must be compatible with the `output_shapes`
		attribute of the `dataset` created by
		`prepend_from_queue_and_padded_batch_dataset`.  This operation supports both
		non-batched and batched modes.
		
		For more details, see the example in the docstring for
		`prepend_from_queue_and_padded_batch_dataset`.
		
		Args:
		  queue: `variant` scalar or vector tensor.
		    The tensor emitted by the first component of the iterator associated with
		    `prepend_from_queue_and_padded_batch_dataset`.  If this is a scalar,
		    then the `components` input tensors should not have a prepended batch
		    dimension.
		  components: Nested tuple of tensors, each with a leading batch dimension
		    if `queue` is a vector.  The structure, dtypes, and shapes
		    (excluding batch dimension) must match the nested tuples
		    `dataset.output_types[1]` and `dataset.output_shapes[1]` (the non-queue
		    output types and shapes) of the `dataset` emitted by
		    the original `prepend_from_queue_and_padded_batch_dataset` call.
		
		Returns:
		  An `Operation` that enqueues `components` into the dataset(s) associated
		  with entries of `queue`.
	**/
	static public function enqueue_in_queue_dataset(queue:Dynamic, components:Dynamic):Dynamic;
	/**
		A transformation that prepends a queue to a `Dataset` and batches results.
		
		A vector of handles to the queue is returned as the first component of the
		associated iterator.  This vector can be passed to `enqueue_in_queue_dataset`
		to add new elements to the queue.
		
		Below is an example of how this dataset might be used to split incoming
		variable-length sequences into "head" and "rest" parts, where "rest" parts
		are re-enqueued back into the dataset.  A more realistic example would
		perform some calculation on the "head" and modify some components of "rest"
		with the result (before re-enqueueing).
		
		```python
		dataset = tf.data.Dataset.from_tensor_slices([2*x for x in range(10)])
		# Make a dataset of variable-length vectors and their lengths.
		dataset = dataset.map(lambda count: (count, tf.ones((count,))))
		# Emit a queue we can prepend to, and counts/values as padded batch.
		dataset = dataset.apply(
		    tf.contrib.training.prepend_from_queue_and_padded_batch_dataset(
		      batch_size=10))
		dataset = dataset.prefetch(1)
		
		iterator = dataset.make_one_shot_iterator()
		queue, (count, padded_value) = iterator.get_next()
		
		# Split the padded_value into two pieces: head and rest
		rest_indices = tf.squeeze(tf.where(count > 3), axis=1)
		bound = tf.minimum(3, tf.reduce_max(count))
		value_head = padded_value[:, :bound]
		count_rest = tf.gather(count - 3, rest_indices)
		value_rest = tf.gather(padded_value[:, bound:], rest_indices)
		queue_rest = tf.gather(queue, rest_indices)
		enqueue_rest_op = tf.contrib.training.enqueue_in_queue_dataset(
		  queue_rest, (count_rest, value_rest))
		with tf.control_dependencies([enqueue_rest_op]):
		  calculation = fn(value_head)
		
		while True:  # Will raise OutOfRange when finished with all pieces.
		  session.run(calculation)
		```
		
		Args:
		  batch_size: `int64` scalar tensor.  The batch size to use when performing
		    padded batching.
		  padding_values: (optional) Nested tuple of scalar tensors.  If provided,
		    the structure and dtypes of padding_values should match that of
		    incoming dataset's `output_types`.
		  padded_shapes: (optional) Nested tuple of `int64` vector tensors.
		    If provided, the structure must match that of the incoming dataset's
		    `output_types`.  If not provided, the incoming dataset's `output_shapes`
		    is used.  Any unknown (`None` or `-1`) dimensions in the shapes are
		    treated as being unique per-batch: for each batch time, an unknown
		    dimension is replaced with the maximum given value of this dimension
		    across all tensors for the given component in the batch.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function prepend_from_queue_and_padded_batch_dataset(batch_size:Dynamic, ?padding_values:Dynamic, ?padded_shapes:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}