/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_ragged_math_ops;
@:pythonImport("tensorflow.python.ops.gen_ragged_math_ops") extern class Gen_ragged_math_ops_Module {
	/**
		Returns a `RaggedTensor` containing the specified sequences of numbers.
		
		
		Returns a `RaggedTensor` `result` composed from `rt_dense_values` and
		`rt_nested_splits`, such that
		`result[i] = range(starts[i], limits[i], deltas[i])`.
		
		```python
		(rt_nested_splits, rt_dense_values) = ragged_range(
		      starts=[2, 5, 8], limits=[3, 5, 12], deltas=1)
		result = tf.ragged.from_row_splits(rt_dense_values, rt_nested_splits)
		print(result)
		<tf.RaggedTensor [[2], [], [8, 9, 10, 11]] >
		```
		
		The input tensors `starts`, `limits`, and `deltas` may be scalars or vectors.
		The vector inputs must all have the same size.  Scalar inputs are broadcast
		to match the size of the vector inputs.
		
		Args:
		  starts: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `float64`, `int32`, `int64`.
		    The starts of each range.
		  limits: A `Tensor`. Must have the same type as `starts`.
		    The limits of each range.
		  deltas: A `Tensor`. Must have the same type as `starts`.
		    The deltas of each range.
		  Tsplits: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (rt_nested_splits, rt_dense_values).
		
		  rt_nested_splits: A `Tensor` of type `Tsplits`.
		  rt_dense_values: A `Tensor`. Has the same type as `starts`.
	**/
	static public function RaggedRange(starts:Dynamic, limits:Dynamic, deltas:Dynamic, ?Tsplits:Dynamic, ?name:Dynamic):Dynamic;
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
		Returns a `RaggedTensor` containing the specified sequences of numbers.
		
		
		Returns a `RaggedTensor` `result` composed from `rt_dense_values` and
		`rt_nested_splits`, such that
		`result[i] = range(starts[i], limits[i], deltas[i])`.
		
		```python
		(rt_nested_splits, rt_dense_values) = ragged_range(
		      starts=[2, 5, 8], limits=[3, 5, 12], deltas=1)
		result = tf.ragged.from_row_splits(rt_dense_values, rt_nested_splits)
		print(result)
		<tf.RaggedTensor [[2], [], [8, 9, 10, 11]] >
		```
		
		The input tensors `starts`, `limits`, and `deltas` may be scalars or vectors.
		The vector inputs must all have the same size.  Scalar inputs are broadcast
		to match the size of the vector inputs.
		
		Args:
		  starts: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `float64`, `int32`, `int64`.
		    The starts of each range.
		  limits: A `Tensor`. Must have the same type as `starts`.
		    The limits of each range.
		  deltas: A `Tensor`. Must have the same type as `starts`.
		    The deltas of each range.
		  Tsplits: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (rt_nested_splits, rt_dense_values).
		
		  rt_nested_splits: A `Tensor` of type `Tsplits`.
		  rt_dense_values: A `Tensor`. Has the same type as `starts`.
	**/
	static public function ragged_range(starts:Dynamic, limits:Dynamic, deltas:Dynamic, ?Tsplits:Dynamic, ?name:Dynamic):Dynamic;
	static public function ragged_range_eager_fallback(starts:Dynamic, limits:Dynamic, deltas:Dynamic, Tsplits:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}