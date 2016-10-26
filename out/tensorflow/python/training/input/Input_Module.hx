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
		Deserialize SparseTensors after dequeue in batch, batch_join, etc.
	**/
	static public function _deserialize_sparse_tensors(serialized_list:Dynamic, sparse_info_list:Dynamic):Dynamic;
	static public function _dtypes(tensor_list_list:Dynamic):Dynamic;
	static public function _enqueue(queue:Dynamic, tensor_list:Dynamic, threads:Dynamic, enqueue_many:Dynamic):Dynamic;
	static public function _enqueue_join(queue:Dynamic, tensor_list_list:Dynamic, enqueue_many:Dynamic):Dynamic;
	static public function _flatten(tensor_list_list:Dynamic):Dynamic;
	static public function _merge_shapes(shape_list:Dynamic, enqueue_many:Dynamic):Dynamic;
	/**
		Serialize SparseTensors for feeding into batch, etc.
	**/
	static public function _serialize_sparse_tensors(tensor_list:Dynamic, enqueue_many:Dynamic):Dynamic;
	/**
		Serialize SparseTensors for feeding into batch_join, etc.
	**/
	static public function _serialize_sparse_tensors_join(tensor_list_list:Dynamic, enqueue_many:Dynamic):Dynamic;
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
	static public function _validate(tensor_list:Dynamic):Dynamic;
	static public function _validate_join(tensor_list_list:Dynamic):Dynamic;
	static public function _which_queue(dynamic_pad:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates batches of tensors in `tensors`.
		
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
		`tensor_list` should have the same size in the first dimension.  If an input
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
		`get_shape` method will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  batch_size: The new batch size pulled from the queue.
		  num_threads: The number of threads enqueuing `tensor_list`.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensor_list` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list`.
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
	static public function batch(tensors:Dynamic, batch_size:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Runs a list of tensors to fill a queue to create batches of examples.
		
		The `tensors_list` argument is a list of tuples of tensors, or a list of
		dictionaries of tensors.  Each element in the list is treated similarily
		to the `tensors` argument of `tf.train.batch()`.
		
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
		`get_shape` method will have a first `Dimension` value of `None`, and
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
	**/
	static public function batch_join(tensors_list:Dynamic, batch_size:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Output the rows of `input_tensor` to a queue for an input pipeline.
		
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
		    within each eopch.
		  seed: (Optional.) An integer. The seed to use if `shuffle` is true.
		  capacity: (Optional.) The capacity of the queue to be used for buffering
		    the input.
		  shared_name: (Optional.) If set, this queue will be shared under the given
		    name across multiple sessions.
		  summary_name: (Optional.) If set, a scalar summary for the current queue
		    size will be generated, using this name as part of the tag.
		  name: (Optional.) A name for queue.
		
		Returns:
		  A queue with the output rows.  A `QueueRunner` for the queue is
		  added to the current `QUEUE_RUNNER` collection of the current
		  graph.
		
		Raises:
		  ValueError: If the shape of the input cannot be inferred from the arguments.
	**/
	static public function input_producer(input_tensor:Dynamic, ?element_shape:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?summary_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns tensor `num_epochs` times and then raises an `OutOfRange` error.
		
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
		
		Args:
		  pattern: A file pattern (glob).
		  name: A name for the operations (optional).
		
		Returns:
		  A variable that is initialized to the list of files matching pattern.
	**/
	static public function match_filenames_once(pattern:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Produces the integers from 0 to limit-1 in a queue.
		
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
	**/
	static public function range_input_producer(limit:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates batches by randomly shuffling tensors.
		
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
		`get_shape` method will have a first `Dimension` value of `None`, and
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
	**/
	static public function shuffle_batch(tensors:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create batches by randomly shuffling tensors.
		
		The `tensors_list` argument is a list of tuples of tensors, or a list of
		dictionaries of tensors.  Each element in the list is treated similarily
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
		`get_shape` method will have a first `Dimension` value of `None`, and
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
	**/
	static public function shuffle_batch_join(tensors_list:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces a slice of each `Tensor` in `tensor_list`.
		
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
	**/
	static public function slice_input_producer(tensor_list:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Output strings (e.g. filenames) to a queue for an input pipeline.
		
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
		    name across multiple sessions.
		  name: A name for the operations (optional).
		
		Returns:
		  A queue with the output strings.  A `QueueRunner` for the Queue
		  is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		Raises:
		  ValueError: If the string_tensor is a null Python list.  At runtime,
		  will fail with an assertion if string_tensor becomes a null tensor.
	**/
	static public function string_input_producer(string_tensor:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
}