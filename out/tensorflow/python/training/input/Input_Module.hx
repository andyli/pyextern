/* This file is generated, do not edit! */
package tensorflow.python.training.input;
@:pythonImport("tensorflow.python.training.input") extern class Input_Module {
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
	static public function _as_tensor_list_list(tensors_list:Dynamic):Dynamic;
	/**
		Helper function for `batch` and `maybe_batch`.
	**/
	static public function _batch(tensors:Dynamic, batch_size:Dynamic, keep_input:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Helper function for `batch_join` and `maybe_batch_join`.
	**/
	static public function _batch_join(tensors_list:Dynamic, batch_size:Dynamic, keep_input:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function _dtypes(tensor_list_list:Dynamic):Dynamic;
	/**
		Enqueue `tensor_list` in `queue`.
	**/
	static public function _enqueue(queue:Dynamic, tensor_list:Dynamic, threads:Dynamic, enqueue_many:Dynamic, keep_input:Dynamic):Dynamic;
	/**
		Enqueue `tensor_list_list` in `queue`.
	**/
	static public function _enqueue_join(queue:Dynamic, tensor_list_list:Dynamic, enqueue_many:Dynamic, keep_input:Dynamic):Dynamic;
	static public function _flatten(tensor_list_list:Dynamic):Dynamic;
	static public function _merge_shapes(shape_list:Dynamic, enqueue_many:Dynamic):Dynamic;
	/**
		Read `SparseTensors` from a `SparseTensorsMap` and concatenate them.
		
		The input `sparse_handles` must be a string matrix of shape `[N, 1]` where
		`N` is the minibatch size and the rows correspond to packed outputs of
		`add_sparse_to_tensors_map`.  The ranks of the original `SparseTensor` objects
		must all match.  When the final `SparseTensor` is created, it has rank one
		higher than the ranks of the incoming `SparseTensor` objects (they have been
		concatenated along a new row dimension).
		
		The output `SparseTensor` object's shape values for all dimensions but the
		first are the max across the input `SparseTensor` objects' shape values
		for the corresponding dimensions.  Its first shape value is `N`, the minibatch
		size.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `sparse.reorder` to restore index ordering.
		
		For example, if the serialized input is a `[2, 3]` matrix representing two
		original `SparseTensor` objects:
		
		    index = [ 0]
		            [10]
		            [20]
		    values = [1, 2, 3]
		    shape = [50]
		
		and
		
		    index = [ 2]
		            [10]
		    values = [4, 5]
		    shape = [30]
		
		then the final deserialized `SparseTensor` will be:
		
		    index = [0  0]
		            [0 10]
		            [0 20]
		            [1  2]
		            [1 10]
		    values = [1, 2, 3, 4, 5]
		    shape = [2 50]
		
		Args:
		  sparse_map_op: The `Operation` that created the original handles.
		    Usually this is, e.g., `add_sparse_to_tensors_map(...).op`.
		  sparse_handles: 2-D `Tensor` of type `string` of shape `[N, 1]`.
		    The serialized and packed `SparseTensor` objects.
		  rank: (optional) Python int, the rank of the `SparseTensor` objects.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` representing the deserialized `SparseTensor`s,
		  concatenated along the `SparseTensor`s' first dimension.
		
		  All of the serialized `SparseTensor`s must have had the same rank and type.
	**/
	static public function _restore_sparse(sparse_map_op:Dynamic, sparse_handles:Dynamic, ?rank:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Restore SparseTensors after dequeue in batch, batch_join, etc.
	**/
	static public function _restore_sparse_tensors(stored_list:Dynamic, sparse_info_list:Dynamic):Dynamic;
	/**
		Select which examples to enqueue based on vector `keep_input`.
	**/
	static public function _select_which_to_enqueue(tensor_list:Dynamic, keep_input:Dynamic):Dynamic;
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
		Helper function for `shuffle_batch` and `maybe_shuffle_batch`.
	**/
	static public function _shuffle_batch(tensors:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, keep_input:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Helper function for `shuffle_batch_join` and `maybe_shuffle_batch_join`.
	**/
	static public function _shuffle_batch_join(tensors_list:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, keep_input:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add a minibatch `SparseTensor` to a `SparseTensorsMap`, return `N` handles.
		
		The `SparseTensor` must have rank `R` greater than 1, and the first dimension
		is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The serialized
		`SparseTensor` objects going into each row of the output `Tensor` will have
		rank `R-1`.
		
		The minibatch size `N` is extracted from `sparse_shape[0]`.
		
		Args:
		  sp_input: The input rank `R` `SparseTensor`.
		  container: The container for the underlying `SparseTensorsMap` (optional).
		  shared_name: The shared name for the underlying `SparseTensorsMap`
		    (optional, defaults to the name of the newly created op).
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A string matrix (2-D `Tensor`) with `N` rows and `1` column.
		  Each row represents a unique handle to a `SparseTensor` stored by
		  the `SparseTensorMap` underlying this op.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function _store_many_sparse(sp_input:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add a `SparseTensor` to a `SparseTensorsMap` and return its handle.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  container: The container for the underlying `SparseTensorsMap` (optional).
		  shared_name: The shared name for the underlying `SparseTensorsMap`
		    (optional, defaults to the name of the newly created op).
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A string 1-vector (1D `Tensor`), with the single element representing the
		  a unique handle to a `SparseTensor` stored by the `SparseTensorMap`
		  underlying this op.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function _store_sparse(sp_input:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Store SparseTensors for feeding into batch_join, etc.
	**/
	static public function _store_sparse_tensors_join(tensor_list_list:Dynamic, enqueue_many:Dynamic, keep_input:Dynamic):Dynamic;
	static public function _validate(tensor_list:Dynamic):Dynamic;
	static public function _validate_join(tensor_list_list:Dynamic):Dynamic;
	/**
		Validate `keep_input` argument to conditional batching functions.
	**/
	static public function _validate_keep_input(keep_input:Dynamic, enqueue_many:Dynamic):Dynamic;
	static public function _which_queue(dynamic_pad:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates batches of tensors in `tensors`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.batch(batch_size)` (or `padded_batch(...)` if `dynamic_pad=True`).
		
		The argument `tensors` can be a list or a dictionary of tensors.
		The value returned by the function will be of the same type
		as `tensors`.
		
		This function is implemented using a queue. A `QueueRunner` for the
		queue is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		If `enqueue_many` is `False`, `tensors` is assumed to represent a single
		example.  An input tensor with shape `[x, y, z]` will be output as a tensor
		with shape `[batch_size, x, y, z]`.
		
		If `enqueue_many` is `True`, `tensors` is assumed to represent a batch of
		examples, where the first dimension is indexed by example, and all members of
		`tensors` should have the same size in the first dimension.  If an input
		tensor has shape `[*, x, y, z]`, the output will have shape `[batch_size, x,
		y, z]`.  The `capacity` argument controls the how long the prefetching is
		allowed to grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
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
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`shape` property will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  batch_size: The new batch size pulled from the queue.
		  num_threads: The number of threads enqueuing `tensors`.  The batching will
		    be nondeterministic if `num_threads > 1`.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensors` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same types as `tensors` (except if
		  the input is a list of one element, then it returns a tensor, not a list).
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function batch(tensors:Dynamic, batch_size:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Runs a list of tensors to fill a queue to create batches of examples. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.interleave(...).batch(batch_size)` (or `padded_batch(...)` if `dynamic_pad=True`).
		
		The `tensors_list` argument is a list of tuples of tensors, or a list of
		dictionaries of tensors.  Each element in the list is treated similarly
		to the `tensors` argument of `tf.train.batch()`.
		
		WARNING: This function is nondeterministic, since it starts a separate thread
		for each tensor.
		
		Enqueues a different list of tensors in different threads.
		Implemented using a queue -- a `QueueRunner` for the queue
		is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		`len(tensors_list)` threads will be started,
		with thread `i` enqueuing the tensors from
		`tensors_list[i]`. `tensors_list[i1][j]` must match
		`tensors_list[i2][j]` in type and shape, except in the first
		dimension if `enqueue_many` is true.
		
		If `enqueue_many` is `False`, each `tensors_list[i]` is assumed
		to represent a single example. An input tensor `x` will be output as a
		tensor with shape `[batch_size] + x.shape`.
		
		If `enqueue_many` is `True`, `tensors_list[i]` is assumed to
		represent a batch of examples, where the first dimension is indexed
		by example, and all members of `tensors_list[i]` should have the
		same size in the first dimension.  The slices of any input tensor
		`x` are treated as examples, and the output tensors will have shape
		`[batch_size] + x.shape[1:]`.
		
		The `capacity` argument controls the how long the prefetching is allowed to
		grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		*N.B.:* If `dynamic_pad` is `False`, you must ensure that either
		(i) the `shapes` argument is passed, or (ii) all of the tensors in
		`tensors_list` must have fully-defined shapes. `ValueError` will be
		raised if neither of these conditions holds.
		
		If `dynamic_pad` is `True`, it is sufficient that the *rank* of the
		tensors is known, but individual dimensions may have value `None`.
		In this case, for each enqueue the dimensions with value `None`
		may have a variable length; upon dequeue, the output tensors will be padded
		on the right to the maximum shape of the tensors in the current minibatch.
		For numbers, this padding takes value 0.  For strings, this padding is
		the empty string.  See `PaddingFIFOQueue` for more info.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`shape` property will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list_list[i]`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensor_list_list`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function batch_join(tensors_list:Dynamic, batch_size:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Output the rows of `input_tensor` to a queue for an input pipeline. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.from_tensor_slices(input_tensor).shuffle(tf.shape(input_tensor, out_type=tf.int64)[0]).repeat(num_epochs)`. If `shuffle=False`, omit the `.shuffle(...)`.
		
		Note: if `num_epochs` is not `None`, this function creates local counter
		`epochs`. Use `local_variables_initializer()` to initialize local variables.
		
		Args:
		  input_tensor: A tensor with the rows to produce. Must be at least
		    one-dimensional. Must either have a fully-defined shape, or
		    `element_shape` must be defined.
		  element_shape: (Optional.) A `TensorShape` representing the shape of a
		    row of `input_tensor`, if it cannot be inferred.
		  num_epochs: (Optional.) An integer. If specified `input_producer` produces
		    each row of `input_tensor` `num_epochs` times before generating an
		    `OutOfRange` error. If not specified, `input_producer` can cycle through
		    the rows of `input_tensor` an unlimited number of times.
		  shuffle: (Optional.) A boolean. If true, the rows are randomly shuffled
		    within each epoch.
		  seed: (Optional.) An integer. The seed to use if `shuffle` is true.
		  capacity: (Optional.) The capacity of the queue to be used for buffering
		    the input.
		  shared_name: (Optional.) If set, this queue will be shared under the given
		    name across multiple sessions.
		  summary_name: (Optional.) If set, a scalar summary for the current queue
		    size will be generated, using this name as part of the tag.
		  name: (Optional.) A name for queue.
		  cancel_op: (Optional.) Cancel op for the queue
		
		Returns:
		  A queue with the output rows.  A `QueueRunner` for the queue is
		  added to the current `QUEUE_RUNNER` collection of the current
		  graph.
		
		Raises:
		  ValueError: If the shape of the input cannot be inferred from the arguments.
		  RuntimeError: If called with eager execution enabled.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function input_producer(input_tensor:Dynamic, ?element_shape:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?summary_name:Dynamic, ?name:Dynamic, ?cancel_op:Dynamic):Dynamic;
	/**
		Returns tensor `num_epochs` times and then raises an `OutOfRange` error. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.from_tensors(tensor).repeat(num_epochs)`.
		
		Note: creates local counter `epochs`. Use `local_variables_initializer()` to
		initialize local variables.
		
		Args:
		  tensor: Any `Tensor`.
		  num_epochs: A positive integer (optional).  If specified, limits the number
		    of steps the output tensor may be evaluated.
		  name: A name for the operations (optional).
		
		Returns:
		  tensor or `OutOfRange`.
		
		Raises:
		  ValueError: if `num_epochs` is invalid.
	**/
	static public function limit_epochs(tensor:Dynamic, ?num_epochs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Save the list of files matching pattern, so it is only computed once.
		
		NOTE: The order of the files returned can be non-deterministic.
		
		Args:
		  pattern: A file pattern (glob), or 1D tensor of file patterns.
		  name: A name for the operations (optional).
		
		Returns:
		  A variable that is initialized to the list of files matching the pattern(s).
	**/
	static public function match_filenames_once(pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Conditionally creates batches of tensors based on `keep_input`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.filter(...).batch(batch_size)` (or `padded_batch(...)` if `dynamic_pad=True`).
		
		See docstring in `batch` for more details.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresponding value in `keep_input` is `True`. This tensor essentially
		    acts as a filtering mechanism.
		  batch_size: The new batch size pulled from the queue.
		  num_threads: The number of threads enqueuing `tensors`.  The batching will
		    be nondeterministic if `num_threads > 1`.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensors` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same types as `tensors`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
	**/
	static public function maybe_batch(tensors:Dynamic, keep_input:Dynamic, batch_size:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Runs a list of tensors to conditionally fill a queue to create batches. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.interleave(...).filter(...).batch(batch_size)` (or `padded_batch(...)` if `dynamic_pad=True`).
		
		See docstring in `batch_join` for more details.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresponding value in `keep_input` is `True`. This tensor essentially
		    acts as a filtering mechanism.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list_list[i]`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensor_list_list`.
	**/
	static public function maybe_batch_join(tensors_list:Dynamic, keep_input:Dynamic, batch_size:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates batches by randomly shuffling conditionally-enqueued tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.filter(...).shuffle(min_after_dequeue).batch(batch_size)`.
		
		See docstring in `shuffle_batch` for more details.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  batch_size: The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresponding value in `keep_input` is `True`. This tensor essentially
		    acts as a filtering mechanism.
		  num_threads: The number of threads enqueuing `tensor_list`.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the types as `tensors`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function maybe_shuffle_batch(tensors:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, keep_input:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create batches by randomly shuffling conditionally-enqueued tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.interleave(...).filter(...).shuffle(min_after_dequeue).batch(batch_size)`.
		
		See docstring in `shuffle_batch_join` for more details.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresponding value in `keep_input` is `True`. This tensor essentially
		    acts as a filtering mechanism.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors_list[i]`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors_list`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function maybe_shuffle_batch_join(tensors_list:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, keep_input:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Produces the integers from 0 to limit-1 in a queue. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.range(limit).shuffle(limit).repeat(num_epochs)`. If `shuffle=False`, omit the `.shuffle(...)`.
		
		Note: if `num_epochs` is not `None`, this function creates local counter
		`epochs`. Use `local_variables_initializer()` to initialize local variables.
		
		Args:
		  limit: An int32 scalar tensor.
		  num_epochs: An integer (optional). If specified, `range_input_producer`
		    produces each integer `num_epochs` times before generating an
		    OutOfRange error. If not specified, `range_input_producer` can cycle
		    through the integers an unlimited number of times.
		  shuffle: Boolean. If true, the integers are randomly shuffled within each
		    epoch.
		  seed: An integer (optional). Seed used if shuffle == True.
		  capacity: An integer. Sets the queue capacity.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: A name for the operations (optional).
		
		Returns:
		  A Queue with the output integers.  A `QueueRunner` for the Queue
		  is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function range_input_producer(limit:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates batches by randomly shuffling tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.shuffle(min_after_dequeue).batch(batch_size)`.
		
		This function adds the following to the current `Graph`:
		
		* A shuffling queue into which tensors from `tensors` are enqueued.
		* A `dequeue_many` operation to create batches from the queue.
		* A `QueueRunner` to `QUEUE_RUNNER` collection, to enqueue the tensors
		  from `tensors`.
		
		If `enqueue_many` is `False`, `tensors` is assumed to represent a
		single example.  An input tensor with shape `[x, y, z]` will be output
		as a tensor with shape `[batch_size, x, y, z]`.
		
		If `enqueue_many` is `True`, `tensors` is assumed to represent a
		batch of examples, where the first dimension is indexed by example,
		and all members of `tensors` should have the same size in the
		first dimension.  If an input tensor has shape `[*, x, y, z]`, the
		output will have shape `[batch_size, x, y, z]`.
		
		The `capacity` argument controls the how long the prefetching is allowed to
		grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		For example:
		
		```python
		# Creates batches of 32 images and 32 labels.
		image_batch, label_batch = tf.train.shuffle_batch(
		      [single_image, single_label],
		      batch_size=32,
		      num_threads=4,
		      capacity=50000,
		      min_after_dequeue=10000)
		```
		
		*N.B.:* You must ensure that either (i) the `shapes` argument is
		passed, or (ii) all of the tensors in `tensors` must have
		fully-defined shapes. `ValueError` will be raised if neither of
		these conditions holds.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`shape` property will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  batch_size: The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  num_threads: The number of threads enqueuing `tensor_list`.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the types as `tensors`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function shuffle_batch(tensors:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create batches by randomly shuffling tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.interleave(...).shuffle(min_after_dequeue).batch(batch_size)`.
		
		The `tensors_list` argument is a list of tuples of tensors, or a list of
		dictionaries of tensors.  Each element in the list is treated similarly
		to the `tensors` argument of `tf.train.shuffle_batch()`.
		
		This version enqueues a different list of tensors in different threads.
		It adds the following to the current `Graph`:
		
		* A shuffling queue into which tensors from `tensors_list` are enqueued.
		* A `dequeue_many` operation to create batches from the queue.
		* A `QueueRunner` to `QUEUE_RUNNER` collection, to enqueue the tensors
		  from `tensors_list`.
		
		`len(tensors_list)` threads will be started, with thread `i` enqueuing
		the tensors from `tensors_list[i]`. `tensors_list[i1][j]` must match
		`tensors_list[i2][j]` in type and shape, except in the first dimension if
		`enqueue_many` is true.
		
		If `enqueue_many` is `False`, each `tensors_list[i]` is assumed
		to represent a single example.  An input tensor with shape `[x, y, z]`
		will be output as a tensor with shape `[batch_size, x, y, z]`.
		
		If `enqueue_many` is `True`, `tensors_list[i]` is assumed to
		represent a batch of examples, where the first dimension is indexed
		by example, and all members of `tensors_list[i]` should have the
		same size in the first dimension.  If an input tensor has shape `[*, x,
		y, z]`, the output will have shape `[batch_size, x, y, z]`.
		
		The `capacity` argument controls the how long the prefetching is allowed to
		grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`shape` property will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors_list[i]`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors_list`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function shuffle_batch_join(tensors_list:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces a slice of each `Tensor` in `tensor_list`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.from_tensor_slices(tuple(tensor_list)).shuffle(tf.shape(input_tensor, out_type=tf.int64)[0]).repeat(num_epochs)`. If `shuffle=False`, omit the `.shuffle(...)`.
		
		Implemented using a Queue -- a `QueueRunner` for the Queue
		is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		Args:
		  tensor_list: A list of `Tensor` objects. Every `Tensor` in
		    `tensor_list` must have the same size in the first dimension.
		  num_epochs: An integer (optional). If specified, `slice_input_producer`
		    produces each slice `num_epochs` times before generating
		    an `OutOfRange` error. If not specified, `slice_input_producer` can cycle
		    through the slices an unlimited number of times.
		  shuffle: Boolean. If true, the integers are randomly shuffled within each
		    epoch.
		  seed: An integer (optional). Seed used if shuffle == True.
		  capacity: An integer. Sets the queue capacity.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: A name for the operations (optional).
		
		Returns:
		  A list of tensors, one for each element of `tensor_list`.  If the tensor
		  in `tensor_list` has shape `[N, a, b, .., z]`, then the corresponding output
		  tensor will have shape `[a, b, ..., z]`.
		
		Raises:
		  ValueError: if `slice_input_producer` produces nothing from `tensor_list`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function slice_input_producer(tensor_list:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Output strings (e.g. filenames) to a queue for an input pipeline. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.from_tensor_slices(string_tensor).shuffle(tf.shape(input_tensor, out_type=tf.int64)[0]).repeat(num_epochs)`. If `shuffle=False`, omit the `.shuffle(...)`.
		
		Note: if `num_epochs` is not `None`, this function creates local counter
		`epochs`. Use `local_variables_initializer()` to initialize local variables.
		
		Args:
		  string_tensor: A 1-D string tensor with the strings to produce.
		  num_epochs: An integer (optional). If specified, `string_input_producer`
		    produces each string from `string_tensor` `num_epochs` times before
		    generating an `OutOfRange` error. If not specified,
		    `string_input_producer` can cycle through the strings in `string_tensor`
		    an unlimited number of times.
		  shuffle: Boolean. If true, the strings are randomly shuffled within each
		    epoch.
		  seed: An integer (optional). Seed used if shuffle == True.
		  capacity: An integer. Sets the queue capacity.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions. All sessions open to the device which has
		    this queue will be able to access it via the shared_name. Using this in
		    a distributed setting means each name will only be seen by one of the
		    sessions which has access to this operation.
		  name: A name for the operations (optional).
		  cancel_op: Cancel op for the queue (optional).
		
		Returns:
		  A queue with the output strings.  A `QueueRunner` for the Queue
		  is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		Raises:
		  ValueError: If the string_tensor is a null Python list.  At runtime,
		  will fail with an assertion if string_tensor becomes a null tensor.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function string_input_producer(string_tensor:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?cancel_op:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}