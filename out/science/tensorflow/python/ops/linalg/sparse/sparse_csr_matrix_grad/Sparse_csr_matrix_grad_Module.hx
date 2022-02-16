/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.sparse.sparse_csr_matrix_grad;
@:pythonImport("tensorflow.python.ops.linalg.sparse.sparse_csr_matrix_grad") extern class Sparse_csr_matrix_grad_Module {
	/**
		Gradient for csr_sparse_matrix_to_dense op.
	**/
	static public function _CSRSparseMatrixToDenseGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for csr_sparse_matrix_to_sparse_tensor op.
	**/
	static public function _CSRSparseMatrixToSparseTensorGrad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
	/**
		Gradient for dense_to_csr_sparse_matrix op.
	**/
	static public function _DenseToCSRSparseMatrixGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		TODO(tabakg): Consider re-writing in C++.
	**/
	static public function _PruneCSRMatrix(unpruned:Dynamic, pruned_pattern:Dynamic):Dynamic;
	/**
		Helper function to prune COO sparse tensor.
		
		Given two sparse tensors 'unpruned' and 'pruned_pattern', generates another
		sparse tensor with indices and values fron 'unpruned' only if its indices also
		occur in pruned_pattern.
		
		Args:
		  unpruned: COO matrix with unpruned indices
		  pruned_pattern: COO matrix with pruned pattern.
		
		TODO(tabakg): This is far from optimal. Consider a C++ implementation.
		
		Returns:
		  Indices, values, and dense_shape of the pruned matrix.
	**/
	static public function _PruneSparseTensor(unpruned:Dynamic, pruned_pattern:Dynamic):Dynamic;
	/**
		Multiplies two dense matrices at selected indices.
		
		The two inputs `a` and `b` must have matching rank (2 or 3). If using rank 3,
		the first rank is used for the batch number. The last two dimensions should
		also be compatible for matrix multiplication.
		
		TODO(tabakg): Consider C++ implementation. There is also a more efficient way
		to handle transposes here.
		
		Args:
		  a: The left dense matrix (or batched matrices).
		  b: The right dense matrix (or batched matrices).
		  indices: The selected output indices where values should be produced. Other
		    indices will be pruned (not computed in the first place). Indices are
		    specified as a tensor of shape (length, rank), where length is the number
		    of entries and rank is the rank of the dense inputs (2 or 3).
		  transpose_a: Whether to transpose a.
		  adjoint_a: Whether to take the conjugate transpose of a.
		  transpose_b: Whether to transpose b.
		  adjoint_b: Whether to take the conjugate transpose of b.
		
		Returns:
		  A CSR matrix.
	**/
	static public function _PrunedDenseMatrixMultiplication(a:Dynamic, b:Dynamic, indices:Dynamic, ?transpose_a:Dynamic, ?adjoint_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_b:Dynamic):Dynamic;
	/**
		Gradient for sparse_matrix_add op.
	**/
	static public function _SparseMatrixAddGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for sparse_matrix_mat_mul op.
	**/
	static public function _SparseMatrixMatMulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for sparse_matrix_mul op.
	**/
	static public function _SparseMatrixMulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for sparse_matrix_softmax op.
	**/
	static public function _SparseMatrixSoftmaxGrad(op:Dynamic, grad_softmax:Dynamic):Dynamic;
	/**
		Gradient for sparse_matrix_sparse_mat_mul op.
	**/
	static public function _SparseMatrixSparseMatMulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for sparse_matrix_transpose op.
	**/
	static public function _SparseMatrixTransposeGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for sparse_tensor_to_csr_sparse_matrix op.
	**/
	static public function _SparseTensorToCSRSparseMatrixGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}