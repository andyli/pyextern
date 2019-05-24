/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.ragged;
@:pythonImport("tensorflow._api.v1.compat.v1.ragged") extern class Ragged_Module {
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
		Constructs a constant RaggedTensor from a nested Python list.
		
		Example:
		
		```python
		>>> ragged.constant([[1, 2], [3], [4, 5, 6]]).eval()
		RaggedTensorValue(values=[1, 2, 3, 4, 5, 6], splits=[0, 2, 3, 6])
		```
		
		All scalar values in `pylist` must have the same nesting depth `K`, and the
		returned `RaggedTensor` will have rank `K`.  If `pylist` contains no scalar
		values, then `K` is one greater than the maximum depth of empty lists in
		`pylist`.  All scalar values in `pylist` must be compatible with `dtype`.
		
		Args:
		  pylist: A nested `list` or `tuple`.  Any nested element that is not a `list`
		    or `tuple` must be a scalar value compatible with `dtype`.
		  dtype: The type of elements for the returned `RaggedTensor`.  If not
		    specified, then a default is chosen based on the scalar values in
		    `pylist`.
		  ragged_rank: An integer specifying the ragged rank of the returned
		    `RaggedTensor`.  Must be nonnegative and less than `K`. Defaults to
		    `max(0, K - 1)` if `inner_shape` is not specified.  Defaults to `max(0, K
		    - 1 - len(inner_shape))` if `inner_shape` is specified.
		  inner_shape: A tuple of integers specifying the shape for individual inner
		    values in the returned `RaggedTensor`.  Defaults to `()` if `ragged_rank`
		    is not specified.  If `ragged_rank` is specified, then a default is chosen
		    based on the contents of `pylist`.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A potentially ragged tensor with rank `K` and the specified `ragged_rank`,
		  containing the values from `pylist`.
		
		Raises:
		  ValueError: If the scalar values in `pylist` have inconsistent nesting
		    depth; or if ragged_rank or inner_shape are incompatible with `pylist`.
	**/
	static public function constant(pylist:Dynamic, ?dtype:Dynamic, ?ragged_rank:Dynamic, ?inner_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a RaggedTensorValue from a nested Python list.
		
		Warning: This function returns a `RaggedTensorValue`, not a `RaggedTensor`.
		If you wish to construct a constant `RaggedTensor`, use
		[`ragged.constant(...)`](constant.md) instead.
		
		Example:
		
		```python
		>>> ragged.constant_value([[1, 2], [3], [4, 5, 6]])
		RaggedTensorValue(values=[1, 2, 3, 4, 5, 6], splits=[0, 2, 3, 6])
		```
		
		All scalar values in `pylist` must have the same nesting depth `K`, and the
		returned `RaggedTensorValue` will have rank `K`.  If `pylist` contains no
		scalar values, then `K` is one greater than the maximum depth of empty lists
		in `pylist`.  All scalar values in `pylist` must be compatible with `dtype`.
		
		Args:
		  pylist: A nested `list` or `tuple`.  Any nested element that is not a `list`
		    or `tuple` must be a scalar value compatible with `dtype`.
		  dtype: `numpy.dtype`.  The type of elements for the returned `RaggedTensor`.
		    If not specified, then a default is chosen based on the scalar values in
		    `pylist`.
		  ragged_rank: An integer specifying the ragged rank of the returned
		    `RaggedTensorValue`.  Must be nonnegative and less than `K`. Defaults to
		    `max(0, K - 1)` if `inner_shape` is not specified.  Defaults to `max(0, K
		    - 1 - len(inner_shape))` if `inner_shape` is specified.
		  inner_shape: A tuple of integers specifying the shape for individual inner
		    values in the returned `RaggedTensorValue`.  Defaults to `()` if
		    `ragged_rank` is not specified.  If `ragged_rank` is specified, then a
		    default is chosen based on the contents of `pylist`.
		
		Returns:
		  A `RaggedTensorValue` or `numpy.array` with rank `K` and the specified
		  `ragged_rank`, containing the values from `pylist`.
		
		Raises:
		  ValueError: If the scalar values in `pylist` have inconsistent nesting
		    depth; or if ragged_rank or inner_shape are incompatible with `pylist`.
	**/
	static public function constant_value(pylist:Dynamic, ?dtype:Dynamic, ?ragged_rank:Dynamic, ?inner_shape:Dynamic):Dynamic;
	/**
		Applies `op` to the values of one or more RaggedTensors.
		
		Replaces any `RaggedTensor` in `args` or `kwargs` with its `flat_values`
		tensor, and then calls `op`.  Returns a `RaggedTensor` that is constructed
		from the input `RaggedTensor`s' `nested_row_splits` and the value returned by
		the `op`.
		
		If the input arguments contain multiple `RaggedTensor`s, then they must have
		identical `nested_row_splits`.
		
		Examples:
		
		```python
		>>> rt = ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> ragged.map_flat_values(tf.ones_like, rt).eval().tolist()
		[[1, 1, 1], [], [1, 1], [1]]
		>>> ragged.map_flat_values(tf.multiply, rt, rt).eval().tolist()
		[[1, 4, 9], [], [16, 25], [36]]
		>>> ragged.map_flat_values(tf.add, rt, 5).eval().tolist()
		[[6, 7, 8], [], [9, 10], [11]]
		```
		
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
		
		```python
		>>> ragged.range([3, 5, 2]).eval().tolist()
		[[0, 1, 2], [0, 1, 2, 3, 4], [0, 1]]
		>>> ragged.range([0, 5, 8], [3, 3, 12]).eval().tolist()
		[[0, 1, 2], [], [8, 9, 10, 11]]
		>>> ragged.range([0, 5, 8], [3, 3, 12], 2).eval().tolist()
		[[0, 2], [], [8, 10]]
		```
		
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
		
		Returns:
		  A `RaggedTensor` of type `dtype` with `ragged_rank=1`.
	**/
	static public function range(starts:Dynamic, ?limits:Dynamic, ?deltas:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates the segmentation corresponding to a RaggedTensor `row_splits`.
		
		Returns an integer vector `segment_ids`, where `segment_ids[i] == j` if
		`splits[j] <= i < splits[j+1]`.  Example:
		
		```python
		>>> ragged.row_splits_to_segment_ids([0, 3, 3, 5, 6, 9]).eval()
		[ 0 0 0 2 2 3 4 4 4 ]
		```
		
		Args:
		  splits: A sorted 1-D int64 Tensor.  `splits[0]` must be zero.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A sorted 1-D int64 Tensor, with `shape=[splits[-1]]`
		
		Raises:
		  ValueError: If `splits` is invalid.
	**/
	static public function row_splits_to_segment_ids(splits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates the RaggedTensor `row_splits` corresponding to a segmentation.
		
		Returns an integer vector `splits`, where `splits[0] = 0` and
		`splits[i] = splits[i-1] + count(segment_ids==i)`.  Example:
		
		```python
		>>> ragged.segment_ids_to_row_splits([0, 0, 0, 2, 2, 3, 4, 4, 4]).eval()
		[ 0 3 3 5 6 9 ]
		```
		
		Args:
		  segment_ids: A 1-D integer Tensor.
		  num_segments: A scalar integer indicating the number of segments.  Defaults
		    to `max(segment_ids) + 1` (or zero if `segment_ids` is empty).
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A sorted 1-D int64 Tensor, with `shape=[num_segments + 1]`.
	**/
	static public function segment_ids_to_row_splits(segment_ids:Dynamic, ?num_segments:Dynamic, ?name:Dynamic):Dynamic;
}