/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_math_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_math_ops") extern class Ragged_math_ops_Module {
	static public var _RAGGED_REDUCE_ALL_EXAMPLE : Dynamic;
	static public var _RAGGED_REDUCE_ANY_EXAMPLE : Dynamic;
	static public var _RAGGED_REDUCE_DOCSTRING : Dynamic;
	static public var _RAGGED_REDUCE_MAX_EXAMPLE : Dynamic;
	static public var _RAGGED_REDUCE_MEAN_EXAMPLE : Dynamic;
	static public var _RAGGED_REDUCE_MIN_EXAMPLE : Dynamic;
	static public var _RAGGED_REDUCE_PROD_EXAMPLE : Dynamic;
	static public var _RAGGED_REDUCE_STD_EXAMPLE : Dynamic;
	static public var _RAGGED_REDUCE_SUM_EXAMPLE : Dynamic;
	static public var _RAGGED_REDUCE_VARIANCE_EXAMPLE : Dynamic;
	static public var _RAGGED_SEGMENT_DOCSTRING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _cast(input_tensor:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Infers a matching dtype for tensors, and casts them to that dtype.
	**/
	static public function _infer_matching_dtype(tensors:Dynamic, dtype_hierarchy:Dynamic):Dynamic;
	/**
		Multiplies potentially ragged 2D tensors.
		
		Args:
		  a: A 2D Tensor or RaggedTensor with `shape=[I, J]`
		  b: A 2D Tensor or RaggedTensor with `shape=[J, K]`
		  **kwargs: Additional arguments for `tf.matmul` (e.g. transpose_a).
		
		Returns:
		  A 2D Tensor with `shape=[I, K]`.
	**/
	static public function _matmul_2d(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Multiply batches of 2D matrices where only `a.shape[1]` is ragged.
		
		Args:
		  a: A RaggedTensor with `shape=[B, (I), J]`.  (ragged_rank must be 1.)
		  b: A Tensor with `shape=[B, J, K]`
		  **kwargs: Additional arguments for `tf.matmul` (e.g. transpose_a).
		    transpose_a and adjoint_a must not be true.
		
		Returns:
		  A RaggedTensor with `shape=[B, (I), K].
	**/
	static public function _matmul_3d_with_batch_dim_folding(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Multiplies batches of 2D matrices using map_fn.
		
		`output[n, i, k]` = sum_j (a[n, i, j] * b[n, j, k])` (for all `n`, `i`, `k`).
		
		Requires that `a[n, i].nrows()` == `b[n].nrows()` (for all `n` and `i`).
		
		Args:
		  a: A 3D Tensor or RaggedTensor with `shape=[B, I, J]`, where dimensions `I`
		    and `J` may be ragged.
		  b: A 3D Tensor or RaggedTensor with `shape=[B, J, K]`, where dimensions `J`
		    and `K` may be ragged.
		  **kwargs: Additional arguments for `tf.matmul` (e.g. transpose_a).
		
		Returns:
		  A 3D RaggedTensor with `shape=[B, (I), (K)]`.
	**/
	static public function _matmul_3d_with_map_fn(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Aggregates along segments of a RaggedTensor using `unsorted_segment_op`.
		
		Returns a RaggedTensor `output` with `num_segments` rows, where the row
		`output[i]` is formed by combining all rows of `data` whose corresponding
		`segment_id` is `i`.  The values in each row are combined using
		`unsorted_segment_op`.
		
		The length of the row `output[i]` will be the maximum of the lengths of
		all rows of `data` whose corresponding `segment_id` is `i`.  If no `data`
		rows correspond to a given segment ID, then the output row for that segment
		ID will be empty.
		
		Args:
		  unsorted_segment_op: The tensorflow `op` that should be used to combine
		    values in each row.  Must have the same signature and basic behavior as
		    `unsorted_segment_sum`, `unsorted_segment_max`, etc.
		  data: A `RaggedTensor` containing the values to be combined.
		  segment_ids: A `Tensor` or `RaggedTensor`.  Must have type `int64` or
		    `int32`.  `segment_ids.shape` must be a prefix of `data.shape`.
		    `segment_ids` is not required to be sorted.
		  num_segments: An `int32` or `int64` scalar.
		  separator: An optional string. Defaults to None. The separator to use when
		    joining. Only used for string types.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A `RaggedTensor` containing the aggregated values.  The returned tensor
		  has the same dtype as `data`, and its shape is
		  `[num_segments] + data.shape[segment_ids.rank:]`.
		Raises:
		  ValueError: If segment_ids.shape is not a prefix of data.shape.
	**/
	static public function _ragged_segment_aggregate(unsorted_segment_op:Dynamic, data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	static public function _set_ragged_reduce_docstring(func:Dynamic, combination:Dynamic, combined:Dynamic, _default:Dynamic, example:Dynamic):Dynamic;
	static public function _set_ragged_segment_docstring(func:Dynamic, combination:Dynamic, combined:Dynamic):Dynamic;
	static public function _use_legacy_mode_for_tensor_equality(self:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		RaggedTensor implementation for tf.math.add_n.
	**/
	static public function add_n(inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Ragged dispatch target for tf.nn.dropout.
	**/
	static public function dropout_v1(x:Dynamic, ?keep_prob:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?rate:Dynamic):Dynamic;
	/**
		Ragged dispatch target for tf.nn.dropout.
	**/
	static public function dropout_v2(x:Dynamic, rate:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies matrix `a` by matrix `b`.
		
		If all transpose or adjoint attributes are `False` then:
		
		```
		output[..., i, j] = sum_k (a[..., i, k] * b[..., k, j]), for all indices i, j.
		```
		
		The inputs `a` and `b` must have `rank >= 2`, where the outermost `rank - 2`
		dimensions are batch dimensions.  The inputs must have the same dtype.  See
		`tf.matmul` for more information.
		
		Args:
		  a: `tf.Tensor` or `RaggedTensor` with `rank > 1`.
		  b: `tf.Tensor` or `RaggedTensor` with same type and rank as `a`.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  transpose_b: If `True`, `b` is transposed before multiplication.
		  adjoint_a: If `True`, `a` is conjugated & transposed before multiplication.
		  adjoint_b: If `True`, `b` is conjugated & transposed before multiplication.
		  a_is_sparse: If `True`, optimize assuming `a` is mostly zero.
		  b_is_sparse: If `True`, optimize assuming `b` is mostly zero.
		  output_type: The output datatype (optional).
		  name: Name for the operation (optional).
		
		Returns:
		  A `Tensor` or `RaggedTensor` with the same rank and shape as `a`, where
		  each inner-most matrix is the product of the corresponding matrices in `a`
		  and `b`.
	**/
	static public function matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Aggregates across axes of a RaggedTensor using the given `Tensor` ops.
		
		Reduces `rt_input` along the dimensions given in `axis`.  The rank of the
		tensor is reduced by 1 for each entry in `axis`.  If `axis` is not specified,
		then all dimensions are reduced, and a scalar value is returned.
		
		This op assumes that `reduce_op` and `unsorted_segment_op` are associative;
		if not, then reducing multiple axes will return incorrect results.  (In
		particular, reducing multiple axes is currently implemented by reducing the
		axes one at a time.)
		
		Args:
		  reduce_op: The tensorflow `op` that should be used to reduce values in
		    uniform dimensions.  Must have the same signature and basic behavior as
		    `reduce_sum`, `reduce_max`, etc.
		  unsorted_segment_op: The tensorflow `op` that should be used to combine
		    values in ragged dimensions.  Must have the same signature and basic
		    behavior as `unsorted_segment_sum`, `unsorted_segment_max`, etc.
		  rt_input: A `Tensor` or `RaggedTensor` containing the values to be reduced.
		  axis: The axis or axes to reduce.  May be `None` (to reduce all axes), an
		    `int` (to reduce a single axis), a `list` or `tuple` of `int` (to reduce a
		    given set of axes), or a `Tensor` with a constant value.  Must be in the
		    range `[0, rt_input.rank)`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  separator: An optional string. Defaults to None. The separator to use when
		    joining. The separator must not be set for non-string data types. (i.e. if
		    separator is not None then it uses string ops)
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A `RaggedTensor` containing the reduced values.  The returned tensor
		  has the same dtype as `data`, and its shape is given by removing the
		  dimensions specified in `axis` from `rt_input.shape`.  The `ragged_rank`
		  of the returned tensor is given by substracting any ragged dimensions
		  specified in `axis` from `rt_input.ragged_rank`.
		Raises:
		  ValueError: If `axis` contains a `Tensor` whose value is not constant.
	**/
	static public function ragged_reduce_aggregate(reduce_op:Dynamic, unsorted_segment_op:Dynamic, rt_input:Dynamic, axis:Dynamic, keepdims:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes the logical and of elements across dimensions of a `RaggedTensor`.
		
		Reduces `input_tensor` along the dimensions given in `axis` by taking the
		logical and of values.  If a reduced dimension has no elements for
		some index, then the value for that index will be True.
		
		The rank of the tensor is reduced by `1` for each entry in `axis`.  If
		`axis` is not specified, then all dimensions are reduced, and a scalar
		value is returned.
		Args:
		  input_tensor: A `RaggedTensor` containing the values to be and-ed.
		  axis: The dimensions to reduce.  May be `None` (to reduce all axes), an
		    `int` (to reduce a single axis), a `list` or `tuple` of `int` (to reduce
		    a given set of axes), or a `Tensor` with a constant value.  Must be in
		    the range `[0, input_tensor.rank]`.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the and-ed values.  The returned tensor
		  has the same dtype as `data`, and its shape is given by removing the
		  dimensions specified in `axis` from `input_tensor.shape`.  The `ragged_rank`
		  of the returned tensor is given by substracting any ragged dimensions
		  specified in `axis` from `input_tensor.ragged_rank`.
		Raises:
		  ValueError: If `axis` contains a `Tensor` whose value is not constant.
		####Example:
		  
		  >>> rt = tf.ragged.constant([[True, True], [True, True, False, True], [False, True]])
		  >>> tf.reduce_all(rt, axis=0).numpy()
		  array([False,  True, False,  True])
		  >>> tf.reduce_all(rt, axis=1).numpy()
		  array([ True, False, False])
	**/
	static public function reduce_all(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the logical or of elements across dimensions of a `RaggedTensor`.
		
		Reduces `input_tensor` along the dimensions given in `axis` by taking the
		logical or of values.  If a reduced dimension has no elements for
		some index, then the value for that index will be False.
		
		The rank of the tensor is reduced by `1` for each entry in `axis`.  If
		`axis` is not specified, then all dimensions are reduced, and a scalar
		value is returned.
		Args:
		  input_tensor: A `RaggedTensor` containing the values to be or-ed.
		  axis: The dimensions to reduce.  May be `None` (to reduce all axes), an
		    `int` (to reduce a single axis), a `list` or `tuple` of `int` (to reduce
		    a given set of axes), or a `Tensor` with a constant value.  Must be in
		    the range `[0, input_tensor.rank]`.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the or-ed values.  The returned tensor
		  has the same dtype as `data`, and its shape is given by removing the
		  dimensions specified in `axis` from `input_tensor.shape`.  The `ragged_rank`
		  of the returned tensor is given by substracting any ragged dimensions
		  specified in `axis` from `input_tensor.ragged_rank`.
		Raises:
		  ValueError: If `axis` contains a `Tensor` whose value is not constant.
		####Example:
		  
		  >>> rt = tf.ragged.constant([[True, True], [True, True, False, True], [False, True]])
		  >>> tf.reduce_any(rt, axis=0).numpy()
		  array([ True,  True, False,  True])
		  >>> tf.reduce_any(rt, axis=1).numpy()
		  array([ True,  True,  True])
	**/
	static public function reduce_any(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the maximum of elements across dimensions of a `RaggedTensor`.
		
		Reduces `input_tensor` along the dimensions given in `axis` by taking the
		maximum of values.  If a reduced dimension has no elements for
		some index, then the value for that index will be `input_tensor.dtype.max`.
		
		The rank of the tensor is reduced by `1` for each entry in `axis`.  If
		`axis` is not specified, then all dimensions are reduced, and a scalar
		value is returned.
		Args:
		  input_tensor: A `RaggedTensor` containing the values to be maximized.
		  axis: The dimensions to reduce.  May be `None` (to reduce all axes), an
		    `int` (to reduce a single axis), a `list` or `tuple` of `int` (to reduce
		    a given set of axes), or a `Tensor` with a constant value.  Must be in
		    the range `[0, input_tensor.rank]`.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the maximized values.  The returned tensor
		  has the same dtype as `data`, and its shape is given by removing the
		  dimensions specified in `axis` from `input_tensor.shape`.  The `ragged_rank`
		  of the returned tensor is given by substracting any ragged dimensions
		  specified in `axis` from `input_tensor.ragged_rank`.
		Raises:
		  ValueError: If `axis` contains a `Tensor` whose value is not constant.
		####Example:
		  
		  >>> rt = tf.ragged.constant([[3, 1, 4], [1, 5], [9], [2, 6]])
		  >>> tf.reduce_max(rt, axis=0).numpy()
		  array([9, 6, 4], dtype=int32)
		  >>> tf.reduce_max(rt, axis=1).numpy()
		  array([4, 5, 9, 6], dtype=int32)
	**/
	static public function reduce_max(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean of elements across dimensions of a `RaggedTensor`.
		
		Reduces `input_tensor` along the dimensions given in `axis` by taking the
		mean of values.  If a reduced dimension has no elements for
		some index, then the value for that index will be NaN.
		
		The rank of the tensor is reduced by `1` for each entry in `axis`.  If
		`axis` is not specified, then all dimensions are reduced, and a scalar
		value is returned.
		Args:
		  input_tensor: A `RaggedTensor` containing the values to be averaged.
		  axis: The dimensions to reduce.  May be `None` (to reduce all axes), an
		    `int` (to reduce a single axis), a `list` or `tuple` of `int` (to reduce
		    a given set of axes), or a `Tensor` with a constant value.  Must be in
		    the range `[0, input_tensor.rank]`.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the averaged values.  The returned tensor
		  has the same dtype as `data`, and its shape is given by removing the
		  dimensions specified in `axis` from `input_tensor.shape`.  The `ragged_rank`
		  of the returned tensor is given by substracting any ragged dimensions
		  specified in `axis` from `input_tensor.ragged_rank`.
		Raises:
		  ValueError: If `axis` contains a `Tensor` whose value is not constant.
		####Example:
		  
		  >>> rt = tf.ragged.constant([[3, 1, 4], [1, 5], [9], [2, 6]])
		  >>> tf.reduce_mean(rt, axis=0).numpy()
		  array([3.75, 4.  , 4. ])
		  >>> tf.reduce_mean(rt, axis=1).numpy()
		  array([2.66666667, 3.  , 9.  , 4.  ])
	**/
	static public function reduce_mean(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the minimum of elements across dimensions of a `RaggedTensor`.
		
		Reduces `input_tensor` along the dimensions given in `axis` by taking the
		minimum of values.  If a reduced dimension has no elements for
		some index, then the value for that index will be `input_tensor.dtype.min`.
		
		The rank of the tensor is reduced by `1` for each entry in `axis`.  If
		`axis` is not specified, then all dimensions are reduced, and a scalar
		value is returned.
		Args:
		  input_tensor: A `RaggedTensor` containing the values to be minimized.
		  axis: The dimensions to reduce.  May be `None` (to reduce all axes), an
		    `int` (to reduce a single axis), a `list` or `tuple` of `int` (to reduce
		    a given set of axes), or a `Tensor` with a constant value.  Must be in
		    the range `[0, input_tensor.rank]`.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the minimized values.  The returned tensor
		  has the same dtype as `data`, and its shape is given by removing the
		  dimensions specified in `axis` from `input_tensor.shape`.  The `ragged_rank`
		  of the returned tensor is given by substracting any ragged dimensions
		  specified in `axis` from `input_tensor.ragged_rank`.
		Raises:
		  ValueError: If `axis` contains a `Tensor` whose value is not constant.
		####Example:
		  
		  >>> rt = tf.ragged.constant([[3, 1, 4], [1, 5], [9], [2, 6]])
		  >>> tf.reduce_min(rt, axis=0).numpy()
		  array([1, 1, 4], dtype=int32)
		  >>> tf.reduce_min(rt, axis=1).numpy()
		  array([1, 1, 9, 2], dtype=int32)
	**/
	static public function reduce_min(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the product of elements across dimensions of a `RaggedTensor`.
		
		Reduces `input_tensor` along the dimensions given in `axis` by taking the
		product of values.  If a reduced dimension has no elements for
		some index, then the value for that index will be 1.
		
		The rank of the tensor is reduced by `1` for each entry in `axis`.  If
		`axis` is not specified, then all dimensions are reduced, and a scalar
		value is returned.
		Args:
		  input_tensor: A `RaggedTensor` containing the values to be multiplied.
		  axis: The dimensions to reduce.  May be `None` (to reduce all axes), an
		    `int` (to reduce a single axis), a `list` or `tuple` of `int` (to reduce
		    a given set of axes), or a `Tensor` with a constant value.  Must be in
		    the range `[0, input_tensor.rank]`.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the multiplied values.  The returned tensor
		  has the same dtype as `data`, and its shape is given by removing the
		  dimensions specified in `axis` from `input_tensor.shape`.  The `ragged_rank`
		  of the returned tensor is given by substracting any ragged dimensions
		  specified in `axis` from `input_tensor.ragged_rank`.
		Raises:
		  ValueError: If `axis` contains a `Tensor` whose value is not constant.
		####Example:
		  
		  >>> rt = tf.ragged.constant([[3, 1, 4], [1, 5], [9], [2, 6]])
		  >>> tf.reduce_prod(rt, axis=0).numpy()  # = [3*1*9*2, 1*5*6, 4]
		  array([54, 30, 4], dtype=int32)
		  >>> tf.reduce_prod(rt, axis=1).numpy()  # = [3*1*4, 1*5, 9, 2*6]
		  array([12, 5, 9, 12], dtype=int32)
	**/
	static public function reduce_prod(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the std of elements across dimensions of a `RaggedTensor`.
		
		Reduces `input_tensor` along the dimensions given in `axis` by taking the
		std of values.  If a reduced dimension has no elements for
		some index, then the value for that index will be NaN.
		
		The rank of the tensor is reduced by `1` for each entry in `axis`.  If
		`axis` is not specified, then all dimensions are reduced, and a scalar
		value is returned.
		Args:
		  input_tensor: A `RaggedTensor` containing the values to be averaged.
		  axis: The dimensions to reduce.  May be `None` (to reduce all axes), an
		    `int` (to reduce a single axis), a `list` or `tuple` of `int` (to reduce
		    a given set of axes), or a `Tensor` with a constant value.  Must be in
		    the range `[0, input_tensor.rank]`.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the averaged values.  The returned tensor
		  has the same dtype as `data`, and its shape is given by removing the
		  dimensions specified in `axis` from `input_tensor.shape`.  The `ragged_rank`
		  of the returned tensor is given by substracting any ragged dimensions
		  specified in `axis` from `input_tensor.ragged_rank`.
		Raises:
		  ValueError: If `axis` contains a `Tensor` whose value is not constant.
		####Example:
		  
		  >>> rt = tf.ragged.constant([[1, 0], [2, 1], [3], [4, 1]],
		  ...                         dtype=tf.float64)
		  >>> tf.math.reduce_std(rt, axis=0).numpy()
		  array([1.11803399, 0.47140452])
		  >>> tf.math.reduce_std(rt, axis=1).numpy()
		  array([0.5, 0.5, 0., 1.5])
	**/
	static public function reduce_std(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a `RaggedTensor`.
		
		Reduces `input_tensor` along the dimensions given in `axis` by taking the
		sum of values.  If a reduced dimension has no elements for
		some index, then the value for that index will be 0.
		
		The rank of the tensor is reduced by `1` for each entry in `axis`.  If
		`axis` is not specified, then all dimensions are reduced, and a scalar
		value is returned.
		Args:
		  input_tensor: A `RaggedTensor` containing the values to be summed.
		  axis: The dimensions to reduce.  May be `None` (to reduce all axes), an
		    `int` (to reduce a single axis), a `list` or `tuple` of `int` (to reduce
		    a given set of axes), or a `Tensor` with a constant value.  Must be in
		    the range `[0, input_tensor.rank]`.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the summed values.  The returned tensor
		  has the same dtype as `data`, and its shape is given by removing the
		  dimensions specified in `axis` from `input_tensor.shape`.  The `ragged_rank`
		  of the returned tensor is given by substracting any ragged dimensions
		  specified in `axis` from `input_tensor.ragged_rank`.
		Raises:
		  ValueError: If `axis` contains a `Tensor` whose value is not constant.
		####Example:
		  
		  >>> rt = tf.ragged.constant([[3, 1, 4], [1, 5], [9], [2, 6]])
		  >>> tf.reduce_sum(rt, axis=0).numpy()  # = [3+1+9+2, 1+5+6, 4]
		  array([15, 12, 4], dtype=int32)
		  >>> tf.reduce_sum(rt, axis=1).numpy()  # = [3+1+4, 1+5, 9, 2+6]
		  array([8, 6, 9, 8], dtype=int32)
	**/
	static public function reduce_sum(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the variance of elements across dimensions of a `RaggedTensor`.
		
		Reduces `input_tensor` along the dimensions given in `axis` by taking the
		variance of values.  If a reduced dimension has no elements for
		some index, then the value for that index will be NaN.
		
		The rank of the tensor is reduced by `1` for each entry in `axis`.  If
		`axis` is not specified, then all dimensions are reduced, and a scalar
		value is returned.
		Args:
		  input_tensor: A `RaggedTensor` containing the values to be averaged.
		  axis: The dimensions to reduce.  May be `None` (to reduce all axes), an
		    `int` (to reduce a single axis), a `list` or `tuple` of `int` (to reduce
		    a given set of axes), or a `Tensor` with a constant value.  Must be in
		    the range `[0, input_tensor.rank]`.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the averaged values.  The returned tensor
		  has the same dtype as `data`, and its shape is given by removing the
		  dimensions specified in `axis` from `input_tensor.shape`.  The `ragged_rank`
		  of the returned tensor is given by substracting any ragged dimensions
		  specified in `axis` from `input_tensor.ragged_rank`.
		Raises:
		  ValueError: If `axis` contains a `Tensor` whose value is not constant.
		####Example:
		  
		  >>> rt = tf.ragged.constant([[1, 1, 4], [2, 1], [3], [4, 1]],
		  ...                         dtype=tf.float64)
		  >>> tf.math.reduce_variance(rt, axis=0).numpy()
		  array([1.25, 0., 0.])
		  >>> tf.math.reduce_variance(rt, axis=1).numpy()
		  array([2., 0.25, 0., 2.25])
	**/
	static public function reduce_variance(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the maximum along segments of a RaggedTensor.
		
		Returns a RaggedTensor `output` with `num_segments` rows, where the row
		`output[i]` is formed by taking the maximum of all rows of `data`
		whose corresponding `segment_id` is `i`.
		
		The length of the row `output[i]` will be the maximum of the lengths of
		all rows of `data` whose corresponding `segment_id` is `i`.  If no `data`
		rows correspond to a given segment ID, then the output row for that segment
		ID will be empty.
		
		Args:
		  data: A `RaggedTensor` containing the values to combine.
		  segment_ids: A `Tensor` or `RaggedTensor`.  Must have type `int64` or
		    `int32`.  `segment_ids.shape` must be a prefix of `data.shape`.
		    Must be greater than or equal to zero, and less than `num_segments`.
		    `segment_ids` is not required to be sorted.
		  num_segments: An `int32` or `int64` scalar specifying the number of
		    distinct segment ids.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the maximized values.  The returned tensor
		  has the same dtype as `data`, and its shape is
		  `[num_segments] + data.shape[segment_ids.rank:]`.
		Raises:
		  ValueError: If `segment_ids.shape` is not a prefix of `data.shape`.
	**/
	static public function segment_max(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean along segments of a RaggedTensor.
		
		Returns a RaggedTensor `output` with `num_segments` rows, where the row
		`output[i]` is formed by taking the mean of all rows of `data`
		whose corresponding `segment_id` is `i`.
		
		The length of the row `output[i]` will be the maximum of the lengths of
		all rows of `data` whose corresponding `segment_id` is `i`.  If no `data`
		rows correspond to a given segment ID, then the output row for that segment
		ID will be empty.
		
		Args:
		  data: A `RaggedTensor` containing the values to combine.
		  segment_ids: A `Tensor` or `RaggedTensor`.  Must have type `int64` or
		    `int32`.  `segment_ids.shape` must be a prefix of `data.shape`.
		    Must be greater than or equal to zero, and less than `num_segments`.
		    `segment_ids` is not required to be sorted.
		  num_segments: An `int32` or `int64` scalar specifying the number of
		    distinct segment ids.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the averaged values.  The returned tensor
		  has the same dtype as `data`, and its shape is
		  `[num_segments] + data.shape[segment_ids.rank:]`.
		Raises:
		  ValueError: If `segment_ids.shape` is not a prefix of `data.shape`.
	**/
	static public function segment_mean(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the minimum along segments of a RaggedTensor.
		
		Returns a RaggedTensor `output` with `num_segments` rows, where the row
		`output[i]` is formed by taking the minimum of all rows of `data`
		whose corresponding `segment_id` is `i`.
		
		The length of the row `output[i]` will be the maximum of the lengths of
		all rows of `data` whose corresponding `segment_id` is `i`.  If no `data`
		rows correspond to a given segment ID, then the output row for that segment
		ID will be empty.
		
		Args:
		  data: A `RaggedTensor` containing the values to combine.
		  segment_ids: A `Tensor` or `RaggedTensor`.  Must have type `int64` or
		    `int32`.  `segment_ids.shape` must be a prefix of `data.shape`.
		    Must be greater than or equal to zero, and less than `num_segments`.
		    `segment_ids` is not required to be sorted.
		  num_segments: An `int32` or `int64` scalar specifying the number of
		    distinct segment ids.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the minimized values.  The returned tensor
		  has the same dtype as `data`, and its shape is
		  `[num_segments] + data.shape[segment_ids.rank:]`.
		Raises:
		  ValueError: If `segment_ids.shape` is not a prefix of `data.shape`.
	**/
	static public function segment_min(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the product along segments of a RaggedTensor.
		
		Returns a RaggedTensor `output` with `num_segments` rows, where the row
		`output[i]` is formed by taking the product of all rows of `data`
		whose corresponding `segment_id` is `i`.
		
		The length of the row `output[i]` will be the maximum of the lengths of
		all rows of `data` whose corresponding `segment_id` is `i`.  If no `data`
		rows correspond to a given segment ID, then the output row for that segment
		ID will be empty.
		
		Args:
		  data: A `RaggedTensor` containing the values to combine.
		  segment_ids: A `Tensor` or `RaggedTensor`.  Must have type `int64` or
		    `int32`.  `segment_ids.shape` must be a prefix of `data.shape`.
		    Must be greater than or equal to zero, and less than `num_segments`.
		    `segment_ids` is not required to be sorted.
		  num_segments: An `int32` or `int64` scalar specifying the number of
		    distinct segment ids.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the multiplied values.  The returned tensor
		  has the same dtype as `data`, and its shape is
		  `[num_segments] + data.shape[segment_ids.rank:]`.
		Raises:
		  ValueError: If `segment_ids.shape` is not a prefix of `data.shape`.
	**/
	static public function segment_prod(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum divided by sqrt(N) along segments of a RaggedTensor.
		
		Returns a RaggedTensor `output` with `num_segments` rows, where the row
		`output[i]` is formed by taking the sum divided by sqrt(N) of all rows of `data`
		whose corresponding `segment_id` is `i`.
		
		The length of the row `output[i]` will be the maximum of the lengths of
		all rows of `data` whose corresponding `segment_id` is `i`.  If no `data`
		rows correspond to a given segment ID, then the output row for that segment
		ID will be empty.
		
		Args:
		  data: A `RaggedTensor` containing the values to combine.
		  segment_ids: A `Tensor` or `RaggedTensor`.  Must have type `int64` or
		    `int32`.  `segment_ids.shape` must be a prefix of `data.shape`.
		    Must be greater than or equal to zero, and less than `num_segments`.
		    `segment_ids` is not required to be sorted.
		  num_segments: An `int32` or `int64` scalar specifying the number of
		    distinct segment ids.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the summed values.  The returned tensor
		  has the same dtype as `data`, and its shape is
		  `[num_segments] + data.shape[segment_ids.rank:]`.
		Raises:
		  ValueError: If `segment_ids.shape` is not a prefix of `data.shape`.
	**/
	static public function segment_sqrt_n(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a RaggedTensor.
		
		Returns a RaggedTensor `output` with `num_segments` rows, where the row
		`output[i]` is formed by taking the sum of all rows of `data`
		whose corresponding `segment_id` is `i`.
		
		The length of the row `output[i]` will be the maximum of the lengths of
		all rows of `data` whose corresponding `segment_id` is `i`.  If no `data`
		rows correspond to a given segment ID, then the output row for that segment
		ID will be empty.
		
		Args:
		  data: A `RaggedTensor` containing the values to combine.
		  segment_ids: A `Tensor` or `RaggedTensor`.  Must have type `int64` or
		    `int32`.  `segment_ids.shape` must be a prefix of `data.shape`.
		    Must be greater than or equal to zero, and less than `num_segments`.
		    `segment_ids` is not required to be sorted.
		  num_segments: An `int32` or `int64` scalar specifying the number of
		    distinct segment ids.
		  name: A name prefix for the returned tensor (optional).
		Returns:
		  A `RaggedTensor` containing the summed values.  The returned tensor
		  has the same dtype as `data`, and its shape is
		  `[num_segments] + data.shape[segment_ids.rank:]`.
		Raises:
		  ValueError: If `segment_ids.shape` is not a prefix of `data.shape`.
	**/
	static public function segment_sum(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax activations.
		
		Used for multi-class predictions. The sum of all outputs generated by softmax
		is 1.
		
		This function performs the equivalent of
		
		    softmax = tf.exp(logits) / tf.reduce_sum(tf.exp(logits), axis)
		
		Example usage:
		
		>>> softmax = tf.nn.softmax([-1, 0., 1.])
		>>> softmax
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([0.09003057, 0.24472848, 0.66524094], dtype=float32)>
		>>> sum(softmax)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type and shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Ragged version of the operation invoked by `Tensor.__eq__`.
	**/
	static public function tensor_equals(self:Dynamic, other:Dynamic):Dynamic;
	/**
		Ragged version of the operation invoked by `Tensor.__ne__`.
	**/
	static public function tensor_not_equals(self:Dynamic, other:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}