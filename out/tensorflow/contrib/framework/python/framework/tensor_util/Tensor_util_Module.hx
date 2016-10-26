/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.framework.tensor_util;
@:pythonImport("tensorflow.contrib.framework.python.framework.tensor_util") extern class Tensor_util_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _all_equal(tensor0:Dynamic, tensor1:Dynamic):Dynamic;
	/**
		Asserts all items are of the same base type.
		
		Args:
		  items: List of graph items (e.g., `Variable`, `Tensor`, `SparseTensor`,
		      `Operation`, or `IndexedSlices`). Can include `None` elements, which
		      will be ignored.
		  expected_type: Expected type. If not specified, assert all items are
		      of the same base type.
		Returns:
		  Validated type, or none if neither expected_type nor items provided.
		
		Raises:
		  ValueError: If any types do not match.
	**/
	static public function _assert_same_base_type(items:Dynamic, ?expected_type:Dynamic):Dynamic;
	/**
		Asserts actual_tensor's shape is expected_shape.
		
		Args:
		  expected_shape: List of integers defining the expected shape, or tensor of
		      same.
		  actual_tensor: Tensor to test.
		Returns:
		  New assert tensor.
	**/
	static public function _assert_shape_op(expected_shape:Dynamic, actual_tensor:Dynamic):Dynamic;
	/**
		Returns whether actual_tensor's rank is expected_rank.
		
		Args:
		  expected_rank: Integer defining the expected rank, or tensor of same.
		  actual_tensor: Tensor to test.
		Returns:
		  New tensor.
	**/
	static public function _is_rank(expected_rank:Dynamic, actual_tensor:Dynamic):Dynamic;
	/**
		Returns whether actual_tensor's shape is expected_shape.
		
		Args:
		  expected_shape: Integer list defining the expected shape, or tensor of same.
		  actual_tensor: Tensor to test.
		  actual_shape: Shape of actual_tensor, if we already have it.
		Returns:
		  New tensor.
	**/
	static public function _is_shape(expected_shape:Dynamic, actual_tensor:Dynamic, ?actual_shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Validate and return float type based on `tensors` and `dtype`.
		
		For ops such as matrix multiplication, inputs and weights must be of the
		same float type. This function validates that all `tensors` are the same type,
		validates that type is `dtype` (if supplied), and returns the type. Type must
		be `dtypes.float32` or `dtypes.float64`. If neither `tensors` nor
		`dtype` is supplied, default to `dtypes.float32`.
		
		Args:
		  tensors: Tensors of input values. Can include `None` elements, which will be
		      ignored.
		  dtype: Expected type.
		Returns:
		  Validated type.
		Raises:
		  ValueError: if neither `tensors` nor `dtype` is supplied, or result is not
		      float.
	**/
	static public function assert_same_float_dtype(?tensors:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Assert `tensor` is 0-D, of type `tf.int32` or `tf.int64`.
		
		Args:
		  tensor: Tensor to test.
		Returns:
		  `tensor`, for chaining.
		Raises:
		  ValueError: if `tensor` is not 0-D, of type `tf.int32` or `tf.int64`.
	**/
	static public function assert_scalar_int(tensor:Dynamic):Dynamic;
	/**
		Converts value to a `SparseTensor` or `Tensor`.
		
		Args:
		  value: A `SparseTensor`, `SparseTensorValue`, or an object whose type has a
		    registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		  as_ref: True if we want the result as a ref tensor. Only used if a new
		    `Tensor` is created.
		
		Returns:
		  A `SparseTensor` or `Tensor` based on `value`.
		
		Raises:
		  RuntimeError: If result type is incompatible with `dtype`.
	**/
	static public function convert_to_tensor_or_sparse_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Check for tensor types.
		Check whether an object is a tensor. Equivalent to
		`isinstance(x, [tf.Tensor, tf.SparseTensor, tf.Variable])`.
		
		Args:
		  x: An python object to check.
		
		Returns:
		  `True` if `x` is a tensor, `False` if not.
	**/
	static public function is_tensor(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reduce tensors to a scalar sum.
		
		This reduces each tensor in `tensors` to a scalar via `tf.reduce_sum`, then
		adds them via `tf.add_n`.
		
		Args:
		  tensors: List of tensors, all of the same numeric type.
		  name: Tensor name, and scope for all other ops.
		
		Returns:
		  Total loss tensor, or None if no losses have been configured.
		
		Raises:
		  ValueError: if `losses` is missing or empty.
	**/
	static public function reduce_sum_n(tensors:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert tensors are the same shape, from the same graph.
		
		Args:
		  expected_tensor: Tensor with expected shape.
		  tensor: Tensor of actual values.
		Returns:
		  Tuple of (actual_tensor, label_tensor), possibly with assert ops added.
	**/
	static public function with_same_shape(expected_tensor:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Asserts tensor has expected shape.
		
		If tensor shape and expected_shape, are fully defined, assert they match.
		Otherwise, add assert op that will validate the shape when tensor is
		evaluated, and set shape on tensor.
		
		Args:
		  expected_shape: Expected shape to assert, as a 1D array of ints, or tensor
		      of same.
		  tensor: Tensor whose shape we're validating.
		Returns:
		  tensor, perhaps with a dependent assert operation.
		Raises:
		  ValueError: if tensor has an invalid shape.
	**/
	static public function with_shape(expected_shape:Dynamic, tensor:Dynamic):Dynamic;
}