/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_ragged_array_ops;
@:pythonImport("tensorflow.python.ops.gen_ragged_array_ops") extern class Gen_ragged_array_ops_Module {
	/**
		Generates a feature cross from a list of tensors, and returns it as a
		RaggedTensor.  See `tf.ragged.cross` for more details.
		
		  Args:
		    ragged_values: A list of `Tensor` objects with types from: `int64`, `string`.
		      The values tensor for each RaggedTensor input.
		    ragged_row_splits: A list of `Tensor` objects with types from: `int32`, `int64`.
		      The row_splits tensor for each RaggedTensor input.
		    sparse_indices: A list of `Tensor` objects with type `int64`.
		      The indices tensor for each SparseTensor input.
		    sparse_values: A list of `Tensor` objects with types from: `int64`, `string`.
		      The values tensor for each SparseTensor input.
		    sparse_shape: A list with the same length as `sparse_indices` of `Tensor` objects with type `int64`.
		      The dense_shape tensor for each SparseTensor input.
		    dense_inputs: A list of `Tensor` objects with types from: `int64`, `string`.
		      The tf.Tensor inputs.
		    input_order: A `string`.
		      String specifying the tensor type for each input.  The `i`th character in
		      this string specifies the type of the `i`th input, and is one of: 'R' (ragged),
		      'D' (dense), or 'S' (sparse).  This attr is used to ensure that the crossed
		      values are combined in the order of the inputs from the call to tf.ragged.cross.
		    hashed_output: A `bool`.
		    num_buckets: An `int` that is `>= 0`.
		    hash_key: An `int`.
		    out_values_type: A `tf.DType` from: `tf.int64, tf.string`.
		    out_row_splits_type: A `tf.DType` from: `tf.int32, tf.int64`.
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (output_values, output_row_splits).
		
		    output_values: A `Tensor` of type `out_values_type`.
		    output_row_splits: A `Tensor` of type `out_row_splits_type`.
		  
	**/
	static public function RaggedCross(ragged_values:Dynamic, ragged_row_splits:Dynamic, sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, dense_inputs:Dynamic, input_order:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, hash_key:Dynamic, out_values_type:Dynamic, out_row_splits_type:Dynamic, ?name:Dynamic):Dynamic;
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
		  params_nested_splits: A list of at least 1 `Tensor` objects with the same type in: `int32`, `int64`.
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
		
		  output_nested_splits: A list of `OUTPUT_RAGGED_RANK` `Tensor` objects with the same type as `params_nested_splits`.
		  output_dense_values: A `Tensor`. Has the same type as `params_dense_values`.
	**/
	static public function RaggedGather(params_nested_splits:Dynamic, params_dense_values:Dynamic, indices:Dynamic, OUTPUT_RAGGED_RANK:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		Generates a feature cross from a list of tensors, and returns it as a
		RaggedTensor.  See `tf.ragged.cross` for more details.
		
		  Args:
		    ragged_values: A list of `Tensor` objects with types from: `int64`, `string`.
		      The values tensor for each RaggedTensor input.
		    ragged_row_splits: A list of `Tensor` objects with types from: `int32`, `int64`.
		      The row_splits tensor for each RaggedTensor input.
		    sparse_indices: A list of `Tensor` objects with type `int64`.
		      The indices tensor for each SparseTensor input.
		    sparse_values: A list of `Tensor` objects with types from: `int64`, `string`.
		      The values tensor for each SparseTensor input.
		    sparse_shape: A list with the same length as `sparse_indices` of `Tensor` objects with type `int64`.
		      The dense_shape tensor for each SparseTensor input.
		    dense_inputs: A list of `Tensor` objects with types from: `int64`, `string`.
		      The tf.Tensor inputs.
		    input_order: A `string`.
		      String specifying the tensor type for each input.  The `i`th character in
		      this string specifies the type of the `i`th input, and is one of: 'R' (ragged),
		      'D' (dense), or 'S' (sparse).  This attr is used to ensure that the crossed
		      values are combined in the order of the inputs from the call to tf.ragged.cross.
		    hashed_output: A `bool`.
		    num_buckets: An `int` that is `>= 0`.
		    hash_key: An `int`.
		    out_values_type: A `tf.DType` from: `tf.int64, tf.string`.
		    out_row_splits_type: A `tf.DType` from: `tf.int32, tf.int64`.
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (output_values, output_row_splits).
		
		    output_values: A `Tensor` of type `out_values_type`.
		    output_row_splits: A `Tensor` of type `out_row_splits_type`.
		  
	**/
	static public function ragged_cross(ragged_values:Dynamic, ragged_row_splits:Dynamic, sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, dense_inputs:Dynamic, input_order:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, hash_key:Dynamic, out_values_type:Dynamic, out_row_splits_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function ragged_cross_eager_fallback(ragged_values:Dynamic, ragged_row_splits:Dynamic, sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, dense_inputs:Dynamic, input_order:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, hash_key:Dynamic, out_values_type:Dynamic, out_row_splits_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  params_nested_splits: A list of at least 1 `Tensor` objects with the same type in: `int32`, `int64`.
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
		
		  output_nested_splits: A list of `OUTPUT_RAGGED_RANK` `Tensor` objects with the same type as `params_nested_splits`.
		  output_dense_values: A `Tensor`. Has the same type as `params_dense_values`.
	**/
	static public function ragged_gather(params_nested_splits:Dynamic, params_dense_values:Dynamic, indices:Dynamic, OUTPUT_RAGGED_RANK:Dynamic, ?name:Dynamic):Dynamic;
	static public function ragged_gather_eager_fallback(params_nested_splits:Dynamic, params_dense_values:Dynamic, indices:Dynamic, OUTPUT_RAGGED_RANK:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}