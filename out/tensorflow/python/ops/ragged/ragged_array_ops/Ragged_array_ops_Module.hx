/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_array_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_array_ops") extern class Ragged_array_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Concatenates a list of RaggedTensor splits to form a single splits.
	**/
	static public function _concat_ragged_splits(splits_list:Dynamic):Dynamic;
	/**
		Ragged version of tf.where(condition).
	**/
	static public function _coordinate_where(condition:Dynamic):Dynamic;
	/**
		Sets splits.shape to [rt[shape[0]+1] for each rt in rt_inputs.
	**/
	static public function _copy_row_shape(rt_inputs:Dynamic, splits:Dynamic):Dynamic;
	/**
		Ragged version of tf.where(condition, x, y).
	**/
	static public function _elementwise_where(condition:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	/**
		Adds ragged dimensions to `rt_input` so it has the desired ragged rank.
	**/
	static public function _increase_ragged_rank_to(rt_input:Dynamic, ragged_rank:Dynamic):Dynamic;
	static public function _nrows(rt_input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Helper function to concatenate or stack ragged tensors along axis 0.
		
		Args:
		  rt_inputs: A list of RaggedTensors, all with the same rank and ragged_rank.
		  stack_values: Boolean.  If true, then stack values; otherwise, concatenate
		    them.
		
		Returns:
		  A RaggedTensor.
	**/
	static public function _ragged_stack_concat_axis_0(rt_inputs:Dynamic, stack_values:Dynamic):Dynamic;
	/**
		Helper function to concatenate or stack ragged tensors along axis 1.
		
		Args:
		  rt_inputs: A list of RaggedTensors, all with the same rank and ragged_rank.
		  stack_values: Boolean.  If true, then stack values; otherwise, concatenate
		    them.
		
		Returns:
		  A RaggedTensor.
	**/
	static public function _ragged_stack_concat_axis_1(rt_inputs:Dynamic, stack_values:Dynamic):Dynamic;
	/**
		Helper function to concatenate or stack ragged tensors.
		
		Args:
		  rt_inputs: A list of RaggedTensors or Tensors to combine.
		  axis: The axis along which to concatenate or stack.
		  stack_values: A boolean -- if true, then stack values; otherwise,
		    concatenate them.
		
		Returns:
		  A RaggedTensor.
		Raises:
		  ValueError: If rt_inputs is empty, or if axis is out of range.
	**/
	static public function _ragged_stack_concat_helper(rt_inputs:Dynamic, axis:Dynamic, stack_values:Dynamic):Dynamic;
	/**
		Builds nested_split tensors for a tiled `RaggedTensor`.
		
		Returns a list of split tensors that can be used to construct the
		`RaggedTensor` that tiles `rt_input` as specified by `multiples`.
		
		Args:
		  rt_input: The `RaggedTensor` that is being tiled.
		  multiples: A 1-D integer `tensor`, indicating how many times each dimension
		    should be repeated.
		  const_multiples: Optional constant value for multiples.  Used to skip tiling
		    dimensions where `multiples=1`.
		
		Returns:
		  A list of 1-D `int64` `Tensor`s (one for each ragged dimension in
		  `rt_input`).
		
		#### Example:
		  ```python
		  >>> rt = tf.ragged.constant([[1, 2], [3]])
		  >>> _tile_ragged_splits(rt, [3, 2])
		  [0, 4, 6, 10, 12, 16, 18]
		  ```
	**/
	static public function _tile_ragged_splits(rt_input:Dynamic, multiples:Dynamic, ?const_multiples:Dynamic):Dynamic;
	/**
		Builds flat_values tensor for a tiled `RaggedTensor`.
		
		Returns a tensor that repeats the values in
		`rt_input.flat_values` in the
		appropriate pattern to construct a `RaggedTensor` that tiles `rt_input` as
		specified by `multiples`.
		
		Args:
		  rt_input: The `RaggedTensor` whose values should be repeated.
		  multiples: A 1-D integer `tensor`, indicating how many times each dimension
		    should be repeated.
		  const_multiples: Optional constant value for multiples.  Used to skip tiling
		    dimensions where `multiples=1`.
		
		Returns:
		  A `Tensor` with the same type and rank as `rt_input.flat_values`.
		
		#### Example:
		  ```python
		  >>> rt = tf.ragged.constant([[1, 2], [3]])
		  >>> _tile_ragged_values(rt, [3, 2])
		  [1, 2, 1, 2, 3, 3, 1, 2, 1, 2, 3, 3, 1, 2, 1, 2, 3, 3]
		  ```
	**/
	static public function _tile_ragged_values(rt_input:Dynamic, multiples:Dynamic, ?const_multiples:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Gathers slices from `params` according to `indices` with batch dims.
		
		This operation is similar to `gather`, but it assumes that the leading `N`
		dimensions of `indices` and `params` are batch dimensions, and performs a
		gather within each batch.  In particular, when using this operation with `N`
		batch dimensions `B1...BN`:
		
		* `indices` has shape `[B1...BN, I]`
		* `params` has shape `[B1...BN, P1...PM]`.
		* `result` has shape `[B1...BN, I, P2...PM]`.
		* `result[b1...bN, i, p2...pM] =
		  params[b1...bN, indices[b1...bN, i], p2...pM]`
		
		Args:
		  params: A potentially ragged tensor with shape `[B1...BN, P1...PM]` (`N>=0`,
		    `M>0`).
		  indices: A potentially ragged tensor with shape `[B1...BN, I]` (`N>=0`).
		  name: A name for the operation (optional).
		
		Returns:
		  A potentially ragged tensor with shape `[B1...BN, I, P2...PM]`.
		  `result.ragged_rank = max(indices.ragged_rank, params.ragged_rank)`.
		
		#### Example:
		  ```python
		  >>> params = tf.ragged.constant([['a', 'b', 'c'], ['d'], [], ['e']])
		  >>> indices = tf.ragged.constant([[1, 2, 0], [], [], [0, 0]])
		  >>> ragged.batch_gather(params, indices)
		  [['b', 'c', 'a'], [], [], ['e', 'e']]
		  ```
	**/
	static public function batch_gather(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies a boolean mask to `data`.
		
		Returns a potentially ragged tensor that is formed by retaining the elements
		in `data` where the corresponding value in `mask` is `True`.
		
		If `keepdims` is true then outer dimensions (corresponding to the `mask`
		dimensions) are preserved, and:
		
		* `output[a1...aA, i, b1...bB] = data[a1...aA, j, b1...bB]`
		
		   Where `j` is the `i`th `True` entry of `mask[a1...aA]`.
		
		If `keepdims` is false, then the outer dimensions are collapsed (similar to
		the behavior of `tf.boolean_mask`), and:
		
		* `output[i, b1...bB] = data[a1...aA, b1...bB]`
		
		   Where `(a1...aA)` is the `i`th `True` entry of `mask`
		   (in row-major order).
		
		Args:
		  data: A potentially ragged tensor.
		  mask: A potentially ragged boolean tensor.  `mask`'s shape must be a prefix
		    of `data`'s shape.  `rank(mask)` must be known statically.
		  keepdims: Whether to preserve the outer dimensions (`keepdims=True`) or
		    flatten them (`keepdims=False`).
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A potentially ragged tensor that is formed by retaining the elements in
		  `data` where the corresponding value in `mask` is `True`.
		
		  If `keepdims` is false:
		
		  * `rank(output) = rank(data) - rank(mask) + 1`.
		  * `output.ragged_rank = max(data.ragged_rank - rank(mask) + 1, 0)`.
		
		  If `keepdims` is true:
		
		  * `rank(output) = rank(data)`.
		  * `output.ragged_rank = max(data.ragged_rank, rank(mask) - 1)`.
		
		Raises:
		  ValueError: if `rank(mask)` is not known statically; or if `mask.shape` is
		    not a prefix of `data.shape`.
		
		#### Examples:
		  ```python
		  >>> # Aliases for True & False so data and mask line up.
		  >>> T, F = (True, False)
		
		  >>> tf.ragged.boolean_mask(  # Mask a 2D Tensor.  Flatten outer dims.
		  ...     data=[[1, 2, 3], [4, 5, 6], [7, 8, 9]],
		  ...     mask=[[T, F, T], [F, F, F], [T, F, F]],
		  ...     keepdims=False).tolist()
		  [1, 3, 7]
		
		  >>> tf.ragged.boolean_mask(  # Mask a 2D Tensor.  Preserve outer dims.
		  ...     data=[[1, 2, 3], [4, 5, 6], [7, 8, 9]],
		  ...     mask=[[T, F, T], [F, F, F], [T, F, F]],
		  ...     keepdims=True).tolist()
		  [[1, 3], [], [7]]
		
		  >>> tf.ragged.boolean_mask(  # Mask a 2D RaggedTensor.  Flatten outer dims.
		  ...     tf.ragged.constant([[1, 2, 3], [4], [5, 6]]),
		  ...     tf.ragged.constant([[F, F, T], [F], [T, T]]),
		  ...     keepdims=False).tolist()
		  [3, 5, 6]
		
		  >>> tf.ragged.boolean_mask(  # Mask a 2D RaggedTensor.  Preserve outer dims.
		  ...     tf.ragged.constant([[1, 2, 3], [4], [5, 6]]),
		  ...     tf.ragged.constant([[F, F, T], [F], [T, T]]),
		  ...     keepdims=True).tolist()
		  [[3], [], [5, 6]]
		
		  >>> tf.ragged.boolean_mask(  # Mask rows of a 2D RaggedTensor.
		  ...     tf.ragged.constant([[1, 2, 3], [4], [5, 6]]),
		  ...     tf.ragged.constant([True, False, True]),
		  ...     keepdims=True).tolist()
		  [[1, 2, 3], [5, 6]]
		  ```
	**/
	static public function boolean_mask(data:Dynamic, mask:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concatenates potentially ragged tensors along one dimension.
		
		Given a list of tensors with the same rank `K` (`K >= axis`), returns a
		rank-`K` `RaggedTensor` `result` such that `result[i0...iaxis]` is the
		concatenation of `[rt[i0...iaxis] for rt in values]`.
		
		Args:
		  values: A list of potentially ragged tensors.  May not be empty. All
		    `values` must have the same rank and the same dtype; but unlike
		    `tf.concat`, they can have arbitrary shapes.
		  axis: A python integer, indicating the dimension along which to concatenate.
		    (Note: Unlike `tf.concat`, the `axis` parameter must be statically known.)
		      Negative values are supported only if the rank of at least one
		      `values` value is statically known.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A `RaggedTensor` with rank `K`.
		  `result.ragged_rank=max(axis, max(rt.ragged_rank for rt in values]))`.
		
		Raises:
		  ValueError: If `values` is empty, if `axis` is out of bounds or if
		    the input tensors have different ranks.
		
		#### Example:
		  ```python
		  >>> t1 = tf.ragged.constant([[1, 2], [3, 4, 5]])
		  >>> t2 = tf.ragged.constant([[6], [7, 8, 9]])
		  >>> ragged.concat([t1, t2], axis=0)
		  [[1, 2], [3, 4, 5], [6], [7, 8, 9]]
		  >>> ragged.concat([t1, t2], axis=1)
		  [[1, 2, 6], [3, 4, 5, 7, 8, 9]]
		  ```
	**/
	static public function concat(values:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Inserts a dimension with shape 1 into a potentially ragged tensor's shape.
		
		Given a potentially ragged tenor `input`, this operation inserts a
		dimension with size 1 at the dimension `axis` of `input`'s shape.
		
		* If `input` is a `Tensor`, then this is equivalent to
		  `tf.expand_dims`.
		* If `input` is ragged, and `axis=0`, then the new dimension will be
		  uniform; but the previously outermost dimension will become ragged.
		* If `input` is ragged, and `0 < axis < input.ragged_rank`, then the
		  new dimension will be ragged.
		* If `input` is ragged, and axis >= input.ragged_rank`, then the new
		  dimension will be uniform.
		
		The following table gives some examples showing how `ragged.expand_dims`
		impacts the shapes of different input tensors.  Ragged dimensions are
		indicated by enclosing them in parentheses.
		
		input.shape             | axis | result.shape
		----------------------- | ---- | -----------------------------
		`[D1, D2]`              |  `0` | `[1, D1, D2]`
		`[D1, D2]`              |  `1` | `[D1, 1, D2]`
		`[D1, D2]`              |  `2` | `[D1, D2, 1]`
		`[D1, (D2), (D3), D4]`  |  `0` | `[1, (D1), (D2), (D3), D4]`
		`[D1, (D2), (D3), D4]`  |  `1` | `[D1, (1), (D2), (D3), D4]`
		`[D1, (D2), (D3), D4]`  |  `2` | `[D1, (D2), (1), (D3), D4]`
		`[D1, (D2), (D3), D4]`  |  `3` | `[D1, (D2), (D3), 1, D4]`
		`[D1, (D2), (D3), D4]`  |  `4` | `[D1, (D2), (D3), D4, 1]`
		
		Args:
		  input: The potentially tensor that should be expanded with a new
		    dimension.
		  axis: An integer constant indicating where the new dimension should be
		    inserted.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor with the same values as `input`, with an added dimension of
		  size 1 at `axis`.
		
		#### Examples:
		  ```python
		  >>> rt = tf.ragged.constant([[1, 2], [3]])
		  >>> print rt.shape
		  TensorShape([2, None])
		
		  >>> expanded = ragged.expand_dims(rt, axis=0)
		  >>> print(expanded.shape, expanded)
		  TensorShape([1, None, None]) [[[1, 2], [3]]]
		
		  >>> expanded = ragged.expand_dims(rt, axis=1)
		  >>> print(expanded.shape, expanded)
		  TensorShape([2, None, None]) [[[1, 2]], [[3]]]
		
		  >>> expanded = ragged.expand_dims(rt, axis=2)
		  >>> print(expanded.shape, expanded)
		  TensorShape([2, None, 1]) [[[1], [2]], [[3]]]
		  ```
	**/
	static public function expand_dims(input:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gathers ragged slices from `params` axis `0` according to `indices`.
		
		Returns `RaggedTensor` output, such that:
		
		```python
		output.shape = indices.shape + params.shape[1:]
		output.ragged_rank = indices.shape.ndims + params.ragged_rank
		output[i...j, d0...dn] = params[indices[i...j], d0...dn]
		```
		
		`params` may be ragged.  `indices` may be ragged.
		`indices` must have dtype `int32` or `int64`. If any index is out of bounds,
		then an error is returned.
		
		Examples:
		
		```python
		>>> params = tf.constant(['a', 'b', 'c', 'd', 'e'])
		>>> indices = tf.constant([3, 1, 2, 1, 0])
		>>> ragged_params = tf.ragged.constant([['a', 'b', 'c'], ['d'], [], ['e']])
		>>> ragged_indices = tf.ragged.constant([[3, 1, 2], [1], [], [0]])
		
		>>> print ragged.gather(params, ragged_indices)
		[['d', 'b', 'c'], ['b'], [], ['a']]
		
		>>> print ragged.gather(ragged_params, indices)
		[['e'], ['d'], [], ['d'], ['a', 'b', 'c']]
		
		>>> print ragged.gather(ragged_params, ragged_indices)
		[[['e'], ['d'], []], [['d']], [], [['a', 'b', 'c']]]
		```
		
		Args:
		  params: The potentially ragged tensor from which to gather values. Must be
		    at least rank 1.
		  indices: The potentially ragged tensor indicating which values to gather.
		    Must have dtype `int32` or `int64`.  Values must be in the range `[0,
		    params.shape[0]]`.
		  validate_indices: Ignored.
		  axis: Must be zero.
		  name: A name for the operation (optional).
		
		Returns:
		  A `RaggedTensor`, where `output.dtype=params.dtype` and
		  `output.shape=indices.shape + params.shape[1:]` and
		  `output.ragged_rank=indices.shape.ndims + params.ragged_rank`.
		
		Raises:
		  ValueError: If indices.shape.ndims is not known statically.
	**/
	static public function gather(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather slices from `params` using `n`-dimensional indices.
		
		This operation is similar to `gather`, but it uses the innermost dimension
		of `indices` to define a slice into `params`.  In particular, if:
		
		* `indices` has shape `[A1...AN, I]`
		* `params` has shape `[B1...BM]`
		
		Then:
		
		* `result` has shape `[A1...AN, B_{I+1}...BM]`.
		* `result[a1...aN] = params[indices[a1...aN, :]]`
		
		Args:
		  params: A potentially ragged tensor with shape `[A1...AN, I]`.
		  indices: A potentially ragged tensor with shape `[B1...BM]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A potentially ragged tensor with shape `[A1...AN, B_{I+1}...BM]`.
		
		#### Examples:
		  ```python
		  >>> params = tf.ragged.constant_value(
		  ...     [ [ ['000', '001'], ['010'              ]          ],
		  ...       [ ['100'       ], ['110', '111', '112'], ['120'] ],
		  ...       [ [            ], ['210'              ]          ] ])
		
		  >>> # Gather 2D slices from a 3D tensor
		  >>> ragged.gather_nd(params, [[2], [0]])
		  [ [ [            ], ['210'] ]
		    [ ['000', '001'], ['010'] ] ]
		
		  >>> # Gather 1D slices from a 3D tensor
		  >>> ragged.gather_nd(params, [[2, 1], [0, 0]])
		  [['210'], ['000', '001']]
		
		  >>> # Gather scalars from a 3D tensor
		  >>> ragged.gather_nd(params, [[0, 0, 1], [1, 1, 2]])
		  ['001', '112']
		  ```
	**/
	static public function gather_nd(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Stacks potentially ragged tensors along one dimension.
		
		Given a list of tensors with the same rank `K` (`K >= axis`), returns a
		rank-`K+1` `RaggedTensor` `result` such that `result[i0...iaxis]` is the
		list `[rt[i0...iaxis] for rt in values]`.
		
		Args:
		  values: A list of potentially ragged tensors.  May not be empty. All
		    `values` must have the same rank and the same dtype; but unlike
		    `tf.concat`, they can have arbitrary shapes.
		  axis: A python integer, indicating the dimension along which to stack.
		    (Note: Unlike `tf.stack`, the `axis` parameter must be statically known.)
		      Negative values are supported only if the rank of at least one
		      `values` value is statically known.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A `RaggedTensor` with rank `K+1`.
		  `result.ragged_rank=max(axis, max(rt.ragged_rank for rt in values]))`.
		
		Raises:
		  ValueError: If `values` is empty, if `axis` is out of bounds or if
		    the input tensors have different ranks.
		
		#### Example:
		  ```python
		  >>> t1 = tf.ragged.constant([[1, 2], [3, 4, 5]])
		  >>> t2 = tf.ragged.constant([[6], [7, 8, 9]])
		  >>> ragged.stack([t1, t2], axis=0)
		  [[[1, 2], [3, 4, 5]], [[6], [7, 9, 0]]]
		  >>> ragged.stack([t1, t2], axis=1)
		  [[[1, 2], [6]], [[3, 4, 5], [7, 8, 9]]]
		  ```
	**/
	static public function stack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a `RaggedTensor` by tiling a given `RaggedTensor`.
		
		The values of `input` are replicated `multiples[i]` times along the
		`i`th dimension (for each dimension `i`).  For every dimension `axis` in
		`input`, the length of each output element in that dimension is the
		length of corresponding input element multiplied by `multiples[axis]`.
		
		Args:
		  input: A `RaggedTensor`.
		  multiples: A 1-D integer `Tensor`.  Length must be the same as the number of
		    dimensions in `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `RaggedTensor` with the same type, rank, and ragged_rank as `input`.
		
		#### Example:
		  ```python
		  >>> rt = tf.ragged.constant([[1, 2], [3]])
		  >>> ragged.tile(rt, [3, 2])
		  [[1, 2, 1, 2], [3, 3], [1, 2, 1, 2], [3, 3], [1, 2, 1, 2], [3, 3]]
		  ```
	**/
	static public function tile(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the elements, either from `x` or `y`, depending on the `condition`.
		
		: If both `x` and `y` are `None`:
		  Returns the coordinates of true elements of `condition`. The coordinates
		  are returned in a 2-D tensor with shape
		  `[num_true_values, dim_size(condition)]`, where `result[i]` is the
		  coordinates of the `i`th true value (in row-major order).
		
		: If both `x` and `y` are non-`None`:
		  Returns a tensor formed by selecting values from `x` where condition is
		  true, and from `y` when condition is false.  In particular:
		
		  : If `condition`, `x`, and `y` all have the same shape:
		
		    * `result[i1...iN] = x[i1...iN]` if `condition[i1...iN]` is true.
		    * `result[i1...iN] = y[i1...iN]` if `condition[i1...iN]` is false.
		
		  : Otherwise:
		
		    * `condition` must be a vector.
		    * `x` and `y` must have the same number of dimensions.
		    * The outermost dimensions of `condition`, `x`, and `y` must all have the
		      same size.
		    * `result[i] = x[i]` if `condition[i]` is true.
		    * `result[i] = y[i]` if `condition[i]` is false.
		
		Args:
		  condition: A potentially ragged tensor of type `bool`
		  x: A potentially ragged tensor (optional).
		  y: A potentially ragged tensor (optional).  Must be specified if `x` is
		    specified.  Must have the same rank and type as `x`.
		  name: A name of the operation (optional)
		
		Returns:
		  : If both `x` and `y` are `None`:
		    A `Tensor` with shape `(num_true, dim_size(condition))`.
		  : Otherwise:
		    A potentially ragged tensor with the same type, rank, and outermost
		    dimension size as `x` and `y`.
		    `result.ragged_rank = max(x.ragged_rank, y.ragged_rank)`.
		
		Raises:
		  ValueError: When exactly one of `x` or `y` is non-`None`; or when
		    `condition`, `x`, and `y` have incompatible shapes.
		
		#### Examples:
		  ```python
		  >>> # Coordinates where condition is true.
		  >>> condition = tf.ragged.constant_value(
		  ...     [[True, False, True], [False, True]])
		  >>> ragged.where(condition)
		  [[0, 0], [0, 2], [1, 1]]
		
		  >>> # Elementwise selection between x and y, based on condition.
		  >>> condition = tf.ragged.constant_value(
		  ...     [[True, False, True], [False, True]])
		  >>> x = tf.ragged.constant_value([['A', 'B', 'C'], ['D', 'E']])
		  >>> y = tf.ragged.constant_value([['a', 'b', 'c'], ['d', 'e']])
		  >>> ragged.where(condition, x, y)
		  [['A', 'b', 'C'], ['d', 'E']]
		
		  >>> # Row selection between x and y, based on condition.
		  >>> condition = [True, False]
		  >>> x = tf.ragged.constant_value([['A', 'B', 'C'], ['D', 'E']])
		  >>> y = tf.ragged.constant_value([['a', 'b', 'c'], ['d', 'e']])
		  >>> ragged.where(condition, x, y)
		  [['A', 'B', 'C'], ['d', 'e']]
		  ```
	**/
	static public function where(condition:Dynamic, ?x:Dynamic, ?y:Dynamic, ?name:Dynamic):Dynamic;
}