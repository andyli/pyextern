/* This file is generated, do not edit! */
package tensorflow.python.ops.sparse_ops;
@:pythonImport("tensorflow.python.ops.sparse_ops") extern class Sparse_ops_Module {
	/**
		Shape function for DeserializeManySparse op.
	**/
	static public function _DeserializeSparseShape(op:Dynamic):Dynamic;
	/**
		Shape function for SerializeSparse op.
	**/
	static public function _SerializeManySparseShape(op:Dynamic):Dynamic;
	/**
		Shape function for SerializeSparse op.
	**/
	static public function _SerializeSparseShape(op:Dynamic):Dynamic;
	static public function _SparseAddGradShape(op:Dynamic):Dynamic;
	static public function _SparseAddShape(op:Dynamic):Dynamic;
	/**
		Shape function for SparseConcat op.
	**/
	static public function _SparseConcatShape(op:Dynamic):Dynamic;
	static public function _SparseReduceSumShape(unused_op:Dynamic):Dynamic;
	/**
		Shape function for SparseReorder op.
	**/
	static public function _SparseReorderShape(op:Dynamic):Dynamic;
	/**
		Shape function for SparseReshape op.
	**/
	static public function _SparseReshapeShape(op:Dynamic):Dynamic;
	/**
		Shape function for SparseSoftmax op.
	**/
	static public function _SparseSoftmaxShape(op:Dynamic):Dynamic;
	/**
		Shape function for SparseSparseMaximum and SparseSparseMinimum.
	**/
	static public function _SparseSparseMaximumMinimumShape(op:Dynamic):Dynamic;
	/**
		Shape function for SparseSplit op.
	**/
	static public function _SparseSplitShape(op:Dynamic):Dynamic;
	static public function _SparseTensorDenseAddShape(op:Dynamic):Dynamic;
	/**
		Shape function for SparseTensorDenseMatMul op.
	**/
	static public function _SparseTensorDenseMatMulShape(op:Dynamic):Dynamic;
	static public function _SparseToDenseShape(op:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Deserialize and concatenate `SparseTensors` from a serialized minibatch.
		
		The input `serialized_sparse` must be a string matrix of shape `[N x 3]` where
		`N` is the minibatch size and the rows correspond to packed outputs of
		`serialize_sparse`.  The ranks of the original `SparseTensor` objects
		must all match.  When the final `SparseTensor` is created, it has rank one
		higher than the ranks of the incoming `SparseTensor` objects (they have been
		concatenated along a new row dimension).
		
		The output `SparseTensor` object's shape values for all dimensions but the
		first are the max across the input `SparseTensor` objects' shape values
		for the corresponding dimensions.  Its first shape value is `N`, the minibatch
		size.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `sparse_reorder` to restore index ordering.
		
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
		  serialized_sparse: 2-D `Tensor` of type `string` of shape `[N, 3]`.
		    The serialized and packed `SparseTensor` objects.
		  dtype: The `dtype` of the serialized `SparseTensor` objects.
		  rank: (optional) Python int, the rank of the `SparseTensor` objects.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` representing the deserialized `SparseTensor`s,
		  concatenated along the `SparseTensor`s' first dimension.
		
		  All of the serialized `SparseTensor`s must have had the same rank and type.
	**/
	static public function deserialize_many_sparse(serialized_sparse:Dynamic, dtype:Dynamic, ?rank:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Serialize an `N`-minibatch `SparseTensor` into an `[N, 3]` string `Tensor`.
		
		The `SparseTensor` must have rank `R` greater than 1, and the first dimension
		is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The serialized
		`SparseTensor` objects going into each row of the output `Tensor` will have
		rank `R-1`.
		
		The minibatch size `N` is extracted from `sparse_shape[0]`.
		
		Args:
		  sp_input: The input rank `R` `SparseTensor`.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A string matrix (2-D `Tensor`) with `N` rows and `3` columns.
		  Each column represents serialized `SparseTensor`'s indices, values, and
		  shape (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_many_sparse(sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Serialize a `SparseTensor` into a string 3-vector (1-D `Tensor`) object.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A string 3-vector (1D `Tensor`), with each column representing the
		  serialized `SparseTensor`'s indices, values, and shape (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_sparse(sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds two tensors, at least one of each is a `SparseTensor`.
		
		If one `SparseTensor` and one `Tensor` are passed in, returns a `Tensor`.  If
		both arguments are `SparseTensor`s, this returns a `SparseTensor`.  The order
		of arguments does not matter.  Use vanilla `tf.add()` for adding two dense
		`Tensor`s.
		
		The indices of any input `SparseTensor` are assumed ordered in standard
		lexicographic order.  If this is not the case, before this step run
		`SparseReorder` to restore index ordering.
		
		If both arguments are sparse, we perform "clipping" as follows.  By default,
		if two values sum to zero at some index, the output `SparseTensor` would still
		include that particular location in its index, storing a zero in the
		corresponding value slot.  To override this, callers can specify `thresh`,
		indicating that if the sum has a magnitude strictly smaller than `thresh`, its
		corresponding value and index would then not be included.  In particular,
		`thresh == 0.0` (default) means everything is kept and actual thresholding
		happens only for a positive value.
		
		For example, suppose the logical sum of two sparse operands is (densified):
		
		    [       2]
		    [.1     0]
		    [ 6   -.2]
		
		Then,
		
		    - thresh == 0 (the default): all 5 index/value pairs will be returned.
		    - thresh == 0.11: only .1 and 0  will vanish, and the remaining three
		        index/value pairs will be returned.
		    - thresh == 0.21: .1, 0, and -.2 will vanish.
		
		Args:
		  a: The first operand; `SparseTensor` or `Tensor`.
		  b: The second operand; `SparseTensor` or `Tensor`.  At least one operand
		    must be sparse.
		  thresh: A 0-D `Tensor`.  The magnitude threshold that determines if an
		  output value/index pair takes space.  Its dtype should match that of the
		  values if they are real; if the latter are complex64/complex128, then the
		  dtype should be float32/float64, correspondingly.
		
		Returns:
		  A `SparseTensor` or a `Tensor`, representing the sum.
		
		Raises:
		  TypeError: If both `a` and `b` are `Tensor`s.  Use `tf.add()` instead.
	**/
	static public function sparse_add(a:Dynamic, b:Dynamic, ?thresh:Dynamic):Dynamic;
	/**
		Concatenates a list of `SparseTensor` along the specified dimension.
		
		Concatenation is with respect to the dense versions of each sparse input.
		It is assumed that each inputs is a `SparseTensor` whose elements are ordered
		along increasing dimension number.
		
		If expand_nonconcat_dim is False, all inputs' shapes must match, except for
		the concat dimension. If expand_nonconcat_dim is True, then inputs' shapes are
		allowd to vary among all inputs.
		
		The `indices`, `values`, and `shapes` lists must have the same length.
		
		If expand_nonconcat_dim is False, then the output shape is identical to the
		inputs', except along the concat dimension, where it is the sum of the inputs'
		sizes along that dimension.
		
		If expand_nonconcat_dim is True, then the output shape along the non-concat
		dimensions will be expand to be the largest among all inputs, and it is the
		sum of the inputs sizes along the concat dimension.
		
		The output elements will be resorted to preserve the sort order along
		increasing dimension number.
		
		This op runs in `O(M log M)` time, where `M` is the total number of non-empty
		values across all inputs. This is due to the need for an internal sort in
		order to concatenate efficiently across an arbitrary dimension.
		
		For example, if `concat_dim = 1` and the inputs are
		
		    sp_inputs[0]: shape = [2, 3]
		    [0, 2]: "a"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		    sp_inputs[1]: shape = [2, 4]
		    [0, 1]: "d"
		    [0, 2]: "e"
		
		then the output will be
		
		    shape = [2, 7]
		    [0, 2]: "a"
		    [0, 4]: "d"
		    [0, 5]: "e"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		Graphically this is equivalent to doing
		
		    [    a] concat [  d e  ] = [    a   d e  ]
		    [b c  ]        [       ]   [b c          ]
		
		Another example, if 'concat_dim = 1' and the inputs are
		
		    sp_inputs[0]: shape = [3, 3]
		    [0, 2]: "a"
		    [1, 0]: "b"
		    [2, 1]: "c"
		
		    sp_inputs[1]: shape = [2, 4]
		    [0, 1]: "d"
		    [0, 2]: "e"
		
		if expand_nonconcat_dim = False, this will result in an error. But if
		expand_nonconcat_dim = True, this will result in:
		
		    shape = [3, 7]
		    [0, 2]: "a"
		    [0, 4]: "d"
		    [0, 5]: "e"
		    [1, 0]: "b"
		    [2, 1]: "c"
		
		Graphically this is equivalent to doing
		
		    [    a] concat [  d e  ] = [    a   d e  ]
		    [b    ]        [       ]   [b            ]
		    [  c  ]                    [  c          ]
		
		
		Args:
		  concat_dim: Dimension to concatenate along.
		  sp_inputs: List of `SparseTensor` to concatenate.
		  name: A name prefix for the returned tensors (optional).
		  expand_nonconcat_dim: Whether to allow the expansion in the non-concat
		    dimensions. Defaulted to False.
		
		Returns:
		  A `SparseTensor` with the concatenated output.
		
		Raises:
		  TypeError: If `sp_inputs` is not a list of `SparseTensor`.
	**/
	static public function sparse_concat(concat_dim:Dynamic, sp_inputs:Dynamic, ?name:Dynamic, ?expand_nonconcat_dim:Dynamic):Dynamic;
	/**
		Adds up a SparseTensor and a dense Tensor, using these special rules:
		
		(1) Broadcasts the dense side to have the same shape as the sparse side, if
		    eligible;
		(2) Then, only the dense values pointed to by the indices of the SparseTensor
		    participate in the cwise addition.
		
		By the rules, the result is a logical SparseTensor with exactly the same
		indices and shape, but possibly with different non-zero values.  The output of
		this Op is the resultant non-zero values.
		
		Args:
		  sp_t: the SparseTensor operand.
		  dense_t: the dense Tensor operand; must have the same dtype and a
		    broadcast-compatible shape as `sp_t`.
		
		Returns:
		  output: the SparseTensor output.
	**/
	static public function sparse_dense_cwise_add(sp_t:Dynamic, dense_t:Dynamic):Dynamic;
	/**
		Component-wise divides a SparseTensor by a dense Tensor.
		
		*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
		the other direction.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
		  1-D.  The `N` values that are operated on.
	**/
	static public function sparse_dense_cwise_div(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Component-wise multiplies a SparseTensor by a dense Tensor.
		
		The output locations corresponding to the implicitly zero elements in the sparse
		tensor will be zero (i.e., will not take up storage space), regardless of the
		contents of the dense tensor (even if it's +/-INF and that INF*0 == NaN).
		
		*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
		the other direction.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
		  1-D.  The `N` values that are operated on.
	**/
	static public function sparse_dense_cwise_mul(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fills empty rows in the input 2-D `SparseTensor` with a default value.
		
		This op adds entries with the specified `default_value` at index
		`[row, 0]` for any row in the input that does not already have a value.
		
		For example, suppose `sp_input` has shape `[5, 6]` and non-empty values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		    [3, 1]: d
		
		Rows 1 and 4 are empty, so the output will be of shape `[5, 6]` with values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [1, 0]: default_value
		    [2, 0]: c
		    [3, 1]: d
		    [4, 0]: default_value
		
		Note that the input may have empty columns at the end, with no effect on
		this op.
		
		The output `SparseTensor` will be in row-major order and will have the
		same shape as the input.
		
		This op also returns an indicator vector such that
		
		    empty_row_indicator[i] = True iff row i was an empty row.
		
		Args:
		  sp_input: A `SparseTensor` with shape `[N, M]`.
		  default_value: The value to fill for empty rows, with the same type as
		    `sp_input.`
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  sp_ordered_output: A `SparseTensor` with shape `[N, M]`, and with all empty
		    rows filled in with `default_value`.
		  empty_row_indicator: A bool vector of length `N` indicating whether each
		    input row was empty.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_fill_empty_rows(sp_input:Dynamic, default_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise max of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		Example:
		
		```python
		sp_zero = ops.SparseTensor([[0]], [0], [7])
		sp_one = ops.SparseTensor([[1]], [1], [7])
		res = tf.sparse_maximum(sp_zero, sp_one).eval()
		# "res" should be equal to SparseTensor([[0], [1]], [0, 1], [7]).
		```
		
		Args:
		  sp_a: a `SparseTensor` operand whose dtype is real, and indices
		    lexicographically ordered.
		  sp_b: the other `SparseTensor` operand with the same requirements (and the
		    same shape).
		  name: optional name of the operation.
		Returns:
		  output: the output SparseTensor.
	**/
	static public function sparse_maximum(sp_a:Dynamic, sp_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Combines a batch of feature ids and values into a single `SparseTensor`.
		
		The most common use case for this function occurs when feature ids and
		their corresponding values are stored in `Example` protos on disk.
		`parse_example` will return a batch of ids and a batch of values, and this
		function joins them into a single logical `SparseTensor` for use in
		functions such as `sparse_tensor_dense_matmul`, `sparse_to_dense`, etc.
		
		The `SparseTensor` returned by this function has the following properties:
		
		  - `indices` is equivalent to `sp_ids.indices` with the last
		    dimension discarded and replaced with `sp_ids.values`.
		  - `values` is simply `sp_values.values`.
		  - If `sp_ids.shape = [D0, D1, ..., Dn, K]`, then
		    `output.shape = [D0, D1, ..., Dn, vocab_size]`.
		
		For example, consider the following feature vectors:
		
		```python
		  vector1 = [-3, 0, 0, 0, 0, 0]
		  vector2 = [ 0, 1, 0, 4, 1, 0]
		  vector3 = [ 5, 0, 0, 9, 0, 0]
		```
		
		These might be stored sparsely in the following Example protos by storing
		only the feature ids (column number if the vectors are treated as a matrix)
		of the non-zero elements and the corresponding values:
		
		```python
		  examples = [Example(features={
		                  "ids": Feature(int64_list=Int64List(value=[0])),
		                  "values": Feature(float_list=FloatList(value=[-3]))}),
		              Example(features={
		                  "ids": Feature(int64_list=Int64List(value=[1, 4, 3])),
		                  "values": Feature(float_list=FloatList(value=[1, 1, 4]))}),
		              Example(features={
		                  "ids": Feature(int64_list=Int64List(value=[0, 3])),
		                  "values": Feature(float_list=FloatList(value=[5, 9]))})]
		```
		
		The result of calling parse_example on these examples will produce a
		dictionary with entries for "ids" and "values". Passing those two objects
		to this function along with vocab_size=6, will produce a `SparseTensor` that
		sparsely represents all three instances. Namely, the `indices` property will
		contain the coordinates of the non-zero entries in the feature matrix (the
		first dimension is the row number in the matrix, i.e., the index within the
		batch, and the second dimension is the column number, i.e., the feature id);
		`values` will contain the actual values. `shape` will be the shape of the
		original matrix, i.e., (3, 6). For our example above, the output will be
		equal to:
		
		```python
		  SparseTensor(indices=[[0, 0], [1, 1], [1, 3], [1, 4], [2, 0], [2, 3]],
		               values=[-3, 1, 4, 1, 5, 9],
		               shape=[3, 6])
		```
		
		Args:
		  sp_ids: A `SparseTensor` with `values` property of type `int32`
		    or `int64`.
		  sp_values: A`SparseTensor` of any type.
		  vocab_size: A scalar `int64` Tensor (or Python int) containing the new size
		    of the last dimension, `all(0 <= sp_ids.values < vocab_size)`.
		  name: A name prefix for the returned tensors (optional)
		  already_sorted: A boolean to specify whether the per-batch values in
		   `sp_values` are already sorted. If so skip sorting, False by default
		   (optional).
		
		Returns:
		  A `SparseTensor` compactly representing a batch of feature ids and values,
		  useful for passing to functions that expect such a `SparseTensor`.
		
		Raises:
		  TypeError: If `sp_ids` or `sp_values` are not a `SparseTensor`.
	**/
	static public function sparse_merge(sp_ids:Dynamic, sp_values:Dynamic, vocab_size:Dynamic, ?name:Dynamic, ?already_sorted:Dynamic):Dynamic;
	/**
		Returns the element-wise min of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		Example:
		
		```python
		sp_zero = ops.SparseTensor([[0]], [0], [7])
		sp_one = ops.SparseTensor([[1]], [1], [7])
		res = tf.sparse_minimum(sp_zero, sp_one).eval()
		# "res" should be equal to SparseTensor([[0], [1]], [0, 0], [7]).
		```
		
		Args:
		  sp_a: a `SparseTensor` operand whose dtype is real, and indices
		    lexicographically ordered.
		  sp_b: the other `SparseTensor` operand with the same requirements (and the
		    same shape).
		  name: optional name of the operation.
		Returns:
		  output: the output SparseTensor.
	**/
	static public function sparse_minimum(sp_a:Dynamic, sp_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a SparseTensor.
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_sum()`.  In particular, this Op also returns a dense `Tensor`
		instead of a sparse one.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keep_dims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		similar to the indexing rules in Python.
		
		For example:
		
		```python
		# 'x' represents [[1, ?, 1]
		#                 [?, 1, ?]]
		# where ? is implictly-zero.
		tf.sparse_reduce_sum(x) ==> 3
		tf.sparse_reduce_sum(x, 0) ==> [1, 1, 1]
		tf.sparse_reduce_sum(x, 1) ==> [2, 1]  # Can also use -1 as the axis.
		tf.sparse_reduce_sum(x, 1, keep_dims=True) ==> [[2], [1]]
		tf.sparse_reduce_sum(x, [0, 1]) ==> 3
		```
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  reduction_axes: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keep_dims: If true, retain reduced dimensions with length 1.
		
		Returns:
		  The reduced Tensor.
	**/
	static public function sparse_reduce_sum(sp_input:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Reorders a `SparseTensor` into the canonical, row-major ordering.
		
		Note that by convention, all sparse ops preserve the canonical ordering
		along increasing dimension number. The only time ordering can be violated
		is during manual manipulation of the indices and values to add entries.
		
		Reordering does not affect the shape of the `SparseTensor`.
		
		For example, if `sp_input` has shape `[4, 5]` and `indices` / `values`:
		
		    [0, 3]: b
		    [0, 1]: a
		    [3, 1]: d
		    [2, 0]: c
		
		then the output will be a `SparseTensor` of shape `[4, 5]` and
		`indices` / `values`:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		    [3, 1]: d
		
		Args:
		  sp_input: The input `SparseTensor`.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` with the same shape and non-empty values, but in
		  canonical ordering.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_reorder(sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resets the shape of a `SparseTensor` with indices and values unchanged.
		
		If `new_shape` is None, returns a copy of `sp_input` with its shape reset
		to the tight bounding box of `sp_input`.
		
		If `new_shape` is provided, then it must be larger or equal in all dimensions
		compared to the shape of `sp_input`. When this condition is met, the returned
		SparseTensor will have its shape reset to `new_shape` and its indices and
		values unchanged from that of `sp_input.`
		
		For example:
		
		  Consider a `sp_input` with shape [2, 3, 5]:
		
		    [0, 0, 1]: a
		    [0, 1, 0]: b
		    [0, 2, 2]: c
		    [1, 0, 3]: d
		
		  - It is an error to set `new_shape` as [3, 7] since this represents a
		    rank-2 tensor while `sp_input` is rank-3. This is either a ValueError
		    during graph construction (if both shapes are known) or an OpError during
		    run time.
		
		  - Setting `new_shape` as [2, 3, 6] will be fine as this shape is larger or
		    eqaul in every dimension compared to the original shape [2, 3, 5].
		
		  - On the other hand, setting new_shape as [2, 3, 4] is also an error: The
		    third dimension is smaller than the original shape [2, 3, 5] (and an
		    `InvalidArgumentError` will be raised).
		
		  - If `new_shape` is None, the returned SparseTensor will have a shape
		    [2, 3, 4], which is the tight bounding box of `sp_input`.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  new_shape: None or a vector representing the new shape for the returned
		    `SpraseTensor`.
		
		Returns:
		  A `SparseTensor` indices and values unchanged from `input_sp`. Its shape is
		    `new_shape` if that is set. Otherwise it is  the tight bounding box of
		     `input_sp`
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
		  ValueError: If `new_shape` represents a tensor with a different rank from
		    that of `sp_input` (if shapes are known when graph is constructed).
		  OpError:
		    - If `new_shape` has dimension sizes that are too small.
		    - If shapes are not known during graph construction time, and during run
		      time it is found out that the ranks do not match.
	**/
	static public function sparse_reset_shape(sp_input:Dynamic, ?new_shape:Dynamic):Dynamic;
	/**
		Reshapes a `SparseTensor` to represent values in a new dense shape.
		
		This operation has the same semantics as `reshape` on the represented dense
		tensor.  The indices of non-empty values in `sp_input` are recomputed based
		on the new dense shape, and a new `SparseTensor` is returned containing the
		new indices and new shape.  The order of non-empty values in `sp_input` is
		unchanged.
		
		If one component of `shape` is the special value -1, the size of that
		dimension is computed so that the total dense size remains constant.  At
		most one component of `shape` can be -1.  The number of dense elements
		implied by `shape` must be the same as the number of dense elements
		originally represented by `sp_input`.
		
		For example, if `sp_input` has shape `[2, 3, 6]` and `indices` / `values`:
		
		    [0, 0, 0]: a
		    [0, 0, 1]: b
		    [0, 1, 0]: c
		    [1, 0, 0]: d
		    [1, 2, 3]: e
		
		and `shape` is `[9, -1]`, then the output will be a `SparseTensor` of
		shape `[9, 4]` and `indices` / `values`:
		
		    [0, 0]: a
		    [0, 1]: b
		    [1, 2]: c
		    [4, 2]: d
		    [8, 1]: e
		
		Args:
		  sp_input: The input `SparseTensor`.
		  shape: A 1-D (vector) int64 `Tensor` specifying the new dense shape of the
		    represented `SparseTensor`.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` with the same non-empty values but with indices calculated
		  by the new dense shape.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_reshape(sp_input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retains specified non-empty values within a `SparseTensor`.
		
		For example, if `sp_input` has shape `[4, 5]` and 4 non-empty string values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		    [3, 1]: d
		
		and `to_retain = [True, False, False, True]`, then the output will
		be a `SparseTensor` of shape `[4, 5]` with 2 non-empty values:
		
		    [0, 1]: a
		    [3, 1]: d
		
		Args:
		  sp_input: The input `SparseTensor` with `N` non-empty elements.
		  to_retain: A bool vector of length `N` with `M` true values.
		
		Returns:
		  A `SparseTensor` with the same shape as the input and `M` non-empty
		  elements corresponding to the true positions in `to_retain`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_retain(sp_input:Dynamic, to_retain:Dynamic):Dynamic;
	/**
		Applies softmax to a batched N-D `SparseTensor`.
		
		The inputs represent an N-D SparseTensor  with logical shape `[..., B, C]`
		(where `N >= 2`), and with indices sorted in the canonical lexicographic
		order.
		
		This op is equivalent to applying the normal `tf.nn.softmax()` to each
		innermost logical submatrix with shape `[B, C]`, but with the catch that *the
		implicitly zero elements do not participate*.  Specifically, the algorithm is
		equivalent to:
		
		  (1) Applies `tf.nn.softmax()` to a densified view of each innermost
		      submatrix with shape `[B, C]`, along the size-C dimension;
		  (2) Masks out the original implicitly-zero locations;
		  (3) Renormalizes the remaining elements.
		
		Hence, the `SparseTensor` result has exactly the same non-zero indices and
		shape.
		
		Example:
		
		```python
		# First batch:
		# [?   e.]
		# [1.  ? ]
		# Second batch:
		# [e   ? ]
		# [e   e ]
		shape = [2, 2, 2]  # 3-D SparseTensor
		values = np.asarray([[[0., np.e], [1., 0.]], [[np.e, 0.], [np.e, np.e]]])
		indices = np.vstack(np.where(values)).astype(np.int64).T
		
		result = tf.sparse_softmax(tf.SparseTensor(indices, values, shape))
		# ...returning a 3-D SparseTensor, equivalent to:
		# [?   1.]     [1    ?]
		# [1.  ? ] and [.5  .5]
		# where ? means implicitly zero.
		```
		
		Args:
		  sp_input: N-D `SparseTensor`, where `N >= 2`.
		  name: optional name of the operation.
		Returns:
		  output: N-D `SparseTensor` representing the results.
	**/
	static public function sparse_softmax(sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise max of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, in the canonical lexicographic ordering.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    1-D.  `N` non-empty values corresponding to `a_indices`.
		  a_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  b_indices: A `Tensor` of type `int64`.
		    counterpart to `a_indices` for the other operand.
		  b_values: A `Tensor`. Must have the same type as `a_values`.
		    counterpart to `a_values` for the other operand; must be of the same dtype.
		  b_shape: A `Tensor` of type `int64`.
		    counterpart to `a_shape` for the other operand; the two shapes must be equal.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values).
		  output_indices: A `Tensor` of type `int64`. 2-D.  The indices of the output SparseTensor.
		  output_values: A `Tensor`. Has the same type as `a_values`. 1-D.  The values of the output SparseTensor.
	**/
	static public function sparse_sparse_maximum(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise min of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, in the canonical lexicographic ordering.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    1-D.  `N` non-empty values corresponding to `a_indices`.
		  a_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  b_indices: A `Tensor` of type `int64`.
		    counterpart to `a_indices` for the other operand.
		  b_values: A `Tensor`. Must have the same type as `a_values`.
		    counterpart to `a_values` for the other operand; must be of the same dtype.
		  b_shape: A `Tensor` of type `int64`.
		    counterpart to `a_shape` for the other operand; the two shapes must be equal.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values).
		  output_indices: A `Tensor` of type `int64`. 2-D.  The indices of the output SparseTensor.
		  output_values: A `Tensor`. Has the same type as `a_values`. 1-D.  The values of the output SparseTensor.
	**/
	static public function sparse_sparse_minimum(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Split a `SparseTensor` into `num_split` tensors along `split_dim`.
		
		If the `sp_input.shape[split_dim]` is not an integer multiple of `num_split`
		each slice starting from 0:`shape[split_dim] % num_split` gets extra one
		dimension. For example, if `split_dim = 1` and `num_split = 2` and the
		input is:
		
		    input_tensor = shape = [2, 7]
		    [    a   d e  ]
		    [b c          ]
		
		Graphically the output tensors are:
		
		    output_tensor[0] =
		    [    a ]
		    [b c   ]
		
		    output_tensor[1] =
		    [ d e  ]
		    [      ]
		
		Args:
		  split_dim: A 0-D `int32` `Tensor`. The dimension along which to split.
		  num_split: A Python integer. The number of ways to split.
		  sp_input: The `SparseTensor` to split.
		  name: A name for the operation (optional).
		
		Returns:
		  `num_split` `SparseTensor` objects resulting from splitting `value`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_split(split_dim:Dynamic, num_split:Dynamic, sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiply SparseTensor (of rank 2) "A" by dense matrix "B".
		
		No validity checking is performed on the indices of A.  However, the following
		input format is recommended for optimal behavior:
		
		if adjoint_a == false:
		  A should be sorted in lexicographically increasing order.  Use
		  sparse_reorder if you're not sure.
		if adjoint_a == true:
		  A should be sorted in order of increasing dimension 1 (i.e., "column major"
		  order instead of "row major" order).
		
		Deciding when to use sparse_tensor_dense_matmul vs. matmul(sp_a=True):
		
		There are a number of questions to ask in the decision process, including:
		
		* Will the SparseTensor A fit in memory if densified?
		* Is the column count of the product large (>> 1)?
		* Is the density of A larger than approximately 15%?
		
		If the answer to several of these questions is yes, consider
		converting the SparseTensor to a dense one and using tf.matmul with sp_a=True.
		
		This operation tends to perform well when A is more sparse, if the column size
		of the product is small (e.g. matrix-vector multiplication), if sp_a.shape
		takes on large values.
		
		Below is a rough speed comparison between sparse_tensor_dense_matmul,
		labelled 'sparse', and matmul(sp_a=True), labelled 'dense'.  For purposes of
		the comparison, the time spent converting from a SparseTensor to a dense
		Tensor is not included, so it is overly conservative with respect to
		the time ratio.
		
		Benchmark system:
		CPU: Intel Ivybridge with HyperThreading (6 cores) dL1:32KB dL2:256KB dL3:12MB
		GPU: NVidia Tesla k40c
		
		Compiled with:
		-c opt --config=cuda --copt=-mavx
		
		```tensorflow/python/sparse_tensor_dense_matmul_op_test --benchmarks
		A sparse [m, k] with % nonzero values between 1% and 80%
		B dense [k, n]
		
		% nnz    n       gpu     m       k       dt(dense)       dt(sparse)      dt(sparse)/dt(dense)
		0.01     1       True    100     100     0.000221166     0.00010154      0.459112
		0.01     1       True    100     1000    0.00033858      0.000109275     0.322745
		0.01     1       True    1000    100     0.000310557     9.85661e-05     0.317385
		0.01     1       True    1000    1000    0.0008721       0.000100875     0.115669
		0.01     1       False   100     100     0.000208085     0.000107603     0.51711
		0.01     1       False   100     1000    0.000327112     9.51118e-05     0.290762
		0.01     1       False   1000    100     0.000308222     0.00010345      0.335635
		0.01     1       False   1000    1000    0.000865721     0.000101397     0.117124
		0.01     10      True    100     100     0.000218522     0.000105537     0.482958
		0.01     10      True    100     1000    0.000340882     0.000111641     0.327506
		0.01     10      True    1000    100     0.000315472     0.000117376     0.372064
		0.01     10      True    1000    1000    0.000905493     0.000123263     0.136128
		0.01     10      False   100     100     0.000221529     9.82571e-05     0.44354
		0.01     10      False   100     1000    0.000330552     0.000112615     0.340687
		0.01     10      False   1000    100     0.000341277     0.000114097     0.334324
		0.01     10      False   1000    1000    0.000819944     0.000120982     0.147549
		0.01     25      True    100     100     0.000207806     0.000105977     0.509981
		0.01     25      True    100     1000    0.000322879     0.00012921      0.400181
		0.01     25      True    1000    100     0.00038262      0.000141583     0.370035
		0.01     25      True    1000    1000    0.000865438     0.000202083     0.233504
		0.01     25      False   100     100     0.000209401     0.000104696     0.499979
		0.01     25      False   100     1000    0.000321161     0.000130737     0.407076
		0.01     25      False   1000    100     0.000377012     0.000136801     0.362856
		0.01     25      False   1000    1000    0.000861125     0.00020272      0.235413
		0.2      1       True    100     100     0.000206952     9.69219e-05     0.46833
		0.2      1       True    100     1000    0.000348674     0.000147475     0.422959
		0.2      1       True    1000    100     0.000336908     0.00010122      0.300439
		0.2      1       True    1000    1000    0.001022        0.000203274     0.198898
		0.2      1       False   100     100     0.000207532     9.5412e-05      0.459746
		0.2      1       False   100     1000    0.000356127     0.000146824     0.41228
		0.2      1       False   1000    100     0.000322664     0.000100918     0.312764
		0.2      1       False   1000    1000    0.000998987     0.000203442     0.203648
		0.2      10      True    100     100     0.000211692     0.000109903     0.519165
		0.2      10      True    100     1000    0.000372819     0.000164321     0.440753
		0.2      10      True    1000    100     0.000338651     0.000144806     0.427596
		0.2      10      True    1000    1000    0.00108312      0.000758876     0.70064
		0.2      10      False   100     100     0.000215727     0.000110502     0.512231
		0.2      10      False   100     1000    0.000375419     0.0001613       0.429653
		0.2      10      False   1000    100     0.000336999     0.000145628     0.432132
		0.2      10      False   1000    1000    0.00110502      0.000762043     0.689618
		0.2      25      True    100     100     0.000218705     0.000129913     0.594009
		0.2      25      True    100     1000    0.000394794     0.00029428      0.745402
		0.2      25      True    1000    100     0.000404483     0.0002693       0.665788
		0.2      25      True    1000    1000    0.0012002       0.00194494      1.62052
		0.2      25      False   100     100     0.000221494     0.0001306       0.589632
		0.2      25      False   100     1000    0.000396436     0.000297204     0.74969
		0.2      25      False   1000    100     0.000409346     0.000270068     0.659754
		0.2      25      False   1000    1000    0.00121051      0.00193737      1.60046
		0.5      1       True    100     100     0.000214981     9.82111e-05     0.456836
		0.5      1       True    100     1000    0.000415328     0.000223073     0.537101
		0.5      1       True    1000    100     0.000358324     0.00011269      0.314492
		0.5      1       True    1000    1000    0.00137612      0.000437401     0.317851
		0.5      1       False   100     100     0.000224196     0.000101423     0.452386
		0.5      1       False   100     1000    0.000400987     0.000223286     0.556841
		0.5      1       False   1000    100     0.000368825     0.00011224      0.304318
		0.5      1       False   1000    1000    0.00136036      0.000429369     0.31563
		0.5      10      True    100     100     0.000222125     0.000112308     0.505608
		0.5      10      True    100     1000    0.000461088     0.00032357      0.701753
		0.5      10      True    1000    100     0.000394624     0.000225497     0.571422
		0.5      10      True    1000    1000    0.00158027      0.00190898      1.20801
		0.5      10      False   100     100     0.000232083     0.000114978     0.495418
		0.5      10      False   100     1000    0.000454574     0.000324632     0.714146
		0.5      10      False   1000    100     0.000379097     0.000227768     0.600817
		0.5      10      False   1000    1000    0.00160292      0.00190168      1.18638
		0.5      25      True    100     100     0.00023429      0.000151703     0.647501
		0.5      25      True    100     1000    0.000497462     0.000598873     1.20386
		0.5      25      True    1000    100     0.000460778     0.000557038     1.20891
		0.5      25      True    1000    1000    0.00170036      0.00467336      2.74845
		0.5      25      False   100     100     0.000228981     0.000155334     0.678371
		0.5      25      False   100     1000    0.000496139     0.000620789     1.25124
		0.5      25      False   1000    100     0.00045473      0.000551528     1.21287
		0.5      25      False   1000    1000    0.00171793      0.00467152      2.71927
		0.8      1       True    100     100     0.000222037     0.000105301     0.47425
		0.8      1       True    100     1000    0.000410804     0.000329327     0.801664
		0.8      1       True    1000    100     0.000349735     0.000131225     0.375212
		0.8      1       True    1000    1000    0.00139219      0.000677065     0.48633
		0.8      1       False   100     100     0.000214079     0.000107486     0.502085
		0.8      1       False   100     1000    0.000413746     0.000323244     0.781261
		0.8      1       False   1000    100     0.000348983     0.000131983     0.378193
		0.8      1       False   1000    1000    0.00136296      0.000685325     0.50282
		0.8      10      True    100     100     0.000229159     0.00011825      0.516017
		0.8      10      True    100     1000    0.000498845     0.000532618     1.0677
		0.8      10      True    1000    100     0.000383126     0.00029935      0.781336
		0.8      10      True    1000    1000    0.00162866      0.00307312      1.88689
		0.8      10      False   100     100     0.000230783     0.000124958     0.541452
		0.8      10      False   100     1000    0.000493393     0.000550654     1.11606
		0.8      10      False   1000    100     0.000377167     0.000298581     0.791642
		0.8      10      False   1000    1000    0.00165795      0.00305103      1.84024
		0.8      25      True    100     100     0.000233496     0.000175241     0.75051
		0.8      25      True    100     1000    0.00055654      0.00102658      1.84458
		0.8      25      True    1000    100     0.000463814     0.000783267     1.68875
		0.8      25      True    1000    1000    0.00186905      0.00755344      4.04132
		0.8      25      False   100     100     0.000240243     0.000175047     0.728625
		0.8      25      False   100     1000    0.000578102     0.00104499      1.80763
		0.8      25      False   1000    100     0.000485113     0.000776849     1.60138
		0.8      25      False   1000    1000    0.00211448      0.00752736      3.55992
		```
		
		Args:
		  sp_a: SparseTensor A, of rank 2.
		  b: A dense Matrix with the same dtype as sp_a.
		  adjoint_a: Use the adjoint of A in the matrix multiply.  If A is complex,
		    this is transpose(conj(A)).  Otherwise it's transpose(A).
		  adjoint_b: Use the adjoint of B in the matrix multiply.  If B is complex,
		    this is transpose(conj(B)).  Otherwise it's transpose(B).
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A dense matrix (pseudo-code in dense np.matrix notation):
		    A = A.H if adjoint_a else A
		    B = B.H if adjoint_b else B
		    return A*B
	**/
	static public function sparse_tensor_dense_matmul(sp_a:Dynamic, b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a `SparseTensor` into a dense tensor.
		
		This op is a convenience wrapper around `sparse_to_dense` for `SparseTensor`s.
		
		For example, if `sp_input` has shape `[3, 5]` and non-empty string values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		
		and `default_value` is `x`, then the output will be a dense `[3, 5]`
		string tensor with values:
		
		    [[x a x b x]
		     [x x x x x]
		     [c x x x x]]
		
		Indices must be without repeats.  This is only
		tested if validate_indices is True.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  default_value: Scalar value to set for indices not specified in
		    `sp_input`.  Defaults to zero.
		  validate_indices: A boolean value.  If `True`, indices are checked to make
		    sure they are sorted in lexicographic order and that there are no repeats.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A dense tensor with shape `sp_input.shape` and values specified by
		  the non-empty values in `sp_input`. Indices not in `sp_input` are assigned
		  `default_value`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_tensor_to_dense(sp_input:Dynamic, ?default_value:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a sparse representation into a dense tensor.
		
		Builds an array `dense` with shape `output_shape` such that
		
		```python
		# If sparse_indices is scalar
		dense[i] = (i == sparse_indices ? sparse_values : default_value)
		
		# If sparse_indices is a vector, then for each i
		dense[sparse_indices[i]] = sparse_values[i]
		
		# If sparse_indices is an n by d matrix, then for each i in [0, n)
		dense[sparse_indices[i][0], ..., sparse_indices[i][d-1]] = sparse_values[i]
		```
		
		All other values in `dense` are set to `default_value`.  If `sparse_values`
		is a scalar, all sparse indices are set to this single value.
		
		Indices should be sorted in lexicographic order, and indices must not
		contain any repeats. If `validate_indices` is True, these properties
		are checked during execution.
		
		Args:
		  sparse_indices: A 0-D, 1-D, or 2-D `Tensor` of type `int32` or `int64`.
		    `sparse_indices[i]` contains the complete index where `sparse_values[i]`
		    will be placed.
		  output_shape: A 1-D `Tensor` of the same type as `sparse_indices`.  Shape
		    of the dense output tensor.
		  sparse_values: A 0-D or 1-D `Tensor`.  Values corresponding to each row of
		    `sparse_indices`, or a scalar value to be used for all sparse indices.
		  default_value: A 0-D `Tensor` of the same type as `sparse_values`.  Value
		    to set for indices not specified in `sparse_indices`.  Defaults to zero.
		  validate_indices: A boolean value.  If True, indices are checked to make
		    sure they are sorted in lexicographic order and that there are no repeats.
		  name: A name for the operation (optional).
		
		Returns:
		  Dense `Tensor` of shape `output_shape`.  Has the same type as
		  `sparse_values`.
	**/
	static public function sparse_to_dense(sparse_indices:Dynamic, output_shape:Dynamic, sparse_values:Dynamic, ?default_value:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a `SparseTensor` of ids into a dense bool indicator tensor.
		
		The last dimension of `sp_input.indices` is discarded and replaced with
		the values of `sp_input`.  If `sp_input.shape = [D0, D1, ..., Dn, K]`, then
		`output.shape = [D0, D1, ..., Dn, vocab_size]`, where
		
		    output[d_0, d_1, ..., d_n, sp_input[d_0, d_1, ..., d_n, k]] = True
		
		and False elsewhere in `output`.
		
		For example, if `sp_input.shape = [2, 3, 4]` with non-empty values:
		
		    [0, 0, 0]: 0
		    [0, 1, 0]: 10
		    [1, 0, 3]: 103
		    [1, 1, 2]: 150
		    [1, 1, 3]: 149
		    [1, 1, 4]: 150
		    [1, 2, 1]: 121
		
		and `vocab_size = 200`, then the output will be a `[2, 3, 200]` dense bool
		tensor with False everywhere except at positions
		
		    (0, 0, 0), (0, 1, 10), (1, 0, 103), (1, 1, 149), (1, 1, 150),
		    (1, 2, 121).
		
		Note that repeats are allowed in the input SparseTensor.
		This op is useful for converting `SparseTensor`s into dense formats for
		compatibility with ops that expect dense tensors.
		
		The input `SparseTensor` must be in row-major order.
		
		Args:
		  sp_input: A `SparseTensor` with `values` property of type `int32` or
		    `int64`.
		  vocab_size: A scalar int64 Tensor (or Python int) containing the new size
		    of the last dimension, `all(0 <= sp_input.values < vocab_size)`.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A dense bool indicator tensor representing the indices with specified value.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_to_indicator(sp_input:Dynamic, vocab_size:Dynamic, ?name:Dynamic):Dynamic;
}