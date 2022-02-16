/* This file is generated, do not edit! */
package tensorflow.ragged;
@:pythonImport("tensorflow.ragged") extern class Ragged_Module {
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
		Applies a boolean mask to `data` without flattening the mask dimensions.
		
		Returns a potentially ragged tensor that is formed by retaining the elements
		in `data` where the corresponding value in `mask` is `True`.
		
		* `output[a1...aA, i, b1...bB] = data[a1...aA, j, b1...bB]`
		
		   Where `j` is the `i`th `True` entry of `mask[a1...aA]`.
		
		Note that `output` preserves the mask dimensions `a1...aA`; this differs
		from `tf.boolean_mask`, which flattens those dimensions.
		
		Args:
		  data: A potentially ragged tensor.
		  mask: A potentially ragged boolean tensor.  `mask`'s shape must be a prefix
		    of `data`'s shape.  `rank(mask)` must be known statically.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A potentially ragged tensor that is formed by retaining the elements in
		  `data` where the corresponding value in `mask` is `True`.
		
		  * `rank(output) = rank(data)`.
		  * `output.ragged_rank = max(data.ragged_rank, rank(mask) - 1)`.
		
		Raises:
		  ValueError: if `rank(mask)` is not known statically; or if `mask.shape` is
		    not a prefix of `data.shape`.
		
		#### Examples:
		
		>>> # Aliases for True & False so data and mask line up.
		>>> T, F = (True, False)
		
		>>> tf.ragged.boolean_mask(  # Mask a 2D Tensor.
		...     data=[[1, 2, 3], [4, 5, 6], [7, 8, 9]],
		...     mask=[[T, F, T], [F, F, F], [T, F, F]]).to_list()
		[[1, 3], [], [7]]
		
		>>> tf.ragged.boolean_mask(  # Mask a 2D RaggedTensor.
		...     tf.ragged.constant([[1, 2, 3], [4], [5, 6]]),
		...     tf.ragged.constant([[F, F, T], [F], [T, T]])).to_list()
		[[3], [], [5, 6]]
		
		>>> tf.ragged.boolean_mask(  # Mask rows of a 2D RaggedTensor.
		...     tf.ragged.constant([[1, 2, 3], [4], [5, 6]]),
		...     tf.ragged.constant([True, False, True])).to_list()
		[[1, 2, 3], [5, 6]]
	**/
	static public function boolean_mask(data:Dynamic, mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a constant RaggedTensor from a nested Python list.
		
		Example:
		
		>>> tf.ragged.constant([[1, 2], [3], [4, 5, 6]])
		<tf.RaggedTensor [[1, 2], [3], [4, 5, 6]]>
		
		All scalar values in `pylist` must have the same nesting depth `K`, and the
		returned `RaggedTensor` will have rank `K`.  If `pylist` contains no scalar
		values, then `K` is one greater than the maximum depth of empty lists in
		`pylist`.  All scalar values in `pylist` must be compatible with `dtype`.
		
		Args:
		  pylist: A nested `list`, `tuple` or `np.ndarray`.  Any nested element that
		    is not a `list`, `tuple` or `np.ndarray` must be a scalar value
		    compatible with `dtype`.
		  dtype: The type of elements for the returned `RaggedTensor`.  If not
		    specified, then a default is chosen based on the scalar values in
		    `pylist`.
		  ragged_rank: An integer specifying the ragged rank of the returned
		    `RaggedTensor`.  Must be nonnegative and less than `K`. Defaults to
		    `max(0, K - 1)` if `inner_shape` is not specified.  Defaults to
		    `max(0, K - 1 - len(inner_shape))` if `inner_shape` is specified.
		  inner_shape: A tuple of integers specifying the shape for individual inner
		    values in the returned `RaggedTensor`.  Defaults to `()` if `ragged_rank`
		    is not specified.  If `ragged_rank` is specified, then a default is chosen
		    based on the contents of `pylist`.
		  name: A name prefix for the returned tensor (optional).
		  row_splits_dtype: data type for the constructed `RaggedTensor`'s row_splits.
		    One of `tf.int32` or `tf.int64`.
		
		Returns:
		  A potentially ragged tensor with rank `K` and the specified `ragged_rank`,
		  containing the values from `pylist`.
		
		Raises:
		  ValueError: If the scalar values in `pylist` have inconsistent nesting
		    depth; or if ragged_rank or inner_shape are incompatible with `pylist`.
	**/
	static public function constant(pylist:Dynamic, ?dtype:Dynamic, ?ragged_rank:Dynamic, ?inner_shape:Dynamic, ?name:Dynamic, ?row_splits_dtype:Dynamic):Dynamic;
	/**
		Generates feature cross from a list of tensors.
		
		The input tensors must have `rank=2`, and must all have the same number of
		rows.  The result is a `RaggedTensor` with the same number of rows as the
		inputs, where `result[row]` contains a list of all combinations of values
		formed by taking a single value from each input's corresponding row
		(`inputs[i][row]`).  Values are combined by joining their strings with '_X_'.
		E.g.:
		
		>>> tf.ragged.cross([tf.ragged.constant([['a'], ['b', 'c']]),
		...                  tf.ragged.constant([['d'], ['e']]),
		...                  tf.ragged.constant([['f'], ['g']])])
		<tf.RaggedTensor [[b'a_X_d_X_f'], [b'b_X_e_X_g', b'c_X_e_X_g']]>
		
		Args:
		  inputs: A list of `RaggedTensor` or `Tensor` or `SparseTensor`.
		  name: Optional name for the op.
		
		Returns:
		  A 2D `RaggedTensor` of type `string`.
	**/
	static public function cross(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates hashed feature cross from a list of tensors.
		
		The input tensors must have `rank=2`, and must all have the same number of
		rows.  The result is a `RaggedTensor` with the same number of rows as the
		inputs, where `result[row]` contains a list of all combinations of values
		formed by taking a single value from each input's corresponding row
		(`inputs[i][row]`).  Values are combined by hashing together their
		fingerprints. E.g.:
		
		>>> tf.ragged.cross_hashed([tf.ragged.constant([['a'], ['b', 'c']]),
		...                         tf.ragged.constant([['d'], ['e']]),
		...                         tf.ragged.constant([['f'], ['g']])],
		...                        num_buckets=100)
		<tf.RaggedTensor [[78], [66, 74]]>
		
		Args:
		  inputs: A list of `RaggedTensor` or `Tensor` or `SparseTensor`.
		  num_buckets: A non-negative `int` that used to bucket the hashed values. If
		    `num_buckets != 0`, then `output = hashed_value % num_buckets`.
		  hash_key: Integer hash_key that will be used by the `FingerprintCat64`
		    function. If not given, a default key is used.
		  name: Optional name for the op.
		
		Returns:
		  A 2D `RaggedTensor` of type `int64`.
	**/
	static public function cross_hashed(inputs:Dynamic, ?num_buckets:Dynamic, ?hash_key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies `op` to the `flat_values` of one or more RaggedTensors.
		
		Replaces any `RaggedTensor` in `args` or `kwargs` with its `flat_values`
		tensor (which collapses all ragged dimensions), and then calls `op`.  Returns
		a `RaggedTensor` that is constructed from the input `RaggedTensor`s'
		`nested_row_splits` and the value returned by the `op`.
		
		If the input arguments contain multiple `RaggedTensor`s, then they must have
		identical `nested_row_splits`.
		
		This operation is generally used to apply elementwise operations to each value
		in a `RaggedTensor`.
		
		Warning: `tf.ragged.map_flat_values` does *not* apply `op` to each row of a
		ragged tensor.  This difference is important for non-elementwise operations,
		such as `tf.reduce_sum`.  If you wish to apply a non-elementwise operation to
		each row of a ragged tensor, use `tf.map_fn` instead.  (You may need to
		specify an `output_signature` when using `tf.map_fn` with ragged tensors.)
		
		Examples:
		
		>>> rt = tf.ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> tf.ragged.map_flat_values(tf.ones_like, rt)
		<tf.RaggedTensor [[1, 1, 1], [], [1, 1], [1]]>
		>>> tf.ragged.map_flat_values(tf.multiply, rt, rt)
		<tf.RaggedTensor [[1, 4, 9], [], [16, 25], [36]]>
		>>> tf.ragged.map_flat_values(tf.add, rt, 5)
		<tf.RaggedTensor [[6, 7, 8], [], [9, 10], [11]]>
		
		Example with a non-elementwise operation (note that `map_flat_values` and
		`map_fn` return different results):
		
		>>> rt = tf.ragged.constant([[1.0, 3.0], [], [3.0, 6.0, 3.0]])
		>>> def normalized(x):
		...   return x / tf.reduce_sum(x)
		>>> tf.ragged.map_flat_values(normalized, rt)
		<tf.RaggedTensor [[0.0625, 0.1875], [], [0.1875, 0.375, 0.1875]]>
		>>> tf.map_fn(normalized, rt)
		<tf.RaggedTensor [[0.25, 0.75], [], [0.25, 0.5, 0.25]]>
		
		Args:
		  op: The operation that should be applied to the RaggedTensor `flat_values`.
		    `op` is typically an element-wise operation (such as math_ops.add), but
		    any operation that preserves the size of the outermost dimension can be
		    used.  I.e., `shape[0]` of the value returned by `op` must match
		    `shape[0]` of the `RaggedTensor`s' `flat_values` tensors.
		  *args: Arguments for `op`.
		  **kwargs: Keyword arguments for `op`.
		
		Returns:
		  A `RaggedTensor` whose `ragged_rank` matches the `ragged_rank` of all
		  input `RaggedTensor`s.
		Raises:
		  ValueError: If args contains no `RaggedTensors`, or if the `nested_splits`
		    of the input `RaggedTensor`s are not identical.
	**/
	static public function map_flat_values(op:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a `RaggedTensor` containing the specified sequences of numbers.
		
		Each row of the returned `RaggedTensor` contains a single sequence:
		
		```python
		ragged.range(starts, limits, deltas)[i] ==
		    tf.range(starts[i], limits[i], deltas[i])
		```
		
		If `start[i] < limits[i] and deltas[i] > 0`, then `output[i]` will be an
		empty list.  Similarly, if `start[i] > limits[i] and deltas[i] < 0`, then
		`output[i]` will be an empty list.  This behavior is consistent with the
		Python `range` function, but differs from the `tf.range` op, which returns
		an error for these cases.
		
		Examples:
		
		>>> tf.ragged.range([3, 5, 2]).to_list()
		[[0, 1, 2], [0, 1, 2, 3, 4], [0, 1]]
		>>> tf.ragged.range([0, 5, 8], [3, 3, 12]).to_list()
		[[0, 1, 2], [], [8, 9, 10, 11]]
		>>> tf.ragged.range([0, 5, 8], [3, 3, 12], 2).to_list()
		[[0, 2], [], [8, 10]]
		
		The input tensors `starts`, `limits`, and `deltas` may be scalars or vectors.
		The vector inputs must all have the same size.  Scalar inputs are broadcast
		to match the size of the vector inputs.
		
		Args:
		  starts: Vector or scalar `Tensor`.  Specifies the first entry for each range
		    if `limits` is not `None`; otherwise, specifies the range limits, and the
		    first entries default to `0`.
		  limits: Vector or scalar `Tensor`.  Specifies the exclusive upper limits for
		    each range.
		  deltas: Vector or scalar `Tensor`.  Specifies the increment for each range.
		    Defaults to `1`.
		  dtype: The type of the elements of the resulting tensor.  If not specified,
		    then a value is chosen based on the other args.
		  name: A name for the operation.
		  row_splits_dtype: `dtype` for the returned `RaggedTensor`'s `row_splits`
		    tensor.  One of `tf.int32` or `tf.int64`.
		
		Returns:
		  A `RaggedTensor` of type `dtype` with `ragged_rank=1`.
	**/
	static public function range(starts:Dynamic, ?limits:Dynamic, ?deltas:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?row_splits_dtype:Dynamic):Dynamic;
	/**
		Generates the segmentation corresponding to a RaggedTensor `row_splits`.
		
		Returns an integer vector `segment_ids`, where `segment_ids[i] == j` if
		`splits[j] <= i < splits[j+1]`.  Example:
		
		>>> print(tf.ragged.row_splits_to_segment_ids([0, 3, 3, 5, 6, 9]))
		 tf.Tensor([0 0 0 2 2 3 4 4 4], shape=(9,), dtype=int64)
		
		Args:
		  splits: A sorted 1-D integer Tensor.  `splits[0]` must be zero.
		  name: A name prefix for the returned tensor (optional).
		  out_type: The dtype for the return value.  Defaults to `splits.dtype`,
		    or `tf.int64` if `splits` does not have a dtype.
		
		Returns:
		  A sorted 1-D integer Tensor, with `shape=[splits[-1]]`
		
		Raises:
		  ValueError: If `splits` is invalid.
	**/
	static public function row_splits_to_segment_ids(splits:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		Generates the RaggedTensor `row_splits` corresponding to a segmentation.
		
		Returns an integer vector `splits`, where `splits[0] = 0` and
		`splits[i] = splits[i-1] + count(segment_ids==i)`.  Example:
		
		>>> print(tf.ragged.segment_ids_to_row_splits([0, 0, 0, 2, 2, 3, 4, 4, 4]))
		tf.Tensor([0 3 3 5 6 9], shape=(6,), dtype=int64)
		
		Args:
		  segment_ids: A 1-D integer Tensor.
		  num_segments: A scalar integer indicating the number of segments.  Defaults
		    to `max(segment_ids) + 1` (or zero if `segment_ids` is empty).
		  out_type: The dtype for the return value.  Defaults to `segment_ids.dtype`,
		    or `tf.int64` if `segment_ids` does not have a dtype.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A sorted 1-D integer Tensor, with `shape=[num_segments + 1]`.
	**/
	static public function segment_ids_to_row_splits(segment_ids:Dynamic, ?num_segments:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stacks a list of rank-`R` tensors into one rank-`(R+1)` `RaggedTensor`.
		
		Given a list of tensors or ragged tensors with the same rank `R`
		(`R >= axis`), returns a rank-`R+1` `RaggedTensor` `result` such that
		`result[i0...iaxis]` is `[value[i0...iaxis] for value in values]`.
		
		#### Examples:
		
		>>> # Stacking two ragged tensors.
		>>> t1 = tf.ragged.constant([[1, 2], [3, 4, 5]])
		>>> t2 = tf.ragged.constant([[6], [7, 8, 9]])
		>>> tf.ragged.stack([t1, t2], axis=0)
		<tf.RaggedTensor [[[1, 2], [3, 4, 5]], [[6], [7, 8, 9]]]>
		>>> tf.ragged.stack([t1, t2], axis=1)
		<tf.RaggedTensor [[[1, 2], [6]], [[3, 4, 5], [7, 8, 9]]]>
		
		>>> # Stacking two dense tensors with different sizes.
		>>> t3 = tf.constant([[1, 2, 3], [4, 5, 6]])
		>>> t4 = tf.constant([[5], [6], [7]])
		>>> tf.ragged.stack([t3, t4], axis=0)
		<tf.RaggedTensor [[[1, 2, 3], [4, 5, 6]], [[5], [6], [7]]]>
		
		Args:
		  values: A list of `tf.Tensor` or `tf.RaggedTensor`.  May not be empty. All
		    `values` must have the same rank and the same dtype; but unlike
		    `tf.stack`, they can have arbitrary dimension sizes.
		  axis: A python integer, indicating the dimension along which to stack.
		    (Note: Unlike `tf.stack`, the `axis` parameter must be statically known.)
		    Negative values are supported only if the rank of at least one
		    `values` value is statically known.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A `RaggedTensor` with rank `R+1` (if `R>0`).
		  If `R==0`, then the result will be returned as a 1D `Tensor`, since
		  `RaggedTensor` can only be used when `rank>1`.
		  `result.ragged_rank=1+max(axis, max(rt.ragged_rank for rt in values]))`.
		
		Raises:
		  ValueError: If `values` is empty, if `axis` is out of bounds or if
		    the input tensors have different ranks.
	**/
	static public function stack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stacks dynamic partitions of a Tensor or RaggedTensor.
		
		Returns a RaggedTensor `output` with `num_partitions` rows, where the row
		`output[i]` is formed by stacking all slices `data[j1...jN]` such that
		`partitions[j1...jN] = i`.  Slices of `data` are stacked in row-major
		order.
		
		If `num_partitions` is an `int` (not a `Tensor`), then this is equivalent to
		`tf.ragged.stack(tf.dynamic_partition(data, partitions, num_partitions))`.
		
		#### Example:
		
		>>> data           = ['a', 'b', 'c', 'd', 'e']
		>>> partitions     = [  3,   0,   2,   2,   3]
		>>> num_partitions = 5
		>>> tf.ragged.stack_dynamic_partitions(data, partitions, num_partitions)
		<tf.RaggedTensor [[b'b'], [], [b'c', b'd'], [b'a', b'e'], []]>
		
		Args:
		  data: A `Tensor` or `RaggedTensor` containing the values to stack.
		  partitions: An `int32` or `int64` `Tensor` or `RaggedTensor` specifying the
		    partition that each slice of `data` should be added to. `partitions.shape`
		    must be a prefix of `data.shape`.  Values must be greater than or equal to
		    zero, and less than `num_partitions`. `partitions` is not required to be
		    sorted.
		  num_partitions: An `int32` or `int64` scalar specifying the number of
		    partitions to output.  This determines the number of rows in `output`.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A `RaggedTensor` containing the stacked partitions.  The returned tensor
		  has the same dtype as `data`, and its shape is
		  `[num_partitions, (D)] + data.shape[partitions.rank:]`, where `(D)` is a
		  ragged dimension whose length is the number of data slices stacked for
		  each `partition`.
	**/
	static public function stack_dynamic_partitions(data:Dynamic, partitions:Dynamic, num_partitions:Dynamic, ?name:Dynamic):Dynamic;
}