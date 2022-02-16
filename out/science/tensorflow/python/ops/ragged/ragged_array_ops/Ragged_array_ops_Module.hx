/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_array_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_array_ops") extern class Ragged_array_ops_Module {
	static public var _DEFAULT_CROSS_HASH_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Generates feature cross from a list of ragged and dense tensors.
	**/
	static public function _cross_internal(inputs:Dynamic, ?hashed_output:Dynamic, ?num_buckets:Dynamic, ?hash_key:Dynamic, ?name:Dynamic):Dynamic;
	static public function _ragged_expand_dims_v1(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	static public function _ragged_size_v1(input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
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
		  A list of 1-D integer `Tensor`s (one for each ragged dimension in
		  `rt_input`).
		
		#### Example:
		
		>>> rt = tf.ragged.constant([[1, 2], [3]])
		>>> _tile_ragged_splits(rt, [3, 2])
		[<tf.Tensor: shape=(7,), dtype=int64,
		numpy=array([ 0,  4,  6, 10, 12, 16, 18])>]
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
		
		>>> rt = tf.ragged.constant([[1, 2], [3]])
		>>> _tile_ragged_values(rt, tf.constant([3, 2])).numpy()
		array([1, 2, 1, 2, 3, 3, 1, 2, 1, 2, 3, 3, 1, 2, 1, 2, 3, 3], dtype=int32)
	**/
	static public function _tile_ragged_values(rt_input:Dynamic, multiples:Dynamic, ?const_multiples:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		RaggedTensor dispatch override for tf.dynamic_partition.
	**/
	static public function dynamic_partition(data:Dynamic, partitions:Dynamic, num_partitions:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inserts a dimension with shape 1 into a potentially ragged tensor's shape.
		
		Given a potentially ragged tenor `input`, this operation inserts a
		dimension with size 1 at the dimension `axis` of `input`'s shape.
		
		The following table gives some examples showing how `ragged.expand_dims`
		impacts the shapes of different input tensors.  Ragged dimensions are
		indicated by enclosing them in parentheses.
		
		input.shape             | axis | result.shape
		----------------------- | ---- | -----------------------------
		`[D1, D2]`              |  `0` | `[1, D1, D2]`
		`[D1, D2]`              |  `1` | `[D1, 1, D2]`
		`[D1, D2]`              |  `2` | `[D1, D2, 1]`
		`[D1, (D2), (D3), D4]`  |  `0` | `[1, D1, (D2), (D3), D4]`
		`[D1, (D2), (D3), D4]`  |  `1` | `[D1, 1, (D2), (D3), D4]`
		`[D1, (D2), (D3), D4]`  |  `2` | `[D1, (D2), 1, (D3), D4]`
		`[D1, (D2), (D3), D4]`  |  `3` | `[D1, (D2), (D3), 1, D4]`
		`[D1, (D2), (D3), D4]`  |  `4` | `[D1, (D2), (D3), D4, 1]`
		
		Args:
		  input: The potentially tensor that should be expanded with a new dimension.
		  axis: An integer constant indicating where the new dimension should be
		    inserted.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor with the same values as `input`, with an added dimension of
		  size 1 at `axis`.
		
		#### Examples:
		
		>>> rt = tf.ragged.constant([[1, 2], [3]])
		>>> print(rt.shape)
		(2, None)
		
		>>> expanded = tf.expand_dims(rt, axis=0)
		>>> print(expanded.shape, expanded)
		(1, 2, None) <tf.RaggedTensor [[[1, 2], [3]]]>
		
		>>> expanded = tf.expand_dims(rt, axis=1)
		>>> print(expanded.shape, expanded)
		(2, 1, None) <tf.RaggedTensor [[[1, 2]], [[3]]]>
		
		>>> expanded = tf.expand_dims(rt, axis=2)
		>>> print(expanded.shape, expanded)
		(2, None, 1) <tf.RaggedTensor [[[1], [2]], [[3]]]>
	**/
	static public function expand_dims(input:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Applies tf.one_hot along the values of a RaggedTensor.
	**/
	static public function ragged_one_hot(indices:Dynamic, depth:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the rank of a RaggedTensor.
		
		Returns a 0-D `int32` `Tensor` representing the rank of `input`.
		
		#### Example:
		
		>>> # shape of tensor 't' is [2, None, None]
		>>> t = tf.ragged.constant([[[1], [2, 2]], [[3, 3, 3], [4, 4, 4, 4]]])
		>>> tf.rank(t).numpy()
		3
		
		Args:
		  input: A `RaggedTensor`
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function rank(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reverses a RaggedTensor along the specified axes.
		
		#### Example:
		
		>>> data = tf.ragged.constant([
		...   [[1, 2], [3, 4]], [[5, 6]], [[7, 8], [9, 10], [11, 12]]])
		>>> tf.reverse(data, axis=[0, 2])
		<tf.RaggedTensor [[[8, 7], [10, 9], [12, 11]], [[6, 5]], [[2, 1], [4, 3]]]>
		
		Args:
		  tensor: A 'RaggedTensor' to reverse.
		  axis: A list or tuple of 'int' or a constant 1D 'tf.Tensor'. The indices of
		    the axes to reverse.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A 'RaggedTensor'.
	**/
	static public function reverse(tensor:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the size of a potentially ragged tensor.
		
		The size of a ragged tensor is the size of its inner values.
		
		#### Example:
		
		>>> tf.size(tf.ragged.constant([[1, 2], [3]])).numpy()
		3
		
		Args:
		  input: A potentially ragged `Tensor`.
		  out_type: The numeric output type for the operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor of type `out_type`.
	**/
	static public function size(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		>>> rt = tf.ragged.constant([[1, 2], [3]])
		>>> tf.tile(rt, [3, 2]).to_list()
		[[1, 2, 1, 2], [3, 3], [1, 2, 1, 2], [3, 3], [1, 2, 1, 2], [3, 3]]
	**/
	static public function tile(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
}