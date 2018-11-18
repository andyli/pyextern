/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.bucket_ops;
@:pythonImport("tensorflow.contrib.training.python.training.bucket_ops") extern class Bucket_ops_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _as_original_type(original_tensors:Dynamic, tensor_list:Dynamic):Dynamic;
	static public function _as_tensor_list(tensors:Dynamic):Dynamic;
	static public function _dtypes(tensor_list_list:Dynamic):Dynamic;
	/**
		Restore SparseTensors after dequeue in batch, batch_join, etc.
	**/
	static public function _restore_sparse_tensors(stored_list:Dynamic, sparse_info_list:Dynamic):Dynamic;
	/**
		Calculate and merge the shapes of incoming tensors.
		
		Args:
		  tensor_list_list: List of tensor lists.
		  shapes: List of shape tuples corresponding to tensors within the lists.
		  enqueue_many: Boolean describing whether shapes will be enqueued as
		    batches or individual entries.
		
		Returns:
		  A list of shapes aggregating shape inference info from `tensor_list_list`,
		  or returning `shapes` if it is not `None`.
		
		Raises:
		  ValueError: If any of the inferred shapes in `tensor_list_list` lack a
		    well defined rank.
	**/
	static public function _shapes(tensor_list_list:Dynamic, shapes:Dynamic, enqueue_many:Dynamic):Dynamic;
	/**
		Store SparseTensors for feeding into batch, etc.
		
		If `shared_map_ops` is provided, the underlying `SparseTensorsMap` objects
		are reused (shared).  This argument is useful for, e.g., `batch_join`
		where multiple enqueue operations write to the same Queue component,
		and another (dequeue) thread reads from that same location and must then
		restore the associated `SparseTensor` objects.  In this case, the sparse
		restore must have a single `SparseTensorMap` from which to read out the
		handles; so a single `SparseTensorMap` must be shared for storing
		across the multiple enqueue operations.  This sharing is performed by
		calling `_store_sparse_tensors` the first time with `shared_map_ops=None`,
		and then in subsequent times with this value set to the list of `Operation`
		objects created in the first call.
		
		Args:
		  tensor_list: List of `Tensor` and `SparseTensor` objects.
		  enqueue_many: Python `Boolean`.
		  keep_input: Must be a scalar bool Tensor (not a Python bool). If False,
		    don't store.
		  shared_map_ops: (optional) List of `Operation` objects from a previous
		    call to `_store_sparse_tensors`.  If not `None`, the op types should be
		    one of `AddSparseToTensorsMap` or `AddManySparseToTensorsMap` in the
		    locations corresponding to `SparseTensors` in `tensor_list`.
		
		Returns:
		  A tuple `(stored_list, sparse_info_list)` where `stored_list` is a list
		  of `Tensor` objects (same length as `tensor_list`) and `sparse_info_list`
		  is a list of the same length of `_SparseMetaData` objects.
	**/
	static public function _store_sparse_tensors(tensor_list:Dynamic, enqueue_many:Dynamic, keep_input:Dynamic, ?shared_map_ops:Dynamic):Dynamic;
	static public function _validate_bucket(tensor_list:Dynamic):Dynamic;
	/**
		Validate `keep_input` argument to conditional batching functions.
	**/
	static public function _validate_keep_input(keep_input:Dynamic, enqueue_many:Dynamic):Dynamic;
	static public function _which_queue(dynamic_pad:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Lazy bucketing of input tensors according to `which_bucket`.
		
		The argument `tensors` can be a list or a dictionary of tensors.
		The value returned by the function will be of the same type
		as `tensors`.
		
		The tensors entering this function are put into the bucket given by
		`which_bucket`.  Each bucket has its own queue.  When a bucket contains
		`batch_size` elements, this minibatch is pushed onto a top queue.  The
		tensors returned from this function are a the result of dequeueing the
		next minibatch from this top queue.
		
		This function is implemented using several queues. A `QueueRunner` for the
		queues is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		As the returned tensors are the result of a dequeue operation, evaluating
		them will throw a `tf.errors.OutOfRangeError` when the input queue is
		exhausted.  If these tensors are feeding another input queue, its queue runner
		will catch this exception, however, if they are used in your main thread
		you are responsible for catching this yourself.
		
		*N.B.:* If `dynamic_pad` is `False`, you must ensure that either
		(i) the `shapes` argument is passed, or (ii) all of the tensors in
		`tensors` must have fully-defined shapes. `ValueError` will be
		raised if neither of these conditions holds.
		
		If `dynamic_pad` is `True`, it is sufficient that the *rank* of the
		tensors is known, but individual dimensions may have shape `None`.
		In this case, for each enqueue the dimensions with value `None`
		may have a variable length; upon dequeue, the output tensors will be padded
		on the right to the maximum shape of the tensors in the current minibatch.
		For numbers, this padding takes value 0.  For strings, this padding is
		the empty string.  See `PaddingFIFOQueue` for more info.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queues are closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`get_shape()` method will have a 0th `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors: The list or dictionary of tensors, representing a single element,
		    to bucket.  Nested lists are not supported.
		  which_bucket: An `int32` scalar Tensor taking a value in `[0, num_buckets)`.
		  batch_size: The new batch size pulled from the queue (all queues will have
		    the same size).  If a list is passed in then each bucket will have a
		    different batch_size.
		    (python int, int32 scalar or iterable of integers of length num_buckets).
		  num_buckets: A python integer, the number of buckets.
		  num_threads: An integer.  The number of threads enqueuing `tensors`.
		  capacity: An integer. The maximum number of minibatches in the top queue,
		    and also (by default) the maximum number of elements within each bucket.
		  bucket_capacities: (Optional) None or a list of integers, the capacities of
		    each bucket. If None, capacity is used (default). If specified, it must
		    be a list of integers of length num_buckets: the i-th element is used
		    as capacity for the i-th bucket queue.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batches to be smaller if there are insufficient items left in the queues.
		  keep_input: A `bool` scalar Tensor.  If provided, this tensor controls
		    whether the input is added to the queue or not.  If it evaluates `True`,
		    then `tensors` are added to the bucket; otherwise they are dropped.  This
		    tensor essentially acts as a filtering mechanism.
		  shared_name: (Optional). If set, the queues will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A tuple `(bucket, outputs)` where `bucket` is
		  a `int32` scalar tensor and `outputs` is a list or
		  dictionary of batched outputs corresponding to elements of `tensors`.
		  Every step will receive a new bucket of outputs.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors` or if batch_size is a sequence
		    but its length != num_buckets. Also if bucket_capacities is not None but
		    its length != num_buckets.
	**/
	static public function bucket(tensors:Dynamic, which_bucket:Dynamic, batch_size:Dynamic, num_buckets:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?bucket_capacities:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?keep_input:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Lazy bucketing of inputs according to their length.
		
		This method calls `tf.contrib.training.bucket` under the hood, after first
		subdividing the bucket boundaries into separate buckets and identifying which
		bucket the given `input_length` belongs to.  See the documentation for
		`which_bucket` for details of the other arguments.
		
		Args:
		  input_length: `int32` scalar `Tensor`, the sequence length of tensors.
		  tensors: The list or dictionary of tensors, representing a single element,
		    to bucket.  Nested lists are not supported.
		  batch_size: The new batch size pulled from the queue (all queues will have
		    the same size).  If a list is passed in then each bucket will have a
		    different batch_size.
		    (python int, int32 scalar or iterable of integers of length num_buckets).
		  bucket_boundaries: int list, increasing non-negative numbers.
		    The edges of the buckets to use when bucketing tensors.  Two extra buckets
		    are created, one for `input_length < bucket_boundaries[0]` and
		    one for `input_length >= bucket_boundaries[-1]`.
		  num_threads: An integer.  The number of threads enqueuing `tensors`.
		  capacity: An integer. The maximum number of minibatches in the top queue,
		    and also the maximum number of elements within each bucket.
		  bucket_capacities: (Optional) None or a list of integers, the capacities of
		    each bucket. If None, capacity is used (default). If specified, it must
		    be a list of integers of length one larger than bucket_boundaries.
		    Its i-th element is used as capacity for the i-th bucket queue.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batches to be smaller if there are insufficient items left in the queues.
		  keep_input: A `bool` scalar Tensor.  If provided, this tensor controls
		    whether the input is added to the queue or not.  If it evaluates `True`,
		    then `tensors` are added to the bucket; otherwise they are dropped.  This
		    tensor essentially acts as a filtering mechanism.
		  shared_name: (Optional). If set, the queues will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A tuple `(sequence_length, outputs)` where `sequence_length` is
		  a 1-D `Tensor` of size `batch_size` and `outputs` is a list or dictionary
		  of batched, bucketed, outputs corresponding to elements of `tensors`.
		
		Raises:
		  TypeError: if `bucket_boundaries` is not a list of python integers.
		  ValueError: if `bucket_boundaries` is empty or contains non-increasing
		    values or if batch_size is a list and it's length doesn't equal the number
		    of buckets.
	**/
	static public function bucket_by_sequence_length(input_length:Dynamic, tensors:Dynamic, batch_size:Dynamic, bucket_boundaries:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?bucket_capacities:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?keep_input:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}