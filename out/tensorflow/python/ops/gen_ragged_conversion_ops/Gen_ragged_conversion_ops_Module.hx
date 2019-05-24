/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_ragged_conversion_ops;
@:pythonImport("tensorflow.python.ops.gen_ragged_conversion_ops") extern class Gen_ragged_conversion_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _ragged_tensor_to_sparse_outputs : Dynamic;
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
		Converts a `RaggedTensor` into a `SparseTensor` with the same values.
		
		input=ragged.from_nested_row_splits(rt_dense_values, rt_nested_splits)
		output=SparseTensor(indices=sparse_indices, values=sparse_values,
		                    dense_shape=sparse_dense_shape)
		
		Args:
		  rt_nested_splits: A list of at least 1 `Tensor` objects with type `int64`.
		    The `row_splits` for the `RaggedTensor`.
		  rt_dense_values: A `Tensor`. The `flat_values` for the `RaggedTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_dense_shape).
		
		  sparse_indices: A `Tensor` of type `int64`.
		  sparse_values: A `Tensor`. Has the same type as `rt_dense_values`.
		  sparse_dense_shape: A `Tensor` of type `int64`.
	**/
	static public function ragged_tensor_to_sparse(rt_nested_splits:Dynamic, rt_dense_values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ragged_tensor_to_sparse
	**/
	static public function ragged_tensor_to_sparse_eager_fallback(rt_nested_splits:Dynamic, rt_dense_values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}