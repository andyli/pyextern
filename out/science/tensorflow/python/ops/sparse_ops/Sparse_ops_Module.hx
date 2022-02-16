/* This file is generated, do not edit! */
package tensorflow.python.ops.sparse_ops;
@:pythonImport("tensorflow.python.ops.sparse_ops") extern class Sparse_ops_Module {
	/**
		Add an `N`-minibatch `SparseTensor` to a `SparseTensorsMap`, return `N` handles.
		
		A `SparseTensor` of rank `R` is represented by three tensors: `sparse_indices`,
		`sparse_values`, and `sparse_shape`, where
		
		```sparse_indices.shape[1] == sparse_shape.shape[0] == R```
		
		An `N`-minibatch of `SparseTensor` objects is represented as a `SparseTensor`
		having a first `sparse_indices` column taking values between `[0, N)`, where
		the minibatch size `N == sparse_shape[0]`.
		
		The input `SparseTensor` must have rank `R` greater than 1, and the first
		dimension is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The stored
		`SparseTensor` objects pointed to by each row of the output `sparse_handles`
		will have rank `R-1`.
		
		The `SparseTensor` values can then be read out as part of a minibatch by passing
		the given keys as vector elements to `TakeManySparseFromTensorsMap`.  To ensure
		the correct `SparseTensorsMap` is accessed, ensure that the same
		`container` and `shared_name` are passed to that Op.  If no `shared_name`
		is provided here, instead use the *name* of the Operation created by calling
		`AddManySparseToTensorsMap` as the `shared_name` passed to
		`TakeManySparseFromTensorsMap`.  Ensure the Operations are colocated.
		
		Args:
		  sparse_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the minibatch `SparseTensor`.
		    `sparse_indices[:, 0]` must be ordered values in `[0, N)`.
		  sparse_values: A `Tensor`.
		    1-D.  The `values` of the minibatch `SparseTensor`.
		  sparse_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the minibatch `SparseTensor`.
		    The minibatch size `N == sparse_shape[0]`.
		  container: An optional `string`. Defaults to `""`.
		    The container name for the `SparseTensorsMap` created by this op.
		  shared_name: An optional `string`. Defaults to `""`.
		    The shared name for the `SparseTensorsMap` created by this op.
		    If blank, the new Operation's unique name is used.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function AddManySparseToTensorsMap(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add a `SparseTensor` to a `SparseTensorsMap` return its handle.
		
		A `SparseTensor` is represented by three tensors: `sparse_indices`,
		`sparse_values`, and `sparse_shape`.
		
		This operator takes the given `SparseTensor` and adds it to a container
		object (a `SparseTensorsMap`).  A unique key within this container is generated
		in the form of an `int64`, and this is the value that is returned.
		
		The `SparseTensor` can then be read out as part of a minibatch by passing
		the key as a vector element to `TakeManySparseFromTensorsMap`.  To ensure
		the correct `SparseTensorsMap` is accessed, ensure that the same
		`container` and `shared_name` are passed to that Op.  If no `shared_name`
		is provided here, instead use the *name* of the Operation created by calling
		`AddSparseToTensorsMap` as the `shared_name` passed to
		`TakeManySparseFromTensorsMap`.  Ensure the Operations are colocated.
		
		Args:
		  sparse_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the `SparseTensor`.
		  sparse_values: A `Tensor`. 1-D.  The `values` of the `SparseTensor`.
		  sparse_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the `SparseTensor`.
		  container: An optional `string`. Defaults to `""`.
		    The container name for the `SparseTensorsMap` created by this op.
		  shared_name: An optional `string`. Defaults to `""`.
		    The shared name for the `SparseTensorsMap` created by this op.
		    If blank, the new Operation's unique name is used.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function AddSparseToTensorsMap(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deserialize and concatenate `SparseTensors` from a serialized minibatch.
		
		The input `serialized_sparse` must be a string matrix of shape `[N x 3]` where
		`N` is the minibatch size and the rows correspond to packed outputs of
		`SerializeSparse`.  The ranks of the original `SparseTensor` objects
		must all match.  When the final `SparseTensor` is created, it has rank one
		higher than the ranks of the incoming `SparseTensor` objects
		(they have been concatenated along a new row dimension).
		
		The output `SparseTensor` object's shape values for all dimensions but the
		first are the max across the input `SparseTensor` objects' shape values
		for the corresponding dimensions.  Its first shape value is `N`, the minibatch
		size.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `SparseReorder` to restore index ordering.
		
		For example, if the serialized input is a `[2 x 3]` matrix representing two
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
		  serialized_sparse: A `Tensor` of type `string`.
		    2-D, The `N` serialized `SparseTensor` objects.
		    Must have 3 columns.
		  dtype: A `tf.DType`. The `dtype` of the serialized `SparseTensor` objects.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_shape).
		
		  sparse_indices: A `Tensor` of type `int64`.
		  sparse_values: A `Tensor` of type `dtype`.
		  sparse_shape: A `Tensor` of type `int64`.
	**/
	static public function DeserializeManySparse(serialized_sparse:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deserialize `SparseTensor` objects.
		
		The input `serialized_sparse` must have the shape `[?, ?, ..., ?, 3]` where
		the last dimension stores serialized `SparseTensor` objects and the other N
		dimensions (N >= 0) correspond to a batch. The ranks of the original
		`SparseTensor` objects must all match. When the final `SparseTensor` is
		created, its rank is the rank of the incoming `SparseTensor` objects plus N;
		the sparse tensors have been concatenated along new dimensions, one for each
		batch.
		
		The output `SparseTensor` object's shape values for the original dimensions
		are the max across the input `SparseTensor` objects' shape values for the
		corresponding dimensions. The new dimensions match the size of the batch.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `SparseReorder` to restore index ordering.
		
		For example, if the serialized input is a `[2 x 3]` matrix representing two
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
		  serialized_sparse: A `Tensor`. Must be one of the following types: `string`, `variant`.
		    The serialized `SparseTensor` objects. The last dimension
		    must have 3 columns.
		  dtype: A `tf.DType`. The `dtype` of the serialized `SparseTensor` objects.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_shape).
		
		  sparse_indices: A `Tensor` of type `int64`.
		  sparse_values: A `Tensor` of type `dtype`.
		  sparse_shape: A `Tensor` of type `int64`.
	**/
	static public function DeserializeSparse(serialized_sparse:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Serialize an `N`-minibatch `SparseTensor` into an `[N, 3]` `Tensor` object.
		
		The `SparseTensor` must have rank `R` greater than 1, and the first dimension
		is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The serialized
		`SparseTensor` objects going into each row of `serialized_sparse` will have
		rank `R-1`.
		
		The minibatch size `N` is extracted from `sparse_shape[0]`.
		
		Args:
		  sparse_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the minibatch `SparseTensor`.
		  sparse_values: A `Tensor`.
		    1-D.  The `values` of the minibatch `SparseTensor`.
		  sparse_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the minibatch `SparseTensor`.
		  out_type: An optional `tf.DType` from: `tf.string, tf.variant`. Defaults to `tf.string`.
		    The `dtype` to use for serialization; the supported types are `string`
		    (default) and `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function SerializeManySparse(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Serialize a `SparseTensor` into a `[3]` `Tensor` object.
		
		Args:
		  sparse_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the `SparseTensor`.
		  sparse_values: A `Tensor`. 1-D.  The `values` of the `SparseTensor`.
		  sparse_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the `SparseTensor`.
		  out_type: An optional `tf.DType` from: `tf.string, tf.variant`. Defaults to `tf.string`.
		    The `dtype` to use for serialization; the supported types are `string`
		    (default) and `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function SerializeSparse(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds two `SparseTensor` objects to produce another `SparseTensor`.
		
		The input `SparseTensor` objects' indices are assumed ordered in standard
		lexicographic order.  If this is not the case, before this step run
		`SparseReorder` to restore index ordering.
		
		By default, if two values sum to zero at some index, the output `SparseTensor`
		would still include that particular location in its index, storing a zero in the
		corresponding value slot.  To override this, callers can specify `thresh`,
		indicating that if the sum has a magnitude strictly smaller than `thresh`, its
		corresponding value and index would then not be included.  In particular,
		`thresh == 0` (default) means everything is kept and actual thresholding happens
		only for a positive value.
		
		In the following shapes, `nnz` is the count after taking `thresh` into account.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the first `SparseTensor`, size `[nnz, ndims]` Matrix.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  The `values` of the first `SparseTensor`, size `[nnz]` Vector.
		  a_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the first `SparseTensor`, size `[ndims]` Vector.
		  b_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the second `SparseTensor`, size `[nnz, ndims]` Matrix.
		  b_values: A `Tensor`. Must have the same type as `a_values`.
		    1-D.  The `values` of the second `SparseTensor`, size `[nnz]` Vector.
		  b_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the second `SparseTensor`, size `[ndims]` Vector.
		  thresh: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    0-D.  The magnitude threshold that determines if an output value/index
		    pair takes space.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sum_indices, sum_values, sum_shape).
		
		  sum_indices: A `Tensor` of type `int64`.
		  sum_values: A `Tensor`. Has the same type as `a_values`.
		  sum_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseAdd(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, thresh:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The gradient operator for the SparseAdd op.
		
		The SparseAdd op calculates A + B, where A, B, and the sum are all represented
		as `SparseTensor` objects.  This op takes in the upstream gradient w.r.t.
		non-empty values of the sum, and outputs the gradients w.r.t. the non-empty
		values of A and B.
		
		Args:
		  backprop_val_grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D with shape `[nnz(sum)]`.  The gradient with respect to
		    the non-empty values of the sum.
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the `SparseTensor` A, size `[nnz(A), ndims]`.
		  b_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the `SparseTensor` B, size `[nnz(B), ndims]`.
		  sum_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the sum `SparseTensor`, size
		    `[nnz(sum), ndims]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (a_val_grad, b_val_grad).
		
		  a_val_grad: A `Tensor`. Has the same type as `backprop_val_grad`.
		  b_val_grad: A `Tensor`. Has the same type as `backprop_val_grad`.
	**/
	static public function SparseAddGrad(backprop_val_grad:Dynamic, a_indices:Dynamic, b_indices:Dynamic, sum_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concatenates a list of `SparseTensor` along the specified dimension.
		
		Concatenation is with respect to the dense versions of these sparse tensors.
		It is assumed that each input is a `SparseTensor` whose elements are ordered
		along increasing dimension number.
		
		All inputs' shapes must match, except for the concat dimension.  The
		`indices`, `values`, and `shapes` lists must have the same length.
		
		The output shape is identical to the inputs', except along the concat
		dimension, where it is the sum of the inputs' sizes along that dimension.
		
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
		
		Args:
		  indices: A list of at least 2 `Tensor` objects with type `int64`.
		    2-D.  Indices of each input `SparseTensor`.
		  values: A list with the same length as `indices` of `Tensor` objects with the same type.
		    1-D.  Non-empty values of each `SparseTensor`.
		  shapes: A list with the same length as `indices` of `Tensor` objects with type `int64`.
		    1-D.  Shapes of each `SparseTensor`.
		  concat_dim: An `int`.
		    Dimension to concatenate along. Must be in range [-rank, rank),
		    where rank is the number of dimensions in each input `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `values`.
		  output_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseConcat(indices:Dynamic, values:Dynamic, shapes:Dynamic, concat_dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates sparse cross from a list of sparse and dense tensors.
		
		The op takes two lists, one of 2D `SparseTensor` and one of 2D `Tensor`, each
		representing features of one feature column. It outputs a 2D `SparseTensor` with
		the batchwise crosses of these features.
		
		For example, if the inputs are
		
		    inputs[0]: SparseTensor with shape = [2, 2]
		    [0, 0]: "a"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		    inputs[1]: SparseTensor with shape = [2, 1]
		    [0, 0]: "d"
		    [1, 0]: "e"
		
		    inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be
		
		    shape = [2, 2]
		    [0, 0]: "a_X_d_X_f"
		    [1, 0]: "b_X_e_X_g"
		    [1, 1]: "c_X_e_X_g"
		
		if hashed_output=true then the output will be
		
		    shape = [2, 2]
		    [0, 0]: FingerprintCat64(
		                Fingerprint64("f"), FingerprintCat64(
		                    Fingerprint64("d"), Fingerprint64("a")))
		    [1, 0]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("b")))
		    [1, 1]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("c")))
		
		Args:
		  indices: A list of `Tensor` objects with type `int64`.
		    2-D.  Indices of each input `SparseTensor`.
		  values: A list of `Tensor` objects with types from: `int64`, `string`.
		    1-D.   values of each `SparseTensor`.
		  shapes: A list with the same length as `indices` of `Tensor` objects with type `int64`.
		    1-D.   Shapes of each `SparseTensor`.
		  dense_inputs: A list of `Tensor` objects with types from: `int64`, `string`.
		    2-D.    Columns represented by dense `Tensor`.
		  hashed_output: A `bool`.
		    If true, returns the hash of the cross instead of the string.
		    This will allow us avoiding string manipulations.
		  num_buckets: An `int` that is `>= 0`. It is used if hashed_output is true.
		    output = hashed_value%num_buckets if num_buckets > 0 else hashed_value.
		  hash_key: An `int`.
		    Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints.
		  out_type: A `tf.DType` from: `tf.int64, tf.string`.
		  internal_type: A `tf.DType` from: `tf.int64, tf.string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor` of type `out_type`.
		  output_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseCross(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, hash_key:Dynamic, out_type:Dynamic, internal_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates sparse cross from a list of sparse and dense tensors.
		
		The op takes two lists, one of 2D `SparseTensor` and one of 2D `Tensor`, each
		representing features of one feature column. It outputs a 2D `SparseTensor` with
		the batchwise crosses of these features.
		
		For example, if the inputs are
		
		    inputs[0]: SparseTensor with shape = [2, 2]
		    [0, 0]: "a"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		    inputs[1]: SparseTensor with shape = [2, 1]
		    [0, 0]: "d"
		    [1, 0]: "e"
		
		    inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be
		
		    shape = [2, 2]
		    [0, 0]: "a_X_d_X_f"
		    [1, 0]: "b_X_e_X_g"
		    [1, 1]: "c_X_e_X_g"
		
		if hashed_output=true then the output will be
		
		    shape = [2, 2]
		    [0, 0]: FingerprintCat64(
		                Fingerprint64("f"), FingerprintCat64(
		                    Fingerprint64("d"), Fingerprint64("a")))
		    [1, 0]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("b")))
		    [1, 1]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("c")))
		
		Args:
		  indices: A list of `Tensor` objects with type `int64`.
		    2-D.  Indices of each input `SparseTensor`.
		  values: A list of `Tensor` objects with types from: `int64`, `string`.
		    1-D.   values of each `SparseTensor`.
		  shapes: A list with the same length as `indices` of `Tensor` objects with type `int64`.
		    1-D.   Shapes of each `SparseTensor`.
		  dense_inputs: A list of `Tensor` objects with types from: `int64`, `string`.
		    2-D.    Columns represented by dense `Tensor`.
		  num_buckets: A `Tensor` of type `int64`.
		    It is used if hashed_output is true.
		    output = hashed_value%num_buckets if num_buckets > 0 else hashed_value.
		  strong_hash: A `Tensor` of type `bool`.
		    boolean, if true, siphash with salt will be used instead of farmhash.
		  salt: A `Tensor` of type `int64`.
		    Specify the salt that will be used by the siphash function.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor` of type `int64`.
		  output_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseCrossHashed(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, num_buckets:Dynamic, strong_hash:Dynamic, salt:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates sparse cross from a list of sparse and dense tensors.
		
		The op takes two lists, one of 2D `SparseTensor` and one of 2D `Tensor`, each
		representing features of one feature column. It outputs a 2D `SparseTensor` with
		the batchwise crosses of these features.
		
		For example, if the inputs are
		
		    inputs[0]: SparseTensor with shape = [2, 2]
		    [0, 0]: "a"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		    inputs[1]: SparseTensor with shape = [2, 1]
		    [0, 0]: "d"
		    [1, 0]: "e"
		
		    inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be
		
		    shape = [2, 2]
		    [0, 0]: "a_X_d_X_f"
		    [1, 0]: "b_X_e_X_g"
		    [1, 1]: "c_X_e_X_g"
		
		if hashed_output=true then the output will be
		
		    shape = [2, 2]
		    [0, 0]: FingerprintCat64(
		                Fingerprint64("f"), FingerprintCat64(
		                    Fingerprint64("d"), Fingerprint64("a")))
		    [1, 0]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("b")))
		    [1, 1]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("c")))
		
		Args:
		  indices: A list of `Tensor` objects with type `int64`.
		    2-D.  Indices of each input `SparseTensor`.
		  values: A list of `Tensor` objects with types from: `int64`, `string`.
		    1-D.   values of each `SparseTensor`.
		  shapes: A list with the same length as `indices` of `Tensor` objects with type `int64`.
		    1-D.   Shapes of each `SparseTensor`.
		  dense_inputs: A list of `Tensor` objects with types from: `int64`, `string`.
		    2-D.    Columns represented by dense `Tensor`.
		  sep: A `Tensor` of type `string`.
		    string used when joining a list of string inputs, can be used as separator later.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor` of type `string`.
		  output_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseCrossV2(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, sep:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds up a SparseTensor and a dense Tensor, using these special rules:
		
		(1) Broadcasts the dense side to have the same shape as the sparse side, if
		    eligible;
		(2) Then, only the dense values pointed to by the indices of the SparseTensor
		    participate in the cwise addition.
		
		By these rules, the result is a logical SparseTensor with exactly the same
		indices and shape, but possibly with different non-zero values.  The output of
		this Op is the resultant non-zero values.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
	**/
	static public function SparseDenseCwiseAdd(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Component-wise divides a SparseTensor by a dense Tensor.
		
		*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
		the other direction.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
	**/
	static public function SparseDenseCwiseDiv(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
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
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
	**/
	static public function SparseDenseCwiseMul(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fills empty rows in the input 2-D `SparseTensor` with a default value.
		
		The input `SparseTensor` is represented via the tuple of inputs
		(`indices`, `values`, `dense_shape`).  The output `SparseTensor` has the
		same `dense_shape` but with indices `output_indices` and values
		`output_values`.
		
		This op inserts a single entry for every row that doesn't have any values.
		The index is created as `[row, 0, ..., 0]` and the inserted value
		is `default_value`.
		
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
		
		The output `SparseTensor` will be in row-major order and will have the
		same shape as the input.
		
		This op also returns an indicator vector shaped `[dense_shape[0]]` such that
		
		    empty_row_indicator[i] = True iff row i was an empty row.
		
		And a reverse index map vector shaped `[indices.shape[0]]` that is used during
		backpropagation,
		
		    reverse_index_map[j] = out_j s.t. indices[j, :] == output_indices[out_j, :]
		
		Args:
		  indices: A `Tensor` of type `int64`.
		    2-D. the indices of the sparse tensor.
		  values: A `Tensor`. 1-D. the values of the sparse tensor.
		  dense_shape: A `Tensor` of type `int64`.
		    1-D. the shape of the sparse tensor.
		  default_value: A `Tensor`. Must have the same type as `values`.
		    0-D. default value to insert into location `[row, 0, ..., 0]`
		      for rows missing from the input sparse tensor.
		    output indices: 2-D. the indices of the filled sparse tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, empty_row_indicator, reverse_index_map).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `values`.
		  empty_row_indicator: A `Tensor` of type `bool`.
		  reverse_index_map: A `Tensor` of type `int64`.
	**/
	static public function SparseFillEmptyRows(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, default_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The gradient of SparseFillEmptyRows.
		
		Takes vectors reverse_index_map, shaped `[N]`, and grad_values,
		shaped `[N_full]`, where `N_full >= N` and copies data into either
		`d_values` or `d_default_value`.  Here `d_values` is shaped `[N]` and
		`d_default_value` is a scalar.
		
		  d_values[j] = grad_values[reverse_index_map[j]]
		  d_default_value = sum_{k : 0 .. N_full - 1} (
		     grad_values[k] * 1{k not in reverse_index_map})
		
		Args:
		  reverse_index_map: A `Tensor` of type `int64`.
		    1-D.  The reverse index map from SparseFillEmptyRows.
		  grad_values: A `Tensor`. 1-D.  The gradients from backprop.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (d_values, d_default_value).
		
		  d_values: A `Tensor`. Has the same type as `grad_values`.
		  d_default_value: A `Tensor`. Has the same type as `grad_values`.
	**/
	static public function SparseFillEmptyRowsGrad(reverse_index_map:Dynamic, grad_values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the max of elements across dimensions of a SparseTensor.
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_max()`.  In particular, this Op also returns a dense `Tensor`
		instead of a sparse one.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keep_dims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		which are interpreted according to the indexing rules in Python.
		
		Args:
		  input_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  input_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `input_indices`.
		  input_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  reduction_axes: A `Tensor` of type `int32`.
		    1-D.  Length-`K` vector containing the reduction axes.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input_values`.
	**/
	static public function SparseReduceMax(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the max of elements across dimensions of a SparseTensor.
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_max()`.  In contrast to SparseReduceMax, this Op returns a
		SparseTensor.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keep_dims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		which are interpreted according to the indexing rules in Python.
		
		Args:
		  input_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  input_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `input_indices`.
		  input_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  reduction_axes: A `Tensor` of type `int32`.
		    1-D.  Length-`K` vector containing the reduction axes.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `input_values`.
		  output_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseReduceMaxSparse(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
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
		which are interpreted according to the indexing rules in Python.
		
		Args:
		  input_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  input_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `input_indices`.
		  input_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  reduction_axes: A `Tensor` of type `int32`.
		    1-D.  Length-`K` vector containing the reduction axes.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input_values`.
	**/
	static public function SparseReduceSum(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a SparseTensor.
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_sum()`.  In contrast to SparseReduceSum, this Op returns a
		SparseTensor.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keep_dims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		which are interpreted according to the indexing rules in Python.
		
		Args:
		  input_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  input_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `input_indices`.
		  input_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  reduction_axes: A `Tensor` of type `int32`.
		    1-D.  Length-`K` vector containing the reduction axes.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `input_values`.
		  output_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseReduceSumSparse(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reorders a SparseTensor into the canonical, row-major ordering.
		
		Note that by convention, all sparse ops preserve the canonical ordering along
		increasing dimension number. The only time ordering can be violated is during
		manual manipulation of the indices and values vectors to add entries.
		
		Reordering does not affect the shape of the SparseTensor.
		
		If the tensor has rank `R` and `N` non-empty values, `input_indices` has
		shape `[N, R]`, input_values has length `N`, and input_shape has length `R`.
		
		Args:
		  input_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  input_values: A `Tensor`.
		    1-D.  `N` non-empty values corresponding to `input_indices`.
		  input_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `input_values`.
	**/
	static public function SparseReorder(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reshapes a SparseTensor to represent values in a new dense shape.
		
		This operation has the same semantics as reshape on the represented dense
		tensor.  The `input_indices` are recomputed based on the requested `new_shape`.
		
		If one component of `new_shape` is the special value -1, the size of that
		dimension is computed so that the total dense size remains constant.  At
		most one component of `new_shape` can be -1.  The number of dense elements
		implied by `new_shape` must be the same as the number of dense elements
		originally implied by `input_shape`.
		
		Reshaping does not affect the order of values in the SparseTensor.
		
		If the input tensor has rank `R_in` and `N` non-empty values, and `new_shape`
		has length `R_out`, then `input_indices` has shape `[N, R_in]`,
		`input_shape` has length `R_in`, `output_indices` has shape `[N, R_out]`, and
		`output_shape` has length `R_out`.
		
		Args:
		  input_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R_in` matrix with the indices of non-empty values in a
		    SparseTensor.
		  input_shape: A `Tensor` of type `int64`.
		    1-D.  `R_in` vector with the input SparseTensor's dense shape.
		  new_shape: A `Tensor` of type `int64`.
		    1-D.  `R_out` vector with the requested new dense shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseReshape(input_indices:Dynamic, input_shape:Dynamic, new_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Slice a `SparseTensor` based on the `start` and `size`.
		
		For example, if the input is
		
		    input_tensor = shape = [2, 7]
		    [    a   d e  ]
		    [b c          ]
		
		Graphically the output tensors are:
		
		    sparse_slice([0, 0], [2, 4]) = shape = [2, 4]
		    [    a  ]
		    [b c    ]
		
		    sparse_slice([0, 4], [2, 3]) = shape = [2, 3]
		    [ d e  ]
		    [      ]
		
		Args:
		  indices: A `Tensor` of type `int64`.
		    2-D tensor represents the indices of the sparse tensor.
		  values: A `Tensor`. 1-D tensor represents the values of the sparse tensor.
		  shape: A `Tensor` of type `int64`.
		    1-D. tensor represents the shape of the sparse tensor.
		  start: A `Tensor` of type `int64`.
		    1-D. tensor represents the start of the slice.
		  size: A `Tensor` of type `int64`.
		    1-D. tensor represents the size of the slice.
		    output indices: A list of 1-D tensors represents the indices of the output
		    sparse tensors.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `values`.
		  output_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseSlice(indices:Dynamic, values:Dynamic, shape:Dynamic, start:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The gradient operator for the SparseSlice op.
		
		This op takes in the upstream gradient w.r.t. non-empty values of
		the sliced `SparseTensor`, and outputs the gradients w.r.t.
		the non-empty values of input `SparseTensor`.
		
		Args:
		  backprop_val_grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D. The gradient with respect to
		    the non-empty values of the sliced `SparseTensor`.
		  input_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the input `SparseTensor`.
		  input_start: A `Tensor` of type `int64`.
		    1-D. tensor represents the start of the slice.
		  output_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the sliced `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `backprop_val_grad`.
	**/
	static public function SparseSliceGrad(backprop_val_grad:Dynamic, input_indices:Dynamic, input_start:Dynamic, output_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies softmax to a batched N-D `SparseTensor`.
		
		The inputs represent an N-D SparseTensor  with logical shape `[..., B, C]`
		(where `N >= 2`), and with indices sorted in the canonical lexicographic order.
		
		This op is equivalent to applying the normal `tf.nn.softmax()` to each innermost
		logical submatrix with shape `[B, C]`, but with the catch that *the implicitly
		zero elements do not participate*.  Specifically, the algorithm is equivalent
		to the following:
		
		  (1) Applies `tf.nn.softmax()` to a densified view of each innermost submatrix
		      with shape `[B, C]`, along the size-C dimension;
		  (2) Masks out the original implicitly-zero locations;
		  (3) Renormalizes the remaining elements.
		
		Hence, the `SparseTensor` result has exactly the same non-zero indices and
		shape.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `NNZ x R` matrix with the indices of non-empty values in a
		    SparseTensor, in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    1-D.  `NNZ` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
	**/
	static public function SparseSoftmax(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise max of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, in the canonical lexicographic ordering.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `a_values`.
	**/
	static public function SparseSparseMaximum(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise min of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, in the canonical lexicographic ordering.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `a_values`.
	**/
	static public function SparseSparseMinimum(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Split a `SparseTensor` into `num_split` tensors along one dimension.
		
		If the `shape[split_dim]` is not an integer multiple of `num_split`. Slices
		`[0 : shape[split_dim] % num_split]` gets one extra dimension.
		For example, if `split_dim = 1` and `num_split = 2` and the input is
		
		    input_tensor = shape = [2, 7]
		    [    a   d e  ]
		    [b c          ]
		
		Graphically the output tensors are:
		
		    output_tensor[0] = shape = [2, 4]
		    [    a  ]
		    [b c    ]
		
		    output_tensor[1] = shape = [2, 3]
		    [ d e  ]
		    [      ]
		
		Args:
		  split_dim: A `Tensor` of type `int64`.
		    0-D.  The dimension along which to split.  Must be in the range
		    `[0, rank(shape))`.
		  indices: A `Tensor` of type `int64`.
		    2-D tensor represents the indices of the sparse tensor.
		  values: A `Tensor`. 1-D tensor represents the values of the sparse tensor.
		  shape: A `Tensor` of type `int64`.
		    1-D. tensor represents the shape of the sparse tensor.
		    output indices: A list of 1-D tensors represents the indices of the output
		    sparse tensors.
		  num_split: An `int` that is `>= 1`. The number of ways to split.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A list of `num_split` `Tensor` objects with type `int64`.
		  output_values: A list of `num_split` `Tensor` objects with the same type as `values`.
		  output_shape: A list of `num_split` `Tensor` objects with type `int64`.
	**/
	static public function SparseSplit(split_dim:Dynamic, indices:Dynamic, values:Dynamic, shape:Dynamic, num_split:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds up a `SparseTensor` and a dense `Tensor`, producing a dense `Tensor`.
		
		This Op does not require `a_indices` be sorted in standard lexicographic order.
		
		Args:
		  a_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D.  The `indices` of the `SparseTensor`, with shape `[nnz, ndims]`.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  The `values` of the `SparseTensor`, with shape `[nnz]`.
		  a_shape: A `Tensor`. Must have the same type as `a_indices`.
		    1-D.  The `shape` of the `SparseTensor`, with shape `[ndims]`.
		  b: A `Tensor`. Must have the same type as `a_values`.
		    `ndims`-D Tensor.  With shape `a_shape`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a_values`.
	**/
	static public function SparseTensorDenseAdd(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiply SparseTensor (of rank 2) "A" by dense matrix "B".
		
		No validity checking is performed on the indices of A.  However, the following
		input format is recommended for optimal behavior:
		
		if adjoint_a == false:
		  A should be sorted in lexicographically increasing order.  Use SparseReorder
		  if you're not sure.
		if adjoint_a == true:
		  A should be sorted in order of increasing dimension 1 (i.e., "column major"
		  order instead of "row major" order).
		
		Args:
		  a_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D.  The `indices` of the `SparseTensor`, size `[nnz, 2]` Matrix.
		  a_values: A `Tensor`.
		    1-D.  The `values` of the `SparseTensor`, size `[nnz]` Vector.
		  a_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the `SparseTensor`, size `[2]` Vector.
		  b: A `Tensor`. Must have the same type as `a_values`.
		    2-D.  A dense Matrix.
		  adjoint_a: An optional `bool`. Defaults to `False`.
		    Use the adjoint of A in the matrix multiply.  If A is complex, this
		    is transpose(conj(A)).  Otherwise it's transpose(A).
		  adjoint_b: An optional `bool`. Defaults to `False`.
		    Use the adjoint of B in the matrix multiply.  If B is complex, this
		    is transpose(conj(B)).  Otherwise it's transpose(B).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a_values`.
	**/
	static public function SparseTensorDenseMatMul(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a sparse representation into a dense tensor.
		
		Builds an array `dense` with shape `output_shape` such that
		
		```
		# If sparse_indices is scalar
		dense[i] = (i == sparse_indices ? sparse_values : default_value)
		
		# If sparse_indices is a vector, then for each i
		dense[sparse_indices[i]] = sparse_values[i]
		
		# If sparse_indices is an n by d matrix, then for each i in [0, n)
		dense[sparse_indices[i][0], ..., sparse_indices[i][d-1]] = sparse_values[i]
		```
		
		All other values in `dense` are set to `default_value`.  If `sparse_values` is a
		scalar, all sparse indices are set to this single value.
		
		Indices should be sorted in lexicographic order, and indices must not
		contain any repeats. If `validate_indices` is true, these properties
		are checked during execution.
		
		Args:
		  sparse_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D, 1-D, or 2-D.  `sparse_indices[i]` contains the complete
		    index where `sparse_values[i]` will be placed.
		  output_shape: A `Tensor`. Must have the same type as `sparse_indices`.
		    1-D.  Shape of the dense output tensor.
		  sparse_values: A `Tensor`.
		    1-D.  Values corresponding to each row of `sparse_indices`,
		    or a scalar value to be used for all sparse indices.
		  default_value: A `Tensor`. Must have the same type as `sparse_values`.
		    Scalar value to set for indices not specified in
		    `sparse_indices`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		    If true, indices are checked to make sure they are sorted in
		    lexicographic order and that there are no repeats.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sparse_values`.
	**/
	static public function SparseToDense(sparse_indices:Dynamic, output_shape:Dynamic, sparse_values:Dynamic, default_value:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Read `SparseTensors` from a `SparseTensorsMap` and concatenate them.
		
		The input `sparse_handles` must be an `int64` matrix of shape `[N, 1]` where
		`N` is the minibatch size and the rows correspond to the output handles of
		`AddSparseToTensorsMap` or `AddManySparseToTensorsMap`.  The ranks of the
		original `SparseTensor` objects that went into the given input ops must all
		match.  When the final `SparseTensor` is created, it has rank one
		higher than the ranks of the incoming `SparseTensor` objects
		(they have been concatenated along a new row dimension on the left).
		
		The output `SparseTensor` object's shape values for all dimensions but the
		first are the max across the input `SparseTensor` objects' shape values
		for the corresponding dimensions.  Its first shape value is `N`, the minibatch
		size.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `SparseReorder` to restore index ordering.
		
		For example, if the handles represent an input, which is a `[2, 3]` matrix
		representing two original `SparseTensor` objects:
		
		```
		    index = [ 0]
		            [10]
		            [20]
		    values = [1, 2, 3]
		    shape = [50]
		```
		
		and
		
		```
		    index = [ 2]
		            [10]
		    values = [4, 5]
		    shape = [30]
		```
		
		then the final `SparseTensor` will be:
		
		```
		    index = [0  0]
		            [0 10]
		            [0 20]
		            [1  2]
		            [1 10]
		    values = [1, 2, 3, 4, 5]
		    shape = [2 50]
		```
		
		Args:
		  sparse_handles: A `Tensor` of type `int64`.
		    1-D, The `N` serialized `SparseTensor` objects.
		    Shape: `[N]`.
		  dtype: A `tf.DType`.
		    The `dtype` of the `SparseTensor` objects stored in the
		    `SparseTensorsMap`.
		  container: An optional `string`. Defaults to `""`.
		    The container name for the `SparseTensorsMap` read by this op.
		  shared_name: An optional `string`. Defaults to `""`.
		    The shared name for the `SparseTensorsMap` read by this op.
		    It should not be blank; rather the `shared_name` or unique Operation name
		    of the Op that created the original `SparseTensorsMap` should be used.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_shape).
		
		  sparse_indices: A `Tensor` of type `int64`.
		  sparse_values: A `Tensor` of type `dtype`.
		  sparse_shape: A `Tensor` of type `int64`.
	**/
	static public function TakeManySparseFromTensorsMap(sparse_handles:Dynamic, dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var _DEFAULT_HASH_KEY : Dynamic;
	static public var _UNARY_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function _add_many_sparse_to_tensors_map(sp_input:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function _add_sparse_to_tensors_map(sp_input:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Check that all of `sparse_tensors` have same `indices` and `dense_shape`.
		
		Args:
		  sparse_tensors: A list of sparse tensors.
		
		Returns:
		  An op to be used as a control dependency.
	**/
	static public function _assert_sparse_compatible(sparse_tensors:Dynamic):Dynamic;
	/**
		Convert `sp_input` to `SparseTensor` and return it.
		
		Args:
		  sp_input: `SparseTensor` or `SparseTensorValue`.
		
		Returns:
		  `sp_input` converted to `SparseTensor`.
		
		Raises:
		  ValueError: if `sp_input` is neither `SparseTensor` nor `SparseTensorValue`.
	**/
	static public function _convert_to_sparse_tensor(sp_input:Dynamic):Dynamic;
	/**
		Convert `sp_inputs` to `SparseTensor` objects and return them.
		
		Args:
		  sp_inputs: `list` or `tuple` of `SparseTensor` or `SparseTensorValue`
		    objects.
		
		Returns:
		  `sp_inputs` converted to `SparseTensor` objects.
		
		Raises:
		  ValueError: if any item in `sp_inputs` is neither `SparseTensor` nor
		    `SparseTensorValue`.
	**/
	static public function _convert_to_sparse_tensors(sp_inputs:Dynamic):Dynamic;
	static public function _make_int64_tensor(value:Dynamic, name:Dynamic):Dynamic;
	/**
		Replace `SparseTensor`s with their values in `value`
		
		Each `SparseTensor` in `value` is replaced by its `values` tensor, and
		collects all `SparseTensor`s in `sparse_list`.
		
		Args:
		  value: A structure of `Tensor`s and `SparseTensor`s
		  sparse_list: A list. Output parameter that collects all `SparseTensor`s in
		    `value`.
		
		Returns:
		  `value` with each SparseTensor replaced by its `.value` attribute.
	**/
	static public function _replace_sparse_with_values(value:Dynamic, sparse_list:Dynamic):Dynamic;
	/**
		Generates sparse cross from a list of sparse and dense tensors.
		
		For example, if the inputs are
		
		    * inputs[0]: SparseTensor with shape = [2, 2]
		      [0, 0]: "a"
		      [1, 0]: "b"
		      [1, 1]: "c"
		    * inputs[1]: SparseTensor with shape = [2, 1]
		      [0, 0]: "d"
		      [1, 0]: "e"
		    * inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be:
		
		    shape = [2, 2]
		    [0, 0]: "a_X_d_X_f"
		    [1, 0]: "b_X_e_X_g"
		    [1, 1]: "c_X_e_X_g"
		
		Customized separator "_Y_":
		
		>>> inp_0 = tf.constant([['a'], ['b']])
		>>> inp_1 = tf.constant([['c'], ['d']])
		>>> output = tf.sparse.cross([inp_0, inp_1], separator='_Y_')
		>>> output.values
		<tf.Tensor: shape=(2,), dtype=string, numpy=array([b'a_Y_c', b'b_Y_d'],
		  dtype=object)>
		
		
		Args:
		  inputs: An iterable of `Tensor` or `SparseTensor`.
		  name: Optional name for the op.
		  separator: A string added between each string being joined. Defaults to
		    '_X_'.
		
		Returns:
		  A `SparseTensor` of type `string`.
	**/
	static public function _sparse_cross(inputs:Dynamic, ?name:Dynamic, ?separator:Dynamic):Dynamic;
	/**
		Generates hashed sparse cross from a list of sparse and dense tensors.
		
		For example, if the inputs are
		
		    * inputs[0]: SparseTensor with shape = [2, 2]
		      [0, 0]: "a"
		      [1, 0]: "b"
		      [1, 1]: "c"
		    * inputs[1]: SparseTensor with shape = [2, 1]
		      [0, 0]: "d"
		      [1, 0]: "e"
		    * inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be:
		
		    shape = [2, 2]
		    [0, 0]: FingerprintCat64(
		                Fingerprint64("f"), FingerprintCat64(
		                    Fingerprint64("d"), Fingerprint64("a")))
		    [1, 0]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("b")))
		    [1, 1]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("c")))
		
		Args:
		  inputs: An iterable of `Tensor` or `SparseTensor`.
		  num_buckets: An `int` that is `>= 0`.
		    output = hashed_value%num_buckets if num_buckets > 0 else hashed_value.
		  hash_key: Integer hash_key that will be used by the `FingerprintCat64`
		    function. If not given, will use a default key.
		  name: Optional name for the op.
		
		Returns:
		  A `SparseTensor` of type `int64`.
	**/
	static public function _sparse_cross_hashed(inputs:Dynamic, ?num_buckets:Dynamic, ?hash_key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See gen_sparse_ops.sparse_cross.
	**/
	static public function _sparse_cross_internal(inputs:Dynamic, ?hashed_output:Dynamic, ?num_buckets:Dynamic, ?hash_key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See gen_sparse_ops.sparse_cross_v2.
	**/
	static public function _sparse_cross_internal_v2(inputs:Dynamic):Dynamic;
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
	static public function _take_many_sparse_from_tensors_map(sparse_map_op:Dynamic, sparse_handles:Dynamic, ?rank:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Add an `N`-minibatch `SparseTensor` to a `SparseTensorsMap`, return `N` handles.
		
		A `SparseTensor` of rank `R` is represented by three tensors: `sparse_indices`,
		`sparse_values`, and `sparse_shape`, where
		
		```sparse_indices.shape[1] == sparse_shape.shape[0] == R```
		
		An `N`-minibatch of `SparseTensor` objects is represented as a `SparseTensor`
		having a first `sparse_indices` column taking values between `[0, N)`, where
		the minibatch size `N == sparse_shape[0]`.
		
		The input `SparseTensor` must have rank `R` greater than 1, and the first
		dimension is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The stored
		`SparseTensor` objects pointed to by each row of the output `sparse_handles`
		will have rank `R-1`.
		
		The `SparseTensor` values can then be read out as part of a minibatch by passing
		the given keys as vector elements to `TakeManySparseFromTensorsMap`.  To ensure
		the correct `SparseTensorsMap` is accessed, ensure that the same
		`container` and `shared_name` are passed to that Op.  If no `shared_name`
		is provided here, instead use the *name* of the Operation created by calling
		`AddManySparseToTensorsMap` as the `shared_name` passed to
		`TakeManySparseFromTensorsMap`.  Ensure the Operations are colocated.
		
		Args:
		  sparse_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the minibatch `SparseTensor`.
		    `sparse_indices[:, 0]` must be ordered values in `[0, N)`.
		  sparse_values: A `Tensor`.
		    1-D.  The `values` of the minibatch `SparseTensor`.
		  sparse_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the minibatch `SparseTensor`.
		    The minibatch size `N == sparse_shape[0]`.
		  container: An optional `string`. Defaults to `""`.
		    The container name for the `SparseTensorsMap` created by this op.
		  shared_name: An optional `string`. Defaults to `""`.
		    The shared name for the `SparseTensorsMap` created by this op.
		    If blank, the new Operation's unique name is used.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function add_many_sparse_to_tensors_map(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function add_many_sparse_to_tensors_map_eager_fallback(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, container:Dynamic, shared_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Add a `SparseTensor` to a `SparseTensorsMap` return its handle.
		
		A `SparseTensor` is represented by three tensors: `sparse_indices`,
		`sparse_values`, and `sparse_shape`.
		
		This operator takes the given `SparseTensor` and adds it to a container
		object (a `SparseTensorsMap`).  A unique key within this container is generated
		in the form of an `int64`, and this is the value that is returned.
		
		The `SparseTensor` can then be read out as part of a minibatch by passing
		the key as a vector element to `TakeManySparseFromTensorsMap`.  To ensure
		the correct `SparseTensorsMap` is accessed, ensure that the same
		`container` and `shared_name` are passed to that Op.  If no `shared_name`
		is provided here, instead use the *name* of the Operation created by calling
		`AddSparseToTensorsMap` as the `shared_name` passed to
		`TakeManySparseFromTensorsMap`.  Ensure the Operations are colocated.
		
		Args:
		  sparse_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the `SparseTensor`.
		  sparse_values: A `Tensor`. 1-D.  The `values` of the `SparseTensor`.
		  sparse_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the `SparseTensor`.
		  container: An optional `string`. Defaults to `""`.
		    The container name for the `SparseTensorsMap` created by this op.
		  shared_name: An optional `string`. Defaults to `""`.
		    The shared name for the `SparseTensorsMap` created by this op.
		    If blank, the new Operation's unique name is used.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function add_sparse_to_tensors_map(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function add_sparse_to_tensors_map_eager_fallback(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, container:Dynamic, shared_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
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
	static public function deserialize_many_sparse_eager_fallback(serialized_sparse:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Deserialize `SparseTensor` objects.
		
		The input `serialized_sparse` must have the shape `[?, ?, ..., ?, 3]` where
		the last dimension stores serialized `SparseTensor` objects and the other N
		dimensions (N >= 0) correspond to a batch. The ranks of the original
		`SparseTensor` objects must all match. When the final `SparseTensor` is
		created, its rank is the rank of the incoming `SparseTensor` objects plus N;
		the sparse tensors have been concatenated along new dimensions, one for each
		batch.
		
		The output `SparseTensor` object's shape values for the original dimensions
		are the max across the input `SparseTensor` objects' shape values for the
		corresponding dimensions. The new dimensions match the size of the batch.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `SparseReorder` to restore index ordering.
		
		For example, if the serialized input is a `[2 x 3]` matrix representing two
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
		  serialized_sparse: The serialized `SparseTensor` objects.
		    The last dimension must have 3 columns.
		  dtype: The `dtype` of the serialized `SparseTensor` objects.
		  rank: (optional) Python int, the rank of the `SparseTensor` objects.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `SparseTensor` representing the deserialized `SparseTensor` objects.
	**/
	static public function deserialize_sparse(serialized_sparse:Dynamic, dtype:Dynamic, ?rank:Dynamic, ?name:Dynamic):Dynamic;
	static public function deserialize_sparse_eager_fallback(serialized_sparse:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Converts a dense tensor into a sparse tensor.
		
		Only elements not equal to zero will be present in the result. The resulting
		`SparseTensor` has the same dtype and shape as the input.
		
		>>> sp = tf.sparse.from_dense([0, 0, 3, 0, 1])
		>>> sp.shape.as_list()
		[5]
		>>> sp.values.numpy()
		array([3, 1], dtype=int32)
		>>> sp.indices.numpy()
		array([[2],
		       [4]])
		
		Args:
		  tensor: A dense `Tensor` to be converted to a `SparseTensor`.
		  name: Optional name for the op.
		
		Returns:
		  The `SparseTensor`.
	**/
	static public function from_dense(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get canonical name for the API symbol.
		
		Args:
		  symbol: API function or class.
		  api_name: API name (tensorflow or estimator).
		  add_prefix_to_v1_names: Specifies whether a name available only in V1
		    should be prefixed with compat.v1.
		
		Returns:
		  Canonical name for the API symbol (for e.g. initializers.zeros) if
		  canonical name could be determined. Otherwise, returns None.
	**/
	static public function get_canonical_name_for_symbol(symbol:Dynamic, ?api_name:Dynamic, ?add_prefix_to_v1_names:Dynamic):Dynamic;
	/**
		Applies `op` to the `.values` tensor of one or more `SparseTensor`s.
		
		Replaces any `SparseTensor` in `args` or `kwargs` with its `values`
		tensor (which contains the non-default values for the SparseTensor),
		and then calls `op`.  Returns a `SparseTensor` that is constructed
		from the input `SparseTensor`s' `indices`, `dense_shape`, and the
		value returned by the `op`.
		
		If the input arguments contain multiple `SparseTensor`s, then they must have
		equal `indices` and dense shapes.
		
		Examples:
		
		>>> s = tf.sparse.from_dense([[1, 2, 0],
		...                           [0, 4, 0],
		...                           [1, 0, 0]])
		>>> tf.sparse.to_dense(tf.sparse.map_values(tf.ones_like, s)).numpy()
		array([[1, 1, 0],
		       [0, 1, 0],
		       [1, 0, 0]], dtype=int32)
		
		>>> tf.sparse.to_dense(tf.sparse.map_values(tf.multiply, s, s)).numpy()
		array([[ 1,  4,  0],
		       [ 0, 16,  0],
		       [ 1,  0,  0]], dtype=int32)
		
		>>> tf.sparse.to_dense(tf.sparse.map_values(tf.add, s, 5)).numpy()
		array([[6, 7, 0],
		       [0, 9, 0],
		       [6, 0, 0]], dtype=int32)
		
		Note: even though `tf.add(0, 5) != 0`, implicit zeros
		will remain unchanged. However, if the sparse tensor contains any explict
		zeros, these will be affected by the mapping!
		
		Args:
		  op: The operation that should be applied to the SparseTensor `values`. `op`
		    is typically an element-wise operation (such as math_ops.add), but any
		    operation that preserves the shape can be used.
		  *args: Arguments for `op`.
		  **kwargs: Keyword arguments for `op`.
		
		Returns:
		  A `SparseTensor` whose `indices` and `dense_shape` matches the `indices`
		  and `dense_shape` of all input `SparseTensor`s.
		Raises:
		  ValueError: If args contains no `SparseTensor`, or if the `indices`
		    or `dense_shape`s of the input `SparseTensor`s are not equal.
	**/
	static public function map_values(op:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Serialize `N`-minibatch `SparseTensor` into an `[N, 3]` `Tensor`.
		
		The `SparseTensor` must have rank `R` greater than 1, and the first dimension
		is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The serialized
		`SparseTensor` objects going into each row of the output `Tensor` will have
		rank `R-1`.
		
		The minibatch size `N` is extracted from `sparse_shape[0]`.
		
		Args:
		  sp_input: The input rank `R` `SparseTensor`.
		  name: A name prefix for the returned tensors (optional).
		  out_type: The `dtype` to use for serialization.
		
		Returns:
		  A matrix (2-D `Tensor`) with `N` rows and `3` columns. Each column
		  represents serialized `SparseTensor`'s indices, values, and shape
		  (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_many_sparse(sp_input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	static public function serialize_many_sparse_eager_fallback(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Serialize `N`-minibatch `SparseTensor` into an `[N, 3]` `Tensor`.
		
		The `SparseTensor` must have rank `R` greater than 1, and the first dimension
		is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The serialized
		`SparseTensor` objects going into each row of the output `Tensor` will have
		rank `R-1`.
		
		The minibatch size `N` is extracted from `sparse_shape[0]`.
		
		Args:
		  sp_input: The input rank `R` `SparseTensor`.
		  out_type: The `dtype` to use for serialization.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A matrix (2-D `Tensor`) with `N` rows and `3` columns. Each column
		  represents serialized `SparseTensor`'s indices, values, and shape
		  (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_many_sparse_v2(sp_input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Serialize a `SparseTensor` into a 3-vector (1-D `Tensor`) object.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  name: A name prefix for the returned tensors (optional).
		  out_type: The `dtype` to use for serialization.
		
		Returns:
		  A 3-vector (1-D `Tensor`), with each column representing the serialized
		  `SparseTensor`'s indices, values, and shape (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_sparse(sp_input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	static public function serialize_sparse_eager_fallback(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Serialize a `SparseTensor` into a 3-vector (1-D `Tensor`) object.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  out_type: The `dtype` to use for serialization.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A 3-vector (1-D `Tensor`), with each column representing the serialized
		  `SparseTensor`'s indices, values, and shape (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_sparse_v2(sp_input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds two tensors, at least one of each is a `SparseTensor`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(thresh)`. They will be removed in a future version.
		Instructions for updating:
		thresh is deprecated, use threshold instead
		
		If one `SparseTensor` and one `Tensor` are passed in, returns a `Tensor`.  If
		both arguments are `SparseTensor`s, this returns a `SparseTensor`.  The order
		of arguments does not matter.  Use vanilla `tf.add()` for adding two dense
		`Tensor`s.
		
		The shapes of the two operands must match: broadcasting is not supported.
		
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
		
		* `thresh == 0` (the default): all 5 index/value pairs will be returned.
		* `thresh == 0.11`: only .1 and 0 will vanish, and the remaining three
		    index/value pairs will be returned.
		* `thresh == 0.21`: .1, 0, and -.2 will vanish.
		
		Args:
		  a: The first operand; `SparseTensor` or `Tensor`.
		  b: The second operand; `SparseTensor` or `Tensor`. At least one operand
		    must be sparse.
		  threshold: An optional 0-D `Tensor` (defaults to `0`). The magnitude
		    threshold that determines if an output value/index pair takes space. Its
		    dtype should match that of the values if they are real; if the latter are
		    complex64/complex128, then the dtype should be float32/float64,
		    correspondingly.
		  thresh: Deprecated alias for `threshold`.
		
		Returns:
		  A `SparseTensor` or a `Tensor`, representing the sum.
		
		Raises:
		  TypeError: If both `a` and `b` are `Tensor`s.  Use `tf.add()` instead.
	**/
	static public function sparse_add(a:Dynamic, b:Dynamic, ?threshold:Dynamic, ?thresh:Dynamic):Dynamic;
	static public function sparse_add_eager_fallback(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, thresh:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		The gradient operator for the SparseAdd op.
		
		The SparseAdd op calculates A + B, where A, B, and the sum are all represented
		as `SparseTensor` objects.  This op takes in the upstream gradient w.r.t.
		non-empty values of the sum, and outputs the gradients w.r.t. the non-empty
		values of A and B.
		
		Args:
		  backprop_val_grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D with shape `[nnz(sum)]`.  The gradient with respect to
		    the non-empty values of the sum.
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the `SparseTensor` A, size `[nnz(A), ndims]`.
		  b_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the `SparseTensor` B, size `[nnz(B), ndims]`.
		  sum_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the sum `SparseTensor`, size
		    `[nnz(sum), ndims]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (a_val_grad, b_val_grad).
		
		  a_val_grad: A `Tensor`. Has the same type as `backprop_val_grad`.
		  b_val_grad: A `Tensor`. Has the same type as `backprop_val_grad`.
	**/
	static public function sparse_add_grad(backprop_val_grad:Dynamic, a_indices:Dynamic, b_indices:Dynamic, sum_indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_add_grad_eager_fallback(backprop_val_grad:Dynamic, a_indices:Dynamic, b_indices:Dynamic, sum_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Adds two tensors, at least one of each is a `SparseTensor`.
		
		If one `SparseTensor` and one `Tensor` are passed in, returns a `Tensor`.  If
		both arguments are `SparseTensor`s, this returns a `SparseTensor`.  The order
		of arguments does not matter.  Use vanilla `tf.add()` for adding two dense
		`Tensor`s.
		
		The shapes of the two operands must match: broadcasting is not supported.
		
		The indices of any input `SparseTensor` are assumed ordered in standard
		lexicographic order.  If this is not the case, before this step run
		`SparseReorder` to restore index ordering.
		
		If both arguments are sparse, we perform "clipping" as follows.  By default,
		if two values sum to zero at some index, the output `SparseTensor` would still
		include that particular location in its index, storing a zero in the
		corresponding value slot.  To override this, callers can specify `threshold`,
		indicating that if the sum has a magnitude strictly smaller than `threshold`,
		its corresponding value and index would then not be included.  In particular,
		`threshold == 0.0` (default) means everything is kept and actual thresholding
		happens only for a positive value.
		
		For example, suppose the logical sum of two sparse operands is (densified):
		
		    [       2]
		    [.1     0]
		    [ 6   -.2]
		
		Then,
		
		* `threshold == 0` (the default): all 5 index/value pairs will be
		    returned.
		* `threshold == 0.11`: only .1 and 0 will vanish, and the remaining three
		    index/value pairs will be returned.
		* `threshold == 0.21`: .1, 0, and -.2 will vanish.
		
		Args:
		  a: The first operand; `SparseTensor` or `Tensor`.
		  b: The second operand; `SparseTensor` or `Tensor`. At least one operand
		    must be sparse.
		  threshold: A 0-D `Tensor`. The magnitude threshold that determines if an
		    output value/index pair takes space. Its dtype should match that of the
		    values if they are real; if the latter are complex64/complex128, then the
		    dtype should be float32/float64, correspondingly.
		
		Returns:
		  A `SparseTensor` or a `Tensor`, representing the sum.
		
		Raises:
		  TypeError: If both `a` and `b` are `Tensor`s.  Use `tf.add()` instead.
	**/
	static public function sparse_add_v2(a:Dynamic, b:Dynamic, ?threshold:Dynamic):Dynamic;
	/**
		Concatenates a list of `SparseTensor` along the specified dimension. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(concat_dim)`. They will be removed in a future version.
		Instructions for updating:
		concat_dim is deprecated, use axis instead
		
		Concatenation is with respect to the dense versions of each sparse input.
		It is assumed that each inputs is a `SparseTensor` whose elements are ordered
		along increasing dimension number.
		
		If expand_nonconcat_dim is False, all inputs' shapes must match, except for
		the concat dimension. If expand_nonconcat_dim is True, then inputs' shapes are
		allowed to vary among all inputs.
		
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
		
		For example, if `axis = 1` and the inputs are
		
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
		
		Another example, if 'axis = 1' and the inputs are
		
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
		  axis: Dimension to concatenate along. Must be in range [-rank, rank),
		    where rank is the number of dimensions in each input `SparseTensor`.
		  sp_inputs: List of `SparseTensor` to concatenate.
		  name: A name prefix for the returned tensors (optional).
		  expand_nonconcat_dim: Whether to allow the expansion in the non-concat
		    dimensions. Defaulted to False.
		  concat_dim: The old (deprecated) name for axis.
		  expand_nonconcat_dims: alias for expand_nonconcat_dim
		
		Returns:
		  A `SparseTensor` with the concatenated output.
		
		Raises:
		  TypeError: If `sp_inputs` is not a list of `SparseTensor`.
	**/
	static public function sparse_concat(axis:Dynamic, sp_inputs:Dynamic, ?name:Dynamic, ?expand_nonconcat_dim:Dynamic, ?concat_dim:Dynamic, ?expand_nonconcat_dims:Dynamic):Dynamic;
	static public function sparse_concat_eager_fallback(indices:Dynamic, values:Dynamic, shapes:Dynamic, concat_dim:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Concatenates a list of `SparseTensor` along the specified dimension. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(concat_dim)`. They will be removed in a future version.
		Instructions for updating:
		concat_dim is deprecated, use axis instead
		
		Concatenation is with respect to the dense versions of each sparse input.
		It is assumed that each inputs is a `SparseTensor` whose elements are ordered
		along increasing dimension number.
		
		If expand_nonconcat_dim is False, all inputs' shapes must match, except for
		the concat dimension. If expand_nonconcat_dim is True, then inputs' shapes are
		allowed to vary among all inputs.
		
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
		
		For example, if `axis = 1` and the inputs are
		
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
		
		Another example, if 'axis = 1' and the inputs are
		
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
		  axis: Dimension to concatenate along. Must be in range [-rank, rank),
		    where rank is the number of dimensions in each input `SparseTensor`.
		  sp_inputs: List of `SparseTensor` to concatenate.
		  name: A name prefix for the returned tensors (optional).
		  expand_nonconcat_dim: Whether to allow the expansion in the non-concat
		    dimensions. Defaulted to False.
		  concat_dim: The old (deprecated) name for axis.
		  expand_nonconcat_dims: alias for expand_nonconcat_dim
		
		Returns:
		  A `SparseTensor` with the concatenated output.
		
		Raises:
		  TypeError: If `sp_inputs` is not a list of `SparseTensor`.
	**/
	static public function sparse_concat_v2(axis:Dynamic, sp_inputs:Dynamic, ?expand_nonconcat_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates sparse cross from a list of sparse and dense tensors.
		
		For example, if the inputs are
		
		    * inputs[0]: SparseTensor with shape = [2, 2]
		      [0, 0]: "a"
		      [1, 0]: "b"
		      [1, 1]: "c"
		    * inputs[1]: SparseTensor with shape = [2, 1]
		      [0, 0]: "d"
		      [1, 0]: "e"
		    * inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be:
		
		    shape = [2, 2]
		    [0, 0]: "a_X_d_X_f"
		    [1, 0]: "b_X_e_X_g"
		    [1, 1]: "c_X_e_X_g"
		
		Customized separator "_Y_":
		
		>>> inp_0 = tf.constant([['a'], ['b']])
		>>> inp_1 = tf.constant([['c'], ['d']])
		>>> output = tf.sparse.cross([inp_0, inp_1], separator='_Y_')
		>>> output.values
		<tf.Tensor: shape=(2,), dtype=string, numpy=array([b'a_Y_c', b'b_Y_d'],
		  dtype=object)>
		
		
		Args:
		  inputs: An iterable of `Tensor` or `SparseTensor`.
		  name: Optional name for the op.
		  separator: A string added between each string being joined. Defaults to
		    '_X_'.
		
		Returns:
		  A `SparseTensor` of type `string`.
	**/
	static public function sparse_cross(inputs:Dynamic, ?name:Dynamic, ?separator:Dynamic):Dynamic;
	static public function sparse_cross_eager_fallback(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, hash_key:Dynamic, out_type:Dynamic, internal_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Generates hashed sparse cross from a list of sparse and dense tensors.
		
		For example, if the inputs are
		
		    * inputs[0]: SparseTensor with shape = [2, 2]
		      [0, 0]: "a"
		      [1, 0]: "b"
		      [1, 1]: "c"
		    * inputs[1]: SparseTensor with shape = [2, 1]
		      [0, 0]: "d"
		      [1, 0]: "e"
		    * inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be:
		
		    shape = [2, 2]
		    [0, 0]: FingerprintCat64(
		                Fingerprint64("f"), FingerprintCat64(
		                    Fingerprint64("d"), Fingerprint64("a")))
		    [1, 0]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("b")))
		    [1, 1]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("c")))
		
		Args:
		  inputs: An iterable of `Tensor` or `SparseTensor`.
		  num_buckets: An `int` that is `>= 0`.
		    output = hashed_value%num_buckets if num_buckets > 0 else hashed_value.
		  hash_key: Integer hash_key that will be used by the `FingerprintCat64`
		    function. If not given, will use a default key.
		  name: Optional name for the op.
		
		Returns:
		  A `SparseTensor` of type `int64`.
	**/
	static public function sparse_cross_hashed(inputs:Dynamic, ?num_buckets:Dynamic, ?hash_key:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_cross_hashed_eager_fallback(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, num_buckets:Dynamic, strong_hash:Dynamic, salt:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Generates sparse cross from a list of sparse and dense tensors.
		
		The op takes two lists, one of 2D `SparseTensor` and one of 2D `Tensor`, each
		representing features of one feature column. It outputs a 2D `SparseTensor` with
		the batchwise crosses of these features.
		
		For example, if the inputs are
		
		    inputs[0]: SparseTensor with shape = [2, 2]
		    [0, 0]: "a"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		    inputs[1]: SparseTensor with shape = [2, 1]
		    [0, 0]: "d"
		    [1, 0]: "e"
		
		    inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be
		
		    shape = [2, 2]
		    [0, 0]: "a_X_d_X_f"
		    [1, 0]: "b_X_e_X_g"
		    [1, 1]: "c_X_e_X_g"
		
		if hashed_output=true then the output will be
		
		    shape = [2, 2]
		    [0, 0]: FingerprintCat64(
		                Fingerprint64("f"), FingerprintCat64(
		                    Fingerprint64("d"), Fingerprint64("a")))
		    [1, 0]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("b")))
		    [1, 1]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("c")))
		
		Args:
		  indices: A list of `Tensor` objects with type `int64`.
		    2-D.  Indices of each input `SparseTensor`.
		  values: A list of `Tensor` objects with types from: `int64`, `string`.
		    1-D.   values of each `SparseTensor`.
		  shapes: A list with the same length as `indices` of `Tensor` objects with type `int64`.
		    1-D.   Shapes of each `SparseTensor`.
		  dense_inputs: A list of `Tensor` objects with types from: `int64`, `string`.
		    2-D.    Columns represented by dense `Tensor`.
		  sep: A `Tensor` of type `string`.
		    string used when joining a list of string inputs, can be used as separator later.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor` of type `string`.
		  output_shape: A `Tensor` of type `int64`.
	**/
	static public function sparse_cross_v2(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, sep:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_cross_v2_eager_fallback(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, sep:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_dense_cwise_add_eager_fallback(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Component-wise divides a SparseTensor by a dense Tensor.
		
		*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
		the other direction.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
	**/
	static public function sparse_dense_cwise_div(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_dense_cwise_div_eager_fallback(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
	**/
	static public function sparse_dense_cwise_mul(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_dense_cwise_mul_eager_fallback(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a tensor with an length 1 axis inserted at index `axis`.
		
		Given a tensor `input`, this operation inserts a dimension of length 1 at the
		dimension index `axis` of `input`'s shape. The dimension index follows python
		indexing rules: It's zero-based, a negative index it is counted backward
		from the end.
		
		This operation is useful to:
		
		* Add an outer "batch" dimension to a single element.
		* Align axes for broadcasting.
		* To add an inner vector length axis to a tensor of scalars.
		
		For example:
		
		If you have a sparse tensor with shape `[height, width, depth]`:
		
		>>> sp = tf.sparse.SparseTensor(indices=[[3,4,1]], values=[7,],
		...                             dense_shape=[10,10,3])
		
		You can add an outer `batch` axis by passing `axis=0`:
		
		>>> tf.sparse.expand_dims(sp, axis=0).shape.as_list()
		[1, 10, 10, 3]
		
		The new axis location matches Python `list.insert(axis, 1)`:
		
		>>> tf.sparse.expand_dims(sp, axis=1).shape.as_list()
		[10, 1, 10, 3]
		
		Following standard python indexing rules, a negative `axis` counts from the
		end so `axis=-1` adds an inner most dimension:
		
		>>> tf.sparse.expand_dims(sp, axis=-1).shape.as_list()
		[10, 10, 3, 1]
		
		Note: Unlike `tf.expand_dims` this function includes a default value for the
		`axis`: `-1`. So if `axis is not specified, an inner dimension is added.
		
		>>> sp.shape.as_list()
		[10, 10, 3]
		>>> tf.sparse.expand_dims(sp).shape.as_list()
		[10, 10, 3, 1]
		
		This operation requires that `axis` is a valid index for `input.shape`,
		following python indexing rules:
		
		```
		-1-tf.rank(input) <= axis <= tf.rank(input)
		```
		
		This operation is related to:
		
		* `tf.expand_dims`, which provides this functionality for dense tensors.
		* `tf.squeeze`, which removes dimensions of size 1, from dense tensors.
		* `tf.sparse.reshape`, which provides more flexible reshaping capability.
		
		Args:
		  sp_input: A `SparseTensor`.
		  axis: 0-D (scalar). Specifies the dimension index at which to expand the
		    shape of `input`. Must be in the range `[-rank(sp_input) - 1,
		    rank(sp_input)]`. Defaults to `-1`.
		  name: The name of the output `SparseTensor`.
		
		Returns:
		  A `SparseTensor` with the same data as `sp_input`, but its shape has an
		  additional dimension of size 1 added.
	**/
	static public function sparse_expand_dims(sp_input:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a two-dimensional sparse tensor with ones along the diagonal.
		
		Args:
		  num_rows: Non-negative integer or `int32` scalar `tensor` giving the number
		    of rows in the resulting matrix.
		  num_columns: Optional non-negative integer or `int32` scalar `tensor` giving
		    the number of columns in the resulting matrix. Defaults to `num_rows`.
		  dtype: The type of element in the resulting `Tensor`.
		  name: A name for this `Op`. Defaults to "eye".
		
		Returns:
		  A `SparseTensor` of shape [num_rows, num_columns] with ones along the
		  diagonal.
	**/
	static public function sparse_eye(num_rows:Dynamic, ?num_columns:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sparse_fill_empty_rows_eager_fallback(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, default_value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		The gradient of SparseFillEmptyRows.
		
		Takes vectors reverse_index_map, shaped `[N]`, and grad_values,
		shaped `[N_full]`, where `N_full >= N` and copies data into either
		`d_values` or `d_default_value`.  Here `d_values` is shaped `[N]` and
		`d_default_value` is a scalar.
		
		  d_values[j] = grad_values[reverse_index_map[j]]
		  d_default_value = sum_{k : 0 .. N_full - 1} (
		     grad_values[k] * 1{k not in reverse_index_map})
		
		Args:
		  reverse_index_map: A `Tensor` of type `int64`.
		    1-D.  The reverse index map from SparseFillEmptyRows.
		  grad_values: A `Tensor`. 1-D.  The gradients from backprop.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (d_values, d_default_value).
		
		  d_values: A `Tensor`. Has the same type as `grad_values`.
		  d_default_value: A `Tensor`. Has the same type as `grad_values`.
	**/
	static public function sparse_fill_empty_rows_grad(reverse_index_map:Dynamic, grad_values:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_fill_empty_rows_grad_eager_fallback(reverse_index_map:Dynamic, grad_values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the element-wise max of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Example:
		
		  >>> sp_zero = tf.sparse.SparseTensor([[0]], [0], [7])
		  >>> sp_one = tf.sparse.SparseTensor([[1]], [1], [7])
		  >>> res = tf.sparse.maximum(sp_zero, sp_one)
		  >>> res.indices
		  <tf.Tensor: shape=(2, 1), dtype=int64, numpy=
		  array([[0],
		         [1]])>
		  >>> res.values
		  <tf.Tensor: shape=(2,), dtype=int32, numpy=array([0, 1], dtype=int32)>
		  >>> res.dense_shape
		  <tf.Tensor: shape=(1,), dtype=int64, numpy=array([7])>
		
		The reduction version of this elementwise operation is `tf.sparse.reduce_max`
		
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
		Combines a batch of feature ids and values into a single `SparseTensor`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		No similar op available at this time.
		
		The most common use case for this function occurs when feature ids and
		their corresponding values are stored in `Example` protos on disk.
		`parse_example` will return a batch of ids and a batch of values, and this
		function joins them into a single logical `SparseTensor` for use in
		functions such as `sparse_tensor_dense_matmul`, `sparse_to_dense`, etc.
		
		The `SparseTensor` returned by this function has the following properties:
		
		  - `indices` is equivalent to `sp_ids.indices` with the last
		    dimension discarded and replaced with `sp_ids.values`.
		  - `values` is simply `sp_values.values`.
		  - If `sp_ids.dense_shape = [D0, D1, ..., Dn, K]`, then
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
		               dense_shape=[3, 6])
		```
		
		This method generalizes to higher-dimensions by simply providing a list for
		both the sp_ids as well as the vocab_size.
		In this case the resulting `SparseTensor` has the following properties:
		  - `indices` is equivalent to `sp_ids[0].indices` with the last
		    dimension discarded and concatenated with
		    `sp_ids[0].values, sp_ids[1].values, ...`.
		  - `values` is simply `sp_values.values`.
		  - If `sp_ids.dense_shape = [D0, D1, ..., Dn, K]`, then
		    `output.shape = [D0, D1, ..., Dn] + vocab_size`.
		
		Args:
		  sp_ids: A single `SparseTensor` with `values` property of type `int32`
		    or `int64` or a Python list of such `SparseTensor`s or a list thereof.
		  sp_values: A `SparseTensor` of any type.
		  vocab_size: A scalar `int64` Tensor (or Python int) containing the new size
		    of the last dimension, `all(0 <= sp_ids.values < vocab_size)`.
		    Or a list thereof with `all(0 <= sp_ids[i].values < vocab_size[i])` for
		    all `i`.
		  name: A name prefix for the returned tensors (optional)
		  already_sorted: A boolean to specify whether the per-batch values in
		   `sp_values` are already sorted. If so skip sorting, False by default
		   (optional).
		
		Returns:
		  A `SparseTensor` compactly representing a batch of feature ids and values,
		  useful for passing to functions that expect such a `SparseTensor`.
		
		Raises:
		  TypeError: If `sp_values` is not a `SparseTensor`. Or if `sp_ids` is neither
		    a `SparseTensor` nor a list thereof. Or if `vocab_size` is not a
		    `Tensor` or a Python int and `sp_ids` is a `SparseTensor`. Or if
		    `vocab_size` is not a or list thereof and `sp_ids` is a list.
		  ValueError: If `sp_ids` and `vocab_size` are lists of different lengths.
	**/
	static public function sparse_merge(sp_ids:Dynamic, sp_values:Dynamic, vocab_size:Dynamic, ?name:Dynamic, ?already_sorted:Dynamic):Dynamic;
	/**
		Internal implementation for sparse_merge to avoid deprecation warnings.
	**/
	static public function sparse_merge_impl(sp_ids:Dynamic, sp_values:Dynamic, vocab_size:Dynamic, ?name:Dynamic, ?already_sorted:Dynamic):Dynamic;
	/**
		Returns the element-wise min of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Example:
		
		  >>> sp_zero = tf.sparse.SparseTensor([[0]], [0], [7])
		  >>> sp_one = tf.sparse.SparseTensor([[1]], [1], [7])
		  >>> res = tf.sparse.minimum(sp_zero, sp_one)
		  >>> res.indices
		  <tf.Tensor: shape=(2, 1), dtype=int64, numpy=
		  array([[0],
		         [1]])>
		  >>> res.values
		  <tf.Tensor: shape=(2,), dtype=int32, numpy=array([0, 0], dtype=int32)>
		  >>> res.dense_shape
		  <tf.Tensor: shape=(1,), dtype=int64, numpy=array([7])>
		
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
		Computes `tf.sparse.maximum` of elements across dimensions of a SparseTensor. (deprecated arguments) (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(reduction_axes)`. They will be removed in a future version.
		Instructions for updating:
		reduction_axes is deprecated, use axis instead
		
		This is the reduction operation for the elementwise `tf.sparse.maximum` op.
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_max()`.  In particular, this Op also returns a dense `Tensor`
		instead of a sparse one.
		
		Note: A gradient is not defined for this function, so it can't be used
		in training models that need gradient descent.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keepdims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keepdims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		similar to the indexing rules in Python.
		
		The values not defined in `sp_input` don't participate in the reduce max,
		as opposed to be implicitly assumed 0 -- hence it can return negative values
		for sparse `reduction_axes`. But, in case there are no values in
		`reduction_axes`, it will reduce to 0. See second example below.
		
		For example:
		
		  # 'x' represents [[1, ?, 2]
		  #                 [?, 3, ?]]
		  # where ? is implicitly-zero.
		
		  >>> x = tf.sparse.SparseTensor([[0, 0], [0, 2], [1, 1]], [1, 2, 3], [2, 3])
		  >>> tf.sparse.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		  >>> tf.sparse.reduce_max(x, 0)
		  <tf.Tensor: shape=(3,), dtype=int32, numpy=array([1, 3, 2], dtype=int32)>
		  >>> tf.sparse.reduce_max(x, 1)
		  <tf.Tensor: shape=(2,), dtype=int32, numpy=array([2, 3], dtype=int32)>
		  >>> tf.sparse.reduce_max(x, 1, keepdims=True)
		  <tf.Tensor: shape=(2, 1), dtype=int32, numpy=
		  array([[2],
		         [3]], dtype=int32)>
		  >>> tf.sparse.reduce_max(x, [0, 1])
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		
		  # 'y' represents [[-7, ?]
		  #                 [ 4, 3]
		  #                 [ ?, ?]
		
		  >>> y = tf.sparse.SparseTensor([[0, 0,], [1, 0], [1, 1]], [-7, 4, 3],
		  ... [3, 2])
		  >>> tf.sparse.reduce_max(y, 1)
		  <tf.Tensor: shape=(3,), dtype=int32, numpy=array([-7,  4,  0], dtype=int32)>
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  reduction_axes: Deprecated name of `axis`.
		  keep_dims:  Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced Tensor.
	**/
	static public function sparse_reduce_max(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	static public function sparse_reduce_max_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the max of elements across dimensions of a SparseTensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_max()`.  In contrast to SparseReduceSum, this Op returns a
		SparseTensor.
		
		Note: A gradient is not defined for this function, so it can't be used
		in training models that need gradient descent.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keepdims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keepdims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		which are interpreted according to the indexing rules in Python.
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  reduction_axes: Deprecated name of axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced SparseTensor.
	**/
	static public function sparse_reduce_max_sparse(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	static public function sparse_reduce_max_sparse_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes `tf.sparse.maximum` of elements across dimensions of a SparseTensor.
		
		This is the reduction operation for the elementwise `tf.sparse.maximum` op.
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_max()`.  In particular, this Op also returns a dense `Tensor`
		if `output_is_sparse` is `False`, or a `SparseTensor` if `output_is_sparse`
		is `True`.
		
		Note: A gradient is not defined for this function, so it can't be used
		in training models that need gradient descent.
		
		Reduces `sp_input` along the dimensions given in `axis`.  Unless
		`keepdims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keepdims` is true, the reduced dimensions are retained
		with length 1.
		
		If `axis` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		similar to the indexing rules in Python.
		
		The values not defined in `sp_input` don't participate in the reduce max,
		as opposed to be implicitly assumed 0 -- hence it can return negative values
		for sparse `axis`. But, in case there are no values in
		`axis`, it will reduce to 0. See second example below.
		
		For example:
		
		  # 'x' represents [[1, ?, 2]
		  #                 [?, 3, ?]]
		  # where ? is implicitly-zero.
		
		  >>> x = tf.sparse.SparseTensor([[0, 0], [0, 2], [1, 1]], [1, 2, 3], [2, 3])
		  >>> tf.sparse.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		  >>> tf.sparse.reduce_max(x, 0)
		  <tf.Tensor: shape=(3,), dtype=int32, numpy=array([1, 3, 2], dtype=int32)>
		  >>> tf.sparse.reduce_max(x, 1)
		  <tf.Tensor: shape=(2,), dtype=int32, numpy=array([2, 3], dtype=int32)>
		  >>> tf.sparse.reduce_max(x, 1, keepdims=True)
		  <tf.Tensor: shape=(2, 1), dtype=int32, numpy=
		  array([[2],
		         [3]], dtype=int32)>
		  >>> tf.sparse.reduce_max(x, [0, 1])
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		
		  # 'y' represents [[-7, ?]
		  #                 [ 4, 3]
		  #                 [ ?, ?]
		
		  >>> y = tf.sparse.SparseTensor([[0, 0,], [1, 0], [1, 1]], [-7, 4, 3],
		  ... [3, 2])
		  >>> tf.sparse.reduce_max(y, 1)
		  <tf.Tensor: shape=(3,), dtype=int32, numpy=array([-7,  4,  0], dtype=int32)>
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  output_is_sparse: If true, returns a `SparseTensor` instead of a dense
		    `Tensor` (the default).
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced Tensor or the reduced SparseTensor if `output_is_sparse` is
		  True.
	**/
	static public function sparse_reduce_max_v2(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?output_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes `tf.sparse.add` of elements across dimensions of a SparseTensor. (deprecated arguments) (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(reduction_axes)`. They will be removed in a future version.
		Instructions for updating:
		reduction_axes is deprecated, use axis instead
		
		This is the reduction operation for the elementwise `tf.sparse.add` op.
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_sum()`.  In particular, this Op also returns a dense `Tensor`
		instead of a sparse one.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keepdims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keepdims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		similar to the indexing rules in Python.
		
		For example:
		
		  # 'x' represents [[1, ?, 1]
		  #                 [?, 1, ?]]
		  # where ? is implicitly-zero.
		
		  >>> x = tf.sparse.SparseTensor([[0, 0], [0, 2], [1, 1]], [1, 1, 1], [2, 3])
		  >>> tf.sparse.reduce_sum(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		  >>> tf.sparse.reduce_sum(x, 0)
		  <tf.Tensor: shape=(3,), dtype=int32, numpy=array([1, 1, 1], dtype=int32)>
		  >>> tf.sparse.reduce_sum(x, 1)  # Can also use -1 as the axis
		  <tf.Tensor: shape=(2,), dtype=int32, numpy=array([2, 1], dtype=int32)>
		  >>> tf.sparse.reduce_sum(x, 1, keepdims=True)
		  <tf.Tensor: shape=(2, 1), dtype=int32, numpy=
		  array([[2],
		         [1]], dtype=int32)>
		  >>> tf.sparse.reduce_sum(x, [0, 1])
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  reduction_axes: Deprecated name of `axis`.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced Tensor.
	**/
	static public function sparse_reduce_sum(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	static public function sparse_reduce_sum_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a SparseTensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_sum()`.  In contrast to SparseReduceSum, this Op returns a
		SparseTensor.
		
		Note: A gradient is not defined for this function, so it can't be used
		in training models that need gradient descent.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keepdims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keepdims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		which are interpreted according to the indexing rules in Python.
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  reduction_axes: Deprecated name of axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced SparseTensor.
	**/
	static public function sparse_reduce_sum_sparse(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	static public function sparse_reduce_sum_sparse_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes `tf.sparse.add` of elements across dimensions of a SparseTensor.
		
		This is the reduction operation for the elementwise `tf.sparse.add` op.
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_sum()`.  In particular, this Op also returns a dense `Tensor`
		if `output_is_sparse` is `False`, or a `SparseTensor` if `output_is_sparse`
		is `True`.
		
		Note: if `output_is_sparse` is True, a gradient is not defined for this
		function, so it can't be used in training models that need gradient descent.
		
		Reduces `sp_input` along the dimensions given in `axis`.  Unless `keepdims` is
		true, the rank of the tensor is reduced by 1 for each entry in `axis`. If
		`keepdims` is true, the reduced dimensions are retained with length 1.
		
		If `axis` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		similar to the indexing rules in Python.
		
		For example:
		
		  # 'x' represents [[1, ?, 1]
		  #                 [?, 1, ?]]
		  # where ? is implicitly-zero.
		
		  >>> x = tf.sparse.SparseTensor([[0, 0], [0, 2], [1, 1]], [1, 1, 1], [2, 3])
		  >>> tf.sparse.reduce_sum(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		  >>> tf.sparse.reduce_sum(x, 0)
		  <tf.Tensor: shape=(3,), dtype=int32, numpy=array([1, 1, 1], dtype=int32)>
		  >>> tf.sparse.reduce_sum(x, 1)  # Can also use -1 as the axis
		  <tf.Tensor: shape=(2,), dtype=int32, numpy=array([2, 1], dtype=int32)>
		  >>> tf.sparse.reduce_sum(x, 1, keepdims=True)
		  <tf.Tensor: shape=(2, 1), dtype=int32, numpy=
		  array([[2],
		         [1]], dtype=int32)>
		  >>> tf.sparse.reduce_sum(x, [0, 1])
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  output_is_sparse: If true, returns a `SparseTensor` instead of a dense
		    `Tensor` (the default).
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced Tensor or the reduced SparseTensor if `output_is_sparse` is
		  True.
	**/
	static public function sparse_reduce_sum_v2(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?output_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sparse_reorder_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Resets the shape of a `SparseTensor` with indices and values unchanged.
		
		If `new_shape` is None, returns a copy of `sp_input` with its shape reset
		to the tight bounding box of `sp_input`. This will be a shape consisting of
		all zeros if sp_input has no values.
		
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
		    equal in every dimension compared to the original shape [2, 3, 5].
		
		  - On the other hand, setting new_shape as [2, 3, 4] is also an error: The
		    third dimension is smaller than the original shape [2, 3, 5] (and an
		    `InvalidArgumentError` will be raised).
		
		  - If `new_shape` is None, the returned SparseTensor will have a shape
		    [2, 3, 4], which is the tight bounding box of `sp_input`.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  new_shape: None or a vector representing the new shape for the returned
		    `SparseTensor`.
		
		Returns:
		  A `SparseTensor` indices and values unchanged from `sp_input`. Its shape is
		    `new_shape` if that is set. Otherwise it is the tight bounding box of
		     `sp_input`
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
		  ValueError: If `new_shape` represents a tensor with a different rank from
		    that of `sp_input` (if shapes are known when graph is constructed).
		  ValueError:  If `new_shape` is determined during graph build to have
		    dimension sizes that are too small.
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
		  ValueError:  If argument `shape` requests a `SparseTensor` with a different
		    number of elements than `sp_input`.
		  ValueError:  If `shape` has more than one inferred (== -1) dimension.
	**/
	static public function sparse_reshape(sp_input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_reshape_eager_fallback(input_indices:Dynamic, input_shape:Dynamic, new_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Slice a `SparseTensor` based on the `start` and `size`.
		
		For example, if the input is
		
		    input_tensor = shape = [2, 7]
		    [    a   d e  ]
		    [b c          ]
		
		Graphically the output tensors are:
		
		    sparse.slice([0, 0], [2, 4]) = shape = [2, 4]
		    [    a  ]
		    [b c    ]
		
		    sparse.slice([0, 4], [2, 3]) = shape = [2, 3]
		    [ d e  ]
		    [      ]
		
		Args:
		  sp_input: The `SparseTensor` to split.
		  start: 1-D. tensor represents the start of the slice.
		  size: 1-D. tensor represents the size of the slice.
		  name: A name for the operation (optional).
		
		Returns:
		  A `SparseTensor` objects resulting from splicing.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_slice(sp_input:Dynamic, start:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_slice_eager_fallback(indices:Dynamic, values:Dynamic, shape:Dynamic, start:Dynamic, size:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		The gradient operator for the SparseSlice op.
		
		This op takes in the upstream gradient w.r.t. non-empty values of
		the sliced `SparseTensor`, and outputs the gradients w.r.t.
		the non-empty values of input `SparseTensor`.
		
		Args:
		  backprop_val_grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D. The gradient with respect to
		    the non-empty values of the sliced `SparseTensor`.
		  input_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the input `SparseTensor`.
		  input_start: A `Tensor` of type `int64`.
		    1-D. tensor represents the start of the slice.
		  output_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the sliced `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `backprop_val_grad`.
	**/
	static public function sparse_slice_grad(backprop_val_grad:Dynamic, input_indices:Dynamic, input_start:Dynamic, output_indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_slice_grad_eager_fallback(backprop_val_grad:Dynamic, input_indices:Dynamic, input_start:Dynamic, output_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Applies softmax to a batched N-D `SparseTensor`.
		
		The inputs represent an N-D SparseTensor with logical shape `[..., B, C]`
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
		
		result = tf.sparse.softmax(tf.sparse.SparseTensor(indices, values, shape))
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
	static public function sparse_softmax_eager_fallback(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the element-wise max of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, in the canonical lexicographic ordering.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
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
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `a_values`.
	**/
	static public function sparse_sparse_maximum(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_sparse_maximum_eager_fallback(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the element-wise min of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, in the canonical lexicographic ordering.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `a_values`.
	**/
	static public function sparse_sparse_minimum(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_sparse_minimum_eager_fallback(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Split a `SparseTensor` into `num_split` tensors along `axis`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(split_dim)`. They will be removed in a future version.
		Instructions for updating:
		split_dim is deprecated, use axis instead
		
		If the `sp_input.dense_shape[axis]` is not an integer multiple of `num_split`
		each slice starting from 0:`shape[axis] % num_split` gets extra one
		dimension. For example, if `axis = 1` and `num_split = 2` and the
		input is:
		
		    input_tensor = shape = [2, 7]
		    [    a   d e  ]
		    [b c          ]
		
		Graphically the output tensors are:
		
		    output_tensor[0] =
		    [    a   ]
		    [b c     ]
		
		    output_tensor[1] =
		    [ d e  ]
		    [      ]
		
		Args:
		  keyword_required: Python 2 standin for * (temporary for argument reorder)
		  sp_input: The `SparseTensor` to split.
		  num_split: A Python integer. The number of ways to split.
		  axis: A 0-D `int32` `Tensor`. The dimension along which to split. Must be in
		    range [-rank, rank), where rank is the number of dimensions in the input
		    `SparseTensor`.
		  name: A name for the operation (optional).
		  split_dim: Deprecated old name for axis.
		
		Returns:
		  `num_split` `SparseTensor` objects resulting from splitting `value`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
		  ValueError: If the deprecated `split_dim` and `axis` are both non None.
	**/
	static public function sparse_split(?keyword_required:Dynamic, ?sp_input:Dynamic, ?num_split:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?split_dim:Dynamic):Dynamic;
	static public function sparse_split_eager_fallback(split_dim:Dynamic, indices:Dynamic, values:Dynamic, shape:Dynamic, num_split:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Split a `SparseTensor` into `num_split` tensors along `axis`.
		
		If the `sp_input.dense_shape[axis]` is not an integer multiple of `num_split`
		each slice starting from 0:`shape[axis] % num_split` gets extra one
		dimension. For example:
		
		>>> indices = [[0, 2], [0, 4], [0, 5], [1, 0], [1, 1]]
		>>> values = [1, 2, 3, 4, 5]
		>>> t = tf.SparseTensor(indices=indices, values=values, dense_shape=[2, 7])
		>>> tf.sparse.to_dense(t)
		<tf.Tensor: shape=(2, 7), dtype=int32, numpy=
		array([[0, 0, 1, 0, 2, 3, 0],
		       [4, 5, 0, 0, 0, 0, 0]], dtype=int32)>
		
		>>> output = tf.sparse.split(sp_input=t, num_split=2, axis=1)
		>>> tf.sparse.to_dense(output[0])
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		array([[0, 0, 1, 0],
		       [4, 5, 0, 0]], dtype=int32)>
		>>> tf.sparse.to_dense(output[1])
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[2, 3, 0],
		       [0, 0, 0]], dtype=int32)>
		
		>>> output = tf.sparse.split(sp_input=t, num_split=2, axis=0)
		>>> tf.sparse.to_dense(output[0])
		<tf.Tensor: shape=(1, 7), dtype=int32, numpy=array([[0, 0, 1, 0, 2, 3, 0]],
		dtype=int32)>
		>>> tf.sparse.to_dense(output[1])
		<tf.Tensor: shape=(1, 7), dtype=int32, numpy=array([[4, 5, 0, 0, 0, 0, 0]],
		dtype=int32)>
		
		>>> output = tf.sparse.split(sp_input=t, num_split=2, axis=-1)
		>>> tf.sparse.to_dense(output[0])
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		array([[0, 0, 1, 0],
		       [4, 5, 0, 0]], dtype=int32)>
		>>> tf.sparse.to_dense(output[1])
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[2, 3, 0],
		       [0, 0, 0]], dtype=int32)>
		
		Args:
		  sp_input: The `SparseTensor` to split.
		  num_split: A Python integer. The number of ways to split.
		  axis: A 0-D `int32` `Tensor`. The dimension along which to split. Must be in
		    range [-rank, rank), where rank is the number of dimensions in the input
		    `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  `num_split` `SparseTensor` objects resulting from splitting `value`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_split_v2(?sp_input:Dynamic, ?num_split:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds up a `SparseTensor` and a dense `Tensor`, producing a dense `Tensor`.
		
		This Op does not require `a_indices` be sorted in standard lexicographic order.
		
		Args:
		  a_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D.  The `indices` of the `SparseTensor`, with shape `[nnz, ndims]`.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  The `values` of the `SparseTensor`, with shape `[nnz]`.
		  a_shape: A `Tensor`. Must have the same type as `a_indices`.
		    1-D.  The `shape` of the `SparseTensor`, with shape `[ndims]`.
		  b: A `Tensor`. Must have the same type as `a_values`.
		    `ndims`-D Tensor.  With shape `a_shape`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a_values`.
	**/
	static public function sparse_tensor_dense_add(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_tensor_dense_add_eager_fallback(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Multiply SparseTensor (of rank 2) "A" by dense matrix "B".
		
		No validity checking is performed on the indices of A.  However, the following
		input format is recommended for optimal behavior:
		
		if adjoint_a == false:
		  A should be sorted in lexicographically increasing order.  Use SparseReorder
		  if you're not sure.
		if adjoint_a == true:
		  A should be sorted in order of increasing dimension 1 (i.e., "column major"
		  order instead of "row major" order).
		
		Args:
		  a_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D.  The `indices` of the `SparseTensor`, size `[nnz, 2]` Matrix.
		  a_values: A `Tensor`.
		    1-D.  The `values` of the `SparseTensor`, size `[nnz]` Vector.
		  a_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the `SparseTensor`, size `[2]` Vector.
		  b: A `Tensor`. Must have the same type as `a_values`.
		    2-D.  A dense Matrix.
		  adjoint_a: An optional `bool`. Defaults to `False`.
		    Use the adjoint of A in the matrix multiply.  If A is complex, this
		    is transpose(conj(A)).  Otherwise it's transpose(A).
		  adjoint_b: An optional `bool`. Defaults to `False`.
		    Use the adjoint of B in the matrix multiply.  If B is complex, this
		    is transpose(conj(B)).  Otherwise it's transpose(B).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a_values`.
	**/
	static public function sparse_tensor_dense_mat_mul(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_tensor_dense_mat_mul_eager_fallback(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b:Dynamic, adjoint_a:Dynamic, adjoint_b:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Multiply SparseTensor (or dense Matrix) (of rank 2) "A" by dense matrix
		
		(or SparseTensor) "B". Please note that one and only one of the inputs MUST
		be a SparseTensor and the other MUST be a dense matrix.
		
		The following input format is recommended (but not required) for optimal
		performance:
		
		* If `adjoint_a == false`: `A` should be sorted in lexicographically
		  increasing order.  Use `sparse.reorder` if you're not sure.
		* If `adjoint_a == true`: `A` should be sorted in order of increasing
		  dimension 1 (i.e., "column major" order instead of "row major" order).
		
		Args:
		  sp_a: SparseTensor (or dense Matrix) A, of rank 2.
		  b: dense Matrix (or SparseTensor) B, with the same dtype as sp_a.
		  adjoint_a: Use the adjoint of A in the matrix multiply.  If A is complex,
		    this is transpose(conj(A)).  Otherwise it's transpose(A).
		  adjoint_b: Use the adjoint of B in the matrix multiply.  If B is complex,
		    this is transpose(conj(B)).  Otherwise it's transpose(B).
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A dense matrix (pseudo-code in dense np.matrix notation):
		    `A = A.H if adjoint_a else A`
		    `B = B.H if adjoint_b else B`
		    `return A*B`
		
		Notes:
		
		Using `tf.nn.embedding_lookup_sparse` for sparse multiplication:
		
		It's not obvious but you can consider `embedding_lookup_sparse` as another
		sparse and dense multiplication. In some situations, you may prefer to use
		`embedding_lookup_sparse` even though you're not dealing with embeddings.
		
		There are two questions to ask in the decision process: Do you need gradients
		computed as sparse too? Is your sparse data represented as two
		`SparseTensor`s: ids and values? There is more explanation about data format
		below. If you answer any of these questions as yes, consider using
		`tf.nn.embedding_lookup_sparse`.
		
		Following explains differences between the expected SparseTensors:
		For example if dense form of your sparse data has shape `[3, 5]` and values:
		
		    [[  a      ]
		     [b       c]
		     [    d    ]]
		
		
		`SparseTensor` format expected by `sparse_tensor_dense_matmul`:
		 `sp_a` (indices, values):
		
		    [0, 1]: a
		    [1, 0]: b
		    [1, 4]: c
		    [2, 2]: d
		
		`SparseTensor` format expected by `embedding_lookup_sparse`:
		 `sp_ids`                 `sp_weights`
		
		    [0, 0]: 1                [0, 0]: a
		    [1, 0]: 0                [1, 0]: b
		    [1, 1]: 4                [1, 1]: c
		    [2, 0]: 2                [2, 0]: d
		
		
		Deciding when to use `sparse_tensor_dense_matmul` vs.
		`matmul`(a_is_sparse=True):
		
		There are a number of questions to ask in the decision process, including:
		
		* Will the SparseTensor `A` fit in memory if densified?
		* Is the column count of the product large (>> 1)?
		* Is the density of `A` larger than approximately 15%?
		
		If the answer to several of these questions is yes, consider
		converting the `SparseTensor` to a dense one and using `tf.matmul` with
		`a_is_sparse=True`.
		
		This operation tends to perform well when `A` is more sparse, if the column
		size of the product is small (e.g. matrix-vector multiplication), if
		`sp_a.dense_shape` takes on large values.
		
		Below is a rough speed comparison between `sparse_tensor_dense_matmul`,
		labeled 'sparse', and `matmul`(a_is_sparse=True), labeled 'dense'.  For
		purposes of the comparison, the time spent converting from a `SparseTensor` to
		a dense `Tensor` is not included, so it is overly conservative with respect to
		the time ratio.
		
		Benchmark system:
		CPU: Intel Ivybridge with HyperThreading (6 cores) dL1:32KB dL2:256KB dL3:12MB
		GPU: NVidia Tesla k40c
		
		Compiled with:
		`-c opt --config=cuda --copt=-mavx`
		
		```
		tensorflow/python/sparse_tensor_dense_matmul_op_test --benchmarks
		A sparse [m, k] with % nonzero values between 1% and 80%
		B dense [k, n]
		
		% nnz  n   gpu   m     k     dt(dense)     dt(sparse)   dt(sparse)/dt(dense)
		0.01   1   True  100   100   0.000221166   0.00010154   0.459112
		0.01   1   True  100   1000  0.00033858    0.000109275  0.322745
		0.01   1   True  1000  100   0.000310557   9.85661e-05  0.317385
		0.01   1   True  1000  1000  0.0008721     0.000100875  0.115669
		0.01   1   False 100   100   0.000208085   0.000107603  0.51711
		0.01   1   False 100   1000  0.000327112   9.51118e-05  0.290762
		0.01   1   False 1000  100   0.000308222   0.00010345   0.335635
		0.01   1   False 1000  1000  0.000865721   0.000101397  0.117124
		0.01   10  True  100   100   0.000218522   0.000105537  0.482958
		0.01   10  True  100   1000  0.000340882   0.000111641  0.327506
		0.01   10  True  1000  100   0.000315472   0.000117376  0.372064
		0.01   10  True  1000  1000  0.000905493   0.000123263  0.136128
		0.01   10  False 100   100   0.000221529   9.82571e-05  0.44354
		0.01   10  False 100   1000  0.000330552   0.000112615  0.340687
		0.01   10  False 1000  100   0.000341277   0.000114097  0.334324
		0.01   10  False 1000  1000  0.000819944   0.000120982  0.147549
		0.01   25  True  100   100   0.000207806   0.000105977  0.509981
		0.01   25  True  100   1000  0.000322879   0.00012921   0.400181
		0.01   25  True  1000  100   0.00038262    0.00014158   0.370035
		0.01   25  True  1000  1000  0.000865438   0.000202083  0.233504
		0.01   25  False 100   100   0.000209401   0.000104696  0.499979
		0.01   25  False 100   1000  0.000321161   0.000130737  0.407076
		0.01   25  False 1000  100   0.000377012   0.000136801  0.362856
		0.01   25  False 1000  1000  0.000861125   0.00020272   0.235413
		0.2    1   True  100   100   0.000206952   9.69219e-05  0.46833
		0.2    1   True  100   1000  0.000348674   0.000147475  0.422959
		0.2    1   True  1000  100   0.000336908   0.00010122   0.300439
		0.2    1   True  1000  1000  0.001022      0.000203274  0.198898
		0.2    1   False 100   100   0.000207532   9.5412e-05   0.459746
		0.2    1   False 100   1000  0.000356127   0.000146824  0.41228
		0.2    1   False 1000  100   0.000322664   0.000100918  0.312764
		0.2    1   False 1000  1000  0.000998987   0.000203442  0.203648
		0.2    10  True  100   100   0.000211692   0.000109903  0.519165
		0.2    10  True  100   1000  0.000372819   0.000164321  0.440753
		0.2    10  True  1000  100   0.000338651   0.000144806  0.427596
		0.2    10  True  1000  1000  0.00108312    0.000758876  0.70064
		0.2    10  False 100   100   0.000215727   0.000110502  0.512231
		0.2    10  False 100   1000  0.000375419   0.0001613    0.429653
		0.2    10  False 1000  100   0.000336999   0.000145628  0.432132
		0.2    10  False 1000  1000  0.00110502    0.000762043  0.689618
		0.2    25  True  100   100   0.000218705   0.000129913  0.594009
		0.2    25  True  100   1000  0.000394794   0.00029428   0.745402
		0.2    25  True  1000  100   0.000404483   0.0002693    0.665788
		0.2    25  True  1000  1000  0.0012002     0.00194494   1.62052
		0.2    25  False 100   100   0.000221494   0.0001306    0.589632
		0.2    25  False 100   1000  0.000396436   0.000297204  0.74969
		0.2    25  False 1000  100   0.000409346   0.000270068  0.659754
		0.2    25  False 1000  1000  0.00121051    0.00193737   1.60046
		0.5    1   True  100   100   0.000214981   9.82111e-05  0.456836
		0.5    1   True  100   1000  0.000415328   0.000223073  0.537101
		0.5    1   True  1000  100   0.000358324   0.00011269   0.314492
		0.5    1   True  1000  1000  0.00137612    0.000437401  0.317851
		0.5    1   False 100   100   0.000224196   0.000101423  0.452386
		0.5    1   False 100   1000  0.000400987   0.000223286  0.556841
		0.5    1   False 1000  100   0.000368825   0.00011224   0.304318
		0.5    1   False 1000  1000  0.00136036    0.000429369  0.31563
		0.5    10  True  100   100   0.000222125   0.000112308  0.505608
		0.5    10  True  100   1000  0.000461088   0.00032357   0.701753
		0.5    10  True  1000  100   0.000394624   0.000225497  0.571422
		0.5    10  True  1000  1000  0.00158027    0.00190898   1.20801
		0.5    10  False 100   100   0.000232083   0.000114978  0.495418
		0.5    10  False 100   1000  0.000454574   0.000324632  0.714146
		0.5    10  False 1000  100   0.000379097   0.000227768  0.600817
		0.5    10  False 1000  1000  0.00160292    0.00190168   1.18638
		0.5    25  True  100   100   0.00023429    0.000151703  0.647501
		0.5    25  True  100   1000  0.000497462   0.000598873  1.20386
		0.5    25  True  1000  100   0.000460778   0.000557038  1.20891
		0.5    25  True  1000  1000  0.00170036    0.00467336   2.74845
		0.5    25  False 100   100   0.000228981   0.000155334  0.678371
		0.5    25  False 100   1000  0.000496139   0.000620789  1.25124
		0.5    25  False 1000  100   0.00045473    0.000551528  1.21287
		0.5    25  False 1000  1000  0.00171793    0.00467152   2.71927
		0.8    1   True  100   100   0.000222037   0.000105301  0.47425
		0.8    1   True  100   1000  0.000410804   0.000329327  0.801664
		0.8    1   True  1000  100   0.000349735   0.000131225  0.375212
		0.8    1   True  1000  1000  0.00139219    0.000677065  0.48633
		0.8    1   False 100   100   0.000214079   0.000107486  0.502085
		0.8    1   False 100   1000  0.000413746   0.000323244  0.781261
		0.8    1   False 1000  100   0.000348983   0.000131983  0.378193
		0.8    1   False 1000  1000  0.00136296    0.000685325  0.50282
		0.8    10  True  100   100   0.000229159   0.00011825   0.516017
		0.8    10  True  100   1000  0.000498845   0.000532618  1.0677
		0.8    10  True  1000  100   0.000383126   0.00029935   0.781336
		0.8    10  True  1000  1000  0.00162866    0.00307312   1.88689
		0.8    10  False 100   100   0.000230783   0.000124958  0.541452
		0.8    10  False 100   1000  0.000493393   0.000550654  1.11606
		0.8    10  False 1000  100   0.000377167   0.000298581  0.791642
		0.8    10  False 1000  1000  0.00165795    0.00305103   1.84024
		0.8    25  True  100   100   0.000233496   0.000175241  0.75051
		0.8    25  True  100   1000  0.00055654    0.00102658   1.84458
		0.8    25  True  1000  100   0.000463814   0.000783267  1.68875
		0.8    25  True  1000  1000  0.00186905    0.00755344   4.04132
		0.8    25  False 100   100   0.000240243   0.000175047  0.728625
		0.8    25  False 100   1000  0.000578102   0.00104499   1.80763
		0.8    25  False 1000  100   0.000485113   0.000776849  1.60138
		0.8    25  False 1000  1000  0.00211448    0.00752736   3.55992
		```
	**/
	static public function sparse_tensor_dense_matmul(sp_a:Dynamic, b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a `SparseTensor` into a dense tensor.
		
		For this sparse tensor with three non-empty values:
		
		>>> sp_input = tf.SparseTensor(
		...   dense_shape=[3, 5],
		...   values=[7, 8, 9],
		...   indices =[[0, 1],
		...             [0, 3],
		...             [2, 0]])
		
		The output will be a dense `[3, 5]` tensor with values:
		
		>>> tf.sparse.to_dense(sp_input).numpy()
		array([[0, 7, 0, 8, 0],
		       [0, 0, 0, 0, 0],
		       [9, 0, 0, 0, 0]], dtype=int32)
		
		Note: Indices must be without repeats.  This is only tested if
		`validate_indices` is `True`.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  default_value: Scalar value to set for indices not specified in
		    `sp_input`.  Defaults to zero.
		  validate_indices: A boolean value.  If `True`, indices are checked to make
		    sure they are sorted in lexicographic order and that there are no repeats.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A dense tensor with shape `sp_input.dense_shape` and values specified by
		  the non-empty values in `sp_input`. Indices not in `sp_input` are assigned
		  `default_value`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_tensor_to_dense(sp_input:Dynamic, ?default_value:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a sparse representation into a dense tensor. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Create a `tf.sparse.SparseTensor` and use `tf.sparse.to_dense` instead.
		
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
	static public function sparse_to_dense_eager_fallback(sparse_indices:Dynamic, output_shape:Dynamic, sparse_values:Dynamic, default_value:Dynamic, validate_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Converts a `SparseTensor` of ids into a dense bool indicator tensor.
		
		The last dimension of `sp_input.indices` is discarded and replaced with
		the values of `sp_input`.  If `sp_input.dense_shape = [D0, D1, ..., Dn, K]`,
		then `output.shape = [D0, D1, ..., Dn, vocab_size]`, where
		
		    output[d_0, d_1, ..., d_n, sp_input[d_0, d_1, ..., d_n, k]] = True
		
		and False elsewhere in `output`.
		
		For example, if `sp_input.dense_shape = [2, 3, 4]` with non-empty values:
		
		    [0, 0, 0]: 0
		    [0, 1, 0]: 10
		    [1, 0, 3]: 103
		    [1, 1, 1]: 150
		    [1, 1, 2]: 149
		    [1, 1, 3]: 150
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
	/**
		Transposes a `SparseTensor`
		
		The returned tensor's dimension i will correspond to the input dimension
		`perm[i]`. If `perm` is not given, it is set to (n-1...0), where n is
		the rank of the input tensor. Hence by default, this operation performs a
		regular matrix transpose on 2-D input Tensors.
		
		For example, if `sp_input` has shape `[4, 5]` and `indices` / `values`:
		
		    [0, 3]: b
		    [0, 1]: a
		    [3, 1]: d
		    [2, 0]: c
		
		then the output will be a `SparseTensor` of shape `[5, 4]` and
		`indices` / `values`:
		
		    [0, 2]: c
		    [1, 0]: a
		    [1, 3]: d
		    [3, 0]: b
		
		Args:
		  sp_input: The input `SparseTensor`.
		  perm: A permutation of the dimensions of `sp_input`.
		  name: A name prefix for the returned tensors (optional)
		Returns:
		  A transposed `SparseTensor`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_transpose(sp_input:Dynamic, ?perm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Read `SparseTensors` from a `SparseTensorsMap` and concatenate them.
		
		The input `sparse_handles` must be an `int64` matrix of shape `[N, 1]` where
		`N` is the minibatch size and the rows correspond to the output handles of
		`AddSparseToTensorsMap` or `AddManySparseToTensorsMap`.  The ranks of the
		original `SparseTensor` objects that went into the given input ops must all
		match.  When the final `SparseTensor` is created, it has rank one
		higher than the ranks of the incoming `SparseTensor` objects
		(they have been concatenated along a new row dimension on the left).
		
		The output `SparseTensor` object's shape values for all dimensions but the
		first are the max across the input `SparseTensor` objects' shape values
		for the corresponding dimensions.  Its first shape value is `N`, the minibatch
		size.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `SparseReorder` to restore index ordering.
		
		For example, if the handles represent an input, which is a `[2, 3]` matrix
		representing two original `SparseTensor` objects:
		
		```
		    index = [ 0]
		            [10]
		            [20]
		    values = [1, 2, 3]
		    shape = [50]
		```
		
		and
		
		```
		    index = [ 2]
		            [10]
		    values = [4, 5]
		    shape = [30]
		```
		
		then the final `SparseTensor` will be:
		
		```
		    index = [0  0]
		            [0 10]
		            [0 20]
		            [1  2]
		            [1 10]
		    values = [1, 2, 3, 4, 5]
		    shape = [2 50]
		```
		
		Args:
		  sparse_handles: A `Tensor` of type `int64`.
		    1-D, The `N` serialized `SparseTensor` objects.
		    Shape: `[N]`.
		  dtype: A `tf.DType`.
		    The `dtype` of the `SparseTensor` objects stored in the
		    `SparseTensorsMap`.
		  container: An optional `string`. Defaults to `""`.
		    The container name for the `SparseTensorsMap` read by this op.
		  shared_name: An optional `string`. Defaults to `""`.
		    The shared name for the `SparseTensorsMap` read by this op.
		    It should not be blank; rather the `shared_name` or unique Operation name
		    of the Op that created the original `SparseTensorsMap` should be used.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_shape).
		
		  sparse_indices: A `Tensor` of type `int64`.
		  sparse_values: A `Tensor` of type `dtype`.
		  sparse_shape: A `Tensor` of type `int64`.
	**/
	static public function take_many_sparse_from_tensors_map(sparse_handles:Dynamic, dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function take_many_sparse_from_tensors_map_eager_fallback(sparse_handles:Dynamic, dtype:Dynamic, container:Dynamic, shared_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes the Bessel i1e function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		>>> tf.math.special.bessel_i1e([-1., -0.5, 0.5, 1.]).numpy()
		array([-0.20791042, -0.15642083,  0.15642083,  0.20791042], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i1e
		@end_compatibility
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.bessel_i1e(x.values, ...), x.dense_shape)`
	**/
	static public function unary_op(x:Dynamic, ?name:Dynamic):Dynamic;
}