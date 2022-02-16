/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_set_ops;
@:pythonImport("tensorflow.python.ops.gen_set_ops") extern class Gen_set_ops_Module {
	/**
		Applies set operation along last dimension of 2 `Tensor` inputs.
		
		See SetOperationOp::SetOperationFromContext for values of `set_operation`.
		
		Output `result` is a `SparseTensor` represented by `result_indices`,
		`result_values`, and `result_shape`. For `set1` and `set2` ranked `n`, this
		has rank `n` and the same 1st `n-1` dimensions as `set1` and `set2`. The `nth`
		dimension contains the result of `set_operation` applied to the corresponding
		`[0...n-1]` dimension of `set`.
		
		Args:
		  set1: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `string`.
		    `Tensor` with rank `n`. 1st `n-1` dimensions must be the same as `set2`.
		    Dimension `n` contains values in a set, duplicates are allowed but ignored.
		  set2: A `Tensor`. Must have the same type as `set1`.
		    `Tensor` with rank `n`. 1st `n-1` dimensions must be the same as `set1`.
		    Dimension `n` contains values in a set, duplicates are allowed but ignored.
		  set_operation: A `string`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (result_indices, result_values, result_shape).
		
		  result_indices: A `Tensor` of type `int64`.
		  result_values: A `Tensor`. Has the same type as `set1`.
		  result_shape: A `Tensor` of type `int64`.
	**/
	static public function DenseToDenseSetOperation(set1:Dynamic, set2:Dynamic, set_operation:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies set operation along last dimension of `Tensor` and `SparseTensor`.
		
		See SetOperationOp::SetOperationFromContext for values of `set_operation`.
		
		Input `set2` is a `SparseTensor` represented by `set2_indices`, `set2_values`,
		and `set2_shape`. For `set2` ranked `n`, 1st `n-1` dimensions must be the same
		as `set1`. Dimension `n` contains values in a set, duplicates are allowed but
		ignored.
		
		If `validate_indices` is `True`, this op validates the order and range of `set2`
		indices.
		
		Output `result` is a `SparseTensor` represented by `result_indices`,
		`result_values`, and `result_shape`. For `set1` and `set2` ranked `n`, this
		has rank `n` and the same 1st `n-1` dimensions as `set1` and `set2`. The `nth`
		dimension contains the result of `set_operation` applied to the corresponding
		`[0...n-1]` dimension of `set`.
		
		Args:
		  set1: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `string`.
		    `Tensor` with rank `n`. 1st `n-1` dimensions must be the same as `set2`.
		    Dimension `n` contains values in a set, duplicates are allowed but ignored.
		  set2_indices: A `Tensor` of type `int64`.
		    2D `Tensor`, indices of a `SparseTensor`. Must be in row-major
		    order.
		  set2_values: A `Tensor`. Must have the same type as `set1`.
		    1D `Tensor`, values of a `SparseTensor`. Must be in row-major
		    order.
		  set2_shape: A `Tensor` of type `int64`.
		    1D `Tensor`, shape of a `SparseTensor`. `set2_shape[0...n-1]` must
		    be the same as the 1st `n-1` dimensions of `set1`, `result_shape[n]` is the
		    max set size across `n-1` dimensions.
		  set_operation: A `string`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (result_indices, result_values, result_shape).
		
		  result_indices: A `Tensor` of type `int64`.
		  result_values: A `Tensor`. Has the same type as `set1`.
		  result_shape: A `Tensor` of type `int64`.
	**/
	static public function DenseToSparseSetOperation(set1:Dynamic, set2_indices:Dynamic, set2_values:Dynamic, set2_shape:Dynamic, set_operation:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Number of unique elements along last dimension of input `set`.
		
		Input `set` is a `SparseTensor` represented by `set_indices`, `set_values`,
		and `set_shape`. The last dimension contains values in a set, duplicates are
		allowed but ignored.
		
		If `validate_indices` is `True`, this op validates the order and range of `set`
		indices.
		
		Args:
		  set_indices: A `Tensor` of type `int64`.
		    2D `Tensor`, indices of a `SparseTensor`.
		  set_values: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `string`.
		    1D `Tensor`, values of a `SparseTensor`.
		  set_shape: A `Tensor` of type `int64`.
		    1D `Tensor`, shape of a `SparseTensor`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function SetSize(set_indices:Dynamic, set_values:Dynamic, set_shape:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies set operation along last dimension of 2 `SparseTensor` inputs.
		
		See SetOperationOp::SetOperationFromContext for values of `set_operation`.
		
		If `validate_indices` is `True`, `SparseToSparseSetOperation` validates the
		order and range of `set1` and `set2` indices.
		
		Input `set1` is a `SparseTensor` represented by `set1_indices`, `set1_values`,
		and `set1_shape`. For `set1` ranked `n`, 1st `n-1` dimensions must be the same
		as `set2`. Dimension `n` contains values in a set, duplicates are allowed but
		ignored.
		
		Input `set2` is a `SparseTensor` represented by `set2_indices`, `set2_values`,
		and `set2_shape`. For `set2` ranked `n`, 1st `n-1` dimensions must be the same
		as `set1`. Dimension `n` contains values in a set, duplicates are allowed but
		ignored.
		
		If `validate_indices` is `True`, this op validates the order and range of `set1`
		and `set2` indices.
		
		Output `result` is a `SparseTensor` represented by `result_indices`,
		`result_values`, and `result_shape`. For `set1` and `set2` ranked `n`, this
		has rank `n` and the same 1st `n-1` dimensions as `set1` and `set2`. The `nth`
		dimension contains the result of `set_operation` applied to the corresponding
		`[0...n-1]` dimension of `set`.
		
		Args:
		  set1_indices: A `Tensor` of type `int64`.
		    2D `Tensor`, indices of a `SparseTensor`. Must be in row-major
		    order.
		  set1_values: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `string`.
		    1D `Tensor`, values of a `SparseTensor`. Must be in row-major
		    order.
		  set1_shape: A `Tensor` of type `int64`.
		    1D `Tensor`, shape of a `SparseTensor`. `set1_shape[0...n-1]` must
		    be the same as `set2_shape[0...n-1]`, `set1_shape[n]` is the
		    max set size across `0...n-1` dimensions.
		  set2_indices: A `Tensor` of type `int64`.
		    2D `Tensor`, indices of a `SparseTensor`. Must be in row-major
		    order.
		  set2_values: A `Tensor`. Must have the same type as `set1_values`.
		    1D `Tensor`, values of a `SparseTensor`. Must be in row-major
		    order.
		  set2_shape: A `Tensor` of type `int64`.
		    1D `Tensor`, shape of a `SparseTensor`. `set2_shape[0...n-1]` must
		    be the same as `set1_shape[0...n-1]`, `set2_shape[n]` is the
		    max set size across `0...n-1` dimensions.
		  set_operation: A `string`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (result_indices, result_values, result_shape).
		
		  result_indices: A `Tensor` of type `int64`.
		  result_values: A `Tensor`. Has the same type as `set1_values`.
		  result_shape: A `Tensor` of type `int64`.
	**/
	static public function SparseToSparseSetOperation(set1_indices:Dynamic, set1_values:Dynamic, set1_shape:Dynamic, set2_indices:Dynamic, set2_values:Dynamic, set2_shape:Dynamic, set_operation:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Applies set operation along last dimension of 2 `Tensor` inputs.
		
		See SetOperationOp::SetOperationFromContext for values of `set_operation`.
		
		Output `result` is a `SparseTensor` represented by `result_indices`,
		`result_values`, and `result_shape`. For `set1` and `set2` ranked `n`, this
		has rank `n` and the same 1st `n-1` dimensions as `set1` and `set2`. The `nth`
		dimension contains the result of `set_operation` applied to the corresponding
		`[0...n-1]` dimension of `set`.
		
		Args:
		  set1: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `string`.
		    `Tensor` with rank `n`. 1st `n-1` dimensions must be the same as `set2`.
		    Dimension `n` contains values in a set, duplicates are allowed but ignored.
		  set2: A `Tensor`. Must have the same type as `set1`.
		    `Tensor` with rank `n`. 1st `n-1` dimensions must be the same as `set1`.
		    Dimension `n` contains values in a set, duplicates are allowed but ignored.
		  set_operation: A `string`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (result_indices, result_values, result_shape).
		
		  result_indices: A `Tensor` of type `int64`.
		  result_values: A `Tensor`. Has the same type as `set1`.
		  result_shape: A `Tensor` of type `int64`.
	**/
	static public function dense_to_dense_set_operation(set1:Dynamic, set2:Dynamic, set_operation:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function dense_to_dense_set_operation_eager_fallback(set1:Dynamic, set2:Dynamic, set_operation:Dynamic, validate_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Applies set operation along last dimension of `Tensor` and `SparseTensor`.
		
		See SetOperationOp::SetOperationFromContext for values of `set_operation`.
		
		Input `set2` is a `SparseTensor` represented by `set2_indices`, `set2_values`,
		and `set2_shape`. For `set2` ranked `n`, 1st `n-1` dimensions must be the same
		as `set1`. Dimension `n` contains values in a set, duplicates are allowed but
		ignored.
		
		If `validate_indices` is `True`, this op validates the order and range of `set2`
		indices.
		
		Output `result` is a `SparseTensor` represented by `result_indices`,
		`result_values`, and `result_shape`. For `set1` and `set2` ranked `n`, this
		has rank `n` and the same 1st `n-1` dimensions as `set1` and `set2`. The `nth`
		dimension contains the result of `set_operation` applied to the corresponding
		`[0...n-1]` dimension of `set`.
		
		Args:
		  set1: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `string`.
		    `Tensor` with rank `n`. 1st `n-1` dimensions must be the same as `set2`.
		    Dimension `n` contains values in a set, duplicates are allowed but ignored.
		  set2_indices: A `Tensor` of type `int64`.
		    2D `Tensor`, indices of a `SparseTensor`. Must be in row-major
		    order.
		  set2_values: A `Tensor`. Must have the same type as `set1`.
		    1D `Tensor`, values of a `SparseTensor`. Must be in row-major
		    order.
		  set2_shape: A `Tensor` of type `int64`.
		    1D `Tensor`, shape of a `SparseTensor`. `set2_shape[0...n-1]` must
		    be the same as the 1st `n-1` dimensions of `set1`, `result_shape[n]` is the
		    max set size across `n-1` dimensions.
		  set_operation: A `string`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (result_indices, result_values, result_shape).
		
		  result_indices: A `Tensor` of type `int64`.
		  result_values: A `Tensor`. Has the same type as `set1`.
		  result_shape: A `Tensor` of type `int64`.
	**/
	static public function dense_to_sparse_set_operation(set1:Dynamic, set2_indices:Dynamic, set2_values:Dynamic, set2_shape:Dynamic, set_operation:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function dense_to_sparse_set_operation_eager_fallback(set1:Dynamic, set2_indices:Dynamic, set2_values:Dynamic, set2_shape:Dynamic, set_operation:Dynamic, validate_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Number of unique elements along last dimension of input `set`.
		
		Input `set` is a `SparseTensor` represented by `set_indices`, `set_values`,
		and `set_shape`. The last dimension contains values in a set, duplicates are
		allowed but ignored.
		
		If `validate_indices` is `True`, this op validates the order and range of `set`
		indices.
		
		Args:
		  set_indices: A `Tensor` of type `int64`.
		    2D `Tensor`, indices of a `SparseTensor`.
		  set_values: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `string`.
		    1D `Tensor`, values of a `SparseTensor`.
		  set_shape: A `Tensor` of type `int64`.
		    1D `Tensor`, shape of a `SparseTensor`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function set_size(set_indices:Dynamic, set_values:Dynamic, set_shape:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function set_size_eager_fallback(set_indices:Dynamic, set_values:Dynamic, set_shape:Dynamic, validate_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Applies set operation along last dimension of 2 `SparseTensor` inputs.
		
		See SetOperationOp::SetOperationFromContext for values of `set_operation`.
		
		If `validate_indices` is `True`, `SparseToSparseSetOperation` validates the
		order and range of `set1` and `set2` indices.
		
		Input `set1` is a `SparseTensor` represented by `set1_indices`, `set1_values`,
		and `set1_shape`. For `set1` ranked `n`, 1st `n-1` dimensions must be the same
		as `set2`. Dimension `n` contains values in a set, duplicates are allowed but
		ignored.
		
		Input `set2` is a `SparseTensor` represented by `set2_indices`, `set2_values`,
		and `set2_shape`. For `set2` ranked `n`, 1st `n-1` dimensions must be the same
		as `set1`. Dimension `n` contains values in a set, duplicates are allowed but
		ignored.
		
		If `validate_indices` is `True`, this op validates the order and range of `set1`
		and `set2` indices.
		
		Output `result` is a `SparseTensor` represented by `result_indices`,
		`result_values`, and `result_shape`. For `set1` and `set2` ranked `n`, this
		has rank `n` and the same 1st `n-1` dimensions as `set1` and `set2`. The `nth`
		dimension contains the result of `set_operation` applied to the corresponding
		`[0...n-1]` dimension of `set`.
		
		Args:
		  set1_indices: A `Tensor` of type `int64`.
		    2D `Tensor`, indices of a `SparseTensor`. Must be in row-major
		    order.
		  set1_values: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `string`.
		    1D `Tensor`, values of a `SparseTensor`. Must be in row-major
		    order.
		  set1_shape: A `Tensor` of type `int64`.
		    1D `Tensor`, shape of a `SparseTensor`. `set1_shape[0...n-1]` must
		    be the same as `set2_shape[0...n-1]`, `set1_shape[n]` is the
		    max set size across `0...n-1` dimensions.
		  set2_indices: A `Tensor` of type `int64`.
		    2D `Tensor`, indices of a `SparseTensor`. Must be in row-major
		    order.
		  set2_values: A `Tensor`. Must have the same type as `set1_values`.
		    1D `Tensor`, values of a `SparseTensor`. Must be in row-major
		    order.
		  set2_shape: A `Tensor` of type `int64`.
		    1D `Tensor`, shape of a `SparseTensor`. `set2_shape[0...n-1]` must
		    be the same as `set1_shape[0...n-1]`, `set2_shape[n]` is the
		    max set size across `0...n-1` dimensions.
		  set_operation: A `string`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (result_indices, result_values, result_shape).
		
		  result_indices: A `Tensor` of type `int64`.
		  result_values: A `Tensor`. Has the same type as `set1_values`.
		  result_shape: A `Tensor` of type `int64`.
	**/
	static public function sparse_to_sparse_set_operation(set1_indices:Dynamic, set1_values:Dynamic, set1_shape:Dynamic, set2_indices:Dynamic, set2_values:Dynamic, set2_shape:Dynamic, set_operation:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_to_sparse_set_operation_eager_fallback(set1_indices:Dynamic, set1_values:Dynamic, set1_shape:Dynamic, set2_indices:Dynamic, set2_values:Dynamic, set2_shape:Dynamic, set_operation:Dynamic, validate_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}