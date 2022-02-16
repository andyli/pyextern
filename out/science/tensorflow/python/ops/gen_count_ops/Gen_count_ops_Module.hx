/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_count_ops;
@:pythonImport("tensorflow.python.ops.gen_count_ops") extern class Gen_count_ops_Module {
	/**
		Performs sparse-output bin counting for a tf.tensor input.
		
		  Counts the number of times each value occurs in the input.
		
		Args:
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Tensor containing data to count.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    A Tensor of the same shape as indices containing per-index weight values. May
		    also be the empty tensor if no weights are used.
		  binary_output: A `bool`.
		    Whether to output the number of occurrences of each value or 1.
		  minlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Minimum value to count. Can be set to -1 for no minimum.
		  maxlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Maximum value to count. Can be set to -1 for no maximum.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_dense_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `weights`.
		  output_dense_shape: A `Tensor` of type `int64`.
	**/
	static public function DenseCountSparseOutput(values:Dynamic, weights:Dynamic, binary_output:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs sparse-output bin counting for a ragged tensor input.
		
		  Counts the number of times each value occurs in the input.
		
		Args:
		  splits: A `Tensor` of type `int64`.
		    Tensor containing the row splits of the ragged tensor to count.
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Tensor containing values of the sparse tensor to count.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    A Tensor of the same shape as indices containing per-index weight values.
		    May also be the empty tensor if no weights are used.
		  binary_output: A `bool`.
		    Whether to output the number of occurrences of each value or 1.
		  minlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Minimum value to count. Can be set to -1 for no minimum.
		  maxlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Maximum value to count. Can be set to -1 for no maximum.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_dense_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `weights`.
		  output_dense_shape: A `Tensor` of type `int64`.
	**/
	static public function RaggedCountSparseOutput(splits:Dynamic, values:Dynamic, weights:Dynamic, binary_output:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs sparse-output bin counting for a sparse tensor input.
		
		  Counts the number of times each value occurs in the input.
		
		Args:
		  indices: A `Tensor` of type `int64`.
		    Tensor containing the indices of the sparse tensor to count.
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Tensor containing values of the sparse tensor to count.
		  dense_shape: A `Tensor` of type `int64`.
		    Tensor containing the dense shape of the sparse tensor to count.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    A Tensor of the same shape as indices containing per-index weight values.
		    May also be the empty tensor if no weights are used.
		  binary_output: A `bool`.
		    Whether to output the number of occurrences of each value or 1.
		  minlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Minimum value to count. Can be set to -1 for no minimum.
		  maxlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Maximum value to count. Can be set to -1 for no maximum.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_dense_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `weights`.
		  output_dense_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseCountSparseOutput(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, weights:Dynamic, binary_output:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Performs sparse-output bin counting for a tf.tensor input.
		
		  Counts the number of times each value occurs in the input.
		
		Args:
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Tensor containing data to count.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    A Tensor of the same shape as indices containing per-index weight values. May
		    also be the empty tensor if no weights are used.
		  binary_output: A `bool`.
		    Whether to output the number of occurrences of each value or 1.
		  minlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Minimum value to count. Can be set to -1 for no minimum.
		  maxlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Maximum value to count. Can be set to -1 for no maximum.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_dense_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `weights`.
		  output_dense_shape: A `Tensor` of type `int64`.
	**/
	static public function dense_count_sparse_output(values:Dynamic, weights:Dynamic, binary_output:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?name:Dynamic):Dynamic;
	static public function dense_count_sparse_output_eager_fallback(values:Dynamic, weights:Dynamic, binary_output:Dynamic, minlength:Dynamic, maxlength:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Performs sparse-output bin counting for a ragged tensor input.
		
		  Counts the number of times each value occurs in the input.
		
		Args:
		  splits: A `Tensor` of type `int64`.
		    Tensor containing the row splits of the ragged tensor to count.
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Tensor containing values of the sparse tensor to count.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    A Tensor of the same shape as indices containing per-index weight values.
		    May also be the empty tensor if no weights are used.
		  binary_output: A `bool`.
		    Whether to output the number of occurrences of each value or 1.
		  minlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Minimum value to count. Can be set to -1 for no minimum.
		  maxlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Maximum value to count. Can be set to -1 for no maximum.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_dense_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `weights`.
		  output_dense_shape: A `Tensor` of type `int64`.
	**/
	static public function ragged_count_sparse_output(splits:Dynamic, values:Dynamic, weights:Dynamic, binary_output:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?name:Dynamic):Dynamic;
	static public function ragged_count_sparse_output_eager_fallback(splits:Dynamic, values:Dynamic, weights:Dynamic, binary_output:Dynamic, minlength:Dynamic, maxlength:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs sparse-output bin counting for a sparse tensor input.
		
		  Counts the number of times each value occurs in the input.
		
		Args:
		  indices: A `Tensor` of type `int64`.
		    Tensor containing the indices of the sparse tensor to count.
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Tensor containing values of the sparse tensor to count.
		  dense_shape: A `Tensor` of type `int64`.
		    Tensor containing the dense shape of the sparse tensor to count.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    A Tensor of the same shape as indices containing per-index weight values.
		    May also be the empty tensor if no weights are used.
		  binary_output: A `bool`.
		    Whether to output the number of occurrences of each value or 1.
		  minlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Minimum value to count. Can be set to -1 for no minimum.
		  maxlength: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Maximum value to count. Can be set to -1 for no maximum.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_dense_shape).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `weights`.
		  output_dense_shape: A `Tensor` of type `int64`.
	**/
	static public function sparse_count_sparse_output(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, weights:Dynamic, binary_output:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_count_sparse_output_eager_fallback(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, weights:Dynamic, binary_output:Dynamic, minlength:Dynamic, maxlength:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}