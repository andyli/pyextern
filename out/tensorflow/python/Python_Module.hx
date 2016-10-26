/* This file is generated, do not edit! */
package tensorflow.python;
@:pythonImport("tensorflow.python") extern class Python_Module {
	/**
		Asserts that the given condition is true.
		
		If `condition` evaluates to false, print the list of tensors in `data`.
		`summarize` determines how many entries of the tensors to print.
		
		NOTE: To ensure that Assert executes, one usually attaches a dependency:
		
		```python
		 # Ensure maximum element of x is smaller or equal to 1
		assert_op = tf.Assert(tf.less_equal(tf.reduce_max(x), 1.), [x])
		x = tf.with_dependencies([assert_op], x)
		```
		
		Args:
		  condition: The condition to evaluate.
		  data: The tensors to print out when condition is false.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).
		
		Returns:
		  assert_op: An `Operation` that, when executed, raises a
		  `tf.errors.InvalidArgumentError` if `condition` is not true.
	**/
	static public function Assert(condition:Dynamic, data:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	static public var DESCRIPTOR : Dynamic;
	static public var GRAPH_DEF_VERSION : Dynamic;
	static public var GRAPH_DEF_VERSION_MIN_CONSUMER : Dynamic;
	static public var GRAPH_DEF_VERSION_MIN_PRODUCER : Dynamic;
	static public var NEW_AXIS : Dynamic;
	/**
		Specifies that ops of type `op_type` do not have a defined gradient.
		
		This function is only used when defining a new op type. It may be
		used for ops such as `tf.size()` that are not differentiable.  For
		example:
		
		```python
		tf.NoGradient("Size")
		```
		
		Args:
		  op_type: The string type of an operation. This corresponds to the
		    `OpDef.name` field for the proto that defines the operation.
		
		Raises:
		  TypeError: If `op_type` is not a string.
	**/
	static public function NoGradient(op_type:Dynamic):Dynamic;
	/**
		Prints a list of tensors.
		
		This is an identity op with the side effect of printing `data` when
		evaluating.
		
		Args:
		  input_: A tensor passed through this op.
		  data: A list of tensors to print out when op is evaluated.
		  message: A string, prefix of the error message.
		  first_n: Only log `first_n` number of times. Negative numbers log always;
		           this is the default.
		  summarize: Only print this many entries of each tensor. If None, then a
		             maximum of 3 elements are printed per input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  Same tensor as `input_`.
	**/
	static public function Print(input_:Dynamic, data:Dynamic, ?message:Dynamic, ?first_n:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	static public var QUANTIZED_DTYPES : Dynamic;
	static public var SHRINK_AXIS : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var _default_dlopen_flags : Dynamic;
	static public var _whitelist : Dynamic;
	/**
		Computes the absolute value of a tensor.
		
		Given a tensor of real numbers `x`, this operation returns a tensor
		containing the absolute value of each element in `x`. For example, if x is
		an input element and y is an output element, this operation computes
		\\(y = |x|\\).
		
		See [`tf.complex_abs()`](#tf_complex_abs) to compute the absolute value of a complex
		number.
		
		Args:
		  x: A `Tensor` or `SparseTensor` of type `float32`, `float64`, `int32`, or
		    `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` the same size and type as `x` with absolute
		    values.
	**/
	static public function abs(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns the element-wise sum of a list of tensors.
		
		Optionally, pass `shape` and `tensor_dtype` for shape and type checking,
		otherwise, these are inferred.
		
		For example:
		
		```python
		# tensor 'a' is [[1, 2], [3, 4]]
		# tensor `b` is [[5, 0], [0, 6]]
		tf.accumulate_n([a, b, a]) ==> [[7, 4], [6, 14]]
		
		# Explicitly pass shape and type
		tf.accumulate_n([a, b, a], shape=[2, 2], tensor_dtype=tf.int32)
		  ==> [[7, 4], [6, 14]]
		```
		
		Args:
		  inputs: A list of `Tensor` objects, each with same shape and type.
		  shape: Shape of elements of `inputs`.
		  tensor_dtype: The type of `inputs`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as the elements of `inputs`.
		
		Raises:
		  ValueError: If `inputs` don't all have same shape and dtype or the shape
		  cannot be inferred.
	**/
	static public function accumulate_n(inputs:Dynamic, ?shape:Dynamic, ?tensor_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes acos of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function acos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x + y element-wise.
		
		*NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`, `string`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function add(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Connect a `check_numerics` to every floating point tensor.
		
		`check_numerics` operations themselves are added for each `half`, `float`,
		or `double` tensor in the graph. For all ops in the graph, the
		`check_numerics` op for all of its (`half`, `float`, or `double`) inputs
		is guaranteed to run before the `check_numerics` op on any of its outputs.
		
		Returns:
		  A `group` op depending on all `check_numerics` ops added.
	**/
	static public function add_check_numerics_ops():Dynamic;
	/**
		Adds all input tensors element-wise.
		
		Args:
		  inputs: A list of `Tensor` objects, each with same shape and type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as the elements of `inputs`.
		
		Raises:
		  ValueError: If `inputs` don't all have same shape and dtype or the shape
		  cannot be inferred.
	**/
	static public function add_n(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.add_to_collection()` using the default graph.
		
		See [`Graph.add_to_collection()`](../../api_docs/python/framework.md#Graph.add_to_collection)
		for more details.
		
		Args:
		  name: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		  value: The value to add to the collection.
	**/
	static public function add_to_collection(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns all variables that must be saved/restored.
		
		The `Variable()` constructor automatically adds new variables to the graph
		collection `GraphKeys.VARIABLES`. This convenience function returns the
		contents of that collection.
		
		Returns:
		  A list of `Variable` objects.
	**/
	static public function all_variables():Dynamic;
	/**
		Returns the index with the largest value across dimensions of a tensor.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  dimension: A `Tensor` of type `int32`.
		    int32, 0 <= dimension < rank(input).  Describes which dimension
		    of the input Tensor to reduce across. For vectors, use dimension = 0.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function arg_max(input:Dynamic, dimension:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the index with the smallest value across dimensions of a tensor.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  dimension: A `Tensor` of type `int32`.
		    int32, 0 <= dimension < rank(input).  Describes which dimension
		    of the input Tensor to reduce across. For vectors, use dimension = 0.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function arg_min(input:Dynamic, dimension:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the index with the largest value across dimensions of a tensor.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  dimension: A `Tensor` of type `int32`.
		    int32, 0 <= dimension < rank(input).  Describes which dimension
		    of the input Tensor to reduce across. For vectors, use dimension = 0.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function argmax(input:Dynamic, dimension:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the index with the smallest value across dimensions of a tensor.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  dimension: A `Tensor` of type `int32`.
		    int32, 0 <= dimension < rank(input).  Describes which dimension
		    of the input Tensor to reduce across. For vectors, use dimension = 0.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function argmin(input:Dynamic, dimension:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts the given `type_value` to a `DType`.
		
		Args:
		  type_value: A value that can be converted to a `tf.DType`
		    object. This may currently be a `tf.DType` object, a
		    [`DataType` enum](https://www.tensorflow.org/code/tensorflow/core/framework/types.proto),
		    a string type name, or a `numpy.dtype`.
		
		Returns:
		  A `DType` corresponding to `type_value`.
		
		Raises:
		  TypeError: If `type_value` cannot be converted to a `DType`.
	**/
	static public function as_dtype(type_value:Dynamic):Dynamic;
	/**
		Converts each entry in the given tensor to strings.  Supports many numeric
		
		types and boolean.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int32`, `int64`, `complex64`, `float32`, `float64`, `bool`, `int8`.
		  precision: An optional `int`. Defaults to `-1`.
		    The post-decimal precision to use for floating point numbers.
		    Only used if precision > -1.
		  scientific: An optional `bool`. Defaults to `False`.
		    Use scientific notation for floating point numbers.
		  shortest: An optional `bool`. Defaults to `False`.
		    Use shortest representation (either scientific or standard) for
		    floating point numbers.
		  width: An optional `int`. Defaults to `-1`.
		    Pad pre-decimal numbers to this width.
		    Applies to both floating point and integer numbers.
		    Only used if width > -1.
		  fill: An optional `string`. Defaults to `""`.
		    The value to pad if width > -1.  If empty, pads with spaces.
		    Another typical value is '0'.  String cannot be longer than 1 character.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function as_string(input:Dynamic, ?precision:Dynamic, ?scientific:Dynamic, ?shortest:Dynamic, ?width:Dynamic, ?fill:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes asin of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function asin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x == y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		Example of adding dependency to the tensor being checked:
		
		```python
		x = tf.with_dependencies([tf.assert_equal(x, y)], x)
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
	**/
	static public function assert_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert that `x` is of integer dtype.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_integer(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Example of adding dependency to the tensor being checked:
		
		```python
		x = tf.with_dependencies([tf.assert_integer(x)], x)
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
		
		Example of adding dependency to the tensor being checked:
		
		```python
		x = tf.with_dependencies([tf.assert_less(x, y)], x)
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
		
		Example of adding dependency to the tensor being checked:
		
		```python
		x = tf.with_dependencies([tf.assert_less_equal(x, y)], x)
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
		Assert the condition `x < 0` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_negative(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Example of adding dependency to the tensor being checked:
		
		```python
		x = tf.with_dependencies([tf.assert_negative(x)], x)
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
		
		Example of adding dependency to the tensor being checked:
		
		```python
		x = tf.with_dependencies([tf.assert_non_negative(x)], x)
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
		
		Example of adding dependency to the tensor being checked:
		
		```python
		x = tf.with_dependencies([tf.assert_non_positive(x)], x)
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
		Assert the condition `x > 0` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_positive(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Example of adding dependency to the tensor being checked:
		
		```python
		x = tf.with_dependencies([tf.assert_positive(x)], x)
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
		
		Example of adding dependency to the tensor being checked:
		
		```python
		x = tf.with_dependencies([tf.assert_rank(x, 2)], x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  rank:  Scalar integer `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
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
		
		Example of adding dependency to the tensor being checked:
		
		```python
		x = tf.with_dependencies([tf.assert_rank_at_least(x, 2)], x)
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
		Statically asserts that the given `Tensor` is of the specified type.
		
		Args:
		  tensor: A tensorflow `Tensor`.
		  tf_type: A tensorflow type (dtypes.float32, tf.int64, dtypes.bool, etc).
		  message: A string to prefix to the default message.
		  name:  A name to give this `Op`.  Defaults to "assert_type"
		
		Raises:
		  TypeError: If the tensors data type doesn't match tf_type.
		
		Returns:
		  A `no_op` that does nothing.  Type can be determined statically.
	**/
	static public function assert_type(tensor:Dynamic, tf_type:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an Op to check if variables are initialized.
		
		NOTE: This function is obsolete and will be removed in 6 months.  Please
		change your implementation to use `report_uninitialized_variables()`.
		
		When run, the returned Op will raise the exception `FailedPreconditionError`
		if any of the variables has not yet been initialized.
		
		Note: This function is implemented by trying to fetch the values of the
		variables. If one of the variables is not initialized a message may be
		logged by the C++ runtime. This is expected.
		
		Args:
		  var_list: List of `Variable` objects to check. Defaults to the
		    value of `all_variables().`
		
		Returns:
		  An Op, or None if there are no variables.
	**/
	static public function assert_variables_initialized(?var_list:Dynamic):Dynamic;
	/**
		Update 'ref' by assigning 'value' to it.
		
		This operation outputs "ref" after the assignment is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`.
		    Should be from a `Variable` node. May be uninitialized.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be assigned to the variable.
		  validate_shape: An optional `bool`. Defaults to `True`.
		    If true, the operation will validate that the shape
		    of 'value' matches the shape of the Tensor being assigned to.  If false,
		    'ref' will take on the shape of 'value'.
		  use_locking: An optional `bool`. Defaults to `True`.
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".  Returned as a convenience for operations that want
		  to use the new value after the variable has been reset.
	**/
	static public function assign(ref:Dynamic, value:Dynamic, ?validate_shape:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update 'ref' by adding 'value' to it.
		
		This operation outputs "ref" after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be added to the variable.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the addition will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".  Returned as a convenience for operations that want
		  to use the new value after the variable has been updated.
	**/
	static public function assign_add(ref:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update 'ref' by subtracting 'value' from it.
		
		This operation outputs "ref" after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be subtracted to the variable.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".  Returned as a convenience for operations that want
		  to use the new value after the variable has been updated.
	**/
	static public function assign_sub(ref:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes atan of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function atan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with audio.
		
		The summary has up to `max_outputs` summary values containing audio. The
		audio is built from `tensor` which must be 3-D with shape `[batch_size,
		frames, channels]` or 2-D with shape `[batch_size, frames]`. The values are
		assumed to be in the range of `[-1.0, 1.0]` with a sample rate of
		`sample_rate`.
		
		The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
		build the `tag` of the summary values:
		
		*  If `max_outputs` is 1, the summary value tag is '*tag* /audio'.
		*  If `max_outputs` is greater than 1, the summary value tags are
		   generated sequentially as '*tag* /audio/0', '*tag* /audio/1', etc.
		
		Args:
		  tag: A scalar `Tensor` of type `string`. Used to build the `tag`
		    of the summary values.
		  tensor: A 3-D `float32` `Tensor` of shape `[batch_size, frames, channels]`
		    or a 2-D `float32` `Tensor` of shape `[batch_size, frames]`.
		  sample_rate: The sample rate of the signal in hertz.
		  max_outputs: Max number of batch elements to generate audio for.
		  collections: Optional list of ops.GraphKeys.  The collections to add the
		    summary to.  Defaults to [ops.GraphKeys.SUMMARIES]
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function audio_summary(tag:Dynamic, tensor:Dynamic, sample_rate:Dynamic, ?max_outputs:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Cholesky decomposition of a batch of square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices, with the same constraints as the single matrix Cholesky
		decomposition above. The output is a tensor of the same shape as the input
		containing the Cholesky decompositions for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. Shape is `[..., M, M]`.
	**/
	static public function batch_cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the reverse mode backpropagated gradient of the Cholesky algorithm.
		
		For an explanation see "Differentiation of the Cholesky algorithm" by
		Iain Murray http://arxiv.org/abs/1602.07527.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Output of batch Cholesky algorithm l = batch_cholesky(A). Shape is `[..., M, M]`.
		    Algorithm depends only on lower triangular part of the innermost matrices of
		    this tensor.
		  grad: A `Tensor`. Must have the same type as `l`.
		    df/dl where f is some scalar function. Shape is `[..., M, M]`.
		    Algorithm depends only on lower triangular part of the innermost matrices of
		    this tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `l`.
		  Symmetrized version of df/dA . Shape is `[..., M, M]`
	**/
	static public function batch_cholesky_grad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solve batches of linear eqns `A X = RHS`, given Cholesky factorizations.
		
		```python
		# Solve one linear system (K = 1) for every member of the length 10 batch.
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 1
		chol = tf.batch_cholesky(A)  # shape 10 x 2 x 2
		X = tf.batch_cholesky_solve(chol, RHS)  # shape 10 x 2 x 1
		# tf.matmul(A, X) ~ RHS
		X[3, :, 0]  # Solution to the linear system A[3, :, :] x = RHS[3, :, 0]
		
		# Solve five linear systems (K = 5) for every member of the length 10 batch.
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 5
		...
		X[3, :, 2]  # Solution to the linear system A[3, :, :] x = RHS[3, :, 2]
		```
		
		Args:
		  chol:  A `Tensor`.  Must be `float32` or `float64`, shape is `[..., M, M]`.
		    Cholesky factorization of `A`, e.g. `chol = tf.batch_cholesky(A)`.
		    For that reason, only the lower triangular parts (including the diagonal)
		    of the last two dimensions of `chol` are used.  The strictly upper part is
		    assumed to be zero and not accessed.
		  rhs:  A `Tensor`, same type as `chol`, shape is `[..., M, K]`.
		  name:  A name to give this `Op`.  Defaults to `batch_cholesky_solve`.
		
		Returns:
		  Solution to `A x = rhs`, shape `[..., M, K]`.
	**/
	static public function batch_cholesky_solve(chol:Dynamic, rhs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the 1-dimensional discrete Fourier Transform over the inner-most
		
		dimension of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most
		  dimension of `input` is replaced with its 1D Fourier Transform.
	**/
	static public function batch_fft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the 2-dimensional discrete Fourier Transform over the inner-most
		
		2 dimensions of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most 2
		  dimensions of `input` are replaced with their 2D Fourier Transform.
	**/
	static public function batch_fft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the 3-dimensional discrete Fourier Transform over the inner-most 3
		
		dimensions of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most 3
		  dimensions of `input` are replaced with their 3D Fourier Transform.
	**/
	static public function batch_fft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the inverse 1-dimensional discrete Fourier Transform over the inner-most
		
		dimension of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most
		  dimension of `input` is replaced with its inverse 1D Fourier Transform.
	**/
	static public function batch_ifft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the inverse 2-dimensional discrete Fourier Transform over the inner-most
		
		2 dimensions of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most 2
		  dimensions of `input` are replaced with their inverse 2D Fourier Transform.
	**/
	static public function batch_ifft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the inverse 3-dimensional discrete Fourier Transform over the inner-most
		
		3 dimensions of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most 3
		  dimensions of `input` are replaced with their inverse 3D Fourier Transform.
	**/
	static public function batch_ifft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies slices of two tensors in batches.
		
		Multiplies all slices of `Tensor` `x` and `y` (each slice can be
		viewed as an element of a batch), and arranges the individual results
		in a single output tensor of the same batch size. Each of the
		individual slices can optionally be adjointed (to adjoint a matrix
		means to transpose and conjugate it) before multiplication by setting
		the `adj_x` or `adj_y` flag to `True`, which are by default `False`.
		
		The input tensors `x` and `y` are 3-D or higher with shape `[..., r_x, c_x]`
		and `[..., r_y, c_y]`.
		
		The output tensor is 3-D or higher with shape `[..., r_o, c_o]`, where:
		
		    r_o = c_x if adj_x else r_x
		    c_o = r_y if adj_y else c_y
		
		It is computed as:
		
		    output[..., :, :] = matrix(x[..., :, :]) * matrix(y[..., :, :])
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `complex64`, `complex128`.
		    3-D or higher with shape `[..., r_x, c_x]`.
		  y: A `Tensor`. Must have the same type as `x`.
		    3-D or higher with shape `[..., r_y, c_y]`.
		  adj_x: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `x`. Defaults to `False`.
		  adj_y: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `y`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		  3-D or higher with shape `[..., r_o, c_o]`
	**/
	static public function batch_matmul(x:Dynamic, y:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Copy a tensor setting everything outside a central band in each innermost matrix
		
		to zero.
		
		The `band` part is computed as follows:
		Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
		tensor with the same shape where
		
		`band[i, j, k, ..., m, n] = in_band(m, n) * input[i, j, k, ..., m, n]`.
		
		The indicator function 'in_band(m, n)` is one if
		`(num_lower < 0 || (m-n) <= num_lower)) &&
		(num_upper < 0 || (n-m) <= num_upper)`, and zero otherwise.
		
		For example:
		
		```prettyprint
		# if 'input' is [[ 0,  1,  2, 3]
		                 [-1,  0,  1, 2]
		                 [-2, -1,  0, 1]
		                 [-3, -2, -1, 0]],
		
		tf.batch_matrix_band_part(input, 1, -1) ==> [[ 0,  1,  2, 3]
		                                             [-1,  0,  1, 2]
		                                             [ 0, -1,  0, 1]
		                                             [ 0,  0, -1, 0]],
		
		tf.batch_matrix_band_part(input, 2, 1) ==> [[ 0,  1,  0, 0]
		                                            [-1,  0,  1, 0]
		                                            [-2, -1,  0, 1]
		                                            [ 0, -2, -1, 0]]
		```
		
		Useful special cases:
		
		```prettyprint
		 tf.batch_matrix_band_part(input, 0, -1) ==> Upper triangular part.
		 tf.batch_matrix_band_part(input, -1, 0) ==> Lower triangular part.
		 tf.batch_matrix_band_part(input, 0, 0) ==> Diagonal.
		```
		
		Args:
		  input: A `Tensor`. Rank `k` tensor.
		  num_lower: A `Tensor` of type `int64`.
		    0-D tensor. Number of subdiagonals to keep. If negative, keep entire
		    lower triangle.
		  num_upper: A `Tensor` of type `int64`.
		    0-D tensor. Number of superdiagonals to keep. If negative, keep
		    entire upper triangle.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Rank `k` tensor of the same shape as input. The extracted banded tensor.
	**/
	static public function batch_matrix_band_part(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the determinants for a batch of square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor containing the determinants
		for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. Shape is `[...]`.
	**/
	static public function batch_matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with a given batched diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has `k` dimensions `[I, J, K, ..., N]`, then the output is a
		tensor of rank `k+1` with dimensions [I, J, K, ..., N, N]` where:
		
		`output[i, j, k, ..., m, n] = 1{m=n} * diagonal[i, j, k, ..., n]`.
		
		For example:
		
		```prettyprint
		# 'diagonal' is [[1, 2, 3, 4], [5, 6, 7, 8]]
		
		and diagonal.shape = (2, 4)
		
		tf.batch_matrix_diag(diagonal) ==> [[[1, 0, 0, 0]
		                                     [0, 2, 0, 0]
		                                     [0, 0, 3, 0]
		                                     [0, 0, 0, 4]],
		                                    [[5, 0, 0, 0]
		                                     [0, 6, 0, 0]
		                                     [0, 0, 7, 0]
		                                     [0, 0, 0, 8]]]
		
		which has shape (2, 4, 4)
		```
		
		Args:
		  diagonal: A `Tensor`. Rank `k`, where `k >= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
		  Rank `k+1`, with `output.shape = diagonal.shape + [diagonal.shape[-1]]`.
	**/
	static public function batch_matrix_diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the batched `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has `k` dimensions `[I, J, K, ..., N, N]`, then the output is a
		tensor of rank `k - 1` with dimensions `[I, J, K, ..., N]` where:
		
		`diagonal[i, j, k, ..., n] = input[i, j, k, ..., n, n]`.
		
		The input must be at least a matrix.
		
		For example:
		
		```prettyprint
		# 'input' is [[[1, 0, 0, 0]
		               [0, 2, 0, 0]
		               [0, 0, 3, 0]
		               [0, 0, 0, 4]],
		              [[5, 0, 0, 0]
		               [0, 6, 0, 0]
		               [0, 0, 7, 0]
		               [0, 0, 0, 8]]]
		
		and input.shape = (2, 4, 4)
		
		tf.batch_matrix_diag_part(input) ==> [[1, 2, 3, 4], [5, 6, 7, 8]]
		
		which has shape (2, 4)
		```
		
		Args:
		  input: A `Tensor`.
		    Rank `k` tensor where `k >= 2` and the last two dimensions are equal.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  The extracted diagonal(s) having shape
		  `diagonal.shape = input.shape[:-1]`.
	**/
	static public function batch_matrix_diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the inverse of square invertible matrices or their adjoints
		
		(conjugate transposes).
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the inverse for all input submatrices `[..., :, :]`.
		
		The op uses LU decomposition with partial pivoting to compute the inverses.
		
		If a matrix is not invertible there is no guarantee what the op does. It
		may detect the condition and raise an exception or it may simply return a
		garbage result.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, M]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. Shape is `[..., M, M]`.
	**/
	static public function batch_matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the diagonals of the innermost
		matrices.  These will be overwritten by the values in `diagonal`.
		The batched matrices must be square.
		
		The output is computed as follows:
		
		Assume `input` has `k+1` dimensions `[I, J, K, ..., N, N]` and `diagonal` has
		`k` dimensions `[I, J, K, ..., N]`.  Then the output is a
		tensor of rank `k+1` with dimensions [I, J, K, ..., N, N]` where:
		
		  * `output[i, j, k, ..., m, n] = diagonal[i, j, k, ..., n]` for `m == n`.
		  * `output[i, j, k, ..., m, n] = input[i, j, k, ..., m, n]` for `m != n`.
		
		Args:
		  input: A `Tensor`. Rank `k+1`, where `k >= 1`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		    Rank `k`, where `k >= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Rank `k+1`, with `output.shape = input.shape`.
	**/
	static public function batch_matrix_set_diag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves systems of linear equations. Checks for invertibility.
		
		Matrix is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. Rhs is a tensor of shape
		`[..., M, K]`. The output is a tensor shape `[..., M, K]`.  If `adjoint` is `False` then each output
		matrix satisfies `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `True` then each output
		matrix satisfies `adjoint(matrix[..., :, :]) * output[..., :, :] = rhs[..., :, :]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		    Shape is `[..., M, K]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its (block-wise)
		    adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`. Shape is `[..., M, K]`.
	**/
	static public function batch_matrix_solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves multiple linear least-squares problems.
		
		`matrix` is a tensor of shape `[..., M, N]` whose inner-most 2 dimensions
		form `M`-by-`N` matrices. Rhs is a tensor of shape `[..., M, K]` whose
		inner-most 2 dimensions form `M`-by-`K` matrices.   The computed output is a
		`Tensor` of shape `[..., N, K]` whose inner-most 2 dimensions form `M`-by-`K`
		matrices that solve the equations
		`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]` in the least squares
		sense.
		
		Below we will use the following notation for each pair of
		matrix and right-hand sides in the batch:
		
		`matrix`=\\(A \in \Re^{m \times n}\\),
		`rhs`=\\(B  \in \Re^{m \times k}\\),
		`output`=\\(X  \in \Re^{n \times k}\\),
		`l2_regularizer`=\\(\lambda\\).
		
		If `fast` is `True`, then the solution is computed by solving the normal
		equations using Cholesky decomposition. Specifically, if \\(m \ge n\\) then
		\\(X = (A^T A + \lambda I)^{-1} A^T B\\), which solves the least-squares
		problem \\(X = \mathrm{argmin}_{Z \in \Re^{n \times k}} ||A Z - B||_F^2 +
		\lambda ||Z||_F^2\\). If \\(m \lt n\\) then `output` is computed as
		\\(X = A^T (A A^T + \lambda I)^{-1} B\\), which (for \\(\lambda = 0\\)) is
		the minimum-norm solution to the under-determined linear system, i.e.
		\\(X = \mathrm{argmin}_{Z \in \Re^{n \times k}} ||Z||_F^2 \\), subject to
		\\(A Z = B\\). Notice that the fast path is only numerically stable when
		\\(A\\) is numerically full rank and has a condition number
		\\(\mathrm{cond}(A) \lt \frac{1}{\sqrt{\epsilon_{mach}}}\\) or\\(\lambda\\)
		is sufficiently large.
		
		If `fast` is `False` an algorithm based on the numerically robust complete
		orthogonal decomposition is used. This computes the minimum-norm
		least-squares solution, even when \\(A\\) is rank deficient. This path is
		typically 6-7 times slower than the fast path. If `fast` is `False` then
		`l2_regularizer` is ignored.
		
		Args:
		  matrix: `Tensor` of shape `[..., M, N]`.
		  rhs: `Tensor` of shape `[..., M, K]`.
		  l2_regularizer: 0-D `double` `Tensor`. Ignored if `fast=False`.
		  fast: bool. Defaults to `True`.
		  name: string, optional name of the operation.
		
		Returns:
		  output: `Tensor` of shape `[..., N, K]` whose inner-most 2 dimensions form
		    `M`-by-`K` matrices that solve the equations
		    `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]` in the least
		    squares sense.
	**/
	static public function batch_matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, ?l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transposes last two dimensions of batch matrix `a`.
		
		For example:
		
		```python
		# Matrix with no batch dimension.
		# 'x' is [[1 2 3]
		#         [4 5 6]]
		tf.batch_matrixtranspose(x) ==> [[1 4]
		                                 [2 5]
		                                 [3 6]]
		
		# Matrix with two batch dimensions.
		# x.shape is [1, 2, 3, 4]
		# tf.batch_matrix_transpose(x) is shape [1, 2, 4, 3]
		```
		
		Args:
		  a: A `Tensor` with `rank >= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A transposed batch matrix `Tensor`.
		
		Raises:
		  ValueError:  If `a` is determined statically to have `rank < 2`.
	**/
	static public function batch_matrix_transpose(a:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves systems of linear equations with upper or lower triangular matrices by
		
		backsubstitution.
		
		`matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions form
		square matrices. If `lower` is `True` then the strictly upper triangular part
		of each inner-most matrix is assumed to be zero and not accessed.
		If `lower` is False then the strictly lower triangular part of each inner-most
		matrix is assumed to be zero and not accessed.
		`rhs` is a tensor of shape [..., M, K]`.
		
		The output is a tensor of shape `[..., M, K]`. If `adjoint` is `True` then the
		innermost matrices in output` satisfy matrix equations
		`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `False` then the strictly then the  innermost matrices in
		`output` satisfy matrix equations
		`adjoint(matrix[..., i, k]) * output[..., k, j] = rhs[..., i, j]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		    Shape is `[..., M, K]`.
		  lower: An optional `bool`. Defaults to `True`.
		    Boolean indicating whether the innermost matrices in `matrix` are
		    lower or upper triangular.
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its (block-wise)
		    adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`. Shape is `[..., M, K]`.
	**/
	static public function batch_matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of self-adjoint matrices.
		
		Computes the eigenvalues and eigenvectors of the innermost N-by-N matrices
		in `tensor` such that
		`tensor[...,:,:] * v[..., :,i] = e(..., i) * v[...,:,i]`, for i=0...N-1.
		
		Args:
		  tensor: `Tensor` of shape `[..., N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[..., N]`.
		  v: Eigenvectors. Shape is `[..., N, N]`. The columns of the inner most
		  matrices
		    contain eigenvectors of the corresponding matrices in `tensor`
	**/
	static public function batch_self_adjoint_eig(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of square self-adjoint matrices.
		
		Computes the eigenvalues and (optionally) eigenvectors of each inner matrix in
		`input` such that `input[..., :, :] = v[..., :, :] * diag(e[..., :])`.
		
		```prettyprint
		# a is a tensor.
		# e is a tensor of eigenvalues.
		# v is a tensor of eigenvectors.
		e, v = batch_self_adjoint_eig(a)
		e = batch_self_adjoint_eig(a, compute_v=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    `Tensor` input of shape `[N, N]`.
		  compute_v: An optional `bool`. Defaults to `True`.
		    If `True` then eigenvectors will be computed and returned in `v`.
		    Otherwise, only the eigenvalues will be computed.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (e, v).
		  e: A `Tensor`. Has the same type as `input`. Eigenvalues. Shape is `[N]`.
		  v: A `Tensor`. Has the same type as `input`. Eigenvectors. Shape is `[N, N]`.
	**/
	static public function batch_self_adjoint_eig_v2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigenvalues of a batch of self-adjoint matrices.
		
		Args:
		  tensor: `Tensor` of shape `[..., N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[..., N]`. The vector `e[..., :]` contains the `N`
		    eigenvalues of `tensor[..., :, :]`.
	**/
	static public function batch_self_adjoint_eigvals(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the singular value decompositions of a batch of matrices.
		
		Computes the SVD of each inner matrix in `tensor` such that
		`tensor[..., :, :] = u[..., :, :] * diag(s[..., :, :]) * transpose(v[..., :,
		:])`
		
		```prettyprint
		# a is a tensor.
		# s is a tensor of singular values.
		# u is a tensor of left singular vectors.
		# v is a tensor of right singular vectors.
		s, u, v = batch_svd(a)
		s = batch_svd(a, compute_uv=False)
		```
		
		Args:
		  matrix: `Tensor` of shape `[..., M, N]`. Let `P` be the minimum of `M` and
		    `N`.
		  compute_uv: If `True` then left and right singular vectors will be
		    computed and returned in `u` and `v`, respectively. Otherwise, only the
		    singular values will be computed, which can be significantly faster.
		  full_matrices: If true, compute full-sized `u` and `v`. If false
		    (the default), compute only the leading `P` singular vectors.
		    Ignored if `compute_uv` is `False`.
		  name: string, optional name of the operation.
		
		Returns:
		  s: Singular values. Shape is `[..., P]`.
		  u: Right singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[..., M, P]`; if `full_matrices` is `True` then shape is
		    `[..., M, M]`. Not returned if `compute_uv` is `False`.
		  v: Left singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[..., N, P]`. If `full_matrices` is `True` then shape is
		    `[..., N, N]`. Not returned if `compute_uv` is `False`.
	**/
	static public function batch_svd(tensor:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		BatchToSpace for 4-D tensors of type T.
		
		Rearranges (permutes) data from batch into blocks of spatial data, followed by
		cropping. This is the reverse transformation of SpaceToBatch. More specifically,
		this op outputs a copy of the input tensor where values from the `batch`
		dimension are moved in spatial blocks to the `height` and `width` dimensions,
		followed by cropping along the `height` and `width` dimensions.
		
		Args:
		  input: A `Tensor`. 4-D tensor with shape
		    `[batch*block_size*block_size, height_pad/block_size, width_pad/block_size,
		      depth]`. Note that the batch size of the input tensor must be divisible by
		    `block_size * block_size`.
		  crops: A `Tensor` of type `int32`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		    how many elements to crop from the intermediate result across the spatial
		    dimensions as follows:
		
		        crops = [[crop_top, crop_bottom], [crop_left, crop_right]]
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  4-D with shape `[batch, height, width, depth]`, where:
		
		        height = height_pad - crop_top - crop_bottom
		        width = width_pad - crop_left - crop_right
		
		  The attr `block_size` must be greater than one. It indicates the block size.
		
		  Some examples:
		
		  (1) For the following input of shape `[4, 1, 1, 1]` and block_size of 2:
		
		  ```prettyprint
		  [[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		  ```
		
		  The output tensor has shape `[1, 2, 2, 1]` and value:
		
		  ```prettyprint
		  x = [[[[1], [2]], [[3], [4]]]]
		  ```
		
		  (2) For the following input of shape `[4, 1, 1, 3]` and block_size of 2:
		
		  ```prettyprint
		  [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
		  ```
		
		  The output tensor has shape `[1, 2, 2, 3]` and value:
		
		  ```prettyprint
		  x = [[[[1, 2, 3], [4, 5, 6]],
		        [[7, 8, 9], [10, 11, 12]]]]
		  ```
		
		  (3) For the following input of shape `[4, 2, 2, 1]` and block_size of 2:
		
		  ```prettyprint
		  x = [[[[1], [3]], [[5], [7]]],
		       [[[2], [4]], [[10], [12]]],
		       [[[5], [7]], [[13], [15]]],
		       [[[6], [8]], [[14], [16]]]]
		  ```
		
		  The output tensor has shape `[1, 4, 4, 1]` and value:
		
		  ```prettyprint
		  x = [[[1],   [2],  [3],  [4]],
		       [[5],   [6],  [7],  [8]],
		       [[9],  [10], [11],  [12]],
		       [[13], [14], [15],  [16]]]
		  ```
		
		  (4) For the following input of shape `[8, 1, 2, 1]` and block_size of 2:
		
		  ```prettyprint
		  x = [[[[1], [3]]], [[[9], [11]]], [[[2], [4]]], [[[10], [12]]],
		       [[[5], [7]]], [[[13], [15]]], [[[6], [8]]], [[[14], [16]]]]
		  ```
		
		  The output tensor has shape `[2, 2, 4, 1]` and value:
		
		  ```prettyprint
		  x = [[[[1], [3]], [[5], [7]]],
		       [[[2], [4]], [[10], [12]]],
		       [[[5], [7]], [[13], [15]]],
		       [[[6], [8]], [[14], [16]]]]
		  ```
	**/
	static public function batch_to_space(input:Dynamic, crops:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	static public var bfloat16 : Dynamic;
	static public var bfloat16_ref : Dynamic;
	/**
		Bitcasts a tensor from one type to another without copying data.
		
		Given a tensor `input`, this operation returns a tensor that has the same buffer
		data as `input` with datatype `type`.
		
		If the input datatype `T` is larger than the output datatype `type` then the
		shape changes from [...] to [..., sizeof(`T`)/sizeof(`type`)].
		
		If `T` is smaller than `type`, the operator requires that the rightmost
		dimension be equal to sizeof(`type`)/sizeof(`T`). The shape then goes from
		[..., sizeof(`type`)/sizeof(`T`)] to [...].
		
		*NOTE*: Bitcast is implemented as a low-level cast, so machines with different
		endian orderings will give different results.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.int16, tf.int8, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint32, tf.half`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `type`.
	**/
	static public function bitcast(input:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	static public var bool : Dynamic;
	static public var bool_ref : Dynamic;
	/**
		Apply boolean mask to tensor.  Numpy equivalent is `tensor[mask]`.
		
		```python
		# 1-D example
		tensor = [0, 1, 2, 3]
		mask = [True, False, True, False]
		boolean_mask(tensor, mask) ==> [0, 2]
		```
		
		In general, `0 < dim(mask) = K <= dim(tensor)`, and `mask`'s shape must match
		the first K dimensions of `tensor`'s shape.  We then have:
		  `boolean_mask(tensor, mask)[i, j1,...,jd] = tensor[i1,...,iK,j1,...,jd]`
		where `(i1,...,iK)` is the ith `True` entry of `mask` (row-major order).
		
		Args:
		  tensor:  N-D tensor.
		  mask:  K-D boolean tensor, K <= N and K must be known statically.
		  name:  A name for this operation (optional).
		
		Returns:
		  Tensor populated by entries in `tensor` corresponding to `True` values in
		    `mask`.
		
		Raises:
		  ValueError:  If shapes do not conform.
		
		Examples:
		
		```python
		# 2-D example
		tensor = [[1, 2], [3, 4], [5, 6]]
		mask = [True, False, True]
		boolean_mask(tensor, mask) ==> [[1, 2], [5, 6]]
		```
	**/
	static public function boolean_mask(tensor:Dynamic, mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a case operation.
		
		The `pred_fn_pairs` parameter is a dict or list of pairs of size N.
		Each pair contains a boolean scalar tensor and a python callable that
		creates the tensors to be returned if the boolean evaluates to True.
		`default` is a callable generating a list of tensors. All the callables
		in `pred_fn_pairs` as well as `default` should return the same number
		and types of tensors.
		
		If `exclusive==True`, all predicates are evaluated, and a logging operation
		with an error is returned if more than one of the predicates evaluates to
		True. If `exclusive==False`, execution stops are the first predicate which
		evaluates to True, and the tensors generated by the corresponding function
		are returned immediately. If none of the predicates evaluate to True, this
		operation returns the tensors generated by `default`.
		
		Example 1:
		  Pseudocode:
		  ```
		    if (x < y) return 17;
		    else return 23;
		  ```
		
		  Expressions:
		  ```
		    f1 = lambda: tf.constant(17)
		    f2 = lambda: tf.constant(23)
		    r = case([(tf.less(x, y), f1)], default=f2)
		  ```
		
		Example 2:
		  Pseudocode:
		  ```
		    if (x < y && x > z) raise OpError("Only one predicate may evaluate true");
		    if (x < y) return 17;
		    else if (x > z) return 23;
		    else return -1;
		  ```
		
		  Expressions:
		  ```
		    x = tf.constant(0)
		    y = tf.constant(1)
		    z = tf.constant(2)
		    def f1(): return tf.constant(17)
		    def f2(): return tf.constant(23)
		    def f3(): return tf.constant(-1)
		    r = case({tf.less(x, y): f1, tf.greater(x, z): f2},
		             default=f3, exclusive=True)
		  ```
		
		Args:
		  pred_fn_pairs: Dict or list of pairs of a boolean scalar tensor and a
		                 callable which returns a list of tensors.
		  default: A callable that returns a list of tensors.
		  exclusive: True iff more than one predicate is allowed to evaluate to True.
		  name: A name for this operation (optional).
		
		Returns:
		  The tensors returned by the first pair whose predicate evaluated to True, or
		  those returned by `default` if none does.
		
		Raises:
		  TypeError: If `pred_fn_pairs` is not a list/dictionary.
		  TypeError: If `pred_fn_pairs` is a list but does not contain 2-tuples.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
	**/
	@:native("case")
	static public function _case(pred_fn_pairs:Dynamic, _default:Dynamic, ?exclusive:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to a new type.
		
		The operation casts `x` (in case of `Tensor`) or `x.values`
		(in case of `SparseTensor`) to `dtype`.
		
		For example:
		
		```python
		# tensor `a` is [1.8, 2.2], dtype=tf.float
		tf.cast(a, tf.int32) ==> [1, 2]  # dtype=tf.int32
		```
		
		Args:
		  x: A `Tensor` or `SparseTensor`.
		  dtype: The destination type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` with same shape as `x`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `dtype`.
	**/
	@:native("cast")
	static public function _cast(x:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise smallest integer in not less than x.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function ceil(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks a tensor for NaN and Inf values.
		
		When run, reports an `InvalidArgument` error if `tensor` has any values
		that are not a number (NaN) or infinity (Inf). Otherwise, passes `tensor` as-is.
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  message: A `string`. Prefix of the error message.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function check_numerics(tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Cholesky decomposition of a square matrix.
		
		The input has to be symmetric and positive definite. Only the lower-triangular
		part of the input will be used for this operation. The upper-triangular part
		will not be read.
		
		The result is the lower-triangular matrix of the Cholesky decomposition of the
		input, `L`, so that `input = L L^*`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. Shape is `[M, M]`.
	**/
	static public function cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the reverse mode backpropagated gradient of the Cholesky algorithm.
		
		For an explanation see "Differentiation of the Cholesky algorithm" by
		Iain Murray http://arxiv.org/abs/1602.07527.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Output of Cholesky algorithm l = chol(A). Shape is `[M, M]`.
		    Algorithm depends only on lower triangular part of this matrix.
		  grad: A `Tensor`. Must have the same type as `l`.
		    df/dl where f is some scalar function. Shape is `[M, M]`.
		    Algorithm depends only on lower triangular part of this matrix.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `l`.
		  Symmetrized version of df/dA . Shape is `[M, M]`.
	**/
	static public function cholesky_grad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solve linear equations `A X = RHS`, given Cholesky factorization of `A`.
		
		```python
		# Solve one system of linear equations (K = 1).
		A = [[3, 1], [1, 3]]
		RHS = [[2], [22]]  # shape 2 x 1
		chol = tf.cholesky(A)
		X = tf.cholesky_solve(chol, RHS)
		# tf.matmul(A, X) ~ RHS
		X[:, 0]  # Solution to the linear system A x = RHS[:, 0]
		
		# Solve five systems of linear equations (K = 5).
		A = [[3, 1], [1, 3]]
		RHS = [[1, 2, 3, 4, 5], [11, 22, 33, 44, 55]]  # shape 2 x 5
		...
		X[:, 2]  # Solution to the linear system A x = RHS[:, 2]
		```
		
		Args:
		  chol:  A `Tensor`.  Must be `float32` or `float64`, shape is `[M, M]`.
		    Cholesky factorization of `A`, e.g. `chol = tf.cholesky(A)`.  For that
		    reason, only the lower triangular part (including the diagonal) of `chol`
		    is used.  The strictly upper part is assumed to be zero and not accessed.
		  rhs:  A `Tensor`, same type as `chol`, shape is `[M, K]`, designating `K`
		    systems of linear equations.
		  name:  A name to give this `Op`.  Defaults to `cholesky_solve`.
		
		Returns:
		  Solution to `A X = RHS`, shape `[M, K]`.  The solutions to the `K` systems.
	**/
	static public function cholesky_solve(chol:Dynamic, rhs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a maximum average L2-norm.
		
		Given a tensor `t`, and a maximum clip value `clip_norm`, this operation
		normalizes `t` so that its average L2-norm is less than or equal to
		`clip_norm`. Specifically, if the average L2-norm is already less than or
		equal to `clip_norm`, then `t` is not modified. If the average L2-norm is
		greater than `clip_norm`, then this operation returns a tensor of the same
		type and shape as `t` with its values set to:
		
		`t * clip_norm / l2norm_avg(t)`
		
		In this case, the average L2-norm of the output tensor is `clip_norm`.
		
		This operation is typically used to clip gradients before applying them with
		an optimizer.
		
		Args:
		  t: A `Tensor`.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. A maximum clipping value.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor`.
	**/
	static public function clip_by_average_norm(t:Dynamic, clip_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips values of multiple tensors by the ratio of the sum of their norms.
		
		Given a tuple or list of tensors `t_list`, and a clipping ratio `clip_norm`,
		this operation returns a list of clipped tensors `list_clipped`
		and the global norm (`global_norm`) of all tensors in `t_list`. Optionally,
		if you've already computed the global norm for `t_list`, you can specify
		the global norm with `use_norm`.
		
		To perform the clipping, the values `t_list[i]` are set to:
		
		    t_list[i] * clip_norm / max(global_norm, clip_norm)
		
		where:
		
		    global_norm = sqrt(sum([l2norm(t)**2 for t in t_list]))
		
		If `clip_norm > global_norm` then the entries in `t_list` remain as they are,
		otherwise they're all shrunk by the global ratio.
		
		Any of the entries of `t_list` that are of type `None` are ignored.
		
		This is the correct way to perform gradient clipping (for example, see
		[Pascanu et al., 2012](http://arxiv.org/abs/1211.5063)
		([pdf](http://arxiv.org/pdf/1211.5063.pdf))).
		
		However, it is slower than `clip_by_norm()` because all the parameters must be
		ready before the clipping operation can be performed.
		
		Args:
		  t_list: A tuple or list of mixed `Tensors`, `IndexedSlices`, or None.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. The clipping ratio.
		  use_norm: A 0-D (scalar) `Tensor` of type `float` (optional). The global
		    norm to use. If not provided, `global_norm()` is used to compute the norm.
		  name: A name for the operation (optional).
		
		Returns:
		  list_clipped: A list of `Tensors` of the same type as `list_t`.
		  global_norm: A 0-D (scalar) `Tensor` representing the global norm.
		
		Raises:
		  TypeError: If `t_list` is not a sequence.
	**/
	static public function clip_by_global_norm(t_list:Dynamic, clip_norm:Dynamic, ?use_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a maximum L2-norm.
		
		Given a tensor `t`, and a maximum clip value `clip_norm`, this operation
		normalizes `t` so that its L2-norm is less than or equal to `clip_norm`,
		along the dimensions given in `axes`. Specifically, in the default case
		where all dimensions are used for calculation, if the L2-norm of `t` is
		already less than or equal to `clip_norm`, then `t` is not modified. If
		the L2-norm is greater than `clip_norm`, then this operation returns a
		tensor of the same type and shape as `t` with its values set to:
		
		`t * clip_norm / l2norm(t)`
		
		In this case, the L2-norm of the output tensor is `clip_norm`.
		
		As another example, if `t` is a matrix and `axes == [1]`, then each row
		of the output will have L2-norm equal to `clip_norm`. If `axes == [0]`
		instead, each column of the output will be clipped.
		
		This operation is typically used to clip gradients before applying them with
		an optimizer.
		
		Args:
		  t: A `Tensor`.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. A maximum clipping value.
		  axes: A 1-D (vector) `Tensor` of type int32 containing the dimensions
		    to use for computing the L2-norm. If `None` (the default), uses all
		    dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor`.
	**/
	static public function clip_by_norm(t:Dynamic, clip_norm:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a specified min and max.
		
		Given a tensor `t`, this operation returns a tensor of the same type and
		shape as `t` with its values clipped to `clip_value_min` and `clip_value_max`.
		Any values less than `clip_value_min` are set to `clip_value_min`. Any values
		greater than `clip_value_max` are set to `clip_value_max`.
		
		Args:
		  t: A `Tensor`.
		  clip_value_min: A 0-D (scalar) `Tensor`. The minimum value to clip by.
		  clip_value_max: A 0-D (scalar) `Tensor`. The maximum value to clip by.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor`.
	**/
	static public function clip_by_value(t:Dynamic, clip_value_min:Dynamic, clip_value_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts two real numbers to a complex number.
		
		Given a tensor `real` representing the real part of a complex number, and a
		tensor `imag` representing the imaginary part of a complex number, this
		operation returns complex numbers elementwise of the form \(a + bj\), where
		*a* represents the `real` part and *b* represents the `imag` part.
		
		The input tensors `real` and `imag` must have the same shape.
		
		For example:
		
		```
		# tensor 'real' is [2.25, 3.25]
		# tensor `imag` is [4.75, 5.75]
		tf.complex(real, imag) ==> [[2.25 + 4.75j], [3.25 + 5.75j]]
		```
		
		Args:
		  real: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  imag: A `Tensor`. Must have the same type as `real`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64` or `complex128`.
	**/
	static public function complex(real:Dynamic, imag:Dynamic, ?name:Dynamic):Dynamic;
	static public var complex128 : Dynamic;
	static public var complex128_ref : Dynamic;
	static public var complex64 : Dynamic;
	static public var complex64_ref : Dynamic;
	/**
		Computes the complex absolute value of a tensor.
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of type
		`float32` or `float64` that is the absolute value of each element in `x`. All
		elements in `x` must be complex numbers of the form \\(a + bj\\). The
		absolute value is computed as \\( \sqrt{a^2 + b^2}\\).
		
		For example:
		
		```
		# tensor 'x' is [[-2.25 + 4.75j], [-3.25 + 5.75j]]
		tf.complex_abs(x) ==> [5.25594902, 6.60492229]
		```
		
		Args:
		  x: A `Tensor` of type `complex64` or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32` or `float64`.
	**/
	static public function complex_abs(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concatenates tensors along one dimension.
		
		Concatenates the list of tensors `values` along dimension `concat_dim`.  If
		`values[i].shape = [D0, D1, ... Dconcat_dim(i), ...Dn]`, the concatenated
		result has shape
		
		    [D0, D1, ... Rconcat_dim, ...Dn]
		
		where
		
		    Rconcat_dim = sum(Dconcat_dim(i))
		
		That is, the data from the input tensors is joined along the `concat_dim`
		dimension.
		
		The number of dimensions of the input tensors must match, and all dimensions
		except `concat_dim` must be equal.
		
		For example:
		
		```python
		t1 = [[1, 2, 3], [4, 5, 6]]
		t2 = [[7, 8, 9], [10, 11, 12]]
		tf.concat(0, [t1, t2]) ==> [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
		tf.concat(1, [t1, t2]) ==> [[1, 2, 3, 7, 8, 9], [4, 5, 6, 10, 11, 12]]
		
		# tensor t3 with shape [2, 3]
		# tensor t4 with shape [2, 3]
		tf.shape(tf.concat(0, [t3, t4])) ==> [4, 3]
		tf.shape(tf.concat(1, [t3, t4])) ==> [2, 6]
		```
		
		Note: If you are concatenating along a new axis consider using pack.
		E.g.
		
		```python
		tf.concat(axis, [tf.expand_dims(t, axis) for t in tensors])
		```
		
		can be rewritten as
		
		```python
		tf.pack(tensors, axis=axis)
		```
		
		Args:
		  concat_dim: 0-D `int32` `Tensor`.  Dimension along which to concatenate.
		  values: A list of `Tensor` objects or a single `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` resulting from concatenation of the input tensors.
	**/
	static public function concat(concat_dim:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return either fn1() or fn2() based on the boolean predicate `pred`.
		
		`fn1` and `fn2` both return lists of output tensors. `fn1` and `fn2` must have
		the same non-zero number and type of outputs.
		
		Note that the conditional execution applies only to the operations defined in
		fn1 and fn2. Consider the following simple program:
		
		```python
		z = tf.mul(a, b)
		result = tf.cond(x < y, lambda: tf.add(x, z), lambda: tf.square(y))
		```
		
		If x < y, the tf.add operation will be executed and tf.square
		operation will not be executed. Since z is needed for at least one
		branch of the cond, the tf.mul operation is always executed, unconditionally.
		Although this behavior is consistent with the dataflow model of TensorFlow,
		it has occasionally surprised some users who expected a lazier semantics.
		
		Args:
		  pred: A scalar determining whether to return the result of `fn1` or `fn2`.
		  fn1: The callable to be performed if pred is true.
		  fn2: The callable to be performed if pref is false.
		  name: Optional name prefix for the returned tensors.
		
		Returns:
		  Tensors returned by the call to either `fn1` or `fn2`. If the callables
		  return a singleton list, the element is extracted from the list.
		
		Raises:
		  TypeError: if `fn1` or `fn2` is not callable.
		  ValueError: if `fn1` and `fn2` do not return the same number of tensors, or
		              return tensors of different types.
		
		Example:
		
		```python
		  x = tf.constant(2)
		  y = tf.constant(5)
		  def f1(): return tf.mul(x, 17)
		  def f2(): return tf.add(y, 23)
		  r = cond(tf.less(x, y), f1, f2)
		  # r is set to f1().
		  # Operations in f2 (e.g., tf.add) are not executed.
		```
	**/
	static public function cond(pred:Dynamic, fn1:Dynamic, fn2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the complex conjugate of a complex number.
		
		Given a tensor `input` of complex numbers, this operation returns a tensor of
		complex numbers that are the complex conjugate of each element in `input`. The
		complex numbers in `input` must be of the form \\(a + bj\\), where *a* is the
		real part and *b* is the imaginary part.
		
		The complex conjugate returned by this operation is of the form \\(a - bj\\).
		
		For example:
		
		```
		# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
		tf.conj(input) ==> [-2.25 - 4.75j, 3.25 - 5.75j]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conj(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a constant tensor.
		
		 The resulting tensor is populated with values of type `dtype`, as
		 specified by arguments `value` and (optionally) `shape` (see examples
		 below).
		
		 The argument `value` can be a constant value, or a list of values of type
		 `dtype`. If `value` is a list, then the length of the list must be less
		 than or equal to the number of elements implied by the `shape` argument (if
		 specified). In the case where the list length is less than the number of
		 elements specified by `shape`, the last element in the list will be used
		 to fill the remaining entries.
		
		 The argument `shape` is optional. If present, it specifies the dimensions of
		 the resulting tensor. If not present, the shape of `value` is used.
		
		 If the argument `dtype` is not specified, then the type is inferred from
		 the type of `value`.
		
		 For example:
		
		 ```python
		 # Constant 1-D Tensor populated with value list.
		 tensor = tf.constant([1, 2, 3, 4, 5, 6, 7]) => [1 2 3 4 5 6 7]
		
		 # Constant 2-D tensor populated with scalar value -1.
		 tensor = tf.constant(-1.0, shape=[2, 3]) => [[-1. -1. -1.]
		                                              [-1. -1. -1.]]
		 ```
		
		Args:
		  value:     A constant value (or list) of output type `dtype`.
		
		  dtype:     The type of the elements of the resulting tensor.
		
		  shape:     Optional dimensions of resulting tensor.
		
		  name:      Optional name for the tensor.
		
		Returns:
		  A Constant Tensor.
	**/
	static public function constant(value:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an initializer that generates tensors with a single value.
		
		Args:
		  value: A Python scalar. All elements of the initialized variable
		    will be set to this value.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with a single value.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function constant_initializer(?value:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.container()` using the default graph.
		
		Args:
		  container_name: The container string to use in the context.
		
		Returns:
		  A context manager that specifies the default container to use for newly
		  created stateful ops.
	**/
	static public function container(container_name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.control_dependencies()` using the default graph.
		
		See [`Graph.control_dependencies()`](../../api_docs/python/framework.md#Graph.control_dependencies)
		for more details.
		
		Args:
		  control_inputs: A list of `Operation` or `Tensor` objects which
		    must be executed or computed before running the operations
		    defined in the context.  Can also be `None` to clear the control
		    dependencies.
		
		Returns:
		 A context manager that specifies control dependencies for all
		 operations constructed within the context.
	**/
	static public function control_dependencies(control_inputs:Dynamic):Dynamic;
	/**
		Converts the given `value` to a `Tensor`.
		
		This function converts Python objects of various types to `Tensor`
		objects. It accepts `Tensor` objects, numpy arrays, Python lists,
		and Python scalars. For example:
		
		```python
		import numpy as np
		
		def my_func(arg):
		  arg = tf.convert_to_tensor(arg, dtype=tf.float32)
		  return tf.matmul(arg, arg) + arg
		
		# The following calls are equivalent.
		value_1 = my_func(tf.constant([[1.0, 2.0], [3.0, 4.0]]))
		value_2 = my_func([[1.0, 2.0], [3.0, 4.0]])
		value_3 = my_func(np.array([[1.0, 2.0], [3.0, 4.0]], dtype=np.float32))
		```
		
		This function can be useful when composing a new operation in Python
		(such as `my_func` in the example above). All standard Python op
		constructors apply this function to each of their Tensor-valued
		inputs, which allows those ops to accept numpy arrays, Python lists,
		and scalars in addition to `Tensor` objects.
		
		Args:
		  value: An object whose type has a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		  as_ref: True if we want the result as a ref tensor. Only used if a new
		    `Tensor` is created.
		
		Returns:
		  A `Tensor` based on `value`.
		
		Raises:
		  TypeError: If no conversion function is registered for `value`.
		  RuntimeError: If a registered conversion function returns an invalid value.
	**/
	static public function convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Converts the given object to a `Tensor` or an `IndexedSlices`.
		
		If `value` is an `IndexedSlices` or `SparseTensor` it is returned
		unmodified. Otherwise, it is converted to a `Tensor` using
		`convert_to_tensor()`.
		
		Args:
		  value: An `IndexedSlices`, `SparseTensor`, or an object that can be consumed
		    by `convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor` or
		    `IndexedSlices`.
		  name: (Optional.) A name to use if a new `Tensor` is created.
		  as_ref: True if the caller wants the results as ref tensors.
		
		Returns:
		  An `Tensor`, `IndexedSlices`, or `SparseTensor` based on `value`.
		
		Raises:
		  ValueError: If `dtype` does not match the element type of `value`.
	**/
	static public function convert_to_tensor_or_indexed_slices(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Copy Op.
		
		Performs CPU-to-CPU or GPU-to-GPU deep-copying of tensor, depending on the
		device on which the tensor is allocated.
		
		Unlike the CopyHost Op, this op does not have HostMemory constraint on its
		input or output.
		
		Args:
		  input: A `Tensor`. Input tensor.
		  tensor_name: An optional `string`. Defaults to `""`.
		    The name of the input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Output tensor, deep-copied from input.
	**/
	static public function copy(input:Dynamic, ?tensor_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Copy Host Op.
		
		Performs CPU-to-CPU deep-copying of tensor.
		
		Unlike the Copy Op, this op has HostMemory constraint on its input or output.
		
		Args:
		  input: A `Tensor`. Input tensor.
		  tensor_name: An optional `string`. Defaults to `""`.
		    The name of the input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Output tensor, deep-copied from input.
	**/
	static public function copy_host(input:Dynamic, ?tensor_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes cos of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Increments 'ref' until it reaches 'limit'.
		
		This operation outputs "ref" after the update is done.  This makes it
		easier to chain operations that need to use the updated value.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should be from a scalar `Variable` node.
		  limit: An `int`.
		    If incrementing ref would bring it above limit, instead generates an
		    'OutOfRange' error.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `ref`.
		  A copy of the input before increment. If nothing else modifies the
		  input, the values produced will all be distinct.
	**/
	static public function count_up_to(ref:Dynamic, limit:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a list of partitioned variables according to the given `slicing`.
		
		Currently only one dimension of the full variable can be sliced, and the
		full variable can be reconstructed by the concatenation of the returned
		list along that dimension.
		
		Args:
		  shape: List of integers.  The shape of the full variable.
		  slicing: List of integers.  How to partition the variable.
		    Must be of the same length as `shape`.  Each value
		    indicate how many slices to create in the corresponding
		    dimension.  Presently only one of the values can be more than 1;
		    that is, the variable can only be sliced along one dimension.
		
		    For convenience, The requested number of partitions does not have to
		    divide the corresponding dimension evenly.  If it does not, the
		    shapes of the partitions are incremented by 1 starting from partition
		    0 until all slack is absorbed.  The adjustment rules may change in the
		    future, but as you can save/restore these variables with different
		    slicing specifications this should not be a problem.
		  initializer: A `Tensor` of shape `shape` or a variable initializer
		    function.  If a function, it will be called once for each slice,
		    passing the shape and data type of the slice as parameters.  The
		    function must return a tensor with the same shape as the slice.
		  dtype: Type of the variables. Ignored if `initializer` is a `Tensor`.
		  trainable: If True also add all the variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES`.
		  collections: List of graph collections keys to add the variables to.
		    Defaults to `[GraphKeys.VARIABLES]`.
		  name: Optional name for the full variable.  Defaults to
		    `"PartitionedVariable"` and gets uniquified automatically.
		  reuse: Boolean or `None`; if `True` and name is set, it would reuse
		    previously created variables. if `False` it will create new variables.
		    if `None`, it would inherit the parent scope reuse.
		
		Returns:
		  A list of Variables corresponding to the slicing.
		
		Raises:
		  ValueError: If any of the arguments is malformed.
	**/
	static public function create_partitioned_variables(shape:Dynamic, slicing:Dynamic, initializer:Dynamic, ?dtype:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Compute the pairwise cross product.
		
		`a` and `b` must be the same shape; they can either be simple 3-element vectors,
		or any shape where the innermost dimension is 3. In the latter case, each pair
		of corresponding 3-element vectors is cross-multiplied independently.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    A tensor containing 3-element vectors.
		  b: A `Tensor`. Must have the same type as `a`.
		    Another tensor, of same type and shape as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
		  Pairwise cross product of the vectors in `a` and `b`.
	**/
	static public function cross(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the cumulative product of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumprod, which means that the
		first
		element of the input is identical to the first element of the output:
		```prettyprint
		tf.cumprod([a, b, c]) ==> [a, a * b, a * b * c]
		```
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumprod is
		performed
		instead:
		```prettyprint
		tf.cumprod([a, b, c], exclusive=True) ==> [0, a, a * b]
		```
		
		By setting the `reverse` kwarg to `True`, the cumprod is performed in the
		opposite direction:
		```prettyprint
		tf.cumprod([a, b, c], reverse=True) ==> [a * b * c, b * c, c]
		```
		This is more efficient than using separate `tf.reverse` ops.
		
		The `reverse` and `exclusive` kwargs can also be combined:
		```prettyprint
		tf.cumprod([a, b, c], exclusive=True, reverse=True) ==> [b * c, c, 0]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		     `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`,
		     `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  axis: A `Tensor` of type `int32` (default: 0).
		  reverse: A `bool` (default: False).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cumprod(x:Dynamic, ?axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the cumulative sum of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumsum, which means that the first
		element of the input is identical to the first element of the output:
		```prettyprint
		tf.cumsum([a, b, c]) ==> [a, a + b, a + b + c]
		```
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumsum is performed
		instead:
		```prettyprint
		tf.cumsum([a, b, c], exclusive=True) ==> [0, a, a + b]
		```
		
		By setting the `reverse` kwarg to `True`, the cumsum is performed in the
		opposite direction:
		```prettyprint
		tf.cumsum([a, b, c], reverse=True) ==> [a + b + c, b + c, c]
		```
		This is more efficient than using separate `tf.reverse` ops.
		
		The `reverse` and `exclusive` kwargs can also be combined:
		```prettyprint
		tf.cumsum([a, b, c], exclusive=True, reverse=True) ==> [b + c, c, 0]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		     `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`,
		     `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		     axis: A `Tensor` of type `int32` (default: 0).
		     reverse: A `bool` (default: False).
		     name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cumsum(x:Dynamic, ?axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Debug Identity Op.
		
		Provides an identity mapping of the non-Ref type input tensor for debugging.
		
		Args:
		  input: A `Tensor`. Input tensor, non-Reference type.
		  tensor_name: An optional `string`. Defaults to `""`.
		    Name of the input tensor.
		  debug_urls: An optional list of `strings`. Defaults to `[]`.
		    List of URLs to debug targets, e.g.,
		    file:///foo/tfdbg_dump, grpc:://localhost:11011
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Output tensor that equals the input tensor.
	**/
	static public function debug_identity(input:Dynamic, ?tensor_name:Dynamic, ?debug_urls:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Debug NaN Value Counter Op
		
		Counts number of NaNs in the input tensor, for debugging.
		
		Args:
		  input: A `Tensor`. Input tensor, non-Reference type.
		  tensor_name: An optional `string`. Defaults to `""`.
		    Name of the input tensor.
		  debug_urls: An optional list of `strings`. Defaults to `[]`.
		    List of URLs to debug targets, e.g.,
		    file:///foo/tfdbg_dump, grpc:://localhost:11011
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  An integer output tensor that is the number of NaNs in the input.
	**/
	static public function debug_nan_count(input:Dynamic, ?tensor_name:Dynamic, ?debug_urls:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert CSV records to tensors. Each column maps to one tensor.
		
		RFC 4180 format is expected for the CSV records.
		(https://tools.ietf.org/html/rfc4180)
		Note that we allow leading and trailing spaces with int or float field.
		
		Args:
		  records: A `Tensor` of type `string`.
		    Each string is a record/row in the csv and all records should have
		    the same format.
		  record_defaults: A list of `Tensor` objects with types from: `float32`, `int32`, `int64`, `string`.
		    One tensor per column of the input record, with either a
		    scalar default value for that column or empty if the column is required.
		  field_delim: An optional `string`. Defaults to `","`.
		    delimiter to separate fields in a record.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `record_defaults`.
		  Each tensor will have the same shape as records.
	**/
	static public function decode_csv(records:Dynamic, record_defaults:Dynamic, ?field_delim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert JSON-encoded Example records to binary protocol buffer strings.
		
		This op translates a tensor containing Example records, encoded using
		the [standard JSON
		mapping](https://developers.google.com/protocol-buffers/docs/proto3#json),
		into a tensor containing the same records encoded as binary protocol
		buffers. The resulting tensor can then be fed to any of the other
		Example-parsing ops.
		
		Args:
		  json_examples: A `Tensor` of type `string`.
		    Each string is a JSON object serialized according to the JSON
		    mapping of the Example proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
		  Each string is a binary Example protocol buffer corresponding
		  to the respective element of `json_examples`.
	**/
	static public function decode_json_example(json_examples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reinterpret the bytes of a string as a vector of numbers.
		
		Args:
		  bytes: A `Tensor` of type `string`.
		    All the elements must have the same length.
		  out_type: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.uint8, tf.int16, tf.int8, tf.int64`.
		  little_endian: An optional `bool`. Defaults to `True`.
		    Whether the input `bytes` are in little-endian order.
		    Ignored for `out_type` values that are stored in a single byte like
		    `uint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
		  A Tensor with one more dimension than the input `bytes`.  The
		  added dimension will have size equal to the length of the elements
		  of `bytes` divided by the number of bytes to represent `out_type`.
	**/
	static public function decode_raw(bytes:Dynamic, out_type:Dynamic, ?little_endian:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Delete the tensor for the given tensor handle.
		
		This is EXPERIMENTAL and subject to change.
		
		Delete the tensor of a given tensor handle. The tensor is produced
		in a previous run() and stored in the state of the session.
		
		Args:
		  handle: The string representation of a persistent tensor handle.
		  name: Optional name prefix for the return tensor.
		
		Returns:
		  A pair of graph elements. The first is a placeholder for feeding a
		  tensor handle and the second is a deletion operation.
	**/
	static public function delete_session_tensor(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DepthToSpace for tensors of type T.
		
		Rearranges data from depth into blocks of spatial data.
		This is the reverse transformation of SpaceToDepth. More specifically,
		this op outputs a copy of the input tensor where values from the `depth`
		dimension are moved in spatial blocks to the `height` and `width` dimensions.
		The attr `block_size` indicates the input block size and how the data is moved.
		
		  * Chunks of data of size `block_size * block_size` from depth are rearranged
		    into non-overlapping blocks of size `block_size x block_size`
		  * The width the output tensor is `input_depth * block_size`, whereas the
		    height is `input_height * block_size`.
		  * The depth of the input tensor must be divisible by
		    `block_size * block_size`.
		
		That is, assuming the input is in the shape:
		`[batch, height, width, depth]`,
		the shape of the output will be:
		`[batch, height*block_size, width*block_size, depth/(block_size*block_size)]`
		
		This operation requires that the input tensor be of rank 4, and that
		`block_size` be >=1 and that `block_size * block_size` be a divisor of the
		input depth.
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given this input of shape `[1, 1, 1, 4]`, and a block size of 2:
		
		```prettyprint
		x = [[[[1, 2, 3, 4]]]]
		
		```
		
		This operation will output a tensor of shape `[1, 2, 2, 1]`:
		
		```prettyprint
		   [[[[1], [2]],
		     [[3], [4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[1, 1, 4]`,
		the corresponding output will have 2x2 elements and will have a depth of
		1 channel (1 = `4 / (block_size * block_size)`).
		The output element shape is `[2, 2, 1]`.
		
		For an input tensor with larger depth, here of shape `[1, 1, 1, 12]`, e.g.
		
		```prettyprint
		x = [[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		This operation, for block size of 2, will return the following tensor of shape
		`[1, 2, 2, 3]`
		
		```prettyprint
		   [[[[1, 2, 3], [4, 5, 6]],
		     [[7, 8, 9], [10, 11, 12]]]]
		
		```
		
		Similarly, for the following input of shape `[1 2 2 4]`, and a block size of 2:
		
		```prettyprint
		x =  [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		the operator will return the following tensor of shape `[1 4 4 1]`:
		
		```prettyprint
		x = [[ [1],   [2],  [5],  [6]],
		     [ [3],   [4],  [7],  [8]],
		     [ [9],  [10], [13],  [14]],
		     [ [11], [12], [15],  [16]]]
		
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`.
		    The size of the spatial block, same as in Space2Depth.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depth_to_space(input:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deserialize and concatenate `SparseTensors` from a serialized minibatch.
		
		The input `serialized_sparse` must be a string matrix of shape `[N x 3]` where
		`N` is the minibatch size and the rows correspond to packed outputs of
		`serialize_sparse`.  The ranks of the original `SparseTensor` objects
		must all match.  When the final `SparseTensor` is created, it has rank one
		higher than the ranks of the incoming `SparseTensor` objects (they have been
		concatenated along a new row dimension).
		
		The output `SparseTensor` object's shape values for all dimensions but the
		first are the max across the input `SparseTensor` objects' shape values
		for the corresponding dimensions.  Its first shape value is `N`, the minibatch
		size.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `sparse_reorder` to restore index ordering.
		
		For example, if the serialized input is a `[2, 3]` matrix representing two
		original `SparseTensor` objects:
		
		    index = [ 0]
		            [10]
		            [20]
		    values = [1, 2, 3]
		    shape = [50]
		
		and
		
		    index = [ 2]
		            [10]
		    values = [4, 5]
		    shape = [30]
		
		then the final deserialized `SparseTensor` will be:
		
		    index = [0  0]
		            [0 10]
		            [0 20]
		            [1  2]
		            [1 10]
		    values = [1, 2, 3, 4, 5]
		    shape = [2 50]
		
		Args:
		  serialized_sparse: 2-D `Tensor` of type `string` of shape `[N, 3]`.
		    The serialized and packed `SparseTensor` objects.
		  dtype: The `dtype` of the serialized `SparseTensor` objects.
		  rank: (optional) Python int, the rank of the `SparseTensor` objects.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` representing the deserialized `SparseTensor`s,
		  concatenated along the `SparseTensor`s' first dimension.
		
		  All of the serialized `SparseTensor`s must have had the same rank and type.
	**/
	static public function deserialize_many_sparse(serialized_sparse:Dynamic, dtype:Dynamic, ?rank:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.device()` using the default graph.
		
		See
		[`Graph.device()`](../../api_docs/python/framework.md#Graph.device)
		for more details.
		
		Args:
		  device_name_or_function: The device name or function to use in
		    the context.
		
		Returns:
		  A context manager that specifies the default device to use for newly
		  created ops.
	**/
	static public function device(device_name_or_function:Dynamic):Dynamic;
	/**
		Returns a diagonal tensor with a given diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has dimensions [D1,..., Dk], then the output is a tensor of
		rank 2k with dimensions [D1,..., Dk, D1,..., Dk] where:
		
		`output[i1,..., ik, i1,..., ik] = diagonal[i1, ..., ik]` and 0 everywhere else.
		
		For example:
		
		```prettyprint
		# 'diagonal' is [1, 2, 3, 4]
		tf.diag(diagonal) ==> [[1, 0, 0, 0]
		                       [0, 2, 0, 0]
		                       [0, 0, 3, 0]
		                       [0, 0, 0, 4]]
		```
		
		Args:
		  diagonal: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `complex64`.
		    Rank k tensor where k is at most 3.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the diagonal part of the tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has dimensions `[D1,..., Dk, D1,..., Dk]`, then the output is a
		tensor of rank `k` with dimensions `[D1,..., Dk]` where:
		
		`diagonal[i1,..., ik] = input[i1, ..., ik, i1,..., ik]`.
		
		For example:
		
		```prettyprint
		# 'input' is [[1, 0, 0, 0]
		              [0, 2, 0, 0]
		              [0, 0, 3, 0]
		              [0, 0, 0, 4]]
		
		tf.diag_part(input) ==> [1, 2, 3, 4]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `complex64`.
		    Rank k tensor where k is 2, 4, or 6.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. The extracted diagonal.
	**/
	static public function diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Psi, the derivative of Lgamma (the log of the absolute value of
		
		`Gamma(x)`), element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function digamma(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x / y element-wise.
		
		*NOTE*: `Div` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var double : Dynamic;
	static public var double_ref : Dynamic;
	/**
		Partitions `data` into `num_partitions` tensors using indices from `partitions`.
		
		For each index tuple `js` of size `partitions.ndim`, the slice `data[js, ...]`
		becomes part of `outputs[partitions[js]]`.  The slices with `partitions[js] = i`
		are placed in `outputs[i]` in lexicographic order of `js`, and the first
		dimension of `outputs[i]` is the number of entries in `partitions` equal to `i`.
		In detail,
		
		    outputs[i].shape = [sum(partitions == i)] + data.shape[partitions.ndim:]
		
		    outputs[i] = pack([data[js, ...] for js if partitions[js] == i])
		
		`data.shape` must start with `partitions.shape`.
		
		For example:
		
		    # Scalar partitions
		    partitions = 1
		    num_partitions = 2
		    data = [10, 20]
		    outputs[0] = []  # Empty with shape [0, 2]
		    outputs[1] = [[10, 20]]
		
		    # Vector partitions
		    partitions = [0, 0, 1, 1, 0]
		    num_partitions = 2
		    data = [10, 20, 30, 40, 50]
		    outputs[0] = [10, 20, 50]
		    outputs[1] = [30, 40]
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/DynamicPartition.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`.
		  partitions: A `Tensor` of type `int32`.
		    Any shape.  Indices in the range `[0, num_partitions)`.
		  num_partitions: An `int` that is `>= 1`.
		    The number of partitions to output.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_partitions` `Tensor` objects of the same type as data.
	**/
	static public function dynamic_partition(data:Dynamic, partitions:Dynamic, num_partitions:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Interleave the values from the `data` tensors into a single tensor.
		
		Builds a merged tensor such that
		
		    merged[indices[m][i, ..., j], ...] = data[m][i, ..., j, ...]
		
		For example, if each `indices[m]` is scalar or vector, we have
		
		    # Scalar indices
		    merged[indices[m], ...] = data[m][...]
		
		    # Vector indices
		    merged[indices[m][i], ...] = data[m][i, ...]
		
		Each `data[i].shape` must start with the corresponding `indices[i].shape`,
		and the rest of `data[i].shape` must be constant w.r.t. `i`.  That is, we
		must have `data[i].shape = indices[i].shape + constant`.  In terms of this
		`constant`, the output shape is
		
		    merged.shape = [max(indices)] + constant
		
		Values are merged in order, so if an index appears in both `indices[m][i]` and
		`indices[n][j]` for `(m,i) < (n,j)` the slice `data[n][j]` will appear in the
		merged result.
		
		For example:
		
		    indices[0] = 6
		    indices[1] = [4, 1]
		    indices[2] = [[5, 2], [0, 3]]
		    data[0] = [61, 62]
		    data[1] = [[41, 42], [11, 12]]
		    data[2] = [[[51, 52], [21, 22]], [[1, 2], [31, 32]]]
		    merged = [[1, 2], [11, 12], [21, 22], [31, 32], [41, 42],
		              [51, 52], [61, 62]]
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/DynamicStitch.png" alt>
		</div>
		
		Args:
		  indices: A list of at least 2 `Tensor` objects of type `int32`.
		  data: A list with the same number of `Tensor` objects as `indices` of `Tensor` objects of the same type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function dynamic_stitch(indices:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Levenshtein distance between sequences.
		
		This operation takes variable-length sequences (`hypothesis` and `truth`),
		each provided as a `SparseTensor`, and computes the Levenshtein distance.
		You can normalize the edit distance by length of `truth` by setting
		`normalize` to true.
		
		For example, given the following input:
		
		```python
		# 'hypothesis' is a tensor of shape `[2, 1]` with variable-length values:
		#   (0,0) = ["a"]
		#   (1,0) = ["b"]
		hypothesis = tf.SparseTensor(
		    [[0, 0, 0],
		     [1, 0, 0]],
		    ["a", "b"]
		    (2, 1, 1))
		
		# 'truth' is a tensor of shape `[2, 2]` with variable-length values:
		#   (0,0) = []
		#   (0,1) = ["a"]
		#   (1,0) = ["b", "c"]
		#   (1,1) = ["a"]
		truth = tf.SparseTensor(
		    [[0, 1, 0],
		     [1, 0, 0],
		     [1, 0, 1],
		     [1, 1, 0]]
		    ["a", "b", "c", "a"],
		    (2, 2, 2))
		
		normalize = True
		```
		
		This operation would return the following:
		
		```python
		# 'output' is a tensor of shape `[2, 2]` with edit distances normalized
		# by 'truth' lengths.
		output ==> [[inf, 1.0],  # (0,0): no truth, (0,1): no hypothesis
		           [0.5, 1.0]]  # (1,0): addition, (1,1): no hypothesis
		```
		
		Args:
		  hypothesis: A `SparseTensor` containing hypothesis sequences.
		  truth: A `SparseTensor` containing truth sequences.
		  normalize: A `bool`. If `True`, normalizes the Levenshtein distance by
		    length of `truth.`
		  name: A name for the operation (optional).
		
		Returns:
		  A dense `Tensor` with rank `R - 1`, where R is the rank of the
		  `SparseTensor` inputs `hypothesis` and `truth`.
		
		Raises:
		  TypeError: If either `hypothesis` or `truth` are not a `SparseTensor`.
	**/
	static public function edit_distance(hypothesis:Dynamic, truth:Dynamic, ?normalize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x == y) element-wise.
		
		*NOTE*: `Equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `quint8`, `qint8`, `qint32`, `string`, `bool`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Gauss error function of `x` element-wise.
		
		Args:
		  x: A `Tensor` of `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
	**/
	static public function erf(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the complementary error function of `x` element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function erfc(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes exponential of x element-wise.  \\(y = e^x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function exp(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inserts a dimension of 1 into a tensor's shape.
		
		Given a tensor `input`, this operation inserts a dimension of 1 at the
		dimension index `dim` of `input`'s shape. The dimension index `dim` starts at
		zero; if you specify a negative number for `dim` it is counted backward from
		the end.
		
		This operation is useful if you want to add a batch dimension to a single
		element. For example, if you have a single image of shape `[height, width,
		channels]`, you can make it a batch of 1 image with `expand_dims(image, 0)`,
		which will make the shape `[1, height, width, channels]`.
		
		Other examples:
		
		```prettyprint
		# 't' is a tensor of shape [2]
		shape(expand_dims(t, 0)) ==> [1, 2]
		shape(expand_dims(t, 1)) ==> [2, 1]
		shape(expand_dims(t, -1)) ==> [2, 1]
		
		# 't2' is a tensor of shape [2, 3, 5]
		shape(expand_dims(t2, 0)) ==> [1, 2, 3, 5]
		shape(expand_dims(t2, 2)) ==> [2, 3, 1, 5]
		shape(expand_dims(t2, 3)) ==> [2, 3, 5, 1]
		```
		
		This operation requires that:
		
		`-1-input.dims() <= dim <= input.dims()`
		
		This operation is related to `squeeze()`, which removes dimensions of
		size 1.
		
		Args:
		  input: A `Tensor`.
		  dim: A `Tensor` of type `int32`.
		    0-D (scalar). Specifies the dimension index at which to
		    expand the shape of `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Contains the same data as `input`, but its shape has an additional
		  dimension of size 1 added.
	**/
	static public function expand_dims(input:Dynamic, dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extract `patches` from `images` and put them in the "depth" output dimension.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    4-D Tensor with shape `[batch, in_rows, in_cols, depth]`.
		  ksizes: A list of `ints` that has length `>= 4`.
		    The size of the sliding window for each dimension of `images`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. How far the centers of two consecutive patches are in
		    the images. Must be: `[1, stride_rows, stride_cols, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    1-D of length 4. Must be: `[1, rate_rows, rate_cols, 1]`. This is the
		    input stride, specifying how far two consecutive patch samples are in the
		    input. Equivalent to extracting patches with
		    `patch_sizes_eff = patch_sizes + (patch_sizes - 1) * (rates - 1), followed by
		    subsampling them spatially by a factor of `rates`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		
		    We specify the size-related attributes as:
		
		          ksizes = [1, ksize_rows, ksize_cols, 1]
		          strides = [1, strides_rows, strides_cols, 1]
		          rates = [1, rates_rows, rates_cols, 1]
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
		  4-D Tensor with shape `[batch, out_rows, out_cols, ksize_rows *
		  ksize_cols * depth]` containing image patches with size
		  `ksize_rows x ksize_cols x depth` vectorized in the "depth" dimension.
	**/
	static public function extract_image_patches(images:Dynamic, ksizes:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the 1-dimensional discrete Fourier Transform.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 vector.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`. The 1D Fourier Transform of `input`.
	**/
	static public function fft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the 2-dimensional discrete Fourier Transform.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 matrix.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`. The 2D Fourier Transform of `input`.
	**/
	static public function fft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the 3-dimensional discrete Fourier Transform.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 3-D tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`. The 3D Fourier Transform of `input`.
	**/
	static public function fft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor filled with a scalar value.
		
		This operation creates a tensor of shape `dims` and fills it with `value`.
		
		For example:
		
		```prettyprint
		# Output tensor has shape [2, 3].
		fill([2, 3], 9) ==> [[9, 9, 9]
		                     [9, 9, 9]]
		```
		
		Args:
		  dims: A `Tensor` of type `int32`.
		    1-D. Represents the shape of the output tensor.
		  value: A `Tensor`. 0-D (scalar). Value to fill the returned tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
	**/
	static public function fill(dims:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	static public var float16 : Dynamic;
	static public var float16_ref : Dynamic;
	static public var float32 : Dynamic;
	static public var float32_ref : Dynamic;
	static public var float64 : Dynamic;
	static public var float64_ref : Dynamic;
	/**
		Returns element-wise largest integer not greater than x.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floor(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Divides `x / y` elementwise, rounding down for floating point.
		
		The same as `tf.div(x,y)` for integers, but uses `tf.floor(tf.div(x,y))` for
		floating point arguments so that the result is always an integer (though
		possibly an integer represented as floating point).  This op is generated by
		`x // y` floor division in Python 3 and in Python 2.7 with
		`from __future__ import division`.
		
		Note that for efficiency, `floordiv` uses C semantics for negative numbers
		(unlike Python and Numpy).
		
		`x` and `y` must have the same type, and the result will have the same type
		as well.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  `x / y` rounded down (except possibly towards zero for negative integers).
		
		Raises:
		  TypeError: If the inputs are complex.
	**/
	static public function floordiv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		foldl on the list of tensors unpacked from `elems` on dimension 0.
		
		This foldl operator repeatedly applies the callable `fn` to a sequence
		of elements from first to last. The elements are made of the tensors
		unpacked from `elems` on dimension 0. The callable fn takes two tensors as
		arguments. The first argument is the accumulated value computed from the
		preceding invocation of fn. If `initializer` is None, `elems` must contain
		at least one element, and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is fn(initializer, values[0]).shape`.
		
		Args:
		  fn: The callable to be performed.
		  elems: A tensor to be unpacked on dimension 0.
		  initializer: (optional) The initial value for the accumulator.
		  parallel_iterations: (optional) The number of iterations allowed to run
		    in parallel.
		  back_prop: (optional) True enables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor resulting from applying `fn` consecutively to the list of tensors
		  unpacked from `elems`, from first to last.
		
		Raises:
		  TypeError: if `fn` is not callable.
		
		Example:
		  ```python
		  elems = [1, 2, 3, 4, 5, 6]
		  sum = foldl(lambda a, x: a + x, elems)
		  # sum == 21
		  ```
	**/
	static public function foldl(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		foldr on the list of tensors unpacked from `elems` on dimension 0.
		
		This foldr operator repeatedly applies the callable `fn` to a sequence
		of elements from last to first. The elements are made of the tensors
		unpacked from `elems`. The callable fn takes two tensors as arguments.
		The first argument is the accumulated value computed from the preceding
		invocation of fn. If `initializer` is None, `elems` must contain at least
		one element, and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `fn(initializer, values[0]).shape`.
		
		Args:
		  fn: The callable to be performed.
		  elems: A tensor that is unpacked into a sequence of tensors to apply `fn`.
		  initializer: (optional) The initial value for the accumulator.
		  parallel_iterations: (optional) The number of iterations allowed to run
		    in parallel.
		  back_prop: (optional) True enables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor resulting from applying `fn` consecutively to the list of tensors
		  unpacked from `elems`, from last to first.
		
		Raises:
		  TypeError: if `fn` is not callable.
		
		Example:
		  ```python
		  elems = [1, 2, 3, 4, 5, 6]
		  sum = foldr(lambda a, x: a + x, elems)
		  # sum == 21
		  ```
	**/
	static public function foldr(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather slices from `params` according to `indices`.
		
		`indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
		Produces an output tensor with shape `indices.shape + params.shape[1:]` where:
		
		    # Scalar indices
		    output[:, ..., :] = params[indices, :, ... :]
		
		    # Vector indices
		    output[i, :, ..., :] = params[indices[i], :, ... :]
		
		    # Higher rank indices
		    output[i, ..., j, :, ... :] = params[indices[i, ..., j], :, ..., :]
		
		If `indices` is a permutation and `len(indices) == params.shape[0]` then
		this operation will permute `params` accordingly.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/Gather.png" alt>
		</div>
		
		Args:
		  params: A `Tensor`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function gather(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather values or slices from `params` according to `indices`.
		
		`params` is a Tensor of rank `R` and `indices` is a Tensor of rank `M`.
		
		`indices` must be integer tensor, containing indices into `params`.
		It must be shape `[d_0, ..., d_N, R]` where `0 < R <= M`.
		
		The innermost dimension of `indices` (with length `R`) corresponds to
		indices into elements (if `R = M`) or slices (if `R < M`) along the `N`th
		dimension of `params`.
		
		Produces an output tensor with shape
		
		    [d_0, ..., d_{n-1}, params.shape[R], ..., params.shape[M-1]].
		
		Some examples below.
		
		Simple indexing into a matrix:
		
		    indices = [[0, 0], [1, 1]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = ['a', 'd']
		
		Slice indexing into a matrix:
		
		    indices = [[1], [0]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [['c', 'd'], ['a', 'b']]
		
		Indexing into a 3-tensor:
		
		    indices = [[1]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [[['a1', 'b1'], ['c1', 'd1']]]
		
		
		    indices = [[0, 1], [1, 0]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [['c0', 'd0'], ['a1', 'b1']]
		
		
		    indices = [[0, 0, 1], [1, 0, 1]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = ['b0', 'b1']
		
		Batched indexing into a matrix:
		
		    indices = [[[0, 0]], [[0, 1]]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [['a'], ['b']]
		
		Batched slice indexing into a matrix:
		
		    indices = [[[1]], [[0]]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [[['c', 'd']], [['a', 'b']]]
		
		Batched indexing into a 3-tensor:
		
		    indices = [[[1]], [[0]]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [[[['a1', 'b1'], ['c1', 'd1']]],
		              [[['a0', 'b0'], ['c0', 'd0']]]]
		
		
		    indices = [[[0, 1], [1, 0]], [[0, 0], [1, 1]]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [[['c0', 'd0'], ['a1', 'b1']],
		              [['a0', 'b0'], ['c1', 'd1']]]
		
		
		    indices = [[[0, 0, 1], [1, 0, 1]], [[0, 1, 1], [1, 1, 0]]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [['b0', 'b1'], ['d0', 'c1']]
		
		Args:
		  params: A `Tensor`. `M-D`.  The tensor from which to gather values.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    `(N+1)-D`.  Index tensor having shape `[d_0, ..., d_N, R]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
		  `(N+M-R)-D`.  Values from `params` gathered from indices given by
		  `indices`.
	**/
	static public function gather_nd(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.get_collection()` using the default graph.
		
		See [`Graph.get_collection()`](../../api_docs/python/framework.md#Graph.get_collection)
		for more details.
		
		Args:
		  key: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		  scope: (Optional.) If supplied, the resulting list is filtered to include
		    only items whose `name` attribute matches using `re.match`. Items
		    without a `name` attribute are never returned if a scope is supplied and
		    the choice or `re.match` means that a `scope` without special tokens
		    filters by prefix.
		
		Returns:
		  The list of values in the collection with the given `name`, or
		  an empty list if no value has been added to that collection. The
		  list contains the values in the order under which they were
		  collected.
	**/
	static public function get_collection(key:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.get_collection_ref()` using the default graph.
		
		See [`Graph.get_collection_ref()`](../../api_docs/python/framework.md#Graph.get_collection_ref)
		for more details.
		
		Args:
		  key: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		
		Returns:
		  The list of values in the collection with the given `name`, or an empty
		  list if no value has been added to that collection.  Note that this returns
		  the collection list itself, which can be modified in place to change the
		  collection.
	**/
	static public function get_collection_ref(key:Dynamic):Dynamic;
	/**
		Returns the default graph for the current thread.
		
		The returned graph will be the innermost graph on which a
		`Graph.as_default()` context has been entered, or a global default
		graph if none has been explicitly created.
		
		NOTE: The default graph is a property of the current thread. If you
		create a new thread, and wish to use the default graph in that
		thread, you must explicitly add a `with g.as_default():` in that
		thread's function.
		
		Returns:
		  The default `Graph` being used in the current thread.
	**/
	static public function get_default_graph():Dynamic;
	/**
		Returns the default session for the current thread.
		
		The returned `Session` will be the innermost session on which a
		`Session` or `Session.as_default()` context has been entered.
		
		NOTE: The default session is a property of the current thread. If you
		create a new thread, and wish to use the default session in that
		thread, you must explicitly add a `with sess.as_default():` in that
		thread's function.
		
		Returns:
		  The default `Session` being used in the current thread.
	**/
	static public function get_default_session():Dynamic;
	/**
		Returns the local seeds an operation should use given an op-specific seed.
		
		Given operation-specific seed, `op_seed`, this helper function returns two
		seeds derived from graph-level and op-level seeds. Many random operations
		internally use the two seeds to allow user to change the seed globally for a
		graph, or for only specific operations.
		
		For details on how the graph-level seed interacts with op seeds, see
		[`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed).
		
		Args:
		  op_seed: integer.
		
		Returns:
		  A tuple of two integers that should be used for the local seed of this
		  operation.
	**/
	static public function get_seed(op_seed:Dynamic):Dynamic;
	/**
		Return the handle of `data`.
		
		This is EXPERIMENTAL and subject to change.
		
		Keep `data` "in-place" in the runtime and create a handle that can be
		used to retrieve `data` in a subsequent run().
		
		Combined with `get_session_tensor`, we can keep a tensor produced in
		one run call in place, and use it as the input in a future run call.
		
		Args:
		  data: A tensor to be stored in the session.
		  name: Optional name prefix for the return tensor.
		
		Returns:
		  A scalar string tensor representing a unique handle for `data`.
		
		Raises:
		  TypeError: if `data` is not a Tensor.
		
		Example:
		
		```python
		c = tf.mul(a, b)
		h = tf.get_session_handle(c)
		h = sess.run(h)
		
		p, a = tf.get_session_tensor(h.handle, tf.float32)
		b = tf.mul(a, 10)
		c = sess.run(b, feed_dict={p: h.handle})
		```
	**/
	static public function get_session_handle(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get the tensor of type `dtype` by feeding a tensor handle.
		
		This is EXPERIMENTAL and subject to change.
		
		Get the value of the tensor from a tensor handle. The tensor
		is produced in a previous run() and stored in the state of the
		session.
		
		Args:
		  handle: The string representation of a persistent tensor handle.
		  dtype: The type of the output tensor.
		  name: Optional name prefix for the return tensor.
		
		Returns:
		  A pair of tensors. The first is a placeholder for feeding a
		  tensor handle and the second is the tensor in the session state
		  keyed by the tensor handle.
		
		Example:
		
		```python
		c = tf.mul(a, b)
		h = tf.get_session_handle(c)
		h = sess.run(h)
		
		p, a = tf.get_session_tensor(h.handle, tf.float32)
		b = tf.mul(a, 10)
		c = sess.run(b, feed_dict={p: h.handle})
		```
	**/
	static public function get_session_tensor(handle:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a single Summary op that would run all summaries.
		
		Either existing one from `SUMMARY_OP` collection or merges all existing
		summaries.
		
		Returns:
		  If no summaries were collected, returns None. Otherwise returns a scalar
		  `Tensor` of type `string` containing the serialized `Summary` protocol
		  buffer resulting from the merging.
	**/
	static public function get_summary_op():Dynamic;
	/**
		Gets an existing variable with these parameters or create a new one.
		
		This function prefixes the name with the current variable scope
		and performs reuse checks. See the
		[Variable Scope How To](../../how_tos/variable_scope/index.md)
		for an extensive description of how reusing works. Here is a basic example:
		
		```python
		with tf.variable_scope("foo"):
		    v = tf.get_variable("v", [1])  # v.name == "foo/v:0"
		    w = tf.get_variable("w", [1])  # w.name == "foo/w:0"
		with tf.variable_scope("foo", reuse=True)
		    v1 = tf.get_variable("v")  # The same as v above.
		```
		
		If initializer is `None` (the default), the default initializer passed in
		the variable scope will be used. If that one is `None` too, a
		`uniform_unit_scaling_initializer` will be used. The initializer can also be
		a Tensor, in which case the variable is initialized to this value and shape.
		
		Similarly, if the regularizer is `None` (the default), the default regularizer
		passed in the variable scope will be used (if that is `None` too,
		then by default no regularization is performed).
		
		If a partitioner is provided, first a sharded `Variable` is created
		via `_get_partitioned_variable`, and the return value is a
		`Tensor` composed of the shards concatenated along the partition axis.
		
		Some useful partitioners are available.  See, e.g.,
		`variable_axis_size_partitioner` and `min_max_variable_partitioner`.
		
		Args:
		  name: The name of the new or existing variable.
		  shape: Shape of the new or existing variable.
		  dtype: Type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: Initializer for the variable if one is created.
		  regularizer: A (Tensor -> Tensor or None) function; the result of
		    applying it on a newly created variable will be added to the collection
		    GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  collections: List of graph collections keys to add the Variable to.
		    Defaults to `[GraphKeys.VARIABLES]` (see tf.Variable).
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and `dtype` of the Variable to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  validate_shape: If False, allows the variable to be initialized with a
		      value of unknown shape. If True, the default, the shape of initial_value
		      must be known.
		  custom_getter: Callable that takes as a first argument the true getter, and
		    allows overwriting the internal get_variable method.
		    The signature of `custom_getter` should match that of this method,
		    but the most future-proof version will allow for changes:
		    `def custom_getter(getter, *args, **kwargs)`.  Direct access to
		    all `get_variable` parameters is also allowed:
		    `def custom_getter(getter, name, *args, **kwargs)`.  A simple identity
		    custom getter that simply creates variables with modified names is:
		    ```python
		    def custom_getter(getter, name, *args, **kwargs):
		      return getter(name + '_suffix', *args, **kwargs)
		    ```
		
		Returns:
		  The created or existing variable.
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    or when violating reuse during variable creation. Reuse is set inside
		    `variable_scope`.
	**/
	static public function get_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?custom_getter:Dynamic):Dynamic;
	/**
		Returns the current variable scope.
	**/
	static public function get_variable_scope():Dynamic;
	/**
		Computes the global norm of multiple tensors.
		
		Given a tuple or list of tensors `t_list`, this operation returns the
		global norm of the elements in all tensors in `t_list`. The global norm is
		computed as:
		
		`global_norm = sqrt(sum([l2norm(t)**2 for t in t_list]))`
		
		Any entries in `t_list` that are of type None are ignored.
		
		Args:
		  t_list: A tuple or list of mixed `Tensors`, `IndexedSlices`, or None.
		  name: A name for the operation (optional).
		
		Returns:
		  A 0-D (scalar) `Tensor` of type `float`.
		
		Raises:
		  TypeError: If `t_list` is not a sequence.
	**/
	static public function global_norm(t_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs symbolic partial derivatives of sum of `ys` w.r.t. x in `xs`.
		
		`ys` and `xs` are each a `Tensor` or a list of tensors.  `grad_ys`
		is a list of `Tensor`, holding the gradients received by the
		`ys`. The list must be the same length as `ys`.
		
		`gradients()` adds ops to the graph to output the partial
		derivatives of `ys` with respect to `xs`.  It returns a list of
		`Tensor` of length `len(xs)` where each tensor is the `sum(dy/dx)`
		for y in `ys`.
		
		`grad_ys` is a list of tensors of the same length as `ys` that holds
		the initial gradients for each y in `ys`.  When `grad_ys` is None,
		we fill in a tensor of '1's of the shape of y for each y in `ys`.  A
		user can provide their own initial `grad_ys` to compute the
		derivatives using a different initial gradient for each y (e.g., if
		one wanted to weight the gradient differently for each value in
		each y).
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  grad_ys: Optional. A `Tensor` or list of tensors the same size as
		    `ys` and holding the gradients computed for each y in `ys`.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'gradients'.
		  colocate_gradients_with_ops: If True, try colocating gradients with
		    the corresponding op.
		  gate_gradients: If True, add a tuple around the gradients returned
		    for an operations.  This avoids some race conditions.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Accepted values are constants defined in the class `AggregationMethod`.
		
		Returns:
		  A list of `sum(dy/dx)` for each x in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `x` and `y` does not
		    have a registered gradient function.
		  ValueError: if the arguments are invalid.
	**/
	static public function gradients(ys:Dynamic, xs:Dynamic, ?grad_ys:Dynamic, ?name:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic):Dynamic;
	/**
		Returns the truth value of (x > y) element-wise.
		
		*NOTE*: `Greater` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function greater(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x >= y) element-wise.
		
		*NOTE*: `GreaterEqual` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function greater_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create an op that groups multiple operations.
		
		When this op finishes, all ops in `input` have finished. This op has no
		output.
		
		See also `tuple` and `with_dependencies`.
		
		Args:
		  *inputs: Zero or more tensors to group.
		  **kwargs: Optional parameters to pass when constructing the NodeDef.
		  name: A name for this operation (optional).
		
		Returns:
		  An Operation that executes all its inputs.
		
		Raises:
		  ValueError: If an unknown keyword argument is provided.
	**/
	static public function group(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var half : Dynamic;
	static public var half_ref : Dynamic;
	/**
		Return histogram of values.
		
		Given the tensor `values`, this operation returns a rank 1 histogram counting
		the number of entries in `values` that fell into every bin.  The bins are
		equal width and determined by the arguments `value_range` and `nbins`.
		
		Args:
		  values:  Numeric `Tensor`.
		  value_range:  Shape [2] `Tensor`.  new_values <= value_range[0] will be
		    mapped to hist[0], values >= value_range[1] will be mapped to hist[-1].
		    Must be same dtype as new_values.
		  nbins:  Scalar `int32 Tensor`.  Number of histogram bins.
		  dtype:  dtype for returned histogram.
		  name:  A name for this operation (defaults to 'histogram_fixed_width').
		
		Returns:
		  A 1-D `Tensor` holding histogram of values.
		
		Examples:
		
		```python
		# Bins will be:  (-inf, 1), [1, 2), [2, 3), [3, 4), [4, inf)
		nbins = 5
		value_range = [0.0, 5.0]
		new_values = [-1.0, 0.0, 1.5, 2.0, 5.0, 15]
		
		with tf.default_session() as sess:
		  hist = tf.histogram_fixed_width(new_values, value_range, nbins=5)
		  variables.initialize_all_variables().run()
		  sess.run(hist) => [2, 1, 1, 0, 2]
		```
	**/
	static public function histogram_fixed_width(values:Dynamic, value_range:Dynamic, ?nbins:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a histogram.
		
		The generated
		[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		has one summary value containing a histogram for `values`.
		
		This op reports an `InvalidArgument` error if any value is not finite.
		
		Args:
		  tag: A `string` `Tensor`. 0-D.  Tag to use for the summary value.
		  values: A real numeric `Tensor`. Any shape. Values to use to
		    build the histogram.
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function histogram_summary(tag:Dynamic, values:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a tensor with the same shape and contents as the input tensor or value.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function identity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		.Doc(R"doc(
		
		Compute the inverse 1-dimensional discrete Fourier Transform.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 vector.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  The inverse 1D Fourier Transform of `input`.
	**/
	static public function ifft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the inverse 2-dimensional discrete Fourier Transform.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 matrix.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  The inverse 2D Fourier Transform of `input`.
	**/
	static public function ifft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the inverse 3-dimensional discrete Fourier Transform.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 3-D tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  The inverse 3D Fourier Transform of `input`.
	**/
	static public function ifft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the lower regularized incomplete Gamma function `Q(a, x)`.
		
		The lower regularized incomplete Gamma function is defined as:
		
		```
		P(a, x) = gamma(a, x) / Gamma(x) = 1 - Q(a, x)
		```
		where
		```
		gamma(a, x) = int_{0}^{x} t^{a-1} exp(-t) dt
		```
		is the lower incomplete Gamma function.
		
		Note, above `Q(a, x)` (`Igammac`) is the upper regularized complete
		Gamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function igamma(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the upper regularized incomplete Gamma function `Q(a, x)`.
		
		The upper regularized incomplete Gamma function is defined as:
		
		```
		Q(a, x) = Gamma(a, x) / Gamma(x) = 1 - P(a, x)
		```
		where
		```
		Gamma(a, x) = int_{x}^{\infty} t^{a-1} exp(-t) dt
		```
		is the upper incomplete Gama function.
		
		Note, above `P(a, x)` (`Igamma`) is the lower regularized complete
		Gamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function igammac(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the imaginary part of a complex number.
		
		Given a tensor `input` of complex numbers, this operation returns a tensor of
		type `float32` or `float64` that is the imaginary part of each element in
		`input`. All elements in `input` must be complex numbers of the form \(a +
		bj\), where *a* is the real part and *b* is the imaginary part returned by
		this operation.
		
		For example:
		
		```
		# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
		tf.imag(input) ==> [4.75, 5.75]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32` or `float64`.
	**/
	static public function imag(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with images.
		
		The summary has up to `max_images` summary values containing images. The
		images are built from `tensor` which must be 4-D with shape `[batch_size,
		height, width, channels]` and where `channels` can be:
		
		*  1: `tensor` is interpreted as Grayscale.
		*  3: `tensor` is interpreted as RGB.
		*  4: `tensor` is interpreted as RGBA.
		
		The images have the same number of channels as the input tensor. For float
		input, the values are normalized one image at a time to fit in the range
		`[0, 255]`.  `uint8` values are unchanged.  The op uses two different
		normalization algorithms:
		
		*  If the input values are all positive, they are rescaled so the largest one
		   is 255.
		
		*  If any input value is negative, the values are shifted so input value 0.0
		   is at 127.  They are then rescaled so that either the smallest value is 0,
		   or the largest one is 255.
		
		The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
		build the `tag` of the summary values:
		
		*  If `max_images` is 1, the summary value tag is '*tag* /image'.
		*  If `max_images` is greater than 1, the summary value tags are
		   generated sequentially as '*tag* /image/0', '*tag* /image/1', etc.
		
		Args:
		  tag: A scalar `Tensor` of type `string`. Used to build the `tag`
		    of the summary values.
		  tensor: A 4-D `uint8` or `float32` `Tensor` of shape `[batch_size, height,
		    width, channels]` where `channels` is 1, 3, or 4.
		  max_images: Max number of batch elements to generate images for.
		  collections: Optional list of ops.GraphKeys.  The collections to add the
		    summary to.  Defaults to [ops.GraphKeys.SUMMARIES]
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function image_summary(tag:Dynamic, tensor:Dynamic, ?max_images:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns immutable tensor from memory region.
		
		The current implementation memmaps the tensor from a file.
		
		Args:
		  dtype: A `tf.DType`. Type of the returned tensor.
		  shape: A `tf.TensorShape` or list of `ints`. Shape of the returned tensor.
		  memory_region_name: A `string`.
		    Name of readonly memory region used by the tensor, see
		    NewReadOnlyMemoryRegionFromFile in tensorflow::Env.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function immutable_const(dtype:Dynamic, shape:Dynamic, memory_region_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Imports the TensorFlow graph in `graph_def` into the Python `Graph`.
		
		This function provides a way to import a serialized TensorFlow
		[`GraphDef`](https://www.tensorflow.org/code/tensorflow/core/framework/graph.proto)
		protocol buffer, and extract individual objects in the `GraphDef` as
		[`Tensor`](#Tensor) and [`Operation`](#Operation) objects. See
		[`Graph.as_graph_def()`](#Graph.as_graph_def) for a way to create a
		`GraphDef` proto.
		
		Args:
		  graph_def: A `GraphDef` proto containing operations to be imported into
		    the default graph.
		  input_map: A dictionary mapping input names (as strings) in `graph_def`
		    to `Tensor` objects. The values of the named input tensors in the
		    imported graph will be re-mapped to the respective `Tensor` values.
		  return_elements: A list of strings containing operation names in
		    `graph_def` that will be returned as `Operation` objects; and/or
		    tensor names in `graph_def` that will be returned as `Tensor` objects.
		  name: (Optional.) A prefix that will be prepended to the names in
		    `graph_def`. Defaults to `"import"`.
		  op_dict: (Optional.) A dictionary mapping op type names to `OpDef` protos.
		    Must contain an `OpDef` proto for each op type named in `graph_def`.
		    If omitted, uses the `OpDef` protos registered in the global registry.
		  producer_op_list: (Optional.) An `OpList` proto with the (possibly stripped)
		    list of `OpDef`s used by the producer of the graph. If provided, attrs
		    for ops in `graph_def` that are not in `op_dict` that have their default
		    value according to `producer_op_list` will be removed. This will allow
		    some more `GraphDef`s produced by later binaries to be accepted by
		    earlier binaries.
		
		Returns:
		  A list of `Operation` and/or `Tensor` objects from the imported graph,
		  corresponding to the names in `return_elements`.
		
		Raises:
		  TypeError: If `graph_def` is not a `GraphDef` proto,
		    `input_map` is not a dictionary mapping strings to `Tensor` objects,
		    or `return_elements` is not a list of strings.
		  ValueError: If `input_map`, or `return_elements` contains names that
		    do not appear in `graph_def`, or `graph_def` is not well-formed (e.g.
		    it refers to an unknown tensor).
	**/
	static public function import_graph_def(graph_def:Dynamic, ?input_map:Dynamic, ?return_elements:Dynamic, ?name:Dynamic, ?op_dict:Dynamic, ?producer_op_list:Dynamic):Dynamic;
	/**
		Returns an Op that initializes all tables of the default graph.
		
		Args:
		  name: Optional name for the initialization op.
		
		Returns:
		  An Op that initializes all tables.  Note that if there are
		  not tables the returned Op is a NoOp.
	**/
	static public function initialize_all_tables(?name:Dynamic):Dynamic;
	/**
		Returns an Op that initializes all variables.
		
		This is just a shortcut for `initialize_variables(all_variables())`
		
		Returns:
		  An Op that initializes all variables in the graph.
	**/
	static public function initialize_all_variables():Dynamic;
	/**
		Returns an Op that initializes all local variables.
		
		This is just a shortcut for `initialize_variables(local_variables())`
		
		Returns:
		  An Op that initializes all local variables in the graph.
	**/
	static public function initialize_local_variables():Dynamic;
	/**
		Returns an Op that initializes a list of variables.
		
		After you launch the graph in a session, you can run the returned Op to
		initialize all the variables in `var_list`. This Op runs all the
		initializers of the variables in `var_list` in parallel.
		
		Calling `initialize_variables()` is equivalent to passing the list of
		initializers to `Group()`.
		
		If `var_list` is empty, however, the function still returns an Op that can
		be run. That Op just has no effect.
		
		Args:
		  var_list: List of `Variable` objects to initialize.
		  name: Optional name for the returned operation.
		
		Returns:
		  An Op that run the initializers of all the specified variables.
	**/
	static public function initialize_variables(var_list:Dynamic, ?name:Dynamic):Dynamic;
	static public var int16 : Dynamic;
	static public var int16_ref : Dynamic;
	static public var int32 : Dynamic;
	static public var int32_ref : Dynamic;
	static public var int64 : Dynamic;
	static public var int64_ref : Dynamic;
	static public var int8 : Dynamic;
	static public var int8_ref : Dynamic;
	/**
		Computes the reciprocal of x element-wise.
		
		I.e., \\(y = 1 / x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function inv(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the inverse permutation of a tensor.
		
		This operation computes the inverse of an index permutation. It takes a 1-D
		integer tensor `x`, which represents the indices of a zero-based array, and
		swaps each value with its index position. In other words, for an output tensor
		`y` and an input tensor `x`, this operation computes the following:
		
		`y[x[i]] = i for i in [0, 1, ..., len(x) - 1]`
		
		The values must include 0. There can be no duplicate values or negative values.
		
		For example:
		
		```prettyprint
		# tensor `x` is [3, 4, 0, 2, 1]
		invert_permutation(x) ==> [2, 4, 3, 0, 1]
		```
		
		Args:
		  x: A `Tensor` of type `int32`. 1-D.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`. 1-D.
	**/
	static public function invert_permutation(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are finite.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_finite(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are Inf.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_inf(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are NaN.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
	/**
		Tests if a variable has been initialized.
		
		Args:
		  variable: A `Variable`.
		
		Returns:
		  Returns a scalar boolean Tensor, `True` if the variable has been
		  initialized, `False` otherwise.
	**/
	static public function is_variable_initialized(variable:Dynamic):Dynamic;
	/**
		Computes `ln(|Beta(x)|)`, reducing along the last dimension.
		
		Given one-dimensional `z = [z_0,...,z_{K-1}]`, we define
		
		```Beta(z) = \prod_j Gamma(z_j) / Gamma(\sum_j z_j)```
		
		And for `n + 1` dimensional `x` with shape `[N1, ..., Nn, K]`, we define
		`lbeta(x)[i1, ..., in] = Log(|Beta(x[i1, ..., in, :])|)`.  In other words,
		the last dimension is treated as the `z` vector.
		
		Note that if `z = [u, v]`, then
		`Beta(z) = int_0^1 t^{u-1} (1 - t)^{v-1} dt`, which defines the traditional
		bivariate beta function.
		
		Args:
		  x: A rank `n + 1` `Tensor` with type `float`, or `double`.
		  name: A name for the operation (optional).
		
		Returns:
		  The logarithm of `|Beta(x)|` reducing along the last dimension.
		
		Raises:
		  ValueError:  If `x` is empty with rank one or less.
	**/
	static public function lbeta(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x < y) element-wise.
		
		*NOTE*: `Less` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function less(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x <= y) element-wise.
		
		*NOTE*: `LessEqual` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function less_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the log of the absolute value of `Gamma(x)` element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function lgamma(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates values in an interval.
		
		A sequence of `num` evenly-spaced values are generated beginning at `start`.
		If `num > 1`, the values in the sequence increase by `stop - start / num - 1`,
		so that the last one is exactly `stop`.
		
		For example:
		
		```
		tf.linspace(10.0, 12.0, 3, name="linspace") => [ 10.0  11.0  12.0]
		```
		
		Args:
		  start: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    First entry in the range.
		  stop: A `Tensor`. Must have the same type as `start`.
		    Last entry in the range.
		  num: A `Tensor` of type `int32`. Number of values to generate.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `start`. 1-D. The generated values.
	**/
	static public function lin_space(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates values in an interval.
		
		A sequence of `num` evenly-spaced values are generated beginning at `start`.
		If `num > 1`, the values in the sequence increase by `stop - start / num - 1`,
		so that the last one is exactly `stop`.
		
		For example:
		
		```
		tf.linspace(10.0, 12.0, 3, name="linspace") => [ 10.0  11.0  12.0]
		```
		
		Args:
		  start: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    First entry in the range.
		  stop: A `Tensor`. Must have the same type as `start`.
		    Last entry in the range.
		  num: A `Tensor` of type `int32`. Number of values to generate.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `start`. 1-D. The generated values.
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the difference between two lists of numbers or strings.
		
		Given a list `x` and a list `y`, this operation returns a list `out` that
		represents all values that are in `x` but not in `y`. The returned list `out`
		is sorted in the same order that the numbers appear in `x` (duplicates are
		preserved). This operation also returns a list `idx` that represents the
		position of each `out` element in `x`. In other words:
		
		`out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		For example, given this input:
		
		```prettyprint
		x = [1, 2, 3, 4, 5, 6]
		y = [1, 3, 5]
		```
		
		This operation would return:
		
		```prettyprint
		out ==> [2, 4, 6]
		idx ==> [1, 3, 5]
		```
		
		Args:
		  x: A `Tensor`. 1-D. Values to keep.
		  y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, idx).
		  out: A `Tensor`. Has the same type as `x`. 1-D. Values present in `x` but not in `y`.
		  idx: A `Tensor` of type `int32`. 1-D. Positions of `x` values preserved in `out`.
	**/
	static public function list_diff(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the difference between two lists of numbers or strings.
		
		Given a list `x` and a list `y`, this operation returns a list `out` that
		represents all values that are in `x` but not in `y`. The returned list `out`
		is sorted in the same order that the numbers appear in `x` (duplicates are
		preserved). This operation also returns a list `idx` that represents the
		position of each `out` element in `x`. In other words:
		
		`out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		For example, given this input:
		
		```prettyprint
		x = [1, 2, 3, 4, 5, 6]
		y = [1, 3, 5]
		```
		
		This operation would return:
		
		```prettyprint
		out ==> [2, 4, 6]
		idx ==> [1, 3, 5]
		```
		
		Args:
		  x: A `Tensor`. 1-D. Values to keep.
		  y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, idx).
		  out: A `Tensor`. Has the same type as `x`. 1-D. Values present in `x` but not in `y`.
		  idx: A `Tensor` of type `int32`. 1-D. Positions of `x` values preserved in `out`.
	**/
	static public function listdiff(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Loads a TensorFlow plugin, containing file system implementation.
		
		Pass `library_filename` to a platform-specific mechanism for dynamically
		loading a library. The rules for determining the exact location of the
		library are platform-specific and are not documented here.
		
		Args:
		  library_filename: Path to the plugin.
		    Relative or absolute filesystem path to a dynamic library file.
		
		Returns:
		  None.
		
		Raises:
		  RuntimeError: when unable to load the library.
	**/
	static public function load_file_system_library(library_filename:Dynamic):Dynamic;
	/**
		Loads a TensorFlow plugin, containing custom ops and kernels.
		
		Pass "library_filename" to a platform-specific mechanism for dynamically
		loading a library. The rules for determining the exact location of the
		library are platform-specific and are not documented here. When the
		library is loaded, ops and kernels registered in the library via the
		REGISTER_* macros are made available in the TensorFlow process. Note
		that ops with the same name as an existing op are rejected and not
		registered with the process.
		
		Args:
		  library_filename: Path to the plugin.
		    Relative or absolute filesystem path to a dynamic library file.
		
		Returns:
		  A python module containing the Python wrappers for Ops defined in
		  the plugin.
		
		Raises:
		  RuntimeError: when unable to load the library or get the python wrappers.
	**/
	static public function load_op_library(library_filename:Dynamic):Dynamic;
	/**
		Returns all variables created with collection=[LOCAL_VARIABLES].
		
		Returns:
		  A list of local Variable objects.
	**/
	static public function local_variables():Dynamic;
	/**
		Computes natural logarithm of x element-wise.
		
		I.e., \\(y = \log_e x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function log(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of x AND y element-wise.
		
		*NOTE*: `LogicalAnd` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_and(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of NOT x element-wise.
		
		Args:
		  x: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_not(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of x OR y element-wise.
		
		*NOTE*: `LogicalOr` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_or(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		x ^ y = (x | y) & ~(x & y).
	**/
	static public function logical_xor(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generate `__all__` from the docstring of one or more modules.
		
		Usage: `make_all(__name__)` or
		`make_all(__name__, [sys.modules(__name__), other_module])`. The doc string
		modules must each a docstring, and `__all__` will contain all symbols with
		`@@` references, where that symbol currently exists in the module named
		`module_name`.
		
		Args:
		  module_name: The name of the module (usually `__name__`).
		  doc_string_modules: a list of modules from which to take docstring.
		  If None, then a list containing only the module named `module_name` is used.
		
		Returns:
		  A list suitable for use as `__all__`.
	**/
	static public function make_all(module_name:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
	/**
		Given an arbitrary function, wrap it so that it does variable sharing.
		
		This wraps `func_` in a Template and partially evaluates it. Templates are
		functions that create variables the first time they are called and reuse them
		thereafter. In order for `func_` to be compatible with a `Template` it must
		have the following properties:
		
		* The function should create all trainable variables and any variables that
		   should be reused by calling `tf.get_variable`. If a trainable variable is
		   created using `tf.Variable`, then a ValueError will be thrown. Variables
		   that are intended to be locals can be created by specifying
		   `tf.Variable(..., trainable=false)`.
		* The function may use variable scopes and other templates internally to
		    create and reuse variables, but it shouldn't use `tf.get_variables` to
		    capture variables that are defined outside of the scope of the function.
		* Internal scopes and variable names should not depend on any arguments that
		    are not supplied to `make_template`. In general you will get a ValueError
		    telling you that you are trying to reuse a variable that doesn't exist
		    if you make a mistake.
		
		In the following example, both `z` and `w` will be scaled by the same `y`. It
		is important to note that if we didn't assign `scalar_name` and used a
		different name for z and w that a `ValueError` would be thrown because it
		couldn't reuse the variable.
		
		```python
		def my_op(x, scalar_name):
		  var1 = tf.get_variable(scalar_name,
		                         shape=[],
		                         initializer=tf.constant_initializer(1))
		  return x * var1
		
		scale_by_y = tf.make_template('scale_by_y', my_op, scalar_name='y')
		
		z = scale_by_y(input1)
		w = scale_by_y(input2)
		```
		
		As a safe-guard, the returned function will raise a `ValueError` after the
		first call if trainable variables are created by calling `tf.Variable`.
		
		If all of these are true, then 2 properties are enforced by the template:
		
		1. Calling the same template multiple times will share all non-local
		    variables.
		2. Two different templates are guaranteed to be unique, unless you reenter the
		    same variable scope as the initial definition of a template and redefine
		    it. An examples of this exception:
		
		```python
		def my_op(x, scalar_name):
		  var1 = tf.get_variable(scalar_name,
		                         shape=[],
		                         initializer=tf.constant_initializer(1))
		  return x * var1
		
		with tf.variable_scope('scope') as vs:
		  scale_by_y = tf.make_template('scale_by_y', my_op, scalar_name='y')
		  z = scale_by_y(input1)
		  w = scale_by_y(input2)
		
		# Creates a template that reuses the variables above.
		with tf.variable_scope(vs, reuse=True):
		  scale_by_y2 = tf.make_template('scale_by_y', my_op, scalar_name='y')
		  z2 = scale_by_y2(input1)
		  w2 = scale_by_y2(input2)
		```
		
		Depending on the value of `create_scope_now_`, the full variable scope may be
		captured either at the time of first call or at the time of construction. If
		this option is set to True, then all Tensors created by repeated calls to the
		template will have an extra trailing _N+1 to their name, as the first time the
		scope is entered in the Template constructor no Tensors are created.
		
		Note: `name_`, `func_` and `create_scope_now_` have a trailing underscore to
		reduce the likelihood of collisions with kwargs.
		
		Args:
		  name_: A name for the scope created by this template. If necessary, the name
		    will be made unique by appending `_N` to the name.
		  func_: The function to wrap.
		  create_scope_now_: Boolean controlling whether the scope should be created
		    when the template is constructed or when the template is called. Default
		    is False, meaning the scope is created when the template is called.
		  unique_name_: When used, it overrides name_ and is not made unique. If a
		    template of the same scope/unique_name already exists and reuse is false,
		    an error is raised. Defaults to None.
		  **kwargs: Keyword arguments to apply to `func_`.
		
		Returns:
		  A function to encapsulate a set of variables which should be created once
		  and reused. An enclosing scope will created, either where `make_template`
		  is called, or wherever the result is called, depending on the value of
		  `create_scope_now_`. Regardless of the value, the first time the template
		  is called it will enter the scope with no reuse, and call `func_` to create
		  variables, which are guaranteed to be unique. All subsequent calls will
		  re-enter the scope and reuse those variables.
		
		Raises:
		  ValueError: if the name is None.
	**/
	static public function make_template(name_:Dynamic, func_:Dynamic, ?create_scope_now_:Dynamic, ?unique_name_:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		map on the list of tensors unpacked from `elems` on dimension 0.
		
		The simplest version of `map` repeatedly applies the callable `fn` to a
		sequence of elements from first to last. The elements are made of the
		tensors unpacked from `elems`. `dtype` is the data type of the return
		value of `fn`. Users must provide `dtype` if it is different from
		the data type of `elems`.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `[values.shape[0]] + fn(values[0]).shape`.
		
		This method also allows multi-arity `elems` and output of `fn`.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The signature of `fn` may
		match the structure of `elems`.  That is, if `elems` is
		`(t1, [t2, t3, [t4, t5]])`, then an appropriate signature for `fn` is:
		`fn = lambda (t1, [t2, t3, [t4, t5]]):`.
		
		Furthermore, `fn` may emit a different structure than its input.  For example,
		`fn` may look like: `fn = lambda t1: return (t1 + 1, t1 - 1)`.  In this case,
		the `dtype` parameter is not optional: `dtype` must be a type or (possibly
		nested) tuple of types matching the output of `fn`.
		
		Args:
		  fn: The callable to be performed.  It accepts one argument, which will
		    have the same (possibly nested) structure as `elems`.  Its output
		    must have the same structure as `dtype` if one is provided, otherwise
		    it must have the same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which
		    will be unpacked along their first dimension.  The nested sequence
		    of the resulting slices will be applied to `fn`.
		  dtype: (optional) The output type(s) of `fn`.  If `fn` returns a structure
		    of Tensors differing from the structure of `elems`, then `dtype` is not
		    optional and must have the same structure as the output of `fn`.
		  parallel_iterations: (optional) The number of iterations allowed to run
		    in parallel.
		  back_prop: (optional) True enables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors.  Each tensor packs the
		  results of applying `fn` to tensors unpacked from `elems` along the first
		  dimension, from first to last.
		
		Raises:
		  TypeError: if `fn` is not callable or the structure of the output of
		    `fn` and `dtype` do not match.
		  ValueError: if the lengths of the output of `fn` and `dtype` do not match.
		
		Examples:
		  ```python
		  elems = np.array([1, 2, 3, 4, 5, 6])
		  squares = map_fn(lambda x: x * x, elems)
		  # squares == [1, 4, 9, 16, 25, 36]
		  ```
		
		  ```python
		  elems = (np.array([1, 2, 3]), np.array([-1, 1, -1]))
		  alternate = map_fn(lambda x: x[0] * x[1], elems, dtype=tf.int64)
		  # alternate == [-1, 2, -3]
		  ```
		
		  ```python
		  elems = np.array([1, 2, 3])
		  alternates = map_fn(lambda x: (x, -x), elems, dtype=(tf.int64, tf.int64))
		  # alternates[0] == [1, 2, 3]
		  # alternates[1] == [-1, -2, -3]
		  ```
	**/
	static public function map_fn(fn:Dynamic, elems:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the set of files matching a pattern.
		
		Note that this routine only supports wildcard characters in the
		basename portion of the pattern, not in the directory portion.
		
		Args:
		  pattern: A `Tensor` of type `string`. A (scalar) shell wildcard pattern.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. A vector of matching filenames.
	**/
	static public function matching_files(pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies matrix `a` by matrix `b`, producing `a` * `b`.
		
		The inputs must be two-dimensional matrices, with matching inner dimensions,
		possibly after transposition.
		
		Both matrices must be of the same type. The supported types are:
		`float32`, `float64`, `int32`, `complex64`.
		
		Either matrix can be transposed on the fly by setting the corresponding flag
		to `True`. This is `False` by default.
		
		If one or both of the matrices contain a lot of zeros, a more efficient
		multiplication algorithm can be used by setting the corresponding
		`a_is_sparse` or `b_is_sparse` flag to `True`. These are `False` by default.
		
		For example:
		
		```python
		# 2-D tensor `a`
		a = tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3]) => [[1. 2. 3.]
		                                                      [4. 5. 6.]]
		# 2-D tensor `b`
		b = tf.constant([7, 8, 9, 10, 11, 12], shape=[3, 2]) => [[7. 8.]
		                                                         [9. 10.]
		                                                         [11. 12.]]
		c = tf.matmul(a, b) => [[58 64]
		                        [139 154]]
		```
		
		Args:
		  a: `Tensor` of type `float32`, `float64`, `int32` or `complex64`.
		  b: `Tensor` with same type as `a`.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  transpose_b: If `True`, `b` is transposed before multiplication.
		  a_is_sparse: If `True`, `a` is treated as a sparse matrix.
		  b_is_sparse: If `True`, `b` is treated as a sparse matrix.
		  name: Name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same type as `a`.
	**/
	static public function matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the determinant of a square matrix.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    A tensor of shape `[M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  A scalar, equal to the determinant of the input.
	**/
	static public function matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the inverse of a square invertible matrix or its adjoint (conjugate
		
		transpose).
		
		The op uses LU decomposition with partial pivoting to compute the inverse.
		
		If the matrix is not invertible there is no guarantee what the op does. It
		may detect the condition and raise an exception or it may simply return a
		garbage result.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[M, M]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Shape is `[M, M]`. If `adjoint` is `False` then `output` contains the
		  matrix inverse of `input`. If `adjoint` is `True` then `output` contains the
		  matrix inverse of the adjoint of `input`.
	**/
	static public function matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves a system of linear equations. Checks for invertibility.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`. Shape is `[M, K]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
		  Shape is `[M, K]`. If `adjoint` is `False` then `output` that solves
		  `matrix` * `output` = `rhs`. If `adjoint` is `True` then `output` that solves
		  `adjoint(matrix)` * `output` = `rhs`.
	**/
	static public function matrix_solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves a linear least-squares problem.
		
		Below we will use the following notation
		`matrix`=\\(A \in \Re^{m \times n}\\),
		`rhs`=\\(B  \in \Re^{m \times k}\\),
		`output`=\\(X  \in \Re^{n \times k}\\),
		`l2_regularizer`=\\(\lambda\\).
		
		If `fast` is `True`, then the solution is computed by solving the normal
		equations using Cholesky decomposition. Specifically, if \\(m \ge n\\) then
		\\(X = (A^T A + \lambda I)^{-1} A^T B\\), which solves the regularized
		least-squares problem \\(X = \mathrm{argmin}_{Z \in \Re^{n \times k}}
		||A Z - B||_F^2 + \lambda ||Z||_F^2\\). If \\(m \lt n\\) then `output` is
		computed as \\(X = A^T (A A^T + \lambda I)^{-1} B\\),
		which (for \\(\lambda = 0\\)) is the minimum-norm solution to the
		under-determined linear system, i.e.
		\\(X = \mathrm{argmin}_{Z \in \Re^{n \times k}} ||Z||_F^2 \\),
		subject to \\(A Z = B\\).
		Notice that the fast path is only numerically stable when \\(A\\) is
		numerically full rank and has a condition number
		\\(\mathrm{cond}(A) \lt \frac{1}{\sqrt{\epsilon_{mach}}}\\)
		or \\(\lambda\\) is sufficiently large.
		
		If `fast` is `False` then the solution is computed using the rank revealing
		QR decomposition with column pivoting. This will always compute a
		least-squares solution that minimizes the residual norm
		\\(||A X - B||_F^2 \\), even when \\(A\\) is rank deficient or
		ill-conditioned. Notice: The current version does not compute a minimum norm
		solution. If `fast` is `False` then `l2_regularizer` is ignored.
		
		Args:
		  matrix: 2-D `Tensor` of shape `[M, N]`.
		  rhs: 2-D `Tensor` of shape is `[M, K]`.
		  l2_regularizer: 0-D  `double` `Tensor`. Ignored if `fast=False`.
		  fast: bool. Defaults to `True`.
		  name: string, optional name of the operation.
		
		Returns:
		  output: Matrix of shape `[N, K]` containing the matrix that solves
		    `matrix * output = rhs` in the least-squares sense.
	**/
	static public function matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, ?l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves a system of linear equations with an upper or lower triangular matrix by
		
		backsubstitution.
		
		`matrix` is a matrix of shape `[M, M]`. If `lower` is `True` then the strictly
		upper triangular part of `matrix` is assumed to be zero and not accessed.
		If `lower` is False then the strictly lower triangular part of `matrix` is
		assumed to be zero and not accessed.
		`rhs` is a matrix of shape [M, K]`.
		
		The output is a matrix of shape `[M, K]`. If `adjoint` is `False` the output
		satisfies the matrix equation `matrix` * `output` = `rhs`.
		If `adjoint` is `False` then `output` satisfies the matrix equation
		`matrix` * `output` = `rhs`.
		If `adjoint` is `True` then `output` satisfies the matrix equation
		`adjoint(matrix)` * `output` = `rhs`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`. Shape is `[M, K]`.
		  lower: An optional `bool`. Defaults to `True`.
		    Boolean indicating whether `matrix` is lower or upper triangular
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`. Shape is `[M, K]`.
	**/
	static public function matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the max of x and y (i.e. x > y ? x : y) element-wise.
		
		*NOTE*: `Maximum` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function maximum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Merges all summaries collected in the default graph.
		
		Args:
		  key: `GraphKey` used to collect the summaries.  Defaults to
		    `GraphKeys.SUMMARIES`.
		
		Returns:
		  If no summaries were collected, returns None.  Otherwise returns a scalar
		  `Tensor` of type `string` containing the serialized `Summary` protocol
		  buffer resulting from the merging.
	**/
	static public function merge_all_summaries(?key:Dynamic):Dynamic;
	/**
		Merges summaries.
		
		This op creates a
		[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		protocol buffer that contains the union of all the values in the input
		summaries.
		
		When the Op is run, it reports an `InvalidArgument` error if multiple values
		in the summaries to merge use the same tag.
		
		Args:
		  inputs: A list of `string` `Tensor` objects containing serialized `Summary`
		    protocol buffers.
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer resulting from the merging.
	**/
	static public function merge_summary(inputs:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Broadcasts parameters for evaluation on an N-D grid.
		
		Given N one-dimensional coordinate arrays `*args`, returns a list `outputs`
		of N-D coordinate arrays for evaluating expressions on an N-D grid.
		
		Notes:
		
		`meshgrid` supports cartesian ('xy') and matrix ('ij') indexing conventions.
		When the `indexing` argument is set to 'xy' (the default), the broadcasting
		instructions for the first two dimensions are swapped.
		
		Examples:
		
		Calling `X, Y = meshgrid(x, y)` with the tensors
		```prettyprint
		  x = [1, 2, 3]
		  y = [4, 5, 6]
		```
		results in
		```prettyprint
		  X = [[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]]
		  Y = [[4, 5, 6],
		       [4, 5, 6],
		       [4, 5, 6]]
		```
		
		Args:
		  *args: `Tensor`s with rank 1
		  indexing: Either 'xy' or 'ij' (optional, default: 'xy')
		  name: A name for the operation (optional).
		
		Returns:
		  outputs: A list of N `Tensor`s with rank N
	**/
	static public function meshgrid(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Partitioner to allocate minimum size per slice.
		
		Returns a partitioner that partitions the variable of given shape and dtype
		such that each partition has a minimum of `min_slice_size` slice of the
		variable. The maximum number of such partitions (upper bound) is given by
		`max_partitions`.
		
		Args:
		  max_partitions: Upper bound on the number of partitions. Defaults to 1.
		  axis: Axis along which to partition the variable. Defaults to 0.
		  min_slice_size: Minimum size of the variable slice per partition. Defaults
		    to 256K.
		  bytes_per_string_element: If the `Variable` is of type string, this provides
		    an estimate of how large each scalar in the `Variable` is.
		
		Returns:
		  A partition function usable as the `partitioner` argument to
		  `variable_scope`, `get_variable`, and `get_partitioned_variable_list`.
	**/
	static public function min_max_variable_partitioner(?max_partitions:Dynamic, ?axis:Dynamic, ?min_slice_size:Dynamic, ?bytes_per_string_element:Dynamic):Dynamic;
	/**
		Returns the min of x and y (i.e. x < y ? x : y) element-wise.
		
		*NOTE*: `Minimum` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function minimum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division.
		
		*NOTE*: `Mod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function mod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns all variables in the MODEL_VARIABLES collection.
		
		Returns:
		  A list of local Variable objects.
	**/
	static public function model_variables():Dynamic;
	/**
		Returns all variables that maintain their moving averages.
		
		If an `ExponentialMovingAverage` object is created and the `apply()`
		method is called on a list of variables, these variables will
		be added to the `GraphKeys.MOVING_AVERAGE_VARIABLES` collection.
		This convenience function returns the contents of that collection.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function moving_average_variables():Dynamic;
	/**
		Returns x * y element-wise.
		
		*NOTE*: `Mul` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function mul(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws samples from a multinomial distribution.
		
		Example:
		
		```python
		# samples has shape [1, 5], where each value is either 0 or 1 with equal
		# probability.
		samples = tf.multinomial(tf.log([[10., 10.]]), 5)
		```
		
		Args:
		  logits: 2-D Tensor with shape `[batch_size, num_classes]`.  Each slice
		    `[i, :]` represents the unnormalized log probabilities for all classes.
		  num_samples: 0-D.  Number of independent samples to draw for each row slice.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function multinomial(logits:Dynamic, num_samples:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.name_scope()` using the default graph.
		
		See
		[`Graph.name_scope()`](../../api_docs/python/framework.md#Graph.name_scope)
		for more details.
		
		Args:
		  name: A name for the scope.
		
		Returns:
		  A context manager that installs `name` as a new name scope in the
		  default graph.
	**/
	static public function name_scope(name:Dynamic):Dynamic;
	/**
		Computes numerical negative value element-wise.
		
		I.e., \(y = -x\).
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
	**/
	static public function neg(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var newaxis : Dynamic;
	/**
		Does nothing. Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function no_op(?name:Dynamic):Dynamic;
	/**
		Use this function to prevent regularization of variables.
	**/
	static public function no_regularizer(_:Dynamic):Dynamic;
	/**
		Returns the truth value of (x != y) element-wise.
		
		*NOTE*: `NotEqual` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `quint8`, `qint8`, `qint32`, `string`, `bool`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function not_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a one-hot tensor.
		
		The locations represented by indices in `indices` take value `on_value`,
		while all other locations take value `off_value`.
		
		`on_value` and `off_value` must have matching data types. If `dtype` is also
		provided, they must be the same data type as specified by `dtype`.
		
		If `on_value` is not provided, it will default to the value `1` with type
		`dtype`
		
		If `off_value` is not provided, it will default to the value `0` with type
		`dtype`
		
		If the input `indices` is rank `N`, the output will have rank `N+1`. The
		new axis is created at dimension `axis` (default: the new axis is appended
		at the end).
		
		If `indices` is a scalar the output shape will be a vector of length `depth`
		
		If `indices` is a vector of length `features`, the output shape will be:
		```
		  features x depth if axis == -1
		  depth x features if axis == 0
		```
		
		If `indices` is a matrix (batch) with shape `[batch, features]`, the output
		shape will be:
		```
		  batch x features x depth if axis == -1
		  batch x depth x features if axis == 1
		  depth x batch x features if axis == 0
		```
		
		If `dtype` is not provided, it will attempt to assume the data type of
		`on_value` or `off_value`, if one or both are passed in. If none of
		`on_value`, `off_value`, or `dtype` are provided, `dtype` will default to the
		value `tf.float32`
		
		Note: If a non-numeric data type output is desired (tf.string, tf.bool, etc.),
		both `on_value` and `off_value` _must_ be provided to `one_hot`
		
		Examples
		=========
		
		Suppose that
		
		```
		  indices = [0, 2, -1, 1]
		  depth = 3
		  on_value = 5.0
		  off_value = 0.0
		  axis = -1
		```
		
		Then output is `[4 x 3]`:
		
		```
		  output =
		  [5.0 0.0 0.0]  // one_hot(0)
		  [0.0 0.0 5.0]  // one_hot(2)
		  [0.0 0.0 0.0]  // one_hot(-1)
		  [0.0 5.0 0.0]  // one_hot(1)
		```
		
		Suppose that
		
		```
		  indices = [[0, 2], [1, -1]]
		  depth = 3
		  on_value = 1.0
		  off_value = 0.0
		  axis = -1
		```
		
		Then output is `[2 x 2 x 3]`:
		
		```
		  output =
		  [
		    [1.0, 0.0, 0.0]  // one_hot(0)
		    [0.0, 0.0, 1.0]  // one_hot(2)
		  ][
		    [0.0, 1.0, 0.0]  // one_hot(1)
		    [0.0, 0.0, 0.0]  // one_hot(-1)
		  ]
		```
		
		Using default values for `on_value` and `off_value`:
		
		```
		  indices = [0, 1, 2]
		  depth = 3
		```
		
		The output will be
		
		```
		  output =
		  [[1., 0., 0.],
		   [0., 1., 0.],
		   [0., 0., 1.]]
		```
		
		Args:
		  indices: A `Tensor` of indices.
		  depth: A scalar defining the depth of the one hot dimension.
		  on_value: A scalar defining the value to fill in output when `indices[j]
		    = i`. (default: 1)
		  off_value: A scalar defining the value to fill in output when `indices[j]
		    != i`. (default: 0)
		  axis: The axis to fill (default: -1, a new inner-most axis).
		  dtype: The data type of the output tensor.
		
		Returns:
		  output: The one-hot tensor.
		
		Raises:
		  TypeError: If dtype of either `on_value` or `off_value` don't match `dtype`
		  TypeError: If dtype of `on_value` and `off_value` don't match one another
	**/
	static public function one_hot(indices:Dynamic, depth:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to 1.
		
		This operation returns a tensor of type `dtype` with shape `shape` and all
		elements set to 1.
		
		For example:
		
		```python
		tf.ones([2, 3], int32) ==> [[1, 1, 1], [1, 1, 1]]
		```
		
		Args:
		  shape: Either a list of integers, or a 1-D `Tensor` of type `int32`.
		  dtype: The type of an element in the resulting `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to 1.
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An adaptor for ones() to match the Initializer spec.
	**/
	static public function ones_initializer(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to 1.
		
		Given a single tensor (`tensor`), this operation returns a tensor of the same
		type and shape as `tensor` with all elements set to 1. Optionally, you can
		specify a new type (`dtype`) for the returned tensor.
		
		For example:
		
		```python
		# 'tensor' is [[1, 2, 3], [4, 5, 6]]
		tf.ones_like(tensor) ==> [[1, 1, 1], [1, 1, 1]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  dtype: A type for the returned `Tensor`. Must be `float32`, `float64`,
		  `int8`, `int16`, `int32`, `int64`, `uint8`, `complex64`, or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to 1.
	**/
	static public function ones_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a context manager for use when defining a Python op.
		
		This context manager validates that the given `values` are from the
		same graph, ensures that graph is the default graph, and pushes a
		name scope.
		
		For example, to define a new Python op called `my_op`:
		
		```python
		def my_op(a, b, c, name=None):
		  with tf.op_scope([a, b, c], name, "MyOp") as scope:
		    a = tf.convert_to_tensor(a, name="a")
		    b = tf.convert_to_tensor(b, name="b")
		    c = tf.convert_to_tensor(c, name="c")
		    # Define some computation that uses `a`, `b`, and `c`.
		    return foo_op(..., name=scope)
		```
		
		Args:
		  values: The list of `Tensor` arguments that are passed to the op function.
		  name: The name argument that is passed to the op function.
		  default_name: The default name to use if the `name` argument is `None`.
		
		Returns:
		  A context manager for use in defining Python ops. Yields the name scope.
		
		Raises:
		  ValueError: if neither `name` nor `default_name` is provided.
	**/
	static public function op_scope(values:Dynamic, name:Dynamic, ?default_name:Dynamic):Dynamic;
	/**
		Packs a list of rank-`R` tensors into one rank-`(R+1)` tensor.
		
		Packs the list of tensors in `values` into a tensor with rank one higher than
		each tensor in `values`, by packing them along the `axis` dimension.
		Given a list of length `N` of tensors of shape `(A, B, C)`;
		
		if `axis == 0` then the `output` tensor will have the shape `(N, A, B, C)`.
		if `axis == 1` then the `output` tensor will have the shape `(A, N, B, C)`.
		Etc.
		
		For example:
		
		```prettyprint
		# 'x' is [1, 4]
		# 'y' is [2, 5]
		# 'z' is [3, 6]
		pack([x, y, z]) => [[1, 4], [2, 5], [3, 6]]  # Pack along first dim.
		pack([x, y, z], axis=1) => [[1, 2, 3], [4, 5, 6]]
		```
		
		This is the opposite of unpack.  The numpy equivalent is
		
		    tf.pack([x, y, z]) = np.asarray([x, y, z])
		
		Args:
		  values: A list of `Tensor` objects with the same shape and type.
		  axis: An `int`. The axis to pack along. Defaults to the first dimension.
		    Supports negative indexes.
		  name: A name for this operation (optional).
		
		Returns:
		  output: A packed `Tensor` with the same type as `values`.
		
		Raises:
		  ValueError: If `axis` is out of the range [-(R+1), R+1).
	**/
	static public function pack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pads a tensor.
		
		This operation pads a `tensor` according to the `paddings` you specify.
		`paddings` is an integer tensor with shape `[n, 2]`, where n is the rank of
		`tensor`. For each dimension D of `input`, `paddings[D, 0]` indicates how
		many values to add before the contents of `tensor` in that dimension, and
		`paddings[D, 1]` indicates how many values to add after the contents of
		`tensor` in that dimension. If `mode` is "REFLECT" then both `paddings[D, 0]`
		and `paddings[D, 1]` must be no greater than `tensor.dim_size(D) - 1`. If
		`mode` is "SYMMETRIC" then both `paddings[D, 0]` and `paddings[D, 1]` must be
		no greater than `tensor.dim_size(D)`.
		
		The padded size of each dimension D of the output is:
		
		`paddings[D, 0] + tensor.dim_size(D) + paddings[D, 1]`
		
		For example:
		
		```python
		# 't' is [[1, 2, 3], [4, 5, 6]].
		# 'paddings' is [[1, 1,], [2, 2]].
		# rank of 't' is 2.
		pad(t, paddings, "CONSTANT") ==> [[0, 0, 0, 0, 0, 0, 0],
		                                  [0, 0, 1, 2, 3, 0, 0],
		                                  [0, 0, 4, 5, 6, 0, 0],
		                                  [0, 0, 0, 0, 0, 0, 0]]
		
		pad(t, paddings, "REFLECT") ==> [[6, 5, 4, 5, 6, 5, 4],
		                                 [3, 2, 1, 2, 3, 2, 1],
		                                 [6, 5, 4, 5, 6, 5, 4],
		                                 [3, 2, 1, 2, 3, 2, 1]]
		
		pad(t, paddings, "SYMMETRIC") ==> [[2, 1, 1, 2, 3, 3, 2],
		                                   [2, 1, 1, 2, 3, 3, 2],
		                                   [5, 4, 4, 5, 6, 6, 5],
		                                   [5, 4, 4, 5, 6, 6, 5]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  paddings: A `Tensor` of type `int32`.
		  mode: One of "CONSTANT", "REFLECT", or "SYMMETRIC".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
		
		Raises:
		  ValueError: When mode is not one of "CONSTANT", "REFLECT", or "SYMMETRIC".
	**/
	static public function pad(tensor:Dynamic, paddings:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with specified mean and
		standard deviation, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  means: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddevs: A 0-D Tensor or Python value of type `dtype`. The standard
		    deviation of the truncated normal distribution.
		  minvals: A 0-D Tensor or Python value of type `dtype`. The minimum value of
		    the truncated normal distribution.
		  maxvals: A 0-D Tensor or Python value of type `dtype`. The maximum value of
		    the truncated normal distribution.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function parameterized_truncated_normal(shape:Dynamic, ?means:Dynamic, ?stddevs:Dynamic, ?minvals:Dynamic, ?maxvals:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses `Example` protos into a `dict` of tensors.
		
		Parses a number of serialized [`Example`]
		(https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		protos given in `serialized`.
		
		`example_names` may contain descriptive names for the corresponding serialized
		protos. These may be useful for debugging purposes, but they have no effect on
		the output. If not `None`, `example_names` must be the same length as `serialized`.
		
		This op parses serialized examples into a dictionary mapping keys to `Tensor`
		and `SparseTensor` objects. `features` is a dict from keys to `VarLenFeature`
		and `FixedLenFeature` objects. Each `VarLenFeature` is mapped to a
		`SparseTensor`, and each `FixedLenFeature` is mapped to a `Tensor`.
		
		Each `VarLenFeature` maps to a `SparseTensor` of the specified type
		representing a ragged matrix. Its indices are `[batch, index]` where `batch`
		is the batch entry the value is from in `serialized`, and `index` is the
		value's index in the list of values associated with that feature and example.
		
		Each `FixedLenFeature` `df` maps to a `Tensor` of the specified type (or
		`tf.float32` if not specified) and shape `(serialized.size(),) + df.shape`.
		
		`FixedLenFeature` entries with a `default_value` are optional. With no default
		value, we will fail if that `Feature` is missing from any example in
		`serialized`.
		
		Examples:
		
		For example, if one expects a `tf.float32` sparse feature `ft` and three
		serialized `Example`s are provided:
		
		```
		serialized = [
		  features
		    { feature { key: "ft" value { float_list { value: [1.0, 2.0] } } } },
		  features
		    { feature []},
		  features
		    { feature { key: "ft" value { float_list { value: [3.0] } } }
		]
		```
		
		then the output will look like:
		
		```
		{"ft": SparseTensor(indices=[[0, 0], [0, 1], [2, 0]],
		                    values=[1.0, 2.0, 3.0],
		                    shape=(3, 2)) }
		```
		
		Given two `Example` input protos in `serialized`:
		
		```
		[
		  features {
		    feature { key: "kw" value { bytes_list { value: [ "knit", "big" ] } } }
		    feature { key: "gps" value { float_list { value: [] } } }
		  },
		  features {
		    feature { key: "kw" value { bytes_list { value: [ "emmy" ] } } }
		    feature { key: "dank" value { int64_list { value: [ 42 ] } } }
		    feature { key: "gps" value { } }
		  }
		]
		```
		
		And arguments
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "kw": VarLenFeature(tf.string),
		    "dank": VarLenFeature(tf.int64),
		    "gps": VarLenFeature(tf.float32),
		}
		```
		
		Then the output is a dictionary:
		
		```python
		{
		  "kw": SparseTensor(
		      indices=[[0, 0], [0, 1], [1, 0]],
		      values=["knit", "big", "emmy"]
		      shape=[2, 2]),
		  "dank": SparseTensor(
		      indices=[[1, 0]],
		      values=[42],
		      shape=[2, 1]),
		  "gps": SparseTensor(
		      indices=[],
		      values=[],
		      shape=[2, 0]),
		}
		```
		
		For dense results in two serialized `Example`s:
		
		```
		[
		  features {
		    feature { key: "age" value { int64_list { value: [ 0 ] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		   },
		   features {
		    feature { key: "age" value { int64_list { value: [] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		  }
		]
		```
		
		We can use arguments:
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "age": FixedLenFeature([], dtype=tf.int64, default_value=-1),
		    "gender": FixedLenFeature([], dtype=tf.string),
		}
		```
		
		And the expected output is:
		
		```python
		{
		  "age": [[0], [-1]],
		  "gender": [["f"], ["f"]],
		}
		```
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  name: A name for this operation (optional).
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Parses a single `Example` proto.
		
		Similar to `parse_example`, except:
		
		For dense tensors, the returned `Tensor` is identical to the output of
		`parse_example`, except there is no batch dimension, the output shape is the
		same as the shape given in `dense_shape`.
		
		For `SparseTensor`s, the first (batch) column of the indices matrix is removed
		(the indices matrix is a column vector), the values vector is unchanged, and
		the first (`batch_size`) entry of the shape vector is removed (it is now a
		single element vector).
		
		Args:
		  serialized: A scalar string Tensor, a single serialized Example.
		    See `_parse_single_example_raw` documentation for more details.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  name: A name for this operation (optional).
		  example_names: (Optional) A scalar string Tensor, the associated name.
		    See `_parse_single_example_raw` documentation for more details.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Parses a single `SequenceExample` proto.
		
		Parses a single serialized [`SequenceExample`]
		(https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		proto given in `serialized`.
		
		This op parses a serialize sequence example into a tuple of dictionaries
		mapping keys to `Tensor` and `SparseTensor` objects respectively.
		The first dictionary contains mappings for keys appearing in
		`context_features`, and the second dictionary contains mappings for keys
		appearing in `sequence_features`.
		
		At least one of `context_features` and `sequence_features` must be provided
		and non-empty.
		
		The `context_features` keys are associated with a `SequenceExample` as a
		whole, independent of time / frame.  In contrast, the `sequence_features` keys
		provide a way to access variable-length data within the `FeatureList` section
		of the `SequenceExample` proto.  While the shapes of `context_features` values
		are fixed with respect to frame, the frame dimension (the first dimension)
		of `sequence_features` values may vary between `SequenceExample` protos,
		and even between `feature_list` keys within the same `SequenceExample`.
		
		`context_features` contains `VarLenFeature` and `FixedLenFeature` objects.
		Each `VarLenFeature` is mapped to a `SparseTensor`, and each `FixedLenFeature`
		is mapped to a `Tensor`, of the specified type, shape, and default value.
		
		`sequence_features` contains `VarLenFeature` and `FixedLenSequenceFeature`
		objects. Each `VarLenFeature` is mapped to a `SparseTensor`, and each
		`FixedLenSequenceFeature` is mapped to a `Tensor`, each of the specified type.
		The shape will be `(T,) + df.shape` for `FixedLenSequenceFeature` `df`, where
		`T` is the length of the associated `FeatureList` in the `SequenceExample`.
		For instance, `FixedLenSequenceFeature([])` yields a scalar 1-D `Tensor` of
		static shape `[None]` and dynamic shape `[T]`, while
		`FixedLenSequenceFeature([k])` (for `int k >= 1`) yields a 2-D matrix `Tensor`
		of static shape `[None, k]` and dynamic shape `[T, k]`.
		
		Each `SparseTensor` corresponding to `sequence_features` represents a ragged
		vector.  Its indices are `[time, index]`, where `time` is the `FeatureList`
		entry and `index` is the value's index in the list of values associated with
		that time.
		
		`FixedLenFeature` entries with a `default_value` and `FixedLenSequenceFeature`
		entries with `allow_missing=True` are optional; otherwise, we will fail if
		that `Feature` or `FeatureList` is missing from any example in `serialized`.
		
		`example_name` may contain a descriptive name for the corresponding serialized
		proto. This may be useful for debugging purposes, but it has no effect on the
		output. If not `None`, `example_name` must be a scalar.
		
		Args:
		  serialized: A scalar (0-D Tensor) of type string, a single binary
		    serialized `SequenceExample` proto.
		  context_features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values. These features are associated with a
		    `SequenceExample` as a whole.
		  sequence_features: A `dict` mapping feature keys to
		    `FixedLenSequenceFeature` or `VarLenFeature` values. These features are
		    associated with data within the `FeatureList` section of the
		    `SequenceExample` proto.
		  example_name: A scalar (0-D Tensor) of strings (optional), the name of
		    the serialized proto.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of two `dict`s, each mapping keys to `Tensor`s and `SparseTensor`s.
		  The first dict contains the context key/values.
		  The second dict contains the feature_list key/values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_sequence_example(serialized:Dynamic, ?context_features:Dynamic, ?sequence_features:Dynamic, ?example_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inserts a placeholder for a tensor that will be always fed.
		
		**Important**: This tensor will produce an error if evaluated. Its value must
		be fed using the `feed_dict` optional argument to `Session.run()`,
		`Tensor.eval()`, or `Operation.run()`.
		
		For example:
		
		```python
		x = tf.placeholder(tf.float32, shape=(1024, 1024))
		y = tf.matmul(x, x)
		
		with tf.Session() as sess:
		  print(sess.run(y))  # ERROR: will fail because x was not fed.
		
		  rand_array = np.random.rand(1024, 1024)
		  print(sess.run(y, feed_dict={x: rand_array}))  # Will succeed.
		```
		
		Args:
		  dtype: The type of elements in the tensor to be fed.
		  shape: The shape of the tensor to be fed (optional). If the shape is not
		    specified, you can feed a tensor of any shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that may be used as a handle for feeding a value, but not
		  evaluated directly.
	**/
	static public function placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A placeholder op that passes though `input` when its output is not fed.
		
		Args:
		  input: A `Tensor`. The default value to produce when `output` is not fed.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The (possibly partial) shape of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  A placeholder tensor that defaults to `input` if it is not fed.
	**/
	static public function placeholder_with_default(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the polygamma function \\(\psi^{(n)}(x)\\).
		
		The polygamma function is defined as:
		
		```
		\psi^{(n)}(x) = \frac{d^n}{dx^n} \psi(x)
		```
		where \\(\psi(x)\\) is the digamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function polygamma(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the power of one value to another.
		
		Given a tensor `x` and a tensor `y`, this operation computes \\(x^y\\) for
		corresponding elements in `x` and `y`. For example:
		
		```
		# tensor 'x' is [[2, 2], [3, 3]]
		# tensor 'y' is [[8, 16], [2, 3]]
		tf.pow(x, y) ==> [[256, 65536], [9, 27]]
		```
		
		Args:
		  x: A `Tensor` of type `float32`, `float64`, `int32`, `int64`, `complex64`,
		   or `complex128`.
		  y: A `Tensor` of type `float32`, `float64`, `int32`, `int64`, `complex64`,
		   or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.
	**/
	static public function pow(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Wraps a python function and uses it as a tensorflow op.
		
		Given a python function `func`, which takes numpy arrays as its
		inputs and returns numpy arrays as its outputs. E.g.,
		
		```python
		def my_func(x):
		  # x will be a numpy array with the contents of the placeholder below
		  return np.sinh(x)
		inp = tf.placeholder(tf.float32, [...])
		y = py_func(my_func, [inp], [tf.float32])
		```
		
		The above snippet constructs a tf graph which invokes a numpy
		sinh(x) as an op in the graph.
		
		Args:
		  func: A python function.
		  inp: A list of `Tensor`.
		  Tout: A list of tensorflow data types indicating what `func`
		        returns.
		  stateful: A boolean indicating whether the function should be considered
		            stateful or stateless. I.e. whether it, given the same input, will
		            return the same output and at the same time does not change state
		            in an observable way. Optimizations such as common subexpression
		            elimination are only possible when operations are stateless.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` which `func` computes.
	**/
	static public function py_func(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?stateful:Dynamic, ?name:Dynamic):Dynamic;
	static public var qint16 : Dynamic;
	static public var qint16_ref : Dynamic;
	static public var qint32 : Dynamic;
	static public var qint32_ref : Dynamic;
	static public var qint8 : Dynamic;
	static public var qint8_ref : Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		This op simulates the precision loss from the quantized forward pass by:
		1. Quantizing the tensor to fixed point numbers, which should match the target
		   quantization method when it is used in inference.
		2. Dequantizing it back to floating point numbers for the following ops, most
		   likely matmul.
		
		There are different ways to quantize. This version does not use the full range
		of the output type, choosing to elide the lowest possible value for symmetry
		(e.g., output range is -127 to 127, not -128 to 127 for signed 8 bit
		quantization), so that 0.0 maps to 0.
		
		To perform this op, we first find the range of values in our tensor. The range
		we use is always centered on 0, so we find m such that
		
		1. m = max(abs(input_min), abs(input_max)) if range_given is true,
		2. m = max(max(abs(min_elem(input)), abs(max_elem(input))) otherwise.
		
		Our input tensor range is then [-m, m].
		
		Next, we choose our fixed-point quantization buckets, [min_fixed, max_fixed].
		If signed_input is true, this is
		
		  [min_fixed, max_fixed ] =
		      [-(1 << (num_bits - 1) - 1), (1 << (num_bits - 1)) - 1].
		
		Otherwise, if signed_input is false, the fixed-point range is
		
		  [min_fixed, max_fixed] = [0, (1 << num_bits) - 1].
		
		From this we compute our scaling factor, s:
		
		  s = (max_fixed - min_fixed) / (2 * m).
		
		Now we can quantize and dequantize the elements of our tensor.  An element e
		is transformed into e':
		
		  e' = (e * s).round_to_nearest() / s.
		
		Note that we have a different number of buckets in the signed vs. unsigned
		cases.  For example, if num_bits == 8, we get 254 buckets in the signed case
		vs. 255 in the unsigned case.
		
		For example, suppose num_bits = 8 and m = 1.  Then
		
		  [min_fixed, max_fixed] = [-127, 127], and
		  s = (127 + 127) / 2 = 127.
		
		Given the vector {-1, -0.5, 0, 0.3}, this is quantized to
		{-127, -63, 0, 38}, and dequantized to {-1, -63.0/127, 0, 38.0/127}.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Tensor to quantize and then dequantize.
		  signed_input: An optional `bool`. Defaults to `True`.
		    If the quantization is signed or unsigned.
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization.
		  range_given: An optional `bool`. Defaults to `False`.
		    If the range is given or should be computed from the tensor.
		  input_min: An optional `float`. Defaults to `0`.
		    If range is given, this is the min of the range.
		  input_max: An optional `float`. Defaults to `0`.
		    If range is given, this is the max of the range.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function quantize_and_dequantize(input:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?input_min:Dynamic, ?input_max:Dynamic, ?name:Dynamic):Dynamic;
	static public var quint16 : Dynamic;
	static public var quint16_ref : Dynamic;
	static public var quint8 : Dynamic;
	static public var quint8_ref : Dynamic;
	/**
		Randomly crops a tensor to a given size.
		
		Slices a shape `size` portion out of `value` at a uniformly chosen offset.
		Requires `value.shape >= size`.
		
		If a dimension should not be cropped, pass the full size of that dimension.
		For example, RGB images can be cropped with
		`size = [crop_height, crop_width, 3]`.
		
		Args:
		  value: Input tensor to crop.
		  size: 1-D tensor with size the rank of `value`.
		  seed: Python integer. Used to create a random seed. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  name: A name for this operation (optional).
		
		Returns:
		  A cropped tensor of the same rank as `value` and shape `size`.
	**/
	static public function random_crop(value:Dynamic, size:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws `shape` samples from each of the given Gamma distribution(s).
		
		`alpha` is the shape parameter describing the distribution(s), and `beta` is
		the inverse scale parameter(s).
		
		Example:
		
		  samples = tf.random_gamma([10], [0.5, 1.5])
		  # samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		  # the samples drawn from each distribution
		
		  samples = tf.random_gamma([7, 5], [0.5, 1.5])
		  # samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		  # represents the 7x5 samples drawn from each of the two distributions
		
		  samples = tf.random_gamma([30], [[1.],[3.],[5.]], beta=[[3., 4.]])
		  # samples has shape [30, 3, 2], with 30 samples each of 3x2 distributions.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output samples
		    to be drawn per alpha/beta-parameterized distribution.
		  alpha: A Tensor or Python value or N-D array of type `dtype`. `alpha`
		    provides the shape parameter(s) describing the gamma distribution(s) to
		    sample. Must be broadcastable with `beta`.
		  beta: A Tensor or Python value or N-D array of type `dtype`. Defaults to 1.
		    `beta` provides the inverse scale parameter(s) of the gamma
		    distribution(s) to sample. Must be broadcastable with `alpha`.
		  dtype: The type of alpha, beta, and the output: `float16`, `float32`, or
		    `float64`.
		  seed: A Python integer. Used to create a random seed for the distributions.
		    See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape `tf.concat(shape, tf.shape(alpha + beta))` with
		    values of type `dtype`.
	**/
	static public function random_gamma(shape:Dynamic, alpha:Dynamic, ?beta:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the normal
		    distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random normal values.
	**/
	static public function random_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an initializer that generates tensors with a normal distribution.
		
		Args:
		  mean: a python scalar or a scalar tensor. Mean of the random values
		    to generate.
		  stddev: a python scalar or a scalar tensor. Standard deviation of the
		    random values to generate.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with a normal distribution.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function random_normal_initializer(?mean:Dynamic, ?stddev:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Randomly shuffles a tensor along its first dimension.
		
		The tensor is shuffled along dimension 0, such that each `value[j]` is mapped
		to one and only one `output[i]`. For example, a mapping that might occur for a
		3x2 tensor is:
		
		```python
		[[1, 2],       [[5, 6],
		 [3, 4],  ==>   [1, 2],
		 [5, 6]]        [3, 4]]
		```
		
		Args:
		  value: A Tensor to be shuffled.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of same shape and type as `value`, shuffled along its first
		  dimension.
	**/
	static public function random_shuffle(value:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range
		`[minval, maxval)`. The lower bound `minval` is included in the range, while
		the upper bound `maxval` is excluded.
		
		For floats, the default range is `[0, 1)`.  For ints, at least `maxval` must
		be specified explicitly.
		
		In the integer case, the random integers are slightly biased unless
		`maxval - minval` is an exact power of two.  The bias is small for values of
		`maxval - minval` significantly smaller than the range of the output (either
		`2**32` or `2**64`).
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  minval: A 0-D Tensor or Python value of type `dtype`. The lower bound on the
		    range of random values to generate.  Defaults to 0.
		  maxval: A 0-D Tensor or Python value of type `dtype`. The upper bound on
		    the range of random values to generate.  Defaults to 1 if `dtype` is
		    floating point.
		  dtype: The type of the output: `float32`, `float64`, `int32`, or `int64`.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random uniform values.
		
		Raises:
		  ValueError: If `dtype` is integral and `maxval` is not specified.
	**/
	static public function random_uniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an initializer that generates tensors with a uniform distribution.
		
		Args:
		  minval: a python scalar or a scalar tensor. lower bound of the range
		    of random values to generate.
		  maxval: a python scalar or a scalar tensor. upper bound of the range
		    of random values to generate.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with a uniform distribution.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function random_uniform_initializer(?minval:Dynamic, ?maxval:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a sequence of integers.
		
		Creates a sequence of integers that begins at `start` and extends by
		increments of `delta` up to but not including `limit`.
		
		Like the Python builtin `range`, `start` defaults to 0, so that
		`range(n) = range(0, n)`.
		
		For example:
		
		```
		# 'start' is 3
		# 'limit' is 18
		# 'delta' is 3
		tf.range(start, limit, delta) ==> [3, 6, 9, 12, 15]
		
		# 'limit' is 5
		tf.range(limit) ==> [0, 1, 2, 3, 4]
		```
		
		Args:
		  start: A 0-D (scalar) of type `int32`. First entry in sequence.
		    Defaults to 0.
		  limit: A 0-D (scalar) of type `int32`. Upper limit of sequence,
		    exclusive.
		  delta: A 0-D `Tensor` (scalar) of type `int32`. Optional. Default is 1.
		    Number that increments `start`.
		  name: A name for the operation (optional).
		
		Returns:
		  An 1-D `int32` `Tensor`.
	**/
	static public function range(start:Dynamic, ?limit:Dynamic, ?delta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the rank of a tensor.
		
		This operation returns an integer representing the rank of `input`.
		
		For example:
		
		```python
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
		# shape of tensor 't' is [2, 2, 3]
		rank(t) ==> 3
		```
		
		**Note**: The rank of a tensor is not the same as the rank of a matrix. The
		rank of a tensor is the number of indices required to uniquely select each
		element of the tensor. Rank is also known as "order", "degree", or "ndims."
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function rank(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reads and outputs the entire contents of the input filename.
		
		Args:
		  filename: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function read_file(filename:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the real part of a complex number.
		
		Given a tensor `input` of complex numbers, this operation returns a tensor of
		type `float32` or `float64` that is the real part of each element in `input`.
		All elements in `input` must be complex numbers of the form \(a + bj\),
		where *a* is the real part returned by this operation and *b* is the
		imaginary part.
		
		For example:
		
		```
		# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
		tf.real(input) ==> [-2.25, 3.25]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`,
		       `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32` or `float64`.
	**/
	static public function real(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the "logical and" of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `reduction_indices`.
		Unless `keep_dims` is true, the rank of the tensor is reduced by 1 for each
		entry in `reduction_indices`. If `keep_dims` is true, the reduced dimensions
		are retained with length 1.
		
		If `reduction_indices` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		# 'x' is [[True,  True]
		#         [False, False]]
		tf.reduce_all(x) ==> False
		tf.reduce_all(x, 0) ==> [False, False]
		tf.reduce_all(x, 1) ==> [True, False]
		```
		
		Args:
		  input_tensor: The boolean tensor to reduce.
		  reduction_indices: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions.
		  keep_dims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_all(input_tensor:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the "logical or" of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `reduction_indices`.
		Unless `keep_dims` is true, the rank of the tensor is reduced by 1 for each
		entry in `reduction_indices`. If `keep_dims` is true, the reduced dimensions
		are retained with length 1.
		
		If `reduction_indices` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		# 'x' is [[True,  True]
		#         [False, False]]
		tf.reduce_any(x) ==> True
		tf.reduce_any(x, 0) ==> [True, True]
		tf.reduce_any(x, 1) ==> [True, False]
		```
		
		Args:
		  input_tensor: The boolean tensor to reduce.
		  reduction_indices: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions.
		  keep_dims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_any(input_tensor:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Joins a string Tensor across the given dimensions.
		
		Computes the string join across dimensions in the given string Tensor of shape
		`[d_0, d_1, ..., d_n-1]`.  Returns a new Tensor created by joining the input
		strings with the given separator (default: empty string).  Negative indices are
		counted backwards from the end, with `-1` being equivalent to `n - 1`.  Passing
		an empty `reduction_indices` joins all strings in linear index order and outputs
		a scalar string.
		
		
		For example:
		```
		# tensor `a` is [["a", "b"], ["c", "d"]]
		tf.reduce_join(a, 0) ==> ["ac", "bd"]
		tf.reduce_join(a, 1) ==> ["ab", "cd"]
		tf.reduce_join(a, -2) = tf.reduce_join(a, 0) ==> ["ac", "bd"]
		tf.reduce_join(a, -1) = tf.reduce_join(a, 1) ==> ["ab", "cd"]
		tf.reduce_join(a, 0, keep_dims=True) ==> [["ac", "bd"]]
		tf.reduce_join(a, 1, keep_dims=True) ==> [["ab"], ["cd"]]
		tf.reduce_join(a, 0, separator=".") ==> ["a.c", "b.d"]
		tf.reduce_join(a, [0, 1]) ==> ["acbd"]
		tf.reduce_join(a, [1, 0]) ==> ["abcd"]
		tf.reduce_join(a, []) ==> ["abcd"]
		```
		
		Args:
		  inputs: A `Tensor` of type `string`.
		    The input to be joined.  All reduced indices must have non-zero size.
		  reduction_indices: A `Tensor` of type `int32`.
		    The dimensions to reduce over.  Dimensions are reduced in the
		    order specified.  If `reduction_indices` has higher rank than `1`, it is
		    flattened.  Omitting `reduction_indices` is equivalent to passing
		    `[n-1, n-2, ..., 0]`.  Negative indices from `-n` to `-1` are supported.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If `True`, retain reduced dimensions with length `1`.
		  separator: An optional `string`. Defaults to `""`.
		    The separator to use when joining.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
		  Has shape equal to that of the input with reduced dimensions removed or
		  set to `1` depending on `keep_dims`.
	**/
	static public function reduce_join(inputs:Dynamic, reduction_indices:Dynamic, ?keep_dims:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the maximum of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `reduction_indices`.
		Unless `keep_dims` is true, the rank of the tensor is reduced by 1 for each
		entry in `reduction_indices`. If `keep_dims` is true, the reduced dimensions
		are retained with length 1.
		
		If `reduction_indices` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  reduction_indices: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions.
		  keep_dims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_max(input_tensor:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `reduction_indices`.
		Unless `keep_dims` is true, the rank of the tensor is reduced by 1 for each
		entry in `reduction_indices`. If `keep_dims` is true, the reduced dimensions
		are retained with length 1.
		
		If `reduction_indices` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		# 'x' is [[1., 1.]
		#         [2., 2.]]
		tf.reduce_mean(x) ==> 1.5
		tf.reduce_mean(x, 0) ==> [1.5, 1.5]
		tf.reduce_mean(x, 1) ==> [1.,  2.]
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  reduction_indices: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions.
		  keep_dims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_mean(input_tensor:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the minimum of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `reduction_indices`.
		Unless `keep_dims` is true, the rank of the tensor is reduced by 1 for each
		entry in `reduction_indices`. If `keep_dims` is true, the reduced dimensions
		are retained with length 1.
		
		If `reduction_indices` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  reduction_indices: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions.
		  keep_dims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_min(input_tensor:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the product of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `reduction_indices`.
		Unless `keep_dims` is true, the rank of the tensor is reduced by 1 for each
		entry in `reduction_indices`. If `keep_dims` is true, the reduced dimensions
		are retained with length 1.
		
		If `reduction_indices` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  reduction_indices: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions.
		  keep_dims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_prod(input_tensor:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `reduction_indices`.
		Unless `keep_dims` is true, the rank of the tensor is reduced by 1 for each
		entry in `reduction_indices`. If `keep_dims` is true, the reduced dimensions
		are retained with length 1.
		
		If `reduction_indices` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		# 'x' is [[1, 1, 1]
		#         [1, 1, 1]]
		tf.reduce_sum(x) ==> 6
		tf.reduce_sum(x, 0) ==> [2, 2, 2]
		tf.reduce_sum(x, 1) ==> [3, 3]
		tf.reduce_sum(x, 1, keep_dims=True) ==> [[3], [3]]
		tf.reduce_sum(x, [0, 1]) ==> 6
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  reduction_indices: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions.
		  keep_dims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_sum(input_tensor:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Helper function for reduction ops.
		
		Args:
		  input_shape: 1-D Tensor, the shape of the Tensor being reduced.
		  axes: 1-D Tensor, the reduction axes.
		Returns:
		  A 1-D Tensor, the output shape as if keep_dims were set to True.
	**/
	static public function reduced_shape(input_shape:Dynamic, axes:Dynamic):Dynamic;
	/**
		Registers a function for converting objects of `base_type` to `Tensor`.
		
		The conversion function must have the following signature:
		
		    def conversion_func(value, dtype=None, name=None, as_ref=False):
		      # ...
		
		It must return a `Tensor` with the given `dtype` if specified. If the
		conversion function creates a new `Tensor`, it should use the given
		`name` if specified. All exceptions will be propagated to the caller.
		
		The conversion function may return `NotImplemented` for some
		inputs. In this case, the conversion process will continue to try
		subsequent conversion functions.
		
		If `as_ref` is true, the function must return a `Tensor` reference,
		such as a `Variable`.
		
		NOTE: The conversion functions will execute in order of priority,
		followed by order of registration. To ensure that a conversion function
		`F` runs before another conversion function `G`, ensure that `F` is
		registered with a smaller priority than `G`.
		
		Args:
		  base_type: The base type or tuple of base types for all objects that
		    `conversion_func` accepts.
		  conversion_func: A function that converts instances of `base_type` to
		    `Tensor`.
		  priority: Optional integer that indicates the priority for applying this
		    conversion function. Conversion functions with smaller priority values
		    run earlier than conversion functions with larger priority values.
		    Defaults to 100.
		
		Raises:
		  TypeError: If the arguments do not have the appropriate type.
	**/
	static public function register_tensor_conversion_function(base_type:Dynamic, conversion_func:Dynamic, ?priority:Dynamic):Dynamic;
	/**
		Adds ops to list the names of uninitialized variables.
		
		When run, it returns a 1-D tensor containing the names of uninitialized
		variables if there are any, or an empty array if there are none.
		
		Args:
		  var_list: List of `Variable` objects to check. Defaults to the
		    value of `all_variables() + local_variables()`
		  name: Optional name of the `Operation`.
		
		Returns:
		  A 1-D tensor containing names of the unintialized variables, or an empty 1-D
		  tensor if there are no variables or no uninitialized variables.
	**/
	static public function report_uninitialized_variables(?var_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clears the default graph stack and resets the global default graph.
		
		NOTE: The default graph is a property of the current thread. This
		function applies only to the current thread.  Calling this function while
		a `tf.Session` or `tf.InteractiveSession` is active will result in undefined
		behavior. Using any previously created `tf.Operation` or `tf.Tensor` objects
		after calling this function will result in undefined behavior.
	**/
	static public function reset_default_graph():Dynamic;
	/**
		Reshapes a tensor.
		
		Given `tensor`, this operation returns a tensor that has the same values
		as `tensor` with shape `shape`.
		
		If one component of `shape` is the special value -1, the size of that dimension
		is computed so that the total size remains constant.  In particular, a `shape`
		of `[-1]` flattens into 1-D.  At most one component of `shape` can be -1.
		
		If `shape` is 1-D or higher, then the operation returns a tensor with shape
		`shape` filled with the values of `tensor`. In this case, the number of elements
		implied by `shape` must be the same as the number of elements in `tensor`.
		
		For example:
		
		```prettyprint
		# tensor 't' is [1, 2, 3, 4, 5, 6, 7, 8, 9]
		# tensor 't' has shape [9]
		reshape(t, [3, 3]) ==> [[1, 2, 3],
		                        [4, 5, 6],
		                        [7, 8, 9]]
		
		# tensor 't' is [[[1, 1], [2, 2]],
		#                [[3, 3], [4, 4]]]
		# tensor 't' has shape [2, 2, 2]
		reshape(t, [2, 4]) ==> [[1, 1, 2, 2],
		                        [3, 3, 4, 4]]
		
		# tensor 't' is [[[1, 1, 1],
		#                 [2, 2, 2]],
		#                [[3, 3, 3],
		#                 [4, 4, 4]],
		#                [[5, 5, 5],
		#                 [6, 6, 6]]]
		# tensor 't' has shape [3, 2, 3]
		# pass '[-1]' to flatten 't'
		reshape(t, [-1]) ==> [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6]
		
		# -1 can also be used to infer the shape
		
		# -1 is inferred to be 9:
		reshape(t, [2, -1]) ==> [[1, 1, 1, 2, 2, 2, 3, 3, 3],
		                         [4, 4, 4, 5, 5, 5, 6, 6, 6]]
		# -1 is inferred to be 2:
		reshape(t, [-1, 9]) ==> [[1, 1, 1, 2, 2, 2, 3, 3, 3],
		                         [4, 4, 4, 5, 5, 5, 6, 6, 6]]
		# -1 is inferred to be 3:
		reshape(t, [ 2, -1, 3]) ==> [[[1, 1, 1],
		                              [2, 2, 2],
		                              [3, 3, 3]],
		                             [[4, 4, 4],
		                              [5, 5, 5],
		                              [6, 6, 6]]]
		
		# tensor 't' is [7]
		# shape `[]` reshapes to a scalar
		reshape(t, []) ==> 7
		```
		
		Args:
		  tensor: A `Tensor`.
		  shape: A `Tensor` of type `int32`. Defines the shape of the output tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function reshape(tensor:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reverses specific dimensions of a tensor.
		
		Given a `tensor`, and a `bool` tensor `dims` representing the dimensions
		of `tensor`, this operation reverses each dimension i of `tensor` where
		`dims[i]` is `True`.
		
		`tensor` can have up to 8 dimensions. The number of dimensions
		of `tensor` must equal the number of elements in `dims`. In other words:
		
		`rank(tensor) = size(dims)`
		
		For example:
		
		```prettyprint
		# tensor 't' is [[[[ 0,  1,  2,  3],
		#                  [ 4,  5,  6,  7],
		#                  [ 8,  9, 10, 11]],
		#                 [[12, 13, 14, 15],
		#                  [16, 17, 18, 19],
		#                  [20, 21, 22, 23]]]]
		# tensor 't' shape is [1, 2, 3, 4]
		
		# 'dims' is [False, False, False, True]
		reverse(t, dims) ==> [[[[ 3,  2,  1,  0],
		                        [ 7,  6,  5,  4],
		                        [ 11, 10, 9, 8]],
		                       [[15, 14, 13, 12],
		                        [19, 18, 17, 16],
		                        [23, 22, 21, 20]]]]
		
		# 'dims' is [False, True, False, False]
		reverse(t, dims) ==> [[[[12, 13, 14, 15],
		                        [16, 17, 18, 19],
		                        [20, 21, 22, 23]
		                       [[ 0,  1,  2,  3],
		                        [ 4,  5,  6,  7],
		                        [ 8,  9, 10, 11]]]]
		
		# 'dims' is [False, False, True, False]
		reverse(t, dims) ==> [[[[8, 9, 10, 11],
		                        [4, 5, 6, 7],
		                        [0, 1, 2, 3]]
		                       [[20, 21, 22, 23],
		                        [16, 17, 18, 19],
		                        [12, 13, 14, 15]]]]
		```
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int32`, `bool`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		    Up to 8-D.
		  dims: A `Tensor` of type `bool`. 1-D. The dimensions to reverse.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`. The same shape as `tensor`.
	**/
	static public function reverse(tensor:Dynamic, dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reverses variable length slices.
		
		This op first slices `input` along the dimension `batch_dim`, and for each
		slice `i`, reverses the first `seq_lengths[i]` elements along
		the dimension `seq_dim`.
		
		The elements of `seq_lengths` must obey `seq_lengths[i] < input.dims[seq_dim]`,
		and `seq_lengths` must be a vector of length `input.dims[batch_dim]`.
		
		The output slice `i` along dimension `batch_dim` is then given by input
		slice `i`, with the first `seq_lengths[i]` slices along dimension
		`seq_dim` reversed.
		
		For example:
		
		```prettyprint
		# Given this:
		batch_dim = 0
		seq_dim = 1
		input.dims = (4, 8, ...)
		seq_lengths = [7, 2, 3, 5]
		
		# then slices of input are reversed on seq_dim, but only up to seq_lengths:
		output[0, 0:7, :, ...] = input[0, 7:0:-1, :, ...]
		output[1, 0:2, :, ...] = input[1, 2:0:-1, :, ...]
		output[2, 0:3, :, ...] = input[2, 3:0:-1, :, ...]
		output[3, 0:5, :, ...] = input[3, 5:0:-1, :, ...]
		
		# while entries past seq_lens are copied through:
		output[0, 7:, :, ...] = input[0, 7:, :, ...]
		output[1, 2:, :, ...] = input[1, 2:, :, ...]
		output[2, 3:, :, ...] = input[2, 3:, :, ...]
		output[3, 2:, :, ...] = input[3, 2:, :, ...]
		```
		
		In contrast, if:
		
		```prettyprint
		# Given this:
		batch_dim = 2
		seq_dim = 0
		input.dims = (8, ?, 4, ...)
		seq_lengths = [7, 2, 3, 5]
		
		# then slices of input are reversed on seq_dim, but only up to seq_lengths:
		output[0:7, :, 0, :, ...] = input[7:0:-1, :, 0, :, ...]
		output[0:2, :, 1, :, ...] = input[2:0:-1, :, 1, :, ...]
		output[0:3, :, 2, :, ...] = input[3:0:-1, :, 2, :, ...]
		output[0:5, :, 3, :, ...] = input[5:0:-1, :, 3, :, ...]
		
		# while entries past seq_lens are copied through:
		output[7:, :, 0, :, ...] = input[7:, :, 0, :, ...]
		output[2:, :, 1, :, ...] = input[2:, :, 1, :, ...]
		output[3:, :, 2, :, ...] = input[3:, :, 2, :, ...]
		output[2:, :, 3, :, ...] = input[2:, :, 3, :, ...]
		```
		
		Args:
		  input: A `Tensor`. The input to reverse.
		  seq_lengths: A `Tensor` of type `int64`.
		    1-D with length `input.dims(batch_dim)` and
		    `max(seq_lengths) < input.dims(seq_dim)`
		  seq_dim: An `int`. The dimension which is partially reversed.
		  batch_dim: An optional `int`. Defaults to `0`.
		    The dimension along which reversal is performed.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  The partially reversed input. It has the same shape as `input`.
	**/
	static public function reverse_sequence(input:Dynamic, seq_lengths:Dynamic, seq_dim:Dynamic, ?batch_dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rounds the values of a tensor to the nearest integer, element-wise.
		
		For example:
		
		```python
		# 'a' is [0.9, 2.5, 2.3, -4.4]
		tf.round(a) ==> [ 1.0, 3.0, 2.0, -4.0 ]
		```
		
		Args:
		  x: A `Tensor` of type `float32` or `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as `x`.
	**/
	static public function round(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes reciprocal of square root of x element-wise.
		
		I.e., \\(y = 1 / \sqrt{x}\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function rsqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs a safe saturating cast of `value` to `dtype`.
		
		This function casts the input to `dtype` without applying any scaling.  If
		there is a danger that values would over or underflow in the cast, this op
		applies the appropriate clamping before the cast.
		
		Args:
		  value: A `Tensor`.
		  dtype: The desired output `DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  `value` safely cast to `dtype`.
	**/
	static public function saturate_cast(value:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies a scalar times a `Tensor` or `IndexedSlices` object.
		
		Intended for use in gradient code which might deal with `IndexedSlices`
		objects, which are easy to multiply by a scalar but more expensive to
		multiply with arbitrary tensors.
		
		Args:
		  scalar: A 0-D scalar `Tensor`. Must have known shape.
		  x: A `Tensor` or `IndexedSlices` to be scaled.
		
		Returns:
		  `scalar * x` of the same type (`Tensor` or `IndexedSlices`) as `x`.
		
		Raises:
		  ValueError: if scalar is not a 0-D `scalar`.
	**/
	static public function scalar_mul(scalar:Dynamic, x:Dynamic):Dynamic;
	/**
		Outputs a `Summary` protocol buffer with scalar values.
		
		The input `tags` and `values` must have the same shape.  The generated
		summary has a summary value for each tag-value pair in `tags` and `values`.
		
		Args:
		  tags: A `string` `Tensor`.  Tags for the summaries.
		  values: A real numeric Tensor.  Values for the summaries.
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function scalar_summary(tags:Dynamic, values:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		scan on the list of tensors unpacked from `elems` on dimension 0.
		
		The simplest version of `scan` repeatedly applies the callable `fn` to a
		sequence of elements from first to last. The elements are made of the tensors
		unpacked from `elems` on dimension 0. The callable fn takes two tensors as
		arguments. The first argument is the accumulated value computed from the
		preceding invocation of fn. If `initializer` is None, `elems` must contain
		at least one element, and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `[len(values)] + fn(initializer, values[0]).shape`.
		
		This method also allows multi-arity `elems` and accumulator.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The second argument of
		`fn` must match the structure of `elems`.
		
		If no `initializer` is provided, the output structure and dtypes of `fn`
		are assumed to be the same as its input; and in this case, the first
		argument of `fn` must match the structure of `elems`.
		
		If an `initializer` is provided, then the output of `fn` must have the same
		structure as `initializer`; and the first argument of `fn` must match
		this structure.
		
		For example, if `elems` is `(t1, [t2, t3])` and `initializer` is
		`[i1, i2]` then an appropriate signature for `fn` in `python2` is:
		`fn = lambda (acc_p1, acc_p2), (t1 [t2, t3]):` and `fn` must return a list,
		`[acc_n1, acc_n2]`.  An alternative correct signature for `fn`, and the
		 one that works in `python3`, is:
		`fn = lambda a, t:`, where `a` and `t` correspond to the input tuples.
		
		Args:
		  fn: The callable to be performed.  It accepts two arguments.  The first
		    will have the same (possibly nested) structure as `elems`.  The second
		    will have the same structure as `initializer` if one is provided,
		    otherwise it will have the same structure as `elems`.  Its output
		    must have the same structure as `initializer` if one is provided,
		    otherwise it must have the same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which
		    will be unpacked along their first dimension.  The nested sequence
		    of the resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    initial value for the accumulator, and the expected output type of `fn`.
		  parallel_iterations: (optional) The number of iterations allowed to run
		    in parallel.
		  back_prop: (optional) True enables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors.  Each tensor packs the
		  results of applying `fn` to tensors unpacked from `elems` along the first
		  dimension, and the previous accumulator value(s), from first to last.
		
		Raises:
		  TypeError: if `fn` is not callable or the structure of the output of
		    `fn` and `initializer` do not match.
		  ValueError: if the lengths of the output of `fn` and `initializer`
		    do not match.
		
		Examples:
		  ```python
		  elems = np.array([1, 2, 3, 4, 5, 6])
		  sum = scan(lambda a, x: a + x, elems)
		  # sum == [1, 3, 6, 10, 15, 21]
		  ```
		
		  ```python
		  elems = np.array([1, 2, 3, 4, 5, 6])
		  initializer = np.array(0)
		  sum_one = scan(
		      lambda a, x: x[0] - x[1] + a, (elems + 1, elems), initializer)
		  # sum_one == [1, 2, 3, 4, 5, 6]
		  ```
		
		  ```python
		  elems = np.array([1, 0, 0, 0, 0, 0])
		  initializer = (np.array(0), np.array(1))
		  fibonaccis = scan(lambda a, _: (a[1], a[0] + a[1]), elems, initializer)
		  # fibonaccis == ([1, 1, 2, 3, 5, 8], [1, 2, 3, 5, 8, 13])
		  ```
	**/
	static public function scan(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds sparse updates to a variable reference.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] += updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] += updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] += updates[i, ..., j, ...]
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/ScatterAdd.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to add to `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the addition will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_add(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts sparse updates to a variable reference.
		
		    # Scalar indices
		    ref[indices, ...] -= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] -= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] -= updates[i, ..., j, ...]
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their (negated) contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/ScatterSub.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to subtract from `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_sub(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse updates to a variable reference.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = updates[i, ..., j, ...]
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		If values in `ref` is to be updated more than once, because there are
		duplicate entires in `indices`, the order at which the updates happen
		for each value is undefined.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/ScatterUpdate.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to store in `ref`.
		  use_locking: An optional `bool`. Defaults to `True`.
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_update(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the maximum along segments of a tensor.
		
		Read [the section on Segmentation](../../api_docs/python/math_ops.md#segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \max_j(data_j)\\) where `max` is over `j` such
		that `segment_ids[j] == i`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/SegmentMax.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose rank is equal to the rank of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
		  Has same shape as data, except for dimension 0 which
		  has size `k`, the number of segments.
	**/
	static public function segment_max(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean along segments of a tensor.
		
		Read [the section on
		Segmentation](../../api_docs/python/math_ops.md#segmentation) for an explanation
		of segments.
		
		Computes a tensor such that
		\\(output_i = \frac{\sum_j data_j}{N}\\) where `mean` is
		over `j` such that `segment_ids[j] == i` and `N` is the total number of
		values summed.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/SegmentMean.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose rank is equal to the rank of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
		  Has same shape as data, except for dimension 0 which
		  has size `k`, the number of segments.
	**/
	static public function segment_mean(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the minimum along segments of a tensor.
		
		Read [the section on
		Segmentation](../../api_docs/python/math_ops.md#segmentation) for an explanation
		of segments.
		
		Computes a tensor such that
		\\(output_i = \min_j(data_j)\\) where `min` is over `j` such
		that `segment_ids[j] == i`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/SegmentMin.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose rank is equal to the rank of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
		  Has same shape as data, except for dimension 0 which
		  has size `k`, the number of segments.
	**/
	static public function segment_min(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the product along segments of a tensor.
		
		Read [the section on
		Segmentation](../../api_docs/python/math_ops.md#segmentation) for an explanation
		of segments.
		
		Computes a tensor such that
		\\(output_i = \prod_j data_j\\) where the product is over `j` such
		that `segment_ids[j] == i`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/SegmentProd.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose rank is equal to the rank of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
		  Has same shape as data, except for dimension 0 which
		  has size `k`, the number of segments.
	**/
	static public function segment_prod(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a tensor.
		
		Read [the section on Segmentation](../../api_docs/python/math_ops.md#segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \sum_j data_j\\) where sum is over `j` such
		that `segment_ids[j] == i`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/SegmentSum.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose rank is equal to the rank of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
		  Has same shape as data, except for dimension 0 which
		  has size `k`, the number of segments.
	**/
	static public function segment_sum(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Selects elements from `t` or `e`, depending on `condition`.
		
		The `t`, and `e` tensors must all have the same shape,
		and the output will also have that shape.  The `condition` tensor
		must be a scalar if `t` and `e` are scalars.  If `t` and `e` are vectors
		or higher rank, then `condition` must be either a vector with size
		matching the first dimension of `t`, or must have the same shape as `t`.
		
		The `condition` tensor acts as a mask that chooses, based on the value at each
		element, whether the corresponding element / row in the output should be
		taken from `t` (if true) or `e` (if false).
		
		If `condition` is a vector and `t` and `e` are higher rank matrices, then
		it chooses which row (outer dimension) to copy from `t` and `e`.
		If `condition` has the same shape as `t` and `e`, then it chooses which
		element to copy from `t` and `e`.
		
		For example:
		
		```prettyprint
		# 'condition' tensor is [[True,  False]
		#                        [False, True]]
		# 't' is [[1, 2],
		#         [3, 4]]
		# 'e' is [[5, 6],
		#         [7, 8]]
		select(condition, t, e) ==> [[1, 6],
		                             [7, 4]]
		
		
		# 'condition' tensor is [True, False]
		# 't' is [[1, 2],
		#         [3, 4]]
		# 'e' is [[5, 6],
		#         [7, 8]]
		select(condition, t, e) ==> [[1, 2],
		                             [7, 8]]
		
		```
		
		Args:
		  condition: A `Tensor` of type `bool`.
		  t:  A `Tensor` which may have the same shape as `condition`.
		    If `condition` is rank 1, `t` may have higher rank,
		    but its first dimension must match the size of `condition`.
		  e:  A `Tensor` with the same type and shape as `t`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type and shape as `t` and `e`.
	**/
	static public function select(condition:Dynamic, t:Dynamic, e:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a self-adjoint matrix.
		
		Computes the eigenvalues and eigenvectors of an N-by-N matrix `matrix` such
		that `matrix * v[:,i] = e(i) * v[:,i]`, for i=0...N-1.
		
		Args:
		  matrix: `Tensor` of shape `[N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[N]`.
		  v: Eigenvectors. Shape is `[N, N]`. The columns contain the eigenvectors of
		    `matrix`.
	**/
	static public function self_adjoint_eig(matrix:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a self-adjoint (\"symmetric\") matrix.
		
		Computes the eigenvalues and (optionally) eigenvectors such that
		`input = v * diag(e)`.
		
		```prettyprint
		# a is a self-adjoint matrix.
		# e is a vector of eigenvalues.
		# v is a matrix of eigenvectors.
		e, v = self_adjoint_eig(a)
		e = self_adjoint_eig(a, compute_v=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    `Tensor` input of shape `[N, N]`.
		  compute_v: An optional `bool`. Defaults to `True`.
		    If `True` then eigenvectors will be computed and returned in `v`.
		    Otherwise, only the eigenvalues will be computed.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (e, v).
		  e: A `Tensor`. Has the same type as `input`. Eigenvalues. Shape is `[N]`.
		  v: A `Tensor`. Has the same type as `input`. Eigenvectors. Shape is `[N, N]`.
	**/
	static public function self_adjoint_eig_v2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigenvalues a self-adjoint  matrix.
		
		Args:
		  matrix: `Tensor` of shape `[N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues of `matrix`. Shape is `[N]`.
	**/
	static public function self_adjoint_eigvals(matrix:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Serialize an `N`-minibatch `SparseTensor` into an `[N, 3]` string `Tensor`.
		
		The `SparseTensor` must have rank `R` greater than 1, and the first dimension
		is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The serialized
		`SparseTensor` objects going into each row of the output `Tensor` will have
		rank `R-1`.
		
		The minibatch size `N` is extracted from `sparse_shape[0]`.
		
		Args:
		  sp_input: The input rank `R` `SparseTensor`.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A string matrix (2-D `Tensor`) with `N` rows and `3` columns.
		  Each column represents serialized `SparseTensor`'s indices, values, and
		  shape (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_many_sparse(sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Serialize a `SparseTensor` into a string 3-vector (1-D `Tensor`) object.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A string 3-vector (1D `Tensor`), with each column representing the
		  serialized `SparseTensor`'s indices, values, and shape (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_sparse(sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sets the graph-level random seed.
		
		Operations that rely on a random seed actually derive it from two seeds:
		the graph-level and operation-level seeds. This sets the graph-level seed.
		
		Its interactions with operation-level seeds is as follows:
		
		  1. If neither the graph-level nor the operation seed is set:
		    A random seed is used for this op.
		  2. If the graph-level seed is set, but the operation seed is not:
		    The system deterministically picks an operation seed in conjunction
		    with the graph-level seed so that it gets a unique random sequence.
		  3. If the graph-level seed is not set, but the operation seed is set:
		    A default graph-level seed and the specified operation seed are used to
		    determine the random sequence.
		  4. If both the graph-level and the operation seed are set:
		    Both seeds are used in conjunction to determine the random sequence.
		
		To illustrate the user-visible effects, consider these examples:
		
		To generate different sequences across sessions, set neither
		graph-level nor op-level seeds:
		
		```python
		a = tf.random_uniform([1])
		b = tf.random_normal([1])
		
		print("Session 1")
		with tf.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.Session() as sess2:
		  print(sess2.run(a))  # generates 'A3'
		  print(sess2.run(a))  # generates 'A4'
		  print(sess2.run(b))  # generates 'B3'
		  print(sess2.run(b))  # generates 'B4'
		```
		
		To generate the same repeatable sequence for an op across sessions, set the
		seed for the op:
		
		```python
		a = tf.random_uniform([1], seed=1)
		b = tf.random_normal([1])
		
		# Repeatedly running this block with the same graph will generate the same
		# sequence of values for 'a', but different sequences of values for 'b'.
		print("Session 1")
		with tf.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.Session() as sess2:
		  print(sess2.run(a))  # generates 'A1'
		  print(sess2.run(a))  # generates 'A2'
		  print(sess2.run(b))  # generates 'B3'
		  print(sess2.run(b))  # generates 'B4'
		```
		
		To make the random sequences generated by all ops be repeatable across
		sessions, set a graph-level seed:
		
		```python
		tf.set_random_seed(1234)
		a = tf.random_uniform([1])
		b = tf.random_normal([1])
		
		# Repeatedly running this block with the same graph will generate different
		# sequences of 'a' and 'b'.
		print("Session 1")
		with tf.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.Session() as sess2:
		  print(sess2.run(a))  # generates 'A1'
		  print(sess2.run(a))  # generates 'A2'
		  print(sess2.run(b))  # generates 'B1'
		  print(sess2.run(b))  # generates 'B2'
		```
		
		Args:
		  seed: integer.
	**/
	static public function set_random_seed(seed:Dynamic):Dynamic;
	/**
		Returns the shape of a tensor.
		
		This operation returns a 1-D integer tensor representing the shape of `input`.
		
		For example:
		
		```python
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
		shape(t) ==> [2, 2, 3]
		```
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function shape(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns shape of tensors.
		
		This operation returns N 1-D integer tensors representing shape of `input[i]s`.
		
		Args:
		  input: A list of at least 1 `Tensor` objects of the same type.
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same number of `Tensor` objects as `input` of `Tensor` objects of type `int32`.
	**/
	static public function shape_n(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sigmoid of `x` element-wise.
		
		Specifically, `y = 1 / (1 + exp(-x))`.
		
		Args:
		  x: A Tensor with type `float32`, `float64`, `int32`, `complex64`, `int64`,
		    or `qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x` if `x.dtype != qint32`
		    otherwise the return type is `quint8`.
	**/
	static public function sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an element-wise indication of the sign of a number.
		
		`y = sign(x) = -1` if `x < 0`; 0 if `x == 0`; 1 if `x > 0`.
		
		For complex numbers, `y = sign(x) = x / |x|` if `x != 0`, otherwise `y = 0`.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
	**/
	static public function sign(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sin of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the size of a tensor.
		
		This operation returns an integer representing the number of elements in
		`input`.
		
		For example:
		
		```python
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]]
		size(t) ==> 12
		```
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function size(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts a slice from a tensor.
		
		This operation extracts a slice of size `size` from a tensor `input` starting
		at the location specified by `begin`. The slice `size` is represented as a
		tensor shape, where `size[i]` is the number of elements of the 'i'th dimension
		of `input` that you want to slice. The starting location (`begin`) for the
		slice is represented as an offset in each dimension of `input`. In other
		words, `begin[i]` is the offset into the 'i'th dimension of `input` that you
		want to slice from.
		
		`begin` is zero-based; `size` is one-based. If `size[i]` is -1,
		all remaining elements in dimension i are included in the
		slice. In other words, this is equivalent to setting:
		
		`size[i] = input.dim_size(i) - begin[i]`
		
		This operation requires that:
		
		`0 <= begin[i] <= begin[i] + size[i] <= Di  for i in [0, n]`
		
		For example:
		
		```
		# 'input' is [[[1, 1, 1], [2, 2, 2]],
		#             [[3, 3, 3], [4, 4, 4]],
		#             [[5, 5, 5], [6, 6, 6]]]
		tf.slice(input, [1, 0, 0], [1, 1, 3]) ==> [[[3, 3, 3]]]
		tf.slice(input, [1, 0, 0], [1, 2, 3]) ==> [[[3, 3, 3],
		                                            [4, 4, 4]]]
		tf.slice(input, [1, 0, 0], [2, 1, 3]) ==> [[[3, 3, 3]],
		                                           [[5, 5, 5]]]
		```
		
		Args:
		  input_: A `Tensor`.
		  begin: An `int32` or `int64` `Tensor`.
		  size: An `int32` or `int64` `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` the same type as `input`.
	**/
	static public function slice(input_:Dynamic, begin:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToBatch for 4-D tensors of type T.
		
		Zero-pads and then rearranges (permutes) blocks of spatial data into batch.
		More specifically, this op outputs a copy of the input tensor where values from
		the `height` and `width` dimensions are moved to the `batch` dimension. After
		the zero-padding, both `height` and `width` of the input must be divisible by the
		block size.
		
		Args:
		  input: A `Tensor`. 4-D with shape `[batch, height, width, depth]`.
		  paddings: A `Tensor` of type `int32`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		      the padding of the input with zeros across the spatial dimensions as follows:
		
		          paddings = [[pad_top, pad_bottom], [pad_left, pad_right]]
		
		      The effective spatial dimensions of the zero-padded input tensor will be:
		
		          height_pad = pad_top + height + pad_bottom
		          width_pad = pad_left + width + pad_right
		
		    The attr `block_size` must be greater than one. It indicates the block size.
		
		      * Non-overlapping blocks of size `block_size x block size` in the height and
		        width dimensions are rearranged into the batch dimension at each location.
		      * The batch of the output tensor is `batch * block_size * block_size`.
		      * Both height_pad and width_pad must be divisible by block_size.
		
		    The shape of the output will be:
		
		        [batch*block_size*block_size, height_pad/block_size, width_pad/block_size,
		         depth]
		
		    Some examples:
		
		    (1) For the following input of shape `[1, 2, 2, 1]` and block_size of 2:
		
		    ```prettyprint
		    x = [[[[1], [2]], [[3], [4]]]]
		    ```
		
		    The output tensor has shape `[4, 1, 1, 1]` and value:
		
		    ```prettyprint
		    [[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		    ```
		
		    (2) For the following input of shape `[1, 2, 2, 3]` and block_size of 2:
		
		    ```prettyprint
		    x = [[[[1, 2, 3], [4, 5, 6]],
		          [[7, 8, 9], [10, 11, 12]]]]
		    ```
		
		    The output tensor has shape `[4, 1, 1, 3]` and value:
		
		    ```prettyprint
		    [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
		    ```
		
		    (3) For the following input of shape `[1, 4, 4, 1]` and block_size of 2:
		
		    ```prettyprint
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]],
		          [[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		
		    The output tensor has shape `[4, 2, 2, 1]` and value:
		
		    ```prettyprint
		    x = [[[[1], [3]], [[5], [7]]],
		         [[[2], [4]], [[10], [12]]],
		         [[[5], [7]], [[13], [15]]],
		         [[[6], [8]], [[14], [16]]]]
		    ```
		
		    (4) For the following input of shape `[2, 2, 4, 1]` and block_size of 2:
		
		    ```prettyprint
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]]],
		         [[[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		
		    The output tensor has shape `[8, 1, 2, 1]` and value:
		
		    ```prettyprint
		    x = [[[[1], [3]]], [[[9], [11]]], [[[2], [4]]], [[[10], [12]]],
		         [[[5], [7]]], [[[13], [15]]], [[[6], [8]]], [[[14], [16]]]]
		    ```
		
		    Among others, this operation is useful for reducing atrous convolution into
		    regular convolution.
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch(input:Dynamic, paddings:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToDepth for tensors of type T.
		
		Rearranges blocks of spatial data, into depth. More specifically,
		this op outputs a copy of the input tensor where values from the `height`
		and `width` dimensions are moved to the `depth` dimension.
		The attr `block_size` indicates the input block size and how the data is moved.
		
		  * Non-overlapping blocks of size `block_size x block size` are rearranged
		    into depth at each location.
		  * The depth of the output tensor is `input_depth * block_size * block_size`.
		  * The input tensor's height and width must be divisible by block_size.
		
		That is, assuming the input is in the shape:
		`[batch, height, width, depth]`,
		the shape of the output will be:
		`[batch, height/block_size, width/block_size, depth*block_size*block_size]`
		
		This operation requires that the input tensor be of rank 4, and that
		`block_size` be >=1 and a divisor of both the input `height` and `width`.
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given this input of shape `[1, 2, 2, 1]`, and block_size of 2:
		
		```prettyprint
		x = [[[[1], [2]],
		      [[3], [4]]]]
		```
		
		This operation will output a tensor of shape `[1, 1, 1, 4]`:
		
		```prettyprint
		[[[[1, 2, 3, 4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[2, 2, 1]`,
		the corresponding output will have a single element (i.e. width and height are
		both 1) and will have a depth of 4 channels (1 * block_size * block_size).
		The output element shape is `[1, 1, 4]`.
		
		For an input tensor with larger depth, here of shape `[1, 2, 2, 3]`, e.g.
		
		```prettyprint
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		This operation, for block_size of 2, will return the following tensor of shape
		`[1, 1, 1, 12]`
		
		```prettyprint
		[[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		Similarly, for the following input of shape `[1 4 4 1]`, and a block size of 2:
		
		```prettyprint
		x = [[[[1],   [2],  [5],  [6]],
		      [[3],   [4],  [7],  [8]],
		      [[9],  [10], [13],  [14]],
		      [[11], [12], [15],  [16]]]]
		```
		
		the operator will return the following tensor of shape `[1 2 2 4]`:
		
		```prettyprint
		x = [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`. The size of the spatial block.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_depth(input:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds two tensors, at least one of each is a `SparseTensor`.
		
		If one `SparseTensor` and one `Tensor` are passed in, returns a `Tensor`.  If
		both arguments are `SparseTensor`s, this returns a `SparseTensor`.  The order
		of arguments does not matter.  Use vanilla `tf.add()` for adding two dense
		`Tensor`s.
		
		The indices of any input `SparseTensor` are assumed ordered in standard
		lexicographic order.  If this is not the case, before this step run
		`SparseReorder` to restore index ordering.
		
		If both arguments are sparse, we perform "clipping" as follows.  By default,
		if two values sum to zero at some index, the output `SparseTensor` would still
		include that particular location in its index, storing a zero in the
		corresponding value slot.  To override this, callers can specify `thresh`,
		indicating that if the sum has a magnitude strictly smaller than `thresh`, its
		corresponding value and index would then not be included.  In particular,
		`thresh == 0.0` (default) means everything is kept and actual thresholding
		happens only for a positive value.
		
		For example, suppose the logical sum of two sparse operands is (densified):
		
		    [       2]
		    [.1     0]
		    [ 6   -.2]
		
		Then,
		
		    - thresh == 0 (the default): all 5 index/value pairs will be returned.
		    - thresh == 0.11: only .1 and 0  will vanish, and the remaining three
		        index/value pairs will be returned.
		    - thresh == 0.21: .1, 0, and -.2 will vanish.
		
		Args:
		  a: The first operand; `SparseTensor` or `Tensor`.
		  b: The second operand; `SparseTensor` or `Tensor`.  At least one operand
		    must be sparse.
		  thresh: A 0-D `Tensor`.  The magnitude threshold that determines if an
		  output value/index pair takes space.  Its dtype should match that of the
		  values if they are real; if the latter are complex64/complex128, then the
		  dtype should be float32/float64, correspondingly.
		
		Returns:
		  A `SparseTensor` or a `Tensor`, representing the sum.
		
		Raises:
		  TypeError: If both `a` and `b` are `Tensor`s.  Use `tf.add()` instead.
	**/
	static public function sparse_add(a:Dynamic, b:Dynamic, ?thresh:Dynamic):Dynamic;
	/**
		Concatenates a list of `SparseTensor` along the specified dimension.
		
		Concatenation is with respect to the dense versions of each sparse input.
		It is assumed that each inputs is a `SparseTensor` whose elements are ordered
		along increasing dimension number.
		
		If expand_nonconcat_dim is False, all inputs' shapes must match, except for
		the concat dimension. If expand_nonconcat_dim is True, then inputs' shapes are
		allowd to vary among all inputs.
		
		The `indices`, `values`, and `shapes` lists must have the same length.
		
		If expand_nonconcat_dim is False, then the output shape is identical to the
		inputs', except along the concat dimension, where it is the sum of the inputs'
		sizes along that dimension.
		
		If expand_nonconcat_dim is True, then the output shape along the non-concat
		dimensions will be expand to be the largest among all inputs, and it is the
		sum of the inputs sizes along the concat dimension.
		
		The output elements will be resorted to preserve the sort order along
		increasing dimension number.
		
		This op runs in `O(M log M)` time, where `M` is the total number of non-empty
		values across all inputs. This is due to the need for an internal sort in
		order to concatenate efficiently across an arbitrary dimension.
		
		For example, if `concat_dim = 1` and the inputs are
		
		    sp_inputs[0]: shape = [2, 3]
		    [0, 2]: "a"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		    sp_inputs[1]: shape = [2, 4]
		    [0, 1]: "d"
		    [0, 2]: "e"
		
		then the output will be
		
		    shape = [2, 7]
		    [0, 2]: "a"
		    [0, 4]: "d"
		    [0, 5]: "e"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		Graphically this is equivalent to doing
		
		    [    a] concat [  d e  ] = [    a   d e  ]
		    [b c  ]        [       ]   [b c          ]
		
		Another example, if 'concat_dim = 1' and the inputs are
		
		    sp_inputs[0]: shape = [3, 3]
		    [0, 2]: "a"
		    [1, 0]: "b"
		    [2, 1]: "c"
		
		    sp_inputs[1]: shape = [2, 4]
		    [0, 1]: "d"
		    [0, 2]: "e"
		
		if expand_nonconcat_dim = False, this will result in an error. But if
		expand_nonconcat_dim = True, this will result in:
		
		    shape = [3, 7]
		    [0, 2]: "a"
		    [0, 4]: "d"
		    [0, 5]: "e"
		    [1, 0]: "b"
		    [2, 1]: "c"
		
		Graphically this is equivalent to doing
		
		    [    a] concat [  d e  ] = [    a   d e  ]
		    [b    ]        [       ]   [b            ]
		    [  c  ]                    [  c          ]
		
		
		Args:
		  concat_dim: Dimension to concatenate along.
		  sp_inputs: List of `SparseTensor` to concatenate.
		  name: A name prefix for the returned tensors (optional).
		  expand_nonconcat_dim: Whether to allow the expansion in the non-concat
		    dimensions. Defaulted to False.
		
		Returns:
		  A `SparseTensor` with the concatenated output.
		
		Raises:
		  TypeError: If `sp_inputs` is not a list of `SparseTensor`.
	**/
	static public function sparse_concat(concat_dim:Dynamic, sp_inputs:Dynamic, ?name:Dynamic, ?expand_nonconcat_dim:Dynamic):Dynamic;
	/**
		Adds up a SparseTensor and a dense Tensor, using these special rules:
		
		(1) Broadcasts the dense side to have the same shape as the sparse side, if
		    eligible;
		(2) Then, only the dense values pointed to by the indices of the SparseTensor
		    participate in the cwise addition.
		
		By the rules, the result is a logical SparseTensor with exactly the same
		indices and shape, but possibly with different non-zero values.  The output of
		this Op is the resultant non-zero values.
		
		Args:
		  sp_t: the SparseTensor operand.
		  dense_t: the dense Tensor operand; must have the same dtype and a
		    broadcast-compatible shape as `sp_t`.
		
		Returns:
		  output: the SparseTensor output.
	**/
	static public function sparse_dense_cwise_add(sp_t:Dynamic, dense_t:Dynamic):Dynamic;
	/**
		Component-wise divides a SparseTensor by a dense Tensor.
		
		*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
		the other direction.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
		  1-D.  The `N` values that are operated on.
	**/
	static public function sparse_dense_cwise_div(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Component-wise multiplies a SparseTensor by a dense Tensor.
		
		The output locations corresponding to the implicitly zero elements in the sparse
		tensor will be zero (i.e., will not take up storage space), regardless of the
		contents of the dense tensor (even if it's +/-INF and that INF*0 == NaN).
		
		*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
		the other direction.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
		  1-D.  The `N` values that are operated on.
	**/
	static public function sparse_dense_cwise_mul(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fills empty rows in the input 2-D `SparseTensor` with a default value.
		
		This op adds entries with the specified `default_value` at index
		`[row, 0]` for any row in the input that does not already have a value.
		
		For example, suppose `sp_input` has shape `[5, 6]` and non-empty values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		    [3, 1]: d
		
		Rows 1 and 4 are empty, so the output will be of shape `[5, 6]` with values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [1, 0]: default_value
		    [2, 0]: c
		    [3, 1]: d
		    [4, 0]: default_value
		
		Note that the input may have empty columns at the end, with no effect on
		this op.
		
		The output `SparseTensor` will be in row-major order and will have the
		same shape as the input.
		
		This op also returns an indicator vector such that
		
		    empty_row_indicator[i] = True iff row i was an empty row.
		
		Args:
		  sp_input: A `SparseTensor` with shape `[N, M]`.
		  default_value: The value to fill for empty rows, with the same type as
		    `sp_input.`
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  sp_ordered_output: A `SparseTensor` with shape `[N, M]`, and with all empty
		    rows filled in with `default_value`.
		  empty_row_indicator: A bool vector of length `N` indicating whether each
		    input row was empty.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_fill_empty_rows(sp_input:Dynamic, default_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Masks elements of `IndexedSlices`.
		
		Given an `IndexedSlices` instance `a`, returns another `IndexedSlices` that
		contains a subset of the slices of `a`. Only the slices at indices not
		specified in `mask_indices` are returned.
		
		This is useful when you need to extract a subset of slices in an
		`IndexedSlices` object.
		
		For example:
		
		```python
		# `a` contains slices at indices [12, 26, 37, 45] from a large tensor
		# with shape [1000, 10]
		a.indices => [12, 26, 37, 45]
		tf.shape(a.values) => [4, 10]
		
		# `b` will be the subset of `a` slices at its second and third indices, so
		# we want to mask its first and last indices (which are at absolute
		# indices 12, 45)
		b = tf.sparse_mask(a, [12, 45])
		
		b.indices => [26, 37]
		tf.shape(b.values) => [2, 10]
		
		```
		
		Args:
		  * `a`: An `IndexedSlices` instance.
		  * `mask_indices`: Indices of elements to mask.
		  * `name`: A name for the operation (optional).
		
		Returns:
		  The masked `IndexedSlices` instance.
	**/
	static public function sparse_mask(a:Dynamic, mask_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiply matrix "a" by matrix "b".
		
		The inputs must be two-dimensional matrices and the inner dimension of "a" must
		match the outer dimension of "b". This op is optimized for the case where at
		least one of "a" or "b" is sparse. The breakeven for using this versus a dense
		matrix multiply on one platform was 30% zero values in the sparse matrix.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `bfloat16`.
		  b: A `Tensor`. Must be one of the following types: `float32`, `bfloat16`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		  transpose_b: An optional `bool`. Defaults to `False`.
		  a_is_sparse: An optional `bool`. Defaults to `False`.
		  b_is_sparse: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function sparse_matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise max of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		Example:
		
		```python
		sp_zero = ops.SparseTensor([[0]], [0], [7])
		sp_one = ops.SparseTensor([[1]], [1], [7])
		res = tf.sparse_maximum(sp_zero, sp_one).eval()
		# "res" should be equal to SparseTensor([[0], [1]], [0, 1], [7]).
		```
		
		Args:
		  sp_a: a `SparseTensor` operand whose dtype is real, and indices
		    lexicographically ordered.
		  sp_b: the other `SparseTensor` operand with the same requirements (and the
		    same shape).
		  name: optional name of the operation.
		Returns:
		  output: the output SparseTensor.
	**/
	static public function sparse_maximum(sp_a:Dynamic, sp_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Combines a batch of feature ids and values into a single `SparseTensor`.
		
		The most common use case for this function occurs when feature ids and
		their corresponding values are stored in `Example` protos on disk.
		`parse_example` will return a batch of ids and a batch of values, and this
		function joins them into a single logical `SparseTensor` for use in
		functions such as `sparse_tensor_dense_matmul`, `sparse_to_dense`, etc.
		
		The `SparseTensor` returned by this function has the following properties:
		
		  - `indices` is equivalent to `sp_ids.indices` with the last
		    dimension discarded and replaced with `sp_ids.values`.
		  - `values` is simply `sp_values.values`.
		  - If `sp_ids.shape = [D0, D1, ..., Dn, K]`, then
		    `output.shape = [D0, D1, ..., Dn, vocab_size]`.
		
		For example, consider the following feature vectors:
		
		```python
		  vector1 = [-3, 0, 0, 0, 0, 0]
		  vector2 = [ 0, 1, 0, 4, 1, 0]
		  vector3 = [ 5, 0, 0, 9, 0, 0]
		```
		
		These might be stored sparsely in the following Example protos by storing
		only the feature ids (column number if the vectors are treated as a matrix)
		of the non-zero elements and the corresponding values:
		
		```python
		  examples = [Example(features={
		                  "ids": Feature(int64_list=Int64List(value=[0])),
		                  "values": Feature(float_list=FloatList(value=[-3]))}),
		              Example(features={
		                  "ids": Feature(int64_list=Int64List(value=[1, 4, 3])),
		                  "values": Feature(float_list=FloatList(value=[1, 1, 4]))}),
		              Example(features={
		                  "ids": Feature(int64_list=Int64List(value=[0, 3])),
		                  "values": Feature(float_list=FloatList(value=[5, 9]))})]
		```
		
		The result of calling parse_example on these examples will produce a
		dictionary with entries for "ids" and "values". Passing those two objects
		to this function along with vocab_size=6, will produce a `SparseTensor` that
		sparsely represents all three instances. Namely, the `indices` property will
		contain the coordinates of the non-zero entries in the feature matrix (the
		first dimension is the row number in the matrix, i.e., the index within the
		batch, and the second dimension is the column number, i.e., the feature id);
		`values` will contain the actual values. `shape` will be the shape of the
		original matrix, i.e., (3, 6). For our example above, the output will be
		equal to:
		
		```python
		  SparseTensor(indices=[[0, 0], [1, 1], [1, 3], [1, 4], [2, 0], [2, 3]],
		               values=[-3, 1, 4, 1, 5, 9],
		               shape=[3, 6])
		```
		
		Args:
		  sp_ids: A `SparseTensor` with `values` property of type `int32`
		    or `int64`.
		  sp_values: A`SparseTensor` of any type.
		  vocab_size: A scalar `int64` Tensor (or Python int) containing the new size
		    of the last dimension, `all(0 <= sp_ids.values < vocab_size)`.
		  name: A name prefix for the returned tensors (optional)
		  already_sorted: A boolean to specify whether the per-batch values in
		   `sp_values` are already sorted. If so skip sorting, False by default
		   (optional).
		
		Returns:
		  A `SparseTensor` compactly representing a batch of feature ids and values,
		  useful for passing to functions that expect such a `SparseTensor`.
		
		Raises:
		  TypeError: If `sp_ids` or `sp_values` are not a `SparseTensor`.
	**/
	static public function sparse_merge(sp_ids:Dynamic, sp_values:Dynamic, vocab_size:Dynamic, ?name:Dynamic, ?already_sorted:Dynamic):Dynamic;
	/**
		Returns the element-wise min of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		Example:
		
		```python
		sp_zero = ops.SparseTensor([[0]], [0], [7])
		sp_one = ops.SparseTensor([[1]], [1], [7])
		res = tf.sparse_minimum(sp_zero, sp_one).eval()
		# "res" should be equal to SparseTensor([[0], [1]], [0, 0], [7]).
		```
		
		Args:
		  sp_a: a `SparseTensor` operand whose dtype is real, and indices
		    lexicographically ordered.
		  sp_b: the other `SparseTensor` operand with the same requirements (and the
		    same shape).
		  name: optional name of the operation.
		Returns:
		  output: the output SparseTensor.
	**/
	static public function sparse_minimum(sp_a:Dynamic, sp_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inserts a placeholder for a sparse tensor that will be always fed.
		
		**Important**: This sparse tensor will produce an error if evaluated.
		Its value must be fed using the `feed_dict` optional argument to
		`Session.run()`, `Tensor.eval()`, or `Operation.run()`.
		
		For example:
		
		```python
		x = tf.sparse_placeholder(tf.float32)
		y = tf.sparse_reduce_sum(x)
		
		with tf.Session() as sess:
		  print(sess.run(y))  # ERROR: will fail because x was not fed.
		
		  indices = np.array([[3, 2, 0], [4, 5, 1]], dtype=np.int64)
		  values = np.array([1.0, 2.0], dtype=np.float32)
		  shape = np.array([7, 9, 2], dtype=np.int64)
		  print(sess.run(y, feed_dict={
		    x: tf.SparseTensorValue(indices, values, shape)}))  # Will succeed.
		  print(sess.run(y, feed_dict={
		    x: (indices, values, shape)}))  # Will succeed.
		
		  sp = tf.SparseTensor(indices=indices, values=values, shape=shape)
		  sp_value = sp.eval(session)
		  print(sess.run(y, feed_dict={x: sp_value}))  # Will succeed.
		```
		
		Args:
		  dtype: The type of `values` elements in the tensor to be fed.
		  shape: The shape of the tensor to be fed (optional). If the shape is not
		    specified, you can feed a sparse tensor of any shape.
		  name: A name for prefixing the operations (optional).
		
		Returns:
		  A `SparseTensor` that may be used as a handle for feeding a value, but not
		  evaluated directly.
	**/
	static public function sparse_placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a SparseTensor.
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_sum()`.  In particular, this Op also returns a dense `Tensor`
		instead of a sparse one.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keep_dims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		similar to the indexing rules in Python.
		
		For example:
		
		```python
		# 'x' represents [[1, ?, 1]
		#                 [?, 1, ?]]
		# where ? is implictly-zero.
		tf.sparse_reduce_sum(x) ==> 3
		tf.sparse_reduce_sum(x, 0) ==> [1, 1, 1]
		tf.sparse_reduce_sum(x, 1) ==> [2, 1]  # Can also use -1 as the axis.
		tf.sparse_reduce_sum(x, 1, keep_dims=True) ==> [[2], [1]]
		tf.sparse_reduce_sum(x, [0, 1]) ==> 3
		```
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  reduction_axes: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keep_dims: If true, retain reduced dimensions with length 1.
		
		Returns:
		  The reduced Tensor.
	**/
	static public function sparse_reduce_sum(sp_input:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Reorders a `SparseTensor` into the canonical, row-major ordering.
		
		Note that by convention, all sparse ops preserve the canonical ordering
		along increasing dimension number. The only time ordering can be violated
		is during manual manipulation of the indices and values to add entries.
		
		Reordering does not affect the shape of the `SparseTensor`.
		
		For example, if `sp_input` has shape `[4, 5]` and `indices` / `values`:
		
		    [0, 3]: b
		    [0, 1]: a
		    [3, 1]: d
		    [2, 0]: c
		
		then the output will be a `SparseTensor` of shape `[4, 5]` and
		`indices` / `values`:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		    [3, 1]: d
		
		Args:
		  sp_input: The input `SparseTensor`.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` with the same shape and non-empty values, but in
		  canonical ordering.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_reorder(sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resets the shape of a `SparseTensor` with indices and values unchanged.
		
		If `new_shape` is None, returns a copy of `sp_input` with its shape reset
		to the tight bounding box of `sp_input`.
		
		If `new_shape` is provided, then it must be larger or equal in all dimensions
		compared to the shape of `sp_input`. When this condition is met, the returned
		SparseTensor will have its shape reset to `new_shape` and its indices and
		values unchanged from that of `sp_input.`
		
		For example:
		
		  Consider a `sp_input` with shape [2, 3, 5]:
		
		    [0, 0, 1]: a
		    [0, 1, 0]: b
		    [0, 2, 2]: c
		    [1, 0, 3]: d
		
		  - It is an error to set `new_shape` as [3, 7] since this represents a
		    rank-2 tensor while `sp_input` is rank-3. This is either a ValueError
		    during graph construction (if both shapes are known) or an OpError during
		    run time.
		
		  - Setting `new_shape` as [2, 3, 6] will be fine as this shape is larger or
		    eqaul in every dimension compared to the original shape [2, 3, 5].
		
		  - On the other hand, setting new_shape as [2, 3, 4] is also an error: The
		    third dimension is smaller than the original shape [2, 3, 5] (and an
		    `InvalidArgumentError` will be raised).
		
		  - If `new_shape` is None, the returned SparseTensor will have a shape
		    [2, 3, 4], which is the tight bounding box of `sp_input`.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  new_shape: None or a vector representing the new shape for the returned
		    `SpraseTensor`.
		
		Returns:
		  A `SparseTensor` indices and values unchanged from `input_sp`. Its shape is
		    `new_shape` if that is set. Otherwise it is  the tight bounding box of
		     `input_sp`
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
		  ValueError: If `new_shape` represents a tensor with a different rank from
		    that of `sp_input` (if shapes are known when graph is constructed).
		  OpError:
		    - If `new_shape` has dimension sizes that are too small.
		    - If shapes are not known during graph construction time, and during run
		      time it is found out that the ranks do not match.
	**/
	static public function sparse_reset_shape(sp_input:Dynamic, ?new_shape:Dynamic):Dynamic;
	/**
		Reshapes a `SparseTensor` to represent values in a new dense shape.
		
		This operation has the same semantics as `reshape` on the represented dense
		tensor.  The indices of non-empty values in `sp_input` are recomputed based
		on the new dense shape, and a new `SparseTensor` is returned containing the
		new indices and new shape.  The order of non-empty values in `sp_input` is
		unchanged.
		
		If one component of `shape` is the special value -1, the size of that
		dimension is computed so that the total dense size remains constant.  At
		most one component of `shape` can be -1.  The number of dense elements
		implied by `shape` must be the same as the number of dense elements
		originally represented by `sp_input`.
		
		For example, if `sp_input` has shape `[2, 3, 6]` and `indices` / `values`:
		
		    [0, 0, 0]: a
		    [0, 0, 1]: b
		    [0, 1, 0]: c
		    [1, 0, 0]: d
		    [1, 2, 3]: e
		
		and `shape` is `[9, -1]`, then the output will be a `SparseTensor` of
		shape `[9, 4]` and `indices` / `values`:
		
		    [0, 0]: a
		    [0, 1]: b
		    [1, 2]: c
		    [4, 2]: d
		    [8, 1]: e
		
		Args:
		  sp_input: The input `SparseTensor`.
		  shape: A 1-D (vector) int64 `Tensor` specifying the new dense shape of the
		    represented `SparseTensor`.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` with the same non-empty values but with indices calculated
		  by the new dense shape.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_reshape(sp_input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retains specified non-empty values within a `SparseTensor`.
		
		For example, if `sp_input` has shape `[4, 5]` and 4 non-empty string values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		    [3, 1]: d
		
		and `to_retain = [True, False, False, True]`, then the output will
		be a `SparseTensor` of shape `[4, 5]` with 2 non-empty values:
		
		    [0, 1]: a
		    [3, 1]: d
		
		Args:
		  sp_input: The input `SparseTensor` with `N` non-empty elements.
		  to_retain: A bool vector of length `N` with `M` true values.
		
		Returns:
		  A `SparseTensor` with the same shape as the input and `M` non-empty
		  elements corresponding to the true positions in `to_retain`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_retain(sp_input:Dynamic, to_retain:Dynamic):Dynamic;
	/**
		Computes the mean along sparse segments of a tensor.
		
		Read [the section on
		Segmentation](../../api_docs/python/math_ops.md#segmentation) for an explanation
		of segments.
		
		Like `SegmentMean`, but `segment_ids` can have rank less than `data`'s first
		dimension, selecting a subset of dimension 0, specified by `indices`.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  indices: A `Tensor` of type `int32`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
		  Has same shape as data, except for dimension 0 which
		  has size `k`, the number of segments.
	**/
	static public function sparse_segment_mean(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentMean.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    gradient propagated to the SparseSegmentMean op.
		  indices: A `Tensor` of type `int32`.
		    indices passed to the corresponding SparseSegmentMean op.
		  segment_ids: A `Tensor` of type `int32`.
		    segment_ids passed to the corresponding SparseSegmentMean op.
		  output_dim0: A `Tensor` of type `int32`.
		    dimension 0 of "data" passed to SparseSegmentMean op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function sparse_segment_mean_grad(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor divided by the sqrt of N.
		
		N is the size of the segment being reduced.
		
		Read [the section on
		Segmentation](../../api_docs/python/math_ops.md#segmentation) for an explanation
		of segments.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  indices: A `Tensor` of type `int32`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
		  Has same shape as data, except for dimension 0 which
		  has size `k`, the number of segments.
	**/
	static public function sparse_segment_sqrt_n(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentSqrtN.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    gradient propagated to the SparseSegmentSqrtN op.
		  indices: A `Tensor` of type `int32`.
		    indices passed to the corresponding SparseSegmentSqrtN op.
		  segment_ids: A `Tensor` of type `int32`.
		    segment_ids passed to the corresponding SparseSegmentSqrtN op.
		  output_dim0: A `Tensor` of type `int32`.
		    dimension 0 of "data" passed to SparseSegmentSqrtN op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function sparse_segment_sqrt_n_grad(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor.
		
		Read [the section on
		Segmentation](../../api_docs/python/math_ops.md#segmentation) for an explanation
		of segments.
		
		Like `SegmentSum`, but `segment_ids` can have rank less than `data`'s first
		dimension, selecting a subset of dimension 0, specified by `indices`.
		
		For example:
		
		```prettyprint
		c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])
		
		# Select two rows, one segment.
		tf.sparse_segment_sum(c, tf.constant([0, 1]), tf.constant([0, 0]))
		  ==> [[0 0 0 0]]
		
		# Select two rows, two segment.
		tf.sparse_segment_sum(c, tf.constant([0, 1]), tf.constant([0, 1]))
		  ==> [[ 1  2  3  4]
		       [-1 -2 -3 -4]]
		
		# Select all rows, two segments.
		tf.sparse_segment_sum(c, tf.constant([0, 1, 2]), tf.constant([0, 0, 1]))
		  ==> [[0 0 0 0]
		       [5 6 7 8]]
		
		# Which is equivalent to:
		tf.segment_sum(c, tf.constant([0, 0, 1]))
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  indices: A `Tensor` of type `int32`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
		  Has same shape as data, except for dimension 0 which
		  has size `k`, the number of segments.
	**/
	static public function sparse_segment_sum(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies softmax to a batched N-D `SparseTensor`.
		
		The inputs represent an N-D SparseTensor  with logical shape `[..., B, C]`
		(where `N >= 2`), and with indices sorted in the canonical lexicographic
		order.
		
		This op is equivalent to applying the normal `tf.nn.softmax()` to each
		innermost logical submatrix with shape `[B, C]`, but with the catch that *the
		implicitly zero elements do not participate*.  Specifically, the algorithm is
		equivalent to:
		
		  (1) Applies `tf.nn.softmax()` to a densified view of each innermost
		      submatrix with shape `[B, C]`, along the size-C dimension;
		  (2) Masks out the original implicitly-zero locations;
		  (3) Renormalizes the remaining elements.
		
		Hence, the `SparseTensor` result has exactly the same non-zero indices and
		shape.
		
		Example:
		
		```python
		# First batch:
		# [?   e.]
		# [1.  ? ]
		# Second batch:
		# [e   ? ]
		# [e   e ]
		shape = [2, 2, 2]  # 3-D SparseTensor
		values = np.asarray([[[0., np.e], [1., 0.]], [[np.e, 0.], [np.e, np.e]]])
		indices = np.vstack(np.where(values)).astype(np.int64).T
		
		result = tf.sparse_softmax(tf.SparseTensor(indices, values, shape))
		# ...returning a 3-D SparseTensor, equivalent to:
		# [?   1.]     [1    ?]
		# [1.  ? ] and [.5  .5]
		# where ? means implicitly zero.
		```
		
		Args:
		  sp_input: N-D `SparseTensor`, where `N >= 2`.
		  name: optional name of the operation.
		Returns:
		  output: N-D `SparseTensor` representing the results.
	**/
	static public function sparse_softmax(sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise max of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, in the canonical lexicographic ordering.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    1-D.  `N` non-empty values corresponding to `a_indices`.
		  a_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  b_indices: A `Tensor` of type `int64`.
		    counterpart to `a_indices` for the other operand.
		  b_values: A `Tensor`. Must have the same type as `a_values`.
		    counterpart to `a_values` for the other operand; must be of the same dtype.
		  b_shape: A `Tensor` of type `int64`.
		    counterpart to `a_shape` for the other operand; the two shapes must be equal.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values).
		  output_indices: A `Tensor` of type `int64`. 2-D.  The indices of the output SparseTensor.
		  output_values: A `Tensor`. Has the same type as `a_values`. 1-D.  The values of the output SparseTensor.
	**/
	static public function sparse_sparse_maximum(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise min of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, in the canonical lexicographic ordering.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    1-D.  `N` non-empty values corresponding to `a_indices`.
		  a_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  b_indices: A `Tensor` of type `int64`.
		    counterpart to `a_indices` for the other operand.
		  b_values: A `Tensor`. Must have the same type as `a_values`.
		    counterpart to `a_values` for the other operand; must be of the same dtype.
		  b_shape: A `Tensor` of type `int64`.
		    counterpart to `a_shape` for the other operand; the two shapes must be equal.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values).
		  output_indices: A `Tensor` of type `int64`. 2-D.  The indices of the output SparseTensor.
		  output_values: A `Tensor`. Has the same type as `a_values`. 1-D.  The values of the output SparseTensor.
	**/
	static public function sparse_sparse_minimum(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Split a `SparseTensor` into `num_split` tensors along `split_dim`.
		
		If the `sp_input.shape[split_dim]` is not an integer multiple of `num_split`
		each slice starting from 0:`shape[split_dim] % num_split` gets extra one
		dimension. For example, if `split_dim = 1` and `num_split = 2` and the
		input is:
		
		    input_tensor = shape = [2, 7]
		    [    a   d e  ]
		    [b c          ]
		
		Graphically the output tensors are:
		
		    output_tensor[0] =
		    [    a ]
		    [b c   ]
		
		    output_tensor[1] =
		    [ d e  ]
		    [      ]
		
		Args:
		  split_dim: A 0-D `int32` `Tensor`. The dimension along which to split.
		  num_split: A Python integer. The number of ways to split.
		  sp_input: The `SparseTensor` to split.
		  name: A name for the operation (optional).
		
		Returns:
		  `num_split` `SparseTensor` objects resulting from splitting `value`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_split(split_dim:Dynamic, num_split:Dynamic, sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiply SparseTensor (of rank 2) "A" by dense matrix "B".
		
		No validity checking is performed on the indices of A.  However, the following
		input format is recommended for optimal behavior:
		
		if adjoint_a == false:
		  A should be sorted in lexicographically increasing order.  Use
		  sparse_reorder if you're not sure.
		if adjoint_a == true:
		  A should be sorted in order of increasing dimension 1 (i.e., "column major"
		  order instead of "row major" order).
		
		Deciding when to use sparse_tensor_dense_matmul vs. matmul(sp_a=True):
		
		There are a number of questions to ask in the decision process, including:
		
		* Will the SparseTensor A fit in memory if densified?
		* Is the column count of the product large (>> 1)?
		* Is the density of A larger than approximately 15%?
		
		If the answer to several of these questions is yes, consider
		converting the SparseTensor to a dense one and using tf.matmul with sp_a=True.
		
		This operation tends to perform well when A is more sparse, if the column size
		of the product is small (e.g. matrix-vector multiplication), if sp_a.shape
		takes on large values.
		
		Below is a rough speed comparison between sparse_tensor_dense_matmul,
		labelled 'sparse', and matmul(sp_a=True), labelled 'dense'.  For purposes of
		the comparison, the time spent converting from a SparseTensor to a dense
		Tensor is not included, so it is overly conservative with respect to
		the time ratio.
		
		Benchmark system:
		CPU: Intel Ivybridge with HyperThreading (6 cores) dL1:32KB dL2:256KB dL3:12MB
		GPU: NVidia Tesla k40c
		
		Compiled with:
		-c opt --config=cuda --copt=-mavx
		
		```tensorflow/python/sparse_tensor_dense_matmul_op_test --benchmarks
		A sparse [m, k] with % nonzero values between 1% and 80%
		B dense [k, n]
		
		% nnz    n       gpu     m       k       dt(dense)       dt(sparse)      dt(sparse)/dt(dense)
		0.01     1       True    100     100     0.000221166     0.00010154      0.459112
		0.01     1       True    100     1000    0.00033858      0.000109275     0.322745
		0.01     1       True    1000    100     0.000310557     9.85661e-05     0.317385
		0.01     1       True    1000    1000    0.0008721       0.000100875     0.115669
		0.01     1       False   100     100     0.000208085     0.000107603     0.51711
		0.01     1       False   100     1000    0.000327112     9.51118e-05     0.290762
		0.01     1       False   1000    100     0.000308222     0.00010345      0.335635
		0.01     1       False   1000    1000    0.000865721     0.000101397     0.117124
		0.01     10      True    100     100     0.000218522     0.000105537     0.482958
		0.01     10      True    100     1000    0.000340882     0.000111641     0.327506
		0.01     10      True    1000    100     0.000315472     0.000117376     0.372064
		0.01     10      True    1000    1000    0.000905493     0.000123263     0.136128
		0.01     10      False   100     100     0.000221529     9.82571e-05     0.44354
		0.01     10      False   100     1000    0.000330552     0.000112615     0.340687
		0.01     10      False   1000    100     0.000341277     0.000114097     0.334324
		0.01     10      False   1000    1000    0.000819944     0.000120982     0.147549
		0.01     25      True    100     100     0.000207806     0.000105977     0.509981
		0.01     25      True    100     1000    0.000322879     0.00012921      0.400181
		0.01     25      True    1000    100     0.00038262      0.000141583     0.370035
		0.01     25      True    1000    1000    0.000865438     0.000202083     0.233504
		0.01     25      False   100     100     0.000209401     0.000104696     0.499979
		0.01     25      False   100     1000    0.000321161     0.000130737     0.407076
		0.01     25      False   1000    100     0.000377012     0.000136801     0.362856
		0.01     25      False   1000    1000    0.000861125     0.00020272      0.235413
		0.2      1       True    100     100     0.000206952     9.69219e-05     0.46833
		0.2      1       True    100     1000    0.000348674     0.000147475     0.422959
		0.2      1       True    1000    100     0.000336908     0.00010122      0.300439
		0.2      1       True    1000    1000    0.001022        0.000203274     0.198898
		0.2      1       False   100     100     0.000207532     9.5412e-05      0.459746
		0.2      1       False   100     1000    0.000356127     0.000146824     0.41228
		0.2      1       False   1000    100     0.000322664     0.000100918     0.312764
		0.2      1       False   1000    1000    0.000998987     0.000203442     0.203648
		0.2      10      True    100     100     0.000211692     0.000109903     0.519165
		0.2      10      True    100     1000    0.000372819     0.000164321     0.440753
		0.2      10      True    1000    100     0.000338651     0.000144806     0.427596
		0.2      10      True    1000    1000    0.00108312      0.000758876     0.70064
		0.2      10      False   100     100     0.000215727     0.000110502     0.512231
		0.2      10      False   100     1000    0.000375419     0.0001613       0.429653
		0.2      10      False   1000    100     0.000336999     0.000145628     0.432132
		0.2      10      False   1000    1000    0.00110502      0.000762043     0.689618
		0.2      25      True    100     100     0.000218705     0.000129913     0.594009
		0.2      25      True    100     1000    0.000394794     0.00029428      0.745402
		0.2      25      True    1000    100     0.000404483     0.0002693       0.665788
		0.2      25      True    1000    1000    0.0012002       0.00194494      1.62052
		0.2      25      False   100     100     0.000221494     0.0001306       0.589632
		0.2      25      False   100     1000    0.000396436     0.000297204     0.74969
		0.2      25      False   1000    100     0.000409346     0.000270068     0.659754
		0.2      25      False   1000    1000    0.00121051      0.00193737      1.60046
		0.5      1       True    100     100     0.000214981     9.82111e-05     0.456836
		0.5      1       True    100     1000    0.000415328     0.000223073     0.537101
		0.5      1       True    1000    100     0.000358324     0.00011269      0.314492
		0.5      1       True    1000    1000    0.00137612      0.000437401     0.317851
		0.5      1       False   100     100     0.000224196     0.000101423     0.452386
		0.5      1       False   100     1000    0.000400987     0.000223286     0.556841
		0.5      1       False   1000    100     0.000368825     0.00011224      0.304318
		0.5      1       False   1000    1000    0.00136036      0.000429369     0.31563
		0.5      10      True    100     100     0.000222125     0.000112308     0.505608
		0.5      10      True    100     1000    0.000461088     0.00032357      0.701753
		0.5      10      True    1000    100     0.000394624     0.000225497     0.571422
		0.5      10      True    1000    1000    0.00158027      0.00190898      1.20801
		0.5      10      False   100     100     0.000232083     0.000114978     0.495418
		0.5      10      False   100     1000    0.000454574     0.000324632     0.714146
		0.5      10      False   1000    100     0.000379097     0.000227768     0.600817
		0.5      10      False   1000    1000    0.00160292      0.00190168      1.18638
		0.5      25      True    100     100     0.00023429      0.000151703     0.647501
		0.5      25      True    100     1000    0.000497462     0.000598873     1.20386
		0.5      25      True    1000    100     0.000460778     0.000557038     1.20891
		0.5      25      True    1000    1000    0.00170036      0.00467336      2.74845
		0.5      25      False   100     100     0.000228981     0.000155334     0.678371
		0.5      25      False   100     1000    0.000496139     0.000620789     1.25124
		0.5      25      False   1000    100     0.00045473      0.000551528     1.21287
		0.5      25      False   1000    1000    0.00171793      0.00467152      2.71927
		0.8      1       True    100     100     0.000222037     0.000105301     0.47425
		0.8      1       True    100     1000    0.000410804     0.000329327     0.801664
		0.8      1       True    1000    100     0.000349735     0.000131225     0.375212
		0.8      1       True    1000    1000    0.00139219      0.000677065     0.48633
		0.8      1       False   100     100     0.000214079     0.000107486     0.502085
		0.8      1       False   100     1000    0.000413746     0.000323244     0.781261
		0.8      1       False   1000    100     0.000348983     0.000131983     0.378193
		0.8      1       False   1000    1000    0.00136296      0.000685325     0.50282
		0.8      10      True    100     100     0.000229159     0.00011825      0.516017
		0.8      10      True    100     1000    0.000498845     0.000532618     1.0677
		0.8      10      True    1000    100     0.000383126     0.00029935      0.781336
		0.8      10      True    1000    1000    0.00162866      0.00307312      1.88689
		0.8      10      False   100     100     0.000230783     0.000124958     0.541452
		0.8      10      False   100     1000    0.000493393     0.000550654     1.11606
		0.8      10      False   1000    100     0.000377167     0.000298581     0.791642
		0.8      10      False   1000    1000    0.00165795      0.00305103      1.84024
		0.8      25      True    100     100     0.000233496     0.000175241     0.75051
		0.8      25      True    100     1000    0.00055654      0.00102658      1.84458
		0.8      25      True    1000    100     0.000463814     0.000783267     1.68875
		0.8      25      True    1000    1000    0.00186905      0.00755344      4.04132
		0.8      25      False   100     100     0.000240243     0.000175047     0.728625
		0.8      25      False   100     1000    0.000578102     0.00104499      1.80763
		0.8      25      False   1000    100     0.000485113     0.000776849     1.60138
		0.8      25      False   1000    1000    0.00211448      0.00752736      3.55992
		```
		
		Args:
		  sp_a: SparseTensor A, of rank 2.
		  b: A dense Matrix with the same dtype as sp_a.
		  adjoint_a: Use the adjoint of A in the matrix multiply.  If A is complex,
		    this is transpose(conj(A)).  Otherwise it's transpose(A).
		  adjoint_b: Use the adjoint of B in the matrix multiply.  If B is complex,
		    this is transpose(conj(B)).  Otherwise it's transpose(B).
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A dense matrix (pseudo-code in dense np.matrix notation):
		    A = A.H if adjoint_a else A
		    B = B.H if adjoint_b else B
		    return A*B
	**/
	static public function sparse_tensor_dense_matmul(sp_a:Dynamic, b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a `SparseTensor` into a dense tensor.
		
		This op is a convenience wrapper around `sparse_to_dense` for `SparseTensor`s.
		
		For example, if `sp_input` has shape `[3, 5]` and non-empty string values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		
		and `default_value` is `x`, then the output will be a dense `[3, 5]`
		string tensor with values:
		
		    [[x a x b x]
		     [x x x x x]
		     [c x x x x]]
		
		Indices must be without repeats.  This is only
		tested if validate_indices is True.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  default_value: Scalar value to set for indices not specified in
		    `sp_input`.  Defaults to zero.
		  validate_indices: A boolean value.  If `True`, indices are checked to make
		    sure they are sorted in lexicographic order and that there are no repeats.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A dense tensor with shape `sp_input.shape` and values specified by
		  the non-empty values in `sp_input`. Indices not in `sp_input` are assigned
		  `default_value`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_tensor_to_dense(sp_input:Dynamic, ?default_value:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a sparse representation into a dense tensor.
		
		Builds an array `dense` with shape `output_shape` such that
		
		```python
		# If sparse_indices is scalar
		dense[i] = (i == sparse_indices ? sparse_values : default_value)
		
		# If sparse_indices is a vector, then for each i
		dense[sparse_indices[i]] = sparse_values[i]
		
		# If sparse_indices is an n by d matrix, then for each i in [0, n)
		dense[sparse_indices[i][0], ..., sparse_indices[i][d-1]] = sparse_values[i]
		```
		
		All other values in `dense` are set to `default_value`.  If `sparse_values`
		is a scalar, all sparse indices are set to this single value.
		
		Indices should be sorted in lexicographic order, and indices must not
		contain any repeats. If `validate_indices` is True, these properties
		are checked during execution.
		
		Args:
		  sparse_indices: A 0-D, 1-D, or 2-D `Tensor` of type `int32` or `int64`.
		    `sparse_indices[i]` contains the complete index where `sparse_values[i]`
		    will be placed.
		  output_shape: A 1-D `Tensor` of the same type as `sparse_indices`.  Shape
		    of the dense output tensor.
		  sparse_values: A 0-D or 1-D `Tensor`.  Values corresponding to each row of
		    `sparse_indices`, or a scalar value to be used for all sparse indices.
		  default_value: A 0-D `Tensor` of the same type as `sparse_values`.  Value
		    to set for indices not specified in `sparse_indices`.  Defaults to zero.
		  validate_indices: A boolean value.  If True, indices are checked to make
		    sure they are sorted in lexicographic order and that there are no repeats.
		  name: A name for the operation (optional).
		
		Returns:
		  Dense `Tensor` of shape `output_shape`.  Has the same type as
		  `sparse_values`.
	**/
	static public function sparse_to_dense(sparse_indices:Dynamic, output_shape:Dynamic, sparse_values:Dynamic, ?default_value:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a `SparseTensor` of ids into a dense bool indicator tensor.
		
		The last dimension of `sp_input.indices` is discarded and replaced with
		the values of `sp_input`.  If `sp_input.shape = [D0, D1, ..., Dn, K]`, then
		`output.shape = [D0, D1, ..., Dn, vocab_size]`, where
		
		    output[d_0, d_1, ..., d_n, sp_input[d_0, d_1, ..., d_n, k]] = True
		
		and False elsewhere in `output`.
		
		For example, if `sp_input.shape = [2, 3, 4]` with non-empty values:
		
		    [0, 0, 0]: 0
		    [0, 1, 0]: 10
		    [1, 0, 3]: 103
		    [1, 1, 2]: 150
		    [1, 1, 3]: 149
		    [1, 1, 4]: 150
		    [1, 2, 1]: 121
		
		and `vocab_size = 200`, then the output will be a `[2, 3, 200]` dense bool
		tensor with False everywhere except at positions
		
		    (0, 0, 0), (0, 1, 10), (1, 0, 103), (1, 1, 149), (1, 1, 150),
		    (1, 2, 121).
		
		Note that repeats are allowed in the input SparseTensor.
		This op is useful for converting `SparseTensor`s into dense formats for
		compatibility with ops that expect dense tensors.
		
		The input `SparseTensor` must be in row-major order.
		
		Args:
		  sp_input: A `SparseTensor` with `values` property of type `int32` or
		    `int64`.
		  vocab_size: A scalar int64 Tensor (or Python int) containing the new size
		    of the last dimension, `all(0 <= sp_input.values < vocab_size)`.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A dense bool indicator tensor representing the indices with specified value.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_to_indicator(sp_input:Dynamic, vocab_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits a tensor into `num_split` tensors along one dimension.
		
		Splits `value` along dimension `split_dim` into `num_split` smaller tensors.
		Requires that `num_split` evenly divide `value.shape[split_dim]`.
		
		For example:
		
		```python
		# 'value' is a tensor with shape [5, 30]
		# Split 'value' into 3 tensors along dimension 1
		split0, split1, split2 = tf.split(1, 3, value)
		tf.shape(split0) ==> [5, 10]
		```
		
		Note: If you are splitting along an axis by the length of that axis, consider
		using unpack, e.g.
		
		```python
		num_items = t.get_shape()[axis].value
		[tf.squeeze(s, [axis]) for s in tf.split(axis, num_items, t)]
		```
		
		can be rewritten as
		
		```python
		tf.unpack(t, axis=axis)
		```
		
		Args:
		  split_dim: A 0-D `int32` `Tensor`. The dimension along which to split.
		    Must be in the range `[0, rank(value))`.
		  num_split: A Python integer. The number of ways to split.
		  value: The `Tensor` to split.
		  name: A name for the operation (optional).
		
		Returns:
		  `num_split` `Tensor` objects resulting from splitting `value`.
	**/
	static public function split(split_dim:Dynamic, num_split:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes square root of x element-wise.
		
		I.e., \(y = \sqrt{x} = x^{1/2}\).
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
	**/
	static public function sqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes square of x element-wise.
		
		I.e., \(y = x * x = x^2\).
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`. Has the same type as `x`.
	**/
	static public function square(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns (x - y)(x - y) element-wise.
		
		*NOTE*: `SquaredDifference` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function squared_difference(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Removes dimensions of size 1 from the shape of a tensor.
		
		Given a tensor `input`, this operation returns a tensor of the same type with
		all dimensions of size 1 removed. If you don't want to remove all size 1
		dimensions, you can remove specific size 1 dimensions by specifying
		`squeeze_dims`.
		
		For example:
		
		```prettyprint
		# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		shape(squeeze(t)) ==> [2, 3]
		```
		
		Or, to remove specific size 1 dimensions:
		
		```prettyprint
		# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		shape(squeeze(t, [2, 4])) ==> [1, 2, 3, 1]
		```
		
		Args:
		  input: A `Tensor`. The `input` to squeeze.
		  squeeze_dims: An optional list of `ints`. Defaults to `[]`.
		    If specified, only squeezes the dimensions listed. The dimension
		    index starts at 0. It is an error to squeeze a dimension that is not 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Contains the same data as `input`, but has one or more dimensions of
		  size 1 removed.
	**/
	static public function squeeze(input:Dynamic, ?squeeze_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stops gradient computation.
		
		When executed in a graph, this op outputs its input tensor as-is.
		
		When building ops to compute gradients, this op prevents the contribution of
		its inputs to be taken into account.  Normally, the gradient generator adds ops
		to a graph to compute the derivatives of a specified 'loss' by recursively
		finding out inputs that contributed to its computation.  If you insert this op
		in the graph it inputs are masked from the gradient generator.  They are not
		taken into account for computing gradients.
		
		This is useful any time you want to compute a value with TensorFlow but need
		to pretend that the value was a constant. Some examples include:
		
		*  The *EM* algorithm where the *M-step* should not involve backpropagation
		   through the output of the *E-step*.
		*  Contrastive divergence training of Boltzmann machines where, when
		   differentiating the energy function, the training must not backpropagate
		   through the graph that generated the samples from the model.
		*  Adversarial training, where no backprop should happen through the adversarial
		   example generation process.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function stop_gradient(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts a strided slice from a tensor.
		
		To a first order, this operation extracts a slice of size `end - begin`
		from a tensor `input`
		starting at the location specified by `begin`. The slice continues by adding
		`stride` to the `begin` index until all dimensions are not less than `end`.
		Note that components of stride can be negative, which causes a reverse
		slice.
		
		This operation can be thought of an encoding of a numpy style sliced
		range. Given a python slice input[<spec0>, <spec1>, ..., <specn>]
		this function will be called as follows.
		
		`begin`, `end`, and `strides` will be all length n. n is in general
		not the same dimensionality as `input`.
		
		For the ith spec,
		`begin_mask`, `end_mask`, `ellipsis_mask`, `new_axis_mask`,
		and `shrink_axis_mask` will have the ith bit corrsponding to
		the ith spec.
		
		If the ith bit of `begin_mask` is non-zero, `begin[i]` is ignored and
		the fullest possible range in that dimension is used instead.
		`end_mask` works analogously, except with the end range.
		
		`foo[5:,:,:3]` on a 7x8x9 tensor is equivalent to `foo[5:7,0:8,0:3]`.
		`foo[::-1]` reverses a tensor with shape 8.
		
		
		If the ith bit of `ellipsis_mask`, as many unspecified dimensions
		as needed will be inserted between other dimensions. Only one
		non-zero bit is allowed in `ellipsis_mask`.
		
		For example `foo[3:5,...,4:5]` on a shape 10x3x3x10 tensor is
		equivalent to `foo[3:5,:,:,4:5]` and
		`foo[3:5,...]` is equivalent to `foo[3:5,:,:,:]`.
		
		If the ith bit of `new_axis_mask` is one, then a `begin`,
		`end`, and `stride` are ignored and a new length 1 dimension is
		added at this point in the output tensor.
		
		For example `foo[3:5,4]` on a 10x8 tensor produces a shape 2 tensor
		whereas `foo[3:5,4:5]` produces a shape 2x1 tensor with shrink_mask
		being 1<<1 == 2.
		
		If the ith bit of `shrink_axis_mask` is one, then `begin`,
		`end[i]`, and `stride[i]` are used to do a slice in the appropriate
		dimension, but the output tensor will be reduced in dimensionality
		by one. This is only valid if the ith entry of slice[i]==1.
		
		NOTE: `begin` and `end` are zero-indexed`.
		`strides` entries must be non-zero.
		
		
		```
		# 'input' is [[[1, 1, 1], [2, 2, 2]],
		#             [[3, 3, 3], [4, 4, 4]],
		#             [[5, 5, 5], [6, 6, 6]]]
		tf.slice(input, [1, 0, 0], [2, 1, 3], [1, 1, 1]) ==> [[[3, 3, 3]]]
		tf.slice(input, [1, 0, 0], [2, 2, 3], [1, 1, 1]) ==> [[[3, 3, 3],
		                                                       [4, 4, 4]]]
		tf.slice(input, [1, 1, 0], [2, -1, 3], [1, -1, 1]) ==>[[[4, 4, 4],
		                                                        [3, 3, 3]]]
		```
		
		Args:
		  input_: A `Tensor`.
		  begin: An `int32` or `int64` `Tensor`.
		  end: An `int32` or `int64` `Tensor`.
		  strides: An `int32` or `int64` `Tensor`.
		  begin_mask: An `int32` mask.
		  end_mask: An `int32` mask.
		  ellipsis_mask: An `int32` mask.
		  new_axis_mask: An `int32` mask.
		  shrink_axis_mask: An `int32` mask.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` the same type as `input`.
	**/
	static public function strided_slice(input_:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the gradient of `StridedSlice`.
		
		Since `StridedSlice` cuts out pieces of its `input` which is size
		`shape`, its gradient will have the same shape (which is passed here
		as `shape`). The gradient will be zero in any element that the slice
		does not select.
		
		Arguments are the same as StridedSliceGrad with the exception that
		`dy` is the input gradient to be propagated and `shape` is the
		shape of `StridedSlice`'s `input`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  begin: A `Tensor`. Must have the same type as `shape`.
		  end: A `Tensor`. Must have the same type as `shape`.
		  strides: A `Tensor`. Must have the same type as `shape`.
		  dy: A `Tensor`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `dy`.
	**/
	static public function strided_slice_grad(shape:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, dy:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	static public var string : Dynamic;
	/**
		Joins the strings in the given list of string tensors into one tensor;
		
		with the given separator (default is an empty separator).
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects of type `string`.
		    A list of string tensors.  The tensors must all have the same shape,
		    or be scalars.  Scalars may be mixed in; these will be broadcast to the shape
		    of non-scalar inputs.
		  separator: An optional `string`. Defaults to `""`.
		    string, an optional join separator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function string_join(inputs:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	static public var string_ref : Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process.
		
		Note that the hash function may change from time to time.
		This functionality will be deprecated and it's recommended to use
		`tf.string_to_hash_bucket_fast()` or `tf.string_to_hash_bucket_strong()`.
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  A Tensor of the same shape as the input `string_tensor`.
	**/
	static public function string_to_hash_bucket(string_tensor:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process and will never change. However, it is not suitable for cryptography.
		This function may be used when CPU time is scarce and inputs are trusted or
		unimportant. There is a risk of adversaries constructing inputs that all hash
		to the same bucket. To prevent this problem, use a strong hash function with
		`tf.string_to_hash_bucket_strong`.
		
		Args:
		  input: A `Tensor` of type `string`. The strings to assign a hash bucket.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  A Tensor of the same shape as the input `string_tensor`.
	**/
	static public function string_to_hash_bucket_fast(input:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process. The hash function is a keyed hash function, where attribute `key`
		defines the key of the hash function. `key` is an array of 2 elements.
		
		A strong hash is important when inputs may be malicious, e.g. URLs with
		additional components. Adversaries could try to make their inputs hash to the
		same bucket for a denial-of-service attack or to skew the results. A strong
		hash prevents this by making it dificult, if not infeasible, to compute inputs
		that hash to the same bucket. This comes at a cost of roughly 4x higher compute
		time than tf.string_to_hash_bucket_fast.
		
		Args:
		  input: A `Tensor` of type `string`. The strings to assign a hash bucket.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  key: A list of `ints`.
		    The key for the keyed hash function passed as a list of two uint64
		    elements.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  A Tensor of the same shape as the input `string_tensor`.
	**/
	static public function string_to_hash_bucket_strong(input:Dynamic, num_buckets:Dynamic, key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to the specified numeric type.
		
		(Note that int32 overflow results in an error while float overflow
		results in a rounded value.)
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  out_type: An optional `tf.DType` from: `tf.float32, tf.int32`. Defaults to `tf.float32`.
		    The numeric type to interpret each string in string_tensor as.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
		  A Tensor of the same shape as the input `string_tensor`.
	**/
	static public function string_to_number(string_tensor:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x - y element-wise.
		
		*NOTE*: `Sub` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sub(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the singular value decomposition of a matrix.
		
		Computes the SVD of `matrix` such that `matrix = u * diag(s) *
		transpose(v)`
		
		```prettyprint
		# a is a matrix.
		# s is a vector of singular values.
		# u is the matrix of left singular vectors.
		# v is a matrix of right singular vectors.
		s, u, v = svd(a)
		s = svd(a, compute_uv=False)
		```
		
		Args:
		  matrix: `Tensor` of shape `[M, N]`. Let `P` be the minimum of `M` and `N`.
		  compute_uv: If `True` then left and right singular vectors will be
		    computed and returned in `u` and `v`, respectively. Otherwise, only the
		    singular values will be computed, which can be significantly faster.
		  full_matrices: If true, compute full-sized `u` and `v`. If false
		    (the default), compute only the leading `P` singular vectors.
		    Ignored if `compute_uv` is `False`.
		  name: string, optional name of the operation.
		
		Returns:
		  s: Singular values. Shape is `[P]`.
		  u: Right singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[M, P]`; if `full_matrices` is `True` then shape is
		    `[M, M]`. Not returned if `compute_uv` is `False`.
		  v: Left singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[N, P]`. If `full_matrices` is `True` then shape is
		    `[N, N]`. Not returned if `compute_uv` is `False`.
	**/
	static public function svd(matrix:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes tan of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function tan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic tangent of `x` element-wise.
		
		Args:
		  x: A Tensor or SparseTensor with type `float`, `double`, `int32`,
		    `complex64`, `int64`, or `qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor or SparseTensor respectively with the same type as `x` if
		  `x.dtype != qint32` otherwise the return type is `quint8`.
	**/
	static public function tanh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a tensor by tiling a given tensor.
		
		This operation creates a new tensor by replicating `input` `multiples` times.
		The output tensor's i'th dimension has `input.dims(i) * multiples[i]` elements,
		and the values of `input` are replicated `multiples[i]` times along the 'i'th
		dimension. For example, tiling `[a b c d]` by `[2]` produces
		`[a b c d a b c d]`.
		
		Args:
		  input: A `Tensor`. 1-D or higher.
		  multiples: A `Tensor` of type `int32`.
		    1-D. Length must be the same as the number of dimensions in `input`
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function tile(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `bfloat16`.
		
		Args:
		  x: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` with same shape as `x` with type `bfloat16`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `bfloat16`.
	**/
	static public function to_bfloat16(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `float64`.
		
		Args:
		  x: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` with same shape as `x` with type `float64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `float64`.
	**/
	static public function to_double(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `float32`.
		
		Args:
		  x: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` with same shape as `x` with type `float32`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `float32`.
	**/
	static public function to_float(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `int32`.
		
		Args:
		  x: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` with same shape as `x` with type `int32`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `int32`.
	**/
	static public function to_int32(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `int64`.
		
		Args:
		  x: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` with same shape as `x` with type `int64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `int64`.
	**/
	static public function to_int64(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the trace of a tensor `x`.
		
		`trace(x)` returns the sum of along the diagonal.
		
		For example:
		
		```python
		# 'x' is [[1, 1],
		#         [1, 1]]
		tf.trace(x) ==> 2
		
		# 'x' is [[1,2,3],
		#         [4,5,6],
		#         [7,8,9]]
		tf.trace(x) ==> 15
		```
		
		Args:
		  x: 2-D tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  The trace of input tensor.
	**/
	static public function trace(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns all variables created with `trainable=True`.
		
		When passed `trainable=True`, the `Variable()` constructor automatically
		adds new variables to the graph collection
		`GraphKeys.TRAINABLE_VARIABLES`. This convenience function returns the
		contents of that collection.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function trainable_variables():Dynamic;
	/**
		Transposes `a`. Permutes the dimensions according to `perm`.
		
		The returned tensor's dimension i will correspond to the input dimension
		`perm[i]`. If `perm` is not given, it is set to (n-1...0), where n is
		the rank of the input tensor. Hence by default, this operation performs a
		regular matrix transpose on 2-D input Tensors.
		
		For example:
		
		```python
		# 'x' is [[1 2 3]
		#         [4 5 6]]
		tf.transpose(x) ==> [[1 4]
		                     [2 5]
		                     [3 6]]
		
		# Equivalently
		tf.transpose(x, perm=[1, 0]) ==> [[1 4]
		                                  [2 5]
		                                  [3 6]]
		
		# 'perm' is more useful for n-dimensional tensors, for n > 2
		# 'x' is   [[[1  2  3]
		#            [4  5  6]]
		#           [[7  8  9]
		#            [10 11 12]]]
		# Take the transpose of the matrices in dimension-0
		tf.transpose(x, perm=[0, 2, 1]) ==> [[[1  4]
		                                      [2  5]
		                                      [3  6]]
		
		                                     [[7 10]
		                                      [8 11]
		                                      [9 12]]]
		```
		
		Args:
		  a: A `Tensor`.
		  perm: A permutation of the dimensions of `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A transposed `Tensor`.
	**/
	static public function transpose(a:Dynamic, ?perm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Divides x / y elementwise, always producing floating point results.
		
		The same as `tf.div` for floating point arguments, but casts integer arguments
		to floating point before dividing so that the result is always floating point.
		This op is generated by normal `x / y` division in Python 3 and in Python 2.7
		with `from __future__ import division`.  If you want integer division that
		rounds down, use `x // y` or `tf.floordiv`.
		
		`x` and `y` must have the same numeric type.  If the inputs are floating
		point, the output will have the same type.  If the inputs are integral, the
		inputs are cast to `float32` for `int8` and `int16` and `float64` for `int32`
		and `int64` (matching the behavior of Numpy).
		
		Args:
		  x: `Tensor` numerator of numeric type.
		  y: `Tensor` denominator of numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  `x / y` evaluated in floating point.
		
		Raises:
		  TypeError: If `x` and `y` have different dtypes.
	**/
	static public function truediv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with specified mean and
		standard deviation, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the truncated normal distribution.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function truncated_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an initializer that generates a truncated normal distribution.
		
		These values are similar to values from a `random_normal_initializer`
		except that values more than two standard deviations from the mean
		are discarded and re-drawn. This is the recommended initializer for
		neural network weights and filters.
		
		Args:
		  mean: a python scalar or a scalar tensor. Mean of the random values
		    to generate.
		  stddev: a python scalar or a scalar tensor. Standard deviation of the
		    random values to generate.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with a truncated normal
		  distribution.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function truncated_normal_initializer(?mean:Dynamic, ?stddev:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Group tensors together.
		
		This creates a tuple of tensors with the same values as the `tensors`
		argument, except that the value of each tensor is only returned after the
		values of all tensors have been computed.
		
		`control_inputs` contains additional ops that have to finish before this op
		finishes, but whose outputs are not returned.
		
		This can be used as a "join" mechanism for parallel computations: all the
		argument tensors can be computed in parallel, but the values of any tensor
		returned by `tuple` are only available after all the parallel computations
		are done.
		
		See also `group` and `with_dependencies`.
		
		Args:
		  tensors: A list of `Tensor`s or `IndexedSlices`, some entries can be `None`.
		  name: (optional) A name to use as a `name_scope` for the operation.
		  control_inputs: List of additional ops to finish before returning.
		
		Returns:
		  Same as `tensors`.
		
		Raises:
		  ValueError: If `tensors` does not contain any `Tensor` or `IndexedSlices`.
		  TypeError: If `control_inputs` is not a list of `Operation` or `Tensor`
		    objects.
	**/
	static public function tuple(tensors:Dynamic, ?name:Dynamic, ?control_inputs:Dynamic):Dynamic;
	static public var uint16 : Dynamic;
	static public var uint16_ref : Dynamic;
	static public var uint8 : Dynamic;
	static public var uint8_ref : Dynamic;
	/**
		Returns an initializer that generates tensors without scaling variance.
		
		When initializing a deep network, it is in principle advantageous to keep
		the scale of the input variance constant, so it does not explode or diminish
		by reaching the final layer. If the input is `x` and the operation `x * W`,
		and we want to initialize `W` uniformly at random, we need to pick `W` from
		
		    [-sqrt(3) / sqrt(dim), sqrt(3) / sqrt(dim)]
		
		to keep the scale intact, where `dim = W.shape[0]` (the size of the input).
		A similar calculation for convolutional networks gives an analogous result
		with `dim` equal to the product of the first 3 dimensions.  When
		nonlinearities are present, we need to multiply this by a constant `factor`.
		See [Sussillo et al., 2014](https://arxiv.org/abs/1412.6558)
		([pdf](http://arxiv.org/pdf/1412.6558.pdf)) for deeper motivation, experiments
		and the calculation of constants. In section 2.3 there, the constants were
		numerically computed: for a linear layer it's 1.0, relu: ~1.43, tanh: ~1.15.
		
		If the shape tuple `full_shape` is provided, the scale will be calculated from
		this predefined shape.  This is useful when a `Variable` is being partitioned
		across several shards, and each shard has a smaller shape than the whole.
		Since the shards are usually concatenated when used, the scale should be
		based on the shape of the whole.
		
		Args:
		  factor: Float.  A multiplicative factor by which the values will be scaled.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		  full_shape: Tuple or list of integers.  The shape used for calculating
		    scale normalization (instead of the shape passed at creation time).
		    Useful when creating sharded variables via partitioning.
		
		Returns:
		  An initializer that generates tensors with unit variance.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function uniform_unit_scaling_initializer(?factor:Dynamic, ?seed:Dynamic, ?dtype:Dynamic, ?full_shape:Dynamic):Dynamic;
	/**
		Finds unique elements in a 1-D tensor.
		
		This operation returns a tensor `y` containing all of the unique elements of `x`
		sorted in the same order that they occur in `x`. This operation also returns a
		tensor `idx` the same size as `x` that contains the index of each value of `x`
		in the unique output `y`. In other words:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```prettyprint
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx = unique(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		```
		
		Args:
		  x: A `Tensor`. 1-D.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx).
		  y: A `Tensor`. Has the same type as `x`. 1-D.
		  idx: A `Tensor` of type `int32`. 1-D.
	**/
	static public function unique(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds unique elements in a 1-D tensor.
		
		This operation returns a tensor `y` containing all of the unique elements of `x`
		sorted in the same order that they occur in `x`. This operation also returns a
		tensor `idx` the same size as `x` that contains the index of each value of `x`
		in the unique output `y`. Finally, it returns a third tensor `count` that
		contains the count of each element of `y` in `x`. In other words:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```prettyprint
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx, count = unique_with_counts(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		count ==> [2, 1, 3, 1, 2]
		```
		
		Args:
		  x: A `Tensor`. 1-D.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx, count).
		  y: A `Tensor`. Has the same type as `x`. 1-D.
		  idx: A `Tensor` of type `int32`. 1-D.
		  count: A `Tensor` of type `int32`. 1-D.
	**/
	static public function unique_with_counts(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Unpacks the given dimension of a rank-`R` tensor into rank-`(R-1)` tensors.
		
		Unpacks `num` tensors from `value` by chipping it along the `axis` dimension.
		If `num` is not specified (the default), it is inferred from `value`'s shape.
		If `value.shape[axis]` is not known, `ValueError` is raised.
		
		For example, given a tensor of shape `(A, B, C, D)`;
		
		If `axis == 0` then the i'th tensor in `output` is the slice
		  `value[i, :, :, :]` and each tensor in `output` will have shape `(B, C, D)`.
		  (Note that the dimension unpacked along is gone, unlike `split`).
		
		If `axis == 1` then the i'th tensor in `output` is the slice
		  `value[:, i, :, :]` and each tensor in `output` will have shape `(A, C, D)`.
		Etc.
		
		This is the opposite of pack.  The numpy equivalent is
		
		    tf.unpack(x, n) = list(x)
		
		Args:
		  value: A rank `R > 0` `Tensor` to be unpacked.
		  num: An `int`. The length of the dimension `axis`. Automatically inferred
		    if `None` (the default).
		  axis: An `int`. The axis to unpack along. Defaults to the first
		    dimension. Supports negative indexes.
		  name: A name for the operation (optional).
		
		Returns:
		  The list of `Tensor` objects unpacked from `value`.
		
		Raises:
		  ValueError: If `num` is unspecified and cannot be inferred.
		  ValueError: If `axis` is out of the range [-R, R).
	**/
	static public function unpack(value:Dynamic, ?num:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a tensor.
		
		Read [the section on
		Segmentation](../../api_docs/python/math_ops.md#segmentation) for an explanation
		of segments.
		
		Computes a tensor such that
		`(output[i] = sum_{j...} data[j...]` where the sum is over tuples `j...` such
		that `segment_ids[j...] == i`.  Unlike `SegmentSum`, `segment_ids`
		need not be sorted and need not cover all values in the full
		range of valid values.
		
		If the sum is empty for a given segment ID `i`, `output[i] = 0`.
		
		`num_segments` should equal the number of distinct segment IDs.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/UnsortedSegmentSum.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
		  Has same shape as data, except for the first `segment_ids.rank`
		  dimensions, which are replaced with a single dimension which has size
		  `num_segments`.
	**/
	static public function unsorted_segment_sum(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get a partitioner for VariableScope to keep shards below `max_shard_bytes`.
		
		This partitioner will shard a Variable along one axis, attempting to keep
		the maximum shard size below `max_shard_bytes`.  In practice, this is not
		always possible when sharding along only one axis.  When this happens,
		this axis is sharded as much as possible (i.e., every dimension becomes
		a separate shard).
		
		If the partitioner hits the `max_shards` limit, then each shard may end up
		larger than `max_shard_bytes`. By default `max_shards` equals `None` and no
		limit on the number of shards is enforced.
		
		One reasonable value for `max_shard_bytes` is `(64 << 20) - 1`, or almost
		`64MB`, to keep below the protobuf byte limit.
		
		Args:
		  max_shard_bytes: The maximum size any given shard is allowed to be.
		  axis: The axis to partition along.  Default: outermost axis.
		  bytes_per_string_element: If the `Variable` is of type string, this provides
		    an estimate of how large each scalar in the `Variable` is.
		  max_shards: The maximum number of shards in int created taking precedence
		    over `max_shard_bytes`.
		
		Returns:
		  A partition function usable as the `partitioner` argument to
		  `variable_scope`, `get_variable`, and `get_partitioned_variable_list`.
		
		Raises:
		  ValueError: If any of the byte counts are non-positive.
	**/
	static public function variable_axis_size_partitioner(max_shard_bytes:Dynamic, ?axis:Dynamic, ?bytes_per_string_element:Dynamic, ?max_shards:Dynamic):Dynamic;
	/**
		Returns a context manager for defining an op that creates variables.
		
		This context manager validates that the given `values` are from the
		same graph, ensures that graph is the default graph, and pushes a
		name scope and a variable scope.
		
		If `name_or_scope` is not None, it is used as is in the variable scope. If
		`scope` is None, then `default_name` is used.  In that case, if the same name
		has been previously used in the same scope, it will made unique be appending
		`_N` to it.
		
		This is intended to be used when defining generic ops and so reuse is always
		inherited.
		
		For example, to define a new Python op called `my_op_with_vars`:
		
		```python
		def my_op_with_vars(a, b, scope=None):
		  with tf.variable_op_scope([a, b], scope, "MyOp") as scope:
		    a = tf.convert_to_tensor(a, name="a")
		    b = tf.convert_to_tensor(b, name="b")
		    c = tf.get_variable('c')
		    # Define some computation that uses `a`, `b`, and `c`.
		    return foo_op(..., name=scope)
		```
		
		Args:
		  values: The list of `Tensor` arguments that are passed to the op function.
		  name_or_scope: The name argument that is passed to the op function,
		    this name_or_scope is not uniquified in the variable scope.
		  default_name: The default name to use if the `name_or_scope` argument is
		    `None`, this name will be uniquified. If name_or_scope is provided it
		    won't be used and therefore it is not required and can be None.
		  initializer: The default initializer to pass to variable scope.
		  regularizer: The default regularizer for variables within this scope.
		  caching_device: The default caching device for variables within this scope.
		  partitioner: The default partitioner for variables within this scope.
		  custom_getter: The default custom getter for variables within this scope.
		  reuse: `True` or `None`; if `True`, we go into reuse mode for this scope as
		    well as all sub-scopes; if `None`, we just inherit the parent scope reuse.
		  dtype: The default type of variables created in this scope, defaults to the
		    type of the parent scope.
		
		Returns:
		  A context manager for use in defining a Python op.
		
		Raises:
		  ValueError: when trying to reuse within a create scope, or create within
		    a reuse scope, or if reuse is not `None` or `True`.
		  TypeError: when the types of some arguments are not appropriate.
	**/
	static public function variable_op_scope(values:Dynamic, name_or_scope:Dynamic, ?default_name:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?reuse:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns a context for variable scope.
		
		Variable scope allows to create new variables and to share already created
		ones while providing checks to not create or share by accident. For details,
		see the [Variable Scope How To](../../how_tos/variable_scope/index.md),
		here we present only a few basic examples.
		
		Simple example of how to create a new variable:
		
		```python
		with tf.variable_scope("foo"):
		    with tf.variable_scope("bar"):
		        v = tf.get_variable("v", [1])
		        assert v.name == "foo/bar/v:0"
		```
		
		Basic example of sharing a variable:
		
		```python
		with tf.variable_scope("foo"):
		    v = tf.get_variable("v", [1])
		with tf.variable_scope("foo", reuse=True):
		    v1 = tf.get_variable("v", [1])
		assert v1 == v
		```
		
		Sharing a variable by capturing a scope and setting reuse:
		
		```python
		with tf.variable_scope("foo") as scope:
		    v = tf.get_variable("v", [1])
		    scope.reuse_variables()
		    v1 = tf.get_variable("v", [1])
		assert v1 == v
		```
		
		To prevent accidental sharing of variables, we raise an exception when
		getting an existing variable in a non-reusing scope.
		
		```python
		with tf.variable_scope("foo"):
		    v = tf.get_variable("v", [1])
		    v1 = tf.get_variable("v", [1])
		    #  Raises ValueError("... v already exists ...").
		```
		
		Similarly, we raise an exception when trying to get a variable that
		does not exist in reuse mode.
		
		```python
		with tf.variable_scope("foo", reuse=True):
		    v = tf.get_variable("v", [1])
		    #  Raises ValueError("... v does not exists ...").
		```
		
		Note that the `reuse` flag is inherited: if we open a reusing scope,
		then all its sub-scopes become reusing as well.
		
		Args:
		  name_or_scope: `string` or `VariableScope`: the scope to open.
		  reuse: `True` or `None`; if `True`, we go into reuse mode for this scope as
		    well as all sub-scopes; if `None`, we just inherit the parent scope reuse.
		  initializer: default initializer for variables within this scope.
		  regularizer: default regularizer for variables within this scope.
		  caching_device: default caching device for variables within this scope.
		  partitioner: default partitioner for variables within this scope.
		  custom_getter: default custom getter for variables within this scope.
		  dtype: type of variables created in this scope (defaults to the type
		    in the passed scope, or inherited from parent scope).
		
		Returns:
		  A scope that can be to captured and reused.
		
		Raises:
		  ValueError: when trying to reuse within a create scope, or create within
		    a reuse scope, or if reuse is not `None` or `True`.
		  TypeError: when the types of some arguments are not appropriate.
	**/
	static public function variable_scope(name_or_scope:Dynamic, ?reuse:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Assert that the tensor does not contain any NaN's or Inf's.
		
		Args:
		  t: Tensor to check.
		  msg: Message to log on failure.
		  name: A name for this operation (optional).
		
		Returns:
		  Same tensor as `t`.
	**/
	static public function verify_tensor_all_finite(t:Dynamic, msg:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns locations of true values in a boolean tensor.
		
		This operation returns the coordinates of true elements in `input`. The
		coordinates are returned in a 2-D tensor where the first dimension (rows)
		represents the number of true elements, and the second dimension (columns)
		represents the coordinates of the true elements. Keep in mind, the shape of
		the output tensor can vary depending on how many true values there are in
		`input`. Indices are output in row-major order.
		
		For example:
		
		```prettyprint
		# 'input' tensor is [[True, False]
		#                    [True, False]]
		# 'input' has two true values, so output has two coordinates.
		# 'input' has rank of 2, so coordinates have two indices.
		where(input) ==> [[0, 0],
		                  [1, 0]]
		
		# `input` tensor is [[[True, False]
		#                     [True, False]]
		#                    [[False, True]
		#                     [False, True]]
		#                    [[False, False]
		#                     [False, True]]]
		# 'input' has 5 true values, so output has 5 coordinates.
		# 'input' has rank of 3, so coordinates have three indices.
		where(input) ==> [[0, 0, 0],
		                  [0, 1, 0],
		                  [1, 0, 1],
		                  [1, 1, 1],
		                  [2, 1, 1]]
		```
		
		Args:
		  input: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function where(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Repeat `body` while the condition `cond` is true.
		
		`cond` is a callable returning a boolean scalar tensor. `body` is a callable
		returning a (possibly nested) tuple or list of tensors of the same
		arity (length and structure) and types as `loop_vars`. `loop_vars` is a
		(possibly nested) tuple or list of tensors that is passed to both `cond`
		and `body`. `cond` and `body` both take as many arguments as there are
		`loop_vars`.
		
		In addition to regular Tensors or IndexedSlices, the body may accept and
		return TensorArray objects.  The flows of the TensorArray objects will
		be appropriately forwarded between loops and during gradient calculations.
		
		While `cond` evaluates to true, `body` is executed.
		
		`while_loop` implements non-strict semantics, enabling multiple iterations
		to run in parallel. The maximum number of parallel iterations can be
		controlled by `parallel_iterations`, which gives users some control over
		memory consumption and execution order. For correct programs, `while_loop`
		should return the same result for any parallel_iterations > 0.
		
		For training, TensorFlow remembers the tensors that are produced in the
		forward inference but needed in back propagation. These tensors can be a
		main source of memory consumption and often cause OOM problems when training
		on GPUs.  When the flag swap_memory is true, we swap out these tensors from
		GPU to CPU.  This for example allows us to train RNN models with very long
		sequences and large batches.
		
		Args:
		  cond: A callable that represents the termination condition of the loop.
		  body: A callable that represents the loop body.
		  loop_vars: A (possibly nested) tuple or list of numpy array, `Tensor`,
		    and `TensorArray` objects.
		  parallel_iterations: The number of iterations allowed to run in parallel.
		  back_prop: Whether backprop is enabled for this while loop.
		  swap_memory: Whether GPU-CPU memory swap is enabled for this loop.
		  name: Optional name prefix for the returned tensors.
		
		Returns:
		  The output tensors for the loop variables after the loop. When the length
		  of `loop_vars` is 1 this is a Tensor, TensorArry or IndexedSlice and when
		  the length of `loop_vars` is greater than 1 it returns a list.
		
		Raises:
		  TypeError: if `cond` or `body` is not callable.
		  ValueError: if `loop_vars` is empty.
		
		Example:
		
		  ```python
		  i = tf.constant(0)
		  c = lambda i: tf.less(i, 10)
		  b = lambda i: tf.add(i, 1)
		  r = tf.while_loop(c, b, [i])
		  ```
		
		Example with nesting:
		
		  ```python
		  ijk_0 = (tf.constant(0), (tf.constant(1), tf.constant(2)))
		  c = lambda i, (j, k): i < 10
		  b = lambda i, (j, k): (i + 1, ((j + k), (j - k)))
		  ijk_final = tf.while_loop(c, b, ijk_0)
		  ```
	**/
	static public function while_loop(cond:Dynamic, body:Dynamic, loop_vars:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to zero.
		
		This operation returns a tensor of type `dtype` with shape `shape` and
		all elements set to zero.
		
		For example:
		
		```python
		tf.zeros([3, 4], int32) ==> [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
		```
		
		Args:
		  shape: Either a list of integers, or a 1-D `Tensor` of type `int32`.
		  dtype: The type of an element in the resulting `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An adaptor for zeros() to match the Initializer spec.
	**/
	static public function zeros_initializer(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to zero.
		
		Given a single tensor (`tensor`), this operation returns a tensor of the
		same type and shape as `tensor` with all elements set to zero. Optionally,
		you can use `dtype` to specify a new type for the returned tensor.
		
		For example:
		
		```python
		# 'tensor' is [[1, 2, 3], [4, 5, 6]]
		tf.zeros_like(tensor) ==> [[0, 0, 0], [0, 0, 0]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  dtype: A type for the returned `Tensor`. Must be `float32`, `float64`,
		  `int8`, `int16`, `int32`, `int64`, `uint8`, `complex64`, or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the Hurwitz zeta function \\(\zeta(x, q)\\).
		
		The Hurwitz zeta function is defined as:
		
		```
		\zeta(x, q) = \sum_{n=0}^{\infty} (q + n)^{-x}
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  q: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function zeta(x:Dynamic, q:Dynamic, ?name:Dynamic):Dynamic;
}