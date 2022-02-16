/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_conversion_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_conversion_ops") extern class Ragged_conversion_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gradient for RaggedTensorFromVariant op.
	**/
	static public function _ragged_tensor_from_variant_grad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
	/**
		Gradient for RaggedToTensor op.
	**/
	static public function _ragged_tensor_to_tensor_grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for RaggedTensorToVariant op.
	**/
	static public function _ragged_tensor_to_variant_grad(op:Dynamic, encoded_ragged_grad:Dynamic):Dynamic;
	/**
		Returns `rank(value)`, ignoring any leading dimensions with size 1.
	**/
	static public function _rank_ignoring_leading_dims_with_size_1(value:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function from_sparse(st_input:Dynamic, ?name:Dynamic):Dynamic;
	static public function from_tensor(tensor:Dynamic, ?lengths:Dynamic, ?padding:Dynamic, ?ragged_rank:Dynamic, ?row_splits_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Create a dense tensor from a ragged tensor.
	**/
	static public function ragged_to_dense(rt_input:Dynamic, ?default_value:Dynamic, ?shape:Dynamic):Dynamic;
	static public function to_sparse(rt_input:Dynamic, ?name:Dynamic):Dynamic;
	static public function to_tensor(rt_input:Dynamic, ?default_value:Dynamic, ?name:Dynamic):Dynamic;
}