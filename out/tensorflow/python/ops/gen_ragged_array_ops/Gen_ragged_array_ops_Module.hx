/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_ragged_array_ops;
@:pythonImport("tensorflow.python.ops.gen_ragged_array_ops") extern class Gen_ragged_array_ops_Module {
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
	static public var _ragged_gather_outputs : Dynamic;
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
		Gather ragged slices from `params` axis `0` according to `indices`.
		
		Outputs a `RaggedTensor` output composed from `output_dense_values` and
		`output_nested_splits`, such that:
		
		```python
		output.shape = indices.shape + params.shape[1:]
		output.ragged_rank = indices.shape.ndims + params.ragged_rank
		output[i...j, d0...dn] = params[indices[i...j], d0...dn]
		```
		
		where
		
		* `params =
		   ragged.from_nested_row_splits(params_dense_values, params_nested_splits)`
		   provides the values that should be gathered.
		* `indices` ia a dense tensor with dtype `int32` or `int64`, indicating which
		   values should be gathered.
		* `output =
		   ragged.from_nested_row_splits(output_dense_values, output_nested_splits)`
		   is the output tensor.
		
		(Note: This c++ op is used to implement the higher-level python
		`tf.ragged.gather` op, which also supports ragged indices.)
		
		Args:
		  params_nested_splits: A list of at least 1 `Tensor` objects with type `int64`.
		    The `nested_row_splits` tensors that define the row-partitioning for the
		    `params` RaggedTensor input.
		  params_dense_values: A `Tensor`.
		    The `flat_values` for the `params` RaggedTensor. There was a terminology change
		    at the python level from dense_values to flat_values, so dense_values is the
		    deprecated name.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Indices in the outermost dimension of `params` of the values that should be
		    gathered.
		  OUTPUT_RAGGED_RANK: An `int` that is `>= 0`.
		    The ragged rank of the output RaggedTensor. `output_nested_splits` will contain
		    this number of `row_splits` tensors. This value should equal
		    `indices.shape.ndims + params.ragged_rank - 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_nested_splits, output_dense_values).
		
		  output_nested_splits: A list of `OUTPUT_RAGGED_RANK` `Tensor` objects with type `int64`.
		  output_dense_values: A `Tensor`. Has the same type as `params_dense_values`.
	**/
	static public function ragged_gather(params_nested_splits:Dynamic, params_dense_values:Dynamic, indices:Dynamic, OUTPUT_RAGGED_RANK:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ragged_gather
	**/
	static public function ragged_gather_eager_fallback(params_nested_splits:Dynamic, params_dense_values:Dynamic, indices:Dynamic, OUTPUT_RAGGED_RANK:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}