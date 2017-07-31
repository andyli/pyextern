/* This file is generated, do not edit! */
package tensorflow.python.ops.data_flow_ops;
@:pythonImport("tensorflow.python.ops.data_flow_ops") extern class Data_flow_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _as_name_list(names:Dynamic, dtypes:Dynamic):Dynamic;
	/**
		Convert shapes to a list of tuples of int (or None).
	**/
	static public function _as_shape_list(shapes:Dynamic, dtypes:Dynamic, ?unknown_dim_allowed:Dynamic, ?unknown_rank_allowed:Dynamic):Dynamic;
	/**
		Convert dtypes to a list of types.
	**/
	static public function _as_type_list(dtypes:Dynamic):Dynamic;
	/**
		The greatest lower bound (ordered by specificity) TensorShape.
	**/
	static public function _shape_common(s1:Dynamic, s2:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Applies a gradient to a given accumulator.
		
		Does not add if local_step is lesser than the accumulator's global_step.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a accumulator.
		  local_step: A `Tensor` of type `int64`.
		    The local_step value at which the gradient was computed.
		  gradient: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    A tensor of the gradient to be accumulated.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function accumulator_apply_gradient(handle:Dynamic, local_step:Dynamic, gradient:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the number of gradients aggregated in the given accumulators.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to an accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		  The number of gradients aggregated in the given accumulator.
	**/
	static public function accumulator_num_accumulated(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Updates the accumulator with a new value for global_step.
		
		Logs warning if the accumulator's value is already higher than
		new_global_step.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to an accumulator.
		  new_global_step: A `Tensor` of type `int64`.
		    The new global_step value to set.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function accumulator_set_global_step(handle:Dynamic, new_global_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts the average gradient in the given ConditionalAccumulator.
		
		The op blocks until sufficient (i.e., more than num_required)
		gradients have been accumulated.  If the accumulator has already
		aggregated more than num_required gradients, it returns the average of
		the accumulated gradients.  Also automatically increments the recorded
		global_step in the accumulator by 1, and resets the aggregate to 0.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to an accumulator.
		  num_required: A `Tensor` of type `int32`.
		    Number of gradients required before we return an aggregate.
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.int16, tf.int8, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint32, tf.half`.
		    The data type of accumulated gradients. Needs to correspond to the type
		    of the accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. The average of the accumulated gradients.
	**/
	static public function accumulator_take_gradient(handle:Dynamic, num_required:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A conditional accumulator for aggregating gradients.
		
		The accumulator accepts gradients marked with local_step greater or
		equal to the most recent global_step known to the accumulator. The
		average can be extracted from the accumulator, provided sufficient
		gradients have been accumulated. Extracting the average automatically
		resets the aggregate to 0, and increments the global_step recorded by
		the accumulator.
		
		Args:
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.int16, tf.int8, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint32, tf.half`.
		    The type of the value being accumulated.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the values, can be [], in which case shape is unknown.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator will be shared under the
		    given name across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the accumulator.
	**/
	static public function conditional_accumulator(dtype:Dynamic, shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Partitions `data` into `num_partitions` tensors using indices from `partitions`.
		
		For each index tuple `js` of size `partitions.ndim`, the slice `data[js, ...]`
		becomes part of `outputs[partitions[js]]`.  The slices with `partitions[js] = i`
		are placed in `outputs[i]` in lexicographic order of `js`, and the first
		dimension of `outputs[i]` is the number of entries in `partitions` equal to `i`.
		In detail,
		
		```python
		    outputs[i].shape = [sum(partitions == i)] + data.shape[partitions.ndim:]
		
		    outputs[i] = pack([data[js, ...] for js if partitions[js] == i])
		```
		
		`data.shape` must start with `partitions.shape`.
		
		For example:
		
		```python
		    # Scalar partitions.
		    partitions = 1
		    num_partitions = 2
		    data = [10, 20]
		    outputs[0] = []  # Empty with shape [0, 2]
		    outputs[1] = [[10, 20]]
		
		    # Vector partitions.
		    partitions = [0, 0, 1, 1, 0]
		    num_partitions = 2
		    data = [10, 20, 30, 40, 50]
		    outputs[0] = [10, 20, 50]
		    outputs[1] = [30, 40]
		```
		
		See `dynamic_stitch` for an example on how to merge partitions back.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/DynamicPartition.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`.
		  partitions: A `Tensor` of type `int32`.
		    Any shape.  Indices in the range `[0, num_partitions)`.
		  num_partitions: An `int` that is `>= 1`.
		    The number of partitions to output.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_partitions` `Tensor` objects with the same type as `data`.
	**/
	static public function dynamic_partition(data:Dynamic, partitions:Dynamic, num_partitions:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Interleave the values from the `data` tensors into a single tensor.
		
		Builds a merged tensor such that
		
		```python
		    merged[indices[m][i, ..., j], ...] = data[m][i, ..., j, ...]
		```
		
		For example, if each `indices[m]` is scalar or vector, we have
		
		```python
		    # Scalar indices:
		    merged[indices[m], ...] = data[m][...]
		
		    # Vector indices:
		    merged[indices[m][i], ...] = data[m][i, ...]
		```
		
		Each `data[i].shape` must start with the corresponding `indices[i].shape`,
		and the rest of `data[i].shape` must be constant w.r.t. `i`.  That is, we
		must have `data[i].shape = indices[i].shape + constant`.  In terms of this
		`constant`, the output shape is
		
		    merged.shape = [max(indices)] + constant
		
		Values are merged in order, so if an index appears in both `indices[m][i]` and
		`indices[n][j]` for `(m,i) < (n,j)` the slice `data[n][j]` will appear in the
		merged result.
		
		For example:
		
		```python
		    indices[0] = 6
		    indices[1] = [4, 1]
		    indices[2] = [[5, 2], [0, 3]]
		    data[0] = [61, 62]
		    data[1] = [[41, 42], [11, 12]]
		    data[2] = [[[51, 52], [21, 22]], [[1, 2], [31, 32]]]
		    merged = [[1, 2], [11, 12], [21, 22], [31, 32], [41, 42],
		              [51, 52], [61, 62]]
		```
		
		This method can be used to merge partitions created by `dynamic_partition`
		as illustrated on the following example:
		
		```python
		    # Apply function (increments x_i) on elements for which a certain condition
		    # apply (x_i != -1 in this example).
		    x=tf.constant([0.1, -1., 5.2, 4.3, -1., 7.4])
		    condition_mask=tf.not_equal(x,tf.constant(-1.))
		    partitioned_data = tf.dynamic_partition(
		        x, tf.cast(condition_mask, tf.int32) , 2)
		    partitioned_data[1] = partitioned_data[1] + 1.0
		    condition_indices = tf.dynamic_partition(
		        tf.range(tf.shape(x)[0]), tf.cast(condition_mask, tf.int32) , 2)
		    x = tf.dynamic_stitch(condition_indices, partitioned_data)
		    # Here x=[1.1, -1., 6.2, 5.3, -1, 8.4], the -1. values remain
		    # unchanged.
		```
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/DynamicStitch.png" alt>
		</div>
		
		Args:
		  indices: A list of at least 1 `Tensor` objects with type `int32`.
		  data: A list with the same length as `indices` of `Tensor` objects with the same type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function dynamic_stitch(indices:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Emits randomized records.
		
		Args:
		  file_pattern: A `string`. Glob pattern for the data files.
		  file_random_seed: An optional `int`. Defaults to `301`.
		    Random seeds used to produce randomized records.
		  file_shuffle_shift_ratio: An optional `float`. Defaults to `0`.
		    Shifts the list of files after the list is randomly
		    shuffled.
		  file_buffer_size: An optional `int`. Defaults to `10000`.
		    The randomization shuffling buffer.
		  file_parallelism: An optional `int`. Defaults to `16`.
		    How many sstables are opened and concurrently iterated over.
		  batch_size: An optional `int`. Defaults to `32`. The batch size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. A tensor of shape [batch_size].
	**/
	static public function record_input(file_pattern:Dynamic, ?file_random_seed:Dynamic, ?file_shuffle_shift_ratio:Dynamic, ?file_buffer_size:Dynamic, ?file_parallelism:Dynamic, ?batch_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies a sparse gradient to a given accumulator.
		
		Does not add if local_step is smaller than the accumulator's
		global_step.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a accumulator.
		  local_step: A `Tensor` of type `int64`.
		    The local_step value at which the sparse gradient was computed.
		  gradient_indices: A `Tensor` of type `int64`.
		    Indices of the sparse gradient to be accumulated. Must be a
		    vector.
		  gradient_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Values are the non-zero slices of the gradient, and must have
		    the same first dimension as indices, i.e., the nnz represented by indices and
		    values must be consistent.
		  gradient_shape: A `Tensor` of type `int64`.
		    Shape of the sparse gradient to be accumulated.
		  has_known_shape: A `bool`.
		    Boolean indicating whether gradient_shape is unknown, in which
		    case the input is ignored during validation.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function sparse_accumulator_apply_gradient(handle:Dynamic, local_step:Dynamic, gradient_indices:Dynamic, gradient_values:Dynamic, gradient_shape:Dynamic, has_known_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts the average sparse gradient in a SparseConditionalAccumulator.
		
		The op will blocks until sufficient (i.e., more than num_required)
		gradients have been accumulated. If the accumulator has already
		aggregated more than num_required gradients, it will return its
		average of the accumulated gradients.  Also automatically increments
		the recorded global_step in the accumulator by 1, and resets the
		aggregate to 0.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		    The handle to a SparseConditionalAccumulator.
		  num_required: A `Tensor` of type `int32`.
		    Number of gradients required before we return an aggregate.
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.int16, tf.int8, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint32, tf.half`.
		    The data type of accumulated gradients. Needs to correspond to the type
		    of the accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (indices, values, shape).
		
		  indices: A `Tensor` of type `int64`. Indices of the average of the accumulated sparse gradients.
		  values: A `Tensor` of type `dtype`. Values of the average of the accumulated sparse gradients.
		  shape: A `Tensor` of type `int64`. Shape of the average of the accumulated sparse gradients.
	**/
	static public function sparse_accumulator_take_gradient(handle:Dynamic, num_required:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A conditional accumulator for aggregating sparse gradients.
		
		The accumulator accepts gradients marked with local_step greater or
		equal to the most recent global_step known to the accumulator. The
		average can be extracted from the accumulator, provided sufficient
		gradients have been accumulated. Extracting the average automatically
		resets the aggregate to 0, and increments the global_step recorded by
		the accumulator.
		
		Args:
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.int16, tf.int8, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint32, tf.half`.
		    The type of the value being accumulated.
		  shape: A `tf.TensorShape` or list of `ints`. The shape of the values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the accumulator.
	**/
	static public function sparse_conditional_accumulator(dtype:Dynamic, shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stage values similar to a lightweight Enqueue.
		
		The basic functionality of this Op is similar to a queue with many
		fewer capabilities and options.  This Op is optimized for performance.
		
		Args:
		  values: A list of `Tensor` objects. a list of tensors
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container. Otherwise,
		    a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    It is necessary to match this name to the matching Unstage Op.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stage(values:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Op is similar to a lightweight Dequeue.
		
		The basic funtionality is similar to dequeue with many fewer
		capabilities and options.  This Op is optimized for performance.
		
		Args:
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function unstage(dtypes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
}