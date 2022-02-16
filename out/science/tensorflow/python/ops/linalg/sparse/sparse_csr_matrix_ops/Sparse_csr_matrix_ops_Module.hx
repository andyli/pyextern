/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.sparse.sparse_csr_matrix_ops;
@:pythonImport("tensorflow.python.ops.linalg.sparse.sparse_csr_matrix_ops") extern class Sparse_csr_matrix_ops_Module {
	/**
		Reads out the CSR components at batch `index`.
		
		This op is meant only for debugging / testing, and its interface is not expected
		to be stable.
		
		Args:
		  csr_sparse_matrix: A `Tensor` of type `variant`.
		    A batched CSRSparseMatrix.
		  index: A `Tensor` of type `int32`.
		    The index in `csr_sparse_matrix`'s batch.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (row_ptrs, col_inds, values).
		
		  row_ptrs: A `Tensor` of type `int32`.
		  col_inds: A `Tensor` of type `int32`.
		  values: A `Tensor` of type `type`.
	**/
	static public function CSRSparseMatrixComponents(csr_sparse_matrix:Dynamic, index:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert a (possibly batched) CSRSparseMatrix to dense.
		
		Args:
		  sparse_input: A `Tensor` of type `variant`. A batched CSRSparseMatrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `type`.
	**/
	static public function CSRSparseMatrixToDense(sparse_input:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a (possibly batched) CSRSparesMatrix to a SparseTensor.
		
		Args:
		  sparse_matrix: A `Tensor` of type `variant`.
		    A (possibly batched) CSRSparseMatrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (indices, values, dense_shape).
		
		  indices: A `Tensor` of type `int64`.
		  values: A `Tensor` of type `type`.
		  dense_shape: A `Tensor` of type `int64`.
	**/
	static public function CSRSparseMatrixToSparseTensor(sparse_matrix:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a dense tensor to a (possibly batched) CSRSparseMatrix.
		
		Args:
		  dense_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    A Dense tensor.
		  indices: A `Tensor` of type `int64`. Indices of nonzero elements.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function DenseToCSRSparseMatrix(dense_input:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sparse addition of two CSR matrices, C = alpha * A + beta * B.
		
		The gradients of SparseMatrixAdd outputs with respect to alpha and beta are not
		currently defined (TensorFlow will return zeros for these entries).
		
		Args:
		  a: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  b: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  alpha: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    A constant scalar.
		  beta: A `Tensor`. Must have the same type as `alpha`. A constant scalar.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SparseMatrixAdd(a:Dynamic, b:Dynamic, alpha:Dynamic, beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Matrix-multiplies a sparse matrix with a dense matrix.
		
		Returns a dense matrix.
		For inputs A and B, where A is CSR and B is dense; this op returns a dense C;
		
		If transpose_output is false, returns:
		```
		  C = A . B
		```
		
		If transpose_output is `true`, returns:
		```
		  C = transpose(A . B) = transpose(B) . transpose(A)
		```
		where the transposition is performed along the two innermost (matrix)
		dimensions.
		
		If conjugate_output is `true`, returns:
		```
		  C = conjugate(A . B) = conjugate(A) . conjugate(B)
		```
		
		If both conjugate_output and transpose_output are `true`, returns:
		```
		  C = conjugate(transpose(A . B)) = conjugate(transpose(B)) .
		                                    conjugate(transpose(A))
		```
		
		Args:
		  a: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  b: A `Tensor`. A dense tensor.
		  transpose_a: An optional `bool`. Defaults to `False`.
		    Indicates whether `a` should be transposed.
		  transpose_b: An optional `bool`. Defaults to `False`.
		    Indicates whether `b` should be transposed.
		  adjoint_a: An optional `bool`. Defaults to `False`.
		    Indicates whether `a` should be conjugate-transposed.
		  adjoint_b: An optional `bool`. Defaults to `False`.
		    Indicates whether `b` should be conjugate-transposed.
		  transpose_output: An optional `bool`. Defaults to `False`.
		    Transposes the product of `a` and `b`.
		  conjugate_output: An optional `bool`. Defaults to `False`.
		    Conjugates the product of `a` and `b`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `b`.
	**/
	static public function SparseMatrixMatMul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?transpose_output:Dynamic, ?conjugate_output:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Element-wise multiplication of a sparse matrix with a dense tensor.
		
		Returns a sparse matrix.
		
		The dense tensor `b` may be either a scalar; otherwise `a` must be a rank-3
		`SparseMatrix`; in this case `b` must be shaped `[batch_size, 1, 1]` and the
		multiply operation broadcasts.
		
		**NOTE** even if `b` is zero, the sparsity structure of the output does not
		change.
		
		Args:
		  a: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  b: A `Tensor`. A dense tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SparseMatrixMul(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the number of nonzeroes of `sparse_matrix`.
		
		Args:
		  sparse_matrix: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function SparseMatrixNNZ(sparse_matrix:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Approximate Minimum Degree (AMD) ordering of `input`.
		
		Computes the Approximate Minimum Degree (AMD) ordering for a sparse matrix.
		
		The returned permutation may be used to permute the rows and columns of the
		given sparse matrix. This typically results in permuted sparse matrix's sparse
		Cholesky (or other decompositions) in having fewer zero fill-in compared to
		decomposition of the original matrix.
		
		The input sparse matrix may have rank 2 or rank 3. The output Tensor,
		representing would then have rank 1 or 2 respectively, with the same batch
		shape as the input.
		
		Each component of the input sparse matrix must represent a square symmetric
		matrix; only the lower triangular part of the matrix is read. The values of the
		sparse matrix does not affect the returned permutation, only the sparsity
		pattern of the sparse matrix is used. Hence, a single AMD ordering may be
		reused for the Cholesky decompositions of sparse matrices with the same sparsity
		pattern but with possibly different values.
		
		Each batch component of the output permutation represents a permutation of `N`
		elements, where the input sparse matrix components each have `N` rows. That is,
		the component contains each of the integers `{0, .. N-1}` exactly once. The
		`i`th element represents the row index that the `i`th row maps to.
		
		Usage example:
		
		```python
		    from tensorflow.python.ops.linalg.sparse import sparse_csr_matrix_ops
		
		    a_indices = np.array([[0, 0], [1, 1], [2, 1], [2, 2], [3, 3]])
		    a_values = np.array([1.0, 2.0, 1.0, 3.0, 4.0], np.float32)
		    a_dense_shape = [4, 4]
		
		    with tf.Session() as sess:
		      # Define (COO format) SparseTensor over Numpy array.
		      a_st = tf.sparse.SparseTensor(a_indices, a_values, a_dense_shape)
		
		      # Convert SparseTensors to CSR SparseMatrix.
		      a_sm = sparse_csr_matrix_ops.sparse_tensor_to_csr_sparse_matrix(
		          a_st.indices, a_st.values, a_st.dense_shape)
		
		      # Obtain the AMD Ordering for the CSR SparseMatrix.
		      ordering_amd = sparse_csr_matrix_ops.sparse_matrix_ordering_amd(sparse_matrix)
		
		      ordering_amd_value = sess.run(ordering_amd)
		```
		
		`ordering_amd_value` stores the AMD ordering: `[1 2 3 0]`.
		
		input: A `CSRSparseMatrix`.
		
		Args:
		  input: A `Tensor` of type `variant`. A `CSRSparseMatrix`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function SparseMatrixOrderingAMD(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates the softmax of a CSRSparseMatrix.
		
		Calculate the softmax of the innermost dimensions of a SparseMatrix.
		
		Missing values are treated as `-inf` (i.e., logits of zero probability); and
		the output has the same sparsity structure as the input (though missing values
		in the output may now be treated as having probability zero).
		
		Args:
		  logits: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SparseMatrixSoftmax(logits:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates the gradient of the SparseMatrixSoftmax op.
		
		Args:
		  softmax: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  grad_softmax: A `Tensor` of type `variant`. The gradient of `softmax`.
		  type: A `tf.DType` from: `tf.float32, tf.float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SparseMatrixSoftmaxGrad(softmax:Dynamic, grad_softmax:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sparse Cholesky decomposition of `input`.
		
		Computes the Sparse Cholesky decomposition of a sparse matrix, with the given
		fill-in reducing permutation.
		
		The input sparse matrix and the fill-in reducing permutation `permutation` must
		have compatible shapes. If the sparse matrix has rank 3; with the batch
		dimension `B`, then the `permutation` must be of rank 2; with the same batch
		dimension `B`. There is no support for broadcasting.
		
		Furthermore, each component vector of `permutation` must be of length `N`,
		containing each of the integers {0, 1, ..., N - 1} exactly once, where `N` is
		the number of rows of each component of the sparse matrix.
		
		Each component of the input sparse matrix must represent a symmetric positive
		definite (SPD) matrix; although only the lower triangular part of the matrix is
		read. If any individual component is not SPD, then an InvalidArgument error is
		thrown.
		
		The returned sparse matrix has the same dense shape as the input sparse matrix.
		For each component `A` of the input sparse matrix, the corresponding output
		sparse matrix represents `L`, the lower triangular Cholesky factor satisfying
		the following identity:
		
		```
		  A = L * Lt
		```
		
		where Lt denotes the transpose of L (or its conjugate transpose, if `type` is
		`complex64` or `complex128`).
		
		The `type` parameter denotes the type of the matrix elements. The supported
		types are: `float32`, `float64`, `complex64` and `complex128`.
		
		Usage example:
		
		```python
		    from tensorflow.python.ops.linalg.sparse import sparse_csr_matrix_ops
		
		    a_indices = np.array([[0, 0], [1, 1], [2, 1], [2, 2], [3, 3]])
		    a_values = np.array([1.0, 2.0, 1.0, 3.0, 4.0], np.float32)
		    a_dense_shape = [4, 4]
		
		    with tf.Session() as sess:
		      # Define (COO format) SparseTensor over Numpy array.
		      a_st = tf.sparse.SparseTensor(a_indices, a_values, a_dense_shape)
		
		      # Convert SparseTensors to CSR SparseMatrix.
		      a_sm = sparse_csr_matrix_ops.sparse_tensor_to_csr_sparse_matrix(
		          a_st.indices, a_st.values, a_st.dense_shape)
		
		      # Obtain the Sparse Cholesky factor using AMD Ordering for reducing zero
		      # fill-in (number of structural non-zeros in the sparse Cholesky factor).
		      ordering_amd = sparse_csr_matrix_ops.sparse_matrix_ordering_amd(sparse_matrix)
		      cholesky_sparse_matrices = (
		          sparse_csr_matrix_ops.sparse_matrix_sparse_cholesky(
		              sparse_matrix, ordering_amd, type=tf.float32))
		
		      # Convert the CSRSparseMatrix Cholesky factor to a dense Tensor
		      dense_cholesky = sparse_csr_matrix_ops.csr_sparse_matrix_to_dense(
		          cholesky_sparse_matrices, tf.float32)
		
		      # Evaluate the dense Tensor value.
		      dense_cholesky_value = sess.run(dense_cholesky)
		```
		
		`dense_cholesky_value` stores the dense Cholesky factor:
		
		```
		    [[  1.  0.    0.    0.]
		     [  0.  1.41  0.    0.]
		     [  0.  0.70  1.58  0.]
		     [  0.  0.    0.    2.]]
		```
		
		
		input: A `CSRSparseMatrix`.
		permutation: A `Tensor`.
		type: The type of `input`.
		
		Args:
		  input: A `Tensor` of type `variant`. A `CSRSparseMatrix`.
		  permutation: A `Tensor` of type `int32`.
		    A fill-in reducing permutation matrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SparseMatrixSparseCholesky(input:Dynamic, permutation:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sparse-matrix-multiplies two CSR matrices `a` and `b`.
		
		Performs a matrix multiplication of a sparse matrix `a` with a sparse matrix
		`b`; returns a sparse matrix `a * b`, unless either `a` or `b` is transposed or
		adjointed.
		
		Each matrix may be transposed or adjointed (conjugated and transposed)
		according to the Boolean parameters `transpose_a`, `adjoint_a`, `transpose_b`
		and `adjoint_b`. At most one of `transpose_a` or `adjoint_a` may be True.
		Similarly, at most one of `transpose_b` or `adjoint_b` may be True.
		
		The inputs must have compatible shapes. That is, the inner dimension of `a`
		must be equal to the outer dimension of `b`. This requirement is adjusted
		according to whether either `a` or `b` is transposed or adjointed.
		
		The `type` parameter denotes the type of the matrix elements. Both `a` and `b`
		must have the same type. The supported types are: `float32`, `float64`,
		`complex64` and `complex128`.
		
		Both `a` and `b` must have the same rank. Broadcasting is not supported. If they
		have rank 3, each batch of 2D CSRSparseMatrices within `a` and `b` must have the
		same dense shape.
		
		The sparse matrix product may have numeric (non-structural) zeros.
		TODO(anudhyan): Consider adding a boolean attribute to control whether to prune
		zeros.
		
		Usage example:
		
		```python
		    from tensorflow.python.ops.linalg.sparse import sparse_csr_matrix_ops
		
		    a_indices = np.array([[0, 0], [2, 3], [2, 4], [3, 0]])
		    a_values = np.array([1.0, 5.0, -1.0, -2.0], np.float32)
		    a_dense_shape = [4, 5]
		
		    b_indices = np.array([[0, 0], [3, 0], [3, 1]])
		    b_values = np.array([2.0, 7.0, 8.0], np.float32)
		    b_dense_shape = [5, 3]
		
		    with tf.Session() as sess:
		      # Define (COO format) Sparse Tensors over Numpy arrays
		      a_st = tf.sparse.SparseTensor(a_indices, a_values, a_dense_shape)
		      b_st = tf.sparse.SparseTensor(b_indices, b_values, b_dense_shape)
		
		      # Convert SparseTensors to CSR SparseMatrix
		      a_sm = sparse_csr_matrix_ops.sparse_tensor_to_csr_sparse_matrix(
		          a_st.indices, a_st.values, a_st.dense_shape)
		      b_sm = sparse_csr_matrix_ops.sparse_tensor_to_csr_sparse_matrix(
		          b_st.indices, b_st.values, b_st.dense_shape)
		
		      # Compute the CSR SparseMatrix matrix multiplication
		      c_sm = sparse_csr_matrix_ops.sparse_matrix_sparse_mat_mul(
		          a=a_sm, b=b_sm, type=tf.float32)
		
		      # Convert the CSR SparseMatrix product to a dense Tensor
		      c_sm_dense = sparse_csr_matrix_ops.csr_sparse_matrix_to_dense(
		          c_sm, tf.float32)
		      # Evaluate the dense Tensor value
		      c_sm_dense_value = sess.run(c_sm_dense)
		```
		
		`c_sm_dense_value` stores the dense matrix product:
		
		```
		    [[  2.   0.   0.]
		     [  0.   0.   0.]
		     [ 35.  40.   0.]
		     [ -4.   0.   0.]]
		```
		
		a: A `CSRSparseMatrix`.
		b: A `CSRSparseMatrix` with the same type and rank as `a`.
		type: The type of both `a` and `b`.
		transpose_a: If True, `a` transposed before multiplication.
		transpose_b: If True, `b` transposed before multiplication.
		adjoint_a: If True, `a` adjointed before multiplication.
		adjoint_b: If True, `b` adjointed before multiplication.
		
		Args:
		  a: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  b: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		    Indicates whether `a` should be transposed.
		  transpose_b: An optional `bool`. Defaults to `False`.
		    Indicates whether `b` should be transposed.
		  adjoint_a: An optional `bool`. Defaults to `False`.
		    Indicates whether `a` should be conjugate-transposed.
		  adjoint_b: An optional `bool`. Defaults to `False`.
		    Indicates whether `b` should be conjugate-transposed.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SparseMatrixSparseMatMul(a:Dynamic, b:Dynamic, type:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transposes the inner (matrix) dimensions of a CSRSparseMatrix.
		
		Transposes the inner (matrix) dimensions of a SparseMatrix and optionally
		conjugates its values.
		
		Args:
		  input: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  conjugate: An optional `bool`. Defaults to `False`.
		    Indicates whether `input` should be conjugated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SparseMatrixTranspose(input:Dynamic, type:Dynamic, ?conjugate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates an all-zeros CSRSparseMatrix with shape `dense_shape`.
		
		Args:
		  dense_shape: A `Tensor` of type `int64`. The desired matrix shape.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SparseMatrixZeros(dense_shape:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a SparseTensor to a (possibly batched) CSRSparseMatrix.
		
		Args:
		  indices: A `Tensor` of type `int64`. SparseTensor indices.
		  values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    SparseTensor values.
		  dense_shape: A `Tensor` of type `int64`. SparseTensor dense shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function SparseTensorToCSRSparseMatrix(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create handle data based on shape and dtype protos.
	**/
	static public function _create_handle_data_proto(shape_proto:Dynamic, dtype_enum:Dynamic):Dynamic;
	static public function _get_handle_data(tensor:Dynamic):Dynamic;
	/**
		Create handle data based on tensor shape and dtype.
	**/
	static public function _make_handle_data(tensor:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Reads out the CSR components at batch `index`.
		
		This op is meant only for debugging / testing, and its interface is not expected
		to be stable.
		
		Args:
		  csr_sparse_matrix: A `Tensor` of type `variant`.
		    A batched CSRSparseMatrix.
		  index: A `Tensor` of type `int32`.
		    The index in `csr_sparse_matrix`'s batch.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (row_ptrs, col_inds, values).
		
		  row_ptrs: A `Tensor` of type `int32`.
		  col_inds: A `Tensor` of type `int32`.
		  values: A `Tensor` of type `type`.
	**/
	static public function csr_sparse_matrix_components(csr_sparse_matrix:Dynamic, index:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	static public function csr_sparse_matrix_components_eager_fallback(csr_sparse_matrix:Dynamic, index:Dynamic, type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Convert a (possibly batched) CSRSparseMatrix to dense.
		
		Args:
		  sparse_input: A `Tensor` of type `variant`. A batched CSRSparseMatrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `type`.
	**/
	static public function csr_sparse_matrix_to_dense(sparse_input:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	static public function csr_sparse_matrix_to_dense_eager_fallback(sparse_input:Dynamic, type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Converts a (possibly batched) CSRSparesMatrix to a SparseTensor.
		
		Args:
		  sparse_matrix: A `Tensor` of type `variant`.
		    A (possibly batched) CSRSparseMatrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (indices, values, dense_shape).
		
		  indices: A `Tensor` of type `int64`.
		  values: A `Tensor` of type `type`.
		  dense_shape: A `Tensor` of type `int64`.
	**/
	static public function csr_sparse_matrix_to_sparse_tensor(sparse_matrix:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	static public function csr_sparse_matrix_to_sparse_tensor_eager_fallback(sparse_matrix:Dynamic, type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Get dense shape and dtype of the tf.Tensor containing the matrix.
		
		Args:
		  matrix: A `tf.Tensor` of type `tf.variant` storing a sparse matrix.
		
		Returns:
		  An instance of `ShapeAndType` with properties `shape` (a `tf.TensorShape`)
		  and `dtype` (a `tf.DType`).
		
		Raises:
		  TypeError: if `matrix` is not a tensor or its dtype is not variant.
		  ValueError: if `matrix` lacks static handle data containing the dense
		    shape and dtype.
	**/
	static public function dense_shape_and_type(matrix:Dynamic):Dynamic;
	/**
		Converts a dense tensor to a (possibly batched) CSRSparseMatrix.
		
		Args:
		  dense_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    A Dense tensor.
		  indices: A `Tensor` of type `int64`. Indices of nonzero elements.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function dense_to_csr_sparse_matrix(dense_input:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function dense_to_csr_sparse_matrix_eager_fallback(dense_input:Dynamic, indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public var division : Dynamic;
	/**
		Return matrix's shape and type if available.
	**/
	static public function get_shape_and_type(matrix:Dynamic):Dynamic;
	/**
		Perform a sparse matrix matmul between `a` and `b`.
		
		Performs a contraction between `a` and `b` along the two innermost dimensions.
		If both `a` and `b` are instances of `SparseMatrix`, returns a new instance
		of `SparseMatrix` (same type as `a`).  If one is not an instance of
		`SparseMatrix`, returns a dense `Tensor`:
		
		```
		c = opA(a) . opB(b)
		```
		where `opA` (resp. `opB`) is the transpose or hermitian transpose depending
		on the values of `transpose_a` (resp. `transpose_b`) and `adjoint_a`
		(resp. `adjoint_b`).
		
		Args:
		  a: `Tensor` or `SparseMatrix`, having rank `2` or `3`.
		  b: `Tensor` or `SparseMatrix`, having rank `2` or `3`.
		  transpose_a: Python `bool`.
		  transpose_b: Python `bool`.
		  adjoint_a: Python `bool`.
		  adjoint_b: Python `bool`.
		  name: Optional name to use when creating ops.
		
		Returns:
		  A `SparseMatrix` if both `a` and `b` are instances of `SparseMatrix`,
		  otherwise a dense `Tensor`.
	**/
	static public function matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Helper function for matmul to set the result matrix's handle data.
	**/
	static public function matmul_shape_inference(a:Dynamic, b:Dynamic, c:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, adjoint_a:Dynamic, adjoint_b:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Sparse addition of two CSR matrices, C = alpha * A + beta * B.
		
		The gradients of SparseMatrixAdd outputs with respect to alpha and beta are not
		currently defined (TensorFlow will return zeros for these entries).
		
		Args:
		  a: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  b: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  alpha: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    A constant scalar.
		  beta: A `Tensor`. Must have the same type as `alpha`. A constant scalar.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sparse_matrix_add(a:Dynamic, b:Dynamic, alpha:Dynamic, beta:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_add_eager_fallback(a:Dynamic, b:Dynamic, alpha:Dynamic, beta:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Matrix-multiplies a sparse matrix with a dense matrix.
		
		Returns a dense matrix.
		For inputs A and B, where A is CSR and B is dense; this op returns a dense C;
		
		If transpose_output is false, returns:
		```
		  C = A . B
		```
		
		If transpose_output is `true`, returns:
		```
		  C = transpose(A . B) = transpose(B) . transpose(A)
		```
		where the transposition is performed along the two innermost (matrix)
		dimensions.
		
		If conjugate_output is `true`, returns:
		```
		  C = conjugate(A . B) = conjugate(A) . conjugate(B)
		```
		
		If both conjugate_output and transpose_output are `true`, returns:
		```
		  C = conjugate(transpose(A . B)) = conjugate(transpose(B)) .
		                                    conjugate(transpose(A))
		```
		
		Args:
		  a: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  b: A `Tensor`. A dense tensor.
		  transpose_a: An optional `bool`. Defaults to `False`.
		    Indicates whether `a` should be transposed.
		  transpose_b: An optional `bool`. Defaults to `False`.
		    Indicates whether `b` should be transposed.
		  adjoint_a: An optional `bool`. Defaults to `False`.
		    Indicates whether `a` should be conjugate-transposed.
		  adjoint_b: An optional `bool`. Defaults to `False`.
		    Indicates whether `b` should be conjugate-transposed.
		  transpose_output: An optional `bool`. Defaults to `False`.
		    Transposes the product of `a` and `b`.
		  conjugate_output: An optional `bool`. Defaults to `False`.
		    Conjugates the product of `a` and `b`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `b`.
	**/
	static public function sparse_matrix_mat_mul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?transpose_output:Dynamic, ?conjugate_output:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_mat_mul_eager_fallback(a:Dynamic, b:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, adjoint_a:Dynamic, adjoint_b:Dynamic, transpose_output:Dynamic, conjugate_output:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Element-wise multiplication of a sparse matrix with a dense tensor.
		
		Returns a sparse matrix.
		
		The dense tensor `b` may be either a scalar; otherwise `a` must be a rank-3
		`SparseMatrix`; in this case `b` must be shaped `[batch_size, 1, 1]` and the
		multiply operation broadcasts.
		
		**NOTE** even if `b` is zero, the sparsity structure of the output does not
		change.
		
		Args:
		  a: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  b: A `Tensor`. A dense tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sparse_matrix_mul(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_mul_eager_fallback(a:Dynamic, b:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the number of nonzeroes of `sparse_matrix`.
		
		Args:
		  sparse_matrix: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function sparse_matrix_nnz(sparse_matrix:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_nnz_eager_fallback(sparse_matrix:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the Approximate Minimum Degree (AMD) ordering of `input`.
		
		Computes the Approximate Minimum Degree (AMD) ordering for a sparse matrix.
		
		The returned permutation may be used to permute the rows and columns of the
		given sparse matrix. This typically results in permuted sparse matrix's sparse
		Cholesky (or other decompositions) in having fewer zero fill-in compared to
		decomposition of the original matrix.
		
		The input sparse matrix may have rank 2 or rank 3. The output Tensor,
		representing would then have rank 1 or 2 respectively, with the same batch
		shape as the input.
		
		Each component of the input sparse matrix must represent a square symmetric
		matrix; only the lower triangular part of the matrix is read. The values of the
		sparse matrix does not affect the returned permutation, only the sparsity
		pattern of the sparse matrix is used. Hence, a single AMD ordering may be
		reused for the Cholesky decompositions of sparse matrices with the same sparsity
		pattern but with possibly different values.
		
		Each batch component of the output permutation represents a permutation of `N`
		elements, where the input sparse matrix components each have `N` rows. That is,
		the component contains each of the integers `{0, .. N-1}` exactly once. The
		`i`th element represents the row index that the `i`th row maps to.
		
		Usage example:
		
		```python
		    from tensorflow.python.ops.linalg.sparse import sparse_csr_matrix_ops
		
		    a_indices = np.array([[0, 0], [1, 1], [2, 1], [2, 2], [3, 3]])
		    a_values = np.array([1.0, 2.0, 1.0, 3.0, 4.0], np.float32)
		    a_dense_shape = [4, 4]
		
		    with tf.Session() as sess:
		      # Define (COO format) SparseTensor over Numpy array.
		      a_st = tf.sparse.SparseTensor(a_indices, a_values, a_dense_shape)
		
		      # Convert SparseTensors to CSR SparseMatrix.
		      a_sm = sparse_csr_matrix_ops.sparse_tensor_to_csr_sparse_matrix(
		          a_st.indices, a_st.values, a_st.dense_shape)
		
		      # Obtain the AMD Ordering for the CSR SparseMatrix.
		      ordering_amd = sparse_csr_matrix_ops.sparse_matrix_ordering_amd(sparse_matrix)
		
		      ordering_amd_value = sess.run(ordering_amd)
		```
		
		`ordering_amd_value` stores the AMD ordering: `[1 2 3 0]`.
		
		input: A `CSRSparseMatrix`.
		
		Args:
		  input: A `Tensor` of type `variant`. A `CSRSparseMatrix`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function sparse_matrix_ordering_amd(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_ordering_amd_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Calculates the softmax of a CSRSparseMatrix.
		
		Calculate the softmax of the innermost dimensions of a SparseMatrix.
		
		Missing values are treated as `-inf` (i.e., logits of zero probability); and
		the output has the same sparsity structure as the input (though missing values
		in the output may now be treated as having probability zero).
		
		Args:
		  logits: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sparse_matrix_softmax(logits:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_softmax_eager_fallback(logits:Dynamic, type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Calculates the gradient of the SparseMatrixSoftmax op.
		
		Args:
		  softmax: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  grad_softmax: A `Tensor` of type `variant`. The gradient of `softmax`.
		  type: A `tf.DType` from: `tf.float32, tf.float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sparse_matrix_softmax_grad(softmax:Dynamic, grad_softmax:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_softmax_grad_eager_fallback(softmax:Dynamic, grad_softmax:Dynamic, type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the sparse Cholesky decomposition of `input`.
		
		Computes the Sparse Cholesky decomposition of a sparse matrix, with the given
		fill-in reducing permutation.
		
		The input sparse matrix and the fill-in reducing permutation `permutation` must
		have compatible shapes. If the sparse matrix has rank 3; with the batch
		dimension `B`, then the `permutation` must be of rank 2; with the same batch
		dimension `B`. There is no support for broadcasting.
		
		Furthermore, each component vector of `permutation` must be of length `N`,
		containing each of the integers {0, 1, ..., N - 1} exactly once, where `N` is
		the number of rows of each component of the sparse matrix.
		
		Each component of the input sparse matrix must represent a symmetric positive
		definite (SPD) matrix; although only the lower triangular part of the matrix is
		read. If any individual component is not SPD, then an InvalidArgument error is
		thrown.
		
		The returned sparse matrix has the same dense shape as the input sparse matrix.
		For each component `A` of the input sparse matrix, the corresponding output
		sparse matrix represents `L`, the lower triangular Cholesky factor satisfying
		the following identity:
		
		```
		  A = L * Lt
		```
		
		where Lt denotes the transpose of L (or its conjugate transpose, if `type` is
		`complex64` or `complex128`).
		
		The `type` parameter denotes the type of the matrix elements. The supported
		types are: `float32`, `float64`, `complex64` and `complex128`.
		
		Usage example:
		
		```python
		    from tensorflow.python.ops.linalg.sparse import sparse_csr_matrix_ops
		
		    a_indices = np.array([[0, 0], [1, 1], [2, 1], [2, 2], [3, 3]])
		    a_values = np.array([1.0, 2.0, 1.0, 3.0, 4.0], np.float32)
		    a_dense_shape = [4, 4]
		
		    with tf.Session() as sess:
		      # Define (COO format) SparseTensor over Numpy array.
		      a_st = tf.sparse.SparseTensor(a_indices, a_values, a_dense_shape)
		
		      # Convert SparseTensors to CSR SparseMatrix.
		      a_sm = sparse_csr_matrix_ops.sparse_tensor_to_csr_sparse_matrix(
		          a_st.indices, a_st.values, a_st.dense_shape)
		
		      # Obtain the Sparse Cholesky factor using AMD Ordering for reducing zero
		      # fill-in (number of structural non-zeros in the sparse Cholesky factor).
		      ordering_amd = sparse_csr_matrix_ops.sparse_matrix_ordering_amd(sparse_matrix)
		      cholesky_sparse_matrices = (
		          sparse_csr_matrix_ops.sparse_matrix_sparse_cholesky(
		              sparse_matrix, ordering_amd, type=tf.float32))
		
		      # Convert the CSRSparseMatrix Cholesky factor to a dense Tensor
		      dense_cholesky = sparse_csr_matrix_ops.csr_sparse_matrix_to_dense(
		          cholesky_sparse_matrices, tf.float32)
		
		      # Evaluate the dense Tensor value.
		      dense_cholesky_value = sess.run(dense_cholesky)
		```
		
		`dense_cholesky_value` stores the dense Cholesky factor:
		
		```
		    [[  1.  0.    0.    0.]
		     [  0.  1.41  0.    0.]
		     [  0.  0.70  1.58  0.]
		     [  0.  0.    0.    2.]]
		```
		
		
		input: A `CSRSparseMatrix`.
		permutation: A `Tensor`.
		type: The type of `input`.
		
		Args:
		  input: A `Tensor` of type `variant`. A `CSRSparseMatrix`.
		  permutation: A `Tensor` of type `int32`.
		    A fill-in reducing permutation matrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sparse_matrix_sparse_cholesky(input:Dynamic, permutation:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_sparse_cholesky_eager_fallback(input:Dynamic, permutation:Dynamic, type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Sparse-matrix-multiplies two CSR matrices `a` and `b`.
		
		Performs a matrix multiplication of a sparse matrix `a` with a sparse matrix
		`b`; returns a sparse matrix `a * b`, unless either `a` or `b` is transposed or
		adjointed.
		
		Each matrix may be transposed or adjointed (conjugated and transposed)
		according to the Boolean parameters `transpose_a`, `adjoint_a`, `transpose_b`
		and `adjoint_b`. At most one of `transpose_a` or `adjoint_a` may be True.
		Similarly, at most one of `transpose_b` or `adjoint_b` may be True.
		
		The inputs must have compatible shapes. That is, the inner dimension of `a`
		must be equal to the outer dimension of `b`. This requirement is adjusted
		according to whether either `a` or `b` is transposed or adjointed.
		
		The `type` parameter denotes the type of the matrix elements. Both `a` and `b`
		must have the same type. The supported types are: `float32`, `float64`,
		`complex64` and `complex128`.
		
		Both `a` and `b` must have the same rank. Broadcasting is not supported. If they
		have rank 3, each batch of 2D CSRSparseMatrices within `a` and `b` must have the
		same dense shape.
		
		The sparse matrix product may have numeric (non-structural) zeros.
		TODO(anudhyan): Consider adding a boolean attribute to control whether to prune
		zeros.
		
		Usage example:
		
		```python
		    from tensorflow.python.ops.linalg.sparse import sparse_csr_matrix_ops
		
		    a_indices = np.array([[0, 0], [2, 3], [2, 4], [3, 0]])
		    a_values = np.array([1.0, 5.0, -1.0, -2.0], np.float32)
		    a_dense_shape = [4, 5]
		
		    b_indices = np.array([[0, 0], [3, 0], [3, 1]])
		    b_values = np.array([2.0, 7.0, 8.0], np.float32)
		    b_dense_shape = [5, 3]
		
		    with tf.Session() as sess:
		      # Define (COO format) Sparse Tensors over Numpy arrays
		      a_st = tf.sparse.SparseTensor(a_indices, a_values, a_dense_shape)
		      b_st = tf.sparse.SparseTensor(b_indices, b_values, b_dense_shape)
		
		      # Convert SparseTensors to CSR SparseMatrix
		      a_sm = sparse_csr_matrix_ops.sparse_tensor_to_csr_sparse_matrix(
		          a_st.indices, a_st.values, a_st.dense_shape)
		      b_sm = sparse_csr_matrix_ops.sparse_tensor_to_csr_sparse_matrix(
		          b_st.indices, b_st.values, b_st.dense_shape)
		
		      # Compute the CSR SparseMatrix matrix multiplication
		      c_sm = sparse_csr_matrix_ops.sparse_matrix_sparse_mat_mul(
		          a=a_sm, b=b_sm, type=tf.float32)
		
		      # Convert the CSR SparseMatrix product to a dense Tensor
		      c_sm_dense = sparse_csr_matrix_ops.csr_sparse_matrix_to_dense(
		          c_sm, tf.float32)
		      # Evaluate the dense Tensor value
		      c_sm_dense_value = sess.run(c_sm_dense)
		```
		
		`c_sm_dense_value` stores the dense matrix product:
		
		```
		    [[  2.   0.   0.]
		     [  0.   0.   0.]
		     [ 35.  40.   0.]
		     [ -4.   0.   0.]]
		```
		
		a: A `CSRSparseMatrix`.
		b: A `CSRSparseMatrix` with the same type and rank as `a`.
		type: The type of both `a` and `b`.
		transpose_a: If True, `a` transposed before multiplication.
		transpose_b: If True, `b` transposed before multiplication.
		adjoint_a: If True, `a` adjointed before multiplication.
		adjoint_b: If True, `b` adjointed before multiplication.
		
		Args:
		  a: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  b: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		    Indicates whether `a` should be transposed.
		  transpose_b: An optional `bool`. Defaults to `False`.
		    Indicates whether `b` should be transposed.
		  adjoint_a: An optional `bool`. Defaults to `False`.
		    Indicates whether `a` should be conjugate-transposed.
		  adjoint_b: An optional `bool`. Defaults to `False`.
		    Indicates whether `b` should be conjugate-transposed.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sparse_matrix_sparse_mat_mul(a:Dynamic, b:Dynamic, type:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_sparse_mat_mul_eager_fallback(a:Dynamic, b:Dynamic, type:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, adjoint_a:Dynamic, adjoint_b:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Transposes the inner (matrix) dimensions of a CSRSparseMatrix.
		
		Transposes the inner (matrix) dimensions of a SparseMatrix and optionally
		conjugates its values.
		
		Args:
		  input: A `Tensor` of type `variant`. A CSRSparseMatrix.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  conjugate: An optional `bool`. Defaults to `False`.
		    Indicates whether `input` should be conjugated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sparse_matrix_transpose(input:Dynamic, type:Dynamic, ?conjugate:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_transpose_eager_fallback(input:Dynamic, type:Dynamic, conjugate:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates an all-zeros CSRSparseMatrix with shape `dense_shape`.
		
		Args:
		  dense_shape: A `Tensor` of type `int64`. The desired matrix shape.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.complex64, tf.complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sparse_matrix_zeros(dense_shape:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_matrix_zeros_eager_fallback(dense_shape:Dynamic, type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Converts a SparseTensor to a (possibly batched) CSRSparseMatrix.
		
		Args:
		  indices: A `Tensor` of type `int64`. SparseTensor indices.
		  values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    SparseTensor values.
		  dense_shape: A `Tensor` of type `int64`. SparseTensor dense shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function sparse_tensor_to_csr_sparse_matrix(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_tensor_to_csr_sparse_matrix_eager_fallback(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}