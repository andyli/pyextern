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