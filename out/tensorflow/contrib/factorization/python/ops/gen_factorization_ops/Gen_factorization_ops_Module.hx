/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.gen_factorization_ops;
@:pythonImport("tensorflow.contrib.factorization.python.ops.gen_factorization_ops") extern class Gen_factorization_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _wals_compute_partial_lhs_and_rhs_outputs : Dynamic;
	/**
		Computes the product a * b, but only for indices (i, j) in mask_indices. The
		
		result is stored in prod_values, a rank 1 tensor, such that for all i,
		prod_values[i] = (a * b)[mask_indices[i, 0], mask_indices[i, 1]].
		Note that the shapes of the input matrices a, b should be compatible (after
		transposing as specified by the arguments transpose_a and transpose_b).
		
		Input arguments:
		
		Args:
		  a: A `Tensor` of type `float32`. A rank 2 tensor of shape [m, n].
		  b: A `Tensor` of type `float32`.
		    A rank 2 tensor of shape [s, t]. The inner dimensions of a and b should match
		    after transposition.
		  mask_indices: A `Tensor` of type `int64`.
		    A rank 2 tensor, of shape [nnz, 2] where nnz is the number of
		    non-zero elements in the output. The indices are not assumed to be in
		    lexicographic, or any particular order.
		    For all i, mask_indices[i, :] should represent a valid index of the product
		    matrix (a * b) (after transposition). That is:
		    mask_indices[i, 0] should be in [0, m) if !transpose_a, and in [0, n)
		      otherwise.
		    mask_indices[i, 1] should be in [0, t) if !transpose_b, and in [0, s)
		      otherwise.
		  transpose_a: A `Tensor` of type `bool`.
		    A boolean, specifies whether to transpose the matrix a.
		  transpose_b: A `Tensor` of type `bool`.
		    A boolean, specifies whether to transpose the matrix b.
		
		    Output arguments:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A rank 1 tensor of shape [nnz], representing the values of the
		  non-zero elements in the product, such that for all i,
		  prod_values[i] = (a * b)[mask_indices[i, 0], mask_indices[i, 1]].
	**/
	static public function masked_matmul(a:Dynamic, b:Dynamic, mask_indices:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the partial left-hand side and right-hand side of WALS update.
		
		Args:
		  factors: A `Tensor` of type `float32`. Matrix of size m * k.
		  factor_weights: A `Tensor` of type `float32`.
		    Vector of size m. Corresponds to column weights
		  unobserved_weights: A `Tensor` of type `float32`.
		    Scalar. Weight for unobserved input entries.
		  input_weights: A `Tensor` of type `float32`.
		    Vector of size n. Corresponds to row weights.
		  input_indices: A `Tensor` of type `int64`.
		    Indices for the input SparseTensor.
		  input_values: A `Tensor` of type `float32`.
		    Values for the input SparseTensor.
		  input_block_size: A `Tensor` of type `int64`.
		    Scalar. Number of rows spanned by input.
		  input_is_transpose: A `Tensor` of type `bool`.
		    If true, logically transposes the input for processing.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (partial_lhs, partial_rhs).
		
		  partial_lhs: A `Tensor` of type `float32`. 3-D tensor with size input_block_size x k x k.
		  partial_rhs: A `Tensor` of type `float32`. Matrix with size input_block_size x k.
	**/
	static public function wals_compute_partial_lhs_and_rhs(factors:Dynamic, factor_weights:Dynamic, unobserved_weights:Dynamic, input_weights:Dynamic, input_indices:Dynamic, input_values:Dynamic, input_block_size:Dynamic, input_is_transpose:Dynamic, ?name:Dynamic):Dynamic;
}