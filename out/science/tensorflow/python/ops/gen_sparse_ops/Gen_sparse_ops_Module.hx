/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_sparse_ops;
@:pythonImport("tensorflow.python.ops.gen_sparse_ops") extern class Gen_sparse_ops_Module {
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function deserialize_many_sparse(serialized_sparse:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function deserialize_sparse(serialized_sparse:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function deserialize_sparse_eager_fallback(serialized_sparse:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function serialize_many_sparse(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function serialize_many_sparse_eager_fallback(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function serialize_sparse(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function serialize_sparse_eager_fallback(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_add(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, thresh:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sparse_concat(indices:Dynamic, values:Dynamic, shapes:Dynamic, concat_dim:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_concat_eager_fallback(indices:Dynamic, values:Dynamic, shapes:Dynamic, concat_dim:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_cross(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, hash_key:Dynamic, out_type:Dynamic, internal_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_cross_eager_fallback(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, hash_key:Dynamic, out_type:Dynamic, internal_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_cross_hashed(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, num_buckets:Dynamic, strong_hash:Dynamic, salt:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sparse_dense_cwise_add(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sparse_fill_empty_rows(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, default_value:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sparse_reduce_max(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_reduce_max_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_reduce_max_sparse(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_reduce_max_sparse_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_reduce_sum(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_reduce_sum_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_reduce_sum_sparse(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_reduce_sum_sparse_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_reorder(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_reorder_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_reshape(input_indices:Dynamic, input_shape:Dynamic, new_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_reshape_eager_fallback(input_indices:Dynamic, input_shape:Dynamic, new_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_slice(indices:Dynamic, values:Dynamic, shape:Dynamic, start:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sparse_softmax(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sparse_split(split_dim:Dynamic, indices:Dynamic, values:Dynamic, shape:Dynamic, num_split:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_split_eager_fallback(split_dim:Dynamic, indices:Dynamic, values:Dynamic, shape:Dynamic, num_split:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_to_dense(sparse_indices:Dynamic, output_shape:Dynamic, sparse_values:Dynamic, default_value:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_to_dense_eager_fallback(sparse_indices:Dynamic, output_shape:Dynamic, sparse_values:Dynamic, default_value:Dynamic, validate_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
}