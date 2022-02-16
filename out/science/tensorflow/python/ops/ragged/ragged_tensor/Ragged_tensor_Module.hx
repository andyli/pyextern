/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_tensor;
@:pythonImport("tensorflow.python.ops.ragged.ragged_tensor") extern class Ragged_tensor_Module {
	static public function Ragged(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function RaggedOrDense(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _SUPPORTED_RAGGED_VALUE_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Register the `cls` as supported value type of RaggedTenosr.
		
		The cls must be a subclass of CompositeTensor, and must support:
		 - Properties:
		   - x.shape
		   - x.dtype
		 - Methods:
		   - x.__getitem__(idx) (method: returns a supported value type)
		 - Ops:
		   - tf.shape(x) -- tf.shape(x)[0] must be a tf.Tensor.
		   - tf.tile(x)
		   - assert_rank_at_least(x)
		   - tf.ones_like(x)
		   - tf.gather(params=x, indices=Tensor)
		   - tf.add(x, y)
		   - tf.boolean_mask(x, ...)
		   - @TODO(edloper): Complete this list
		
		 Note: the following RaggedTensor, RaggedTensorSpec methods & ops are not
		 currently supported unless `rt.values` is a RaggedTensor or a tf.Tensor:
		   - rt.to_tensor()
		   - rt.to_sparse_tensor()
		   - rt._to_variant()
		   - rt._from_variant()
		   - tf.ragged.cross([rt])
		   - tf.gather(params=x, indices=rt)  # rt used for indices
		   - RaggedTensorSpec methods:
		     - _batch
		     - _unbatch
		     - _to_tensor_list
		     - _to_batched_tensor_list
		     - _from_compatible_tensor_list
		
		Args:
		  cls: The type to be added to supported value types.
	**/
	static public function _add_supported_value_type(cls:Dynamic):Dynamic;
	static public function _assert_is_supported_ragged_values_type(value:Dynamic):Dynamic;
	static public function _assert_monotonic_increasing(tensor:Dynamic, ?message:Dynamic):Dynamic;
	/**
		Checks that the given SparseTensor.indices tensor is ragged-right.
		
		Example: `indices = [[0, 0], [0, 1], [2, 0], [3, 1]]` is not ragged right
		because the entry `[3, 1]` skips a cell.
		
		Args:
		  indices: The SparseTensor indices to check.
		
		Returns:
		  A list of control dependency op tensors.
	**/
	static public function _assert_sparse_indices_are_ragged_right(indices:Dynamic):Dynamic;
	static public function _assert_zero(tensor:Dynamic, ?message:Dynamic):Dynamic;
	/**
		Converts `partition` to Tensors.
		
		Args:
		  partition: A row-partitioning tensor for the `RowPartition` being
		    constructed.  I.e., one of: row_splits, row_lengths, row_starts,
		    row_limits, value_rowids, uniform_row_length.
		  name: The name of the row-partitioning tensor.
		  preferred_dtype: If partition has no dtype, give it this one. If
		    no dtype is specified, use dtypes.int64.
		
		Returns:
		  A tensor equivalent to partition.
		
		Raises:
		  ValueError: if dtype is not int32 or int64.
	**/
	static public function _convert_row_partition(partition:Dynamic, name:Dynamic, preferred_dtype:Dynamic):Dynamic;
	/**
		Converts value to supported RaggedTensor value.
		
		* If `value` is an object of supported value type, then return it as-is.
		* Otherwise convert it to Tensor or RaggedTensor.
		
		Args:
		  value: An object of `Tensor`, `RaggedTensor` or registerred RaggedTensor
		    value types, or an object whose type has a registered `Tensor` conversion
		    function.
		
		Returns:
		  An object of `Tensor`, `RaggedTensor` or registerred RaggedTensor
		  value types
	**/
	static public function _convert_to_ragged_tensor_values(value:Dynamic):Dynamic;
	/**
		Returns the partition dtype, or None if None exists.
	**/
	static public function _get_optional_partition_dtype(values:Dynamic):Dynamic;
	/**
		Gets a list of the row partitions for rt_input.
		
		If value_rowids are defined, then they are used. Otherwise, row_splits
		are used. If the outermost level has value_rowids defind, then nrows is
		also added.
		
		Args:
		  rt_input: a ragged tensor.
		
		Returns:
		  A list of (row_partition_type, row_partition_tensor) pairs.
	**/
	static public function _get_row_partition_type_tensor_pairs(rt_input:Dynamic):Dynamic;
	/**
		Gets a row partition type tensor pair for the tail.
		
		If value_rowid is defined, then it is used. Otherwise, row_splits
		are used.
		
		Args:
		  partition: a RowPartition.
		
		Returns:
		  A list of (row_partition_type, row_partition_tensor) pairs.
	**/
	static public function _get_row_partition_type_tensor_pairs_tail(partition:Dynamic):Dynamic;
	static public function _is_supported_ragged_values_type(value:Dynamic):Dynamic;
	static public function _nrows(tensor:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		Get the number of values for uniform row length constructor.
	**/
	static public function _nvals_uniform_row_length(values:Dynamic, uniform_row_length:Dynamic):Dynamic;
	/**
		Returns the product of the numbers in a list.
	**/
	static public function _prod(lst:Dynamic):Dynamic;
	static public function _ragged_tensor_session_feed(feed_key:Dynamic, feed_val:Dynamic):Dynamic;
	static public function _ragged_tensor_session_feed_for_partial_run(feed_key:Dynamic):Dynamic;
	static public function _ragged_tensor_session_fetch(rt:Dynamic):Dynamic;
	/**
		Gradient for RaggedTensorToSparse.
	**/
	static public function _ragged_tensor_to_sparse_gradient(op:Dynamic, unused_sparse_indices_grad:Dynamic, sparse_values_grad:Dynamic, unused_sparse_shape_grad:Dynamic):Dynamic;
	static public function _ragged_tensor_value_from_components(components:Dynamic):Dynamic;
	/**
		Takes shape and coerces it to a shape as a tensor.
		
		If the object is already a tensor, simply passes it on (result is guaranteed
		to be int64 or int32, but not necessarily dtype).
		If not, creates a tensor of type dtype.
		
		Result is either a scalar equal to -1 if the shape is unknown_rank.
		Otherwise, it is a vector, where unknown dimensions are represented with a
		value of -1.
		
		In C++, see TensorShapeFromTensor for parsing shapes in kernels, and
		InferenceContext::MakeShapeFromShapeTensorTreatScalarAsUnknownShape, for
		use in the shape inference function.
		
		Args:
		  shape: input to coerce from TensorShape, Tensor, None, List[Optional[Int]],
		    Tuple[Optional[Int]].
		  dtype: tf.int64 or tf.int32
		
		Returns:
		  a scalar or vector tensor of dtype tf.int32 or tf.int64.
	**/
	static public function _shape_as_tensor(shape:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts value to a `RaggedTensor` or `Tensor`.
		
		* If `value` is a `RaggedTensor`, then return it as-is.
		* If `value` is a `RaggedTensorValue`, return a corresponding constant
		  `RaggedTensor`.
		* Otherwise, use `convert_to_tensor` to convert `value` to a `Tensor`.
		
		Args:
		  value: A `RaggedTensor`, a `RaggedTensorValue`, or an object whose type has
		    a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor.  If missing the type
		    is inferred from the type of `value`.
		  preferred_dtype: Optional element type for the returned tensor, used when
		    dtype is None.  This argument has no effect if `value` is already a
		    tensor, or when conversion is not possible.
		  name: Optional name to use if a new `Tensor` is created.
		
		Returns:
		  A `Tensor` or `RaggedTensor`.
	**/
	static public function convert_to_tensor_or_ragged_tensor(value:Dynamic, ?dtype:Dynamic, ?preferred_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns true if `value` is a ragged tensor or ragged tensor value.
	**/
	static public function is_ragged(value:Dynamic):Dynamic;
	/**
		Return a copy of `tensors` with row_splits all having the same dtype.
		
		Args:
		  *tensors: A list of Tensors or RaggedTensors.
		  **kwargs: If 'return_dtype=True', then return a tuple (dtype, tensors),
		    where `dtype` is the data type used by row-splits, and `tensors` is the
		    converted list of `Tensors` and `RaggedTensors`.
		
		Returns:
		  The converted list of `Tensors` and `RaggedTensors`.
	**/
	static public function match_row_splits_dtypes(?tensors:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Merges value[outer_axis...inner_axis] into a single dimension.
		
		See `RaggedTensor.merge_dims()` for more details.  This helper differs from
		`RaggedTensor.merge_dims()` in that `value` may be a dense or ragged tensor.
		
		Args:
		  value: A `RaggedTensor` or `Tensor`
		  outer_axis: `int`
		  inner_axis: `int`
		
		Returns:
		  A flattened `RaggedTensor` or `Tensor`.
	**/
	static public function merge_dims(value:Dynamic, outer_axis:Dynamic, inner_axis:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}