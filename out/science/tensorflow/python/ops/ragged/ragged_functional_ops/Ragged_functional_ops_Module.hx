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
		Merges the given list of lists of RowPartitions.
		
		Args:
		  partition_lists: A list of lists of RowPartition.
		
		Returns:
		  A list of RowPartitions, where `result[i]` is formed by merging
		  `partition_lists[j][i]` for all `j`, using
		  `RowPartition.merge_precomputed_encodings`.
	**/
	static public function _merge_partition_lists(partition_lists:Dynamic):Dynamic;
	/**
		Replace RaggedTensors with their flat_values, and record their partitions.
		
		Returns a copy of `value`, with any nested `RaggedTensor`s replaced by their
		`flat_values` tensor.  Looks inside lists, tuples, and dicts.
		
		Appends each `RaggedTensor`'s `RowPartition`s to `partition_lists`.
		
		Args:
		  value: The value that should be transformed by replacing `RaggedTensors`.
		  partition_lists: An output parameter used to record the row partitions
		    for any `RaggedTensors` that were replaced.
		  flat_values_nrows: An output parameter used to record the outer dimension
		    size for each replacement `flat_values` (when known).  Contains a list of
		    int.
		
		Returns:
		  A copy of `value` with nested `RaggedTensors` replaced by their `values`.
	**/
	static public function _replace_ragged_with_flat_values(value:Dynamic, partition_lists:Dynamic, flat_values_nrows:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Applies `op` to the `flat_values` of one or more RaggedTensors.
		
		Replaces any `RaggedTensor` in `args` or `kwargs` with its `flat_values`
		tensor (which collapses all ragged dimensions), and then calls `op`.  Returns
		a `RaggedTensor` that is constructed from the input `RaggedTensor`s'
		`nested_row_splits` and the value returned by the `op`.
		
		If the input arguments contain multiple `RaggedTensor`s, then they must have
		identical `nested_row_splits`.
		
		This operation is generally used to apply elementwise operations to each value
		in a `RaggedTensor`.
		
		Warning: `tf.ragged.map_flat_values` does *not* apply `op` to each row of a
		ragged tensor.  This difference is important for non-elementwise operations,
		such as `tf.reduce_sum`.  If you wish to apply a non-elementwise operation to
		each row of a ragged tensor, use `tf.map_fn` instead.  (You may need to
		specify an `output_signature` when using `tf.map_fn` with ragged tensors.)
		
		Examples:
		
		>>> rt = tf.ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> tf.ragged.map_flat_values(tf.ones_like, rt)
		<tf.RaggedTensor [[1, 1, 1], [], [1, 1], [1]]>
		>>> tf.ragged.map_flat_values(tf.multiply, rt, rt)
		<tf.RaggedTensor [[1, 4, 9], [], [16, 25], [36]]>
		>>> tf.ragged.map_flat_values(tf.add, rt, 5)
		<tf.RaggedTensor [[6, 7, 8], [], [9, 10], [11]]>
		
		Example with a non-elementwise operation (note that `map_flat_values` and
		`map_fn` return different results):
		
		>>> rt = tf.ragged.constant([[1.0, 3.0], [], [3.0, 6.0, 3.0]])
		>>> def normalized(x):
		...   return x / tf.reduce_sum(x)
		>>> tf.ragged.map_flat_values(normalized, rt)
		<tf.RaggedTensor [[0.0625, 0.1875], [], [0.1875, 0.375, 0.1875]]>
		>>> tf.map_fn(normalized, rt)
		<tf.RaggedTensor [[0.25, 0.75], [], [0.25, 0.5, 0.25]]>
		
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