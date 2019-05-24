/* This file is generated, do not edit! */
package tensorflow.compat.v1.debugging;
@:pythonImport("tensorflow.compat.v1.debugging") extern class Debugging_Module {
	/**
		Asserts that the given condition is true.
		
		If `condition` evaluates to false, print the list of tensors in `data`.
		`summarize` determines how many entries of the tensors to print.
		
		NOTE: In graph mode, to ensure that Assert executes, one usually attaches
		a dependency:
		
		```python
		# Ensure maximum element of x is smaller or equal to 1
		assert_op = tf.Assert(tf.less_equal(tf.reduce_max(x), 1.), [x])
		with tf.control_dependencies([assert_op]):
		  ... code using x ...
		```
		
		Args:
		  condition: The condition to evaluate.
		  data: The tensors to print out when condition is false.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).
		
		Returns:
		  assert_op: An `Operation` that, when executed, raises a
		  `tf.errors.InvalidArgumentError` if `condition` is not true.
		  @compatibility{eager} returns None.
		
		Raises:
		  @compatibility{eager} `tf.errors.InvalidArgumentError` if `condition`
		  is not true
		
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function Assert(condition:Dynamic, data:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Assert that the tensor does not contain any NaN's or Inf's.
		
		Args:
		  t: Tensor to check.
		  msg: Message to log on failure.
		  name: A name for this operation (optional).
		
		Returns:
		  Same tensor as `t`.
	**/
	static public function assert_all_finite(t:Dynamic, msg:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x == y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] == y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x == y` is False.
		  @compatibility{eager} returns None
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x == y` is False. The check can be performed immediately during eager
		    execution or if `x` and `y` are statically known.
	**/
	static public function assert_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x > y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_greater(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] > y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_greater".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x > y` is False.
	**/
	static public function assert_greater(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x >= y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_greater_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] >= y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to
		    "assert_greater_equal"
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x >= y` is False.
	**/
	static public function assert_greater_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert that `x` is of integer dtype.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_integer(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x: `Tensor` whose basetype is integer and is not quantized.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_integer".
		
		Raises:
		  TypeError:  If `x.dtype` is anything other than non-quantized integer.
		
		Returns:
		  A `no_op` that does nothing.  Type can be determined statically.
	**/
	static public function assert_integer(x:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x < y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_less(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] < y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_less".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x < y` is False.
	**/
	static public function assert_less(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x <= y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_less_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] <= y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_less_equal"
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x <= y` is False.
	**/
	static public function assert_less_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x` and `y` are close element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_near(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have
		
		```tf.abs(x[i] - y[i]) <= atol + rtol * tf.abs(y[i])```.
		
		If both `x` and `y` are empty, this is trivially satisfied.
		
		The default `atol` and `rtol` is `10 * eps`, where `eps` is the smallest
		representable positive number such that `1 + eps != 1`.  This is about
		`1.2e-6` in `32bit`, `2.22e-15` in `64bit`, and `0.00977` in `16bit`.
		See `numpy.finfo`.
		
		Args:
		  x:  Float or complex `Tensor`.
		  y:  Float or complex `Tensor`, same `dtype` as, and broadcastable to, `x`.
		  rtol:  `Tensor`.  Same `dtype` as, and broadcastable to, `x`.
		    The relative tolerance.  Default is `10 * eps`.
		  atol:  `Tensor`.  Same `dtype` as, and broadcastable to, `x`.
		    The absolute tolerance.  Default is `10 * eps`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_near".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x` and `y` are not close enough.
		
		@compatibility(numpy)
		Similar to `numpy.assert_allclose`, except tolerance depends on data type.
		This is due to the fact that `TensorFlow` is often used with `32bit`, `64bit`,
		and even `16bit` data.
		@end_compatibility
	**/
	static public function assert_near(x:Dynamic, y:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x < 0` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_negative(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Negative means, for every element `x[i]` of `x`, we have `x[i] < 0`.
		If `x` is empty this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_negative".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all negative.
	**/
	static public function assert_negative(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x >= 0` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_non_negative(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Non-negative means, for every element `x[i]` of `x`, we have `x[i] >= 0`.
		If `x` is empty this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		    Defaults to "assert_non_negative".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all non-negative.
	**/
	static public function assert_non_negative(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x <= 0` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_non_positive(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Non-positive means, for every element `x[i]` of `x`, we have `x[i] <= 0`.
		If `x` is empty this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		    Defaults to "assert_non_positive".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all non-positive.
	**/
	static public function assert_non_positive(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x != y` holds for all elements.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_none_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] != y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		    Defaults to "assert_none_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x != y` is ever False.
	**/
	static public function assert_none_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x > 0` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_positive(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Positive means, for every element `x[i]` of `x`, we have `x[i] > 0`.
		If `x` is empty this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_positive".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all positive.
	**/
	static public function assert_positive(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Static assert that values is a "proper" iterable.
		
		`Ops` that expect iterables of `Tensor` can call this to validate input.
		Useful since `Tensor`, `ndarray`, byte/text type are all iterables themselves.
		
		Args:
		  values:  Object to be checked.
		
		Raises:
		  TypeError:  If `values` is not iterable or is one of
		    `Tensor`, `SparseTensor`, `np.array`, `tf.compat.bytes_or_text_types`.
	**/
	static public function assert_proper_iterable(values:Dynamic):Dynamic;
	/**
		Assert `x` has rank equal to `rank`.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_rank(x, 2)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  rank:  Scalar integer `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and the shape of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_rank".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` has specified rank.
		  If static checks determine `x` has correct rank, a `no_op` is returned.
		
		Raises:
		  ValueError:  If static checks determine `x` has wrong rank.
	**/
	static public function assert_rank(x:Dynamic, rank:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert `x` has rank equal to `rank` or higher.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_rank_at_least(x, 2)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  rank:  Scalar `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		    Defaults to "assert_rank_at_least".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` has specified rank or higher.
		  If static checks determine `x` has correct rank, a `no_op` is returned.
		
		Raises:
		  ValueError:  If static checks determine `x` has wrong rank.
	**/
	static public function assert_rank_at_least(x:Dynamic, rank:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert `x` has rank in `ranks`.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_rank_in(x, (2, 4))]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  ranks:  Iterable of scalar `Tensor` objects.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		    Defaults to "assert_rank_in".
		
		Returns:
		  Op raising `InvalidArgumentError` unless rank of `x` is in `ranks`.
		  If static checks determine `x` has matching rank, a `no_op` is returned.
		
		Raises:
		  ValueError:  If static checks determine `x` has mismatched rank.
	**/
	static public function assert_rank_in(x:Dynamic, ranks:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
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
		Statically asserts that the given `Tensor` is of the specified type.
		
		Args:
		  tensor: A `Tensor`.
		  tf_type: A tensorflow type (`dtypes.float32`, `tf.int64`, `dtypes.bool`,
		    etc).
		  message: A string to prefix to the default message.
		  name:  A name to give this `Op`.  Defaults to "assert_type"
		
		Raises:
		  TypeError: If the tensors data type doesn't match `tf_type`.
		
		Returns:
		  A `no_op` that does nothing.  Type can be determined statically.
	**/
	static public function assert_type(tensor:Dynamic, tf_type:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks a tensor for NaN and Inf values.
		
		When run, reports an `InvalidArgument` error if `tensor` has any values
		that are not a number (NaN) or infinity (Inf). Otherwise, passes `tensor` as-is.
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  message: A `string`. Prefix of the error message.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function check_numerics(tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are finite.
		
		@compatibility(numpy)
		Equivalent to np.isfinite
		@end_compatibility
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_finite(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are Inf.
		
		@compatibility(numpy)
		Equivalent to np.isinf
		@end_compatibility
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_inf(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are NaN.
		
		@compatibility(numpy)
		Equivalent to np.isnan
		@end_compatibility
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_nan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `True` if `x` is non-decreasing.
		
		Elements of `x` are compared in row-major order.  The tensor `[x[0],...]`
		is non-decreasing if for every adjacent pair we have `x[i] <= x[i+1]`.
		If `x` has less than two elements, it is trivially non-decreasing.
		
		See also:  `is_strictly_increasing`
		
		Args:
		  x: Numeric `Tensor`.
		  name: A name for this operation (optional).  Defaults to "is_non_decreasing"
		
		Returns:
		  Boolean `Tensor`, equal to `True` iff `x` is non-decreasing.
		
		Raises:
		  TypeError: if `x` is not a numeric tensor.
	**/
	static public function is_non_decreasing(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function is_numeric_tensor(tensor:Dynamic):Dynamic;
	/**
		Returns `True` if `x` is strictly increasing.
		
		Elements of `x` are compared in row-major order.  The tensor `[x[0],...]`
		is strictly increasing if for every adjacent pair we have `x[i] < x[i+1]`.
		If `x` has less than two elements, it is trivially strictly increasing.
		
		See also:  `is_non_decreasing`
		
		Args:
		  x: Numeric `Tensor`.
		  name: A name for this operation (optional).
		    Defaults to "is_strictly_increasing"
		
		Returns:
		  Boolean `Tensor`, equal to `True` iff `x` is strictly increasing.
		
		Raises:
		  TypeError: if `x` is not a numeric tensor.
	**/
	static public function is_strictly_increasing(x:Dynamic, ?name:Dynamic):Dynamic;
}