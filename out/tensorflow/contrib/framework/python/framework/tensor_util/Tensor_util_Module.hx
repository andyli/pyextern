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
	/**
		Asserts actual_tensor's shape is expected_shape.
		
		Note that unknown dimension in `expected_shape` will be ignored.
		
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
		
		Note that -1 in `expected_shape` is recognized as unknown dimension.
		
		Args:
		  expected_shape: Integer list defining the expected shape, or tensor of same.
		  actual_tensor: Tensor to test.
		  actual_shape: Shape of actual_tensor, if we already have it.
		Returns:
		  New tensor.
	**/
	static public function _is_shape(expected_shape:Dynamic, actual_tensor:Dynamic, ?actual_shape:Dynamic):Dynamic;
	/**
		Returns whether actual_shape is compatible with expected_shape.
		
		Note that -1 in `expected_shape` is recognized as unknown dimension.
		
		Args:
		  expected_shape: Integer list defining the expected shape, or tensor of same.
		  actual_shape: Shape of the tensor to test.
		Returns:
		  New tensor.
	**/
	static public function _shape_tensor_compatible(expected_shape:Dynamic, actual_shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Validate and return float type based on `tensors` and `dtype`.
		
		For ops such as matrix multiplication, inputs and weights must be of the
		same float type. This function validates that all `tensors` are the same type,
		validates that type is `dtype` (if supplied), and returns the type. Type must
		be a floating point type. If neither `tensors` nor `dtype` is supplied,
		the function will return `dtypes.float32`.
		
		Args:
		  tensors: Tensors of input values. Can include `None` elements, which will be
		      ignored.
		  dtype: Expected type.
		
		Returns:
		  Validated type.
		
		Raises:
		  ValueError: if neither `tensors` nor `dtype` is supplied, or result is not
		      float, or the common type of the inputs is not a floating point type.
	**/
	static public function assert_same_float_dtype(?tensors:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Asserts that the given `tensor` is a scalar.
		
		This function raises `ValueError` unless it can be certain that the given
		`tensor` is a scalar. `ValueError` is also raised if the shape of `tensor` is
		unknown.
		
		Args:
		  tensor: A `Tensor`.
		  name:  A name for this operation. Defaults to "assert_scalar"
		  message: A string to prefix to the default message.
		
		Returns:
		  The input tensor (potentially converted to a `Tensor`).
		
		Raises:
		  ValueError: If the tensor is not scalar (rank 0), or if its shape is
		    unknown.
	**/
	static public function assert_scalar(tensor:Dynamic, ?name:Dynamic, ?message:Dynamic):Dynamic;
	/**
		Assert `tensor` is 0-D, of type `tf.int32` or `tf.int64`.
		
		Args:
		  tensor: `Tensor` to test.
		  name: Name of the op and of the new `Tensor` if one is created.
		Returns:
		  `tensor`, for chaining.
		Raises:
		  ValueError: if `tensor` is not 0-D, of integer type.
	**/
	static public function assert_scalar_int(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts value to a `SparseTensor` or `Tensor`.
		
		Args:
		  value: A `SparseTensor`, `SparseTensorValue`, or an object whose type has a
		    registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		
		Returns:
		  A `SparseTensor` or `Tensor` based on `value`.
		
		Raises:
		  RuntimeError: If result type is incompatible with `dtype`.
	**/
	static public function convert_to_tensor_or_sparse_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Check whether `x` is of tensor type.
		
		Check whether an object is a tensor. This check is equivalent to calling
		`isinstance(x, (tf.Tensor, tf.SparseTensor, tf.Variable))` and also checks
		if all the component variables of a MirroredVariable or a ReplicaLocalVariable
		are tensors.
		
		Args:
		  x: A python object to check.
		
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
		Squeeze last dim if ranks of `predictions` and `labels` differ by 1. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to remove_squeezable_dimensions from tf.confusion_matrix. Note that the order of the inputs and outputs of labels and predictions have also been switched.
		
		This will use static shape if available. Otherwise, it will add graph
		operations, which could result in a performance hit.
		
		Args:
		  predictions: Predicted values, a `Tensor` of arbitrary dimensions.
		  labels: Label values, a `Tensor` whose dimensions match `predictions`.
		  name: Name of the op.
		
		Returns:
		  Tuple of `predictions` and `labels`, possibly with last dim squeezed.
	**/
	static public function remove_squeezable_dimensions(predictions:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert tensors are the same shape, from the same graph.
		
		Args:
		  expected_tensor: Tensor with expected shape.
		  tensor: Tensor of actual values.
		Returns:
		  The original tensor argument, possibly with assert ops added.
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