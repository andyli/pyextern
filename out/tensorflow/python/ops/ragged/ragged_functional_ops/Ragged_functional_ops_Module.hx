/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_functional_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_functional_ops") extern class Ragged_functional_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Replace RaggedTensors with their flat_values, and record their splits.
		
		Returns a copy of `value`, with any nested `RaggedTensor`s replaced by their
		`flat_values` tensor.  Looks inside lists, tuples, and dicts.
		
		Appends each `RaggedTensor`'s `nested_splits` to `nested_splits_lists`.
		
		Args:
		  value: The value that should be transformed by replacing `RaggedTensors`.
		  nested_splits_lists: An output parameter used to record the `nested_splits`
		    for any `RaggedTensors` that were replaced.
		
		Returns:
		  A copy of `value` with nested `RaggedTensors` replaced by their `values`.
	**/
	static public function _replace_ragged_with_flat_values(value:Dynamic, nested_splits_lists:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Applies `op` to the values of one or more RaggedTensors.
		
		Replaces any `RaggedTensor` in `args` or `kwargs` with its `flat_values`
		tensor, and then calls `op`.  Returns a `RaggedTensor` that is constructed
		from the input `RaggedTensor`s' `nested_row_splits` and the value returned by
		the `op`.
		
		If the input arguments contain multiple `RaggedTensor`s, then they must have
		identical `nested_row_splits`.
		
		Examples:
		
		```python
		>>> rt = ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> ragged.map_flat_values(tf.ones_like, rt).eval().tolist()
		[[1, 1, 1], [], [1, 1], [1]]
		>>> ragged.map_flat_values(tf.multiply, rt, rt).eval().tolist()
		[[1, 4, 9], [], [16, 25], [36]]
		>>> ragged.map_flat_values(tf.add, rt, 5).eval().tolist()
		[[6, 7, 8], [], [9, 10], [11]]
		```
		
		Args:
		  op: The operation that should be applied to the RaggedTensor `flat_values`.
		    `op` is typically an element-wise operation (such as math_ops.add), but
		    any operation that preserves the size of the outermost dimension can be
		    used.  I.e., `shape[0]` of the value returned by `op` must match
		    `shape[0]` of the `RaggedTensor`s' `flat_values` tensors.
		  *args: Arguments for `op`.
		  **kwargs: Keyword arguments for `op`.
		
		Returns:
		  A `RaggedTensor` whose `ragged_rank` matches the `ragged_rank` of all
		  input `RaggedTensor`s.
		Raises:
		  ValueError: If args contains no `RaggedTensors`, or if the `nested_splits`
		    of the input `RaggedTensor`s are not identical.
	**/
	static public function map_flat_values(op:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}