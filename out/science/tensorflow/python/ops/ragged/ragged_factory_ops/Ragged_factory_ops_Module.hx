/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_factory_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_factory_ops") extern class Ragged_factory_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Constructs a constant RaggedTensor or RaggedTensorValue.
		
		Args:
		  ragged_factory: A factory function with the signature:
		    `ragged_factory(values, row_splits)`
		  inner_factory: A factory function with the signature: `inner_factory(pylist,
		    dtype, shape, name)`
		  pylist: A nested `list`, `tuple` or `np.ndarray`.
		  dtype: Data type for returned value.
		  ragged_rank: Ragged rank for returned value.
		  inner_shape: Inner value shape for returned value.
		
		Returns:
		  A value returned by `ragged_factory` or `inner_factory`.
		
		Raises:
		  ValueError: If the scalar values in `pylist` have inconsistent nesting
		    depth; or if ragged_rank or inner_shape are incompatible with `pylist`.
	**/
	static public function _constant_value(ragged_factory:Dynamic, inner_factory:Dynamic, pylist:Dynamic, dtype:Dynamic, ragged_rank:Dynamic, inner_shape:Dynamic):Dynamic;
	/**
		Computes a default inner shape for the given python list.
	**/
	static public function _default_inner_shape_for_pylist(pylist:Dynamic, ragged_rank:Dynamic):Dynamic;
	/**
		Finds nesting depth of scalar values in pylist.
		
		Args:
		  pylist: A nested python `list` or `tuple`.
		
		Returns:
		  A tuple `(scalar_depth, max_depth)`.  `scalar_depth` is the nesting
		  depth of scalar values in `pylist`, or `None` if `pylist` contains no
		  scalars.  `max_depth` is the maximum depth of `pylist` (including
		  empty lists).
		
		Raises:
		  ValueError: If pylist has inconsistent nesting depths for scalars.
	**/
	static public function _find_scalar_and_max_depth(pylist:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Constructs a constant RaggedTensor from a nested Python list.
		
		Example:
		
		>>> tf.ragged.constant([[1, 2], [3], [4, 5, 6]])
		<tf.RaggedTensor [[1, 2], [3], [4, 5, 6]]>
		
		All scalar values in `pylist` must have the same nesting depth `K`, and the
		returned `RaggedTensor` will have rank `K`.  If `pylist` contains no scalar
		values, then `K` is one greater than the maximum depth of empty lists in
		`pylist`.  All scalar values in `pylist` must be compatible with `dtype`.
		
		Args:
		  pylist: A nested `list`, `tuple` or `np.ndarray`.  Any nested element that
		    is not a `list`, `tuple` or `np.ndarray` must be a scalar value
		    compatible with `dtype`.
		  dtype: The type of elements for the returned `RaggedTensor`.  If not
		    specified, then a default is chosen based on the scalar values in
		    `pylist`.
		  ragged_rank: An integer specifying the ragged rank of the returned
		    `RaggedTensor`.  Must be nonnegative and less than `K`. Defaults to
		    `max(0, K - 1)` if `inner_shape` is not specified.  Defaults to
		    `max(0, K - 1 - len(inner_shape))` if `inner_shape` is specified.
		  inner_shape: A tuple of integers specifying the shape for individual inner
		    values in the returned `RaggedTensor`.  Defaults to `()` if `ragged_rank`
		    is not specified.  If `ragged_rank` is specified, then a default is chosen
		    based on the contents of `pylist`.
		  name: A name prefix for the returned tensor (optional).
		  row_splits_dtype: data type for the constructed `RaggedTensor`'s row_splits.
		    One of `tf.int32` or `tf.int64`.
		
		Returns:
		  A potentially ragged tensor with rank `K` and the specified `ragged_rank`,
		  containing the values from `pylist`.
		
		Raises:
		  ValueError: If the scalar values in `pylist` have inconsistent nesting
		    depth; or if ragged_rank or inner_shape are incompatible with `pylist`.
	**/
	static public function constant(pylist:Dynamic, ?dtype:Dynamic, ?ragged_rank:Dynamic, ?inner_shape:Dynamic, ?name:Dynamic, ?row_splits_dtype:Dynamic):Dynamic;
	/**
		Constructs a RaggedTensorValue from a nested Python list.
		
		Warning: This function returns a `RaggedTensorValue`, not a `RaggedTensor`.
		If you wish to construct a constant `RaggedTensor`, use
		[`ragged.constant(...)`](constant.md) instead.
		
		Example:
		
		>>> tf.compat.v1.ragged.constant_value([[1, 2], [3], [4, 5, 6]])
		tf.RaggedTensorValue(values=array([1, 2, 3, 4, 5, 6]),
		                     row_splits=array([0, 2, 3, 6]))
		
		All scalar values in `pylist` must have the same nesting depth `K`, and the
		returned `RaggedTensorValue` will have rank `K`.  If `pylist` contains no
		scalar values, then `K` is one greater than the maximum depth of empty lists
		in `pylist`.  All scalar values in `pylist` must be compatible with `dtype`.
		
		Args:
		  pylist: A nested `list`, `tuple` or `np.ndarray`.  Any nested element that
		    is not a `list` or `tuple` must be a scalar value compatible with `dtype`.
		  dtype: `numpy.dtype`.  The type of elements for the returned `RaggedTensor`.
		    If not specified, then a default is chosen based on the scalar values in
		    `pylist`.
		  ragged_rank: An integer specifying the ragged rank of the returned
		    `RaggedTensorValue`.  Must be nonnegative and less than `K`. Defaults to
		    `max(0, K - 1)` if `inner_shape` is not specified.  Defaults to `max(0, K
		    - 1 - len(inner_shape))` if `inner_shape` is specified.
		  inner_shape: A tuple of integers specifying the shape for individual inner
		    values in the returned `RaggedTensorValue`.  Defaults to `()` if
		    `ragged_rank` is not specified.  If `ragged_rank` is specified, then a
		    default is chosen based on the contents of `pylist`.
		  row_splits_dtype: data type for the constructed `RaggedTensorValue`'s
		    row_splits.  One of `numpy.int32` or `numpy.int64`.
		
		Returns:
		  A `tf.RaggedTensorValue` or `numpy.array` with rank `K` and the specified
		  `ragged_rank`, containing the values from `pylist`.
		
		Raises:
		  ValueError: If the scalar values in `pylist` have inconsistent nesting
		    depth; or if ragged_rank or inner_shape are incompatible with `pylist`.
	**/
	static public function constant_value(pylist:Dynamic, ?dtype:Dynamic, ?ragged_rank:Dynamic, ?inner_shape:Dynamic, ?row_splits_dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates a placeholder for a `tf.RaggedTensor` that will always be fed.
		
		**Important**: This ragged tensor will produce an error if evaluated.
		Its value must be fed using the `feed_dict` optional argument to
		`Session.run()`, `Tensor.eval()`, or `Operation.run()`.
		
		@compatibility{eager} Placeholders are not compatible with eager execution.
		
		Args:
		  dtype: The data type for the `RaggedTensor`.
		  ragged_rank: The ragged rank for the `RaggedTensor`
		  value_shape: The shape for individual flat values in the `RaggedTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `RaggedTensor` that may be used as a handle for feeding a value, but
		  not evaluated directly.
		
		Raises:
		  RuntimeError: if eager execution is enabled
	**/
	static public function placeholder(dtype:Dynamic, ragged_rank:Dynamic, ?value_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}